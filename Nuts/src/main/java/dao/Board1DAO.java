package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dto.Board1VO;
import util.DBManager;

public class Board1DAO {

   private Board1DAO() {

   }

   private static Board1DAO instance = new Board1DAO();

   public static Board1DAO getInstance() {
      return instance;
   }

   public List<Board1VO> selectAllBoards() {

      String sql = "select * from board1 order by num desc";
      List<Board1VO> list = new ArrayList<Board1VO>();

      Connection conn = null;
      Statement stmt = null;
      ResultSet rs = null;

      try {

         conn = DBManager.getConnection();
         stmt = conn.createStatement();
         rs = stmt.executeQuery(sql);

         while (rs.next()) {
            Board1VO bvo = new Board1VO();
            bvo.setNum(rs.getInt("num"));
            bvo.setName(rs.getString("name"));
            bvo.setCategory(rs.getString("category"));
            bvo.setTitle(rs.getString("title"));
            bvo.setContent(rs.getString("content"));
            bvo.setReadcount(rs.getInt("readcount"));
            bvo.setWritedate(rs.getTimestamp("writedate"));
            list.add(bvo);
         }

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, stmt, rs);
      }
      return list;
   }

   public void updateReadCount(String num) {
      String sql = "update board1 set readcount=readcount+1 where num=?";
      Connection conn = null;
      PreparedStatement pstmt = null;
      try {
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, num);
         pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, pstmt);
      }
   }

   public Board1VO selectOneBoardByNum(String num) {
      String sql = "select * from board1 where num =?";
      Board1VO bVo = null;
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      try {
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, num);
         rs = pstmt.executeQuery();
         if (rs.next()) {
            bVo = new Board1VO();
            bVo.setNum(rs.getInt("num"));
            bVo.setName(rs.getString("name"));
            bVo.setCategory(rs.getString("category"));
            bVo.setTitle(rs.getString("title"));
            bVo.setContent(rs.getString("content"));
            bVo.setReadcount(rs.getInt("readcount"));
            bVo.setWritedate(rs.getTimestamp("writedate"));
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, pstmt, rs);
      }
      return bVo;
   }

   public void insertBoard(Board1VO bvo) {
      
      Connection conn = null;
      PreparedStatement pstmt = null;
      String sql = "insert into board1 values(bd1_seq.nextval, ?, ?, ?, ?, ?, SYSDATE)";
      
      try {
         
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, bvo.getName());
         pstmt.setString(2, bvo.getCategory());
         pstmt.setString(3, bvo.getTitle());
         pstmt.setString(4, bvo.getContent());
         pstmt.setInt(5, bvo.getReadcount());
         pstmt.executeUpdate();
         
      }catch(Exception e) {
         e.printStackTrace();
      }finally {
         DBManager.close(conn, pstmt);
      }
      
   }
   
   public void updateBoard(Board1VO bvo) {
      
      Connection conn = null;
      PreparedStatement pstmt = null;
      String sql = "update board1 set name=?, category=?, title=?, content=? where num=?";
      
      try {
         
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, bvo.getName());
         pstmt.setString(2, bvo.getCategory());
         pstmt.setString(3, bvo.getTitle());
         pstmt.setString(4, bvo.getContent());
         pstmt.setInt(5, bvo.getNum());
         pstmt.executeUpdate();
         System.out.println(bvo.getNum());
      }catch(Exception e) {
         e.printStackTrace();
      }finally {
         DBManager.close(conn, pstmt);
      }
   }
   
   public void deleteBoard(String num) {
      
      Connection conn = null;
      PreparedStatement pstmt = null;
      String sql = "delete from board1 where num=?";
      
      try {
         
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, num);
         pstmt.executeUpdate();
         
      }catch(Exception e) {
         e.printStackTrace();
      }finally {
         DBManager.close(conn, pstmt);
      }
      
   }

}