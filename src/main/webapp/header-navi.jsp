<%@ page pageEncoding="UTF-8"%>

<%-- ユーザIDの表示 --%>
<%
    String userId = (String) session.getAttribute("userId");

    if (userId == null) {
        request.setAttribute("errorMsg", "再ログインをお願いします。");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } else {
%>

    <hr>
    ユーザID：<%= userId %>
    <hr>

    <%-- ナビ表示 --%>
    ｜<a href="logout-servlet">ログアウト</a>｜
    <hr>

<%
    }
%>
