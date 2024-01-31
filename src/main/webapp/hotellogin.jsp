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
    </header>
    <div class="hotel-section">
      <div class="content">
        <span class="blink">
          <h3 align="center" style="color:red">${hotelMessage}</h3>
        </span>
        <br>
        <h2>Hotel Login</h2>
        <form method="post" action="checkhotellogin">
          <div>
            <input type="text" name="hotelUsername" placeholder="Hotel Username" required /><br />
            <input type="password" name="hotelPassword" placeholder="Hotel Password" required /><br />
            <button><input type="submit" value="Hotel Login"></button>
          </div>
        </form>
      </div>
    </div>
</body>
</html>
