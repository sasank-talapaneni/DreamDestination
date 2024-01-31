<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DreamDest</title>

  <!-- Add your CSS links and styles here -->
  <link rel="stylesheet" href="css/login.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
    /* Additional styles for the navbar and login sections */

    .horizontal-navbar {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      background-color: rgba(255, 255, 255, 0.8);
      display: flex;
      justify-content: space-between;
      padding: 10px 20px;
      z-index: 1;
    }

    .horizontal-navbar ul {
      list-style: none;
      padding: 0;
      display: flex;
    }

    .horizontal-navbar li {
      margin-right: 20px;
    }

    .horizontal-navbar a {
      text-decoration: none;
      color: #000;
      font-weight: bold;
    }

    /* Add CSS for the sliding effect */
    .slide-button {
      width: 0;
      overflow: hidden;
      transition: width 0.5s;
    }

    /* Style for the expanded button */
    .expanded-button {
      width: 120px; /* Adjust the width as needed */
    }

    .logo {
      font-size: 24px;
      margin-right: 20px;
    }

    .admin-section {
      display: none;
    }
  </style>
</head>

<body>

  <header>
    <nav class="horizontal-navbar">
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="hotels.jsp">Hotels</a></li>
        <li><a href="tours.jsp">Destinations</a></li>
        <li><a href="contact.jsp">Contact</a></li>
        <li><a href="login.jsp">User Login</a></li>
      </ul>
    </nav>

    <div id="background">
      <div class="background-Right"></div>
      <div class="background-Left"></div>
    </div>

    <div id="slide">
      <div class="top">
        <div class="left">
          <div class="content">
            <h2>Sign Up</h2>
            <form method="post" action="insertuser">..
              <div>
                <input type="text" name="name" placeholder="Full Name" required /><br />
                <input type="text" name="city" placeholder="City" required /><br />
                <input type="text" name="contact" placeholder="Mobile No." required /><br />
                <input type="date" name="dob" placeholder="Date of Birth" required /><br />
                <input type="email" name="email" placeholder="Email" required /><br />
                <input type="password" name="pwd" id="password" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,30})" placeholder="Enter password" title="Password must contain atleast one number [0-9],uppercase [A-Z],special character [!@#$%^&*], length > 8!! try again!!" required>
              </div>
              <button id="LeftToRight" class="on-off">Login</button>
              <button input type="submit" >Register</button>
              <!-- Add sliding effect to the register button -->
              
            </form>
          </div>
        </div>

        <div class="right">
          <div class="content">
            <span class="blink">
              <h3 align=center style="color:red">${message}</h3>
            </span>
            <br>
            <h2>Login</h2>
            <form method="post" action="checkuserlogin">
              <div>
                <input type="email" name="email" placeholder="email" required /><br />
                <input type="password" name="pwd" placeholder="password" required />
              </div>
               <label for="captcha">Enter CAPTCHA:</label>
<img src="captchaImage.jsp" alt="CAPTCHA" />
<input type="text" id="captcha" name="captcha" required />
              <button id="RightToLeft" class="on-off">Register</button>
              <button input type="submit" >Login</button>
              <button onclick="toggleForm()">Switch to Admin Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- Admin login section -->
    <div class="admin-section">
      <div class="content">
        <span class="blink">
          <h3 align=center style="color:red">${adminMessage}</h3>
        </span>
        <br>
        <h2>Admin Login</h2>
        <form method="post" action="checkadminlogin">
          <div>
            <input type="text" name="adminUsername" placeholder="Admin Username" required /><br />
            <input type="password" name="adminPassword" placeholder="Admin Password" required /><br />
             <label for="captcha">Enter CAPTCHA:</label>
<img src="captchaImage.jsp" alt="CAPTCHA" />
<input type="text" id="captcha" name="captcha" required />
            <button><input type="submit" value="Admin Login"></button>
          </div>
        </form>
      </div>
    </div>

  </header>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script>
    function toggleForm() {
      const userLogin = document.querySelector('.right');
      const adminLogin = document.querySelector('.admin-section');

      if (userLogin.style.display === 'none' || userLogin.style.display === '') {
        userLogin.style.display = 'block';
        adminLogin.style.display = 'none';
      } else {
        userLogin.style.display = 'none';
        adminLogin.style.display = 'block';
      }
    }

    // Function to expand the register button
    function expandButton() {
      const button = document.getElementById('registerButton');
      button.classList.toggle('expanded-button');
    }
    
    $(document).ready(function () {
        $("#RightToLeft").on("click", function () {
            $("#slide").animate({
                marginLeft: "0",
            });
            $(".top").animate({
                marginLeft: "100%",
            });
        });

        $("#LeftToRight").on("click", function () {
            $("#slide").animate({
                marginLeft: "50%",
            });
            $(".top").animate({
                marginLeft: "0",
            });
        });
    });
  </script>
</body>

</html>
