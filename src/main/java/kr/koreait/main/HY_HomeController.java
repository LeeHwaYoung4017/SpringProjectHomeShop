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
public class HY_HomeController {
	
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
	
	private static final Logger logger = LoggerFactory.getLogger(HY_HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		session.setAttribute("cartList", cartList);
		
		logger.info("운보몰 쇼핑몰");
		return "mainHome";
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
      
      @RequestMapping("/companyPrivacyPolicyUs")
      public String companyPrivacyPolicyUs() {
    	  return "companyPrivacyPolicyUs";
      }
      @RequestMapping("/companyTermsUs")
      public String companyTermsUs() {
    	  return "companyTermsUs";
      }
      @RequestMapping("/companyAboutUs")
      public String companyAboutUs() {
    	  return "companyAboutUs";
      }
}


