<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#">Job
            Portal Web App</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">Jobs</a></li>
<%--                <li class="nav-item"><a class="nav-link" href="/contact">Contact</a>--%>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <h2>Contact Us</h2>
    <form:form method="POST" action="/submitContact" modelAttribute="consumer">
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <form:input path="name" class="form-control" id="name" />
        </div>

        <div class="mb-3">
            <label for="phoneNumber" class="form-label">Phone Number</label>
            <form:input path="phoneNumber" class="form-control" id="phoneNumber" />
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <form:textarea path="description" class="form-control" id="description"></form:textarea>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <form:input path="email" class="form-control" id="email" />
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
</div>
</body>
</html>
