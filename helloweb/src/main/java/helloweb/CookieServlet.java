package helloweb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String COOKIE_NAME = "visitCount";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		int visitCount = 0;

		// 쿠키 읽기
		Cookie[] cookies = request.getCookies();

		// 쿠키를 파싱해야 함
		if (cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				if (COOKIE_NAME.equals(cookie.getName())) {
					// 쿠키의 값을 빼서 int화하고, visitCount에 집어넣음
					visitCount = Integer.parseInt(cookie.getValue());
				}

			}
		}

		visitCount++;

		// 쿠키 쓰기
		Cookie cookie = new Cookie(COOKIE_NAME, String.valueOf(visitCount));
		cookie.setPath(request.getContextPath()); // cookie.setPath("/helloweb");
		cookie.setMaxAge(24 * 60 * 60); // 1day
		response.addCookie(cookie);

		// 화면 출력
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<h1>방문횟수:" + visitCount + "</h1>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
