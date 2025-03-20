<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List of users</title>
</head>
<body>
<h1>List of users</h1>

<#if users?has_content>
    <#include "macros/userInfoMacro.ftl">
    <ul>
        <#list users as user>
            <li>
                <@userInfo user=user />
            </li>
        </#list>
    </ul>
<#else>
    <p>No users in database</p>
</#if>

</body>
</html>