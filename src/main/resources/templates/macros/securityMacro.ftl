
<#macro renderHeader title>
    <head>
        <title>${title}</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            table {
                border-collapse: collapse;
                width: 100%;
                margin: 20px 0;
            }
            table, th, td {
                border: 1px solid #ddd;
            }
            th, td {
                padding: 10px;
                text-align: left;
            }
            th {
                background-color: #f4f4f4;
            }
            .form-input {
                display: block;
                width: 50%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            .alert {
                padding: 10px;
                margin: 20px 0;
                border-radius: 5px;
                color: #fff;
            }
            .alert.success { background-color: #4CAF50; }
            .alert.error { background-color: #f44336; }
            .alert.info { background-color: #2196F3; }
            footer p {
                text-align: center;
                color: #555;
                font-size: 0.9em;
            }
            button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
</#macro>

<#macro renderFooter>
    <footer>
        <hr>
        <p>© ${.now?string["yyyy"]} Your Company</p>
    </footer>
</#macro>

<#macro alertMessage type message>
    <div class="alert ${type}">
        <p>${message}</p>
    </div>
</#macro>

<#macro renderField labelName fieldName value type="text" placeholder="">
    <label for="${fieldName}">
        ${labelName}
    </label>
    <input
            id="${fieldName}"
            type="${type}"
            name="${fieldName}"
            value="${value}"
            placeholder="${placeholder}"
            class="form-input">
</#macro>

<#macro renderRoleDropdown fieldName labelName selectedRole>
    <label for="${fieldName}">
        ${labelName}
    </label>
    <select id="${fieldName}" name="${fieldName}" class="form-input">
        <option value="USER" <#if selectedRole == "USER">selected</#if>>USER</option>
        <option value="ADMIN" <#if selectedRole == "ADMIN">selected</#if>>ADMIN</option>
        <option value="MODERATOR" <#if selectedRole == "MODERATOR">selected</#if>>MODERATOR</option>
    </select>
</#macro>