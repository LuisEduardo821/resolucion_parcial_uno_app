# Librerias para consumir API REST desde Flutter 📚

En Flutter, puedes utilizar varias librerías para consumir APIs REST. Algunas de las opciones populares son:

## 1. Dio: ⚡

**GitHub:** [Dio en GitHub](https://github.com/cfug/dio)<br>
**Pub:** [Dio en Pub](https://pub.dev/packages/dio)<br>

Dio es una potente librería HTTP para Flutter y Dart que admite solicitudes concurrentes, intercepciones, cancelaciones y más.

Ejemplo de uso básico con Dio:

```dart
import 'package:dio/dio.dart';

void fetchData() async {
  Dio dio = Dio();
  Response response = await dio.get('https://api.example.com/data');
  print(response.data);
}
```

## 2. HTTP 📧

**GitHub:** [HTTP en GitHub](https://github.com/dart-lang/http)<br>
**Pub:** [HTTP en Pub](https://pub.dev/packages/http)<br>

http es una librería simple y directa para realizar solicitudes HTTP en Dart. Aunque es menos feature-rich que Dio, es fácil de usar y funciona bien para muchas aplicaciones.

Ejemplo de uso básico con http:

```dart
import 'package:http/http.dart' as http;

void fetchData() async {
  var response = await http.get('https://api.example.com/data');
  print(response.body);
}
```

## 3. Chopper 📫

**GitHub:** [Chopper en GitHub](https://github.com/lejard-h/chopper)<br>
**Pub:** [Chopper en Pub](https://pub.dev/packages/chopper)<br>

Chopper es una librería de generación de código que facilita el consumo de APIs REST en Flutter. Utiliza anotaciones y generación de código para reducir el código boilerplate.

Ejemplo de uso básico con Chopper:

```dart
import 'package:chopper/chopper.dart';

part 'my_service.chopper.dart';

@ChopperApi(baseUrl: '/data')
abstract class MyService extends ChopperService {
  @Get()
  Future<Response> getData();

  static MyService create() {
    final client = ChopperClient(
      baseUrl: 'https://api.example.com',
      services: [
        _$MyService(),
      ],
      converter: JsonConverter(),
    );
    return _$MyService(client);
  }
}
```

# Protocolo API REST 🚀

![Protocolo API REST](https://dossetenta.com/wp-content/uploads/2021/12/R6qFq3n.png)

> REST, que significa Transferencia de Estado Representacional, es un estilo arquitectónico para diseñar sistemas de red. Se utiliza comúnmente en el desarrollo de servicios web y se basa en ciertos principios y restricciones para facilitar la creación de servicios web eficientes, escalables y mantenibles.

Conceptos clave relacionados con el funcionamiento del protocolo API REST:

### Recursos:

En REST, todo es considerado como un recurso, que puede ser cualquier cosa que tenga un identificador único. Por ejemplo, un recurso podría ser un usuario, un producto o cualquier entidad similar.

### URI (Identificador de Recurso Uniforme):

Cada recurso se identifica mediante una URI única. La URI es una cadena de caracteres que proporciona una forma de identificar un recurso de manera única. Por ejemplo, `https://api.example.com/users/123` podría ser la URI de un recurso que representa un usuario con el identificador 123.

### Métodos HTTP: 🚨

REST utiliza los métodos HTTP estándar (GET, POST, PUT, DELETE, etc.) para realizar operaciones en los recursos. Cada método tiene un propósito específico:<br>

- GET: Obtener información sobre un recurso.
- POST: Crear un nuevo recurso.
- PUT/PATCH: Actualizar un recurso existente.
- DELETE: Eliminar un recurso.

### Representaciones: 🏁

Los recursos pueden tener diferentes representaciones, como JSON, XML o incluso HTML, que se utilizan para describir el estado del recurso en un momento dado.

Un Ejemplo en formato JSON:

```json
{
  "id": 123,
  "nombre": "John Doe",
  "correo": "john.doe@example.com",
  "edad": 30,
  "direccion": {
    "calle": "123 Main Street",
    "ciudad": "Ciudad Ejemplo",
    "pais": "País Ejemplo"
  }
}
```

### Estado Representacional:

La transferencia de estado representacional significa que cuando un cliente realiza una solicitud a un recurso, obtiene una representación del estado actual de ese recurso. El servidor no mantiene un estado de sesión con el cliente; en cambio, cada solicitud del cliente contiene toda la información necesaria.

### HATEOAS (Hypermedia As The Engine Of Application State):

Este principio sugiere que la aplicación debe ser conducida por hipermedios proporcionados de forma dinámica por las aplicaciones de servidor en los enlaces dentro de las aplicaciones de presentación, código entregado dinámicamente y otros medios de intercambio de estado a medida que se avanza.

### Formatos de Datos: ✏

Las aplicaciones RESTful generalmente usan formatos de datos ligeros como JSON o XML para el intercambio de datos.

### Seguridad: 🔐

REST no prescribe un mecanismo específico de seguridad, pero puede utilizarse junto con HTTPS para asegurar la comunicación entre el cliente y el servidor.
# resolucion_parcial_uno_app
