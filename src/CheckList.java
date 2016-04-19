

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customTools.DBConnect;
import model.HrApplicant;
import model.HrInterviewtable;


@WebServlet("/CheckList")
public class CheckList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CheckList() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session= request.getSession() ;
		
		DBConnect d= new DBConnect();
		
		
	//	long applicantid = (long) session.getAttribute("Applicantid");
		
		long applicantid=2;
		
	
		
		d.getApplicantDetails(applicantid); 
		
		
		//Call method getApplicantDetails to display education and return dispatcher to DisplayForm
		

		
	
		
		List<HrApplicant> checklistDetails= d.getApplicantDetails(applicantid).getResultList();

		request.setAttribute("checklistDetails", checklistDetails);
		
		
		request.getRequestDispatcher("/DisplayForm.jsp").forward(request, response);
	}

}