<%@ Page Title="Admin Prescriptions" Language="C#" MasterPageFile="~/Admin.Master"
    AutoEventWireup="true" CodeFile="AdminPrescriptions.aspx.cs"
    Inherits="hospitalll.AdminPrescriptions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Prescriptions</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --accent: #e74c3c;
            --light: #ecf0f1;
            --dark: #2c3e50;
            --success: #2ecc71;
            --warning: #f39c12;
            --danger: #e74c3c;
            --gray: #95a5a6;
            --shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --radius: 8px;
        }

        body {
            background-color: #f5f7fa;
            color: #333;
            line-height: 1.6;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
            overflow-y: auto;
        }

        .sidebar-header {
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        .sidebar-header h2 {
            margin-bottom: 5px;
        }

        .sidebar-menu a {
            display: flex;
            align-items: center;
            padding: 12px 20px;
            text-decoration: none;
            color: white;
            border-left: 4px solid transparent;
            transition: all 0.3s;
        }

        .sidebar-menu a:hover,
        .sidebar-menu a.active {
            background: rgba(255, 255, 255, 0.1);
            border-left: 4px solid var(--secondary);
        }

        .sidebar-menu i {
            margin-right: 10px;
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
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h1 {
            color: var(--primary);
            font-size: 1.8rem;
        }

        .table-container {
            background: white;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        th {
            background: #f8f9fa;
            font-weight: 600;
            color: var(--primary);
        }

        tr:hover {
            background: #f8f9fa;
        }

        .footer {
            text-align: center;
            padding: 20px;
            color: var(--gray);
            font-size: 0.9rem;
            margin-top: 40px;
            border-top: 1px solid #eee;
        }

        @media (max-width: 992px) {
            .sidebar {
                width: 70px;
            }

            .sidebar-menu a span {
                display: none;
            }

            .main-content {
                margin-left: 70px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar" id="sidebar">
            <div class="sidebar-header">
                <h2>MediCare Admin</h2>
                <p>Hospital Management System</p>
            </div>

            <div class="sidebar-menu">
                <a href="AdminDashboard.aspx" class="menu-item"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a>
                <a href="AdminPatients.aspx" class="menu-item"><i class="fas fa-user-injured"></i><span>Patients</span></a>
                <a href="AdminDoctors.aspx" class="menu-item"><i class="fas fa-user-md"></i><span>Doctors</span></a>
                <a href="AdminAppointments.aspx" class="menu-item"><i class="fas fa-calendar-check"></i><span>Appointments</span></a>
                <a href="AdminPrescriptions.aspx" class="menu-item active"><i class="fas fa-prescription"></i><span>Prescriptions</span></a>
                <a href="AdminPharmacy.aspx" class="menu-item"><i class="fas fa-pills"></i><span>Pharmacy</span></a>
                <a href="AdminBilling.aspx" class="menu-item"><i class="fas fa-file-invoice-dollar"></i><span>Billing</span></a>
                <a href="AdminSettings.aspx" class="menu-item"><i class="fas fa-cog"></i><span>Settings</span></a>
                <a href="AdminLogout.aspx" class="menu-item"><i class="fas fa-sign-out-alt"></i><span>Logout</span></a>
            </div>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <h1>💊 Prescriptions</h1>
            </div>

            <div class="table-container">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                <asp:GridView ID="gvPrescriptions" runat="server" AutoGenerateColumns="False" CssClass="table">
                    <Columns>
                        <asp:BoundField DataField="PrescriptionId" HeaderText="ID" />
                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                        <asp:BoundField DataField="MedicineName" HeaderText="Medicine" />
                        <asp:BoundField DataField="Dosage" HeaderText="Dosage" />
                        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                    </Columns>
                </asp:GridView>
            </div>

            <div class="footer">
                &copy; 2023 MediCare Hospital Management System. All rights reserved.
            </div>
        </div>
    </div>
</asp:Content>
