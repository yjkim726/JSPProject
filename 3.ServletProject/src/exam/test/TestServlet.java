package exam.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String myColor = request.getParameter("myColor");
		String myEmail = request.getParameter("myEmail");
		String subject = request.getParameter("subject");
		//여러개 넘어오므로 getParameterValues로 합니다. 배열임
		String[] hobbys=request.getParameterValues("hobby");
			PrintWriter out = response.getWriter();
			//화면에 출력
			out.print("<font color='"+myColor+"'>"+gender+"</font><br>"); //시험문제
			out.print(id+"<br>");
			out.print(myEmail+"<br>");
			out.print(subject);
			if(hobbys==null){
				out.print("선택된것이 없습니다.");
			}//end of if
			else{
				for(int i=0; i<hobbys.length; i++){
					out.print(hobbys[i]+"<br>");
				}//end of for
			}//end of else
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
