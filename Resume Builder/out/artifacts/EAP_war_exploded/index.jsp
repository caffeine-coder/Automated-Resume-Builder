<%--
  Created by IntelliJ IDEA.
  User: Abhishek
  Date: 4/19/2019
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Resume</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
      <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
      <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="style.css">

      <script type="text/javascript" src="func.js"></script>

        </head>
  <body>
  <form action="display.jsp" method="post">
<h3>Fill your RESUME</h3>
<div class="resume">
    <fieldset>
        <legend>Basic Information</legend>
        <table  style="margin-top: 10px;">
            <tr>
                <th>First Name : </th>
                <td><input type="text" name="fname" required></td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <th>Last Name : </th>
                <td><input type="text" name="lname"required></td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <th>Email : </th>
                <td><input type="email" name="email"required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"></td>

            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <th>Contact Number : </th>
                <td><input type="text" name="phn" required></td>

            </tr>

        </table><br/>
    </fieldset>


    <hr>

     <fieldset>
      <div class="form-group">
    <legend>Career Objective: </legend>
        <textarea class="form-control" name="cobj"rows="2" id="comment"required></textarea>
      </div>
     </fieldset>


    <legend>Educational Details:</legend>
    <fieldset>
      <table id="rtable"class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Course</th>
            <th>Percentage/Aggregate</th>
            <th>Pass Out Year</th>
            <th>Institute/School</th>
            <th>University/Board</th>
            <th>Delete</th>
            <th>Add</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td><input size=25 type="text" name="course"required/></td>
            <td><input size=25 type="text"  name="agg" required/></td>
            <td><input size=25 type="text"  name="year"required></td>
            <td><input size=25 type="text"  name="inst"required></td>
            <td><input size=25 type="text"  name="uni"required></td>
            <td><button type="button" class="btn btn-danger" id="delete" onclick="deleteRow(this)" >Delete</button></td>
            <td><button type="button" class="btn btn-success"id="add" onclick="insRow()" >Add</button></td>
        </tr>
        </tbody>
      </table>
    </fieldset>
    <fieldset>
    <legend>Additional Qualification:</legend>
    <table id="qtable"class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Course</th>
            <th>Institute</th>
            <th>Duration</th>

            <th>Delete</th>
            <th>Add</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td><input size=25 type="text" name="acourse"required/></td>
            <td><input size=25 type="text"  name="ainst" required/></td>
            <td><input size=25 type="text"  name="ayear"required></td>
            <td><button type="button" class="btn btn-danger" id="qdelete" onclick="adelete(this)" >Delete</button></td>
            <td><button type="button" class="btn btn-success" id="gadd"  onclick="ainsRow()" >Add</button></td>
        </tr>
        </tbody>
    </table>
    </fieldset>




    <fieldset>
    <legend> Projects:</legend>

    <table id="ptable"class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Project Name</th>
            <th>Platform</th>
            <th>Description</th>

            <th>Delete</th>
            <th>Add</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td><input size=25 type="text" name="pname"required/></td>
            <td><input size=25 type="text"  name="pplat" required/></td>
            <td> <input size="25" type="text" name="des"required/></td>
            <td><button type="button" class="btn btn-danger" id="pdelete" onclick="prdel(this)" >Delete</button></td>
            <td><button type="button" class="btn btn-success" id="padd"  onclick="pradd()" >Add</button></td>
        </tr>
        </tbody>
    </table>
    </fieldset>

    <fieldset>
        <legend>Languages Known : </legend>

        <table id="language"class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Speak</th>
                <th>Read</th>
                <th>Write</th>

                <th>Delete</th>
                <th>Add</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td><input size=25 type="text" name="speak"required/></td>
                <td><input size=25 type="text"  name="read" required/></td>
                <td> <input size="25" type="text" name="write"required/></td>
                <td><button type="button" class="btn btn-danger" id="ldelete" onclick="ldel(this)" >Delete</button></td>
                <td><button type="button" class="btn btn-success" id="lade" onclick="ladd()">Add</button></td>
            </tr>
            </tbody>
        </table>
    </fieldset>

    <fieldset>
    <div class="form-group">
        <legend>Extra curricular & Additional Skill Sets </legend>
        <textarea class="form-control" rows="3" name="extra"id="skills"required></textarea>
    </div>
        </fieldset>



    <fieldset>
    <div class="form-group">
        <legend> Hobbies : </legend>
        <textarea class="form-control" rows="3" name="hobbies" id="hobbies"required></textarea>
    </div>
</fieldset>
<fieldset>
    <legend>Technology Summary :</legend>
    <table  style="margin-top: 10px;">
        <tr>
            <th>Programming languages : </th>
            <td><input type="text" name="plang"required></td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
          <th>Database Management : </th>
            <td><input type="text" name="dlang"required></td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <th>Design & IDE Tools : </th>
            <td><input type="text" name="ide"required></td>

        </tr>
    </table><br/>
</fieldset>
<fieldset>
    <legend>Personal Profile : </legend>
    <table style="margin-top: 10px;">
        <tr>
            <th>Date of Birth: </th>
            <td>   <input name="date" id="datepicker" width="270" required/>
                <script>
                    $('#datepicker').datepicker({
                        uiLibrary: 'bootstrap'
                    });
                </script></td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <th>Gender : </th>
            <td> <div class="form-check-inline">
                <label class="form-check-label" for="radio2">
                    <input type="radio" class="form-check-input" id="radio2" name="gender" value="male">Male
                </label>
            </div>
                <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" name="gender" class="form-check-input" value="female">Female
                    </label>
                </div></td>
        </tr>
        <tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
            <th>Fathers Name : </th>
            <td><input type="text" name="faname"required></td>

        </tr>
    </table>
</fieldset>








</div>
      <center><button type="submit" class="btn btn-primary">Submit</button></center>
  </form>
  </body>
</html>

