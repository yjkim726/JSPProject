package exam.first;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")  //"Hello 부분은 url Mapping
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8"); //요청올때부터 한글 지원이 안됨
		//charset=UTF-8 은 한글로 보이게 하는거
		//get의 한글처리 방식★
		//Servers->server.xml->65번째줄-> URIEncoding="UTF-8" 이라고 설정
		PrintWriter out = response.getWriter();
		out.print("helloGet"+"<br>");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String passwd = request.getParameter("pwd");
		if(name==null||id==null||passwd==null){
			out.print("Please insert ID and Passwd");
		}
		else{
		out.print("NickName = "+name+"<br>");
		out.print("id = " + id+"<br>");
		out.print("passwd = "+ passwd+"<br>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");//client한테 응답을 보내줄때
		request.setCharacterEncoding("UTF-8"); //요청올때부터 한글 지원이 안됨
		PrintWriter out = response.getWriter();
		out.print("helloPost"+"<br>");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String passwd = request.getParameter("pwd");
		out.print("이름 = "+name+"<br>");
		out.print("id = " + id+"<br>");
		out.print("passwd = "+ passwd+"<br>");
	}

}
