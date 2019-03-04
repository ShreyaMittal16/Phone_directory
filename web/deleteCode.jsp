<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager" %>

<%
     String name=request.getParameter("name");
     String contactno=request.getParameter("contactno");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement st=con.prepareStatement("select * from subscriberTable where name=?and category=? and hospital=? and contactno=?");
            st.setString(1,name);
            st.setString(2,contactno);
            ResultSet rs=st.executeQuery();
            if(rs.next())
            {
                PreparedStatement st1=con.prepareStatement("delete from subscriberTable where name=? and contactno=?");
            st1.setString(1,name);
            st1.setString(2,contactno);
            st1.executeUpdate();
            response.sendRedirect("homePage.jsp");
            } 
            else
            {
                out.println("enteries don not match.");
            }
%>