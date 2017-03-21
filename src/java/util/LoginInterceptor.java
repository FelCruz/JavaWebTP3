/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 *
 * @author DesenvolvedorJava
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        String token = (String)session.getAttribute("token");
        if (request.getRequestURI().endsWith("efetuarLogin.htm") || (token != null && token.equals("aprovado")) || (request.getRequestURI().endsWith("login.htm"))) {
            return true;
        }else {
            response.sendRedirect("login.htm");
            return false;
        }        
    }  
}
