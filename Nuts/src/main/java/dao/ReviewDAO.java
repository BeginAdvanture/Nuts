package dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.HeartVO;
import dto.ReviewVO;
import util.DBManager;

public class ReviewDAO {
	private ReviewDAO() {
	}

	private static ReviewDAO instance = new ReviewDAO();

	public static ReviewDAO getInstance() {
		return instance;
	}

	public void insertReview(ReviewVO reviewVO) {
		String sql = "INSERT INTO review(seq , pseq ,content) VALUES(review_seq.nextval, ?,?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, reviewVO.getId());
			pstmt.setInt(1, reviewVO.getPseq());
			pstmt.setString(2, reviewVO.getContent());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public ArrayList<ReviewVO> listReview(String userId) {
		ArrayList<ReviewVO> reviewList = new ArrayList<ReviewVO>();
		String sql = "SELECT * FROM review WHERE pseq=? ORDER BY seq DESC";

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
					ReviewVO reviewVO = new ReviewVO();
					reviewVO.setSeq(rs.getInt("seq"));
					reviewVO.setId(rs.getString("id"));
					reviewVO.setPseq(rs.getInt("pseq"));
					reviewVO.setPname(rs.getString("pname"));
					reviewVO.setContent(rs.getString("content"));
					reviewVO.setIndate(rs.getTimestamp("indate"));
				
					reviewList.add(reviewVO);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return reviewList;
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
