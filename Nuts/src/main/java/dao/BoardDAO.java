package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oreilly.servlet.MultipartRequest;

import dto.BoardVO;
import util.DBManager;

public class BoardDAO {
   private BoardDAO() {
   }

   private static BoardDAO instance = new BoardDAO();

   public static BoardDAO getInstance() {
      return instance;
   }

   
   
   
   
   public List<BoardVO> selectAllBoards() {
       String sql = "SELECT * FROM board START WITH ref = 0 CONNECT BY PRIOR num = ref ORDER SIBLINGS BY re_step, writedate DESC";


       List<BoardVO> list = new ArrayList<BoardVO>();
       Connection conn = null;
       Statement stmt = null;
       ResultSet rs = null;
       try {
           conn = DBManager.getConnection();
           stmt = conn.createStatement();
           rs = stmt.executeQuery(sql);
           while (rs.next()) {
               BoardVO bVo = new BoardVO();
               bVo.setNum(rs.getInt("num"));
               bVo.setName(rs.getString("name"));
               bVo.setEmail(rs.getString("email"));
               bVo.setPass(rs.getString("pass"));
               bVo.setTitle(rs.getString("title"));
               bVo.setContent(rs.getString("content"));
               bVo.setReadcount(rs.getInt("readcount"));
               bVo.setWritedate(rs.getTimestamp("writedate"));
               bVo.setImage(rs.getString("image"));
               bVo.setRef(rs.getInt("ref"));
               bVo.setRe_step(rs.getInt("re_step"));
               bVo.setRe_level(rs.getInt("re_level"));
               list.add(bVo);
           }
       } catch (SQLException e) {
           e.printStackTrace();
       } finally {
           DBManager.close(conn, stmt, rs);
       }
       return list;
   }



   
   public void insertBoard(BoardVO bVo, MultipartRequest multi) {
       String sql = "INSERT INTO board(num, name, email, pass, title, content, image) VALUES(board_seq.nextval, ?, ?, ?, ?, ?, ?)";
       Connection conn = null;
       PreparedStatement pstmt = null;

       try {
           conn = DBManager.getConnection();
           pstmt = conn.prepareStatement(sql);
           pstmt.setString(1, bVo.getName());
           pstmt.setString(2, bVo.getEmail());
           pstmt.setString(3, bVo.getPass());
           pstmt.setString(4, bVo.getTitle());
           pstmt.setString(5, bVo.getContent());
           pstmt.setString(6, bVo.getImage()); // 이미지 파일 경로 설정

           pstmt.executeUpdate();
       } catch (SQLException e) {
           e.printStackTrace();
       } finally {
           DBManager.close(conn, pstmt);
       }
   }

   public void replyBoard(BoardVO bVo, MultipartRequest multi) {
       // 부모글의 정보 가져오기
       int ref = bVo.getRef();
       int re_step = bVo.getRe_step();
       int re_level = bVo.getRe_level();
       Connection conn = null;
       PreparedStatement pstmt = null;

       try {
           conn = DBManager.getConnection(); // conn 변수 초기화
           String levelsql = "update board set re_level = re_level+1 where ref=? and re_level> ?";
           pstmt = conn.prepareStatement(levelsql);
           pstmt.setInt(1, ref);
           pstmt.setInt(2, re_level);
           pstmt.executeUpdate();


           String sql = "INSERT INTO board(num, name, email, pass, title, content, image, ref, re_step, re_level) " +
                   "VALUES(board_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?,?)";

          pstmt = conn.prepareStatement(sql);
           pstmt.setString(1, bVo.getName());
           pstmt.setString(2, bVo.getEmail());
           pstmt.setString(3, bVo.getPass());
           pstmt.setString(4, bVo.getTitle());
           pstmt.setString(5, bVo.getContent());
           pstmt.setString(6, bVo.getImage());
           pstmt.setInt(7, bVo.getRef()); // 부모글의 ref 값 설정
           pstmt.setInt(8, bVo.getRe_step() + 1); // 부모글의 re_step에 1을 더한 값 설정
           pstmt.setInt(9, bVo.getRe_level() + 1); // 부모글의 re_level에 1을 더한 값 설정

           pstmt.executeUpdate();
       } catch (SQLException e) {
           e.printStackTrace();
       } finally {
           DBManager.close(conn, pstmt);
       }
   }



   public void updateReadCount(String num) {
   String sql = "update board set readcount=readcount+1 where num=?";
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

   // 게시판 글 상세 내용 보기 :글번호로 찾아온다. : 실패 null,
   public BoardVO selectOneBoardByNum(String num) {
      String sql = "select * from board where num = ?";
      BoardVO bVo = null;
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      try {
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, num);
         rs = pstmt.executeQuery();
         if (rs.next()) {
            bVo = new BoardVO();
            bVo.setNum(rs.getInt("num"));
            bVo.setName(rs.getString("name"));
            bVo.setPass(rs.getString("pass"));
            bVo.setEmail(rs.getString("email"));
            bVo.setTitle(rs.getString("title"));
            bVo.setContent(rs.getString("content"));
            bVo.setWritedate(rs.getTimestamp("writedate"));
            bVo.setReadcount(rs.getInt("readcount"));
            bVo.setImage(rs.getString("image"));
            
            bVo.setRef(rs.getInt("ref"));
            bVo.setRe_step(rs.getInt("re_step"));
            bVo.setRe_level(rs.getInt("re_level"));
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, pstmt, rs);
      }
      return bVo;
   }

   public void updateBoard(BoardVO bVo, MultipartRequest multi) {
      String sql = "update board set name=?, email=?, pass=?, title=?, content=?, image=? where num=?";
      Connection conn = null;
      PreparedStatement pstmt = null;
      try {
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, bVo.getName());
         pstmt.setString(2, bVo.getEmail());
         pstmt.setString(3, bVo.getPass());
         pstmt.setString(4, bVo.getTitle());
         pstmt.setString(5, bVo.getContent());
         pstmt.setString(6, bVo.getImage());
         pstmt.setInt(7, bVo.getNum());
         pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, pstmt);
      }
   }


   public BoardVO checkPassWord(String pass, String num) {
      String sql = "select * from board where pass=? and num=?";
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      BoardVO bVo = null;
      try {
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, pass);
         pstmt.setString(2, num);
         rs = pstmt.executeQuery();
         if (rs.next()) {
            bVo = new BoardVO();
            bVo.setNum(rs.getInt("num"));
            bVo.setName(rs.getString("name"));
            bVo.setEmail(rs.getString("email"));
            bVo.setPass(rs.getString("pass"));
            bVo.setTitle(rs.getString("title"));
            bVo.setContent(rs.getString("content"));
            bVo.setReadcount(rs.getInt("readcount"));
            bVo.setWritedate(rs.getTimestamp("writedate"));
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return bVo;
   }

   public void deleteBoard(String num) {
      String sql = "delete board where num=?";
      Connection conn = null;
      PreparedStatement pstmt = null;
      try {
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, num);
         pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
}



