<%-- 
    Document   : logout
    Created on : 26 Mar 2026, 2:35:24?pm
    Author     : anson
--%>

<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>