<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DreamDest</title>
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
</head>

<body>


  <header>
    <div class="content flex_space">
      <div class="logo">
        <img src="images/logo.png" alt="">
      </div>
      <div class="navlinks">
        <ul id="menulist">
          <li><a href="viewalltoursinfoadmin"><i class='fas fa-route' style='font-size:24px'>Tour Management</i></a> </li>
		 <li><a href="login.jsp"><i class="fa fa-sign-in" style="font-size:24px"></i>Login</a> </li>
         <li> 
          <div class="dropdown">
            <button   id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class='fas fa-user-alt' style='font-size:24px'></i>
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="#">${uname}</a>
              <a class="dropdown-item" href="#">${uemail}</a>
              <a class="dropdown-item" href="logout">Logout</a>
            </div>
          </div>
        </li>
        </ul>
        <span class="fa fa-bars" onclick="menutoggle()"></span>
      </div>
    </div>
  </header>

<br>
<br>
  <script>
    var menulist = document.getElementById('menulist');
    menulist.style.maxHeight = "0px";

    function menutoggle() {
      if (menulist.style.maxHeight == "0px") {
        menulist.style.maxHeight = "100vh";
      } else {
        menulist.style.maxHeight = "0px";
      }
    }
  </script>


  <section class="home">
    <div class="content">
      <div class="owl-carousel owl-theme">
        <div class="item">
          <img src="images/banner-1.png" alt="">
          <div class="text">
            <h1>🌍  Explore the World with Us..!</h1>
            <h4>"Your Journey, Our Expertise."</h4>
            <div class="flex">
            </div>
          </div>
        </div>
        <div class="item">
          <img src="images/banner-2.png" alt="">
          <div class="text">
            <h1>Find Your Perfect Stay !</h1>
            <h4> "Where Comfort Meets Convenience."</h4>
            <div class="flex">
             
            </div>
          </div>
        </div>
        <div class="item">
          <img src="images/banner-3.png" alt="">
          <div class="text">
            <h1>Unforgettable Travel Experiences 😍</h1>
            <h4>"Crafting Memories, One Trip at a Time."</h4>
            <div class="flex">
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script>
    $('.owl-carousel').owlCarousel({
      loop: true,
      margin: 0,
      nav: true,
      dots: false,
      navText: ["<i class = 'fa fa-chevron-left'></i>", "<i class = 'fa fa-chevron-right'></i>"],
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 1
        },
        1000: {
          items: 1
        }
      }
    })
  </script>

  <section class="about top">
    <div class="container flex">
      <div class="left">
        <div class="heading">
          <h1>WELCOME</h1>
          <h2>DreamDest</h2>
        </div>
        <h4>DreamDest is a premier hotel booking website that offers a seamless and
			convenient way to find and book accommodations worldwide.</h4>
			<br>
       <h4>Our mission is to make travel planning simple and enjoyable. We're
		committed to offering exceptional service and helping you discover
		unforgettable destinations.</h4>
		<br>
		<h4>Whether you're planning a leisure vacation, a business trip, or a romantic
			getaway, DreamDest is your reliable partner in finding the ideal place
			to stay.</h4>
      </div>
      <div class="right">
        <img src="images/about.png" alt="">
      </div>
    </div>
  </section>

  <section class="counter top">
    <div class="container grid">
      <div class="box">
        <h1>2500</h1>
        <hr>
        <span>Customer</span>
      </div>
      <div class="box">
        <h1>1250</h1>
        <hr>
        <span>Happy Customer</span>
      </div>
      <div class="box">
        <h1>150</h1>
        <hr>
        <span>Expert Technicians</span>
      </div>
      <div class="box">
        <h1>3550</h1>
        <hr>
        <span>Desktop Reaired</span>
      </div>
    </div>
  </section>

  <section class="gallery">
    <div class="container top">
      <div class="heading">
        <h1>PHOTOS</h1>
        <h2>Our Gallery</h2>
        <p>Explore the beauty and luxury of our destinations through captivating images and snapshots of unforgettable experiences.</p>
      </div>
    </div>

    <div class="content mtop">
      <div class="owl-carousel owl-carousel1 owl-theme">
        <div class="items">
          <div class="img">
            <img src="images/gallery-1.png" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Luxurious Hotel Retreats</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="images/gallery-2.png" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Hospitality in Action</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="images/gallery-3.png" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Memorable Guest Experiences</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="images/gallery-4.png" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Relaxation and Wellness</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="images/gallery-5.png" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Culinary Delights</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="images/gallery-6.png" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Breathtaking Scenic Vistas</h3>
          </div>
        </div>
        <div class="items">
          <div class="img">
            <img src="images/gallery-4.png" alt="">
          </div>
          <div class="overlay">
            <span class="fa fa-plus"> </span>
            <h3>Historical Landmarks</h3>
          </div>
        </div>

      </div>
    </div>
  </section>


  <script>
    $('.owl-carousel1').owlCarousel({
      loop: true,
      margin: 0,
      nav: true,
      dots: false,
      autoplay: true,
      autoplayTimeout: 1000,
      autoplayHoverPause: true,
      navText: ["<i class = 'fa fa-chevron-left'></i>", "<i class = 'fa fa-chevron-right'></i>"],
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 4,
        },
        1000: {
          items: 6
        }
      }
    })
  </script>






  <section class="Customer top">
    <div class="container">
      <div class="owl-carousel owl-carousel2 owl-theme">
        <div class="item">
          <i class="fa-solid fa-quote-right"></i>
          <p>I absolutely love the convenience of this site! It made planning my trip a breeze. From researching destinations to booking accommodations and activities, 
          it's a comprehensive tool that streamlines the entire process. The user-friendly interface and intuitive design are top-notch. Highly recommended for anyone looking to simplify their travel planning experience.</p>
          <h3>Ram Kumar</h3>
          
        </div>
        <div class="item">
          <i class="fa-solid fa-quote-right"></i>
          <p>The user-friendly interface and detailed information about destinations and hotels made my vacation planning an absolute joy. I felt like I had a personal travel assistant at my fingertips. The extensive database of destinations, accommodations, and activities is a treasure trove for any traveler. Thank you for providing such a well-rounded and user-centric platform that made my experience stress-free.</p>
          <h3>Sagar Singh</h3>
          
        </div>
        <div class="item">
          <i class="fa-solid fa-quote-right"></i>
          <p>Exceptional customer support is a rarity these days, but this app's support team is truly outstanding. When I encountered a minor issue with my booking, they were on the case immediately. Their responsiveness and dedication to resolving the matter efficiently were commendable. It's clear they value customer satisfaction and are willing to go the extra mile to achieve it.</p>
          <h3>Canne Amelia</h3>
        </div>
      </div>
    </div>
  </section>
  <script>
    $('.owl-carousel2').owlCarousel({
      loop: true,
      margin: 0,
      nav: false,
      dots: true,
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 1,
        },
        1000: {
          items: 1
        }
      }
    })
  </script>



  <section class="news top rooms">
    <div class="container">
      <div class="heading">
        <h1>NEWS</h1>
        <h2>Our News</h2>
        <p>Stay Informed with the Latest Travel Updates and Inspirations.
      </div>


      <div class="content flex">
        <div class="left grid2">
          <div class="items">
            <div class="image">
              <img src="images/blog-1.png" alt="">
            </div>
            <div class="text">
              <h2>Travel Made Easy</h2>
              <div class="admin flex">
                <i class="fa fa-user"></i>
                <label>Admin</label>
                <i class="fa fa-heart"></i>
                <label>500</label>
                <i class="fa fa-comments"></i>
              </div>
              <p>Streamline your travel planning and experience with our user-friendly site.</p>
            </div>
          </div>
          <div class="items">
            <div class="image">
              <img src="images/blog-2.png" alt="">
            </div>
            <div class="text">
              <h2>Book and Explore</h2>
              <div class="admin flex">
                <i class="fa fa-user"></i>
                <label>Admin</label>
                <i class="fa fa-heart"></i>
                <label>500</label>
                <i class="fa fa-comments"></i>
              </div>
              <p>Easily book accommodations and embark on your exploration with a single platform.</p>
            </div>
          </div>
        </div>

        <div class="right">
          <div class="box flex">
            <div class="img">
              <img src="images/blog-s1.png" alt="">
            </div>
            <div class="stext">
              <h2>Your Travel Guide</h2>
              <p> Let our web-app guide you to memorable travel experiences and destinations.
              </p>
            </div>
          </div>
          <div class="box flex">
            <div class="img">
              <img src="images/blog-s2.png" alt="">
            </div>
            <div class="stext">
              <h2>"Plan, Explore, Enjoy"</h2>
              <p>Plan your trips, explore new places, and savor every moment with our web - app's assistance.
              </p>
            </div>
          </div>
          <div class="box flex">
            <div class="img">
              <img src="images/blog-s3.png" alt="">
            </div>
            <div class="stext">
              <h2>Ultimate Travel Companion</h2>
              <p>Your all-in-one site for a seamless and enhanced travel experience.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>




  <footer>
    <div class="container grid">
      <div class="box">
        <img src="images/logo.png" alt="">
        <p>DreamDest is a premier hotel booking website that offers a seamless and
			convenient way to find and book accommodations worldwide</p>

        <div class="icon">
          <i class="fa fa-facebook-f"></i>
          <i class="fa fa-instagram"></i>
          <i class="fa fa-twitter"></i>
          <i class="fa fa-youtube"></i>
        </div>
      </div>

      <div class="box">
        <h2>Links</h2>
        <ul>
          <li>Company History</li>
          <li>About Us</li>
          <li>Contact Us</li>
          <li>Services</li>
          <li>Privacy Policy</li>
        </ul>
      </div>

      <div class="box">
        <h2>Contact Us</h2>
        <p>Feel free to contact us !.
        </p>
        <i class="fa fa-location-dot"></i>
        <label>KL University , Green Campus , Vaddeswaram , Vijayawada </label> <br>
        <i class="fa fa-phone"></i>
        <label>+91 8639686275</label> <br>
        <i class="fa fa-envelope"></i>
        <label>dreamdest.info@gmail.com</label> <br>
      </div>
    </div>
  </footer>

  <div class="legal">
    <p class="container">Copyright(c) 2023 DreamDest All Rights Reserved.</p>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.6/dist/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/032d11eac3.js" crossorigin="anonymous"></script>
</body>

</html>