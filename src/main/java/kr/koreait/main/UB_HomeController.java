package kr.koreait.main;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import kr.koreait.mybatis.MybatisDAO;
import kr.koreait.utill.FileUtills;
import kr.koreait.vo.CartVO;
import kr.koreait.vo.GoodsList;
import kr.koreait.vo.GoodsVO;
import kr.koreait.vo.LoginVO;
import kr.koreait.vo.NoticeList;
import kr.koreait.vo.NoticeVO;
import kr.koreait.vo.QAList;
import kr.koreait.vo.QAVO;
import kr.koreait.vo.Resize;
import kr.koreait.vo.ReviewList;
import kr.koreait.vo.ReviewVO;
import kr.koreait.vo.StatusCount;
import kr.koreait.vo.StatusVO;
import kr.koreait.vo.StokeVO;

@Controller
public class UB_HomeController {
	
	@Autowired
	public SqlSession sqlSession, sqlSession1, sqlSession2, sqlSession3;
	@Autowired
	HttpSession session;
	
	@Resource(name= "uploadPath1")
	private String uploadPath1;
	@Resource(name= "uploadPath2")
	private String uploadPath2;
	@Resource(name= "uploadPath3")
	private String uploadPath3;
	@Resource(name= "uploadPath_ACC")
	private String uploadPath_ACC;
	@Resource(name= "uploadPath_TOP")
	private String uploadPath_TOP;
	@Resource(name= "uploadPath_BOTTOM")
	private String uploadPath_BOTTOM;
	
	private static final Logger logger = LoggerFactory.getLogger(UB_HomeController.class);
	
	// 주문 페이지
	ArrayList<CartVO> orderList = new ArrayList<CartVO>();
	ArrayList<StatusVO> statusList = new ArrayList<StatusVO>();
	StatusVO statusVO= new StatusVO();
	@RequestMapping(value="/order")
	public void order(HttpServletRequest request, Model model){
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		System.out.println("order페이지 입장");
		CartVO cartVO = new CartVO();
		cartVO.setItem_name(request.getParameter("item_name"));
		cartVO.setId_number(request.getParameter("id_number"));
		cartVO.setPrice(Integer.parseInt(request.getParameter("price")));
		cartVO.setCategory(request.getParameter("category"));
		cartVO.setColor(request.getParameter("color"));
		cartVO.setEa(Integer.parseInt(request.getParameter("ea")));
		cartVO.setIdx(Integer.parseInt(request.getParameter("idx")));
		cartVO.setSize(request.getParameter("size"));
		System.out.println(cartVO);
		orderList.add(cartVO);
		
		statusVO.setCategory(request.getParameter("category"));
		statusVO.setColor(request.getParameter("color"));
		statusVO.setItem_name(request.getParameter("item_name"));
		statusVO.setId_number(request.getParameter("id_number"));
		statusVO.setPrice(Integer.parseInt(request.getParameter("price")));
		statusVO.setEa(Integer.parseInt(request.getParameter("ea")));
		statusVO.setItem_size(request.getParameter("size"));
		statusList.add(statusVO);
		System.out.println(statusVO);
		System.out.println(statusList);
		
	}
	
	@RequestMapping(value = "/orderBuy")
	public String orderBuy(HttpServletRequest request, Model model) {
		System.out.println("orderBuy 들어옴");
		if(session.getAttribute("name")==null) {
			orderList=new ArrayList<CartVO>();
			return "login";
		}
			
		
		   LoginVO loginVO= (LoginVO) session.getAttribute("vo");
		    String id = loginVO.getId();
		    String addr = loginVO.getaddr();
		    String email = loginVO.getEmail();
		    String phone = loginVO.getPhone();
		      model.addAttribute("id", id);
		      model.addAttribute("addr", addr);
		      model.addAttribute("email", email);
		      model.addAttribute("phone", phone);
		      model.addAttribute("orderList", orderList);
		      System.out.println(orderList);
		      orderList=new ArrayList<CartVO>();
		     
		/*
		 * statusVO.setAddr(addr); statusVO.setUser_id(id);
		 */
		return "order";
	}
	@RequestMapping(value = "/orderOK")
	public String orderOK(HttpServletRequest request, Model model) {
		System.out.println("orderOK 들어옴");
		/* statusVO.setStatus(1); */
		 
		System.out.println(request.getParameter("totalEa"));
		System.out.println(request.getParameter("totalPrice"));
		
		/*
		 * String email= request.getParameter("email"); String pay=
		 * request.getParameter("pay"); System.out.println(email);
		 * System.out.println(pay);
		 */
		//굿즈 브이오 볼륨 1증가, 스테이터스 결제대기로 변경, 스테이터스 브이오 채우기 메소드 만들기
		return "orderOK";
	}
	
	private void setIdPhotoNum(GoodsVO goodsVO, String savedFileName, ArrayList<String> savedFileName_sub,int photoNum) {
		goodsVO.setId_Number(savedFileName);
		for(String str : savedFileName_sub) {
			photoNum++;
		}
		goodsVO.setPhoto(photoNum);
	}
	
	@RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
	public void uploadFormGET(Model model, HttpServletRequest request) throws Exception {
		logger.info("uploadFormGET");
	}
	
//	업로드
	@RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
	public void uploadFormGET(Locale locale, Model model) {
		logger.info("uploadForm GET");
	}
	@RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
	public void uploadFormPOST(MultipartFile file, Model model, HttpServletRequest request ,GoodsVO goodsVO, StokeVO vo) throws Exception {
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		int goodIdx = mapper.selectGoodsIdx();
		
		String savedFileName ="";
		ArrayList<String> savedFileName_sub;
		goodsVO.setGoodsidx(goodIdx);
		goodsVO.setGoodsColor(vo.getColor());
//		컬러, 색상, 사이즈 분류 알고리즘
		String[] color_array = vo.getColor().split(",");
		String[] ea_array = vo.getEa().split(",");
		int start=0;
		int end=3;
		goodsVO.setGoodsColor(vo.getColor());
		for(int i=0; i<color_array.length; i++) {
			int count=0;
			for(int j=start; j<=end; j++) {
				StokeVO stoke = new StokeVO();
				stoke.setIdx(goodIdx);
				stoke.setColor(color_array[i]);
				stoke.setEa(ea_array[j]);
				switch (count++) {
				case 0:
					stoke.setSize1("S");
					break;
				case 1:
					stoke.setSize1("M");
					break;
				case 2:
					stoke.setSize1("L");
					break;
				case 3:
					stoke.setSize1("XL");
					break;	
				}
				if(Integer.parseInt(stoke.getEa()) == 0) {
					System.out.println("패스");
				}else {
					mapper.insertStoke(stoke);
				}
			}
			start=end+1;
			end=start+3;
		}
		int photoNum = 0;
		String category = goodsVO.getCategory();
		if(category.equals("top")) {
			savedFileName = FileUtills.uploadFile(file,uploadPath_TOP,goodsVO);
			savedFileName_sub = FileUtills.uploadFile_sub(goodsVO.getSub_file(), uploadPath_TOP, goodsVO);
			setIdPhotoNum(goodsVO, savedFileName, savedFileName_sub, photoNum);
			mapper.insertGoods_top(goodsVO);
		}else if(category.equals("bottom")) {
			savedFileName = FileUtills.uploadFile(file,uploadPath_BOTTOM,goodsVO);
			savedFileName_sub = FileUtills.uploadFile_sub(goodsVO.getSub_file(), uploadPath_BOTTOM, goodsVO);
			setIdPhotoNum(goodsVO, savedFileName, savedFileName_sub, photoNum);
			mapper.insertGoods_bottom(goodsVO);
		}else if(category.equals("acc")) {
			savedFileName = FileUtills.uploadFile(file,uploadPath_ACC,goodsVO);
			savedFileName_sub = FileUtills.uploadFile_sub(goodsVO.getSub_file(), uploadPath_ACC, goodsVO);
			setIdPhotoNum(goodsVO, savedFileName, savedFileName_sub, photoNum);
			mapper.insertGoods_acc(goodsVO);
		}
		model.addAttribute("savedFileName", savedFileName);
	}

}


