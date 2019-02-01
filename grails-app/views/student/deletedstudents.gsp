<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>deleted students</title>
  </head>
  <body>
    <g:each in="${deletedlist}" var="student">
      Name:${student.name}<br />
      Id:${student.id}<br />
      <g:link action="undodelete" id="${student.id}"> undo delete </g:link>
      <br/>
    </g:each>
    <br/>


    <g:link action="index">to index</g:link><br/>
  </body>
</html>
