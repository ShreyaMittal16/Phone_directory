<html>
    <style>
        a1{
        font-size:45px;
        color:blue;
        }
        a{
            font-size:20px;
            color:blue;
        }
        a:hover{
            color:red;
            background: whitesmoke;
        }
        a2{
            font-size: 16px;
            color:red;
       }
    </style>
       
    <body>
        <div align="center"><a1>Phone Directory Application</a1></div>
        <div style="margin-top:80px">
        <table align="center" border="1" cellpadding="8">
            <tr><td><a href="add.jsp" >Add Subscriber</a></td></tr>
            <tr><td><a href="delete.jsp">Delete Subscriber</a></td></tr>
            <tr><td><a href="view.jsp">View All Subscribers</a></td></tr>
        </table>
        </div>
        
        <div style="margin-top:30px">
            <table align="center" width="50%" border="1" cellspacing="2">
                <tr align="center">
                    <td><a2>Name</a2></td>
                    <td><a2>Contact No.</a2></td>
                </tr>
            </table> 
            
            <%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager,java.util.ArrayList" %>

<% 
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement st=con.prepareStatement("select * from subscriberTable");
            ResultSet rs=st.executeQuery();
            ArrayList list1=new ArrayList();
            ArrayList list2=new ArrayList();
            while(rs.next())
            {
                list1.add(rs.getString(1));
                list2.add(rs.getString(2));
            }
            for(int i=0;i<list1.size();i++)
            {
                %>
                <tr align="center">
                    <td><%=list1.get(i)%></td>
                    <td><%=list2.get(i)%></td>
                   </tr>    
                <%
            }
            %>           

        </div>
        
    </body>
</html>
