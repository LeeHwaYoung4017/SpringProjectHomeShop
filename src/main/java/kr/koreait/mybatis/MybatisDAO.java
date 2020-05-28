package kr.koreait.mybatis;

import java.util.ArrayList;
import java.util.HashMap;

import kr.koreait.vo.GoodsVO;
import kr.koreait.vo.LoginVO;
import kr.koreait.vo.NoticeVO;
import kr.koreait.vo.QAVO;
import kr.koreait.vo.Resize;
import kr.koreait.vo.ReviewVO;
import kr.koreait.vo.StatusVO;
import kr.koreait.vo.StokeVO;

public interface MybatisDAO {

	LoginVO selectById(String id);
	int selectLoginCount();
	ArrayList<LoginVO> selectLoginList(HashMap<String, Integer> hmap);
	String memberIdList(int i);
	
//	notice 부분
	int selectCount();

	ArrayList<NoticeVO> selectList(HashMap<String, Integer> hmap);

	void insert(NoticeVO noticeVO);

	NoticeVO selectByIdx(int idx);

	void delete(int idx);

	void update(NoticeVO noticeVO);
	
//	id 중복확인
	String checkID(String id);
	
//	회원가입
	void insertMemeber(LoginVO loginVO);
	
//	로그인 	
	LoginVO selectLogin(HashMap<String, String> hmap);
	
	int selectGoodsIdx();
	
	void insertGoods_top(GoodsVO goodsVO);
	void insertGoods_bottom(GoodsVO goodsVO);
	void insertGoods_acc(GoodsVO goodsVO);
	
//	상의 총 갯수와 리스트
	int topCount();
	ArrayList<GoodsVO> topList(HashMap<String, Integer> hmap);
	
//	하의 총 갯수와 리스트
	int bottomCount();
	ArrayList<GoodsVO> bottomList(HashMap<String, Integer> hmap);
	
//	악세사리 총 갯수와 리스트
	int accCount();
	ArrayList<GoodsVO> accList(HashMap<String, Integer> hmap);
	
//	아이템 한개 가져오기	
	GoodsVO selectGoods(int idx);
	
//	stoke 입력	
	void insertStoke(StokeVO stoke);
	
//  구매한 상품 등록
	void insertStatus(StatusVO status);
	
	int selectNoticeIdx();
	
	ArrayList<StatusVO> selectStatus(String id);
	
	//  QA 부분
	  void QAinsert(QAVO vo);
	  int selectQAIdx();
	  int selectQACount();
	  ArrayList<QAVO> selectQAList(HashMap<String, Integer> hmap);
	  QAVO QAselectByIdx(int idx);
	  void QAdelete(int idx);
	  void QAupdate(QAVO qaVO);
	  
	ArrayList<StokeVO> selectColor(int idx);
	ArrayList<String> reSize(Resize re);
	
	//	newList부분
	int newCount(int newListSize);
	ArrayList<GoodsVO> newList(int newListSize);
	
	// REVIEW 부분
		ArrayList<ReviewVO> selectList1(HashMap<String, Integer> hmap);
		ReviewVO selectByIdx1(int idx);
		void update(ReviewVO reviewVO);
		int insertReview(ReviewVO vo);
		int selectReviewIdx();
		
	int bestCount(int bestListSize);
	
	ArrayList<GoodsVO> bestList(int bestListSize);
	
//	메인에서 슬라이더 시키는 베스트 아이템 긁어오기
	ArrayList<GoodsVO> bestSlide();
	
//	메인 페이지에 띄워주는 new 상품 긁어오기
	ArrayList<GoodsVO> newMain();
	ArrayList<ReviewVO> selectList2(HashMap<String, Integer> hmap);
	int selectCount1(int idx);
	
	//상품 주문량 증가
	void VolumeTop(StatusVO vo);
	void VolumeAcc(StatusVO vo);
	void VolumeBottom(StatusVO vo);
	
	//서브 카테고리
	int subTopCount(int sub);
	ArrayList<GoodsVO> subTopList(HashMap<String, Integer> hmap);
	int subBottomCount(int sub);
	ArrayList<GoodsVO> subBottomList(HashMap<String, Integer> hmap);
	int subAccCount(int sub);
	ArrayList<GoodsVO> subAccList(HashMap<String, Integer> hmap);
	
//	비밀번호 찾기 - 해당 아이디 객체 얻어오기
	LoginVO search_pw(String id);
	
//	비밀번호 찾기 - 해당 아이디의 비밀번호 임시비밀번호로 변경하기	
	void updatePassword(HashMap<String, String> hmap);
	ArrayList<LoginVO> search(String name);
	
	
	
}
