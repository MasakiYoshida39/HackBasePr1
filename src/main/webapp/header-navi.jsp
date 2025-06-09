<%@ page pageEncoding="UTF-8"%>

<%-- ユーザIDの表示 --%>
<%
    String userId = (String) session.getAttribute("email");

    if (userId == null) {
        request.setAttribute("errorMsg", "再ログインをお願いします。");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } else {
%>

    <hr>
     <%--  メールアドレス：<%= email %> --%>
   
    <hr>

    <%-- ナビ表示 --%>
    ｜<a href="logout-servlet">ログアウト</a>｜
    <hr>

<%
    }
%>
