<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="hospitalll.AdminDashboard" %>
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

        /* Dashboard Cards */
        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        .card {
            background: white;
            border-radius: var(--radius);
            padding: 20px;
            box-shadow: var(--shadow);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .card-title {
            font-size: 1rem;
            color: var(--gray);
        }

        .card-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
        }

        .card-icon.patients {
            background: var(--secondary);
        }

        .card-icon.doctors {
            background: var(--success);
        }

        .card-icon.appointments {
            background: var(--warning);
        }

        .card-icon.revenue {
            background: var(--danger);
        }

        .card-value {
            font-size: 1.8rem;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .card-change {
            font-size: 0.8rem;
            display: flex;
            align-items: center;
        }

        .card-change.positive {
            color: var(--success);
        }

        .card-change.negative {
            color: var(--danger);
        }

        /* Tables */
        .table-container {
            background: white;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            padding: 20px;
            margin-bottom: 20px;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
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

        .status {
            padding: 5px 10px;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 600;
        }

        .status.pending {
            background: #fff3cd;
            color: #856404;
        }

        .status.completed {
            background: #d1ecf1;
            color: #0c5460;
        }

        .status.cancelled {
            background: #f8d7da;
            color: #721c24;
        }

        .btn {
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 0.8rem;
            transition: all 0.2s;
        }

        .btn-primary {
            background: var(--secondary);
            color: white;
        }

        .btn-danger {
            background: var(--danger);
            color: white;
        }

        .btn:hover {
            opacity: 0.9;
            transform: translateY(-2px);
        }

        /* Footer */
        .footer {
            text-align: center;
            padding: 20px;
            margin-top: 30px;
            color: var(--gray);
            font-size: 0.9rem;
            border-top: 1px solid #eee;
        }

        /* Mobile Menu Toggle */
        .menu-toggle {
            display: none;
            font-size: 1.5rem;
            cursor: pointer;
            color: var(--primary);
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .sidebar {
                width: 70px;
                overflow: visible;
            }
            
            .sidebar-header h2, .sidebar-header p, .menu-item span {
                display: none;
            }
            
            .menu-item {
                justify-content: center;
                padding: 15px;
            }
            
            .menu-item i {
                margin-right: 0;
                font-size: 1.2rem;
            }
            
            .main-content {
                margin-left: 70px;
            }
            
            .search-box input {
                width: 150px;
            }
            
            .search-box input:focus {
                width: 180px;
            }
        }

        @media (max-width: 768px) {
            .menu-toggle {
                display: block;
            }
            
            .sidebar {
                transform: translateX(-100%);
            }
            
            .sidebar.active {
                transform: translateX(0);
            }
            
            .main-content {
                margin-left: 0;
            }
            
            .dashboard-cards {
                grid-template-columns: 1fr;
            }
            
            .header {
                flex-direction: column;
                gap: 15px;
                align-items: flex-start;
            }
            
            .header-right {
                width: 100%;
                justify-content: space-between;
            }
            
            .search-box input {
                width: 100%;
            }
            
            .search-box input:focus {
                width: 100%;
            }
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

        <!-- Main Content -->
    <style>
        /* ===== Dashboard Page Styling ===== */
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 0;
        }

        .dashboard-container {
            margin-left:300px;
            width:1100px;
            padding: 30px;
            animation: fadeIn 1.5s ease-in-out;
        }

        .dashboard-header {
          
            width:700px;
            text-align: center;
            margin-bottom: 40px;
        }

        .dashboard-header h1 {
            color: #2c3e50;
            font-size: 36px;
            letter-spacing: 1px;
            font-weight: 700;
        }

        .dashboard-header p {
            color: #7f8c8d;
            font-size: 18px;
        }

        /* Cards Section */
        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            cursor: pointer;
            position: relative;
            overflow: hidden;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .card .icon {
            font-size: 40px;
            color: #3498db;
            margin-bottom: 15px;
        }

        .card h3 {
            color: #2c3e50;
            font-size: 22px;
            margin-bottom: 10px;
        }

        .card p {
            color: #7f8c8d;
            font-size: 16px;
        }

        /* Animated background circles */
        .circle1, .circle2, .circle3 {
            position: absolute;
            border-radius: 50%;
            opacity: 0.1;
            z-index: 0;
        }
        .circle1 { width: 120px; height: 120px; background: #3498db; top: -40px; right: -40px; }
        .circle2 { width: 150px; height: 150px; background: #e74c3c; bottom: -50px; left: -50px; }
        .circle3 { width: 100px; height: 100px; background: #2ecc71; bottom: -40px; right: 30px; }

        /* Animation Keyframes */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Stats Section */
        .stats-section {
            margin-top: 60px;
        }

        .stats-title {
            text-align: center;
            font-size: 28px;
            color: #34495e;
            font-weight: 600;
            margin-bottom: 25px;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
        }

        .stat-box {
            background: linear-gradient(135deg, #6dd5fa, #2980b9);
            color: white;
            border-radius: 12px;
            text-align: center;
            padding: 25px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            transition: all 0.3s;
        }

        .stat-box:hover {
            transform: scale(1.05);
        }

        .stat-number {
            font-size: 40px;
            font-weight: 700;
        }

        .stat-label {
            font-size: 18px;
            margin-top: 8px;
        }

        /* Footer Animation */
        .footer-quote {
            text-align: center;
            color: #7f8c8d;
            margin-top: 50px;
            font-style: italic;
            animation: fadeIn 2s ease-in;
        }
    </style>
    <div class="dashboard-container">
        <div class="dashboard-header">
            <h1>Welcome to Admin Dashboard</h1>
            <p>Monitor and manage your hospital efficiently</p>
        </div>

        <!-- Top Summary Cards -->
        <div class="card-grid">
            <div class="card">
                <div class="icon"><i class="fas fa-user-md"></i></div>
                <h3>Total Doctors</h3>
                <p>45 Registered Doctors</p>
                <div class="circle1"></div>
            </div>
            <div class="card">
                <div class="icon"><i class="fas fa-user-injured"></i></div>
                <h3>Total Patients</h3>
                <p>230 Active Patients</p>
                <div class="circle2"></div>
            </div>
            <div class="card">
                <div class="icon"><i class="fas fa-calendar-check"></i></div>
                <h3>Appointments Today</h3>
                <p>32 Scheduled</p>
                <div class="circle3"></div>
            </div>
            <div class="card">
                <div class="icon"><i class="fas fa-pills"></i></div>
                <h3>Available Medicines</h3>
                <p>120 Items in Stock</p>
                <div class="circle1"></div>
            </div>
        </div>

        <!-- Stats Section -->
        <div class="stats-section">
            <div class="stats-title">Monthly Performance Overview</div>
            <div class="stats-grid">
                <div class="stat-box">
                    <div class="stat-number">95%</div>
                    <div class="stat-label">Patient Satisfaction</div>
                </div>
                <div class="stat-box">
                    <div class="stat-number">150+</div>
                    <div class="stat-label">Appointments / Month</div>
                </div>
                <div class="stat-box">
                    <div class="stat-number">12</div>
                    <div class="stat-label">Departments</div>
                </div>
                <div class="stat-box">
                    <div class="stat-number">18</div>
                    <div class="stat-label">Active Staff Members</div>
                </div>
            </div>
        </div>

        <div class="footer-quote">
            “Your dedication keeps every patient smiling — Keep leading with care!”
        </div>
    </div>
        </div>

</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
                <!-- Footer -->
            <div class="footer">
                <p>
                    &copy; 2023 MediCare Hospital Management System. All rights reserved.</p>
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

