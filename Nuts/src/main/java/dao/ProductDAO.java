package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dto.ProductVO;
import util.DBManager;

public class ProductDAO {
	private ProductDAO() {
	}

	private static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
	}

	// 신상품 리스트 얻어오기
	public ArrayList<ProductVO> listNewProduct() {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select * from new_pro_view_1";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setImage(rs.getString("image"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	// 베스트 상품 리스트 얻어오기
	public ArrayList<ProductVO> listBestProduct() {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select * from best_pro_view_1";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setImage(rs.getString("image"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	// 상품번호로 상품 정보 한개 얻어오기
	public ProductVO getProduct(String pseq) {
		ProductVO product = null;
		String sql = "select * from products where pseq=?";

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pseq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				product = new ProductVO();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setKind(rs.getString("kind"));
				product.setPrice(rs.getInt("price"));
				System.out.println("asdasfasdasdasfasdasd");
				product.setContent1(rs.getString("content1"));
				product.setContent2(rs.getString("content2"));
				product.setContent3(rs.getString("content3"));

				product.setImage(rs.getString("image"));
				product.setUseyn(rs.getString("useyn"));
				product.setBestyn(rs.getString("bestyn"));
				product.setIndate(rs.getTimestamp("indate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		return product;
	}

	// 상품종류별 상품 리스트 얻어오기
	public ArrayList<ProductVO> listKindProduct(String kind) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select * from products where kind=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kind);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setImage(rs.getString("image"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	public int totalRecord(String product_name) {
		int total_pages = 0;
		String sql = "select count(*) from products where name like '%'||?||'%'";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet pageset = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			if (product_name.equals("")) {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, product_name);
			}
			pageset = pstmt.executeQuery();
			if (pageset.next()) {
				total_pages = pageset.getInt(1); // 레코드의 개수
				pageset.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt);
		}
		return total_pages;
	}

	static int view_rows = 5; // 페이지의 개수
	static int counts = 5; // 한 페이지에 나타낼 상품의 개수
	// 페이지 이동을 위한 메소드

	public String pageNumber(int tpage, String name) {
		String str = "";

		int total_pages = totalRecord(name);
		int page_count = total_pages / counts + 1;
		if (total_pages % counts == 0) {
			page_count--;
		}
		if (tpage < 1) {
			tpage = 1;
		}
		int start_page = tpage - (tpage % view_rows) + 1;
		int end_page = start_page + (counts - 1);
		if (end_page > page_count) {
			end_page = page_count;
		}
		if (start_page > view_rows) {
			str += "<a href='NutsServlet?command=admin_product_list&tpage=1&key=" + name + "'>&lt;&lt;</a>&nbsp;&nbsp;";
			str += "<a href='NutsServlet?command=admin_product_list&tpage=" + (start_page - 1);

			str += "&key=<%=product_name%>'>&lt;</a>&nbsp;&nbsp;";
		}

		for (int i = start_page; i <= end_page; i++) {
			if (i == tpage) {
				str += "<font color=red>[" + i + "]&nbsp;&nbsp;</font>";
			} else {
				str += "<a href='NutsServlet?command=admin_product_list&tpage=" + i + "&key=" + name + "'>[" + i
						+ "]</a>&nbsp;&nbsp;";
			}
		}
		if (page_count > end_page) {
			str += "<a href='NutsServlet?command=admin_product_list&tpage=" + (end_page + 1) + "&key=" + name
					+ "'> &gt; </a>&nbsp;&nbsp;";
			str += "<a href='NutsServlet?command=admin_product_list&tpage=" + page_count + "&key=" + name
					+ "'> &gt; &gt; </a>&nbsp;&nbsp;";
		}
		return str;
	}

	public ArrayList<ProductVO> listProduct(int tpage, String product_name) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String str = "select pseq, indate, name, price, content1,content2,content3, useyn, bestyn "
				+ " from products where name like '%'||?||'%' order by pseq desc";

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int absolutepage = 1;
		try {
			con = DBManager.getConnection();
			absolutepage = (tpage - 1) * counts + 1;
			pstmt = con.prepareStatement(str, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

			if (product_name.equals("")) {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, product_name);
			}

			rs = pstmt.executeQuery();

			if (rs.next()) {
				rs.absolute(absolutepage);
				int count = 0;
				while (count < counts) {
					ProductVO product = new ProductVO();
					product.setPseq(rs.getInt(1));
					product.setIndate(rs.getTimestamp(2));
					product.setName(rs.getString(3));
					product.setPrice(rs.getInt(4));
					product.setContent1(rs.getString(5));
					product.setContent2(rs.getString(6));
					product.setContent3(rs.getString(7));

					product.setUseyn(rs.getString(8));
					product.setBestyn(rs.getString(9));
					productList.add(product);
					if (rs.isLast()) {
						break;
					}
					rs.next();
					count++;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		return productList;
	}

	public int insertProduct(ProductVO product) {
		int result = 0;
		String sql = "insert into products (" + "pseq, kind, name, price, content1, content2, content3, image) "
				+ "values(products_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, product.getKind());
			pstmt.setString(2, product.getName());
			pstmt.setInt(3, product.getPrice());
			pstmt.setString(4, product.getContent1());
			pstmt.setString(5, product.getContent2());
			pstmt.setString(6, product.getContent3());
			pstmt.setString(7, product.getImage());

			result = pstmt.executeUpdate();
		} catch (Exception e) { // SQLException 추가
			System.out.println("상품 등록 실패");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt);
		}
		return result;
	}

	public int updateProduct(ProductVO product) {
		int result = -1;
		String sql = "update products set kind=?, useyn=?, name=?"
				+ ", price=?, content1=?, content2=?, content3=?, image=?, bestyn=? " + "where pseq=?";

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, product.getKind());
			pstmt.setString(2, product.getUseyn());
			pstmt.setString(3, product.getName());
			pstmt.setInt(4, product.getPrice());
			pstmt.setString(5, product.getContent1());
			pstmt.setString(6, product.getContent2());
			pstmt.setString(7, product.getContent3());
			pstmt.setString(8, product.getImage());
			pstmt.setString(9, product.getBestyn());
			pstmt.setInt(10, product.getPseq());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt);
		}
		return result;
	}

	public List<ProductVO> selectAllDietery() {
		String sql = "select * from products order by pseq desc";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public List<ProductVO> kindPick(String kind) {
		String sql = "select * from products where kind=?";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("kind :  " + kind);
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kind);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				// System.out.println(rs.getInt("pseq"));
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<ProductVO> selectAllPrice() {
		String sql = "select * from products order by price asc";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public List<ProductVO> kindPickprice(String kind) {
		String sql = "select * from products where kind=? order by price asc";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("kind :  " + kind);
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kind);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<ProductVO> humanList(String human) {
		String sql = "select * from products where human=?";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("human :  " + human);
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, human);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<ProductVO> kindHumanPick(String human, String kind) {
		String sql = "select * from products where human=? and kind=? ";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("kind+human :  " + human);
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, human);
			pstmt.setString(2, kind);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public void allListCaoont(String pseq) {
		String sql = "update products set caoont=caoont+1 where pseq=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pseq);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public List<ProductVO> allListCaoont() {
		String sql = "select * from products order by caoont desc";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public List<ProductVO> kindListCaoont(String kind) {
		String sql = "select * from products where kind=? order by caoont desc";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("kind :  " + kind);
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kind);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<ProductVO> humanPistCaoont(String human) {
		String sql = "select * from products where human=? order by caoont desc";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("human :  " + human);
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, human);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<ProductVO> humanPistPrice(String human) {

		String sql = "select * from products where human=? order by price asc";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("human :  " + human);
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, human);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<ProductVO> kindHumanPickCaoont(String human, String kind) {
		String sql = "select * from products where human=? and kind=? order by caoont desc";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("kind+human :  " + human + " , " + kind);
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, human);
			pstmt.setString(2, kind);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<ProductVO> kindHumanPickPrice(String human, String kind) {
		String sql = "select * from products where human=? and kind=? order by price asc";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("kind+human2 :  " + human + " , " + kind);
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, human);
			pstmt.setString(2, kind);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO dVo = new ProductVO();
				dVo.setPseq(rs.getInt("pseq"));
				dVo.setName(rs.getString("name"));
				dVo.setKind(rs.getString("kind"));
				dVo.setPrice(rs.getInt("price"));
				dVo.setContent1(rs.getString("content1"));
				dVo.setContent2(rs.getString("content2"));
				dVo.setContent3(rs.getString("content3"));
				dVo.setImage(rs.getString("image"));
				dVo.setUseyn(rs.getString("useyn"));
				dVo.setBestyn(rs.getString("bestyn"));
				dVo.setIndate(rs.getTimestamp("indate"));
				dVo.setHuman(rs.getString("human"));
				dVo.setCaoont(rs.getInt("caoont"));
				list.add(dVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

}