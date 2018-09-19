<%@ page import="java.util.Calendar"  %>
<html>
    <head>
        <title>001 Werken met JSP</title>
        <style>
            td, th{
                padding: 0;
                border-collapse: collapse;
                border: 1px solid black;
            }
            table{
                border-spacing: 0;
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <h3>Opdracht 1</h3>
        <%
            double total = 113.0;
            double split = total/4;

        %>
        <table border="1">
            <tr>
                <th>Naam</th>
                <th>Totaal &euro; <%=total%></th>
            </tr>
            <tr>
                <td>Jan</td>
                <td>&euro;<%=split%></td>
            </tr>
            <tr>
                <td>Ali</td>
                <td>&euro;<%=split%></td>
            </tr>
            <tr>
                <td>Jeanette</td>
                <td>&euro;<%=split%></td>
            </tr>
            <tr>
                <td>Piet</td>
                <td>&euro;<%=split%></td>
            </tr>
        </table>
        <br>

        <h3>Opdracht 2</h3>
        <%
            int sec = 1;
            int min = sec*60;
            int hh = min*60;
            int day = hh*24;
            int week = day*7;
            int year = day*365;
        %>
        <table border="1">
            <tr>
                <th>Eenheid</th>
                <th>Aantal seconden</th>
            </tr>
            <tr>
                <td>Minuut</td>
                <td><%=min%></td>
            </tr>
            <tr>
                <td>Uur</td>
                <td><%=hh%></td>
            </tr>
            <tr>
                <td>Dag</td>
                <td><%=day%></td>
            </tr>
            <tr>
                <td>Week</td>
                <td><%=week%></td>
            </tr>
            <tr>
                <td>Jaar</td>
                <td><%=year%></td>
            </tr>
        </table>

        <h3>Opdracht 3</h3>
        <%
            Calendar nu = Calendar.getInstance();
            int currentHour = nu.get(Calendar.HOUR_OF_DAY);

            String welcome = "Goedemorgen";
            if(currentHour > 12 && currentHour < 18){welcome = "Goedemiddag";}
            else if(currentHour > 18){welcome = "Goedeavond";}
        %>
        <p>
            <%=welcome%><br>
            <b>Huidige uur: <%=currentHour%></b>
        </p>

        <h3>Opdracht 4</h3>
        <%
            long a = 0L;
            long b = 1L;
            long c = 0L;
            long maxTotal = 900000000000000000L;

            out.print("<p style='width: auto; word-break: break-all; '>1,");
            while(c <= maxTotal){
                c = a+b;
                out.print(c+",");
                a = b;
                b = c;
            }
            out.print("</p>");
        %>

        <h3>Opdracht 5</h3>
        <table style="width: 241px; height: 241px;">
        <%
            int cl = 1;
            for(int y = 0; y < 8; y++){
                out.print("<tr>");
                for(int x = 0; x < 8; x++){

                    if(y % 2 == 0 && x % 2 == 0) cl = 0;
                    else if(y % 2 != 0 && x % 2 == 0) cl = 1;
                    else if(y % 2 != 0 && x % 2 != 0) cl = 0;
                    else if(y % 2 == 0 && x % 2 != 0) cl = 1;

                    if(cl == 0){
                        out.print("<td style='background-color: black;'></td>");
                    }
                    else{
                        out.print("<td style='background-color: white;'></td>");
                    }
                }
                out.print("</tr>");
            }
        %>
        </table>

        <h3>Opdracht 6</h3>
        <%
            out.print("<p>");
            for(int i = 1; i <= 10; i++){
                out.println(i + " * 5 = " + (i*5)+"<br>");
            }
            out.print("</p>");
        %>

        <h3>Opdracht 7</h3>
        <table style="width: 240px; height: 240px; text-align: center;">
            <%
                for(int a2 = 1; a2 <= 10; a2++){

                    out.print("<tr>");

                    for(int b2 = 1; b2 <= 10; b2++){
                        if(a2 == 1) out.print("<th>"+b2+"</th>");
                        else if(b2 == 1) out.print("<th>"+a2+"</th>");
                        else {
                            out.print("<td>" + (a2 * b2) + "</td>");
                        }
                    }
                    out.print("</tr>");
                }
            %>
        </table>
    </body>
</html>