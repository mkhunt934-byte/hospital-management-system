<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="hospitalll.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!doctype html>
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
    <section class="about-hero d-flex align-items-center" 
             style="min-height:60vh; background: linear-gradient(rgba(0,0,0,.6), rgba(0,0,0,.6)), url('images/about-hospital.jpg') no-repeat center center/cover;">
        <div class="container text-center text-white">
            <h1 class="display-3 fw-bold">About Our Hospital</h1>
            <p class="lead mt-3">
                Delivering healthcare with compassion, trust, and excellence for every patient.
            </p>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- About Content Start -->
    <section class="py-5">
        <div class="container">
            <div class="row align-items-center">
                <!-- Left Side Image -->
                <div class="col-md-6 mb-4 mb-md-0">
                    <img src="images/hospital-team.jpg" alt="Our Team" class="img-fluid rounded shadow-lg" />
                </div>
                <!-- Right Side Text -->
                <div class="col-md-6">
                    <h2 class="fw-bold mb-3">Who We Are</h2>
                    <p class="text-muted">
                        Our hospital has been serving the community for over 25 years with dedication and care. 
                        We believe in combining advanced technology with a human touch to ensure 
                        every patient receives the best treatment and personal attention.
                    </p>
                    <p class="text-muted">
                        With a team of over 100+ qualified doctors, modern equipment, 
                        and world-class facilities, we have earned the trust of thousands of patients 
                        across the country. Our goal is to provide accessible, affordable, 
                        and reliable healthcare services for all.
                    </p>
                    <a href="Contact.aspx" class="btn btn-primary mt-3 px-4">Contact Us</a>
                </div>
            </div>
        </div>
    </section>
    <!-- About Content End -->

    <!-- Mission & Vision Section -->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row text-center mb-4">
                <h2 class="fw-bold">Our Mission & Vision</h2>
                <p class="text-muted">Guiding principles that shape our healthcare journey</p>
            </div>
            <div class="row g-4">
                <div class="col-md-6">
                    <div class="p-4 bg-white shadow rounded h-100">
                        <h4 class="fw-bold">Our Mission</h4>
                        <p class="text-muted">
                            To provide exceptional and compassionate healthcare, 
                            combining medical expertise with advanced technology, 
                            ensuring affordable treatment for every individual.
                        </p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="p-4 bg-white shadow rounded h-100">
                        <h4 class="fw-bold">Our Vision</h4>
                        <p class="text-muted">
                            To be recognized as a trusted leader in healthcare, 
                            delivering world-class treatment and innovative medical solutions 
                            that improve lives globally.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Team Section -->
    <section class="py-5">
        <div class="container">
            <div class="row text-center mb-4">
                <h2 class="fw-bold">Meet Our Experts</h2>
                <p class="text-muted">A team of specialists dedicated to your well-being</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card shadow-lg border-0">
                        <img src="images/doctor1.jpg" class="card-img-top" alt="Doctor 1">
                        <div class="card-body text-center">
                            <h5 class="fw-bold">Dr. A. Sharma</h5>
                            <p class="text-muted">Cardiologist</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-lg border-0">
                        <img src="images/doctor2.jpg" class="card-img-top" alt="Doctor 2">
                        <div class="card-body text-center">
                            <h5 class="fw-bold">Dr. R. Patel</h5>
                            <p class="text-muted">Neurologist</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-lg border-0">
                        <img src="images/doctor3.jpg" class="card-img-top" alt="Doctor 3">
                        <div class="card-body text-center">
                            <h5 class="fw-bold">Dr. S. Khan</h5>
                            <p class="text-muted">Orthopedic Surgeon</p>
                        </div>
                    </div>
                </div>
            </div>
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

