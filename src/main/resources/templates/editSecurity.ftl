<#import "macros/securityMacro.ftl" as macros>

<html>
<@macros.renderHeader title="Edit Security" />

<body>
<h1>Edit Security</h1>

<form action="/security/update/${security.id}" method="post">
    <@macros.renderField
    labelName="Login"
    fieldName="login"
    value="${security.login}"
    placeholder="Enter new login" />
    <@macros.renderField
    labelName="Password"
    fieldName="password"
    value="${security.password}"
    type="password"
    placeholder="Enter new password" />
    <@macros.renderRoleDropdown
    fieldName="role"
    labelName="Role"
    selectedRole="${security.role}" />
    <@macros.renderField
    labelName="User ID"
    fieldName="userId"
    value="${security.userId}"
    placeholder="Enter new associated user ID" />

    <button type="submit">Save changes</button>
</form>

<a href="/security">Back to list</a>

<@macros.renderFooter />
</body>
</html>