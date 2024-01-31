<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DreamDest - All Tour Bookings</title>
  <link rel="stylesheet" href="css/styles.css">
  <style>
     body {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
    }

    h2 {
      color: #333;
    }

    header {
      width: 100%;
      position: fixed;
      top: 0;
      background-color: #333;
      color: white;
      padding: 10px 0;
      text-align: center;
    }

    nav ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }

    nav ul li {
      display: inline;
      margin: 0 10px;
    }

    nav ul li a {
      color: white;
      text-decoration: none;
    }

    nav ul li a:hover {
      border-bottom: 2px solid white;
    }

    table {
      width: 80%;
      margin-top: 80px;
      border-collapse: collapse;
      background-color: lightblue;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin: 20px auto;
      border-radius: 10px;
    }

    th, td {
      padding: 15px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: red;
      font-size: 20pt;
      color: white;
    }

    tr {
      background-color: pink;
    }

    tr:hover {
      background-color: #ffb6c1;
    }

  
  </style>
</head>

<body>
  <header>
    <!-- Your header content here -->
    <nav>
      <ul>
        <li><a href="adminhome.jsp"><i class="fa fa-home" style="font-size:24px"></i> Home</a></li>
        <li><a href="viewallusers"><i class="fa fa-user" style="font-size:24px"></i> User Management</a></li>
        <li><a href="#"><i class="fa fa-hotel" style="font-size:24px"></i> Hotels And Tours</a></li>
        <li><a href="#"><i class="fa fa-envelope" style="font-size:24px"></i> Support</a></li>
        <li><a href="#"><i class='fas fa-user-alt' style='font-size:24px'></i></a></li>
      </ul>
    </nav>
  </header>

  <h2>All Tour Bookings</h2>
  <table border="10">
    <thead>
      <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Adults</th>
        <th>Children</th>
        <th>Vehicle Preference</th>
        <th>Hotel Preference</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="tourBooking" items="${tourbookdata}">
        <tr>
          <td>${tourBooking.id}</td>
          <td>${tourBooking.firstName}</td>
          <td>${tourBooking.lastName}</td>
          <td>${tourBooking.email}</td>
          <td>${tourBooking.phone}</td>
          <td>${tourBooking.adults}</td>
          <td>${tourBooking.children}</td>
          <td>${tourBooking.vehiclePref}</td>
          <td>${tourBooking.hotelPref}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  
  <br>
  <br>
  <br>
    
    
    <h2>All Hotel Bookings</h2>
  <table border="10">
    <thead>
      <tr>
        <th>ID</th>
        <th>Arrival Date</th>
        <th>Departure Date</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Adults</th>
        <th>Children</th>
        <th>Room Preference</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="booking" items="${hotelbookdata}">
        <tr>
          <td>${booking.id}</td>
          <td>${booking.arrival}</td>
          <td>${booking.departure}</td>
          <td>${booking.firstName}</td>
          <td>${booking.lastName}</td>
          <td>${booking.email}</td>
          <td>${booking.phone}</td>
          <td>${booking.adults}</td>
          <td>${booking.children}</td>
          <td>${booking.roomPref}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

  <!-- Add your scripts here if needed -->

  <script src="https://kit.fontawesome.com/032d11eac3.js" crossorigin="anonymous"></script>
</body>

</html>
