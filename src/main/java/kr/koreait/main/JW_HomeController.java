package kr.koreait.main;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
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

import kr.koreait.email.FindUtil;
import kr.koreait.email.MailUtil;
import kr.koreait.mybatis.MybatisDAO;
import kr.koreait.vo.CartVO;
import kr.koreait.vo.GoodsList;
import kr.koreait.vo.GoodsVO;
import kr.koreait.vo.LoginVO;
import kr.koreait.vo.Resize;
import kr.koreait.vo.StatusCount;
import kr.koreait.vo.StatusVO;

/**
 * @author LeeJinWon
 */
@Controller
public class JW_HomeController {
	/**
	 * @param mapper(Autowired)
	 */
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
	
	
	/**
	 * 장바구니에서 상품 삭제 시 인덱스번호 받아서 삭제하고 돌아가는 메소드	<br>
	 * @param request .getParameter("idx")삭제할 리스트의 index번호 <br>
	 * @return 장바구니 호출 메소드(shoppingCart) 이동 <br>
	 */	
	@RequestMapping("/removeItem")
	public String removeItem(HttpServletRequest request, Model model) {
		System.out.println("진원 컨트롤러의 removeItem() 실행");
		int idx = Integer.parseInt(request.getParameter("idx"))-1;
		ArrayList<CartVO> cartList = (ArrayList<CartVO>) session.getAttribute("cartList");
		cartList.remove(idx);
		session.setAttribute("cartList", cartList);
		return "redirect:shoppingCart";
	}
	
	/**
	 * @return 로그인 페이지 이동
	 */
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) {
		System.out.println("컨트롤러의 login 실행");
		return "/member/login";
	}

	/**
	 * @return 회원가입 페이지 이동
	 */
	@RequestMapping("/join")
	public String join(HttpServletRequest request, Model model) {
		System.out.println("컨트롤러의 join 실행");
		return "/member/join";
	}
	
	/**
	 * @return API를 이용한 주소 검색 페이지를 요청 
	 */
	@RequestMapping(value="/jusoPopup")
	public String jusoPopup(HttpServletRequest request){
		return "jusoPopup";
	}
	
	/**
	 * 아이디 검사창에서 중복확인 (쿼리문 조건에 맞는 값이 없을 때(null) 해당 아이디 사용 가능)
	 * @param request 뷰 페이지에서 사용자의 중복확인을 위한 id가 담겨 해당 아이디를 중복 검사한다. 
	 * @param response 검사에 대한 결과를 response객체에 담아 해당 javascript 함수로 넘겨준다.
	 */
	@RequestMapping(value="/checkID")
	public void check(HttpServletRequest request, HttpServletResponse response) {
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
	
	/**
	 * @param request 입력받은 연,월,일을 하나의 변수로 만들어 loginVO에 set한다.
	 * @param loginVO 회원가입 창에서 사용자에게 입력받은 데이터를 담는다. 해당 VO는 DAO로 넘겨 데이터베이스로 INSERT
	 * @return 회원가입이 완료되면 로그인 페이지를 요청한다.
	 */
	@RequestMapping("/joinOK")
	public String joinOK(HttpServletRequest request, LoginVO loginVO) {
		System.out.println("컨트롤러의 joinOK 실행");
		MybatisDAO mapper = sqlSession.getMapper(MybatisDAO.class);
		String birth = request.getParameter("year") +"-"+ request.getParameter("month") +"-"+ request.getParameter("day");
		loginVO.setBirth(birth);
		mapper.insertMemeber(loginVO);
		return "/member/login";
	}
	
	/**
	 * 로그인 처리 후 결과가 성공적이면 전역변수 LoginVO vo에 해당 정보가 담긴다.
	 */
	LoginVO vo;
	
	/**
	 * 넘겨받은 id와 pw를 데이터베이스로 넘겨 검사한 후 결과를 response로 넘기는 메소드
	 * @param request 입력받은 id와 password가 넘어온다.
	 * @param response 로그인 검사 결과를 담아 넘겨준다.
	 */
	@RequestMapping(value="/loginOK")
	public void loginOK(HttpServletRequest request, HttpServletResponse response){
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
	
	/**
	 * 로그인이 성공적으로 이루어지면 해당 메소드에서 전역변수로 선언된 vo를 세션에 담아준다.
	 * @return 로그인 성공 시 메인을 호출한다.
	 */
	@RequestMapping(value="/x685x23")
	public String x685x23(HttpServletRequest request, Model model, HttpServletResponse response){
		if(vo!=null) {
			session.setAttribute("name", vo.getName());
			session.setAttribute("id", vo.getId());
			session.setAttribute("vo", vo);
		}
		return "redirect:mainHome";
	}
	
	
	/**
	 * 세션에서 사용자의 id를 가져와 해당 id의 구매 정보를 읽어온 후 분류하여 뷰 페이지로 뿌려주는 메소드 
	 * @return request에 상품의 list와 상품 상태를 저장하는 countVO를 담아 마이페이지로 리턴한다. 
	 */
	@RequestMapping(value="/myPage")
	public String myPage(HttpServletRequest request, Model model){
		System.out.println("마이페이지(myPage)");
		if(session.getAttribute("name")==null) {
			   return "/member/login";
		 }
		MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
	    String id = (String) session.getAttribute("id");
	    ArrayList<StatusVO> list  = mapper.selectStatus(id);
	    System.out.println(list);
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
	
	/**
	 * @return 로그인이 되어있을 시 장바구니로, 비로그인 상태면 로그인 페이지를 요청한다.
	 */
	@RequestMapping("/shoppingCart")
	   public String shoppingCart(HttpServletRequest request, Model model) {
		   System.out.println("장바구니로 갑시다");
		   if(session.getAttribute("name")==null) {
			   return "/member/login";
		   }
		   return "shoppingCart";
	   }
	   
		/**
		 * 세션의 로그인 정보를 날려주는 로그아웃 메소드 
		 * @return 로그아웃 후 메인으로 리턴한다.
		 */
	   @RequestMapping("/logout")
	   public String logout(HttpServletRequest request, Model model) {
		   session.removeAttribute("name");
		   session.removeAttribute("id");
		   session.removeAttribute("vo");
		   return "redirect:mainHome";
	   }
	   
	   /**
	    * 상품의 컬러 선택 시 stokeVO의 컬러가 가지고있는 사이즈 재고 표시 
	    * @param request 상품의 idx와 color를 넘겨받아 해당 컬러의 size를 response에 담아 넘겨준다.
	    */
	   @RequestMapping("/reSize")
	   public void reSize(HttpServletRequest request, Model model, HttpServletResponse response) {
		    System.out.println("reSize함수 실행");
		    String color = request.getParameter("color");
		    System.out.println(color);
		    
		    MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
		    int idx = Integer.parseInt(request.getParameter("idx"));
		    Resize re = new Resize(color, idx);
		    ArrayList<String> size_List = mapper.reSize(re);
		    System.out.println(size_List);
		    StringBuffer result = new StringBuffer();
			result.append("{\"result\":[");
			for (int i = 0; i < size_List.size(); i++) {
				result.append("[{\"value\":\"" + size_List.get(i)+ "\"},");
				re.setSize(size_List.get(i));
				int ea = mapper.getEA(re);
				result.append("{\"value\":\"" + ea+ "\"}],");
			}
			result.append("]}");
			System.out.println(result);
			try {
				response.getWriter().write(result.toString());
			} catch (IOException e) {
				e.printStackTrace();
			}
	   }
   
	   /**
	    * 상품의 정보를 입력받은 갯수만큼 vo객체를 만들어 세션의 cartList에 담는 메소드
	    */
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
   
	   /**
	    * 주문량이 10이 넘는 상품을 model에 담아 넘기는 메소드 
	    * @return 베스트 상품을 모아놓은 bestList 페이지를 요청한다.
	    */
	   @RequestMapping("/bestList")
	   public String bestList(HttpServletRequest request, Model model,HttpServletResponse response) {
		    System.out.println("진원 컨트롤러 - bestList");  
		    MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);
	 	    int bestListSize = 12;
			int pageSize = 12;
			int currentPage = 1;
			try {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			} catch(NumberFormatException e) { }
			int totalCount = mapper.bestCount(bestListSize);
			logger.info("AllCount is = " + totalCount);
			
			AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
			GoodsList goodsList = ctx.getBean("goodsList", GoodsList.class);
			goodsList.initMvcBoardList(pageSize, totalCount, currentPage);
			goodsList.setGoodList(mapper.bestList(bestListSize));
			model.addAttribute("goodsList", goodsList);    	  
			return "bestList";
	   }
	   
	   /**
	    * best아이템 top6 , new아이템 6개를 읽어와 뿌려주는 메인 페이지를 호출하는 메소드
	    */
	   @RequestMapping("/mainHome")
		public String mainHome(HttpServletRequest request, Model model) {
		   System.out.println("main실행");
		   MybatisDAO mapper = sqlSession1.getMapper(MybatisDAO.class);      
		   AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
		   GoodsList goodsList = ctx.getBean("goodsList", GoodsList.class);
		   ArrayList<GoodsVO> bestSlide = mapper.bestSlide();
		   ArrayList<GoodsVO> newMain = mapper.newMain();
		   model.addAttribute("newMain", newMain);
		   model.addAttribute("bestSlide", bestSlide);
		   return "mainHome";
		}
	   
	   @RequestMapping("/rootPage")
		public String rootPage() {
		   return "/root/rootPage";
		}
	   
	   @RequestMapping("/searchPW")
		public String searchPW() {
		   return "/member/searchPassword";
		}
	   
	   /**
	    * 1. 사용자가 입력한 아이디와 이메일 이름을 데이터베이스에 저장된 정보와 일치하는지 확인한다.
	    * 2. 일치하지 않으면 result에 fail을 담아 리턴시킨다.
	    * 3. 일치하면 임시 비밀번호를 발급하여 이메일로 보낸 후 사용자의 비밀번호를 임시 비밀번호로 변경시킨다.
	    * 4. result에 success를 담아 리턴시킨다.
	    */
	   @RequestMapping("/search_pw")
		public String search_pw(HttpServletRequest request, Model model) {
		   String email = request.getParameter("email");
		   String name = request.getParameter("name");
		   String id = request.getParameter("id");
		   MybatisDAO mapper = sqlSession.getMapper(MybatisDAO.class);
		   LoginVO vo = mapper.search_pw(id);
		   
		   if(vo.getName()==null || !vo.getName().equals(name) || !vo.getEmail().equals(email)) {
			   model.addAttribute("result","fail");
		   }else {
			   try {
					String keyCode = FindUtil.createKey();
					String subject = "[MIN-HA!] 다예쁘 비밀번호 찾기 인증코드 안내";
					String msg = "";
					msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
					msg += "<h3 style='color: blue;'>임시 비밀번호입니다.</h3>";
					msg += "<div style='font-size: 130%'>";
					msg += "고객님의 임시비밀번호는 <strong>";
					msg += keyCode + "</strong>입니다. 임시비밀번호를 통해 로그인한 뒤 비밀번호를 변경해주세요.</div><br/>";
					MailUtil.sendMail(vo.getEmail().trim(), subject, msg);
					
//					메일 전송이 완료되면 회원의 비밀번호를 전송한 임시비밀번호로 바꾼다.
					HashMap<String, String> hmap = new HashMap<String, String>();
					hmap.put("keyCode", keyCode);
					hmap.put("id", id);
					mapper.updatePassword(hmap);
					model.addAttribute("result","success");
				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("result","fail");
				}//end catch
		   }//end else
		   
		   return "/member/searchPassword";
		}//END search_pw()
	   
//		아이디 찾기 창으로 넘어간다.	   
	   @RequestMapping("/searchID")
		public String searchID() {
		   return "/member/searchID";
	   }
	   
//	   아이디 찾기 (이름과 이메일을 입력받아 아이디를 넘겨준다.)
	   @RequestMapping("/selectID")
		public void selectID(HttpServletRequest request, HttpServletResponse response) {
		   System.out.println("selectID 실행");
		   String name = request.getParameter("name");
		   String email = request.getParameter("email");
		   MybatisDAO mapper = sqlSession.getMapper(MybatisDAO.class);
		   HashMap<String, String> hmap = new HashMap<String, String>();
		   hmap.put("name", name);
		   hmap.put("email", email);
		   String resultID = mapper.selectID(hmap);
		   
		   StringBuffer result = new StringBuffer();
			result.append("{\"result\":[");
			result.append("[{\"value\":\"" + resultID+ "\"}],");
			result.append("]}");
			try {
				response.getWriter().write(result.toString());
			} catch (IOException e) {
				e.printStackTrace();
			}
	   }// END selectID()
}
