package dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import res.config.BuildedSqlMapClient;
import vo.BoardVO;

public class BoardDaoImpl implements IBoardDao{
	private SqlMapClient smc;
	private static IBoardDao instance;
	private BoardDaoImpl() {
		smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static IBoardDao getInstance() {
		if(instance == null) {
			instance = new BoardDaoImpl();
		}
		return instance;
	}
	

	@Override
	public int countList() throws SQLException {			
		return (int)smc.queryForObject("board.countList");
	}

	@Override
	public List<BoardVO> boardList(Map<String, Object> map) throws SQLException {
		return smc.queryForList("board.boardList",map);
	}

	@Override
	public int insertBoard(BoardVO vo) throws SQLException{
		return (int) smc.insert("board.insertBoard",vo);
	}

}
