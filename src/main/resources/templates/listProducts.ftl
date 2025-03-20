<#import "macros/productInfoMacro.ftl" as um>

<html>
<head>
    <title>Products List</title>
</head>
<body>
<h2>Products List</h2>
<#if products?? && (products?size > 0)>
    <table border="1">
        <thead>
        <tr>
            <th>Product Information</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <#list products as product>
            <tr>
                <td>
                    <@um.productInfo product=product />
                </td>
                <td>
                    <a href="/product/delete/${product.id}">Delete</a>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
<#else>
    <p>No products found</p>
</#if>
</body>
</html>