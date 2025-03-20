<#import "macros/securityMacro.ftl" as macros>

<html>
<@macros.renderHeader title=" Security" />

<body>
<h1>Security record created successfully</h1>

<table>
    <tr>
        <th>ID</th>
        <td>${security.id}</td>
    </tr>
    <tr>
        <th>Login</th>
        <td>${security.login}</td>
    </tr>
    <tr>
        <th>Role</th>
        <td>${security.role}</td>
    </tr>
    <tr>
        <th>Associated User ID</th>
        <td>${security.userId}</td>
    </tr>
    <tr>
        <th>Created Date</th>
        <td>${security.created?string["yyyy-MM-dd HH:mm:ss"]}</td>
    </tr>
    <tr>
        <th>Last modified date</th>
        <td>${security.updated?string["yyyy-MM-dd HH:mm:ss"]}</td>
    </tr>
</table>

<br>
<a href="/security/create">Create new entry</a>

<@macros.renderFooter />
</body>
</html>