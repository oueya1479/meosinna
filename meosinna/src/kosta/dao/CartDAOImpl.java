package kosta.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import kosta.dto.CartDTO;
import kosta.dto.Goods;
import kosta.util.DbUtil;

public class CartDAOImpl implements CartDAO {

	@Override
	public List<CartDTO> viewCart(int mbCode) throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<CartDTO> list = new ArrayList<CartDTO>();
		String sql = "SELECT * FROM CART WHERE MB_CODE=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, mbCode);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				list.add(new CartDTO(rs.getString(1), rs.getString(2), rs.getInt(3), 
						rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7)));
			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}
	/** @author Lee SeungHyun
	 * 
	 *  장바구니 TABLE에 하나의 레이블로 추가될 값들은 single-product.html에서 선택된 값들을 가져와야 한다.
	 *  그렇다면 과연 어떤 scope에(request / session / application) 선택된 값들을 저장할 것이며
	 *  어떻게 가져오는가?
	 *  그리고 DAO객체와 어떻게 연결지을 것인가?
	 * 
	 */
	@Override
	public int addToCart(Goods goods , int qty, int mbCode) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		String sql="INSERT INTO CART VALUES(?,?,?,?,?,?,?)";
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, goods.getGdCode());
			ps.setString(2, goods.getGdName());
			ps.setInt(3, 100); // 이 부분은 논의 필요. goods에서 어떻게 사이즈코드에 맞는 사이즈를 가져올 수 있는지. 일단 임시 값 100으로 집어 넣음.
			ps.setInt(4, goods.getPrice());
			ps.setInt(5, qty);
			ps.setInt(6, mbCode);
			ps.setString(7,  goods.getImg());
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}

	@Override
	public int deleteCart() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public int clearCart(int mbCode) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "DELETE FROM CART WHERE MB_CODE=?";
		int result = 0;
		try{
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, mbCode);
			
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		
		return result;
	}

}
