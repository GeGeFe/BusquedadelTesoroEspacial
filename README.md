# Búsqueda del Tesoro Espacial:

Este es un script para el programa [Celestia](https://celestiaproject.space/) que permite realizar una "búsqueda del tesoro espacial" o una persecución similar a la del famoso juego ["¿Dónde está Carmen San Diego?"](https://www.clasicosbasicos.org/juegos/aventura-grafica/donde-esta-carmen-sandiego-buscala-por-todo-el-mundo).

No es necesario instalar nada. Solo abrir Celestia y hacer click en archivo/abrir script. Luego elegir el archivo Tesoro.celx.

## Para docentes o quienes quieran crear sus propios recorridos:

Por ahora para cada recorrido/persecución es necesario crear una copia del archivo del script Tesoro.celx y modificar internamente la parte señalada entre comentarios (Los comentarios son las lineas del archivo que comienzan por **--**) 

El script funciona en **Celestia 1.7.0 para linux**. En  una instalación de una versión anterior no funcionó. No fue probado aun en la versión de **Celestia para Windows**

Por cada punto del recorrido se debe agregar una linea como la siguiente:

```lua
  recorrido[n] = { objetivo = "Destino n", pista = "Pista n", felicitacion = "Felicitación n/Excusa n" }
```
Tener mucho cuidado con las comas y espacios. Deben quedar igual. Solo modificar lo que está entre comillas y el número del paso del recorrido (lo que está entre corchetes []).

## Para programadores:

La clave para realizar este script fue este apartado de la documentación de Celestia en el [wikibook](https://en.wikibooks.org/wiki/Celestia/Celx_Scripting/CELX_Lua_Methods).

>> Celestia works roughly(!) by repeating this:

    Check user input, change rendering settings accordingly (e.g. enable rendering of orbits, change observer position/orientation)
    Update the simulation time
    Update the observer's position if goto is active
    Render all objects using the current settings (renderflags, time. positions)

Con mi rudimentario inglés y con ayuda del traductor comprendí por fín que el **wait** devuelve el control a Celestia y por lo tanto el usuario puede seguir navegando hacia donde quiera.

También me sirvió ver los propios script que trae el programa para comprender que se pueden lanzar bucles que sigan corriendo en paralelo al ciclo principal de Celestia.

```lua
  while true do
    ... código ..
  end
```

Se me ocurren muchas mejoras que se pueden hacer al script e invito a la comunidad a colaborar. Entre ellas están:
* Separar la parte editable con las opciones del recorrido y que al iniciar el script se pueda seleccionar uno.
* Detección múltiple de lugares a los que llega el usuario para dar diferentes mensajes.
* Algún sistema de edición menos técnico para los docentes u otras personas que quieran crear sus propios recorridos.
