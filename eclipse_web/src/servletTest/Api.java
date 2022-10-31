package servletTest;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.hc.client5.http.fluent.Request;

/**
 * Servlet implementation class api
 */
@WebServlet("/Api")
public class Api extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Api() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		// url규칙(ascii로 표현)에 맞게 한글을 인코딩 해줘야 함
		String test = URLEncoder.encode(request.getParameter("kwd"), "utf-8");
		String keywd = request.getParameter("kwd");
//		String url = "https://news.google.com/rss/search?q="+ keywd +"&hl=ko&gl=KR&ceid=KR:ko";
		String url = "https://news.google.com/rss/search?q="+ test +"&hl=ko&gl=KR&ceid=KR:ko";
		System.out.println(url);
		
		String rtnStr = Request.get(url)
	    .execute().returnContent().asString();
		
		PrintWriter out = response.getWriter();
		out.print(rtnStr);	// 요청받은 곳으로 출력
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
