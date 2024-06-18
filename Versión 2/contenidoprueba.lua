-- Agregar aquí entre las comillas la ubicación de inicio (Navegación/Copy URL en Celestia)
-- Comentar la linea si no se quiere especificar una ubicación inicial.
-- ubicacioninicial = "cel://Follow/Sol:Earth/2024-05-13T00:56:50.66836Z?x=qJ+9WEPTU////////////w&y=eBLZeb0lsP///////////w&z=euTgHSVtKg&ow=-0.74599695&ox=0.084761225&oy=-0.6194552&oz=0.22930168&select=Sol:Earth&fov=37.01057&ts=1&ltd=0&p=0&rf=71161735&nrf=255&lm=2048&tsrc=0&ver=3"
objetodeinicio = "Tierra"
sinsonido = true
-- noimagen = false

introduccion = {
    pausa = "2.0",
    texto = "El ladrón intergaláctico Elongast ha robado los cohetes más poderosos de la tierra y ahora huye de la ley viajando\n por el sistema solar. Tu misión es perseguirlo hasta atraparlo. Buena suerte.",
    imagen = "personaje08.png",
    sonido = "orchestral music of suspense_tmp_gradio_74566935b1bed27d6205a874e4b43f16e040d2d3_tmp82tf202n.mp3"
}

recorrido = {
    {   objetivo = "Marte",
        pistas = { 
            { texto = "Alguien: Se fue a Marte.", personaje = "personaje01.png" },
            { texto = "Pirulo Perez: Estaba estudiando los pasos de la nave Chandrayaan-3.", personaje = "personaje07.png" }
        },
        felicitacion = "Lo lograste llegaste a Marte.",
    }
}

final = {
    pausa = "20.0",
    texto = "Luego de una difícil persecución sobre los anillos de Saturno lograste atrapar a Elongast. ¡Felicitaciones!\nLa policía espacial está muy agradecida por tu excelente trabajo.",
    imagen = "",
    efecto = "alejarse"
}
