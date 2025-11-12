<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="hospitalll.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register New Account</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: #f0f2f5;
        }

        .register-container {
            margin-top: 60px;
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
        <div class="container register-container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <h3 class="title">Register New Account</h3>

                        <div class="mb-3">
                            <asp:Label ID="lblFullName" runat="server" CssClass="form-label" Text="Full Name:"></asp:Label>
                            <asp:TextBox ID="txtfnm" runat="server" CssClass="form-control" placeholder="Enter full name"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <asp:Label ID="lblEmail" runat="server" CssClass="form-label" Text="Email:"></asp:Label>
                            <asp:TextBox ID="txteml" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <asp:Label ID="lblcity" runat="server" CssClass="form-label" Text="City:"></asp:Label>
                            <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" placeholder="Enter city"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <asp:Label ID="Gender" runat="server" CssClass="form-label" Text="Gender:"></asp:Label>
                            <asp:RadioButtonList ID="Male" runat="server" CssClass="form-check">
                                <asp:ListItem CssClass="form-check-label">Male</asp:ListItem>
                                <asp:ListItem CssClass="form-check-label">Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <div class="mb-3">
                            <asp:Label ID="lblPassword" runat="server" CssClass="form-label" Text="Password:"></asp:Label>
                            <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <asp:Label ID="Label1" runat="server" CssClass="form-label" Text="Confirm Password:"></asp:Label>
                            <asp:TextBox ID="txtcompwd" runat="server" CssClass="form-control" TextMode="Password" placeholder="Re-enter password"></asp:TextBox>
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
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
