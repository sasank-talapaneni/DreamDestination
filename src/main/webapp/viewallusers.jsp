<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DreamDest</title>
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
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
    <nav>
      <ul>
        <li><a href="adminhome.jsp"><i class="fa fa-home" style="font-size:24px"></i> Home</a></li>
        <li><a href="viewallusers"><i class="fa fa-user" style="font-size:24px"></i> User Management</a></li>
        <li><a href="viewalltourbookings"><i class="fa fa-hotel" style="font-size:24px"></i> Hotels And Tours</a></li>
        <li><a href="#"><i class="fa fa-envelope" style="font-size:24px"></i> Support</a></li>
        <li><a href="#"><i class='fas fa-user-alt' style='font-size:24px'></i></a></li>
      </ul>
    </nav>
  </header>
  
 
  <br>
  <br>
  <br>
   <br>
  <br>
  <br>
  <br>
   <br>
  <br>
  <br>
  
  <h2>User's Logins</h2>
  <table border="10">
    <thead>
      <tr>
        <th>ID</th>
        <th><i class='fas fa-portrait' style='font-size:24px'></i></th>
        <th><i class='far fa-calendar-alt' style='font-size:24px'></i></th>
        <th><i class="fa fa-envelope" style="font-size:24px"></i></th>
        <th><i class='fas fa-city' style='font-size:24px'></i></th>
        <th><i class='fas fa-phone' style='font-size:24px'></i></th>
        <th><i class='fas fa-lock-open' style='font-size:24px'></i></th>
         <th>View User</th>
         <th>Delete User</th>
         
      </tr>
    </thead>
    <tbody>
      <c:forEach var="user" items="${userdata}">
        <tr>
          <td>${user.id}</td>
          <td>${user.name}</td>
          <td>${user.dateofbirth}</td>
          <td>${user.email}</td>
          <td>${user.city}</td>
          <td>${user.contact}</td>
          <td>${user.active}</td>
            <td>
<a href='<c:url value="view?id=${user.id}"></c:url>'>View</a>
</td>
<td>
<a href='<c:url value="delete/${user.id}"></c:url>'>Delete</a>
</td>
          
        </tr>
      </c:forEach>
    </tbody>
  </table>

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
  
  <br>
  <br>
  <br>
   <h2>All Tours Guides</h2>
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
      <c:forEach var="tour" items="${tourdata}">
        <tr>
          <td>${tour.id}</td>
          <td>${tour.username}</td>
          <td>${tour.password}</td>
          <!-- Add more table data if needed -->
        </tr>
      </c:forEach>
    </tbody>
  </table>

<br>
<br>
 <h2>All Hotels Managers</h2>
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

</body>

</html>