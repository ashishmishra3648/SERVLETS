package servletsdemo;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AreaOfEllipse extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		try {
			String semiMajorParam = req.getParameter("semiMajor");
			String semiMinorParam = req.getParameter("semiMinor");
			
			if (semiMajorParam != null && !semiMajorParam.isEmpty() && semiMinorParam != null && !semiMinorParam.isEmpty()) {
				double a = Double.parseDouble(semiMajorParam);
				double b = Double.parseDouble(semiMinorParam);
				
				// Using ServletConfig to get the pi value
				ServletConfig config = getServletConfig();
				String piParam = config.getInitParameter("pi");
				double pi = (piParam != null) ? Double.parseDouble(piParam) : Math.PI;
				
				double area = pi * a * b;
				
				// Generate styled HTML response
				out.println("<!DOCTYPE html>");
				out.println("<html><head>");
				out.println("<meta charset='UTF-8'>");
				out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
				out.println("<title>Ellipse Area Result</title>");
				out.println("<style>");
				out.println("* { margin: 0; padding: 0; box-sizing: border-box; }");
				out.println("body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: linear-gradient(135deg, #fa709a 0%, #fee140 100%); min-height: 100vh; display: flex; justify-content: center; align-items: center; padding: 20px; }");
				out.println(".container { background: rgba(255, 255, 255, 0.95); padding: 40px; border-radius: 20px; box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3); max-width: 500px; width: 100%; animation: slideIn 0.5s ease-out; }");
				out.println("@keyframes slideIn { from { opacity: 0; transform: translateY(-30px); } to { opacity: 1; transform: translateY(0); } }");
				out.println("h1 { color: #333; font-size: 28px; margin-bottom: 10px; text-align: center; font-weight: 600; }");
				out.println(".success-icon { text-align: center; font-size: 48px; margin-bottom: 20px; }");
				out.println(".result-box { background: #fff0f5; border-left: 4px solid #fa709a; padding: 20px; border-radius: 10px; margin: 20px 0; }");
				out.println(".result-item { margin: 12px 0; font-size: 16px; color: #555; }");
				out.println(".result-item strong { color: #333; }");
				out.println(".area-result { font-size: 24px; color: #fa709a; font-weight: bold; background: white; padding: 15px; border-radius: 8px; text-align: center; margin-top: 15px; }");
				out.println(".info-box { background: #fff9e6; border-left: 4px solid #ffc107; padding: 15px; border-radius: 8px; margin: 20px 0; font-size: 13px; color: #555; }");
				out.println(".btn-back { display: inline-block; width: 100%; padding: 14px 24px; background: linear-gradient(135deg, #fa709a 0%, #fee140 100%); color: white; text-decoration: none; border-radius: 10px; text-align: center; font-weight: 600; margin-top: 20px; transition: all 0.3s ease; box-shadow: 0 4px 15px rgba(250, 112, 154, 0.4); }");
				out.println(".btn-back:hover { transform: translateY(-2px); box-shadow: 0 6px 20px rgba(250, 112, 154, 0.6); }");
				out.println("</style></head><body>");
				out.println("<div class='container'>");
				out.println("<div class='success-icon'>✅</div>");
				out.println("<h1>⭕ Ellipse Area Result</h1>");
				out.println("<div class='result-box'>");
				out.println("<div class='result-item'><strong>Semi-Major Axis (a):</strong> " + a + " units</div>");
				out.println("<div class='result-item'><strong>Semi-Minor Axis (b):</strong> " + b + " units</div>");
				out.println("<div class='result-item'><strong>Pi (π) from ServletConfig:</strong> " + pi + "</div>");
				out.println("<div class='result-item'><strong>Formula:</strong> Area = π × a × b</div>");
				out.println("<div class='area-result'>Area = " + String.format("%.4f", area) + " square units</div>");
				out.println("</div>");
				out.println("<div class='info-box'>");
				out.println("<strong>ℹ️ ServletConfig Method Used:</strong><br>");
				out.println("The value of Pi (3.14159) was retrieved from the <code>&lt;init-param&gt;</code> ");
				out.println("configuration in web.xml using <code>getServletConfig().getInitParameter(\"pi\")</code>");
				out.println("</div>");
				out.println("<a href='ellipse.jsp' class='btn-back'>← Calculate Again</a>");
				out.println("</div></body></html>");
			} else {
				out.println("<h3>Please provide both semi-major and semi-minor axis values.</h3>");
				out.println("<a href='ellipse.jsp'>Go Back</a>");
			}
		} catch (NumberFormatException e) {
			out.println("<h3>Invalid input format.</h3>");
			out.println("<a href='ellipse.jsp'>Go Back</a>");
		}
	}
}
