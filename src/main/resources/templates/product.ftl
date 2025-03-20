<#import "macros/productInfoMacro.ftl" as um>

<html>
<head>
    <title>Product Details</title>
</head>
<body>
<h2>Product Details</h2>
<#if product??>
    <@um.productInfo product=product />
<#else>
    <p>Product information is unavailable</p>
</#if>
</body>
</html>