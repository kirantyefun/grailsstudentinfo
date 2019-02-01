<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="layout" content="main" />

    <title>Edit</title>
  </head>
  <body>
    <g:form action="update" id="${student.id}">
      Name:<g:textField name="name" value="${student.name}" class="form-control"></g:textField><br /><br />
      Roll:<g:textField name="roll" value="${student.roll}" class="form-control"></g:textField><br /><br />
      Email:<g:textField name="email" value="${student.email}" class="form-control"></g:textField><br /><br />
      Address:<g:textField name="address" value="${student.address}" class="form-control"></g:textField><br /><br />
      <g:actionSubmit value="update" class = "btn btn-primary"></g:actionSubmit>



    </g:form>


    <!-- <form action="/records/student/update/${student.id}" method="post">
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name"  placeholder="${student.name}">

      </div>
      <div class="form-group">
        <label for="roll">Roll</label>
        <input type="text" class="form-control" id="roll" placeholder="${student.roll}">
      </div>
      <div class="form-group">
        <label for="address">Address</label>
        <input type="text" class="form-control" id="address"  placeholder="${student.address}">

      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="text" class="form-control" id="email" placeholder="${student.email}">
      </div>

      <button type="submit" class="btn btn-primary" value="update">Submit</button>
    </form> -->
  </body>
</html>
