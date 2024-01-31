<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DreamDest - All Tours</title>
  <link rel="stylesheet" href="css/styles.css">
  <!-- Add your CSS links and styles here -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
  <style>
    /* Additional styles for the navbar and table */

    /* Define your custom styles for the table here */
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

  <h2>All Hotels</h2>
  <table border="10">
    <thead>
      <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Password</th>
        <!-- Add more table headers if needed -->
      </tr>
    </thead>
    <tbody>
      <c:forEach var="hotel" items="${hoteldata}">
        <tr>
          <td>${hotel.id}</td>
          <td>${hotel.username}</td>
          <td>${hotel.password}</td>
          <!-- Add more table data if needed -->
        </tr>
      </c:forEach>
    </tbody>
  </table>

  <!-- Add your scripts here if needed -->

  <script src="https://kit.fontawesome.com/032d11eac3.js" crossorigin="anonymous"></script>
</body>

</html>
