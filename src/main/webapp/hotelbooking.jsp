<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DreamDest</title>
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="css/hotelbooking.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
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
          <li><a href="index.jsp"><i class="fa fa-home" style="font-size:24px"></i></a> </li>
          <li><a href="viewallhotelsinfo"><i class='fas fa-hotel' style='font-size:24px'></i></a> </li>
          <li><a href="viewalltoursinfo"><i class='fas fa-route' style='font-size:24px'></i></a> </li>
          <li><a href="contactus.jsp"><i class="fa fa-envelope" style="font-size:24px"></i></a> </li>
		     <li><a href="login.jsp"><i class="fa fa-sign-in" style="font-size:24px"></i></a> </li>
        
        </ul>
       
      </div>
    </div>
  </header>

<br>
<br>

<form class="hotel-reservation-form" method="post" action="reservehotel">
    <h1><i class="far fa-calendar-alt"></i>Hotel Reservation</h1>
    <div class="fields">
        <!-- Input Elements -->
        <div class="wrapper">
        <div>
        <input type="hidden" name="hotelId" value="${param.hotelId}">
        </div>
            <div>
                <label for="arrival">Arrival</label>
                <div class="field">
                    <input id="arrival" type="date" name="arrival" required>
                </div>
            </div>
            <div class="gap"></div>
            <div>
                <label for="departure">Departure</label>
                <div class="field">
                    <input id="departure" type="date" name="departure" required>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <div>
                <label for="first_name">First Name</label>
                <div class="field">
                    <i class="fas fa-user"></i>
                    <input id="first_name" type="text" name="first_name" placeholder="First Name" required>
                </div>
            </div>
            <div class="gap"></div>
            <div>
                <label for="last_name">Last Name</label>
                <div class="field">
                    <i class="fas fa-user"></i>
                    <input id="last_name" type="text" name="last_name" placeholder="Last Name" required>
                </div>
            </div>
        </div>
<label for="phone">Phone</label>
<div class="field">
<i class="fas fa-phone"></i>
<input id="phone" type="tel" name="phone" placeholder="Your Phone Number" required>
</div>
<div class="wrapper">
<div>
<label for="adults">Adults</label>
<div class="field">
    <select id="adults" name="adults" required>
        <option disabled selected value="">--</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
    </select>
</div>
</div>
<div class="gap"></div>
<div>
<label for="children">Children</label>
<div class="field">
    <select id="children" name="children" required>
        <option disabled selected value="">--</option>
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
    </select>
</div>
</div>
</div>
<label for="room_pref">Room Preference</label>
<div class="field">
<select id="room_pref" name="room_pref" required>
<option disabled selected value="">--</option>
<option value="Standard">Standard</option>
<option value="Deluxe">Deluxe</option>
<option value="Suite">Suite</option>
</select>
</div>
<input type="submit" value="Reserve">
    </div>
</form>

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

  


  <script src="https://kit.fontawesome.com/032d11eac3.js" crossorigin="anonymous"></script>
</body>

</html>