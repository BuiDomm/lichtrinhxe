<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Job Seekers</title>
</head>
<body>
<h1>Danh sách Job Seekers</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="jobSeeker" items="${jobSeekers}">
        <tr>
            <td>${jobSeeker.id}</td>
            <td>${jobSeeker.fullName}</td>
            <td>${jobSeeker.email}</td>
            <td>
                <a href="/jobseeker/${jobSeeker.id}">Xem</a>
                <form action="/jobseeker/${jobSeeker.id}" method="post" style="display:inline;">
                    <input type="hidden" name="_method" value="delete"/>
                    <button type="submit">Xóa</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<h2>Thêm Job Seeker</h2>
<form action="/jobseeker" method="post">
    <label>Name:</label>
    <input type="text" name="fullName" required/>
    <label>Email:</label>
    <input type="email" name="email" required/>
    <label>Password:</label>
    <input type="password" name="password" required/> <!-- Thêm trường mật khẩu -->
    <button type="submit">Thêm</button>
</form>
</body>
</html>
