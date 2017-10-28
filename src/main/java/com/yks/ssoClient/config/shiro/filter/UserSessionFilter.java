package com.yks.ssoClient.config.shiro.filter;

import com.yks.ssoClient.dto.Sys_User;
import com.yks.ssoClient.service.ISysUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @Author 125C01063135
 * @Create 2017-10-27 11:35
 * @Desc 用户Session监听
 **/
public class UserSessionFilter extends AccessControlFilter {

    @Autowired
    private ISysUserService service;
    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        Subject subject = getSubject(request, response);
        if (subject == null) {
            return false;
        }
        HttpSession session = WebUtils.toHttp(request).getSession();
        Object sessionUsername = session.getAttribute("loginUser");
        if (sessionUsername == null) {
            Sys_User user = (Sys_User) SecurityUtils.getSubject().getPrincipal();
            session.setAttribute("loginUser",user);
        }
        return true;
    }

    @Override
    protected boolean isAccessAllowed(ServletRequest servletRequest, ServletResponse servletResponse, Object o) throws Exception {
        return false;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest servletRequest, ServletResponse servletResponse) throws Exception {
        return false;
    }
}
