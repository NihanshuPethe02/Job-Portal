<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
<h1>Login</h1>
<p>Choose your login method:</p>
<a href="<%= request.getContextPath() %>/login/oauth2/authorization/google" class="button">Login with Google</a>
<a href="<%= request.getContextPath() %>/login/oauth2/authorization/github" class="button">Login with Github</a>
</body>
</html>