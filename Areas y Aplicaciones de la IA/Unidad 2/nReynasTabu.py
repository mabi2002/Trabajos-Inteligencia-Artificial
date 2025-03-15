import time
import random
from collections import deque

# Función para contar el número de conflictos entre reinas en el tablero
def contar_conflictos(tablero):
    conflictos = 0
    n = len(tablero)
    for i in range(n):
        for j in range(i + 1, n):
            # Conflicto si están en la misma columna o en la misma diagonal
            if tablero[i] == tablero[j] or abs(tablero[i] - tablero[j]) == abs(i - j):
                conflictos += 1
    return conflictos

# Función para generar todos los posibles movimientos desde el estado actual
def generar_vecinos(tablero):
    vecinos = []
    n = len(tablero)
    for fila in range(n):
        for nueva_col in range(n):
            if nueva_col != tablero[fila]:  # Evita colocar la reina en la misma posición
                nuevo_tablero = list(tablero)  # Copiamos el tablero actual
                nuevo_tablero[fila] = nueva_col  # Movemos la reina a la nueva columna
                vecinos.append(nuevo_tablero)  # Agregamos el nuevo estado a la lista
    return vecinos

# Función para imprimir el tablero de manera mas grafica
def imprimir_tablero(tablero):
    n = len(tablero)
    for fila in range(n):
        linea = ""
        for col in range(n):
            if tablero[fila] == col:
                linea += " Q "  
            else:
                linea += " . " 
        print(linea)
    print("\n" + "="*30 + "\n") 

# Función que implementa la Búsqueda Tabú
def busqueda_tabu(tablero, max_iter=1000, tabu_tam=10):
    start_time = time.time()  # Registramos el tiempo de inicio
    movimientos = 0  # Contador de movimientos
    estado_actual = tablero[:]  # Copiamos el estado inicial
    conflictos_actual = contar_conflictos(estado_actual)  # Calculamos los conflictos iniciales
    tabu_lista = deque(maxlen=tabu_tam)  # Lista tabú con capacidad limitada
    
    print("Estado inicial:")
    imprimir_tablero(estado_actual)  # Mostramos el estado inicial
    
    for _ in range(max_iter):
        if conflictos_actual == 0:  # Si no hay conflictos, terminamos
            break
        
        vecinos = generar_vecinos(estado_actual)  # Generamos los estados vecinos
        vecinos = [v for v in vecinos if v not in tabu_lista]  # Filtramos los estados en la lista tabú
        
        if not vecinos:  # Si no hay vecinos disponibles, terminamos
            break
        
        mejor_estado = min(vecinos, key=contar_conflictos)  # Seleccionamos el mejor vecino (menos conflictos)
        mejor_conflictos = contar_conflictos(mejor_estado)  # Calculamos sus conflictos
        
        estado_actual = mejor_estado  # Actualizamos el estado actual
        conflictos_actual = mejor_conflictos  # Actualizamos el número de conflictos
        tabu_lista.append(estado_actual)  # Agregamos el estado a la lista tabú
        movimientos += 1  # Incrementamos el contador de movimientos
        
        print(f"\nMovimiento {movimientos}:")
        imprimir_tablero(estado_actual)  # Mostramos el nuevo estado del tablero
    
    tiempo_transcurrido = time.time() - start_time  # Calculamos el tiempo total de ejecución
    return estado_actual, movimientos, tiempo_transcurrido  # Retornamos la solución encontrada

# Generamos un estado inicial aleatorio para el problema de las 8 reinas
# estado_inicial = [random.randint(0, 7) for _ in range(8)]
estado_inicial = [0, 4, 7, 5, 2, 6, 1, 3] 

# Ejecutamos el algoritmo de Búsqueda Tabú
solucion, movimientos, tiempo = busqueda_tabu(estado_inicial)

# Mostramos la solución final
print("Solución encontrada:")
imprimir_tablero(solucion)
print(f"Movimientos realizados: {movimientos}")
print(f"Tiempo transcurrido (segundos): {tiempo:.4f}")
