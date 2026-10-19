# Métodos HTTP

API pública usada: https://jsonplaceholder.typicode.com/posts
Los ejemplos se hicieron con Thunder Client (extensión de VS Code).


## GET

**Para qué sirve:** obtener o leer información de un recurso sin modificarlo.

**Cómo se usa:** se envía una petición a la URL del recurso. No lleva body.

**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body: ninguno
- Código de estado: `200 OK`


## POST

**Para qué sirve:** crear un recurso nuevo.

**Cómo se usa:** se envía a la URL de la colección, con el nuevo recurso en el body en formato JSON.

**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts`
- Body: `{ "title": "Mi primer post", "body": "Contenido de prueba", "userId": 1 }`
- Código de estado: `201 Created`


## PATCH

**Para qué sirve:** modificar solo una parte de un recurso existente.

**Cómo se usa:** se envía a la URL del recurso específico, con solo los campos que cambian en el body.

**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body: `{ "title": "Solo cambio el titulo" }`
- Código de estado: `200 OK`


## DELETE

**Para qué sirve:** eliminar un recurso.

**Cómo se usa:** se envía a la URL del recurso que se quiere borrar. No lleva body.

**Ejemplo:**
- URL: `https://jsonplaceholder.typicode.com/posts/1`
- Body: ninguno
- Código de estado: `200 OK`


## Diferencia entre PUT y PATCH

PUT  lo reemplaza por completo: hay que mandar todos los atributos, y si
falta alguno, ese dato se pierde. PATCH solo los modifica y deja el resto igual. 

> **Nota:** JSONPlaceholder simula los cambios pero no los guarda de verdad,
> por eso un GET posterior no muestra las modificaciones.