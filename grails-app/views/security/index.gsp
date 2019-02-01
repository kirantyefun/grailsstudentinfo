<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="layout" content="main" />
    <title></title>
  </head>
  <body>
    <h1>Add admin</h1>
    <g:form action="save">
        username: <g:textField name="username" /><br />
        password: <g:textField name="password" /><br />
        <g:actionSubmit value="Save" />
    </g:form><br />

    <g:link action="listAllAdmins">List all admins</g:link>

  </body>
</html>
