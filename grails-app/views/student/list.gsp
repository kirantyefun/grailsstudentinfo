<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>list</title>
  </head>
  <body>
    <g:each in="${students}" var="student">
      Name:${student.name}<br />
      Id:${student.id}<br />
    </g:each>

    <g:link action="index">to index</g:link><br/>
  </body>
</html>
