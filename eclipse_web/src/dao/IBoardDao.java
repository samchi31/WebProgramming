package dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vo.BoardVO;

public interface IBoardDao {
	// 전체 글 갯수 조회하기
	public int countList() throws SQLException;

	public List<BoardVO> boardList(Map<String, Object> map) throws SQLException;
	
	// 게시글 등록
	public int insertBoard(BoardVO vo) throws SQLException;
}
