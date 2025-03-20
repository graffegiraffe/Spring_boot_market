<#import "macros/securityMacro.ftl" as macros>

<html>
<@macros.renderHeader title="Create Security" />

<body>
<h1>Create Security</h1>

<form action="/security/create" method="post">
    <@macros.renderField labelName="Login" fieldName="login" value="" placeholder="Enter login" />
    <@macros.renderField labelName="Password" fieldName="password" value="" type="password" placeholder="Enter password" />
    <@macros.renderRoleDropdown
    fieldName="role"
    labelName="Select role"
    selectedRole="" />
    <@macros.renderField
    labelName="User ID"
    fieldName="userId"
    value=""
    placeholder="Enter ID of associated user" />

    <button type="submit">Create</button>
</form>

<a href="/security">Back to list</a>

<@macros.renderFooter />
</body>
</html>