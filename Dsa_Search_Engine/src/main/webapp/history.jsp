<%@page import = "java.util.ArrayList"%>
<%@page import  = "com.accio.HistoryResult"%>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Goofle A Simple Search Engine</title>
        <style>
           @import url('https://fonts.googleapis.com/css2?family=Rubik&display=swap');
           body{
           font-family: 'Rubik', sans-serif;
           }
         input{
         width:30%;
         }
           button:hover{
                     color: white;
                     background-color: #202124;
                     transition: color, background-color 0.3s;
                     border: 1px solid white;

                 }
           .logo{
           height:60px;
           margin-top:100px;
           }
           table{
            color:white;
            text-align : justify;
            margin-left: 28%;
            font-size: 20px;
            width:43%;
            margin-top:50px;
           }
           a:link{
           color: #8AB4F8;
           text-decoration:none;
           }
           a:visited {
           color: #8AB4F8;
           }
           a:hover {
             text-decoration: underline;
           }
          td{
          padding :2px;
          }
          h2{
          margin-top:30px;
          }

          </style>
    </head>
    <body>
    <form action = "Search" class="hero">

                    <input type = "text" name = "Keyword"></input>
                    <button type = "Submit">Submit</button>
                    <button type = "Submit" formaction="History">History</button>
                    <h2>History</h2>
                 </form>
        <table>
            <%  ArrayList<HistoryResult> results = (ArrayList<HistoryResult>)request.getAttribute("results");
                for(HistoryResult result : results)
                {
            %>
               <tr> <td><%out.println(result.getKeyword());%></td></tr>
               <tr> <td><a target=_blank; href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td></tr>
            <tr>
            <td>
            <hr>
            </br>
            </td>
            </tr>
            <% } %>
        </table>
    </body>
</html>