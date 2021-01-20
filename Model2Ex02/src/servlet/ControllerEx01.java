package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model2.BoardAction;
import model2.DeleteAction;
import model2.DeleteOkAction;
import model2.ListAction;
import model2.ModifyAction;
import model2.ModifyOkAction;
import model2.ViewAction;
import model2.WriteAction;
import model2.WriteOkAction;

/**
 * Servlet implementation class ControllerEx01
 */
@WebServlet({"*.do","*.json"})
public class ControllerEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 이거 하나로 모든 페이지가 한글 처리가 됨
		request.setCharacterEncoding("utf-8");
		
		String path = request.getRequestURI().replaceAll(request.getContextPath(), "");
		// String action = request.getParameter("action");
		
		String url = "";
		
		BoardAction boardAction = null;
		if(path.equals("/*.do") || path.equals("/list.do")) {
			boardAction = new ListAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/views/board_list1.jsp";
		}else if(path.equals("/view.do")) {
			// 데이터베이스 선택
			boardAction = new ViewAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/views/board_view1.jsp";
		}else if(path.equals("/write.do")) {
			// 데이터베이스 선택
			boardAction = new WriteAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/views/board_write1.jsp";
		}else if(path.equals("/write_ok.do")) {
			// 데이터베이스 선택
			boardAction = new WriteOkAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/views/board_write1_ok.jsp";
		}else if(path.equals("/delete.do")) {
			// 데이터베이스 선택
			boardAction = new DeleteAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/views/board_delete1.jsp";
		}else if(path.equals("/delete_ok.do")) {
			// 데이터베이스 선택
			boardAction = new DeleteOkAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/views/board_delete1_ok.jsp";
		}else if(path.equals("/modify.do")) {
			// 데이터베이스 선택
			boardAction = new ModifyAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/views/board_modify1.jsp";
		}else if(path.equals("/modify_ok.do")) {
			// 데이터베이스 선택
			boardAction = new ModifyOkAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/views/board_modify1_ok.jsp";
		
		// 새로 작성	
		}else if(path.equals("/*.json") || path.equals("/list.json")) {
			boardAction = new ListAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/json/board_list1.jsp";
		}else if(path.equals("/view.json")) {
			// 데이터베이스 선택
			boardAction = new ViewAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/json/board_view1.jsp";
		}else if(path.equals("/write.json")) {
			// 데이터베이스 선택
			boardAction = new WriteAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/json/board_write1.jsp";
		}else if(path.equals("/write_ok.json")) {
			// 데이터베이스 선택
			boardAction = new WriteOkAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/json/board_write1_ok.jsp";
		}else if(path.equals("/delete.json")) {
			// 데이터베이스 선택
			boardAction = new DeleteAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/json/board_delete1.jsp";
		}else if(path.equals("/delete_ok.json")) {
			// 데이터베이스 선택
			boardAction = new DeleteOkAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/json/board_delete1_ok.jsp";
		}else if(path.equals("/modify.json")) {
			// 데이터베이스 선택
			boardAction = new ModifyAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/json/board_modify1.jsp";
		}else if(path.equals("/modify_ok.json")) {
			// 데이터베이스 선택
			boardAction = new ModifyOkAction();
			boardAction.execute(request, response);
			
			url = "/WEB-INF/json/board_modify1_ok.jsp";
		}else {
			// 경로가 잘못표시 됐을때 오류 메세지
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
