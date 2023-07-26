<%@page import = "java.util.ArrayList"%>
<%@page import  = "com.accio.SearchResult"%>
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
                <h2>Search Results</h2>
             </form>
        <table>
            <%  ArrayList<SearchResult> results = (ArrayList<SearchResult>)request.getAttribute("results");
                for(SearchResult result : results)
                {
            %>
            <div class="one-result">
            <tr>
               <td><%out.println(result.getTitle());%></td>
            </tr>

            <tr>
               <td><a target=_blank; href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
            </tr>
            <tr>
            <td>
            <hr>
            </br>
            </td>
            </tr>
            </div>
            <% } %>
        </table>
    </body>
</html>