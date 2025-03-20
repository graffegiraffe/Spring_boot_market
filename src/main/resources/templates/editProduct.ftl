<#import "macros/productInfoMacro.ftl" as um>

<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<h2>Edit Product</h2>

<#if product??>
    <div>
        <h3>Current Information</h3>
        <@um.productInfo product=product />
    </div>
</#if>
<form action="/product/update/${product.id}" method="POST">
    <div>
        <label for="name">Product Name:</label>
        <input type="text" id="name" name="name" value="${product.name}" required>
    </div>

    <div>
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" step="0.01" value="${product.price}" required>
    </div>

    <button type="submit">Save Changes</button>
</form>
</body>
</html>