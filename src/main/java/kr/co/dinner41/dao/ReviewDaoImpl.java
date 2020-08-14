package kr.co.dinner41.dao;

import kr.co.dinner41.exception.ReviewException;
import kr.co.dinner41.mapper.ReviewMapper;
import kr.co.dinner41.vo.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("reviewDaoImpl")
public class ReviewDaoImpl implements ReviewDao{
    @Autowired
    private JdbcTemplate template;

    @Override
    public void insert(ReviewVO review) throws ReviewException {
        String sql = "INSERT INTO reviews VALUES(DEFAULT, ?, ?, ?, ?, DEFAULT);";
        template.update(sql, review.getStore().getId(), review.getUser().getId(), review.getContent(), review.getScore());
    }

    @Override
    public void delete(int id) throws ReviewException {
        return;
    }

    @Override
    public ReviewVO selectedById(int id) throws ReviewException {
        List<ReviewVO> list;
        String sql = "SELECT * FROM reviews WHERE review_id = ?;";
        list = template.query(sql, new ReviewMapper(), id);
        return (list.size() == 0? null:list.get(0));
    }

    @Override
    public List<ReviewVO> selectedByStoreId(int storeId) throws ReviewException {
        List<ReviewVO> list;
        String sql = "SELECT * FROM reviews WHERE store_id = ?;";
        list = template.query(sql, new ReviewMapper(), storeId);
        return list;
    }

    @Override
    public List<ReviewVO> selectedAll() throws ReviewException {
        List<ReviewVO> list;
        String sql = "SELECT * FROM reviews;";
        list = template.query(sql, new ReviewMapper());
        return list;
    }
}
