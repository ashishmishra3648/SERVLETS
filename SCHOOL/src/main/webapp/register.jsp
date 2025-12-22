<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Add New Student</title>
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
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
            }

            .container {
                background: white;
                border-radius: 15px;
                box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
                padding: 40px;
                max-width: 500px;
                width: 100%;
            }

            h1 {
                color: #333;
                text-align: center;
                margin-bottom: 30px;
                font-size: 2em;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
            }

            .form-group {
                margin-bottom: 25px;
            }

            label {
                display: block;
                margin-bottom: 8px;
                color: #333;
                font-weight: 600;
                font-size: 14px;
                text-transform: uppercase;
                letter-spacing: 0.5px;
            }

            input[type="text"],
            input[type="number"] {
                width: 100%;
                padding: 12px 15px;
                border: 2px solid #e0e0e0;
                border-radius: 8px;
                font-size: 16px;
                transition: all 0.3s ease;
                background: #f8f9fa;
            }

            input[type="text"]:focus,
            input[type="number"]:focus {
                outline: none;
                border-color: #667eea;
                background: white;
                box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
            }

            .button-group {
                display: flex;
                gap: 15px;
                margin-top: 30px;
            }

            .btn {
                flex: 1;
                padding: 14px 25px;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                font-size: 16px;
                font-weight: 600;
                transition: all 0.3s ease;
                text-decoration: none;
                display: inline-block;
                text-align: center;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .btn-success {
                background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
                color: white;
            }

            .btn-success:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 12px rgba(56, 239, 125, 0.4);
            }

            .btn-secondary {
                background: linear-gradient(135deg, #868f96 0%, #596164 100%);
                color: white;
            }

            .btn-secondary:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 12px rgba(89, 97, 100, 0.4);
            }

            .icon {
                margin-right: 5px;
            }

            .info-text {
                text-align: center;
                color: #666;
                font-size: 14px;
                margin-top: 20px;
            }

            @media (max-width: 768px) {
                .container {
                    padding: 25px;
                }

                h1 {
                    font-size: 1.5em;
                }

                .button-group {
                    flex-direction: column;
                }
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1>➕ Add New Student</h1>

            <form action="register" method="post">
                <div class="form-group">
                    <label for="id">Student ID</label>
                    <input type="number" id="id" name="id" required placeholder="Enter unique student ID" min="1">
                </div>

                <div class="form-group">
                    <label for="name">Student Name</label>
                    <input type="text" id="name" name="name" required placeholder="Enter student name">
                </div>

                <div class="form-group">
                    <label for="age">Student Age</label>
                    <input type="number" id="age" name="age" required placeholder="Enter student age" min="1" max="100">
                </div>

                <div class="button-group">
                    <button type="submit" class="btn btn-success">
                        <span class="icon">✅</span> Add Student
                    </button>
                    <a href="index.jsp" class="btn btn-secondary">
                        <span class="icon">❌</span> Cancel
                    </a>
                </div>
            </form>

            <p class="info-text">
                💡 Fill in all fields to add a new student to the system
            </p>
        </div>
    </body>

    </html>