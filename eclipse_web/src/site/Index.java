package site;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardServiceImpl;
import service.IBoardService;
import vo.BoardVO;

@WebServlet("/Index.do")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Index() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		// board게시판정보를 읽어와서 응답
		// (controller <-> service <-> dao <-> SqlMapClient(DB))
		IBoardService service = BoardServiceImpl.getInstance();

		// 전체글 개수 가져오기
		int count = service.countList();

		// 현재 페이지 값(default 시작)
		int currentPage = 1;
		currentPage = request.getParameter("pageNo")==null? 
				1 : Integer.parseInt(request.getParameter("pageNo"));

		// 한 화면에 출력할 페이지 수
		int perPage = 4;

		// 한 페이지에 출력할 글 갯수
		int perList = 5;

		// 전체 페이지 수 구하기 (전체글 갯수 / 페이지 당 글 갯수)
		int totalPage = (int) Math.ceil((double) count / (double) perList);
//		System.out.println(totalPage);

		// 페이지에 표시될 게시글 start/end 값 구하기
		int start = (currentPage - 1) * perList + 1; // (현재페이지-1) * 한페이지에출력할 글 갯수 + 1
		int end = start + perList - 1; // start + 한페이지에출력할글개수 -1
		// 전체 글 개수보다 게시글 끝 값이 더 클 경우 
		if(end>count) end = count;	

		// 화면에 보여질 페이지 번호 구하기
		// (현재 페이지 -1)/ 화면출력페이지수 * 화면출력페이지수 + 1
		int startPage = (currentPage - 1) / perPage * perPage + 1;		
		// startPage + 화면출력페이지수 - 1
		int endPage = startPage + perPage - 1;
		// totalPage보다 endPage 값이 더 클 경우
		if(endPage>totalPage) endPage = totalPage;
		
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		
		List<BoardVO> list = service.boardList(map);
		
		request.setAttribute("list", list);
		request.setAttribute("sPage", startPage);
		request.setAttribute("ePage", endPage);
		request.setAttribute("ttPage", totalPage);
		request.setAttribute("cPage", currentPage);
		
		request.getRequestDispatcher("WEB-INF/test/index.jsp").forward(request, response);
	}

}
