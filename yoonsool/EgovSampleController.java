
package egovframework.example.sample.web;

import java.util.List;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.study.api.NaverAPI;
import com.study.member.service.IMemberService;
import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.MemberVO;


@Controller
public class EgovSampleController {

	/* 멤버 관리 (user) 	 */
	
	@RequestMapping(value = "/login.do")
	 public String login(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  session.removeAttribute("USER");
	  System.out.println("/login.do");
	  return "sample/user/login.jsp";
	 }
	
	@RequestMapping(value = "/loginCheck.do")
	 public String loginCheck() {
	  System.out.println("/loginCheck.do");
	  return "sample/user/loginCheck.jsp";
	 }
	
	@RequestMapping(value = "/join.do")
	 public String join() {
	  System.out.println("/join.do");
	  return "sample/user/join.jsp";
	 }
	
	@RequestMapping(value = "/memberView.do")
	 public String memberView() {
	  System.out.println("/memberView.do");
	  return "sample/user/memberView.jsp";
	 }
	
	@RequestMapping(value = "/memberModify.do")
	 public String memberModify() {
	  System.out.println("/memberModify.do");
	  return "sample/user/memberModify.jsp";
	 }
	
	@RequestMapping(value = "/memberDelete.do")
	 public String memberDelete() {
	  System.out.println("/memberDelete.do");
	  return "sample/user/memberDelete.jsp";
	 }
	
	//중복 확인 
	@RequestMapping(value = "/getLoginIdDup.do")
	@ResponseBody
	public String getLoginIdDup(HttpServletRequest request) {
		System.out.println("getLoginIdDup");		
		String Id = request.getParameter("memId");

		IMemberService memberService = new MemberServiceImpl();
		MemberVO member = memberService.getMember(Id);
		String code = null;
	
		if(member == null) {
			code = "ok";			
		}
		if(member != null){
			code = "isdupl";
		}
		return code;
		}
	
	@RequestMapping(value = "/memberRegist.do")
	 public String memberRegist() {
	  System.out.println("/memberRegist.do");
	  return "sample/user/memberRegist.jsp";
	 }
		
	@RequestMapping(value = "/findPw.do")
	 public String findPw() {
	  System.out.println("/findPw.do");
	  return "sample/user/findPw.jsp";
	 }
	
	@RequestMapping(value = "/sendMail.do")
	 public String sendMail() {
	  System.out.println("/sendMail.do");
	  return "sample/user/sendMail.jsp";
	 }
	
	/* 글 관리 (board) 	 */	
	
	@RequestMapping(value = "/board.do")
	 public String board01() {
	  System.out.println("/board.do");
	  return "sample/board/board.jsp";
	 }
	
	@RequestMapping(value = "/boardWrite.do")
	 public String board_write() {
	  System.out.println("/boardWrite.do");
	  return "sample/board/boardWrite.jsp";
	 }
	
	@RequestMapping(value = "/boardRegist.do")
	 public String boardRegist() {
	  System.out.println("/boardRegist.do");
	  return "sample/board/boardRegist.jsp";
	 }
	
	@RequestMapping(value = "/boardView.do")
	 public String boardView() {
	  System.out.println("/boardView.do");
	  return "sample/board/boardView.jsp";
	 }
	
	@RequestMapping(value = "/boardEdit.do")
	 public String boardEdit() {
	  System.out.println("/boardEdit.do");
	  return "sample/board/boardEdit.jsp";
	 }
	
	@RequestMapping(value = "/boardModify.do")
	 public String boardModify() {
	  System.out.println("./boardModify.do");
	  return "sample/board/boardModify.jsp";
	 }
	
	@RequestMapping(value = "/boardDelete.do")
	 public String boardDelete() {
	  System.out.println("./boardDelete.do");
	  return "sample/board/boardDelete.jsp";
	 }
	
	/* 메인 페이지 등 */
	
	
	@RequestMapping(value = "/home.do")
	 public String home01() {
	  System.out.println("/home.do");
	  return "sample/home.jsp";
	 }
	
	@RequestMapping(value = "/barList.do")
	 public String barList() {
	  System.out.println("/barList.do");
	  return "sample/barList.jsp";
	 }
	
	@RequestMapping(value = "/infoSool.do")
	 public String infoSool() {
	  System.out.println("/infoSool.do");
	  return "sample/infoSool.jsp";
	 }
	
	@RequestMapping(value = "/getinfosool.do", produces = "text/plain;charset=utf-8")
	 @ResponseBody
	 public String getinfosool() throws Exception {
		 System.out.println("getinfosool.do");
		 return NaverAPI.NaverAPI_CALL();
	 }
	
	@RequestMapping(value = "/soolList.do")
	 public String soolList() {
	  System.out.println("/soolList.do");
	  return "sample/soolList.jsp";
	 }
	
	@RequestMapping(value = "/head.do")
	 public String main() {
	  System.out.println("/head.do");
	  return "sample/head.jsp";
	 }
	
	@RequestMapping(value = "/footer.do")
	 public String footer() {
	  System.out.println("/footer.do");
	  return "sample/footer.html";
	 }
}
