<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Semi-Circle Area Calculator</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
            }

            .container {
                background: rgba(255, 255, 255, 0.95);
                padding: 40px;
                border-radius: 20px;
                box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
                width: 100%;
                max-width: 450px;
                animation: slideIn 0.5s ease-out;
            }

            @keyframes slideIn {
                from {
                    opacity: 0;
                    transform: translateY(-30px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            h1 {
                color: #333;
                font-size: 28px;
                margin-bottom: 10px;
                text-align: center;
                font-weight: 600;
            }

            .subtitle {
                text-align: center;
                color: #666;
                font-size: 14px;
                margin-bottom: 30px;
            }

            .form-group {
                margin-bottom: 20px;
            }

            label {
                display: block;
                margin-bottom: 8px;
                color: #555;
                font-weight: 500;
                font-size: 14px;
            }

            input[type="number"] {
                width: 100%;
                padding: 14px;
                border: 2px solid #e0e0e0;
                border-radius: 10px;
                font-size: 16px;
                transition: all 0.3s ease;
                background: #f8f9fa;
            }

            input[type="number"]:focus {
                outline: none;
                border-color: #4facfe;
                background: white;
                box-shadow: 0 0 0 3px rgba(79, 172, 254, 0.1);
            }

            input[type="number"]::placeholder {
                color: #aaa;
            }

            .btn-container {
                display: flex;
                gap: 10px;
                margin-top: 30px;
            }

            button,
            .back-link {
                flex: 1;
                padding: 14px 24px;
                border: none;
                border-radius: 10px;
                font-size: 16px;
                font-weight: 600;
                cursor: pointer;
                transition: all 0.3s ease;
                text-align: center;
                text-decoration: none;
                display: inline-block;
            }

            button[type="submit"] {
                background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
                color: white;
                box-shadow: 0 4px 15px rgba(79, 172, 254, 0.4);
            }

            button[type="submit"]:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(79, 172, 254, 0.6);
            }

            button[type="submit"]:active {
                transform: translateY(0);
            }

            .back-link {
                background: #f0f0f0;
                color: #555;
            }

            .back-link:hover {
                background: #e0e0e0;
                transform: translateY(-2px);
            }

            .info-box {
                background: #e6f7ff;
                border-left: 4px solid #4facfe;
                padding: 15px;
                border-radius: 8px;
                margin-top: 25px;
                font-size: 13px;
                color: #555;
            }

            .info-box strong {
                color: #4facfe;
            }

            @media (max-width: 480px) {
                .container {
                    padding: 30px 20px;
                }

                h1 {
                    font-size: 24px;
                }

                .btn-container {
                    flex-direction: column;
                }
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1>🌓 Semi-Circle Area Calculator</h1>
            <p class="subtitle">Using ServletConfig Method</p>

            <form action="semicircle" method="get">
                <div class="form-group">
                    <label for="radius">Radius:</label>
                    <input type="number" id="radius" name="radius" required step="any" placeholder="e.g., 7" min="0"
                        autofocus>
                </div>

                <div class="btn-container">
                    <button type="submit">Calculate Area</button>
                    <a href="index.jsp" class="back-link">← Back to Home</a>
                </div>
            </form>

            <div class="info-box">
                <strong>ℹ️ Formula:</strong> Area = (π × r²) / 2<br>
                The value of Pi (π) is retrieved from ServletConfig init parameter.
            </div>
        </div>
    </body>

    </html>