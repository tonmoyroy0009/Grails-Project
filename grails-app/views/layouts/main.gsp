<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>

    <script type="text/javascript">
        <g:if test="${flash?.message && flash?.message?.info}">
        jQuery(document).ready(function () {
            OCB.messageBox.showMessage(Boolean(${flash.message?.success}), "${flash.message?.info}");
        });
        </g:if>
    </script>

    <g:layoutHead/>
</head>

<body>
%{--Header navbar--}%
%{--<g:if test='${flash.message= "Successfully Login"}'>
    <div class="alert alert-success" role="alert" >${flash.message}</div>
</g:if>--}%
<header>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark rounded">
        <a class="navbar-brand" href="#">Grails Online Contacts Book</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
</header>

%{--Left-bar--}%
<div class="container-fluid">
    <div class="row">

        <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
            <ul class="list-group">
                <li class="list-group-item">
                    <g:link class="btn" controller="home" action="index"><g:message code="Home"/></g:link>
                </li>
                <li class="list-group-item">
                    <g:link class="btn" controller="member" action="create"><g:message code="Create Member"/></g:link>
                </li>
                <li class="list-group-item">
                    <g:link class="btn" controller="member" action="index"><g:message code="Member List"/></g:link>
                </li>
                <li class="list-group-item">
                    <g:form controller="logout">
                        <g:submitButton class="custom-logout-btn" name="Submit" value="Logout" />
                    </g:form>
                </li>
            </ul>
        </nav>


        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
            <g:layoutBody/>
        </main>
    </div>
</div>

</body>
</html>
