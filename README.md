# Hardware Products API 🚀

[![Java](https://img.shields.io/badge/Java-17%2B-brightgreen)](https://adoptium.net/)
[![Spring Boot](https://img.shields.io/badge/Spring_Boot-2.7.x-brightgreen)](https://spring.io/projects/spring-boot)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13%2B-blue)](https://www.postgresql.org/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-5%2B-purple)](https://getbootstrap.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## 📑 Tabla de Contenidos

- [Descripción](#descripción)
- [Características ✨](#características-)
- [Tecnologías Utilizadas](#tecnologías-utilizadas)
- [Requisitos Previos](#requisitos-previos)
- [Instalación y Ejecución Local](#instalación-y-ejecución-local)
- [Endpoints Principales 📡](#endpoints-principales-)
- [Frontend 💻](#frontend-)
- [Notas Adicionales](#notas-adicionales)
- [Licencia 📜](#licencia-)

---

## Demo tecnica 🌐
[Demo en vivo](https://hardware-compatibility-api.vercel.app/) |  [Video Demo Demostrativo](https://youtu.be/D0cVW55My0A)

## Descripción

**Hardware Products API** es una aplicación **backend** desarrollada con **Java, Spring Boot, JPA, Hibernate y PostgreSQL** como parte de la formación de **Oracle Next Education (ONE)** en colaboración con **Alura Latam** 🚀 . Esta API permite gestionar un catálogo de productos de hardware y sus relaciones de compatibilidad. Además, se incluye un frontend sencillo basado en HTML, JavaScript y Bootstrap para consumir la API y mostrar la información.

---

## Características ✨

- **Gestión de Productos:**
  - Listado y detalle de productos.
  - Filtrado de productos por tipo (utilizando un `Enum` para definir los tipos).
- **Compatibilidad:**
  - Definición y consulta de relaciones de compatibilidad entre productos.
  - Visualización de productos compatibles filtrados por tipo.
- **API:**
  - Endpoints para listado, detalle y compatibilidades.
- **Frontend:**
  - Interfaz simple y responsive con HTML, JavaScript y Bootstrap.

---

## Tecnologías Utilizadas

| Tecnología         | Descripción                                                 |
|--------------------|-------------------------------------------------------------|
| **Java 17+**       | Lenguaje principal para el desarrollo.                      |
| **Spring Boot**    | Framework para crear aplicaciones backend de forma rápida.  |
| **Spring Data JPA**| Simplifica la interacción con la base de datos.             |
| **Hibernate**      | ORM para mapear objetos Java a tablas en la base de datos.    |
| **PostgreSQL**     | Sistema de gestión de bases de datos relacional.            |
| **Maven**          | Herramienta de gestión de proyectos y dependencias.         |
| **Bootstrap**      | Framework CSS para crear interfaces responsive.             |
| **JavaScript**     | Lenguaje para interactividad en el frontend.                |

---

## Requisitos Previos

Antes de ejecutar el proyecto localmente, asegúrate de tener instalados:

- [Java JDK 17+](https://adoptium.net/)
- [Maven](https://maven.apache.org/)
- [PostgreSQL](https://www.postgresql.org/download/)
- [Git](https://git-scm.com/) (Opcional)

---

## Instalación y Ejecución Local

### 1. Clonar el Repositorio

```bash
git clone https://github.com/tu-usuario/tu-repositorio.git
cd tu-repositorio
```

### 2. Configurar la base de datos (PostgreSQL)

1. Asegúrate de tener PostgreSQL instalado en tu sistema.
2. Crea una base de datos llamada `hardware_products` en tu servidor PostgreSQL.
3. Actualiza la configuración de la base de datos en `src/main/resources/application.properties` con tus credenciales de acceso.

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/hardware_products
spring.datasource.username=tu_usuario_db
spring.datasource.password=tu_contraseña_db
spring.datasource.driver-class-name=org.postgresql.Driver

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```


### 3. Compilar el proyecto 
```bash
./mvnw clean package
```

### 4. Ejecutar la Aplicación
```bash
./mvnw spring-boot:run
```
La aplicacion se ejecutara en el puerto 8080, abre tu navegador y accede a http://localhost:8080 para acceder a la api, y http://localhost:5500 (Usando `Live Server` de `VSCode`) para acceder al frontend.

## EndPoints Principales 🛠️

| Metodo               | Endpoint              | Descripcion
|-----------------------|-----------------------|---------------------
| GET              | `/listado`       | Listado de productos (opcionalmente filtrado por tipo)
| GET       | `/listado/{id}`                 | Detalle de un producto           
| GET         | `/listado/{id}/compatible/{tipoProducto}`          | Productos compatibles filtrados por tipo


Ejemplo filtrado por tipo:
```bash
GET /products/listado?tipo=TARJETA_VIDEO
```

## FrontEnd 💻
El proyecto incluye archivos HTML (por ejemplo, `detalles.html`) que utilizan JavaScript y Bootstrap para consumir la API y mostrar los datos de forma interactiva.

    Nota: Asegúrate de que las rutas en los archivos HTML y JavaScript coincidan con las rutas configuradas en la API.

## Notas Adicionales

    Se utiliza un Enum (ProductType) para definir los tipos de productos. Los valores en la base de datos deben coincidir exactamente con los definidos en el Enum.
    Puedes personalizar la configuración (como el puerto y las credenciales) modificando el archivo application.properties o utilizando variables de entorno.
    Si encuentras algún problema o tienes sugerencias, por favor abre un issue en este repositorio.

## Licencia 📜
    Este proyecto se distribuye bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.
