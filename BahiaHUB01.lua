
sinsonido = true
noimagen = false
nombresalazar = "aliens.lua"

ubicacioninicial = "cel://Follow/Sol:Venus/2025-10-30T17:40:13.79267Z?x=kAaEER5OWv///////////w&y=jqq36dQnKw&z=XJROqfcyLw&ow=0.051543046&ox=0.5950108&oy=-0.11440501&oz=-0.79386204&select=Sol:Venus&fov=25.205063&ts=1&ltd=0&p=0&rf=71095959&nrf=255&lm=2048&tsrc=0&ver=3"
objetodeinicio = "Venus"

introduccion = {
    pausa = "20",
    texto = "Jefe Cienpatas: El malvado Gato a Rayas se ha escapado y solo ustedes pueden llevarlo nuevamente a la carcel.\n¡Contamos con su ayuda!",
    imagen = "Cienpatas.png",
    sonido = ""
}

final = {
    pausa = "20",
    texto = "¡Felicitaciones! Han logrado encarcelar nuevamente al Gato a Rayas!\nAhora el sistema solar está a salvo de sus fechorías.\n¡Gracias detectives espaciales!",
    imagen = "Gatito Tras las rejas.png",
    sonido = "",
    efecto = "orbitar"
}

recorrido = {
    
    {   objetivo = "Sol",
        pistas = {
            { texto = "Josué: Me compró unos lentes de sol.\nIncistió en que fueran los más poderosos.", personaje = "no_bg_251103_104740.png"},
            { texto = "Jano: Me dijo que a donde iba se necesitan como un millón de tierras para cubrir todo.", personaje = "Ninja.png" }
        },
        fallos = { "Por aquí nadie a visto a ningún gato.","No sé de que me habla." },
        felicitacion = "La policía intergaláctica analisó estos pelos.\n¡Son del Gato a Rayas! Estuvo aquí."
    },

    {   objetivo = "Júpiter",
        pistas = {
            { texto = "Me robó un pararayos. Debería irse a una tormenta.", personaje = "IMG_20251030_105142.png" },
            { texto = "Dicen que estaba buscando un pararayos.", personaje = "Leo.png" },
        },
        fallos = { "Por aquí nadie a visto a ningún gato.","No sé de que me habla." },
        felicitacion = "¡Acaba de llevarse mi nave!\nEspero que lo atrapen pronto."
    },

    {   objetivo = "Saturno",
        pistas = {
            { texto = "A mi me robó unos esquís para surfear sobre partículas de hielo.", personaje = "Kiti.png" },
            { texto = "Me robó una cámara de fotos\nAntes dijo que quería fotografiar anillos de hielo.", personaje = "Octavio.png" },
        },
        fallos = { "Por aquí nadie a visto a ningún gato.","No sé de que me habla." },
        felicitacion = "Dijo que me pagaría al terminar de esquiar...\nTodavía lo estoy esperando."
    },

    {   objetivo = "Neptuno",
        pistas = {
            { texto = "Sacó un pasaje para el planeta de hielo más alejado.", personaje = "Dylan.png" },
            { texto = "Cargó demasiado combustible.\nDebe ir muuuuy lejos.", personaje = "IMG_20251030_145240.png" },
        },
        fallos = { "Por aquí nadie a visto a ningún gato.","No sé de que me habla." },
        felicitacion = "Acaban de denunciar un pasaje falso. Seguro es su fujitivo."
    },
}
