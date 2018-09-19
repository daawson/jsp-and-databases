<html>
    <head>
        <title>Opdracht 8</title>
    </head>
    <body>
        <%
            String errorMsg = "";

            if(request.getParameter("submit") != null){
                String input = request.getParameter("number");
                int par = 0;
                try {
                   par  = Integer.parseInt(input);
                } catch(Exception e){
                    errorMsg = input+" is geen geldige invoer!";
                    //errorMsg = e.getClass().getCanonicalName() + " " + e.getMessage() + "<br>"+input+" is geen geldige invoer!";
                }

                if(par != 0) {
                    out.print("<p>");
                    for (int i = 1; i <= 10; i++) {
                        out.println(i + " * " + par +" = " + (i * par) + "<br>");
                    }
                    out.print("</p>");
                }
            } //https://github.com/daawson/jsp-and-databases.git

        %>
        <form action="opdracht8.jsp" method="GET">
            <table>
                <tr>
                    <td><label for="num">Nummer: </label></td>
                    <td><input type="text" name="number" id="num"></td>
                    <td style="color: red"><%=errorMsg%></td>
                </tr>
                <tr>
                    <td id="switch" name=""></td>
                    <td><input type="submit" name="submit" value="OK"></td>
                </tr>
            </table>
        </form>
    </body>
</html>