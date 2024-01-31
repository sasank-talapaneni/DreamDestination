<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/hotelform.css"> <!-- Link to your CSS file -->
</head>
<body>
    <div class="container">
        <form method="post" action="newhotel" enctype="multipart/form-data">
            <h2>Add a New Hotel </h2>
            <div class="form-group">
                <label for="name">Hotel Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="location">Location</label>
                <input type="text" id="location" name="location" required>
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
                <input type="submit" value="Save Hotel">
            </div>
        </form>
    </div>
</body>
</html>

    