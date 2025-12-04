<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Login</title>
    </head>

    <body>
        <% String user=request.getParameter("name"); if (user !=null) { %>
            <h1>Welcome <%=user %> login to your account</h1>
            <% } %>

                <% String msg=(String) request.getAttribute("msg"); if (msg !=null) { %>
                    <h3 style="color:red">
                        <%=msg %>
                    </h3>
                    <% } %>

                        <form action="login" method="post">
                            USERNAME:<input type="text" name="username"><br>
                            PASSWORD:<input type="text" name="password"><br>
                            <input type="submit" value="LOGIN">
                        </form>
                        <a href="Register.jsp">Register</a>
    </body>

    </html>