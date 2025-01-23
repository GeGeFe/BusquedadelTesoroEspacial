
sinsonido = true
noimagen = false
nombresalazar = "famososciencia.lua"

ubicacioninicial = "cel://Follow/Sol:Mars/2025-01-23T15:49:07.44271Z?x=3B0upDt9qv///////////w&y=P/Bk9bbg+////////////w&z=aN3Q2Y4Apf///////////w&ow=-0.23736617&ox=0.11609072&oy=-0.96330583&oz=-0.047138922&select=Sol:Mars&fov=29.107897&ts=1&ltd=0&p=0&rf=71096215&nrf=255&lm=2048&tsrc=0&ver=3"
objetodeinicio = "Marte"

introduccion = {
    pausa = "20",
    texto = "Elongast escapó de la cárcel y a vuelto a hacer de las suyas. \nDesde la Tierra informan que ya van cuatro misiones Tierra-Marte saboteas por él.\nParece que está intentando mejorar su nave: el Chimango Octogenario\nSi seguimos el rastro de sus fechorías seguro lo atrapamos.",
    imagen = "Elongast.png",
    sonido = ""
}

final = {
    pausa = "10",
    texto = "El Chimango Octogenario se ha quedado sin combustible y Elongast no pudo escapar.\n¡Felicitaciones!",
    imagen = "personaje07.png",
    sonido = "",
    efecto = "fuegosartificiales"
}

recorrido = {
    
    {   objetivo = "Tierra",
        pistas = {
            { texto = "Jefe: ¡No hay tiempo que perder!\n¿Por qué no estás investigando en el lugar donde realizó su último robo?", personaje = "personaje07.png" },
        },
        fallos = { "Jefe: ¿Sigues perdiendo el tiempo?","Jefe: Estás desorientado" },
        felicitacion = "Es una lástima. Nos llevará años fabricar motores iguales."
    },

    {   objetivo = "Neptuno",
        pistas = {
            { texto = "Vendedora de repuestos: Quería paneles solares supersensibles que capten hasta el rayo más debil del sol.\nLe dijimos que aquí no tenemos, que busque en fábricas de planetas más lejanos.", personaje = "personaje08.png" },
        },
        fallos = { "Aquí no fabricamos eso.","No conocemos a ningún Elongast" },
        felicitacion = "¡Somos los mejores!\nNuestros paneles solares son únicos."
    },

    {   objetivo = "Mercurio",
        pistas = {
            { texto = "Fabricante de paneles solares: Antes de robarnos comentó que quería probar al extremo unos vidrios antireflejos.", personaje = "personaje17.png" },
        },
        fallos = { "Aquí no vimos a nadie sospechoso","Este es un lugar muy tranquilo, no ha pasado nadie." },
        felicitacion = "Lo vimos probando unos vidrios muy oscuros."
    },

    {   objetivo = "Venus",
        pistas = {
            { texto = "Informante: Alguien lo ha visto buscando combustible. Aquí no ha conseguido nada de la atmósfera y se ha ido.", personaje = "personaje09.png" },
        },
        fallos = { "No se de que habla.","Yo solo sé que no sé nada." },
        felicitacion = "Vea que desastre. Se le desprendió un tanque de combustible.\nPor suerte nadie salió herido."
    },

    {   objetivo = "Júpiter",
        pistas = {
            { texto = "Operario de playa: Intentó cargar combustible pero tenía una pérdida. Cuando lo quisimos parar escapó.\nYa dimos aviso a la policia y nadie lo va a atender en este planeta.\nTendrá que buscar gas en otro lado.", personaje = "personaje11.png" },
        },
        fallos = { "¿Cómo dice? No entiendo.","No me gustan los policias.\nNo me moleste." },
        felicitacion = "Aquí hay otro tanque. Seguro anda cerca."
    },

}