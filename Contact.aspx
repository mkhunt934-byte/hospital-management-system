<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="hospitalll.Contact" %>
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
    <section class="contact-hero d-flex align-items-center" 
             style="min-height:60vh; background: linear-gradient(rgba(0,0,0,.6), rgba(0,0,0,.6)), url('images/contact-bg.jpg') no-repeat center center/cover;">
        <div class="container text-center text-white">
            <h1 class="display-3 fw-bold">Contact Us</h1>
            <p class="lead mt-3">
                Have any questions? Send us a message and we will get back to you quickly.
            </p>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Contact Form Section Start -->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row text-center mb-5">
                <div class="col">
                    <h2 class="fw-bold">Get In Touch</h2>
                    <p class="text-muted">Fill in your details and send us a message</p>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card shadow-lg border-0">
                        <div class="card-body p-4">
                            <div id="form1" runat="server">
                                <div class="row g-3">

                                    <div class="col-md-6">
                                        <asp:Label ID="lblName" runat="server" Text="Full Name" CssClass="form-label"></asp:Label>
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>
                                    </div>

                                    <div class="col-md-6">
                                        <asp:Label ID="lblEmail" runat="server" Text="Email Address" CssClass="form-label"></asp:Label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                                    </div>

                                    <div class="col-12">
                                        <asp:Label ID="lblSubject" runat="server" Text="Subject" CssClass="form-label"></asp:Label>
                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Subject of your message"></asp:TextBox>
                                    </div>

                                    <div class="col-12">
                                        <asp:Label ID="lblMessage" runat="server" Text="Message" CssClass="form-label"></asp:Label>
                                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Type your message here"></asp:TextBox>
                                    </div>

                                    <div class="col-12 text-center">
                                        <asp:Button ID="btnSend" runat="server" Text="Send Message" CssClass="btn btn-primary btn-lg px-5" OnClick="btnSend_Click" />
                                    </div>

                                    <!-- Status Label -->
                                    <div class="col-12 text-center mt-3">
                                        <asp:Label ID="lblStatus" runat="server" CssClass="fw-bold"></asp:Label>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- Contact Form Section End -->
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

