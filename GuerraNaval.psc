Algoritmo GuerraNaval
    // Crear tableros vacíos 4x4 para los dos jugadores
    Dimension tablero_jugador1[4,4], tablero_jugador2[4,4]  // Se utiliza Dimension para crear matrices de 4x4
    
    // Definir variables para las filas y columnas donde se colocan los barcos
    // Se definen las variables para llevar el control de los turnos y aciertos
    Definir fila, columna, turno Como Entero
    Definir barco1_fila, barco1_columna, barco2_fila, barco2_columna Como Entero
    Definir acierto1, acierto2 Como logico
    
    // Preguntar al Jugador 1 por las coordenadas de su barco
    Escribir "Jugador 1, ingresa las coordenadas de tu barco:"
    Escribir "Ingresa fila (1-4):"  // Solicitar la fila donde colocar el barco
    Leer barco1_fila  // Leer la fila ingresada por el Jugador 1
    Escribir "Ingresa columna (1-4):"  // Solicitar la columna donde colocar el barco
    Leer barco1_columna  // Leer la columna ingresada por el Jugador 1
    tablero_jugador1[barco1_fila, barco1_columna] <- 1  // Colocar el barco en la posición indicada (valor 1 representa el barco)
    
    LimpiarPantalla  // Limpiar la pantalla después de colocar el barco del Jugador 1 para que no vean el tablero
    
    // Preguntar al Jugador 2 por las coordenadas de su barco
    Escribir "Jugador 2, ingresa las coordenadas de tu barco:"
    Escribir "Ingresa fila (1-4):"  // Solicitar la fila donde colocar el barco
    Leer barco2_fila  // Leer la fila ingresada por el Jugador 2
    Escribir "Ingresa columna (1-4):"  // Solicitar la columna donde colocar el barco
    Leer barco2_columna  // Leer la columna ingresada por el Jugador 2
    tablero_jugador2[barco2_fila, barco2_columna] <- 1  // Colocar el barco en la posición indicada en el tablero del Jugador 2
    
    LimpiarPantalla  // Limpiar la pantalla después de colocar el barco del Jugador 2
    
    // Iniciar el juego
    turno <- 1  // El juego comienza con el turno del Jugador 1
    acierto1 <- Falso  // Inicializamos el estado de aciertos
    acierto2 <- Falso  // Inicializamos el estado de aciertos
    
    Escribir "Bienvenido a la Guerra Naval"  // Mensaje de bienvenida
    
    // Bucle principal del juego donde los jugadores se turnan para disparar
    Mientras No acierto1 Y No acierto2 Hacer  // El juego continuará hasta que un jugador acierte
        Si turno = 1 Entonces  // Si es el turno del Jugador 1
            Escribir "Turno del Jugador 1"  // Informar que es el turno del Jugador 1
            Escribir "Ingresa fila (1-4):"  // Solicitar la fila para disparar
            Leer fila  // Leer la fila donde el Jugador 1 quiere disparar
            Escribir "Ingresa columna (1-4):"  // Solicitar la columna para disparar
            Leer columna  // Leer la columna donde el Jugador 1 quiere disparar
            
            // Verificar si el disparo del Jugador 1 es acertado
            Si tablero_jugador2[fila, columna] = 1 Entonces  // Si la posición en el tablero del Jugador 2 tiene un barco
                Escribir "¡Tocado! El Jugador 1 ha acertado."  // Informar que el Jugador 1 ha tocado un barco
                acierto2 <- Verdadero  // El Jugador 1 gana si acierta
            Sino  // Si no ha tocado un barco
                Escribir "Agua. El Jugador 1 ha fallado."  // Informar que ha fallado
            FinSi
            
              // Limpiar la pantalla para el siguiente turno
            
            turno <- 2  // Cambiar al turno del Jugador 2
			
        Sino  // Si es el turno del Jugador 2
            Escribir "Turno del Jugador 2"  // Informar que es el turno del Jugador 2
            Escribir "Ingresa fila (1-4):"  // Solicitar la fila para disparar
            Leer fila  // Leer la fila donde el Jugador 2 quiere disparar
            Escribir "Ingresa columna (1-4):"  // Solicitar la columna para disparar
            Leer columna  // Leer la columna donde el Jugador 2 quiere disparar
            
            // Verificar si el disparo del Jugador 2 es acertado
            Si tablero_jugador1[fila, columna] = 1 Entonces  // Si la posición en el tablero del Jugador 1 tiene un barco
                Escribir "¡Tocado! El Jugador 2 ha acertado."  // Informar que el Jugador 2 ha tocado un barco
                acierto1 <- Verdadero  // El Jugador 2 gana si acierta
            Sino  // Si no ha tocado un barco
                Escribir "Agua. El Jugador 2 ha fallado."  // Informar que ha fallado
            FinSi
            
             // Limpiar la pantalla para el siguiente turno
            
            turno <- 1  // Cambiar al turno del Jugador 1
        FinSi
    FinMientras  // Fin del bucle mientras no se haya ganado
    
    // Anunciar al ganador
    Si acierto1 Entonces  // Si el Jugador 2 ha acertado
        Escribir "¡El Jugador 1 ha ganado!"  // El Jugador 1 ha ganado
    Sino  // Si el Jugador 1 ha acertado
        Escribir "¡El Jugador 2 ha ganado!"  // El Jugador 2 ha ganado
    FinSi
FinAlgoritmo


