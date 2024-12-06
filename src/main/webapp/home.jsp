<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Art Gallery</title>
<!-- Include Bootstrap for styling -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }
    .hero {
        background: url('https://source.unsplash.com/1600x900/?art,painting') no-repeat center center/cover;
        height: 80vh;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        text-align: center;
    }
    .hero h1 {
        font-size: 3rem;
        text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
    }
    .hero p {
        font-size: 1.2rem;
        text-shadow: 1px 1px 6px rgba(0, 0, 0, 0.7);
    }
    .categories img {
        border-radius: 10px;
        transition: transform 0.3s;
    }
    .categories img:hover {
        transform: scale(1.05);
    }
    .navbar-dark .navbar-brand {
        color: white;
        font-weight: bold;
    }
    footer {
        background: #343a40;
        color: white;
        padding: 20px 0;
        text-align: center;
    }
    footer a {
        color: #ffc107;
        text-decoration: none;
    }
    footer a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Art Gallery</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="#categories">Categories</a></li>
            <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
            <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
        </ul>
    </div>
     <div class="ml-3">
            <a href="customerlogin" class="btn btn-outline-light mr-2">Customer Login</a>
            <a href="sellerlogin" class="btn btn-outline-light">Seller Login</a>
        </div>
</nav>
<div class="hero">
    <div>
        <h1>Welcome to the Online Art Gallery</h1>
        <p>Discover, admire, and purchase stunning artwork from talented artists around the globe.</p>
        <a href="#categories" class="btn btn-primary btn-lg mt-3">Explore Gallery</a>
    </div>
</div>

<section id="categories" class="container my-5">
    <h2 class="text-center mb-4">Art Categories</h2>
    <div class="row">
        <div class="col-md-4">
            <img src="images/image1.jpeg" alt="Abstract Art" class="img-fluid">
            <h4 class="text-center mt-2">Abstract Art</h4>
        </div>
        <div class="col-md-4">
            <img src="images/images3.jpeg" alt="Landscape Art" class="img-fluid">
            <h4 class="text-center mt-2">Landscape Art</h4>
        </div>
        <div class="col-md-4">
            <img src="images/images4.jpeg" alt="Modern Art" class="img-fluid">
            <h4 class="text-center mt-2">Modern Art</h4>
        </div>
    </div>
</section>
<section id="about" class="bg-light py-5">
    <div class="container">
        <h2 class="text-center">About Us</h2>
        <p class="text-center mt-3">Our online art gallery is a platform dedicated to connecting artists and art lovers. We showcase a wide variety of artwork from talented creators worldwide, allowing visitors to explore and purchase their favorite pieces. Join us to celebrate the beauty and diversity of art!</p>
    </div>
</section>

<!-- Contact Section -->
<section id="contact" class="container my-5">
    <h2 class="text-center">Contact Us</h2>
    <p class="text-center mb-4">Have questions or inquiries? Feel free to reach out to us!</p>
    <form class="mx-auto" style="max-width: 600px;">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" placeholder="Enter your name" required>
        </div>
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
        </div>
        <div class="form-group">
            <label for="message">Message</label>
            <textarea class="form-control" id="message" rows="4" placeholder="Enter your message" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Send Message</button>
    </form>
</section>

<footer>
    <p>&copy; 2024 Online Art Gallery | All rights reserved.</p>
    <p><a href="#navbarNav">Back to top</a></p>
</footer>

<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
