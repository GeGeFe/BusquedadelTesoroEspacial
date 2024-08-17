
-- Agregar aquí entre las comillas la ubicación de inicio (Navegación/Copy URL en Celestia)
-- Comentar la línea si no se quiere especificar una ubicación inicial.
sinsonido = true
noimagen = true

ubicacioninicial = "cel://Follow/Sol:Earth/2024-06-23T21:50:22.77656Z?x=9F6JLMzJ9f///////////w&y=GS/X1RNm5f///////////w&z=cL5ZUO7uJP///////////w&ow=0.06105017&ox=-0.99738944&oy=0.032213658&oz=0.02120136&select=Sol:Earth&fov=29.356295&ts=1&ltd=0&p=0&rf=71161735&nrf=255&lm=2048&tsrc=0&ver=3"
objetodeinicio = "Tierra"

introduccion = {
    pausa = "10.0",
    texto = "Este es un breve tutorial para comprender como funciona el juego.",
    imagen = "",
    sonido = ""
}

final = {
    pausa = "15.0",
    texto = "Ahora está en condiciones de poder jugar recorridos/persecuciones más emocionantes. \n Suerte y que te diviertas.",
    imagen = "",
    sonido = "",
    efecto = "alejarse"
}

recorrido = {
    
    {   objetivo = "Marte",
        pistas = {
            { texto = "Durante el juego esto sería una pista. Ahora es una indicación.\nPresione 4 y luego la tecla g para dirigirte a Marte, el cuarto planeta del sistema solar.", personaje = "" },
        },
        fallos = { "La tecla 4 y luego la tecla g." },
        felicitacion = "Muy bien. Hemos llegado a Marte."
    },

    {   objetivo = "Deimos",
        pistas = {
            { texto = "Para ir a una luna tenemos dos opciones. Presionar Enter y escribir el nombre o hacer click en el planeta y seleccionar el satelite.\nVamos a Deimos.", personaje = "" },
        },
        fallos = { "Pulsa Enter y escribe Deimos." },
        felicitacion = "Muy bien."
    },

    {   objetivo = "Sol",
        pistas = {
            { texto = "Si en algun momento te alejas demasiado perderas el centro de referencia.\nPuedes volver al sol con la tecla h (home) y luego la tecla g.", personaje = "" },
        },
        fallos = { "Presiona h. Ahora presiona g." },
        felicitacion = "Perfecto."
    },

}
