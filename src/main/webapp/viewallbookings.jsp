<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DreamDest</title>
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css"
    integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
    integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="styles.css"> <!-- Add a separate CSS file for styling cards -->
  <style>
  /* styles.css */
.card-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 20px;
}

.card {
  background-color: #fff;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  border-radius: 10px;
  width: 300px;
  padding: 20px;
  margin: 10px;
  transition: transform 0.3s;
}

.card:hover {
  transform: scale(1.05);
}

.card-header {
  background-color: #333;
  color: #fff;
  padding: 10px;
  border-radius: 10px 10px 0 0;
  font-weight: bold;
}

.card-content {
  padding: 10px;
}

.card-content p {
  margin: 0;
}

/* You can customize the styles further based on your preferences */
  
  
  </style>
</head>

<body style="background-color: #f0f0f0;">
  <header>
    <nav>
      <ul>
        <li><a href="index.jsp"><i class="fa fa-home" style="font-size:24px"></i> Home</a></li>
        <li><a href="viewallhotelsinfo"><i class="fa fa-hotel" style="font-size:24px"></i>Hotels</a></li>
        <li><a href="viewalltoursinfo"><i class="fa fa-route" style="font-size:24px"></i>Tours</a></li>
      </ul>
    </nav>
  </header>

  <h2 style="text-align: center; color: #333;">My Tour Bookings</h2>
  <div class="card-container">
    <c:forEach var="tour" items="${toursbooklist}">
      <div class="card">
        <div class="card-header">Booking ID: ${tour.id}</div>
        <div class="card-content">
          <p><strong>Name:</strong> ${tour.firstName} ${tour.lastName}</p>
          <p><strong>Email:</strong> ${tour.email}</p>
          <p><strong>Phone:</strong> ${tour.phone}</p>
          <p><strong>Adults:</strong> ${tour.adults}</p>
          <p><strong>Children:</strong> ${tour.children}</p>
          <p><strong>Vehicle Preference:</strong> ${tour.vehiclePref}</p>
          <p><strong>Room Preference:</strong> ${tour.hotelPref}</p>
        </div>
      </div>
    </c:forEach>
  </div>

  <h2 style="text-align: center; color: #333;">My Hotel Bookings</h2>
  <div class="card-container">
    <c:forEach var="hotel" items="${hotelsbooklist}">
      <div class="card">
        <div class="card-header">Booking ID: ${hotel.id}</div>
        <div class="card-content">
          <p><strong>Name:</strong> ${hotel.firstName} ${hotel.lastName}</p>
          <p><strong>Email:</strong> ${hotel.email}</p>
          <p><strong>Phone:</strong> ${hotel.phone}</p>
          <p><strong>Adults:</strong> ${hotel.adults}</p>
          <p><strong>Children:</strong> ${hotel.children}</p>
          <p><strong>Room Preference:</strong> ${hotel.roomPref}</p>
           <p><strong>Check-In:</strong> ${hotel.arrival}</p>
            <p><strong>Check-Out:</strong> ${hotel.departure}</p>
        </div>
      </div>
    </c:forEach>
  </div>

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
  <script src="https://kit.fontawesome.com/032d11eac3.js" crossorigin="anonymous"></script>
</body>

</html>
