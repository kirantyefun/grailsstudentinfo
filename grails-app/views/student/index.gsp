<html>
  <head>
    <meta charset="utf-8">
    <title>index</title>
  </head>
  <body>
    

    <table border="4px">
      <tr>
        <td>
          Name
        </td>
        <td>
          Roll
        </td>
        <td>
          Email
        </td>
        <td>
          Address
        </td>
        <td>
          Edit
        </td>
        <td>
          Delete
        </td>
      </tr>
      <g:each in="${mylist}" var="student">
        <tr>
          <td>
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
          </td>
        </tr>
      </g:each>
    </table>
    <br />
    <h2>Add New Student</h2>
    <g:form action="save">
      Name <g:textField name="name"></g:textField><br />
      Roll <g:textField name="roll"></g:textField><br />
      Email <g:textField name="email"></g:textField><br />
      Address <g:textField name="address"></g:textField><br />
      <g:actionSubmit value="save"></g:actionSubmit>
    </g:form>
    <br />


  </body>
</html>
