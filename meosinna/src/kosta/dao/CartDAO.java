package kosta.dao;

import java.sql.SQLException;

import java.util.List;

import kosta.dto.CartDTO;
import kosta.dto.Goods;

public interface CartDAO {
	/**
	 * Cart.jsp에서 장바구니 전체 목록 보여주는 메소드 
	 */
	public List<CartDTO> viewCart(int mbCode) throws SQLException;
	
	/**
	 * single-product.html에서 단일상품 장바구니에 넣어주는 메소드 
	 */
	public int addToCart(Goods goods, int qty, int mbCode, int size) throws SQLException;
	
	/**
	 * Cart.jsp에서 장바구니 목록에서 단일상품 제거하는 메소드 
	 */
	public int deleteCart(int mbCode, String gdCode) throws SQLException;
	
	/**
	 * Cart.jsp에서 장바구니 목록을 일괄 제거하는 메소드 
	 */
	public int clearCart(int mbCode) throws SQLException;
	
	/**
	 * Header에 cart에 담긴 상품 갯수 가져오는 메소드 
	 */
	public int getCartQty(int mbCode);
	
	
	
}
