<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/> -->

    <asset:stylesheet src="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet src="bootstrap.min.css"></asset:stylesheet>
    <asset:javascript src="jquery-3.3.1.min.js"></asset:javascript>
    <asset:stylesheet src="fontawesome/all.css"></asset:stylesheet>
    <asset:stylesheet src="nav.css"></asset:stylesheet>


    <g:layoutHead/>
</head>

<body>

<nav class="navbar sticky-top navbar-expand-sm navbar-light bg-light" margin="4px" role="navigation">
    <!-- <a class="navbar-brand "  href="/#"><asset:image src="gcalendar.svg" alt="google calendar"/></a> -->
    <a class="navbar-brand "  href="/#">Deerwalk School</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
        <ul class="nav navbar-nav ml-auto">
            <g:pageProperty name="page.nav"/>
        </ul>
    </div> -->

                <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                  <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                      <g:link controller="student" class="nav-link">Home</g:link>
                      <!-- <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a> -->
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item dropdown dmenu">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                      Our Service
                    </a>
                    <div class="dropdown-menu sm-menu">
                      <a class="dropdown-item" href="#">service2</a>
                      <a class="dropdown-item" href="#">service 2</a>
                      <a class="dropdown-item" href="#">service 3</a>
                    </div>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contact Us</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Call</a>
                  </li>

                  <sec:ifNotLoggedIn>
                    <li class="nav-item">
                        <g:link controller="login" class="nav-link">Login</g:link>
                    </li>
                  </sec:ifNotLoggedIn>

                  <sec:ifLoggedIn>
                    <!-- <li class="nav-item">
                        <g:link controller="logout" class="nav-link">Logout</g:link>
                    </li> -->
                    <li class="nav-item dropdown dmenu">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                          LoggedIn as: <sec:username/>
                        </a>
                        <div class="dropdown-menu sm-menu">
                          <g:link controller="logout" class="dropdown-item">Logout</g:link>
                          <!-- <a class="dropdown-item" href="#">service2</a>
                          <a class="dropdown-item" href="#">service 2</a>
                          <a class="dropdown-item" href="#">service 3</a> -->
                        </div>
                    </li>

                  </sec:ifLoggedIn>


                   <!-- <li class="nav-item dropdown dmenu">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                      Dropdown link
                    </a>
                    <div class="dropdown-menu sm-menu">
                      <a class="dropdown-item" href="#">Link 1</a>
                      <a class="dropdown-item" href="#">Link 2</a>
                      <a class="dropdown-item" href="#">Link 3</a>
                      <a class="dropdown-item" href="#">Link 4</a>
                      <a class="dropdown-item" href="#">Link 5</a>
                      <a class="dropdown-item" href="#">Link 6</a>
                    </div>
                  </li> -->
                  </ul>
                  <div class="social-part">
                    <i class="fab fa-facebook-square" ></i>
                    <i class="fab fa-twitter-square" ></i>
                    <i class="fab fa-instagram" aria-hidden="true" ></i>
                  </div>
                </div>

</nav>

<g:layoutBody/>
<!--
<div class="footer row" role="contentinfo">
    <div class="col">
        <a href="http://guides.grails.org" target="_blank">
            <asset:image src="advancedgrails.svg" alt="Grails Guides" class="float-left"/>
        </a>
        <strong class="centered"><a href="http://guides.grails.org" target="_blank">Grails Guides</a></strong>
        <p>Building your first Grails app? Looking to add security, or create a Single-Page-App? Check out the <a href="http://guides.grails.org" target="_blank">Grails Guides</a> for step-by-step tutorials.</p>

    </div>
    <div class="col">
        <a href="http://docs.grails.org" target="_blank">
            <asset:image src="documentation.svg" alt="Grails Documentation" class="float-left"/>
        </a>
        <strong class="centered"><a href="http://docs.grails.org" target="_blank">Documentation</a></strong>
        <p>Ready to dig in? You can find in-depth documentation for all the features of Grails in the <a href="http://docs.grails.org" target="_blank">User Guide</a>.</p>

    </div>

    <div class="col">
        <a href="https://grails-slack.cfapps.io" target="_blank">
            <asset:image src="slack.svg" alt="Grails Slack" class="float-left"/>
        </a>
        <strong class="centered"><a href="https://grails-slack.cfapps.io" target="_blank">Join the Community</a></strong>
        <p>Get feedback and share your experience with other Grails developers in the community <a href="https://grails-slack.cfapps.io" target="_blank">Slack channel</a>.</p>
    </div>
</div>


<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div> -->

<asset:javascript src="application.js"/>

</body>
</html>
