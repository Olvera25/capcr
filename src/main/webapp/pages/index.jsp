<%-- 
    Document   : index
    Created on : 2/04/2019, 12:23:45 AM
    Author     : LabTW06
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%-- dentro de estos van los comentarios --%>
        <% System.out.println("");%>
        <%= new Date() %>
        <h1>Proyecto UNSIS clinica</h1>
        <form action="index.jsp" method="GET">
            <p>
                Numero : <input type="text" name="numero">
                <input type="submit" name="Enviar"
            </p>
        </form>
            <%-- <%
                String numero = request.getParameter("numero");
                System.out.println("El numero es: "+numero);
            %> --%>
            
            <%
                int numero = Integer.parseInt(request.getParameter("numero"));
                
                Long factorial = new Long(1);
                
                if(numero >= 0){
                    for(int i = 1; i <= numero ; i++ ){
                        factorial *= i;
                    }
                    out.println("<p> El resultado de " + numero + " != " + factorial + "</p>");
                }else{
                    out.println("<p> Ingrese un valor mayor igual a cero </p>");
                }
            %>
       
    </body>
</html>
