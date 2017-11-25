<%-- 
    Document   : feature
    Created on : Jul 4, 2017, 2:56:16 PM
    Author     : sangamkumar
--%>

        <%@page import="java.sql.*"%>
       <!-- <div class="row">
            <div class="col-xs-12 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <h2 class="text-center text-primary">Features</h2>
                <hr>
                <div class="media wow fadeInRight">
                    <h3 class="text-primary" style="border-bottom: 2px solid #555;">Core Java</h3>
                 
                    <div class="media-body media-middle">
                        <p>Introduction to Object Oriented Software development through Java. Classes and 
                            Objects, Extending classes, Polymorphism, Interfaces, Nested classes and interfaces,
                            Exceptions, Strings, Packages, The I/O Package.</p>
                    </div>
                    <div class="media-right">
                        <i class="icon-lg ion-mouse"></i>
                    </div>
                </div>
                <hr>
                <div class="media wow fadeIn">
                    <h3 class="text-primary" style="border-bottom: 2px solid #555;">Advanced Java</h3>
                    
                    <div class="media-left">
                        <i class="icon-lg ion-coffee"></i>
                    </div>
                    <div class="media-body media-middle">
                        <p>Event Handling, AWT, Swing, Applets, Multi Threading, The collection frameworks, Networking,
                            Java Server Pages (JSP), Java Servlet, Enterprise Java Beans(EJB), Java Messaging Service (JMS), 
                            Java Database connectivity (JDBC)</p>
                    </div>
                </div>
                <hr>
                <div class="media wow fadeInRight">
                    <h3 class="text-primary" style="border-bottom: 2px solid #555;">Design patterns, frameworks & Web Design</h3>
                    
                    <div class="media-body media-middle">
                        <p>Singleton, Factory Method, Builder, Adapter, Bridge, Composite, Proxy, Template Method, 
                            Iterator, Observer, Visitor etc. Spring MVC, Struts 2, Hibernate, PHP, Java Script, BootStrap, 
                            Ajax, AngularJS, Node.js, jQuery, Meteor, etc. </p>
                    </div>
                    <div class="media-right">
                        <i class="icon-lg ion-ios-snowy"></i>
                    </div>
                </div>
                <hr>
                
            </div>
        </div>-->
       
        <div class="row">
            <div class="col-md-12">
                <div class="header-content text-center text-primary" >
                <div class="inner" style="border-bottom: 1px solid #555; border-top: 1px solid #555;">
                <h3 class="cursive">
                    Review
                </h3>
                 <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                    Statement st=con.createStatement();

                    ResultSet rs = st.executeQuery("select * from feed order by rand() limit 10");
                  
                    while(rs.next()){
                        
                    
            %>

                </div>
                </div>
                
                <br>
               <table>
                   
                   <tr><td><h4> #<%=rs.getString("msg")  %></h4>&nbsp&nbsp by &nbsp-&nbsp<%=rs.getString(2)  %> <% } %></td></tr> 
               </table>
            </div>

        </div>
                        <%
                             }
                       
                        catch(Exception e){
                        out.println(e.toString());
                        }

                        %>