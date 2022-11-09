package service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import dao.BoardDaoImpl;
import dao.IBoardDao;
import vo.BoardVO;

public class BoardServiceImpl implements IBoardService{

	private static IBoardService service;
	private IBoardDao dao;
	private BoardServiceImpl() {
		dao = BoardDaoImpl.getInstance();
	}
	
	public static IBoardService getInstance() {
		if(service==null) 
			service  = new BoardServiceImpl();
		return service;
	}
	
	
	@Override
	public int countList() {
		int cnt = 0;
		try {
			cnt = dao.countList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<BoardVO> boardList(Map<String, Object> map) {
		List<BoardVO> list = null;
		try {
			list = dao.boardList(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
		return list;		
	}

	@Override
	public int insertBoard(BoardVO vo) {
		int cnt = 0;
		try {
			cnt = dao.insertBoard(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
}
