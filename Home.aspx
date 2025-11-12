<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="hospitalll.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!doctype html>
    <style>
        .doctor-card {
            border: 1px solid #ccc;
            padding: 15px;
            margin: 10px;
            width: 250px;
            display: inline-block;
            vertical-align: top;
            text-align: center;
        }

        .doctor-card img {
            width: 100px;
            height: 100px;
            object-fit: cover;
        }
    </style>
                <html>
                <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <meta name="description" content="">
                    <meta name="author" content=""><title>Medic Care Bootstrap 5 CSS Template</title>

                    <!-- CSS FILES -->
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">
                    <link href="css/bootstrap.min.css" rel="stylesheet">
                    <link href="css/bootstrap-icons.css" rel="stylesheet">
                    <link href="css/owl.carousel.min.css" rel="stylesheet">
                    <link href="css/owl.theme.default.min.css" rel="stylesheet">
                    <link href="css/templatemo-medic-care.css" rel="stylesheet">
                    <!--

TemplateMo 566 Medic Care

https://templatemo.com/tm-566-medic-care

-->
                </head>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <body>
        <main>
        <nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
            <div class="container">
                <a class="navbar-brand mx-auto d-lg-none" href="index.html">Medic Care <strong class="d-block">Health Specialist</strong> </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item active"><a class="nav-link" href="Home.aspx">Home</a> </li>
                        <li class="nav-item"><a class="nav-link" href="About.aspx">About</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Timeline.aspx">Timeline</a>
                                        </li>

                                        <a class="navbar-brand d-none d-lg-block" href="index.html">Medic Care <strong class="d-block">Health Specialist</strong> </a>
                        <li class="nav-item"><a class="nav-link" href="Testimonials.aspx">Testimonials</a> </li>
                        <li class="nav-item"><a class="nav-link" href="booking.aspx">Booking</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact</a> </li>
                    </ul>
                </div>
            </div>
        </nav>
      <!-- Hero Section Start -->
    <section class="hero-section d-flex align-items-center" 
             style="min-height:100vh; background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('images/hospital-bg.jpg') no-repeat center center/cover;">
        <div class="container text-center text-white">
            <h1 class="display-3 fw-bold">Welcome to Our Hospital</h1>
            <p class="lead mt-3 mb-4">
                We provide world-class healthcare services with expert doctors, modern equipment,
                and patient-friendly facilities to ensure the best treatment for you and your family.
            </p>
            <a href="AboutUs.aspx" class="btn btn-primary btn-lg me-2 px-4 py-2">Learn More</a>
            <a href="ContactUs.aspx" class="btn btn-outline-light btn-lg px-4 py-2">Get in Touch</a>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Features Section Start -->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row text-center mb-4">
                <div class="col">
                    <h2 class="fw-bold">Our Key Services</h2>
                    <p class="text-muted">Trusted care and treatment for every patient</p>
                </div>
            </div>

            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card shadow-lg border-0 h-100">
                        <div class="card-body text-center">
                            <i class="bi bi-heart-pulse display-4 text-primary mb-3"></i>
                            <h5 class="fw-bold">Emergency Care</h5>
                            <p class="text-muted">24/7 emergency medical care with advanced life-saving facilities.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-lg border-0 h-100">
                        <div class="card-body text-center">
                            <i class="bi bi-people-fill display-4 text-success mb-3"></i>
                            <h5 class="fw-bold">Expert Doctors</h5>
                            <p class="text-muted">Highly qualified doctors and specialists dedicated to patient care.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-lg border-0 h-100">
                        <div class="card-body text-center">
                            <i class="bi bi-building display-4 text-danger mb-3"></i>
                            <h5 class="fw-bold">Modern Facilities</h5>
                            <p class="text-muted">State-of-the-art infrastructure with world-class technology.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
      <h2>Our Doctors</h2>
        <asp:DataList ID="DataListDoctors" runat="server" RepeatColumns="3" CellPadding="5">
            <ItemTemplate>
                <div class="doctor-card">
                    <asp:Image ID="imgDoctor" runat="server" ImageUrl='<%# Eval("DoctorImage") %>' /><br />
                    <b>Department:</b> <%# Eval("Department") %><br />
                    <b>Specialization:</b> <%# Eval("Specialization") %><br />
                    <b>Qualification:</b> <%# Eval("Qualification") %><br />
                    <b>Experience:</b> <%# Eval("Experience") %> Years<br />
                    <b>Fees:</b> $ <%# Eval("ConsultingFees") %><br />
                    <b>Available Days:</b> <%# Eval("AvailableDays") %><br />
                    <b>Time:</b> <%# Eval("StartTime") %> - <%# Eval("EndTime") %><br />
                </div>
            </ItemTemplate>
        </asp:DataList>

    <!-- Features Section End -->

    <!-- Call to Action Section -->
    <section class="py-5 text-white" style="background-color: #007bff;">
        <div class="container text-center">
            <h2 class="fw-bold">Book Your Appointment Today</h2>
            <p class="mb-4">Quick and easy online appointment booking available</p>
            <a href="Booking.aspx" class="btn btn-light btn-lg px-4">Book Now</a>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <footer class="site-footer section-padding" id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 me-auto col-12">
                    <h5 class="mb-lg-4 mb-3">Opening Hours</h5>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex">Sunday : Closed </li>
                        <li class="list-group-item d-flex">Monday, Tuesday - Firday <span>8:00 AM - 3:30 PM</span> </li>
                        <li class="list-group-item d-flex">Saturday <span>10:30 AM - 5:30 PM</span> </li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 col-12 my-4 my-lg-0">
                    <h5 class="mb-lg-4 mb-3">Our Clinic</h5>
                    <p>
                        <a href="mailto:hello@company.co">hello@company.co</a>
                    <p>
                    <p>
                        123 Digital Art Street, San Diego, CA 92123</p>
                </div>
                <div class="col-lg-3 col-md-6 col-12 ms-auto">
                    <h5 class="mb-lg-4 mb-3">Socials</h5>
                    <ul class="social-icon">
                        <li><a href="#" class="social-icon-link bi-facebook"></a></li>
                        <li><a href="#" class="social-icon-link bi-twitter"></a></li>
                        <li><a href="#" class="social-icon-link bi-instagram"></a></li>
                        <li><a href="#" class="social-icon-link bi-youtube"></a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-12 ms-auto mt-4 mt-lg-0">
                    <p class="copyright-text">
                        Copyright © Medic Care 2021
                        <br>
                        <br>Design: <a href="https://templatemo.com" target="_parent">TemplateMo</a>
                    </p>
                </div>
            </div>
                    </section>
                </footer>

                <!-- JAVASCRIPT FILES -->
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.bundle.min.js"></script>
                <script src="js/owl.carousel.min.js"></script>
                <script src="js/scrollspy.min.js"></script>
                <script src="js/custom.js"></script>
                <!--

TemplateMo 566 Medic Care

https://templatemo.com/tm-566-medic-care

-->
</body>
</html>
</asp:Content>

