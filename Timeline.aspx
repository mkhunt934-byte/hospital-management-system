<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Timeline.aspx.cs" Inherits="hospitalll.Timeline" %>
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
    <section class="timeline-hero d-flex align-items-center" 
             style="min-height:60vh; background: linear-gradient(rgba(0,0,0,.6), rgba(0,0,0,.6)), url('images/timeline-bg.jpg') no-repeat center center/cover;">
        <div class="container text-center text-white">
            <h1 class="display-3 fw-bold">Our Journey</h1>
            <p class="lead mt-3">
                A timeline of our growth, achievements, and milestones in healthcare excellence.
            </p>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Timeline Content Start -->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row text-center mb-5">
                <div class="col">
                    <h2 class="fw-bold">Milestones & Achievements</h2>
                    <p class="text-muted">From a small clinic to a world-class hospital</p>
                </div>
            </div>

            <div class="timeline">
                <!-- Timeline Item 1 -->
                <div class="timeline-item left">
                    <div class="timeline-content shadow rounded p-4 bg-white">
                        <h4 class="fw-bold">1998 - Foundation</h4>
                        <p class="text-muted">
                            Our hospital was founded as a small 20-bed clinic with a vision 
                            to provide accessible and affordable healthcare to the community.
                        </p>
                    </div>
                </div>

                <!-- Timeline Item 2 -->
                <div class="timeline-item right">
                    <div class="timeline-content shadow rounded p-4 bg-white">
                        <h4 class="fw-bold">2005 - Expansion</h4>
                        <p class="text-muted">
                            Expanded into a 100-bed hospital with advanced operation theatres, 
                            emergency care, and specialized departments.
                        </p>
                    </div>
                </div>

                <!-- Timeline Item 3 -->
                <div class="timeline-item left">
                    <div class="timeline-content shadow rounded p-4 bg-white">
                        <h4 class="fw-bold">2012 - Recognition</h4>
                        <p class="text-muted">
                            Recognized as one of the best hospitals in the region for 
                            patient satisfaction and quality treatment.
                        </p>
                    </div>
                </div>

                <!-- Timeline Item 4 -->
                <div class="timeline-item right">
                    <div class="timeline-content shadow rounded p-4 bg-white">
                        <h4 class="fw-bold">2020 - Modern Facilities</h4>
                        <p class="text-muted">
                            Introduced robotic surgeries, modern ICUs, and digital healthcare solutions 
                            for seamless patient experience.
                        </p>
                    </div>
                </div>

                <!-- Timeline Item 5 -->
                <div class="timeline-item left">
                    <div class="timeline-content shadow rounded p-4 bg-white">
                        <h4 class="fw-bold">2025 - Future Vision</h4>
                        <p class="text-muted">
                            Moving towards global standards with telemedicine, AI-assisted diagnosis, 
                            and a patient-first approach.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
            <style>
    .timeline {
        position: relative;
        max-width: 900px;
        margin: auto;
    }
    .timeline::after {
        content: '';
        position: absolute;
        width: 6px;
        background-color: #007bff;
        top: 0;
        bottom: 0;
        left: 50%;
        margin-left: -3px;
    }
    .timeline-item {
        padding: 20px 40px;
        position: relative;
        width: 50%;
    }
    .timeline-item.left {
        left: 0;
    }
    .timeline-item.right {
        left: 50%;
    }
    .timeline-item::after {
        content: '';
        position: absolute;
        width: 25px;
        height: 25px;
        right: -13px;
        background-color: white;
        border: 4px solid #007bff;
        top: 30px;
        border-radius: 50%;
        z-index: 1;
    }
    .timeline-item.right::after {
        left: -13px;
    }
    .timeline-content {
        padding: 20px;
        background-color: #f9f9f9;
        position: relative;
        border-radius: 8px;
    }
    @media screen and (max-width: 768px) {
        .timeline::after {
            left: 31px;
        }
        .timeline-item {
            width: 100%;
            padding-left: 70px;
            padding-right: 25px;
        }
        .timeline-item.right {
            left: 0%;
        }
        .timeline-item::after {
            left: 15px;
        }
    }
</style>

    <!-- Timeline Content End -->
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

