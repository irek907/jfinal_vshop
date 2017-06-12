package com.sys.core;

import com.ctf.bus.controller.GoodsController;
import com.ctf.bus.controller.ShopperController;
import com.ctf.bus.entity.Contact;
import com.ctf.bus.entity.Goods;
import com.ctf.bus.entity.GoodsType;
import com.ctf.bus.entity.Shopper;
import com.ctf.bus.task.TestTask;
import com.jfinal.ActionExtentionHandler;
import com.jfinal.AuthInterceptor;
import com.jfinal.IndexController;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.entity.Users;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.activerecord.dialect.OracleDialect;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.ehcache.EhCachePlugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

public class FrameworkLoader extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {
		loadPropertyFile("jdbc.properties");//����JDBC�����ļ�
		// TODO Auto-generated method stub
		//����ģʽ��Ҫ��ӡ��־
		me.setDevMode(true);
		//�������ļ��ж�ȡ���ò���
	    me.setDevMode(getPropertyToBoolean("config.devModel", false));
		//���뷽��
		me.setEncoding("utf-8");
		//��ͼ���ͣ���jsp��freeMark
		me.setViewType(ViewType.JSP);
		//����404����ҳ��
		me.setError404View("error.jsp");

	}

	@Override
	public void configRoute(Routes me) {
		// TODO Auto-generated method stub
		//����web����ʱ��Ĭ��ִ��IndexController��index����
		//���ؿ�����
		me.add("/", IndexController.class);
		me.add("/test",ShopperController.class,"/test");
		me.add("/goods",GoodsController.class,"/goods");
	}

	@Override
	public void configPlugin(Plugins me) {
		
		//me.setLoggerFactry(new Log4jLoggerfactory);
		
		
		ActiveRecordPlugin arp=null;
	    String driver=getProperty("oracle.driver");
	    String url=getProperty("oracle.url");
	    String username=getProperty("oracle.username");
	    String password=getProperty("oracle.password");
	    DruidPlugin dp=new DruidPlugin(url, username, password, driver);
	    me.add(dp);
	    arp=new ActiveRecordPlugin(dp);//�������ݿⷽ��
	    if("MySQL".equalsIgnoreCase(getProperty("db.type"))){
	    	 arp.setDialect(new MysqlDialect());
	    }
	    if("Oracle".equalsIgnoreCase(getProperty("db.type"))){
	    	 arp.setDialect(new OracleDialect());
	    }
	    arp.setContainerFactory(new CaseInsensitiveContainerFactory());//���Դ�Сд
	    me.add(new EhCachePlugin());
	    
	    //����ʵ�壬����������
	    arp.setShowSql(true);
	    
	    arp.addMapping("tb_goods", "goodscode",Goods.class);
	    arp.addMapping("tb_goods_type", "goodstypecode",GoodsType.class);
//	    arp.addMapping("tb_shopper", "openid",Shopper.class);
//	    arp.addMapping("tb_contact", "openid",Contact.class);
	    
	    me.add(arp);
	    
//	    SchedulerPlugin sp = new SchedulerPlugin();
//        Runnable task = new TestTask();
//        //ÿ��10��ִ��һ��
//        //sp.fixedDelaySchedule(task, 10);
//        //sp.fixedRateSchedule(task, 10);
//        //ÿ��1����ִ��һ��
//        sp.cronSchedule(task, "0/5 * * * *");
//        me.add(sp);
	    
	   
	   
	}

	@Override
	public void configInterceptor(Interceptors me) {
		// TODO Auto-generated method stub
		//����ȫ��������
		me.add(new AuthInterceptor());
	}

	@Override
	public void configHandler(Handlers me) {
		// TODO Auto-generated method stub
		//��web������session�������basePath����webҳ��${basePath}
		me.add(new ContextPathHandler("basePath"));
		me.add(new ActionExtentionHandler());

	}

	@Override
	public void configEngine(Engine arg0) {
		// TODO Auto-generated method stub
		
	}

}
