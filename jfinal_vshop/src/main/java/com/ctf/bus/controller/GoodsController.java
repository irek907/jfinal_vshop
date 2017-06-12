package com.ctf.bus.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.ctf.bus.entity.Goods;
import com.ctf.bus.entity.GoodsType;
import com.ctf.bus.entity.ReturnDataBean;
import com.ctf.bus.util.BusConstantUtil;
import com.jfinal.core.Controller;

public class GoodsController extends Controller{
	Log log = LogFactory.getLog(GoodsController.class);
	//@ActionKey("listGoods")
	//@Before(GET.class)
	/**
	 * 商城首页加载商品
	 */
	public void index(){
		//UserInfo info = (UserInfo) session.getAttribute(ParamesUtil.SESSION_USER);
		int page = this.getParaToInt("page");
		int  status = 0;
		ReturnDataBean rBean = new  ReturnDataBean();
		List<GoodsType> goodsTypeList = null;
		try{
			String sql ="";
			sql = "select * from tb_goodstype where usestate = 0 order by indexnumber asc limit "
					+ ""+(page-1)*BusConstantUtil.listGoodsIndexPageSize+", "+BusConstantUtil.listGoodsIndexPageSize;
			goodsTypeList = GoodsType.dao.find(sql);
			for(int i=0;i<goodsTypeList.size();i++){
				String goodsTypeCode = goodsTypeList.get(i).getStr("goodstypecode");
				sql = "select * from tb_goods where goodsstate=0 and goodstypecode='"+goodsTypeCode+"' limit 0,2";
				List<Goods> goodsList = Goods.dao.find(sql);
				goodsTypeList.get(i).put("goodslist", goodsList);
			}
			rBean.setStatus(status);
			rBean.setData(goodsTypeList);
			this.renderJson(rBean);
		}catch(Exception e){
			log.error("", e);
			status = 1;
			rBean.setStatus(status);
			this.renderJson(rBean);
		}
	}
	/**
	 * 更多
	 */
	public void morepage(){
		String goodstypecode = getPara("goodstypecode");
		this.setSessionAttr("goodstypecode", goodstypecode);
		log.info(this.getSessionAttr("goodstypecode"));
		this.render("/shoppages/morepage.html");
	}
	public void more(){
		String goodstypecode = this.getSessionAttr("goodstypecode");
		int page = this.getParaToInt("page");
		int  status = 0;
		ReturnDataBean rBean = new  ReturnDataBean();
		try{
			String sql = "select * from tb_goods where goodsstate=0 and goodstypecode='"+goodstypecode+"'"
					+ " order by goodssort asc limit "+(page-1)*BusConstantUtil.listGoodsPageSize+", "+BusConstantUtil.listGoodsPageSize;
			List<Goods> goodsList = Goods.dao.find(sql);
			rBean.setStatus(status);
			rBean.setData(goodsList);
			this.renderJson(rBean);
		}catch(Exception e){
			log.error("", e);
			status = 1;
			rBean.setStatus(status);
			this.renderJson(rBean);
		}
	}
	/**
	 * 商品详情
	 */
	public void detailpage(){
		this.render("/shoppages/goodsdetail.html");
	}
	public void detail(){
		String goodscode = getPara("goodscode");
		
		Goods goods = Goods.dao.findById(goodscode);
		System.out.println(goods);
		System.out.println("aa="+goodscode);
		this.render("/shoppages/goodsdetail.html");
	}
	/**
	 * 查询商品
	 * @throws UnsupportedEncodingException 
	 */
	public void search() {
		String goodsName = this.getAttr("search_ks");
		String sql = "select * from tb_goods where  goodsstate=0  and goodsname like '%"+goodsName+"%'";
		log.info(sql);
		List<Goods> goodsList = Goods.dao.find(sql);
		this.render("/shoppages/goodslist.html");
	}
	/**
	 * 商品列表页面
	 * @throws UnsupportedEncodingException 
	 */
	public void searchpage() throws UnsupportedEncodingException{
		String serachKey = new String(getPara("ks").getBytes(),"utf-8");
		this.setAttr("search_ks", serachKey);
		this.render("/shoppages/goodslist.html");
	}

}
