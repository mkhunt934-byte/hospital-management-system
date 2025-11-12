<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogout.aspx.cs" Inherits="hospitalll.AdminLogout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logging out...</title>
    <meta http-equiv="refresh" content="2;url=AdminLogin.aspx" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .logout-card {
            background: white;
            padding: 40px 60px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            text-align: center;
        }
        h2 { color: #2c3e50; margin-bottom: 10px; }
        p { color: #7f8c8d; font-size: 14px; }
        .spinner {
            margin-top: 15px;
            width: 40px;
            height: 40px;
            border: 4px solid #ccc;
            border-top: 4px solid #3498db;
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="logout-card">
            <h2>Logging Out...</h2>
            <p>You are being securely signed out.</p>
            <div class="spinner"></div>
        </div>
    </form>
</body>
</html>
