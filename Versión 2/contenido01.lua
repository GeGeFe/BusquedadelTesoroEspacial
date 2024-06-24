-- Agregar aquí entre las comillas la ubicación de inicio (Navegación/Copy URL en Celestia)
-- Comentar la linea si no se quiere especificar una ubicación inicial.
ubicacioninicial = "cel://Follow/Sol:Earth/2024-05-13T00:56:50.66836Z?x=qJ+9WEPTU////////////w&y=eBLZeb0lsP///////////w&z=euTgHSVtKg&ow=-0.74599695&ox=0.084761225&oy=-0.6194552&oz=0.22930168&select=Sol:Earth&fov=37.01057&ts=1&ltd=0&p=0&rf=71161735&nrf=255&lm=2048&tsrc=0&ver=3"
objetodeinicio = "Tierra"
sinsonido = false
noimagen = false
nombresalazar = "profesioneschistosas.lua"

introduccion = {
    pausa = "12.0",
    texto = "El ladrón intergaláctico Elongast ha robado los cohetes más poderosos de la tierra y ahora huye de la ley viajando\n por el sistema solar. Tu misión es perseguirlo hasta atraparlo. Buena suerte.",
    imagen = "personaje06.png",
    sonido = "MusicGen01.mp3"
}

recorrido = {
    {   objetivo = "Luna",
        pistas = { 
            { texto = "Agente de viajes: Quería saber si había hotel disponible en la cara oculta.", personaje = "personaje01.png" },
            { texto = "Pirula Perez: Estaba estudiando los pasos de la nave Chandrayaan-3.", personaje = "personaje08.png" }
        },
        felicitacion = "Elongast estuvo aquí pero ha escapado nuevamente.",
    }, {
        objetivo = "Marte",
        pistas = {
            { texto = "Turista: Dijo que estaba muy interesado en escalar el volcán más alto del sistema.", personaje = "personaje02.png" }
        },
        fallos = { "No che, estás perdido.", "Aquí nadie lo ha visto"},
        felicitacion = "Parece que has llegado tarde por poco.",
    }, {
        objetivo = "Urano",
        pistas = {
            { texto = "Vendedor: Se llevó el abrigo más eficiente que encontró pero aun así insistía en que no sería suficiente.", personaje = "personaje03.png" }
        },
        fallos = { "Nadie lo ha visto por aquí. Lo siento.", "Este es un lugar muy tranquilo." },
        felicitacion = "¡Me ha robado! Lo vi pero ya se fue.",
    }, {
        objetivo = "Júpiter",
        pistas = {
            { texto = "Vendedor: Preguntó por la cinta métrica más grande que teníamos. Al parecer quiere medir algo enorme.", personaje = "personaje04.png" }
        },
        felicitacion = "¡Que enredo! Mire como dejó todo con esa cinta enorme.",
    }, {
        objetivo = "Saturno",
        pistas = {
            { texto = "Vendedor: Le encantaron los esquies. Son para deporte extremo sobre anillos de partículas de hielo.", personaje = "personaje05.png" }
        },
        fallos = { "Usted no parece de la policía espacial.", "Me parece que está buscando mal." },
        felicitacion = "Estás muy cerca...",
    }
}

final = {
    pausa = "20.0",
    texto = "Luego de una difícil persecución sobre los anillos de Saturno lograste atrapar a Elongast. ¡Felicitaciones!\nLa policía espacial está muy agradecida por tu excelente trabajo.",
    imagen = "",
    efecto = "orbitar",
    sonido = "MusicGen02.mp3"
}
