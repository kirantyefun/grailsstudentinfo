<html>
  <head>
    <meta charset="utf-8">
    <meta name="layout" content="main" />
    <title>Deerwalk</title>

    <!-- how to access looping variable in html -->

    <!-- <script>
    var i=1;
    i++;
    window.onload = function() {
     //when the document is finished loading, replace everything
     //between the <a ...> </a> tags with the value of splitText
    document.getElementById("myLink").innerHTML=i;
    }
    </script> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <asset:stylesheet src="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet src="bootstrap.min.css"></asset:stylesheet>
  </head>
  <body>




    <table class="table table-bordered table-hover table-responsive-xl" padding=10px margin=10px  >
      <thead>
        <tr>
          <!-- <th scope="col">S.N</th> -->
          <th scope="col">Name</th>
          <th scope="col">Roll</th>
          <th scope="col">Email</th>
          <th scope="col">Address</th>
          <sec:access expression="hasRole('ROLE_ADMIN')">
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
          </sec:access>
        </tr>

      </thead>

      <tbody >

        <g:each in="${mylist}" var="student">
          <tr>
            <!-- <th scope="row">

               <a id="myLink" href = test.html></a>
            </th> -->
            <td>${student.name}</td>
            <td>${student.roll}</td>
            <td>${student.email}</td>
            <td>${student.address}</td>

            <sec:access expression="hasRole('ROLE_ADMIN')">
              <td>
                <g:link action="edit" id="${student.id}">Edit</g:link>
              </td>
              <td>
                <g:link action = "delete" id="${student.id}">Delete</g:link>
              </td>
            </sec:access>
            <!-- <td>
              ${student.name}
            </td>
            <td>
              ${student.roll}
            </td>
            <td>
              ${student.email}
            </td>
            <td>
              ${student.address}
            </td>
            <td>
              <g:link action="edit" id="${student.id}">Edit</g:link>
            </td>
            <td>
              <g:link action = "delete" id="${student.id}">Delete</g:link>
            </td> -->
          </tr>
        </g:each>
      </tbody>


    </table>
    <br />

    <!-- <nav class="navbar-light bg-light">
        <h3>Add New Student</h3>
    </nav> -->
    <sec:ifAnyGranted roles='ROLE_ADMIN,ROLE_SUPER_ADMIN'>


    <nav class="navbar-light bg-light" margin="3px" role="navigation" padding="5px">
        <a href="#" id="addbutton" class="btn btn-primary">Add New Student</a>
    </nav>

    <!-- <div class="form-group">
      <g:form action="save" >
        Name <g:textField name="name"  class="form-control"   ></g:textField><br />
        Roll <g:textField name="roll"  class="form-control"></g:textField><br />
        Email <g:textField name="email"  class="form-control"></g:textField><br />
        Address <g:textField name="address"  class="form-control"></g:textField><br />
        <g:actionSubmit value="save" ></g:actionSubmit>
      </g:form> -->


    <!-- </div> -->
    <!-- <g:form action="save" >
      Name <g:textField name="name" placeholder="Enter name" class="form-control"></g:textField><br />
      Roll <g:textField name="roll" placeholder="Enter roll" class="form-control"></g:textField><br />
      Email <g:textField name="email" placeholder="Enter email" class="form-control"></g:textField><br />
      Address <g:textField name="address" placeholder="Enter address" class="form-control"></g:textField><br />
      <g:actionSubmit value="save" ></g:actionSubmit>
    </g:form> -->

    <!-- <form>
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
      </div>

      <button type="submit" class="btn btn-primary">Submit</button>
    </form> -->


    <br />

    <!-- modal-section -->

    <div id="form-modal" class="new-bg-modal">
      <div class="new-modal-content">
        <div class="social-part">
             <div class="modal-header">
               <i class="fas fa-user-graduate fa-3x" style="margin-bottom:10px" ></i>
               <p style="font-size:170%; font-family:comic sans ms; color:#f4f4f4">
                 Registration Form
               </p>
               <span id="btn-close" class="closebtn">&times;</span>

             </div>
             <div style="margin:5px">
               <!-- <g:form action="save"class="my-textField" style="font-size:20px">
                 <p>
                   Name <g:textField name="name" class="my-textField" ></g:textField>
                 </p>
                 <p>
                   Roll <g:textField name="roll"  class="my-textField"></g:textField><br />
                 </p>
                 <p>
                   Email <g:textField name="email"  class="my-textField"></g:textField><br />
                 </p>
                 <p>

                   Address <g:textField name="address"  class="my-textField"></g:textField><br />
                 </p>


                 <g:actionSubmit value="save" class="btn btn-primary"></g:actionSubmit>
               </g:form> -->
               <g:form action="saveme" style="color: #000;font-family:comic sans ms; font-weight: normal;font-size:20px">
                 Name:<g:textField name="name"  class="form-control"></g:textField><br />
                 Roll:<g:textField name="roll"  class="form-control"></g:textField><br />
                 Email:<g:textField name="email"  class="form-control"></g:textField><br />
                 Address:<g:textField name="address"  class="form-control"></g:textField><br />
                <g:actionSubmit value="saveme" class = "btn btn-primary" style="font-family:sans-serif"></g:actionSubmit>

               </g:form>
               <!-- <form controller="student" action="save">
                 <input type="text" placeholder="name" class="form-control" name="name" /><br />
                 <input type="text" placeholder="roll" name="roll" class="form-control" /><br />
                 <input type="text" placeholder="email" name="email" class="form-control" /><br />
                 <input type="text" placeholder="address" name="address" class="form-control" /><br />
                 <g:actionSubmit value="save"></g:actionSubmit>

               </form> -->

             </div>



        </div>
      </div>

    </div>
    </sec:ifAnyGranted>

    <sec:access expression="hasRole('ROLE_ADMIN')">
      <g:link action = "deletedstudents"> Deleted students</g:link><br />
    </sec:access>


    <sec:access expression="hasRole('ROLE_SUPER_ADMIN')">
      <hr class="my-4">
      <g:link controller="security">
        <input type="button" value="Add Admin" class="btn btn-primary"/>
      </g:link>

    </sec:access>

    <sec:ifNotGranted roles='ROLE_ADMIN,ROLE_SUPER_ADMIN'>

    </sec:ifNotGranted>



    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script> -->
    <asset:javascript src="myjsfile.js"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="popper.min.js"/>
  </body>
</html>
