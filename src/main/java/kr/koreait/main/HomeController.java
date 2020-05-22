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
public class HomeController {
	
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
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) {
		System.out.println("컨트롤러의 login 실행");
		return "login";
	}
	
	
//	회원가입 창으로 
	@RequestMapping("/join")
	public String join(HttpServletRequest request, Model model) {
		System.out.println("컨트롤러의 join 실행");
		return "join";
	}
	
	@RequestMapping("/idCheck")
	public String idCheck(HttpServletRequest request, Model model) {
		System.out.println("컨트롤러의 idCheck 실행");
		ArrayList<String> memberId = new ArrayList<String>();
		MybatisDAO mapper = sqlSession.getMapper(MybatisDAO.class);
		int totalLoginCount = mapper.selectLoginCount();
		logger.info("selectLoginCount 실행");
		for(int i=1;i<=totalLoginCount;i++) {
			memberId.add(mapper.memberIdList(i));
			logger.info("selectIdList 실행");
			logger.info(i+ "번째 IdList를 Get!");
		}
		System.out.println(memberId);
		model.addAttribute("idList", memberId);
		return "idCheck";
	}

	@RequestMapping("/popUp")
	public String popUp(HttpServletRequest request, Model model) {
		return "popUp";
	}
	

	
//	회원가입 주소 검색창
	@RequestMapping(value="/jusoPopup")
	public String jusoPopup(HttpServletRequest request, Model model){
		return "jusoPopup";
	}
	
//	회원가입 아이디 검사창
	@RequestMapping(value="/dd")
	public String chk() {
		return "idCheck";
	}
	
//	아이디 검사창에서 중복확인 (쿼리문 조건에 맞는 값이 없을 때(null) 해당 아이디 사용 가능)
	@RequestMapping(value="/checkID")
	public void check(HttpServletRequest request, Model model , HttpServletResponse response) {
		System.out.println("컨트롤러 ID중복확인 실행(check)");
		String id = request.getParameter("id");
		MybatisDAO mapper = sqlSession.getMapper(MybatisDAO.class);
		String result_id = mapper.checkID(id);
		String str;
		StringBuffer result = new StringBuffer();
		if(result_id == null) {
			str = "OK";
		}else {
			str = "NOT";
		}
		result.append("{\"result\":");
		result.append("[{\"value\":\"" + str + "\"}],");
		result.append("}");
		System.out.println(result);
		try {
			response.getWriter().write(result.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
//	회원가입 
	@RequestMapping("/joinOK")
	public String joinOK(HttpServletRequest request, Model model, LoginVO loginVO) {
		System.out.println("컨트롤러의 joinOK 실행");
		MybatisDAO mapper = sqlSession.getMapper(MybatisDAO.class);
		String birth = request.getParameter("year") +"-"+ request.getParameter("month") +"-"+ request.getParameter("day");
		loginVO.setBirth(birth);
		mapper.insertMemeber(loginVO);
		return "login";
	}
	
//	로그인
	LoginVO vo;
	@RequestMapping(value="/loginOK")
	public void loginOK(HttpServletRequest request, Model model, HttpServletResponse response){
		System.out.println("로그인 확인(loginOK)");
		MybatisDAO mapper = sqlSession.getMapper(MybatisDAO.class);
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("id", request.getParameter("id"));
		hmap.put("password", request.getParameter("password"));
		vo = mapper.selectLogin(hmap);
		String str;
		try {
			if(vo.getName()!=null) {
				str = "success";
			}else {
				str = "fail";
			}
		}catch (NullPointerException e) {
			str = "fail";
		}
		StringBuffer result = new StringBuffer();
		result.append("{\"result\":");
		result.append("[{\"value\":\"" + str + "\"}],");
		result.append("}");
		try {
			response.getWriter().write(result.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/x685x23")
	public String x685x23(HttpServletRequest request, Model model, HttpServletResponse response){
		if(vo!=null) {
			session.setAttribute("name", vo.getName());
			session.setAttribute("id", vo.getId());
			session.setAttribute("vo", vo);
		}
		return "mainHome";
	}
	
	
//	마이페이지
	@RequestMapping(value="/myPage")
	public String myPage(HttpServletRequest request, Model model){
		System.out.println("마이페이지(myPage)");
		if(session.getAttribute("name")==null) {
			   return "login";
		   }
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
	    String id = (String) session.getAttribute("id");
	    ArrayList<StatusVO> list  = mapper.selectStatus(id);
	    StatusCount countVO = new StatusCount();
	    for(StatusVO vo : list) {
	    	switch (vo.getStatus()) {
			case 0:
				countVO.setNdeposit(countVO.getNdeposit()+1);
				break;
			case 1:
				countVO.setDeposit(countVO.getDeposit()+1);
				break;
			case 2:
				countVO.setDelivery(countVO.getDelivery()+1);
				break;
			case 3:
				countVO.setCdelivery(countVO.getCdelivery()+1);
				break;
			case 4:
				countVO.setCancel(countVO.getCancel()+1);
				break;
			}
	    }
	    request.setAttribute("list", list);
	    request.setAttribute("countVO", countVO);
		return "myPage";
	}
	
	// 주문 페이지
	ArrayList<CartVO> orderList = new ArrayList<CartVO>();
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
	}
	
	@RequestMapping(value = "/orderBuy")
	public String orderBuy(HttpServletRequest request, Model model) {
		if(session.getAttribute("name")==null) {
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
		return "order";
	}
	@RequestMapping(value = "/orderOK")
	public String orderOK(HttpServletRequest request, Model model) {
		
		return "orderOK";
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
	private void setIdPhotoNum(GoodsVO goodsVO, String savedFileName, ArrayList<String> savedFileName_sub,
			int photoNum) {
		goodsVO.setId_Number(savedFileName);
		for(String str : savedFileName_sub) {
			photoNum++;
		}
		goodsVO.setPhoto(photoNum);
	}
	
	
	   
	   @RequestMapping("/shoppingCart")
	   public String shoppingCart(HttpServletRequest request, Model model) {
		   System.out.println("장바구니로 갑시다잉");
		   if(session.getAttribute("name")==null) {
			   return "login";
		   }
		   return "shoppingCart";
	   }
	   
	   @RequestMapping("/logout")
	   public String logout(HttpServletRequest request, Model model) {
		   session.invalidate();
		   return "mainHome";
	   }
	   
      
      @RequestMapping("/reSize")
      public void reSize(HttpServletRequest request, Model model, HttpServletResponse response) {
	    System.out.println("reSize함수 실행");
	    String color = request.getParameter("color");
	    MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
	    int idx = Integer.parseInt(request.getParameter("idx"));
	    Resize re = new Resize(color, idx);
	    ArrayList<String> size_List = mapper.reSize(re);
	    
	    StringBuffer result = new StringBuffer();
		result.append("{\"result\":[");
		for (int i = 0; i < size_List.size(); i++) {
			result.append("[{\"value\":\"" + size_List.get(i)+ "\"}],");
		}
		result.append("]}");
		try {
			response.getWriter().write(result.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
      }
      
      @RequestMapping("/addToCart")
      public void addToCart(HttpServletRequest request, Model model, HttpServletResponse response) {
    	  System.out.println("addToCart");
    	  CartVO vo = new CartVO();
    	  vo.setIdx(Integer.parseInt(request.getParameter("idx")));
    	  vo.setColor(request.getParameter("color"));
    	  vo.setEa(Integer.parseInt(request.getParameter("ea")));
    	  vo.setSize(request.getParameter("size"));
    	  vo.setPrice(Integer.parseInt(request.getParameter("price")));
    	  vo.setId_number(request.getParameter("id_number"));
    	  vo.setCategory(request.getParameter("category"));
    	  vo.setItem_name(request.getParameter("item_name"));
    	  System.out.println(vo);
		  ArrayList<CartVO> cartList = (ArrayList<CartVO>) session.getAttribute("cartList"); 
		  cartList.add(vo);
		  session.setAttribute("cartList", cartList);
      }
      

}


