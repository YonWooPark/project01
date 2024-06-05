package kr.co.zzz;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(false);
		if(session != null) {
			Object object = session.getAttribute("adminLoginedDto");
			if(object != null) { //로그인이 되어있는 상태
				return true;
			}
		}
		response.sendRedirect(request.getContextPath()+ "/admin/loginForm");
		return false;
	}
}
