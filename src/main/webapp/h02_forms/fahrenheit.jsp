<%@ page import="java.text.DecimalFormat" %>

<html>

<head><title>Fahrenheit - Opdracht 10</title></head>
<body>
    <%
        if(request.getParameter("submit") != null){
            int celsius = 0;
            double fahrenheit = 0f;

            try{
                celsius = Integer.parseInt(request.getParameter("degInput"));
            }catch(Exception e){
                out.print("Er ging iets mis! Maar... ");
            }

            fahrenheit = celsius * 1.8 + 32;


            DecimalFormat df = new DecimalFormat("#");
            out.print(celsius + "&#8451; is " + df.format(fahrenheit) + " &#8457; !");

        }
    %>
</body>
</html>

