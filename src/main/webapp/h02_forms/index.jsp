<html>
    <head>
        <title>Deel 2 Forms</title>
    </head>
    <body>
        <h1>Deel 2</h1>
        <h3>Opdracht 8 & 9</h3>
        <%
            String errorMsg = " ";
            boolean hasNumber = false;
            int currentNumber = 0;

            if(request.getParameter("submit") != null) {

                String input = request.getParameter("number");
                //currentNumber = Integer.parseInt(input);

                try {
                    currentNumber = Integer.parseInt(input);
                    hasNumber = true;
                } catch (Exception e) {
                    errorMsg = input + " is geen geldige invoer!";
                    //errorMsg = e.getClass().getCanonicalName() + " " + e.getMessage() + "<br>"+input+" is geen geldige invoer!";
                }
            }

            if(request.getParameter("recount") != null){
                int re = Integer.parseInt(request.getParameter("prevnumber"));
                currentNumber = re;

                if(request.getParameter("recount").equals("Vorige")){
                    currentNumber -= 1;
                    hasNumber = true;
                }else if(request.getParameter("recount").equals("Volgende")){
                    currentNumber += 1;
                    hasNumber = true;
                }
            }
        %>
        <form action="index.jsp" method="GET">
            <table>
                <tr>
                    <td><label for="num">Nummer: </label></td>
                    <td colspan="2"><input type="text" name="number" id="num"></td>
                    <td style="color: red"> <%=errorMsg%></td>
                    <td><input type="hidden" name="prevnumber" value="<%=currentNumber%>"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="OK"></td>
                    <%
                        if(hasNumber){
                            out.print("<td><input type='submit' name='recount' value='Vorige'></td>");
                            out.print("<td><input type='submit' name='recount' value='Volgende'></td>");
                        }
                    %>
                </tr>
            </table>
        </form>
        <%
            if(hasNumber) {
                out.print("<p>");
                for (int i = 1; i <= 10; i++) {
                    out.println(i + " * " + currentNumber + " = " + (i * currentNumber) + "<br>");
                }
                out.print("</p>");
            }
        %>

        <h3>Opdracht 10</h3>
        <form action="fahrenheit.jsp" method="get">
            <table>
                <tr>
                    <td><label for="degInput">Graden Celsius</label></td>
                    <td><input type="text" id="degInput" name="degInput"></td>
                    <td><input type="submit" name="submit" value="Omrekenen"></td>
                </tr>
            </table>
        </form>

        <h3>Opdracht 11</h3>
        <%
            int highest = 0;
            int lowest = highest;
            if(request.getParameter("checkinput") != null){
                highest = Integer.parseInt(request.getParameter("highest"));
                lowest = Integer.parseInt(request.getParameter("lowest"));
                int input = Integer.parseInt(request.getParameter("ginput"));

                if(highest == 0) {lowest = input; }

                if(input > highest) {highest = input;}
                else if(lowest > input){lowest = input;}

            }
        %>
        <form action="index.jsp" method="get">
            <table>
                <tr>
                    <td colspan="4"><label for="ginput">Voer een geheel getaal in!</label></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" id="ginput" name="ginput"></td>
                    <td colspan="2"><input type="submit" name="checkinput" value="OK"></td>
                </tr>
                <tr>
                    <td colspan="2">Laagste getaal: <%=lowest%></td>
                    <td colspan="2">Hoogste getaal: <%=highest%></td>
                </tr>
            </table>
            <input type="hidden" name="lowest" value="<%=lowest%>">
            <input type="hidden" name="highest" value="<%=highest%>">
        </form>

        <h3><a href="dcalculator.jsp">Opdracht 12</a></h3>
        <h3><a href="calculator.jsp">Opdracht 13</a></h3>
    </body>
</html>