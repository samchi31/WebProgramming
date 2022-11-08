package dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import res.config.BuildedSqlMapClient;

public class BoardDaoImpl implements IBoardDao{
	private SqlMapClient smc;
	private static BoardDaoImpl instance;
	private BoardDaoImpl() {
		smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static BoardDaoImpl getInstance() {
		if(instance == null) {
			instance = new BoardDaoImpl();
		}
		return instance;
	}
	

	@Override
	public int countList() throws SQLException {
		smc.queryForObject("board.countList");
		
		
		return 0;
	}

}
