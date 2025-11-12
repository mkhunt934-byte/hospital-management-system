<%@ Page Title="Admin Pharmacy" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeFile="AdminPharmacy.aspx.cs" Inherits="hospitalll.AdminPharmacy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Pharmacy</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --success: #2ecc71;
            --light: #f5f7fa;
            --shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --radius: 8px;
        }

        body {
            background: var(--light);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            width: 250px;
            background: var(--primary);
            color: white;
            position: fixed;
            height: 100vh;
        }

        .sidebar-menu a {
            display: block;
            padding: 12px 20px;
            color: white;
            text-decoration: none;
            border-left: 4px solid transparent;
        }

        .sidebar-menu a.active, .sidebar-menu a:hover {
            background: rgba(255, 255, 255, 0.1);
            border-left: 4px solid var(--secondary);
        }

        .main-content {
            flex: 1;
            margin-left: 250px;
            padding: 30px;
        }

        .header {
            background: white;
            padding: 15px 20px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            margin-bottom: 25px;
        }

        .header h1 {
            font-size: 1.8rem;
            color: var(--primary);
        }

        .form-container {
            background: white;
            padding: 25px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: 600;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: var(--radius);
            margin-top: 5px;
        }

        .btn {
            background: var(--secondary);
            color: white;
            border: none;
            padding: 10px 20px;
            margin-top: 15px;
            border-radius: var(--radius);
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #1e6091;
            transform: scale(1.03);
        }

        .msg-success {
            color: var(--success);
            font-weight: bold;
            text-align: center;
            margin-top: 10px;
        }

        .table-container {
            background: white;
            padding: 20px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
        }

        th, td {
            padding: 10px 15px;
            border-bottom: 1px solid #eee;
        }

        th {
            background: #f8f9fa;
        }

        .footer {
            text-align: center;
            color: #888;
            font-size: 0.9rem;
            margin-top: 30px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-menu">
                <a href="AdminDashboard.aspx">Dashboard</a>
                <a href="AdminPatients.aspx">Patients</a>
                <a href="AdminDoctors.aspx">Doctors</a>
                <a href="AdminAppointments.aspx">Appointments</a>
                <a href="AdminPrescriptions.aspx">Prescriptions</a>
                <a href="AdminPharmacy.aspx" class="active">Pharmacy</a>
                <a href="AdminBilling.aspx">Billing</a>
                <a href="AdminSettings.aspx">Settings</a>
                <a href="AdminLogout.aspx">Logout</a>
            </div>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <h1>💊 Manage Pharmacy Inventory</h1>
            </div>

            <!-- Add Medicine Form -->
            <div class="form-container">
                <label>Medicine Name</label>
                <asp:TextBox ID="txtMedicineName" runat="server" CssClass="form-control" placeholder="Enter medicine name"></asp:TextBox>

                <label>Category</label>
                <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control" placeholder="Enter category"></asp:TextBox>

                <label>Quantity</label>
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" placeholder="Enter quantity" TextMode="Number"></asp:TextBox>

                <label>Price (₹)</label>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" placeholder="Enter price" TextMode="Number"></asp:TextBox>

                <label>Expiry Date</label>
                <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>

                <asp:Button ID="btnAddMedicine" runat="server" Text="Add Medicine" CssClass="btn" OnClick="btnAddMedicine_Click" />
                <asp:Label ID="lblMsg" runat="server" CssClass="msg-success"></asp:Label>
            </div>

            <!-- Medicines List -->
            <div class="table-container">
                <h3>📋 Medicine Inventory</h3>
                <asp:GridView ID="gvPharmacy" runat="server" CssClass="table" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="MedicineName" HeaderText="Medicine Name" />
                        <asp:BoundField DataField="Category" HeaderText="Category" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Price" HeaderText="Price (₹)" />
                        <asp:BoundField DataField="ExpiryDate" HeaderText="Expiry Date" />
                    </Columns>
                </asp:GridView>
            </div>

            <div class="footer">
                &copy; 2025 MediCare Hospital Management System. All rights reserved.
            </div>
        </div>
    </div>
</asp:Content>
