package kr.co.dinner41.dao;

import kr.co.dinner41.exception.ReviewException;
import kr.co.dinner41.vo.ReviewVO;

import java.util.List;

public interface ReviewDao {
    void insert(ReviewVO review) throws ReviewException;
    void delete(int id) throws ReviewException;
    ReviewVO selectedById(int id) throws ReviewException;
    ReviewVO selectedByStoreId(int storeId) throws ReviewException;
    List<ReviewVO> selectedAll() throws ReviewException;
}
