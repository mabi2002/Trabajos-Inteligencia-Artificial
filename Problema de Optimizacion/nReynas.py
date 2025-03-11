import time  # Librería para medir el tiempo de ejecución
import random  # Librería para generar números aleatorios

# Función para contar cuántas reinas están en conflicto en un tablero dado
def contar_conflictos(tablero):
    conflictos = 0
    n = len(tablero)
    
    # Comparamos cada reina con las demás
    for i in range(n):
        for j in range(i + 1, n):
            # Conflicto si están en la misma columna o en la misma diagonal
            if tablero[i] == tablero[j] or abs(tablero[i] - tablero[j]) == abs(i - j):
                conflictos += 1
                
    return conflictos

# Función para generar todos los posibles movimientos desde un estado actual
def generar_vecinos(tablero):
    vecinos = []
    n = len(tablero)
    
    # Intentamos mover cada reina a una nueva columna en la misma fila
    for fila in range(n):
        for nueva_col in range(n):
            if nueva_col != tablero[fila]:  # Evita colocar la reina en la misma posición
                nuevo_tablero = list(tablero)  # Copiamos el tablero actual
                nuevo_tablero[fila] = nueva_col  # Movemos la reina a la nueva columna
                vecinos.append(nuevo_tablero)  # Agregamos el nuevo tablero a la lista
                
    return vecinos

# Función para imprimir el tablero de forma gráfica en la terminal
def imprimir_tablero(tablero):
    n = len(tablero)
    
    for fila in range(n):
        linea = ""
        for col in range(n):
            if tablero[fila] == col:
                linea += " Q "  # Representamos la reina con una "Q"
            else:
                linea += " . "  # Espacio vacío representado con un "."
        print(linea)
    
    print("\n" + "="*30 + "\n")  # Separador para visualizar mejor los estados

# Función que implementa el algoritmo de Hill Climbing (Ascenso de colinas)
def hill_climbing(tablero):
    start_time = time.time()  # Registramos el tiempo de inicio
    movimientos = 0  # Contador de movimientos
    estado_actual = tablero[:]  # Copiamos el estado inicial
    conflictos_actual = contar_conflictos(estado_actual)  # Calculamos los conflictos iniciales
    
    print("Estado inicial:")
    imprimir_tablero(estado_actual)  # Mostramos el tablero inicial
    
    # Mientras haya conflictos, seguimos buscando una mejor solución
    while conflictos_actual > 0:
        vecinos = generar_vecinos(estado_actual)  # Generamos los vecinos del estado actual
        mejor_estado = min(vecinos, key=contar_conflictos)  # Escogemos el vecino con menos conflictos
        mejor_conflictos = contar_conflictos(mejor_estado)  # Calculamos los conflictos del mejor vecino
        
        # Si no encontramos una mejor solución, realizamos un reinicio aleatorio
        if mejor_conflictos >= conflictos_actual:
            estado_actual = [random.randint(0, len(tablero) - 1) for _ in range(len(tablero))]
            conflictos_actual = contar_conflictos(estado_actual)  # Recalculamos conflictos
        else:
            # Si encontramos un mejor estado, lo actualizamos
            estado_actual = mejor_estado
            conflictos_actual = mejor_conflictos
            movimientos += 1  # Aumentamos el contador de movimientos
            
            print(f"\nMovimiento {movimientos}:")  # Mostramos el número de movimiento
            imprimir_tablero(estado_actual)  # Mostramos el nuevo estado del tablero
    
    tiempo_transcurrido = time.time() - start_time  # Calculamos el tiempo total de ejecución
    return estado_actual, movimientos, tiempo_transcurrido  # Retornamos la solución encontrada

# Generamos un estado inicial aleatorio para el problema de las 8 reinas
#estado_inicial = [0, 4, 7, 5, 2, 6, 1, 3]
estado_inicial = [random.randint(0, 7) for _ in range(8)]

# Ejecutamos el algoritmo de Hill Climbing
solucion, movimientos, tiempo = hill_climbing(estado_inicial)

# Mostramos la solución final
print("Solución encontrada:")
imprimir_tablero(solucion)
print(f"Movimientos realizados: {movimientos}")
print(f"Tiempo transcurrido (segundos): {tiempo:.4f}")