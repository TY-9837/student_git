package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(uri.equals("/delete.board")){	// 자기 게시글 삭제
			int seq = Integer.parseInt(request.getParameter("seq"));
			
			dao.deleteBySeq(seq);
			response.sendRedirect("/list.board");
			
		}else if(uri.equals("/updateView.board")){	// 자기 게시글 수정하기 위한 데이터 전달
			
			int seq = Integer.parseInt(request.getParameter("seq"));
			BoardDTO dto = dao.selectBySeq(seq);
			
			request.setAttribute("dto", dto);
			request.getRequestDispatcher("/board/updateView.jsp").forward(request, response);
			
		}else if(uri.equals("/update.board")) {	// 자기 게시글 수정
			int seq = Integer.parseInt(request.getParameter("seq"));
			//String writer = (String)request.getSession().getAttribute("loginID");
			String title = request.getParameter("title");
			String contents = request.getParameter("contents");
			
			dao.updateBySeq(seq, title, contents);
			
			response.sendRedirect("/detail.board?seq="+seq);
		
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
