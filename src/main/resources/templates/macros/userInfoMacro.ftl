<#macro userInfo user>
    <p>Id: ${user.id}</p>
    <p>First name: ${user.firstname}</p>
    <p>Second name: ${user.secondName}</p>
    <p>Age: ${user.age}</p>
    <p>Telephone number: ${user.telephoneNumber}</p>
    <p>Sex: ${user.sex}</p>
    <p>Created: ${user.created}</p>
    <p>Updated: ${user.updated}</p>
    <p>Deleted: <#if user.isDeleted??>${user.isDeleted?string('Yes', 'No')}</#if></p>
</#macro>
