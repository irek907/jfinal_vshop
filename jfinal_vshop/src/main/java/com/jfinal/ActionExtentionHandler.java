package com.jfinal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jfinal.handler.Handler;

public class ActionExtentionHandler extends Handler {
    public void handle(String target, HttpServletRequest request, 
    		HttpServletResponse response, boolean[] isHandled) {
        //  if (target.endsWith(".ctf"))
        //    target = target.substring(0, target.length() - 4);
        next.handle(target, request, response, isHandled);
    }


	//YourJFinalConfog.configHandler(Handers me) 
	//me.add(new ActionExtentionHandler());
}