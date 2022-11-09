package site;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import service.BoardServiceImpl;
import service.IBoardService;
import vo.BoardVO;

/**
 * Servlet implementation class Write
 */
@WebServlet("/Write")
public class Write extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Write() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardVO vo = new BoardVO();
		try {
			BeanUtils.populate(vo, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		vo.setWip(request.getRemoteAddr()); // 클라이언트 ip 받기
		
		IBoardService service = BoardServiceImpl.getInstance();
		
		int seq = service.insertBoard(vo);
		
		PrintWriter writer = response.getWriter();
		writer.print(seq);
		
	}

}
