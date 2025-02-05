document.addEventListener("DOMContentLoaded", () => {
    const tablaProductos = document.querySelector("#tabla-productos");
    const loadingSpinner = document.querySelector("#loading");

    // Función para asignar clases de color según el estado
    function obtenerClasePorEstado(estado) {
        switch (estado.toLowerCase()) {
            case "nuevo":
                return "bg-success"; // Verde
            case "usado":
                return "bg-primary"; // Azul
            case "para reparar":
                return "bg-danger"; // Rojo
            case "reacondicionado":
                return "bg-warning"; // Naranja
            default:
                return "bg-muted"; // Gris por defecto
        }
    }

    // Llamada al backend para obtener los productos
    fetch("https://hardware-components-api-production.up.railway.app/listado")
        .then((response) => {
            if (!response.ok) {
                throw new Error("Error al obtener los productos");
            }
            return response.json();
        })
        .then((productos) => {
            // Ocultar el spinner
            loadingSpinner.style.display = "none";

            // Generar filas dinámicamente
            productos.forEach((producto) => {
                const fila = document.createElement("tr");

                fila.innerHTML = `
            <td><a href="detalles.html?id=${producto.id}">${producto.name}</td>
            <td class="text-capitalize">${producto.tipo}</td>
            <td class="${obtenerClasePorEstado(producto.estado)} text-white fw-bold text-capitalize">${producto.estado}</td>
            <td>${producto.price.toFixed(2)}</td>
          `;

                tablaProductos.appendChild(fila);
            });
        })
        .catch((error) => {
            console.error("Hubo un problema al cargar los productos:", error);
        });

        filtroSelect.addEventListener("change", () => {
            const tipoProducto = filtroSelect.value;
    
            // Llamada al backend para obtener los productos filtrados
            fetch(`https://hardware-components-api-production.up.railway.app/listado/tipo/${tipoProducto}`)
                .then((response) => {
                    if (!response.ok) {
                        throw new Error("Error al obtener los productos filtrados");
                    }
                    return response.json();
                })
                .then((productos) => {
                    // Limpiar la tabla
                    tablaProductos.innerHTML = "";
    
                    // Generar filas dinámicamente
                    productos.forEach((producto) => {
                        const fila = document.createElement("tr");
    
                        fila.innerHTML = `
                    <td><a href="detalles.html?id=${producto.id}">${producto.name}</td>
                    <td class="text-capitalize">${producto.tipo}</td>
                    <td class="${obtenerClasePorEstado(producto.estado)} text-white fw-bold text-capitalize">${producto.estado}</td>
                    <td>${producto.price.toFixed(2)}</td>
                  `;
    
                        tablaProductos.appendChild(fila);
                    });
                })
                .catch((error) => {
                    console.error("Hubo un problema al cargar los productos filtrados:", error);
                });
            })
    });
