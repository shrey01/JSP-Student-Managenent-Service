<%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>

        <%@page import="java.sql.*"%>
<div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="margin-top-0 wow fadeIn">Get in Touch</h2>
                    <hr class="primary">
                    <p> Fill out the form below and we'll get back to you as soon as possible.</p>
                </div>
                <div class="col-lg-12 text-center">
                    <form class="contact-form row" method="post" action="https://heavywater.000webhostapp.com/mail3.php" >
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" placeholder="Name" name="n1" required>
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" placeholder="Email" name="n2" required>
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" placeholder="Phone" name="n3" maxlength="10" required>
                        </div>
                        <div class="col-md-12">
                            <label></label>
                            <textarea class="form-control" rows="9" placeholder="Your message here.." name="n4" maxlength="300" required></textarea>
                        </div>
                        <div class="col-md-4 col-md-offset-4">
                            <label></label>
                            <input type="submit" data-toggle="modal" class="btn btn-primary btn-block btn-lg" value="Send" name="send" />
                        </div>
                        <%
                            if(request.getParameter("send")!=null){
                                String name, email, phone, msg;
                                name=request.getParameter("n1");
                                email=request.getParameter("n2");
                                phone=request.getParameter("n3");
                                msg=request.getParameter("n4");
                                if(msg.length() <300){
                                    try{
                                        Class.forName("com.mysql.jdbc.Driver");	
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
                                        Statement st=con.createStatement();
                                        String sql="insert into feed values('"+name+"','"+email+"','"+phone+"','"+msg+"')";
                                        int res=st.executeUpdate(sql);
                                        if(res!=0){
                                                out.println("<br>Thanks for your Feedback .W'll Contect you as soon as possible");
                                        }
                                        else
                                                out.println("<br>error404!!!.");
                                }catch(Exception e)
                                {
                                        out.println(e.toString());
                                }
                                }
                            }

                        %>
                        <%-- 
    Document   : Logout
    Created on : Sept 18, 2017,9:40:52 PM
    Author     : shreyaskar nath tripathi
--%>
                    </form>
                </div>
            </div>
        </div>