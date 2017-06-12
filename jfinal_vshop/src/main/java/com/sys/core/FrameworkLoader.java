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
		loadPropertyFile("jdbc.properties");//加载JDBC配置文件
		// TODO Auto-generated method stub
		//开发模式，要打印日志
		me.setDevMode(true);
		//从配置文件中读取配置参数
	    me.setDevMode(getPropertyToBoolean("config.devModel", false));
		//编码方案
		me.setEncoding("utf-8");
		//视图类型，有jsp，freeMark
		me.setViewType(ViewType.JSP);
		//设置404报错页面
		me.setError404View("error.jsp");

	}

	@Override
	public void configRoute(Routes me) {
		// TODO Auto-generated method stub
		//访问web根的时候，默认执行IndexController的index方法
		//加载控制器
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
	    arp=new ActiveRecordPlugin(dp);//设置数据库方言
	    if("MySQL".equalsIgnoreCase(getProperty("db.type"))){
	    	 arp.setDialect(new MysqlDialect());
	    }
	    if("Oracle".equalsIgnoreCase(getProperty("db.type"))){
	    	 arp.setDialect(new OracleDialect());
	    }
	    arp.setContainerFactory(new CaseInsensitiveContainerFactory());//忽略大小写
	    me.add(new EhCachePlugin());
	    
	    //加载实体，表。。。。。
	    arp.setShowSql(true);
	    
	    arp.addMapping("tb_goods", "goodscode",Goods.class);
	    arp.addMapping("tb_goods_type", "goodstypecode",GoodsType.class);
//	    arp.addMapping("tb_shopper", "openid",Shopper.class);
//	    arp.addMapping("tb_contact", "openid",Contact.class);
	    
	    me.add(arp);
	    
//	    SchedulerPlugin sp = new SchedulerPlugin();
//        Runnable task = new TestTask();
//        //每隔10秒执行一次
//        //sp.fixedDelaySchedule(task, 10);
//        //sp.fixedRateSchedule(task, 10);
//        //每隔1分钟执行一次
//        sp.cronSchedule(task, "0/5 * * * *");
//        me.add(sp);
	    
	   
	   
	}

	@Override
	public void configInterceptor(Interceptors me) {
		// TODO Auto-generated method stub
		//配置全局拦截器
		me.add(new AuthInterceptor());
	}

	@Override
	public void configHandler(Handlers me) {
		// TODO Auto-generated method stub
		//把web根放在session里，变量名basePath用于web页面${basePath}
		me.add(new ContextPathHandler("basePath"));
		me.add(new ActionExtentionHandler());

	}

	@Override
	public void configEngine(Engine arg0) {
		// TODO Auto-generated method stub
		
	}

}
