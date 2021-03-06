package kosta.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sound.sampled.AudioFileFormat.Type;

import kosta.dao.GoodsDAO;
import kosta.dao.GoodsDAOImpl;
import kosta.dto.Goods;

public class GoodsServiceImpl implements GoodsService {

	private GoodsDAO goodsDAO = new GoodsDAOImpl();
	
	@Override
	public void insert(Goods goods) throws SQLException {
		int result = goodsDAO.insert(goods);
		if(result==0) throw new SQLException("ERROR : 등록되지 않았습니다.");

	}

	@Override
	public void delete(String gdCode) throws SQLException {
		if(goodsDAO.delete(gdCode)==0) {
			throw new SQLException("ERROR : 삭제 실패했습니다.");
		}
		
	}

	@Override
	public void update(Goods goods) throws SQLException {
		Goods dbGoods = goodsDAO.selectByGdCode(goods.getGdCode());
		if(!dbGoods.getGdCode().equals(goods.getGdCode())) {
			throw new SQLException("ERROR : 상품코드가 일치하지 않습니다");
		}
		

	}

	@Override
	public List<Goods> selectAll() throws SQLException {
		List<Goods> list = goodsDAO.selectAll();
		if(list.size()==0)throw new SQLException("ERROR : 등록된 상품정보가 없습니다.");
		return list;
	}

	@Override
	public Goods selectByGdName(String gdName) throws SQLException {
		Goods goods = goodsDAO.selectByGdName(gdName);
		if(goods==null) {
			throw new SQLException("ERROR : 해당하는 이름에 대한 상품정보가 없습니다.");
		}
		return goods;
	}

	@Override
	public List<Goods> selectByBrand(String brand) throws SQLException {
		List<Goods> list = goodsDAO.selectByBrand(brand);
		if(list==null) {
			throw new SQLException("ERROR : 해당하는 브랜드에 대한 상품정보가 없습니다.");
		}
		return list;
	}

	@Override
	 public List<Goods> selectByPrice(int min, int max) throws SQLException {
	List<Goods> list = goodsDAO.selectByPrice(min,max);
		if(list==null) {
			throw new SQLException("ERROR :설정하신 가격대의 상품정보가 없습니다.");
		}
		return list;
	}

	@Override
	public List<Goods> selectAll(int pageNo) throws SQLException {
		
		return goodsDAO.getGoodsList(pageNo);
	}

	

	public Goods selectByGdCode(String gdCode) throws SQLException {
		Goods goods = goodsDAO.selectByGdCode(gdCode);
		if(goods == null) {
			throw new SQLException("ERROR : 해당하는 브랜드에 대한 상품정보가 없습니다.");
		}
		return goods;
	}
	
	
	@Override
	public Goods gdDetail(String gdCode) throws SQLException {
		Goods goods = goodsDAO.gdDetail(gdCode);
		if(goods == null) {
			throw new SQLException("ERROR: 해당상품의 정보가 존재하지 않습니다.");
		}
		return goods;
	}

	@Override
	public List<Goods> selectAllByPriceAsc(int pageNo) throws SQLException {
		List<Goods> list = goodsDAO.selectAllByPriceAsc(pageNo);
		if(list.size()==0)throw new SQLException("ERROR : 등록된 상품정보가 없습니다.");
		return list;
	}

	@Override
	public List<Goods> selectAllByPriceDesc(int pageNo) throws SQLException {
		List<Goods> list = goodsDAO.selectAllByPriceDesc(pageNo);
		if(list.size()==0)throw new SQLException("ERROR : 등록된 상품정보가 없습니다.");
		return list;
	}

	public int checkLike(int mbCode, String gdCode) throws SQLException {
		int count =  goodsDAO.checkLike(mbCode, gdCode);
		return count;
	}

	@Override
	public List<Goods> selectOrderByLike() throws SQLException {
		List<Goods> list = goodsDAO.selectOrderByLike();
		return list;
	}

	@Override
	public Map<Integer, Integer> getSizeQty(String gdCode) throws SQLException {
		Map<Integer, Integer> map = goodsDAO.getSizeQty(gdCode);
		return map;
	}

	@Override
	public List<Goods> getRecommended(int mbCode) throws SQLException {
		List<Goods> list = goodsDAO.getRecommended(mbCode);
		return list;
	}


	

	
	
}
