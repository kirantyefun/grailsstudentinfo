<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="layout" content="main" />
    <title>list</title>
  </head>
  <body>
    <g:each in="${userroles}" var="userrole">
      Id:${userrole.user.id}<br />
      Username:${userrole.user.username}<br /><br />

    </g:each>


    <g:link action="index">to index</g:link><br/>
  </body>
</html>
