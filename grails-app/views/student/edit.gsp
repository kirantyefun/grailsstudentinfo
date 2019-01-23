<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Edit</title>
  </head>
  <body>
    <g:form action="update" id="${student.id}">
      Name:<g:textField name="name" value="${student.name}"></g:textField><br />
      Roll:<g:textField name="roll" value="${student.roll}"></g:textField><br />
      Email:<g:textField name="email" value="${student.email}"></g:textField><br />
      Address:<g:textField name="address" value="${student.address}"></g:textField><br />
      <g:actionSubmit value="update"></g:actionSubmit>

    </g:form>
  </body>
</html>
