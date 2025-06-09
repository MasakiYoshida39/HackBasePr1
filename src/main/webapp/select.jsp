<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>マイページ</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%@include file = "header-navi.jsp"%>
	<div class="container mt-5">
    <div class="card shadow">
      <div class="card-body">
        <div class="d-flex align-items-center mb-4">
          <img src="/images/default-icon.png" alt="ユーザーアイコン" class="rounded-circle me-3" width="80" height="80">
          <div>
            <h4 class="mb-0">ユーザー名: </h4>
            <p class="text-muted mb-1">メール: taro@example.com</p>
            <p class="text-muted">所属: フリーランス開発者</p>
          </div>
        </div>
        
        <h5>プロフィール</h5>
        <p>JavaとSpring Bootが得意です。ハッカソンで仲間と切磋琢磨するのが好きです！</p>

        <hr>

        <h5>参加中のハッカソン</h5>
        <ul class="list-group mb-3">
          <li class="list-group-item">🌱 環境問題を考えるハッカソン</li>
          <li class="list-group-item">🤖 AIチャットボット開発ハッカソン</li>
        </ul>

        <h5>最近の投稿</h5>
        <ul class="list-group mb-3">
          <li class="list-group-item">📢「チーム募集してます！」投稿</li>
          <li class="list-group-item">💬「UIデザインってどうしてる？」コメント</li>
        </ul>

        <div class="d-flex justify-content-end">
          <a href="/edit-profile" class="btn btn-primary me-2">プロフィール編集</a>
         
        </div>
      </div>
    </div>
  </div>


</body>
</html>