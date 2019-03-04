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
            font-size:16px;
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
        
        <div style="margin-top:60px">
            <form action="addCode.jsp">
            <table width="40%" border="1" align="center" cellspacing="3" cellpadding="3">
                <tr align="center">
                    <td><a2>Name</a2></td>
                    <td><a2><input type="text" name="name"/></a2></td>
                </tr>
                <tr align="center">
                    <td><a2>Mobile No.</a2></td>
                    <td><a2><input type="text" name="contactno"/></a2></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><a2><input type="submit" value="done"/></a2></td>
                </tr>
            </table>
            </form>
        </div>
            </body>
</html>
