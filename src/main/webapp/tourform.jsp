<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/hotelform.css"> <!-- Link to your CSS file -->
</head>
<body>
    <div class="container">
        <form method="post" action="newtour" enctype="multipart/form-data">
            <h2>Add a New Tour </h2>
            <div class="form-group">
                <label for="name">Tour Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="location">Tour Type</label>
                <input type="text" id="location" name="type" required>
            </div>
             <div class="form-group">
                <label for="startdate">Start Date</label>
                <input type="date" id="location" name="startdate" required>
            </div>
             <div class="form-group">
                <label for="enddate">End Date</label>
                <input type="date" id="location" name="enddate" required>
            </div>
            <div class="form-group">
                <label for="image">Image</label>
                <input type="file" id="image" name="image" required>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" required></textarea>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input type="number" id="price" name="price" required step="1">
            </div>
            <div class="form-group">
                <input type="submit" value="Save Tour">
            </div>
        </form>
    </div>
</body>
</html>

    