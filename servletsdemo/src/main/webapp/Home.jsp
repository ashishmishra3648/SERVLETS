<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Home</title>
    </head>

    <body>
        <% String user=request.getParameter("username"); if (user==null) { user="User" ; } %>
            <h1>Welcome <%=user %> login to your account</h1>
            <a href="Update.jsp">Update Profile</a><br>
            <a href="Delete.jsp">Delete Account</a><br>
            <a href="Login.jsp">Logout</a>
    </body>

    </html>