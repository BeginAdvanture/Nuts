package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.HeartVO;
import util.DBManager;

public class HeartDAO {
	private HeartDAO() {
	}

	private static HeartDAO instance = new HeartDAO();

	public static HeartDAO getInstance() {
		return instance;
	}

	public void insertHeart(HeartVO heartVO) {
		String sql = "INSERT INTO heart(cseq, id, pseq) VALUES(heart_seq.nextval, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, heartVO.getId());
			pstmt.setInt(2, heartVO.getPseq());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public ArrayList<HeartVO> listHeart(String userId) {
		ArrayList<HeartVO> heartList = new ArrayList<HeartVO>();
		String sql = "SELECT * FROM heart_view WHERE id=? ORDER BY cseq DESC";
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			if (userId != null) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userId);
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					HeartVO heartVO = new HeartVO();
					heartVO.setCseq(rs.getInt("cseq"));
					heartVO.setId(rs.getString("id"));
					heartVO.setPseq(rs.getInt("pseq"));
					heartVO.setPname(rs.getString("pname"));
					heartVO.setIndate(rs.getTimestamp("indate"));
					heartVO.setPrice(rs.getInt("price"));
					heartList.add(heartVO);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return heartList;
	}

	public void deleteHeart(int cseq) {
		String sql = "DELETE FROM heart WHERE cseq=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cseq);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}
