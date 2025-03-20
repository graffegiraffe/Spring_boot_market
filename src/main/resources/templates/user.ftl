<#import "macros/userInfoMacro.ftl" as um>

<html>
<head>
    <title>User Information</title>
</head>
<body>
<h1>User Information:</h1>

<#if user??>
    <p><strong>ID:</strong> ${user.id}</p>
    <p><strong>Firstname:</strong> ${user.firstname}</p>
    <p><strong>Second Name:</strong> ${user.secondName}</p>
    <p><strong>Age:</strong> ${user.age!0}</p>
    <p><strong>Email:</strong> ${user.email}</p>
    <p><strong>Sex:</strong> ${user.sex!'-'}</p>
    <p><strong>Telephone:</strong> ${user.telephoneNumber!'-'}</p>
    <p><strong>Created:</strong> ${user.created}</p>
    <p><strong>Updated:</strong> ${user.updated}</p>
    <p><strong>Deleted:</strong> <#if user.deleted??>${user.deleted?string("Yes", "No")}</#if></p>
<#else>
    <p>User information is unavailable</p>
</#if>

</body>
</html>