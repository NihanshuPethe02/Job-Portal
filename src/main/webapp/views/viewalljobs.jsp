<%--333333333333333333333333333333333333333333333333333333333333333333--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%--Head Start--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
</head>
<body>
<%--<nav class="navbar navbar-expand-lg navbar-light bg-warning">--%>
<%--    <div class="container">--%>
<%--        <a class="navbar-brand fs-1 fw-medium" href="#">Job Portal Web App</a>--%>
<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"--%>
<%--                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navbarNav">--%>
<%--            <ul class="navbar-nav ms-auto">--%>
<%--                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>--%>
<%--                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>--%>
<%--                <li class="nav-item"><a class="nav-link" href="/">Contact</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#">Job Portal Web App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
            </ul>
            <form class="d-flex" action="keyword" method="GET">
                <input class="form-control me-2" type="text" name="keyword" placeholder="Search Jobs" aria-label="Search" required>
                <button class="btn btn-outline-dark" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<%--Head End--%>
<div class="container mt-5">
    <h2 class="mb-4 text-center font-weight-bold">Job Post List</h2>

    <div class="row row-cols-2">
        <ab:forEach var="jobPost" items="${jobPosts}">
            <div class="col mb-4">
                <div class="card border-dark bg-dark text-white">
                    <div class="card-body">
                        <h5 class="card-title">${jobPost.postProfile}</h5>
                        <p class="card-text">
                            <strong>Experience Required:</strong>
                                ${jobPost.reqExperience} years
                        </p>
                        <p class="card-text">
                            <strong>Tech Stack Required:</strong>
                        <ul>
                            <ab:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </ab:forEach>
                        </ul>
                        </p>
                    </div>
                    <div class="card-footer">
                        <a href="jobdetail?postId=${jobPost.postId}" class="btn btn-info">View Details</a>
                    </div>
                </div>
            </div>
        </ab:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</body>
</html>
