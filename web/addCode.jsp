<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager" %>

<%
     String name=request.getParameter("name");
     String contactno=request.getParameter("contactno");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement st=con.prepareStatement("insert into subscriberTable values(?,?)");
            st.setString(1,name);
            st.setString(2,contactno);
            st.executeUpdate();
            response.sendRedirect("MenuPage.jsp");    
           
%> 