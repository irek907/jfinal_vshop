package com.ctf.bus.entity;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.plugin.activerecord.Model;

public class GoodsType extends Model<GoodsType>{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5802748281916865200L;
	public static  GoodsType dao = new GoodsType();
	private List<Goods> goodsList = new ArrayList<Goods>();
	public List<Goods> getGoodsList() {
		return goodsList;
	}
	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}
	
}
