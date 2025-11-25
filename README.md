# SERVLETS
## Java Servlet?
Java Servlets are the Java programs that run on the web server or application server. They are used to handle the request obtained from the web server, process the request, produce the response, and then send a response back to the web server.

## Properties of Java Servlet
-	Handle the request obtained from the web server
-	Process the request
-	Produce the response
-	Send a response back to the web server

## index.html:
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="message" method="Post"> //This Post method is used to hide the important details from the end user in the url 
//By default the method address is “Get”.
		Enter your name : <input type="text" name="name">
		<input type="submit">
		</form>
</body>
</html>

## Message.java:
package servletClass;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class message extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException  {
		String nameString=req.getParameter("name");
		PrintWriter out=res.getWriter();
		out.println("Hello "+nameString);
	}
	
}
//service keywords contains both doGet & doPost. 
// public void service(HttpServletRequest req,HttpServletResponse res) 
// public void doGet(HttpServletRequest req,HttpServletResponse res) 
// public void doPost(HttpServletRequest req,HttpServletResponse res) 


