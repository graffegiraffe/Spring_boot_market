<html>
<head>
    <title>Create Product</title>
</head>
<body>
<h2>Create Product</h2>
<form action="/product/create" method="POST">
    <div>
        <label for="name">Product Name:</label>
        <input type="text" id="name" name="name" required>
    </div>

    <div>
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" step="0.01" required>
    </div>

    <input type="submit" value="Create Product">
</form>
</body>
</html>