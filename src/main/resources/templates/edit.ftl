<#import "macros/userInfoMacro.ftl" as um>
<html>
<head>
    <title>Update user</title>
</head>
<body>
<h1>Current user info</h1>
<#if user??>
<@um.userInfo user/>

<h1>Update user:</h1>
<form action="/user" method="post">
    <div>
        <label for="firstname">First name:</label>
        <input type="text" id="firstname" name="firstname" value="${user.firstname}" required>
    </div>
    <div>
        <label for="secondName">Second name:</label>
        <input type="text" id="secondName" name="secondName" value="${user.secondName}" required>
    </div>
    <div>
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" value="${user.age}" required>
    </div>
    <div>
        <label for="telephoneNumber">Telephone number:</label>
        <input type="text" id="telephoneNumber" name="telephoneNumber" value="${user.telephoneNumber}" required>
    </div>
    <div>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${user.email}" required>
    </div>
    <div>
        <label for="sex">Sex:</label>
        <input type="text" id="sex" name="sex" value="${user.sex}" required>
    </div>
    <div>
        <input type="hidden" id="id" name="id" value="${user.id}" />
        <button type="submit">Save changes</button>
    </div>
</form>
<#else>
    <p>User information is unavailable</p>
</#if>

</body>
</html>
