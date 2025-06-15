<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー情報編集</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%@include file = "header-navi.jsp"%>

	<h2>ユーザー情報編集</h2>

	<form action="chg-pass-servlet" method="post">
		パスワード： <input type="password" name="password" required><br><br>
		再入力： <input type="password" name="again" required><br><br>
		<input type="submit" value="パスワード変更">
	</form>

	<%@include file = "msg.jsp"%>

</body>
</html>