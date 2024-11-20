const estado = {
 'on': true,
 'off': false
};function convertir(entrada) {
 return estado[entrada];
}

let pistas = 0;

document.getElementById('formularioGenerador').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe d la manera predeterminada
    
    const noImagen = document.getElementById('noImagen').checked;
    const sinSonido = document.getElementById('sinSonido').checked;
    const nombresalAzar = document.getElementById('nombresalazar').files[0]?document.getElementById('nombresalazar').files[0].name:"";

    const ubicacionInicial = document.getElementById('ubicacionInicial').value;
    const objetoDeInicio = document.getElementById('objetoDeInicio').value;

    const introduccionPausa = document.getElementById('introduccionPausa').value;
    const introduccionTexto = document.getElementById('introduccionTexto').value;
    const introduccionImagen = document.getElementById('introduccionImagen').files[0]?document.getElementById('introduccionImagen').files[0].name:"";
    const introduccionSonido = document.getElementById('introduccionSonido').files[0]?document.getElementById('introduccionSonido').files[0].name:"";
    
    const finalPausa = document.getElementById('finalPausa').value;
    const finalTexto = document.getElementById('finalTexto').value;
    const finalImagen = document.getElementById('finalImagen').files[0]?document.getElementById('finalImagen').files[0].name:"";
    const finalSonido = document.getElementById('finalSonido').files[0]?document.getElementById('finalSonido').files[0].name:"";
    const efectos = document.getElementsByName('finalEfecto');
    for (var i = 0; i < efectos.length; i++) { // Parece mentira que haya que hacer tanto quilombo para ver cual es el que está seleccionado.
        if (efectos[i].checked) {
            var finalEfecto = efectos[i].value;
            break;
        }
    }
    
    let scriptLua = `
-- Agregar aquí entre las comillas la ubicación de inicio (Navegación/Copy URL en Celestia)
-- Comentar la línea si no se quiere especificar una ubicación inicial.
sinsonido = ${sinSonido}
noimagen = ${noImagen}
nombresalazar = "${nombresalAzar}"

ubicacioninicial = "${ubicacionInicial}"
objetodeinicio = "${objetoDeInicio}"

introduccion = {
    pausa = "${introduccionPausa}",
    texto = "${introduccionTexto}",
    imagen = "${introduccionImagen}",
    sonido = "${introduccionSonido}"
}

final = {
    pausa = "${finalPausa}",
    texto = "${finalTexto}",
    imagen = "${finalImagen}",
    sonido = "${finalSonido}",
    efecto = "${finalEfecto}"
}

recorrido = {
    `;
    for (let i = 1; i <= pistas; i++) { 
        var objetivo = document.getElementById('objetivo' + i).value;
        var pista = document.getElementById('pista' + i).value;
        var fallos = document.getElementById('fallos' + i).value;
        var felicitacion = document.getElementById('felicitacion' + i).value;
        var personaje = document.getElementById('personaje' + i).files[0]?document.getElementById('personaje' + i).files[0].name:"";
        fallos = fallos.replace("|", "\",\"")
        scriptLua = scriptLua + `
    {   objetivo = "${objetivo}",
        pistas = {
            { texto = "${pista}", personaje = "${personaje}" },
        },
        fallos = { "${fallos}" },
        felicitacion = "${felicitacion}"
    },
`;
    }
    scriptLua = scriptLua + `
}`;

    // Continúa construyendo el script con el resto de la estructura proporcionada

    // Descarga el archivo generado
    const blob = new Blob([scriptLua], {type: 'text/plain;charset=utf-8'});
    const url = URL.createObjectURL(blob);
    const link = document.createElement('a');
    link.href = url;
    link.download = 'recorrido.lua';
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);

    // Limpia el formulario
//    document.getElementById('luaScriptForm').reset();
});

function agregarCampo() {
    pistas = pistas + 1;

    // Obtener sección "Puntos del recorrido" del formulario por su ID
    var recorrido = document.getElementById('recorrido');

// Objetivo    
    // Crear elementos del formulario (etiqua e input)
    var nuevaEtiqueta = document.createElement('label');
    var nuevoInput = document.createElement('input');
    
    // Configurar atributos para la nueva etiqueta
    nuevaEtiqueta.htmlFor = 'objetivo' + pistas;
    nuevaEtiqueta.innerHTML = 'Objetivo de la pista ' + pistas + ': ';
    
    // Configurar atributos para el nuevo input
    nuevoInput.type = 'text';
    nuevoInput.id = 'objetivo' + pistas;
    nuevoInput.name = 'objetivo' + pistas;
    
    // Agregar las nuevas etiquetas e inputs al formulario
    recorrido.appendChild(nuevaEtiqueta);
    recorrido.appendChild(nuevoInput);
    recorrido.appendChild(document.createElement('br')); // Para dar espacio entre los campos
    
    // Limpiar el valor del input recién creado
    nuevoInput.value = '';

// Pista/s separadas por |
    var nuevaEtiqueta = document.createElement('label');
    var nuevoInput = document.createElement('input');
    
    // Configurar atributos para la nueva etiqueta
    nuevaEtiqueta.htmlFor = 'pista' + pistas;
    nuevaEtiqueta.innerHTML = 'Pista ' + pistas + ': ';
    
    // Configurar atributos para el nuevo input
    nuevoInput.type = 'text';
    nuevoInput.id = 'pista' + pistas;
    nuevoInput.name = 'pista' + pistas;
    nuevoInput.size = '100';
    
    // Agregar las nuevas etiquetas e inputs al formulario
    recorrido.appendChild(nuevaEtiqueta);
    recorrido.appendChild(nuevoInput);
    recorrido.appendChild(document.createElement('br')); // Para dar espacio entre los campos
    
    // Limpiar el valor del input recién creado
    nuevoInput.value = '';
    
// Fallo/s separados por |
    var nuevaEtiqueta = document.createElement('label');
    var nuevoInput = document.createElement('input');
    
    // Configurar atributos para la nueva etiqueta
    nuevaEtiqueta.htmlFor = 'fallos' + pistas;
    nuevaEtiqueta.innerHTML = 'Fallo/s ' + pistas + ': ';
    
    // Configurar atributos para el nuevo input
    nuevoInput.type = 'text';
    nuevoInput.id = 'fallos' + pistas;
    nuevoInput.name = 'fallos' + pistas;
    nuevoInput.placeholder = 'Separar con | si quiere agregar más de uno';
    nuevoInput.size = '100';
    
    // Agregar las nuevas etiquetas e inputs al formulario
    recorrido.appendChild(nuevaEtiqueta);
    recorrido.appendChild(nuevoInput);
    recorrido.appendChild(document.createElement('br')); // Para dar espacio entre los campos
    
    // Limpiar el valor del input recién creado
    nuevoInput.value = '';

// Felicitacion
    var nuevaEtiqueta = document.createElement('label');
    var nuevoInput = document.createElement('input');
    
    // Configurar atributos para la nueva etiqueta
    nuevaEtiqueta.htmlFor = 'felicitacion' + pistas;
    nuevaEtiqueta.innerHTML = 'Felicitación ' + pistas + ': ';
    
    // Configurar atributos para el nuevo input
    nuevoInput.type = 'text';
    nuevoInput.id = 'felicitacion' + pistas;
    nuevoInput.name = 'felicitacion' + pistas;
    
    // Agregar las nuevas etiquetas e inputs al formulario
    recorrido.appendChild(nuevaEtiqueta);
    recorrido.appendChild(nuevoInput);
    recorrido.appendChild(document.createElement('br')); // Para dar espacio entre los campos
    
    // Limpiar el valor del input recién creado
    nuevoInput.value = '';
    
// Imagen
    // Felicitacion
    var nuevaEtiqueta = document.createElement('label');
    var nuevoInput = document.createElement('input');
    
    // Configurar atributos para la nueva etiqueta
    nuevaEtiqueta.htmlFor = 'personaje' + pistas;
    nuevaEtiqueta.innerHTML = 'Personaje ' + pistas + ': ';
    
    // Configurar atributos para el nuevo input
    nuevoInput.type = 'file';
    nuevoInput.id = 'personaje' + pistas;
    nuevoInput.name = 'personaje' + pistas;
    nuevoInput.accept = 'image/*';
    
    // Agregar las nuevas etiquetas e inputs al formulario
    recorrido.appendChild(nuevaEtiqueta);
    recorrido.appendChild(nuevoInput);
    recorrido.appendChild(document.createElement('hr')); // Para dar espacio entre los campos
    
    // Limpiar el valor del input recién creado
    nuevoInput.value = '';
}

agregarCampo();
