


<%@ page import="java.io.PrintWriter" %>



<%--
  Created by IntelliJ IDEA.
  User: Abhishek
  Date: 4/19/2019
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <title>Display</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


<style media="print">

    @media print {
        #printPageButton {
            display: none;
        }

    }

</style>


    <link rel="stylesheet" type="text/css" href="dispstyle.css">


</head>
<body>
<%
    String gen;
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String cont=request.getParameter("phn");
    String co=request.getParameter("cobj");
    String course[]=request.getParameterValues("course");
    String agg[]=request.getParameterValues("agg");
    String year[]=request.getParameterValues("year");
    String inst[]=request.getParameterValues("inst");
    String univ[]=request.getParameterValues("uni");
    String acourse[]=request.getParameterValues("acourse");
    String ainst[]=request.getParameterValues("ainst");
    String dur[]=request.getParameterValues("ayear");
    String pname[]=request.getParameterValues("pname");
    String pplat[]=request.getParameterValues("pplat");
    String des[]=request.getParameterValues("des");
    String extra=request.getParameter("extra");
    String speak[]=request.getParameterValues("speak");
    String read[]=request.getParameterValues("read");
    String write[]=request.getParameterValues("write");
    String hobb=request.getParameter("hobbies");
    String plang=request.getParameter("plang");
    String dlang=request.getParameter("dlang");
    String ide=request.getParameter("ide");
    String dob=request.getParameter("date");
    String faname=request.getParameter("faname");
    String gender=request.getParameter("gender");
    PrintWriter printWriter=response.getWriter();
    int len=course.length;
    int alen=acourse.length;
    int plen=pname.length;
    int llen=speak.length;
%>

<div class="disp" id="printpdf" >
<h3><%=fname%> <%=lname%></h3>
<p style="color: darkslateblue"><%=cont%> | <%=email%></p>
    <hr>
<h3><span>Career Objective</span></h3>
    <p ><%=co%></p>

<h3><span>Education</span></h3>

    <table id="rtable"class="table table-bordered">
        <thead>
        <tr>
            <th>Course</th>
            <th>Percentage/Aggregate</th>
            <th>Pass Out Year</th>
            <th>Institute/School</th>
            <th>University/Board</th>
        </tr>
        </thead>
        <tbody>
        <%for (int i=0;i<len;i++) {%>
        <tr>

            <td> <%=course[i]%></td>
            <td><%=agg[i]%></td>
            <td><%=year[i]%></td>
            <td><%=inst[i]%></td>
            <td><%=univ[i]%></td>

        </tr>
        <%}%>
        </tbody>
    </table>

    <h3><span>Additional Qualification</span></h3>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Course</th>
            <th>Institute</th>
            <th>Duration</th>

        </tr>
        </thead>
        <tbody>
        <%for (int i=0;i<alen;i++) {%>
        <tr>

            <td> <%=acourse[i]%></td>
            <td><%=ainst[i]%></td>
            <td><%=dur[i]%></td>


        </tr>
        <%}%>
        </tbody>
    </table>
    <h3><span>Projects</span></h3>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Project Name</th>
            <th>Platform</th>
            <th>Description</th>

        </tr>
        </thead>
        <tbody>
        <%for (int i=0;i<plen;i++) {%>
        <tr>

            <td> <%=pname[i]%></td>
            <td><%=pplat[i]%></td>
            <td><%=des[i]%></td>
        </tr>
        <%}%>
        </tbody>
    </table>
    <h3><span>Extra curricular & Additional Skill Sets</span></h3>
    <p ><%=extra%></p>

    <h3><span>Languages Known</span></h3>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Speak</th>
            <th>Read</th>
            <th>Write</th>

        </tr>
        </thead>
        <tbody>
        <%for (int i=0;i<llen;i++) {%>
        <tr>

            <td> <%=speak[i]%></td>
            <td><%=read[i]%></td>
            <td><%=write[i]%></td>


        </tr>
        <%}%>
        </tbody>
    </table>

    <h3><span>Hobbies</span></h3>
    <p ><%=hobb%></p>
    <h3><span>Technology Summary</span></h3>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Programming Languages</th>
            <th>Database Management</th>
            <th>Design & IDE Tools</th>

        </tr>
        </thead>
        <tbody>
        <tr>

            <td> <%=plang%></td>
            <td><%=dlang%></td>
            <td><%=ide%></td>


        </tr>

        </tbody>
    </table>

    <h3><span>Personal Profile</span></h3>


    <table style="margin-top: 10px;">
        <tr>
            <th>Date of Birth: </th>
            <td> <%=dob%></td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <th>Gender : </th>
            <%
            if(gender.equals("male")){
                gen="Male";
            }else{
                gen="Female";

            }

            %>
            <td><%=gen%></td>
        </tr>
        <tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <th>Fathers Name : </th>
        <td><%=faname%></td>

        </tr>
    </table>
</div>

<center><button id="printPageButton" onClick="window.print();">Print</button></center>
</body>
</html>
