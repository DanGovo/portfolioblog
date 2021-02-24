<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Portfolio</title>
    <link href="{{ URL::asset('css/custom.css') }}" rel="stylesheet" type="text/css" >
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
</head>
<body>
    <div class="scroll-up-btn">
        <i class="fas fa-angle-up"></i>
    </div>
    <!--Navabar Section start-->
    <nav class="navbar">
        <div class="max-width">
            <div class="logo"><a href="#">Port<span>folio.</span></a></div>
            <ul class="menu">
                <li><a href="#home" class="menu-btn">Home</a></li>
                <li><a href="#about" class="menu-btn">About</a></li>
                <li><a href="#services" class="menu-btn">Services</a></li>
                <li><a href="#skills" class="menu-btn">Skills</a></li>
                <li><a href="#projects" class="menu-btn">Projects</a></li>
                <li><a href="#" class="menu-btn">Blog</a></li>
                <li><a href="#contact" class="menu-btn">Contact</a></li>
                 @if (Route::has('login'))
                    @auth
                        <a href="{{ url('/admin/dashboard') }}" class="menu-btn">Admin Dashboard</a>
                    @else
                        <li><a href="{{ route('login') }}" class="menu-btn">Login</a></li>
                    @endauth
                </div>
            @endif
            </ul>
            <div class="menu-btn">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </nav>
    <!--Navbar Section End-->

    <!--Home Section Start-->
    <section class="home" id="home">
        <div class="max-width">
            <div class="home-content">
                <div class="text-1">Hello, my name is</div>
                <div class="text-2">Daniel Govo</div>
                <div class="text-3">And I'm a <span class="typing"></span></div>
                <a href="#contact">Hire me</a>
            </div>
        </div>
    </section>
    <!--Home Section End-->

    <!--About Section Start-->
    <section class="about" id="about">
        <div class="max-width">
            <h2 class="title">About me</h2>
            <div class="about-content">
                <div class="column left">
                    <img src="{{asset('img/about.png')}}" alt="">
                </div>
                <div class="columb right">
                    <div class="text">I'm Daniel Govo and I'm a <span class="typing-2"></span></div>
                    <p>I am a Microsoft certified database professional with a passion for systems development. I am interested in not just solving technical issues, but impacting the world with the work I'm doing. I strongly believe that if the code doesn't solve a real-world/business problem then it has no reason to exist. I enjoy being part of, as well as managing and motivating, a successful and productive team and thrive in highly pressurised and challenging working environments.</p>
                    <a target="_blank" href="docs/Daniel_Govo.pdf">Download CV</a>
                </div>
            </div>
        </div>
    </section>
    <!--About Section End-->

    <!--Services Section Start-->
    <section class="services" id="services">
        <div class="max-width">
            <h2 class="title">My services</h2>
            <div class="serv-content">
                <div class="card">
                    <div class="box">
                        <i class="fas fa-paint-brush"></i>
                        <div class="text">Systems Develoment</div>
                        <p>Designing, creating, analysing and maintaining information systems to improve the efficiency and performance of a company.</p>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <i class="fas fa-chart-line"></i>
                        <div class="text">Web Development</div>
                        <p>Building, creating and maintaining websites and web applications</p>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <i class="fas fa-code"></i>
                        <div class="text">Data Management & Analysis</div>
                        <p>Acquiring, validating, storing, protecting, and processing required data to ensure the accessibility, reliability, and timeliness of the data for its users.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Services Section End-->

    <!-- Skills Section Start -->
    <section class="skills" id="skills">
        <div class="max-width">
            <h2 class="title">My skills</h2>
            <div class="skills-content">
                <div class="column left">
                    <div class="text">My creative skills & experiences.</div>
                    <p>Ceative and self-motivated Software Developer with more than 8 years of hands-on experience in
                        extensive back-end developmet, front-end developmet and API development.
                        Possessing a full and thorough understanding of database design concepts, software integrations and
                        systems analysis. Very capable with good all-round supervisory and technical expertise and a proven
                        ability to ensure the smooth running of ICT systems in large organizations with a diverse client
                        portfolio. Excellent programming skills in Java, C#, SQL, HTML, CSS, PHP & Javascript.</p>
                    <a href="#about">Read more</a>
                </div>
                <div class="column right">
                    <div class="bars">
                        <div class="info">
                            <span>Java</span>
                            <span>75%</span>
                        </div>
                        <div class="line java"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>C#</span>
                            <span>80%</span>
                        </div>
                        <div class="line csharp"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>HTML</span>
                            <span>90%</span>
                        </div>
                        <div class="line html"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>CSS</span>
                            <span>80%</span>
                        </div>
                        <div class="line css"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>PHP</span>
                            <span>80%</span>
                        </div>
                        <div class="line php"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>JavaScript</span>
                            <span>75%</span>
                        </div>
                        <div class="line js"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>SQL</span>
                            <span>90%</span>
                        </div>
                        <div class="line sql"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Skills Section End -->

    <!-- Projects section Start -->
    <section class="projects" id="projects">
        <div class="max-width">
            <h2 class="title">My projects</h2>
            <div class="carousel owl-carousel">
                <div class="card">
                    <div class="box">
                        <img src="{{asset('img/vmis.jpg')}}" alt="">
                        <div class="text">Vehicle Management Information System (VMIS)</div>
                        <p>VMIS is a desktop application in developed written in Java and paired with an Oracle database</p>
                        <a id="vmis" href="#">Read more</a>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <img src="{{asset('img/payroll.jpg')}}" alt="">
                        <div class="text">Integrated Pay and Records Information System</div>
                        <p>The integrated pay and records information system is a desktop application written in C# and paired with a SQL Server database.</p>
                        <a href="#">Read more</a>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <img src="{{asset('img/vidsteg.jpg')}}" alt="">
                        <div class="text">Video Steganography System (Vidsteg)</div>
                        <p>A covet communications desktop application written in Java and paired with a MySQL database.</p>
                        <a href="#">Read more</a>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <img src="{{asset('img/website.jpg')}}" alt="">
                        <div class="text">Website</div>
                        <p>University Website based on WordPress, a free and open-source CMS written in PHP and paired with a MySQL.</p>
                        <a href="#">Read more</a>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <img src="{{asset('img/smis.jpg')}}" alt="">
                        <div class="text">Student Management Information System (SMIS)</div>
                        <p>A university web application written in CakePHP and paired with a MySQL</p>
                        <a href="#">Read more</a>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <img src="{{asset('img/ecommerce.jpg')}}" alt="">
                        <div class="text">E-Commerce Website</div>
                        <p>An e-commerce website written in LaravelPHP, Vuejs and paired with a MySQL database</p>
                        <a href="#">Read more</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Projects section End -->

    <!-- Contact Section Start -->
    <section class="contact" id="contact">
        <div class="max-width">
            <h2 class="title">Contact me</h2>
            <div class="contact-content">
                <div class="column left">
                    <div class="text">Get in Touch</div>
                    <p>Get in touch with me on the following details or send a message using the form on the right</p>
                    <div class="icons">
                        <div class="row">
                            <i class="fas fa-user"></i>
                            <div class="info">
                                <div class="head">Name</div>
                                <div class="sub-title">Daniel Govo</div>
                            </div>
                        </div>
                        <div class="row">
                            <i class="fas fa-map-marker-alt"></i>
                            <div class="info">
                                <div class="head">Location</div>
                                <div class="sub-title">Harare, Zimbabwe</div>
                            </div>
                        </div>
                        <div class="row">
                            <i class="fas fa-envelope"></i>
                            <div class="info">
                                <div class="head">Email</div>
                                <div class="sub-title">govodan@gmail.com</div>
                            </div>
                        </div>
                        <!-- social media links -->
                        <!-- <div class="row">
                            <div class="wrapper">
                                <div class="icon facebook">
                                    <div class="tooltip">Facebook</div>
                                    <span><i class="fab fa-facebook-f"></i></span>
                                </div>
                                <div class="icon twitter">
                                    <div class="tooltip">Twitter</div>
                                    <span><i class="fab fa-twitter"></i></span>
                                </div>
                                <div class="icon github">
                                    <div class="tooltip">Github</div>
                                    <span><i class="fab fa-github"></i></span>
                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
                <div class="column right">
                    <div class="text">Message me</div>
                    <form name="contact" method="POST" data-netlify="true">
                        <div class="fields">
                            <div class="field name">
                                <input type="text" name="name" placeholder="Name" required>
                            </div>
                            <div class="field email">
                                <input type="email" name="email" placeholder="Email" required>
                            </div>
                        </div>
                        <div class="field">
                            <input type="text" name="subject" placeholder="Subjet" required>
                        </div>
                        <div class="field textarea">
                            <textarea cols="30" rows="10" name="message" placeholder="Describe project..." required></textarea>
                        </div>
                        <div class="button">
                            <button type="submit">Send message</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Footer Section Start -->
    <footer>
        <span>Created By <a href="#about">Daniel Govo</a> | <span class="far fa-copyright"></span>2021 All rights reserved.</span>
    </footer>
    <!-- Footer Section End -->

    <!-- projects modal -->
    <!-- <div id="modal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <span class="closeBtn">&times;</span>
                <h2>VMIS Project</h2>
            </div>
            <div class="modal-body">
                <h3>Project Description</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, illum? Temporibus blanditiis maiores recusandae provident impedit reprehenderit hic veritatis quos.</p>
                <br />
                <h3>Responsibilities</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, dolor nulla quae officia alias unde asperiores autem voluptates blanditiis dolores similique ducimus? Totam illo laboriosam, repellendus ratione autem iusto! Magnam dignissimos debitis in voluptatem, amet perspiciatis recusandae dolor quia porro fuga ex ut tenetur ipsum molestiae illo minus repudiandae eligendi!</p>
                <br />
                <a href="#">View Project</a>
            </div>
            <div class="modal-footer">
             <h2>Modal footer</h2>
                <a href="#">Close</a>
            </div>
        </div>
    </div> -->

     <script type="text/javascript" src="{{ URL::asset('js/myscript.js') }}"></script>
</body>
</html>
