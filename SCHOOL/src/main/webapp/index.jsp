<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Student Management System - Home</title>
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
                border-radius: 20px;
                box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
                padding: 60px 40px;
                max-width: 600px;
                width: 100%;
                text-align: center;
            }

            .logo {
                font-size: 80px;
                margin-bottom: 20px;
                animation: bounce 2s infinite;
            }

            @keyframes bounce {

                0%,
                100% {
                    transform: translateY(0);
                }

                50% {
                    transform: translateY(-10px);
                }
            }

            h1 {
                color: #333;
                margin-bottom: 15px;
                font-size: 2.5em;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
            }

            .subtitle {
                color: #666;
                font-size: 1.1em;
                margin-bottom: 40px;
                line-height: 1.6;
            }

            .button-grid {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 20px;
                margin-top: 30px;
            }

            .btn {
                padding: 20px 30px;
                border: none;
                border-radius: 12px;
                cursor: pointer;
                font-size: 16px;
                font-weight: 600;
                transition: all 0.3s ease;
                text-decoration: none;
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 10px;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
                color: white;
            }

            .btn-icon {
                font-size: 40px;
            }

            .btn-add {
                background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);
            }

            .btn-add:hover {
                transform: translateY(-5px);
                box-shadow: 0 8px 25px rgba(250, 112, 154, 0.4);
            }

            .btn-view {
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            }

            .btn-view:hover {
                transform: translateY(-5px);
                box-shadow: 0 8px 25px rgba(102, 126, 234, 0.4);
            }

            .features {
                margin-top: 40px;
                padding-top: 30px;
                border-top: 2px solid #f0f0f0;
            }

            .features h3 {
                color: #333;
                margin-bottom: 20px;
                font-size: 1.2em;
            }

            .feature-list {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 15px;
                text-align: left;
            }

            .feature-item {
                display: flex;
                align-items: center;
                gap: 10px;
                color: #666;
                font-size: 14px;
            }

            .feature-icon {
                font-size: 20px;
            }

            @media (max-width: 768px) {
                .container {
                    padding: 40px 25px;
                }

                h1 {
                    font-size: 2em;
                }

                .button-grid {
                    grid-template-columns: 1fr;
                }

                .feature-list {
                    grid-template-columns: 1fr;
                }
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="logo">🎓</div>
            <h1>Student Management System</h1>
            <p class="subtitle">
                Manage your students efficiently with our comprehensive system.<br>
                Add, view, edit, delete, and sort student records with ease.
            </p>

            <div class="button-grid">
                <a href="register.jsp" class="btn btn-add">
                    <span class="btn-icon">➕</span>
                    <span>Add New Student</span>
                </a>
                <a href="getall" class="btn btn-view">
                    <span class="btn-icon">📋</span>
                    <span>View All Students</span>
                </a>
            </div>

            <div class="features">
                <h3>✨ Available Features</h3>
                <div class="feature-list">
                    <div class="feature-item">
                        <span class="feature-icon">✅</span>
                        <span>Add Students</span>
                    </div>
                    <div class="feature-item">
                        <span class="feature-icon">📊</span>
                        <span>View All Records</span>
                    </div>
                    <div class="feature-item">
                        <span class="feature-icon">✏️</span>
                        <span>Edit Student Info</span>
                    </div>
                    <div class="feature-item">
                        <span class="feature-icon">🗑️</span>
                        <span>Delete Records</span>
                    </div>
                    <div class="feature-item">
                        <span class="feature-icon">🔤</span>
                        <span>Sort by Name</span>
                    </div>
                    <div class="feature-item">
                        <span class="feature-icon">🔢</span>
                        <span>Sort by Age</span>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>