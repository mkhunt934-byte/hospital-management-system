<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="hospitalll.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Hospital Management System</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: #f0f2f5;
        }

        .login-container {
            margin-top: 100px;
        }

        .card {
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-weight: 600;
        }

        .btn-primary {
            width: 100%;
        }

        .title {
            text-align: center;
            margin-bottom: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container login-container">
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="card">
                        <h3 class="title">Login</h3>

                        <div class="mb-3">
                            <asp:Label ID="lblUsername" runat="server" CssClass="form-label" Text="Username"></asp:Label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <asp:Label ID="lblPassword" runat="server" CssClass="form-label" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password"></asp:TextBox>
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                        </div>

                        <div class="mt-3 text-center">
                            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="fw-bold"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
