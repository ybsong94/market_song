package com.spring.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.web.service.ReviewService;
import com.spring.web.vo.BoardVO;
import com.spring.web.vo.ReviewVO;


@Controller
@SessionAttributes("review")
public class ReviewController {

	@Autowired
	private ReviewService reviewService;

	@RequestMapping(value="/getReview.do")
	public String getReview(ReviewVO vo, Model model) {
		System.out.println("GetReviewController - getReview()");

		model.addAttribute("review", reviewService.getReview(vo)); // Model

		return "getReview.jsp";
	}
	
	@RequestMapping(value="/insertReview.do")
	public String insertReview(ReviewVO vo) {
		System.out.println("InsertReviewController - insertReview()");

		
	    reviewService.insertReview(vo);

		return "redirect:getBoardList.do"; // Redirect
	}

	@RequestMapping(value="/updateReview.do")
	public String updateReview(@ModelAttribute("review") ReviewVO vo) {
		System.out.println("UpdateReviewController - updateReview()");

		System.out.println("Rno:" + vo.getRno());
		System.out.println("BNO:" + vo.getBno());
		System.out.println("Uno:" + vo.getUno());
		System.out.println("Comment:" + vo.getComment());
		System.out.println("RegDate:" + vo.getRegDate());

		reviewService.updateReview(vo);
		
		//return "getBoardList.do"; // Forward
		return "redirect:getBoardList.do"; // Redirect
	}

	@RequestMapping(value="/deleteReview.do")
	public String deleteReview(ReviewVO vo) {
		System.out.println("DeleteReviewController - deleteReview()");

		reviewService.deleteReview(vo);
		
		//return "getBoardList.do"; // Forward
		return "redirect:getBoardList.do"; // Redirect
	}
	
	@RequestMapping(value="/board/addReview.do")
	@ResponseBody
	public String ajax_addComment(@ModelAttribute("reviewVO") ReviewVO reviewVO, BoardVO boardVO, HttpServletRequest request) throws Exception{
        System.out.println("ajax000000000000000000");
		 HttpSession session = request.getSession();
		 session.getAttribute("userUno");
		 session.getAttribute("userName");
		 System.out.println(session.getAttribute("userUno"));
		   try{
	            reviewVO.setUno((int)session.getAttribute("userUno"));
	            reviewVO.setName((String)session.getAttribute("userName"));
	            System.out.println(session.getAttribute("userUno"));
	            reviewVO.setBno(boardVO.getBno());
	            reviewService.insertReview(reviewVO);
	            System.out.println(reviewVO);
	        } catch (Exception e){
	            e.printStackTrace();
	        }
            
        return "success";
    }
	
	@RequestMapping(value="/board/reviewList.do", produces="application/json; charset=utf8")
    @ResponseBody
    public ResponseEntity ajax_commentList(@ModelAttribute("reviewVO") ReviewVO reviewVO, HttpServletRequest request) throws Exception{
        System.out.println("ajax list 호출");
        HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();
        
        // 해당 게시물 댓글
        System.out.println(reviewVO+"909090909090909090909");
        List<ReviewVO> reviewVOList = (List<ReviewVO>) reviewService.getReviewList(reviewVO);
        System.out.println(reviewVOList+"808080808080808080");
        if(reviewVOList.size() > 0){
            for(int i=0; i<reviewVOList.size(); i++){
                HashMap hm = new HashMap();
                hm.put("rno", reviewVOList.get(i).getRno());
                hm.put("comment", reviewVOList.get(i).getComment());
                hm.put("uno", reviewVOList.get(i).getUno());
                hm.put("name", reviewVOList.get(i).getName());
                
                hmlist.add(hm);
            }
            
        }
        
        JSONArray json = new JSONArray(hmlist);        
        return new ResponseEntity(json.toString(), responseHeaders, HttpStatus.CREATED);
        
    }
}
