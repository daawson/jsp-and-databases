<%@ page import="java.text.DecimalFormat" %>
<html>
    <head>
        <title>Calculator</title>
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
                background-color: brown;
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
        <header>Calculator</header>
        <%
            double c = 0, a = 0, b = 0;
            if(request.getParameter("submit") != null){
                try {
                    a = Double.parseDouble(request.getParameter("fir"));
                    b = Double.parseDouble(request.getParameter("sec"));
                }catch(Exception e){}

                switch(request.getParameter("submit")){
                    case "+":
                        c = a+b;
                        break;
                    case "-":
                        c = a-b;
                        break;
                    case "*":
                        c = a*b;
                        break;
                    case "/":
                        c = a/b;
                        break;
                }
            }
        %>
        <form action="calculator.jsp" method="get">
            <table>
                <tr><td colspan="2">Eerste getaal</td><td colspan="2">Tweede getaal</td></tr>
                <tr><td colspan="2"><input type="text" name="fir" value="<%=c%>"></td><td colspan="2"><input type="text" name="sec"></td></tr>
                <tr><td><input type="submit" name="submit" value="+"></td>
                    <td><input type="submit" name="submit" value="-"></td>
                    <td><input type="submit" name="submit" value="*"></td>
                    <td><input type="submit" name="submit" value="/"></td>
                </tr>
            </table>
        </form>
    </body>
</html>