-- Agregar aquí entre las comillas la ubicación de inicio (Navegación/Copy URL en Celestia)
-- Comentar la linea si no se quiere especificar una ubicación inicial.
--
-- Recorrido creado junto con los chicos del Club de Ciencias de la Biblioteca Popular Mafalda de Bahía Blanca
--
ubicacioninicial = "cel://Follow/Sol:Earth/2024-05-23T22:35:48.85773Z?x=Q8OpUrwR4P///////////w&y=11JcqR164f///////////w&z=/AwzpUTk/v///////////w&ow=0.39595327&ox=0.26502562&oy=-0.11482633&oz=-0.8716636&select=Sol:Earth&fov=36.87419&ts=1&ltd=0&p=0&rf=71095959&nrf=255&lm=2048&tsrc=0&ver=3"
objetodeinicio = "Tierra"

introduccion = {
    pausa = "20.0",
    texto = "Hola. Soy el explorador espacial Juan. Solo un equipo como el de ustedes puede ayudarme.\nEn mi último viaje perdí mi cámara y en ella está la ubicación de un Sistema Estelar nuevo y supersecreto.\n¡Necesito recuperarla urgentemente!\n¿Aceptan la misión?",
    imagen = "Juan.png"
}

recorrido = {
        {   objetivo = "ISS",
        pistas = { 
            { texto = "Juan: El último lugar en que la usé fue en la estación internacional.", personaje = "Juan.png" }
        },
        fallos = { "¿Una cámara. No, aquí nadie la ha visto."},
        felicitacion = "Esa cámara la vi. Se la llevó un gato a rayas.",
    }, {
        objetivo = "Marte",
        pistas = { 
            { texto = "Lucimar_1: Dijo que quería visitar un planeta que tenga cuatro estaciones como la tierra.", personaje = "Gatito01.png" }
        },
        fallos = { "¿Tanto alboroto por una cámara? Yo no sé nada. No me moleste."},
        felicitacion = "Lo vimos pero no sabemos nada más.",
    }, {
        objetivo = "Venus",
        pistas = {
            { texto = "Lucimar_2: Siempre quizo conocer ese planeta tan brillante que solemos confundir con una estrella.", personaje = "Gatito02.png" }
        },
        fallos = { "Parece que tus bigotes están fallando.", "Por aquí no ha pasado."},
        felicitacion = "Ese gato me robó una cámara a mi también.\n¡Si, es un gato rayado!",
    }, {
        objetivo = "Sol",
        pistas = {
            { texto = "Thiago_1: Lo vimos dirigirse hacia esa enorme bola de gas caliente.", personaje = "Gatito03.png" },
            { texto = "Abigail: Se la pasó repitiendo esta adivinanza -Tengo corona pero no soy rey-.", personaje = "Gatito04.png" }
        },
        fallos = { "Nadie lo ha visto por aquí. Lo siento.", "Este es un lugar muy tranquilo." },
        felicitacion = "¡Me ha robado! Lo vi pero ya se fue.",
    }, {
        objetivo = "Júpiter",
        pistas = {
            { texto = "Thiago_2: Prometió llevarnos a dar una vuelta en el huracan gigante.", personaje = "Gatito04.png" }
        },
        fallos = { "Me parece que te distrajiste mirando la tele.", "Aquí no ha pasado nadia con esa descripción." },
        felicitacion = "¡Es un mentiroso! Nos hizo pagarle el pasaje hasta aquí\ny después desapareció.",
    }, {
        objetivo = "Fobos",
        pistas = {
            { texto = "Alex_1: Cuando le mostré la foto se rió y le pareció que eso no podía ser una luna de Marte sino\nuna horrible piedra.", personaje = "Gatito05.png" }
        },
        fallos = { "Creo que un ratón tiene más instinto.", "Me parece que están buscando mal." },
        felicitacion = "Se va cada vez más lejos. ¡Apúrense!",
    }, {
        objetivo = "Dione",
        pistas = {
            { texto = "Juli: Quería conocer la luna más alejada de Saturno", personaje = "Gatito07.png" }
        },
        fallos = { "Deberias investigar mejor." },
        felicitacion = "Creo que si lo he visto. ¿Un gato a rayas dijo? Si, creo que lo ví.",
    }, {
        objetivo = "Vía Láctea",
        pistas = {
            { texto = "Alex_2: Contó que pronto vería nuestra galaxia desde lejos.", personaje = "Gatito06.png" }
        },
        fallos = { "Creo que tienes que seguir buscando.", "No, no." },
        felicitacion = "Se va cada vez más lejos. ¡Apurense!",
    }
}

final = {
    pausa = "20.0",
    texto = "¡Felicitaciones!\n\nJuan: Gracias por su ayuda. Ahora podré ir a investigar el nuevo sistema estelar. ¡Lo llamaré Juansescu!\n\nJuan fue nombrado presidente y el criminal gato a rayas fue encarcelado.",
    imagen = "Gatito Tras las rejas.png",
    efecto = "alejarse"
}
