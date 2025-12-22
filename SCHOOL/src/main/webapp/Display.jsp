<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.List" %>
        <%@ page import="StudentManagement.entity.Student" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Student Management System</title>
                <style>
                    * {
                        margin: 0;
                        padding: 0;
                        box-sizing: border-box;
                    }

                    body {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        min-height: 100vh;
                        padding: 20px;
                    }

                    .container {
                        max-width: 1200px;
                        margin: 0 auto;
                        background: white;
                        border-radius: 15px;
                        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
                        padding: 30px;
                    }

                    h1 {
                        color: #333;
                        text-align: center;
                        margin-bottom: 30px;
                        font-size: 2.5em;
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        -webkit-background-clip: text;
                        -webkit-text-fill-color: transparent;
                        background-clip: text;
                    }

                    .button-container {
                        display: flex;
                        gap: 15px;
                        margin-bottom: 30px;
                        flex-wrap: wrap;
                        justify-content: center;
                    }

                    .btn {
                        padding: 12px 25px;
                        border: none;
                        border-radius: 8px;
                        cursor: pointer;
                        font-size: 15px;
                        font-weight: 600;
                        transition: all 0.3s ease;
                        text-decoration: none;
                        display: inline-block;
                        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                    }

                    .btn-primary {
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        color: white;
                    }

                    .btn-primary:hover {
                        transform: translateY(-2px);
                        box-shadow: 0 6px 12px rgba(102, 126, 234, 0.4);
                    }

                    .btn-success {
                        background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
                        color: white;
                    }

                    .btn-success:hover {
                        transform: translateY(-2px);
                        box-shadow: 0 6px 12px rgba(56, 239, 125, 0.4);
                    }

                    .btn-warning {
                        background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
                        color: white;
                    }

                    .btn-warning:hover {
                        transform: translateY(-2px);
                        box-shadow: 0 6px 12px rgba(245, 87, 108, 0.4);
                    }

                    .btn-add {
                        background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);
                        color: white;
                    }

                    .btn-add:hover {
                        transform: translateY(-2px);
                        box-shadow: 0 6px 12px rgba(250, 112, 154, 0.4);
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-top: 20px;
                        background: white;
                        border-radius: 10px;
                        overflow: hidden;
                        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                    }

                    thead {
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        color: white;
                    }

                    th {
                        padding: 15px;
                        text-align: left;
                        font-weight: 600;
                        text-transform: uppercase;
                        letter-spacing: 0.5px;
                        font-size: 14px;
                    }

                    td {
                        padding: 15px;
                        border-bottom: 1px solid #f0f0f0;
                    }

                    tbody tr {
                        transition: all 0.3s ease;
                    }

                    tbody tr:hover {
                        background: linear-gradient(135deg, rgba(102, 126, 234, 0.1) 0%, rgba(118, 75, 162, 0.1) 100%);
                        transform: scale(1.01);
                    }

                    tbody tr:last-child td {
                        border-bottom: none;
                    }

                    .action-buttons {
                        display: flex;
                        gap: 10px;
                    }

                    .btn-small {
                        padding: 8px 15px;
                        font-size: 13px;
                        border-radius: 6px;
                        border: none;
                        cursor: pointer;
                        font-weight: 600;
                        transition: all 0.3s ease;
                        text-decoration: none;
                        display: inline-block;
                    }

                    .btn-edit {
                        background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
                        color: white;
                    }

                    .btn-edit:hover {
                        transform: translateY(-2px);
                        box-shadow: 0 4px 8px rgba(245, 87, 108, 0.3);
                    }

                    .btn-delete {
                        background: linear-gradient(135deg, #fc4a1a 0%, #f7b733 100%);
                        color: white;
                    }

                    .btn-delete:hover {
                        transform: translateY(-2px);
                        box-shadow: 0 4px 8px rgba(252, 74, 26, 0.3);
                    }

                    .no-data {
                        text-align: center;
                        padding: 40px;
                        color: #999;
                        font-size: 18px;
                    }

                    .alert {
                        padding: 15px;
                        margin-bottom: 20px;
                        border-radius: 8px;
                        font-weight: 500;
                    }

                    .alert-success {
                        background: #d4edda;
                        color: #155724;
                        border: 1px solid #c3e6cb;
                    }

                    .alert-error {
                        background: #f8d7da;
                        color: #721c24;
                        border: 1px solid #f5c6cb;
                    }

                    @media (max-width: 768px) {
                        .container {
                            padding: 15px;
                        }

                        h1 {
                            font-size: 1.8em;
                        }

                        .button-container {
                            flex-direction: column;
                        }

                        .btn {
                            width: 100%;
                        }

                        table {
                            font-size: 14px;
                        }

                        th,
                        td {
                            padding: 10px;
                        }
                    }
                </style>
            </head>

            <body>
                <div class="container">
                    <h1>🎓 Student Management System</h1>

                    <div class="button-container">
                        <a href="register.jsp" class="btn btn-add">➕ Add New Student</a>
                        <a href="getall" class="btn btn-primary">📋 Show All</a>
                        <a href="getall?sortBy=name" class="btn btn-success">🔤 Sort by Name</a>
                        <a href="getall?sortBy=age" class="btn btn-warning">🔢 Sort by Age</a>
                    </div>

                    <% @SuppressWarnings("unchecked") List<Student> students = (List<Student>)
                            request.getAttribute("list");
                            %>

                            <table>
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Age</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% if(students !=null && !students.isEmpty()) { for(Student student : students) { %>
                                        <tr>
                                            <td>
                                                <%= student.getId() %>
                                            </td>
                                            <td>
                                                <%= student.getName() %>
                                            </td>
                                            <td>
                                                <%= student.getAge() %>
                                            </td>
                                            <td>
                                                <div class="action-buttons">
                                                    <a href="edit?id=<%= student.getId() %>"
                                                        class="btn-small btn-edit">✏️ Edit</a>
                                                    <a href="delete?id=<%= student.getId() %>"
                                                        class="btn-small btn-delete"
                                                        onclick="return confirm('Are you sure you want to delete this student?')">🗑️
                                                        Delete</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <% } } else { %>
                                            <tr>
                                                <td colspan="4" class="no-data">
                                                    📭 No students found. Click "Add New Student" to get started!
                                                </td>
                                            </tr>
                                            <% } %>
                                </tbody>
                            </table>
                </div>
            </body>

            </html>