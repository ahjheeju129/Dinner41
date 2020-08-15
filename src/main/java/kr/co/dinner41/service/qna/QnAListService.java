package kr.co.dinner41.service.qna;

import kr.co.dinner41.vo.QnAVO;
import kr.co.dinner41.vo.UserVO;

import java.util.List;

public interface QnAListService {
    List<QnAVO> execute(UserVO user, String qnaType, int page);
    List<QnAVO> execute(String qnaType, int page);
    int getTotalRecord();
    List<Integer> getPages();
}
