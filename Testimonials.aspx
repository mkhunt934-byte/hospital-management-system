<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Testimonials.aspx.cs" Inherits="hospitalll.Testimonials" %>
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
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder2">
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
    <section class="testimonials-hero d-flex align-items-center" 
             style="min-height:60vh; background: linear-gradient(rgba(0,0,0,.6), rgba(0,0,0,.6)), url('images/testimonials-bg.jpg') no-repeat center center/cover;">
        <div class="container text-center text-white">
            <h1 class="display-3 fw-bold">What Our Patients Say</h1>
            <p class="lead mt-3">
                Stories of care, trust, and satisfaction from those who matter most – our patients.
            </p>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Testimonials Section Start -->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row text-center mb-5">
                <div class="col">
                    <h2 class="fw-bold">Patient Testimonials</h2>
                    <h1></h1>
                    <<h1></h1>
                    <p class="text-muted">Real experiences shared by our valued patients</p>
                </div>
            </div>

            <!-- Testimonial Cards -->
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card shadow-lg border-0 h-100">
                        <div class="card-body text-center">
                            <img src="images/patient1.jpg" class="rounded-circle mb-3" width="100" height="100" alt="Patient 1" />
                            <h5 class="fw-bold">Rohit Sharma</h5>
                            <p class="text-muted small">Cardiac Patient</p>
                            <p>
                                “The doctors here saved my life. Their advanced treatment and constant care 
                                gave me a second chance to live happily with my family.”
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card shadow-lg border-0 h-100">
                        <div class="card-body text-center">
                            <img src="images/patient2.jpg" class="rounded-circle mb-3" width="100" height="100" alt="Patient 2" />
                            <h5 class="fw-bold">Priya Patel</h5>
                            <p class="text-muted small">Maternity Care</p>
                            <p>
                                “The staff was so caring during my delivery. 
                                The facilities are world-class, and I felt safe and supported throughout.”
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card shadow-lg border-0 h-100">
                        <div class="card-body text-center">
                            <img src="images/patient3.jpg" class="rounded-circle mb-3" width="100" height="100" alt="Patient 3" />
                            <h5 class="fw-bold">Arjun Mehta</h5>
                            <p class="text-muted small">Orthopedic Surgery</p>
                            <p>
                                “After my accident, I thought I would never walk again. 
                                Thanks to the hospital’s expert surgeons, I am back on my feet today.”
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Testimonial Carousel -->
            <div id="testimonialCarousel" class="carousel slide mt-5" data-bs-ride="carousel">
                <div class="carousel-inner">

                    <div class="carousel-item active">
                        <div class="d-flex flex-column align-items-center">
                            <img src="images/patient4.jpg" class="rounded-circle mb-3" width="100" height="100" alt="Patient 4" />
                            <h5 class="fw-bold">Sneha Desai</h5>
                            <p class="w-75 text-center">
                                “Best healthcare experience ever. From the reception to the ICU, 
                                every department worked like a family to make me better.”
                            </p>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="d-flex flex-column align-items-center">
                            <img src="images/patient5.jpg" class="rounded-circle mb-3" width="100" height="100" alt="Patient 5" />
                            <h5 class="fw-bold">Vivek Joshi</h5>
                            <p class="w-75 text-center">
                                “Affordable treatment with excellent doctors. 
                                Truly one of the best hospitals in the region.”
                            </p>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="d-flex flex-column align-items-center">
                            <img src="images/patient6.jpg" class="rounded-circle mb-3" width="100" height="100" alt="Patient 6" />
                            <h5 class="fw-bold">Neha Gupta</h5>
                            <p class="w-75 text-center">
                                “The nurses and doctors treated me with so much love and patience. 
                                I will always recommend this hospital to everyone.”
                            </p>
                        </div>
                    </div>

                </div>

                <!-- Carousel Controls -->
                <button class="carousel-control-prev" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon bg-dark rounded-circle p-2"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon bg-dark rounded-circle p-2"></span>
                </button>
            </div>

        </div>
    </section>
    <!-- Testimonials Section End -->

</asp:Content>
<asp:Content ID="Content8" runat="server" contentplaceholderid="ContentPlaceHolder3">
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

