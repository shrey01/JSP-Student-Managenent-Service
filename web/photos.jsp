
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<%@page import="java.sql.*"%>
<div class="w3-content w3-display-container">
                                         <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    Statement st=con.createStatement();

                    ResultSet rs = st.executeQuery("select * from photo ");
                  
                    while(rs.next()){
                        
                    
            %>
                                                     

            <img class="mySlides img-rounded" src="admin/slide/<%=rs.getString(1)  %>"  width="100%"  >
    <%
                             }}
                       
                        catch(Exception e){
                        out.println(e.toString());
                        }

                        %>   
  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>
  
<script>
  
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

</body>


                                      
                                            
                                      
                                       
        
