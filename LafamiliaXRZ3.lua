
sinsonido = true
noimagen = false
nombresalazar = ""

ubicacioninicial = "cel://Follow/Milky%20Way/2025-01-30T14:16:22.33196Z?x=AAAAAAAA8ir+qC1B4P///w&y=AAAAAACAQ3txmDhlAg&z=AAAAAAAA+JT39ZRZ6////w&ow=-0.42597848&ox=0.33656043&oy=-0.81167847&oz=-0.21551678&select=Milky%20Way&fov=29.107897&ts=1&ltd=0&p=0&rf=71096215&nrf=255&lm=2048&tsrc=0&ver=3"
objetodeinicio = "Vía Láctea"

introduccion = {
    pausa = "15",
    texto = "Luego de que su planeta explotó, la familia XRZ3\nviaja por el espacio buscando un nuevo lugar para vivir.\n¿Los ayudamos?",
    imagen = "Familia-XRZ3.png",
    sonido = ""
}

final = {
    pausa = "15",
    texto = "Felicitaciones. Juntos han encontrado un planeta para la familia XRZ3.",
    imagen = "Familia-XRZ3.png",
    sonido = "",
    efecto = "orbitar"
}

recorrido = {
    
    {   objetivo = "Sol",
        pistas = {
            { texto = "El lugar indicado está en alguno de los planetas alrededor de esa estrella\nenana amarilla que se mueve en uno de los brazos de la Vía Láctea.", personaje = "Familia-XRZ3.png" },
        },
        fallos = { "No pueden andar por aquí." },
        felicitacion = "Parece que hemos llegado.\nAhora tenemos que encontrar algún planeta habitable."
    },
    {   objetivo = "Tierra",
        pistas = {
            { texto = "Casiopeia: Probemos en el tercer planeta.\nEstá en una zona ideal para la vida.", personaje = "Casiopeia.png" },
        },
        fallos = { "No pueden andar por aquí." },
        felicitacion = "Isis: ¡Qué bello planeta!\nOsiris: ¡Está lleno de agua!"
    },
    {   objetivo = "Marte",
        pistas = {
            { texto = "No pueden circular por el sistema sin permiso.\nVayan al planeta rojo y hagan los trámites necesarios.", personaje = "Policía_espacial.png" },
        },
        fallos = { "Por aquí no pueden circular.\n¡Consigan un permiso!" },
        felicitacion = "Aquí tienen su permiso.\nAhora váyanse a otro lado. Aquí no hay lugar."
    },
    {   objetivo = "Urano",
        pistas = {
            { texto = "Osiris: A mi me gusta el clima muy frio.\n¿Probamos en el planeta más frio?", personaje = "Osiris.png" },
        },
        fallos = { "Creo que pueden encontrar un planeta\nmás frio todavía.","Aunque no lo crea aquí hace calor."},
        felicitacion = "Isis: Aquí hace frio pero hay poca luz también.\n¿Y si buscamos un planeta con anillos más vistosos?"
    },
        {   objetivo = "Saturno",
        pistas = {
            { texto = "Sirius: Busquemos el planeta con los anillos más vistosos.", personaje = "Sirius.png" },
        },
        fallos = { "Les recomiendo que lean la guía turística\n del Sistema Solar. Están muy perdidos.","¿Anillos dijo que está buscando?"},
        felicitacion = "Cassiopeia: Que hermosa vista.\nCreo que nos quedaremos aquí."
    },
}
