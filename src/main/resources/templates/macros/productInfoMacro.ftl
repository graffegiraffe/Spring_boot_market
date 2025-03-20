<#macro productInfo product>
    <p><strong>ID:</strong> ${product.id}</p>
    <p><strong>Name:</strong> ${product.name}</p>
    <p><strong>Price:</strong> ${product.price}</p>
    <p><strong>Created:</strong> ${product.created!"Not specified"}</p>
    <p><strong>Updated:</strong> ${product.updated!"Not specified"}</p>
</#macro>