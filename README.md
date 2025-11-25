# SERVLETS
## Java Servlet?
Java Servlets are the Java programs that run on the web server or application server. They are used to handle the request obtained from the web server, process the request, produce the response, and then send a response back to the web server.

## Properties of Java Servlet
-	Handle the request obtained from the web server
-	Process the request
-	Produce the response
-	Send a response back to the web server

## Project Structure & Files

### 1. index.html
This file contains a simple form to accept a user's name.
```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="message" method="Post"> <!-- This Post method is used to hide the important details from the end user in the url -->
<!-- By default the method address is “Get”. -->
		Enter your name : <input type="text" name="name">
		<input type="submit">
		</form>
</body>
</html>
```

### 2. Message.java
This servlet handles the request from `index.html` and displays a greeting.
```java
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
```

### 3. addition.html
This file contains a form to accept two numbers for addition.
```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="addition" method="Post">
		Enter First Number : <input type="text" name="num1"><br>
		Enter Second Number : <input type="text" name="num2"><br>
		<input type="submit">
		</form>
</body>
</html>
```

### 4. addition.java
This servlet handles the request from `addition.html`, calculates the sum, and displays the result.
```java
package servletClass;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class addition extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException  {
		int n1=Integer.parseInt(req.getParameter("num1"));
		int n2=Integer.parseInt(req.getParameter("num2"));
		int sum=n1+n2;
		PrintWriter out=res.getWriter();
		out.println("Addition of "+n1+" + "+n2+" = "+sum);
	}

}
```

### 5. web.xml (Deployment Descriptor)
This file maps the servlets (`message` and `addition`) to their respective URL patterns.
```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="https://jakarta.ee/xml/ns/jakartaee" xsi:schemaLocation="https://jakarta.ee/xml/ns/jakartaee https://jakarta.ee/xml/ns/jakartaee/web-app_6_0.xsd" id="WebApp_ID" version="6.0">
  	<servlet>
  	<servlet-name>message</servlet-name>
  	<servlet-class>servletClass.message</servlet-class>
  	</servlet>
  	<servlet-mapping>
  	<servlet-name>message</servlet-name>
  	<url-pattern>/message</url-pattern>
  	</servlet-mapping>
  	<servlet>
  	<servlet-name>addition</servlet-name>
  	<servlet-class>servletClass.addition</servlet-class>
  	</servlet>
  	<servlet-mapping>
  	<servlet-name>addition</servlet-name>
  	<url-pattern>/addition</url-pattern>
  	</servlet-mapping>
</web-app>
```

