
document.addEventListener('DOMContentLoaded', () => {
    const urlParams = new URLSearchParams(window.location.search);
    const id = urlParams.get('id');
    fetch(`http://localhost:8080/listado/${id}`)
        .then(response => response.json())
        .then(producto => {
            const nombreProducto = document.getElementById('nombreProducto');
            const precioProducto = document.getElementById('precioProducto');
            const imagenProducto = document.getElementById('imagenProducto');
            const descripcionProducto = document.getElementById('descripcionProducto');

            nombreProducto.textContent = producto.name;
            precioProducto.textContent = producto.price.toFixed(2) + (" USD");
            imagenProducto.src = producto.image_url;
            descripcionProducto.textContent = producto.descripcion;

            // document.getElementById("productSelect").addEventListener("change", function () {
            //     const productId = this.value;
            //     if (!productId) return;
            
            //     fetch(`http://localhost:8080/listado/${id}/compatibles`)
            //         .then(response => response.json())
            //         .then(data => {
            //             const list = document.getElementById("compatibleProducts");
            //             list.innerHTML = ""; // Limpiar lista anterior
            //             data.forEach(product => {
            //                 const li = document.createElement("li");
            //                 li.textContent = product.name;
            //                 list.appendChild(li);
            //             });
            //         })
            //         .catch(error => console.error("Error obteniendo productos compatibles:", error));
            // });
            
            document.getElementById("productSelect").addEventListener("change", function () {
    const productId = id;
    const tipoProducto = this.value;

    if (!productId || !tipoProducto) return;

    fetch(`http://localhost:8080/listado/${productId}/compatibles/${tipoProducto}`)
        .then(response => response.json())
        .then(data => {
            const list = document.getElementById("compatibleProducts");
            list.innerHTML = ""; // Limpiar lista anterior
            data.forEach(product => {
                const li = document.createElement("li");
                li.textContent = product.name;
                list.appendChild(li);
            });
        })
        .catch(error => console.error("Error obteniendo productos compatibles:", error));
});


        })}

);