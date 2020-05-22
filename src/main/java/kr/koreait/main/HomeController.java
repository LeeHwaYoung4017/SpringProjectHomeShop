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
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		session.setAttribute("cartList", cartList);
		
		logger.info("다예쁜 쇼핑몰!!!!!!!!!!!!!!");
		return "mainHome";
	}
	
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
	
	@RequestMapping("/mainHome")
	public String mainHome(HttpServletRequest request, Model model) {
		return "mainHome";
	}
	
	@RequestMapping("/topList")
	public String topList(HttpServletRequest request, Model model) {
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		
		int pageSize = 12;
		int currentPage = 1;
		try {
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		} catch(NumberFormatException e) { }
		int totalCount = mapper.topCount();
		logger.info("topCount is = " + totalCount);
		
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
		GoodsList goodsList = ctx.getBean("goodsList", GoodsList.class);
		goodsList.initMvcBoardList(pageSize, totalCount, currentPage);
		
		HashMap<String, Integer> hmap = new HashMap<String, Integer>();
		hmap.put("startNo", goodsList.getStartNo());
		hmap.put("endNo", goodsList.getEndNo());
		goodsList.setGoodList(mapper.topList(hmap));
		
		model.addAttribute("goodsList", goodsList);
		return "topList";
	}
	
	@RequestMapping("/bottomList")
	public String bottomList(HttpServletRequest request, Model model) {
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		
		int pageSize = 12;
		int currentPage = 1;
		try {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		} catch(NumberFormatException e) { }
		int totalCount = mapper.bottomCount();
		logger.info("bottomCount is = " + totalCount);
		
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
		GoodsList goodsList = ctx.getBean("goodsList", GoodsList.class);
		goodsList.initMvcBoardList(pageSize, totalCount, currentPage);
		
		HashMap<String, Integer> hmap = new HashMap<String, Integer>();
		hmap.put("startNo", goodsList.getStartNo());
		hmap.put("endNo", goodsList.getEndNo());
		goodsList.setGoodList(mapper.bottomList(hmap));
		model.addAttribute("goodsList", goodsList);
		return "bottomList";
	}
	
	@RequestMapping("/accList")
	public String accList(HttpServletRequest request, Model model) {
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		
		int pageSize = 12;
		int currentPage = 1;
		try {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		} catch(NumberFormatException e) { }
		int totalCount = mapper.accCount();
		logger.info("accCount is = " + totalCount);
//		System.out.println(totalCount);
		
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
		GoodsList goodsList = ctx.getBean("goodsList", GoodsList.class);
		goodsList.initMvcBoardList(pageSize, totalCount, currentPage);
		
		HashMap<String, Integer> hmap = new HashMap<String, Integer>();
		hmap.put("startNo", goodsList.getStartNo());
		hmap.put("endNo", goodsList.getEndNo());
		goodsList.setGoodList(mapper.accList(hmap));
		
		model.addAttribute("goodsList", goodsList);
		return "accList";
	}
	
	
	
//	다예부분!!
	
//	브라우저에 출력할 1페이지 분량의 글 얻어오기
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Model model) {
		System.out.println("list() 실행");
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		
		int pageSize = 10;
		int currentPage = 1;
		try {
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		} catch(NumberFormatException e) { }
		int totalCount = mapper.selectCount();
//		System.out.println(totalCount);
		
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
		NoticeList noticelist = ctx.getBean("noticeList", NoticeList.class);
		noticelist.initNoticeList(pageSize, totalCount, currentPage);
		
		HashMap<String, Integer> hmap = new HashMap<String, Integer>();
		hmap.put("startNo", noticelist.getStartNo());
		hmap.put("endNo", noticelist.getEndNo());
		noticelist.setNoticeList(mapper.selectList(hmap));
//		System.out.println(noticelist);
		
		model.addAttribute("noticeList", noticelist);
		return "list";

	}
	
	@RequestMapping("/insert")
	public String insert(HttpServletRequest request, Model model){
		System.out.println("insert 실행");
		return "insert";
	}
	
	@RequestMapping("/insertOK")
	public String insertOK(HttpServletRequest request, Model model, NoticeVO noticeVO) {
		System.out.println("insertOK 실행");
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		mapper.insert(noticeVO);
		
		return "redirect:list";
	}
	
	@RequestMapping("/contentView")
	public String contentView(HttpServletRequest request, Model model) {
		System.out.println("contentView 실행");
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		int idx = Integer.parseInt(request.getParameter("idx"));
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
		NoticeVO noticeVO = ctx.getBean("noticeVO", NoticeVO.class);
		noticeVO = mapper.selectByIdx(idx);
		model.addAttribute("vo", noticeVO);
		model.addAttribute("currentPage", Integer.parseInt(request.getParameter("currentPage")));

		return "contentView";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		System.out.println("delete 실행");
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		int idx = Integer.parseInt(request.getParameter("idx"));
		mapper.delete(idx);
		
		model.addAttribute("currentPage", Integer.parseInt(request.getParameter("currentPage")));
		return "redirect:list";
	}
	
	@RequestMapping("/update")
	public String update(HttpServletRequest request, Model model, NoticeVO noticeVO) {
		System.out.println("update 실행");
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		mapper.update(noticeVO);
		
		model.addAttribute("currentPage", Integer.parseInt(request.getParameter("currentPage")));
		return "redirect:list";
		
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
		orderList.add(cartVO);
		System.out.println(orderList);
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
	
	@RequestMapping(value="/contentView_goods")
	   public String contentView_goods(HttpServletRequest request, Model model){
	      System.out.println("아이템 자세히 보기");
	      int idx=Integer.parseInt(request.getParameter("idx"));
	      int currentPage = 1;
	      try {
	    	  currentPage = Integer.parseInt(request.getParameter("currentPage"));
	      } catch(NumberFormatException e) { }
	      MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
	      GoodsVO vo = mapper.selectGoods(idx);
	      model.addAttribute("vo",vo);
	      model.addAttribute("currentPage", currentPage);
	      ArrayList<StokeVO> svo = mapper.selectColor(idx);
	      model.addAttribute("idx", svo.get(0).getIdx());
	      model.addAttribute("stc", svo);
	      
	      MybatisDAO mapper1 = sqlSession3.getMapper(MybatisDAO.class);
			int pageSize = 8;
			
			int totalCount = mapper1.selectCount();
			
			AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
			ReviewList reviewList = ctx.getBean("reviewList", ReviewList.class);
			reviewList.initReviewList(pageSize, totalCount, currentPage);
			
			HashMap<String, Integer> hmap = new HashMap<String, Integer>();
			hmap.put("startNo", reviewList.getStartNo());
			hmap.put("endNo", reviewList.getEndNo());
			reviewList.setReviewList(mapper1.selectList1(hmap));
			model.addAttribute("reviewList", reviewList);
	      
	      return "contentView_goods";
	   }
	
	 //다예 업로드!
	   @RequestMapping(value = "/uploadForm1", method = RequestMethod.GET)
	   public void uploadForm1GET(Locale locale, Model model) {
	      logger.info("uploadForm1 GET");
	   }
	   @RequestMapping(value = "/uploadForm1", method = RequestMethod.POST)
	   public String uploadForm1POST(MultipartFile file, Model model, NoticeVO vo) throws Exception {
	      MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
	      int noticeIdx = mapper.selectNoticeIdx();
	      vo.setGoodsidx(noticeIdx);
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	      String date = sdf.format(new Date());
	      String savedFileName = " ";
	      // 사진없이 글만 적을 경우.
	      if(file.getOriginalFilename().equals("")) {
	         savedFileName = " ";
	      } else {
	         savedFileName = FileUtills.uploadFile(file,uploadPath1, noticeIdx, date);
	      }
	      vo.setAttached(savedFileName);
	      mapper.insert(vo);
	      model.addAttribute("savedFileName", savedFileName);
	      return "redirect: list";
	   }
	   
	   @RequestMapping("/view2")
	   public String view2(HttpServletRequest request, Model model) {
	      System.out.println("contentView2 실행");
	      MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
	      int idx = Integer.parseInt(request.getParameter("idx"));
	      AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
	      NoticeVO noticeVO = ctx.getBean("noticeVO", NoticeVO.class);
	      noticeVO = mapper.selectByIdx(idx);
	      
	      model.addAttribute("vo", noticeVO);
	      model.addAttribute("currentPage", Integer.parseInt(request.getParameter("currentPage")));
	      return "update";
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
	   
   //화영 업로드!
  @RequestMapping(value = "/uploadForm2", method = RequestMethod.GET)
  public void uploadForm2GET(Locale locale, Model model) {
     logger.info("uploadForm2 GET");
  }
  @RequestMapping(value = "/uploadForm2", method = RequestMethod.POST)
  public String uploadForm2POST(MultipartFile file, Model model, QAVO vo) throws Exception {
     MybatisDAO mapper = sqlSession2.getMapper(MybatisDAO.class);
     int QAIdx = mapper.selectQAIdx();
     vo.setGoodsidx(QAIdx);
     SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
     String date = sdf.format(new Date());
     
     String savedFileName = " ";
     
     // 사진없이 글만 적을 경우.
     if(file.getOriginalFilename().equals("")) {
        savedFileName = " ";
     } else {
        savedFileName = FileUtills.uploadFile(file,uploadPath2, QAIdx, date);
     }
     
     vo.setAttached(savedFileName);
     mapper.QAinsert(vo);
     model.addAttribute("savedFileName", savedFileName);
     return "redirect: QAlist";
//	         return "redirect: QAinsert";
      }
	      
      @RequestMapping("/QAlist")
      public String QAlist(HttpServletRequest request, Model model) {
         MybatisDAO mapper = sqlSession2.getMapper(MybatisDAO.class);
         
         int pageSize = 10;
         int currentPage = 1;
         try {
         currentPage = Integer.parseInt(request.getParameter("currentPage"));
         } catch(NumberFormatException e) { }
         int totalCount = mapper.selectQACount();
         
         AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
         QAList qalist = ctx.getBean("qaList", QAList.class);
         qalist.initQAList(pageSize, totalCount, currentPage);
         
         HashMap<String, Integer> hmap = new HashMap<String, Integer>();
         hmap.put("startNo", qalist.getStartNo());
         hmap.put("endNo", qalist.getEndNo());
         qalist.setQaList(mapper.selectQAList(hmap));
         logger.info("hmap is : " + hmap);
         logger.info("qalist is : " + qalist);
         
         model.addAttribute("qaList", qalist);
         return "QAlist";
      }   
      
      @RequestMapping("/QAinsert")
      public String QAinsert(HttpServletRequest request, Model model) {
         
         return "QAinsert";
      }
      
      @RequestMapping("/QAView")
      public String QAView(HttpServletRequest request, Model model) {
		System.out.println("QAView 실행");
		MybatisDAO mapper = sqlSession2.getMapper(MybatisDAO.class);
		int idx = Integer.parseInt(request.getParameter("idx"));
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
		QAVO qaVO = ctx.getBean("qaVO", QAVO.class);
		qaVO = mapper.QAselectByIdx(idx);
		model.addAttribute("vo", qaVO);
		model.addAttribute("currentPage", Integer.parseInt(request.getParameter("currentPage")));
		
		return "QAView";
      }
      
      @RequestMapping("/QAdelete")
      public String QAdelete(HttpServletRequest request, Model model) {
  		System.out.println("QAdelete 실행");
  		MybatisDAO mapper = sqlSession2.getMapper(MybatisDAO.class);
  		int idx = Integer.parseInt(request.getParameter("idx"));
  		mapper.QAdelete(idx);
  		
  		model.addAttribute("currentPage", Integer.parseInt(request.getParameter("currentPage")));
  		return "redirect:QAlist";
  	}
      
    @RequestMapping("/QAupdate")
  	public String QAupdate(HttpServletRequest request, Model model, QAVO qaVO) {
  		System.out.println("QAupdate 실행");
  		return "QAupdate";
  	}
    
    @RequestMapping("/QAupdateOK")
    public String QAupdateOK(HttpServletRequest request, Model model, QAVO qaVO) {
    	System.out.println("QAupdateOK 실행");
    	MybatisDAO mapper = sqlSession2.getMapper(MybatisDAO.class);
    	mapper.QAupdate(qaVO);
    	
    	model.addAttribute("currentPage", Integer.parseInt(request.getParameter("currentPage")));
    	return "redirect:QAlist";
    }
    
      @RequestMapping("/newList")
      public String newList(HttpServletRequest request, Model model) {
    	MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
    	int newListSize = 24;
  		int pageSize = 12;
  		int currentPage = 1;
  		try {
  		currentPage = Integer.parseInt(request.getParameter("currentPage"));
  		} catch(NumberFormatException e) { }
  		int totalCount = mapper.newCount(newListSize);
  		logger.info("AllCount is = " + totalCount);
  		
  		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
  		GoodsList goodsList = ctx.getBean("goodsList", GoodsList.class);
  		goodsList.initMvcBoardList(pageSize, totalCount, currentPage);
  		
  		goodsList.setGoodList(mapper.newList(newListSize));
  		
  		model.addAttribute("goodsList", goodsList);    	  
    	  
    	return "newList";
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
		  ArrayList<CartVO> cartList = (ArrayList<CartVO>) session.getAttribute("cartList"); 
		  cartList.add(vo);
		  session.setAttribute("cartList", cartList);
      }

      @RequestMapping("/smallNoticeList")
      public String smallNoticeList(HttpServletRequest request, Model model) {
         System.out.println("smallNoticeList() 실행");
         MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
         
         int pageSize = 10;
         int currentPage = 1;
         try {
         currentPage = Integer.parseInt(request.getParameter("currentPage"));
         } catch(NumberFormatException e) { }
         int totalCount = mapper.selectCount();
         AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
         NoticeList noticelist = ctx.getBean("noticeList", NoticeList.class);
         noticelist.initNoticeList(pageSize, totalCount, currentPage);
         
         HashMap<String, Integer> hmap = new HashMap<String, Integer>();
         hmap.put("startNo", noticelist.getStartNo());
         hmap.put("endNo", noticelist.getEndNo());
         noticelist.setNoticeList(mapper.selectList(hmap));
         
         model.addAttribute("noticeList", noticelist);
         return "smallNoticeList";

      }
      
      @RequestMapping("/reviewList")
  	public String list1(HttpServletRequest request, Model model) {
  		System.out.println("list() 실행");
//  		db에서 전체 review리스트 가져오기.		
  		MybatisDAO mapper = sqlSession3.getMapper(MybatisDAO.class);
  		
  		int pageSize = 10;
  		int currentPage = 1;
  		try {
  		currentPage = Integer.parseInt(request.getParameter("currentPage"));
  		} catch(NumberFormatException e) { }
  		int totalCount = mapper.selectCount();
//  		System.out.println(totalCount);
  		
  		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
  		ReviewList reviewList = ctx.getBean("reviewList", ReviewList.class);
  		reviewList.initReviewList(pageSize, totalCount, currentPage);
  		
  		HashMap<String, Integer> hmap = new HashMap<String, Integer>();
  		hmap.put("startNo", reviewList.getStartNo());
  		hmap.put("endNo", reviewList.getEndNo());
  		reviewList.setReviewList(mapper.selectList1(hmap));
  		
  		model.addAttribute("reviewList", reviewList);
  		
//  		상품별로 리스트 가져오기.
  		MybatisDAO mapper1 = sqlSession1.getMapper(MybatisDAO.class);
  		ReviewVO vo = reviewList.getReviewList().get(1);
  		System.out.println(vo);
  		int idx = vo.getGoodsidx();
  		
  		System.out.println("idx: " + idx);
  		GoodsVO goodsVO = mapper1.selectGoods(idx);
  		model.addAttribute("goodsVO", goodsVO);
  		
  		
  		return "reviewList";

  	}
      
      String savedFileName= "";
//    리뷰 작성하기
     @RequestMapping("/uploadReview")
	public String uploadReview(MultipartFile file, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
   	  System.out.println("파일 업로드 부터 했음 좋겠다~~");
	      MybatisDAO mapper = sqlSession3.getMapper(MybatisDAO.class);
	      int reviewIdx = mapper.selectReviewIdx();
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	      String date = sdf.format(new Date());
//	      redirect를 위해 idx를 받아주고 설정해줌.
	      int idx = Integer.parseInt(request.getParameter("idx"));
	      System.out.println("idx: " + idx);
	      model.addAttribute("idx", idx);
	       savedFileName = " ";
	      // 사진없이 글만 적을 경우.
	      if(file.getOriginalFilename().equals("")) {
	         savedFileName = " ";
	      } else {
	         savedFileName = FileUtills.uploadFile(file,uploadPath3, reviewIdx, date);
	      }
	      return "redirect: contentView_goods";
	   }
     
     @RequestMapping("/insertReview")
     public void insertReview(HttpServletRequest request, Model model, HttpServletResponse response, ReviewVO vo) throws IOException {
   	  System.out.println("insertReview() 메소드");
   	 
   	  String name = request.getParameter("name");
	  		String content = request.getParameter("content");
	  		int star = Integer.parseInt(request.getParameter("star"));
	  		String attached = savedFileName;
	  		System.out.println(attached);
	  		int goodsidx = Integer.parseInt(request.getParameter("idx"));
	  		response.getWriter().write(insert1(name, content, star, attached, goodsidx) + ""); 
     }
     
     private int insert1(String name, String content, int star, String attached, int goodsidx) {
   	  System.out.println("리뷰 insert작동??");
   	  ReviewVO vo = new ReviewVO();
   	  try {
   		  vo.setName(name);
   		  vo.setContent(content);
   		  vo.setGoodsidx(goodsidx);
   		  vo.setStar(star);
   		  vo.setAttached(attached);
   	  }catch (Exception e) {
   		  return 0;
   	  }
   	  	return sqlSession3.getMapper(MybatisDAO.class).insertReview(vo); 
			
}
}


