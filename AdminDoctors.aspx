<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDoctors.aspx.cs" Inherits="hospitalll.AdminDoctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Hospital Management System - Admin Panel</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <style>

        /* CSS Variables for consistent theming */
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

        /* Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f7fa;
            color: #333;
            line-height: 1.6;
        }
        .doctor-form {
            max-width: 650px;
       
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        .doctor-form table {
            width: 100%;
            border-collapse: collapse;
        }

        .doctor-form th {
            background: #007bff;
            color: white;
            font-size: 20px;
            padding: 12px;
            text-align: center;
            border-radius: 8px 8px 0 0;
        }

        .doctor-form td {
            padding: 12px;
            vertical-align: middle;
        }

        .doctor-form input[type="text"],
        .doctor-form input[type="number"],
        .doctor-form input[type="time"],
        .doctor-form select {
            width: 95%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
            outline: none;
            transition: 0.3s;
        }

        .doctor-form input:focus,
        .doctor-form select:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px #007bff50;
        }

        .doctor-form .btn-save {
            background: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .doctor-form .btn-save:hover {
            background: #218838;
        }

        /* DataList layout - Doctors Grid */
        #DataListDoctors {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin: 40px auto;
            padding: 0 20px;
        }

        /* Doctor card styling */
        .doctor-card {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            width: 280px;
            padding: 15px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: fadeUp 0.6s ease-in-out;
        }

        .doctor-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 8px 18px rgba(0,0,0,0.15);
        }

        /* Doctor image */
        .doctor-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        /* Text styling */
        .doctor-card p {
            margin: 5px 0;
            font-size: 14px;
        }

        .doctor-card b {
            color: #2c3e50;
        }

        /* Buttons */
        .doctor-card .btn {
            padding: 8px 15px;
            font-size: 14px;
            margin: 5px;
            border-radius: 6px;
            border: none;
            cursor: pointer;
            color: #fff;
            transition: background 0.3s ease;
        }

        .doctor-card .btn-warning {
            background: #f39c12;
        }

        .doctor-card .btn-warning:hover {
            background: #e67e22;
        }

        .doctor-card .btn-danger {
            background: #e74c3c;
        }

        .doctor-card .btn-danger:hover {
            background: #c0392b;
        }

        /* Animations */
        @keyframes fadeUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive */
        @media (max-width: 992px) {
            .doctor-card {
                width: 45%;
            }
        }

        @media (max-width: 600px) {
            .doctor-card {
                width: 100%;
            }
        }
        /* Layout */
        .container {
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background: var(--primary);
            color: white;
            transition: all 0.3s ease;
            position: fixed;
            height: 100vh;
            overflow-y: auto;
            z-index: 1000;
        }

        .sidebar-header {
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        .sidebar-header h2 {
            font-size: 1.5rem;
            margin-bottom: 5px;
        }

        .sidebar-header p {
            font-size: 0.8rem;
            opacity: 0.7;
        }

        .sidebar-menu {
            padding: 15px 0;
        }

        .menu-item {
            padding: 12px 20px;
            display: flex;
            align-items: center;
            color: white;
            text-decoration: none;
            transition: all 0.2s;
            border-left: 4px solid transparent;
        }

        .menu-item:hover, .menu-item.active {
            background: rgba(255, 255, 255, 0.1);
            border-left: 4px solid var(--secondary);
        }

        .menu-item i {
            margin-right: 10px;
            width: 20px;
            text-align: center;
        }

        /* Main Content Area */
        .main-content {
            flex: 1;
            margin-left: 250px;
            padding: 20px;
            transition: all 0.3s;
        }

        /* Header Styles */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
            background: white;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            margin-bottom: 20px;
        }

        .header-left h1 {
            font-size: 1.8rem;
            color: var(--primary);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .search-box {
            position: relative;
        }

        .search-box input {
            padding: 8px 15px 8px 35px;
            border: 1px solid #ddd;
            border-radius: 20px;
            outline: none;
            width: 250px;
            transition: all 0.3s;
        }

        .search-box input:focus {
            border-color: var(--secondary);
            width: 300px;
        }

        .search-box i {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray);
        }

        .user-profile {
            display: flex;
            align-items: center;
            gap: 10px;
            cursor: pointer;
        }

        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--secondary);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: bold;
        }

       
    </style>
    </head>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <body>
        <div class="container">
        <!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-header">
                    <h2>MediCare Admin</h2>
                    <p>
                        Hospital Management System</p>
                </div>
                <div class="sidebar-menu">
                    <a href="AdminDashboard.aspx" class="menu-item active"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span> </a>
                    <a href="AdminPatients.aspx" class="menu-item"><i class="fas fa-user-injured"></i><span>Patients</span> </a>
                    <a href="AdminDoctors.aspx" class="menu-item"><i class="fas fa-user-md"></i><span>Doctors</span> </a>
                    <a href="AdminAppointments.aspx" class="menu-item"><i class="fas fa-calendar-check"></i><span>Appointments</span> </a>
                    <a href="AdminPrescriptions.aspx" class="menu-item"><i class="fas fa-prescription"></i><span>Prescriptions</span> </a>
                    <a href="AdminPharmacy.aspx" class="menu-item"><i class="fas fa-pills"></i><span>Pharmacy</span> </a>
                    <a href="AdminBilling.aspx" class="menu-item"><i class="fas fa-file-invoice-dollar"></i><span>Billing</span> </a>
                    <a href="AdminSettings.aspx" class="menu-item"><i class="fas fa-cog"></i><span>Settings</span> </a>
                    <a href="AdminLogout.aspx" class="menu-item"><i class="fas fa-sign-out-alt"></i><span>Logout</span> </a>
                </div>
            </div>

    </div>

<div id="form1" runat="server">
    <div class="doctor-form">
        <table>
            <tr>
                <th colspan="2">Professional Information</th>
            </tr>
            <tr>
                <td>Department</td>
                <td>
                    <asp:DropDownList ID="ddlDepartment" runat="server" required="true">
                        <asp:ListItem Text="-- Select Department --" Value=""></asp:ListItem>
                        <asp:ListItem Text="Cardiology" Value="Cardiology"></asp:ListItem>
                        <asp:ListItem Text="Orthopedic" Value="Orthopedic"></asp:ListItem>
                        <asp:ListItem Text="Dermatology" Value="Dermatology"></asp:ListItem>
                        <asp:ListItem Text="Pediatrics" Value="Pediatrics"></asp:ListItem>
                        <asp:ListItem Text="Neurology" Value="Neurology"></asp:ListItem>
                        <asp:ListItem Text="ENT" Value="ENT"></asp:ListItem>
                        <asp:ListItem Text="General Surgery" Value="General Surgery"></asp:ListItem>
                        <asp:ListItem Text="Gynecology" Value="Gynecology"></asp:ListItem>
                        <asp:ListItem Text="Radiology" Value="Radiology"></asp:ListItem>
                        <asp:ListItem Text="Emergency" Value="Emergency"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Specialization</td>
                <td><asp:TextBox ID="txtSpecialization" runat="server" placeholder="e.g. Heart Specialist"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Qualification</td>
                <td><asp:TextBox ID="txtQualification" runat="server" placeholder="e.g. MBBS, MD, MS"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Years of Experience</td>
                <td><asp:TextBox ID="txtExperience" runat="server" TextMode="Number" placeholder="Enter years of experience"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Consulting Fees (₹)</td>
                <td><asp:TextBox ID="txtFees" runat="server" TextMode="Number" placeholder="Enter fees in INR"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Available Days</td>
                <td>
                    <asp:CheckBoxList ID="chkDays" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Mon" Value="Monday"></asp:ListItem>
                        <asp:ListItem Text="Tue" Value="Tuesday"></asp:ListItem>
                        <asp:ListItem Text="Wed" Value="Wednesday"></asp:ListItem>
                        <asp:ListItem Text="Thu" Value="Thursday"></asp:ListItem>
                        <asp:ListItem Text="Fri" Value="Friday"></asp:ListItem>
                        <asp:ListItem Text="Sat" Value="Saturday"></asp:ListItem>
                        <asp:ListItem Text="Sun" Value="Sunday"></asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Available Time Slots</td>
                <td>
                    Start: <asp:TextBox ID="txtStartTime" runat="server" TextMode="Time"></asp:TextBox>
                    End: <asp:TextBox ID="txtEndTime" runat="server" TextMode="Time"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Doctor Profile Photo</td>
                <td>
                    <asp:FileUpload ID="fileDoctorImage" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSave" runat="server" Text="Save Doctor" CssClass="btn-save" OnClick="btnSave_Click" />
                </td>
            </tr>
        </table>
    </div>
</div>

<!-- CSS -->
<style>
.doctor-form {
    max-width: 650px;
margin-left:550px;

    background: #ffffff;
    border-radius: 10px;
    box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
    font-family: Arial, sans-serif;
}

.doctor-form table {
    width: 100%;
    border-collapse: collapse;
}

.doctor-form th {
    background: #007bff;
    color: white;
    font-size: 20px;
    padding: 12px;
    text-align: center;
    border-radius: 8px 8px 0 0;
}

.doctor-form td {
    padding: 12px;
    vertical-align: middle;
}

.doctor-form input[type="text"],
.doctor-form input[type="number"],
.doctor-form input[type="time"],
.doctor-form select {
    width: 95%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 6px;
    outline: none;
    transition: 0.3s;
}

.doctor-form input:focus,
.doctor-form select:focus {
    border-color: #007bff;
    box-shadow: 0 0 5px #007bff50;
}

.doctor-form .btn-save {
    background: #28a745;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

.doctor-form .btn-save:hover {
    background: #218838;
}/* DataList container */
#DataListDoctors {

    display: flex;
    flex-direction: column;
    align-items: flex-start; /* Align cards to left */
    padding: 20px;
    gap: 18px;
}

/* Individual doctor card */
.doctor-card {
        margin-left:300px;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    background: #fff;
    border-left: 6px solid #3498db; /* Blue accent border */
    border-radius: 10px;
    box-shadow: 0 3px 8px rgba(0, 0, 0, 0.1);
    padding: 15px 20px;
    gap: 20px;
    width: 70%; /* Keeps cards left-aligned with good width */
    transition: all 0.3s ease;
}

/* Hover effect */
.doctor-card:hover {
    transform: translateX(5px);
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
}

/* Doctor image */
.doctor-card img {
    width: 110px;
    height: 110px;
    border-radius: 12px;
    object-fit: cover;
    border: 3px solid #3498db;
}

/* Doctor info */
.doctor-card p {
    font-size: 14px;
    color: #333;
    margin: 4px 0;
    line-height: 1.4;
}

.doctor-card b {
    color: #2c3e50;
}

/* Buttons styling */
.doctor-card .btn {
    margin-top: 10px;
    margin-right: 5px;
    padding: 7px 14px;
    border: none;
    border-radius: 6px;
    color: #fff;
    cursor: pointer;
    font-size: 14px;
    transition: background 0.3s;
}

.btn-warning {
    background-color: #f39c12;
}
.btn-warning:hover {
    background-color: #e67e22;
}
.btn-danger {
    background-color: #e74c3c;
}
.btn-danger:hover {
    background-color: #c0392b;
}

/* Responsive view */
@media (max-width: 768px) {
    .doctor-card {
        flex-direction: column;
        align-items: center;
        text-align: center;
        width: 95%;
    }

    .doctor-card img {
        width: 90px;
        height: 90px;
    }
}



</style>

          <h2>Our Doctors</h2>
  <asp:DataList ID="DataListDoctors" runat="server" OnItemCommand="DataListDoctors_ItemCommand">
    <ItemTemplate>
        <div class="doctor-card">
             <asp:Image ID="imgDoctor" runat="server" ImageUrl='<%# Eval("DoctorImage") %>' Width="100" Height="100" />
         
            <p><b>Department:</b> <%# Eval("Department") %></p>
            <p><b>Specialization:</b> <%# Eval("Specialization") %></p>
            <p><b>Qualification:</b> <%# Eval("Qualification") %></p>
            <p><b>Experience:</b> <%# Eval("Experience") %></p>
            <p><b>Fees:</b> <%# Eval("ConsultingFees") %></p>
            <p><b>Available Days:</b> <%# Eval("AvailableDays") %></p>
            <p><b>Start Time:</b> <%# Eval("StartTime") %></p>
            <p><b>End Time:</b> <%# Eval("EndTime") %></p>

            <asp:Button ID="btnEdit" runat="server" Text="Edit"
                CommandName="EditDoctor"
                CommandArgument='<%# Eval("DoctorID") %>' CssClass="btn btn-warning" />

            <asp:Button ID="btnDelete" runat="server" Text="Delete"
                CommandName="DeleteDoctor"
                CommandArgument='<%# Eval("DoctorID") %>' CssClass="btn btn-danger"
                OnClientClick="return confirm('Are you sure you want to delete this doctor?');" />
        </div>
    </ItemTemplate>
</asp:DataList>

</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
                <!-- Footer -->
            <div class="footer">
              <%--  <p>
                    &copy; 2023 MediCare Hospital Management System. All rights reserved.</p>--%>
    </div>
        </div>
    </div>

    <script>
        // Toggle sidebar on mobile
        document.getElementById('menuToggle').addEventListener('click', function() {
            document.getElementById('sidebar').classList.toggle('active');
        });

        // Close sidebar when clicking outside on mobile
        document.addEventListener('click', function(event) {
            const sidebar = document.getElementById('sidebar');
            const menuToggle = document.getElementById('menuToggle');
            
            if (window.innerWidth <= 768 && 
                !sidebar.contains(event.target) && 
                !menuToggle.contains(event.target)) {
                sidebar.classList.remove('active');
            }
        });
    </script>
</body>
</html>
            </asp:Content>

