package kr.koreait.main;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.koreait.vo.CartVO;

@Controller
public class JW_HomeController {
	@Autowired
	public SqlSession sqlSession, sqlSession1, sqlSession2, sqlSession3;
	@Autowired
	HttpSession session;
	
    
	@RequestMapping("/removeItem")
	public String removeItem(HttpServletRequest request, Model model) {
		System.out.println("문제야??-화영");
		System.out.println("dkdk");
		System.out.println("removeItem");
		int idx = Integer.parseInt(request.getParameter("idx"))-1;
		ArrayList<CartVO> cartList = (ArrayList<CartVO>) session.getAttribute("cartList");
		cartList.remove(idx);
		session.setAttribute("cartList", cartList);
		System.out.println(session.getAttribute("cartList"));
		return "redirect:shoppingCart";
	}
}
