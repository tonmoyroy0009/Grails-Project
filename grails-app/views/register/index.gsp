<meta name="layout" content="auth"/>

<div class="card">
    <div class="card-header">
        User Registration
    </div>
    <div class="card-body">
        <g:form controller="register" action="register">
        %{--            <g:render template="/user/form"/>--}%
            <div class="form-group">
                <label>Username *</label>
                <g:textField name="username" class="form-control" value="${user?.username}" placeholder="Please Enter Username"/>
            </div>
            <div class="form-group">
            <label>Email *</label>
            <g:field type="email" name="email" class="form-control" value="${user?.email}" placeholder="Please Enter Email"/></div>
            <g:if test="${!edit}">
                <div class="form-group">
                    <label>Password *</label>
                    <g:passwordField name="password" class="form-control" value="${user?.password}" placeholder="Please Enter Password"/>
                </div>
            </g:if>
            <g:submitButton name="registration" value="Registration" class="btn btn-primary"/>
            <g:link controller="login" action="auth" class="btn btn-primary">Back to login</g:link>
        </g:form>
    </div>
</div>