<%@ Page Title="Admin Appointments" Language="C#"
    MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeFile="AdminAppointments.aspx.cs" Inherits="hospitalll.AdminAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Appointments</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --light: #f5f7fa;
            --success: #2ecc71;
            --shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --radius: 8px;
        }

        body {
            background-color: var(--light);
            color: #333;
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
            margin-left: 250px;
            padding: 30px;
            flex: 1;
        }

        .header {
            background: white;
            padding: 15px 20px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            margin-bottom: 25px;
        }

        .header h1 {
            color: var(--primary);
            font-size: 1.8rem;
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
        }

        .btn:hover {
            background: #1e6091;
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
                <a href="AdminAppointments.aspx" class="active">Appointments</a>
                <a href="AdminPrescriptions.aspx">Prescriptions</a>
                <a href="AdminPharmacy.aspx">Pharmacy</a>
                <a href="AdminBilling.aspx">Billing</a>
                <a href="AdminSettings.aspx">Settings</a>
                <a href="AdminLogout.aspx">Logout</a>
            </div>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <h1>📅 Manage Appointments</h1>
            </div>

            <div class="form-container">
                <label>Patient Name</label>
                <asp:TextBox ID="txtPatientName" runat="server" CssClass="form-control" placeholder="Enter patient name"></asp:TextBox>

                <label>Doctor Name</label>
                <asp:TextBox ID="txtDoctorName" runat="server" CssClass="form-control" placeholder="Enter doctor name"></asp:TextBox>

                <label>Date</label>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>

                <label>Time</label>
                <asp:TextBox ID="txtTime" runat="server" TextMode="Time" CssClass="form-control"></asp:TextBox>

                <label>Reason</label>
                <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Reason for appointment"></asp:TextBox>

                <asp:Button ID="btnBook" runat="server" Text="Book Appointment" CssClass="btn" OnClick="btnBook_Click" />
                <asp:Label ID="lblMsg" runat="server" CssClass="msg-success"></asp:Label>
            </div>

            <div class="table-container">
                <h3>📋 All Appointments</h3>
                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                        <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" />
                        <asp:BoundField DataField="AppointmentDate" HeaderText="Date" />
                        <asp:BoundField DataField="AppointmentTime" HeaderText="Time" />
                        <asp:BoundField DataField="Reason" HeaderText="Reason" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
