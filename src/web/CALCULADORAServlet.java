package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CALCULADORAServlet extends HttpServlet{

	

		@Override

		protected void doPost(HttpServletRequest peticion, HttpServletResponse respuesta)
				throws ServletException, IOException {
			
			double n1 = Double.parseDouble(peticion.getParameter("numero1"));
			double n2 = Double.parseDouble(peticion.getParameter("numero2"));
			
			String resultado = "";
			int op = Integer.parseInt(peticion.getParameter("cboOperacion"));
			
			switch(op) {
			case 1:
				resultado = ""+(n1+n2);
				break;
			case 2:
				resultado = ""+(n1-n2);
				break;
			case 3:
				resultado = ""+(n1*n2);
				break;
			case 4:
				if(n2 == 0) {
					resultado ="No se puede dividir por 0";
					
					
				}else {
					resultado =""+(n1/n2);
				}
				
				break;
			}
			
			peticion.getSession().setAttribute("resultado",resultado);
            respuesta.sendRedirect("index.jsp");
		    

		}
	}

