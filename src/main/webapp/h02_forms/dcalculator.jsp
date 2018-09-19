<%@ page import="java.text.DecimalFormat" %>
<html>
    <head>
        <title>Degrees Calculator</title>
        <style>
            body{
                margin: 15px auto 0;
                width: 500px;
                height: 240px;
                border: 1px dotted darkred;
                border-radius: 10px;
                text-align: center;
            }
            header{
                float:left;
                width: 500px;
                height: 40px;
                line-height: 40px;
                background-color: red;
                border-radius: 10px 10px 0px 0px;
                font-weight: bold;
            }

            table{
                float:left;
                width: 500px;
                height: 200px;
                align-content: center;
            }

            td{
                width: 250px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <header>Degrees</header>
        <%
            int celsius = 0, fahrenheit = 0, type = 0;
            String cString = "";
            String fString = "";

            if(request.getParameter("submit") != null){
                celsius = Integer.parseInt(request.getParameter("gcel"));
                fahrenheit = Integer.parseInt(request.getParameter("gfah"));

                try {
                    celsius = Integer.parseInt(request.getParameter("cel"));
                    type = 0;
                }catch(Exception e){ type = 1;}
                try {
                    fahrenheit = Integer.parseInt(request.getParameter("fah"));
                    type = 1;
                }catch(Exception e){ type = 0;}

                DecimalFormat df = new DecimalFormat("#");

                if(type == 0){
                    fahrenheit = (int)Math.round(celsius * 1.8 + 32);
                    fString = ""+fahrenheit;
                    celsius = 0;
                    cString = "";
                }else if(type == 1){
                    celsius = (int)Math.round((fahrenheit-32) * .5556);
                    cString = ""+celsius;
                    fahrenheit = 0;
                    fString = "";
                }
            }
        %>
        <form action="dcalculator.jsp" method="get">
            <table>
                <tr><td>Celsius</td><td>Fahrenheit</td></tr>
                <tr><td><input type="text" name="cel" value="<%=cString%>"></td><td><input type="text" name="fah" value="<%=fString%>"></td></tr>
                <tr><td colspan="2"><input type="submit" name="submit" value="OK"></td></tr>
            </table>
            <input type="hidden" name="gcel" value="<%=celsius%>">
            <input type="hidden" name="gfah" value="<%=fahrenheit%>">
        </form>
    </body>
</html>