-- Agregar aquí entre las comillas la ubicación de inicio (Navegación/Copy URL en Celestia)
-- Comentar la linea si no se quiere especificar una ubicación inicial.
--
-- Recorrido creado junto con los chicos del Club de Ciencias de la Biblioteca Popular Mafalda de Bahía Blanca
--
nombresalazar = "famososciencia.lua"
ubicacioninicial = "cel://Follow/Sol:Saturn/2024-05-23T22:38:34.89606Z?x=4KxiJGcS7P3//////////w&y=YOZYe0e2e/3//////////w&z=QPuyq4HRkgU&ow=0.09728264&ox=-0.19204986&oy=-0.14129645&oz=0.96627545&select=Sol:Saturn&fov=36.87419&ts=1&ltd=0&p=0&rf=71095959&nrf=255&lm=2048&tsrc=0&ver=3"
objetodeinicio = "Saturno"

introduccion = {
    pausa = "25.0",
    texto = "Toto: Cuanta tristeza. ¿Dónde estás Mimas? Oh. ¿Quiénes son ustedes? ¡Estoy deseseperado! No encuentro a mi perdíz.\nSe llama Mimas. ¿La han visto?",
    imagen = "Toto.png"
}

recorrido = {
        {   objetivo = "Mimas",
        pistas = { 
            { texto = "Toto: Vean lo linda que es. Esta foto es de hace unos días.\nLa llevé a pasear a la luna que tiene su nombre, para que la conozca. ¡Luego no la volví a ver!", personaje = "Toto y Mimas.png" }
        },
        fallos = { "No sé lo que es una perdíz. Pregunte en otro lugar.", "No la he visto por aquí."},
        felicitacion = "Mire como me dejó la bolsa de maiz. ¡Parece que tiene hambre!",
    }, {
        objetivo = "Sol",
        pistas = { 
            { texto = "Que hermoso animalito. Parecía con frio así que lo envié a un baño de calor en nuestro astro más brillante.\nSeguro le da mucha energía también.", personaje = "personaje10.png" }
        },
        fallos = { "¿Tanto alboroto por un bicho? Yo no sé nada. No me moleste."},
        felicitacion = "Si la ví. Parecía asustada.",
    }, {
        objetivo = "Venus",
        pistas = {
            { texto = "Leonardo: La vi subir a una nave. Me preocupa que a donde va le afecte la duración del día.\nDura más que medio año terrestre y eso afecta a esas aves.", personaje = "personaje13.png" }
        },
        fallos = { "Por aquí no ha pasado ninguna perdíz.", "¿Me vió cara de cuidador de zoológico?"},
        felicitacion = "Salió volando rápidamente cuando intenté acercarme.",
    }, {
        objetivo = "Luna",
        pistas = {
            { texto = "Angie: ¡Es muy inteligente! Solita fue hasta el teletransportador y presionó la tecla para ir al satelite natural\nque orbita la tierra.", personaje = "personaje12.png" }
        },
        fallos = { "No me gusta mucho este lugar. ¿A usted?", "Recién llegué. No vi nada" },
        felicitacion = "Parece un animal entrenado. Me miró fijo y se fue.",
    }, {
        objetivo = "Júpiter",
        pistas = {
            { texto = "Parece que le gustan las lunas... o los círculos. Estaba como hipnotizada mirando los planetas con más lunas.", personaje = "personaje15.png" }
        },
        fallos = { "¡Que está haciendo aquí! Esta es una zona prohibida.", "¿Cómo dice? No escucho bien. ¡¡¡¿Cómo?!!!" },
        felicitacion = "¿Que vista más hermosa no le parece?\nAquí tenemos muchas lunas.",
    }, {
        objetivo = "Mercurio",
        pistas = {
            { texto = "Melina: ¿Escuchó la noticia? ¡Que gracioso! Una perdíz intentando anidar en el crater Caloris Planitia. ¡Ja ja!", personaje = "personaje16.png" }
        },
        fallos = { "¿No escuchó bien la noticia? Aquí no es.", "Debería estudiar mejor geografía interplanetaria." },
        felicitacion = "¡Yo la encontré, si señor! En seguida llamé a la televisión\ngaláctica para que la vieran. Es muy graciosa.",
    }
}

final = {
    pausa = "20.0",
    texto = "Toto: ¡Gracias a ustedes pude reencontrarme con Mimas! ¡Gracias!",
    imagen = "Toto y Mimas.png",
    efecto = "fuegosartificiales"
}
