import time
import random
import math

def contar_conflictos(tablero):
    conflictos = 0
    n = len(tablero)
    for i in range(n):
        for j in range(i + 1, n):
            if tablero[i] == tablero[j] or abs(tablero[i] - tablero[j]) == abs(i - j):
                conflictos += 1
    return conflictos

def generar_vecino(tablero):
    n = len(tablero)
    nuevo_tablero = list(tablero)
    fila = random.randint(0, n - 1)
    nueva_col = random.randint(0, n - 1)
    while nueva_col == tablero[fila]:
        nueva_col = random.randint(0, n - 1)
    nuevo_tablero[fila] = nueva_col
    return nuevo_tablero

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
    print("\n" + "=" * 30 + "\n")

def recocido_simulado(tablero, temp_inicial=1000, enfriamiento=0.995, temp_min=0.1):
    start_time = time.time()
    estado_actual = tablero[:]
    conflictos_actual = contar_conflictos(estado_actual)
    temperatura = temp_inicial
    movimientos = 0
    
    print("Estado inicial:")
    imprimir_tablero(estado_actual)
    
    while temperatura > temp_min and conflictos_actual > 0:
        vecino = generar_vecino(estado_actual)
        conflictos_vecino = contar_conflictos(vecino)
        
        delta = conflictos_vecino - conflictos_actual
        if delta < 0 or random.random() < math.exp(-delta / temperatura):
            estado_actual = vecino
            conflictos_actual = conflictos_vecino
        
        temperatura *= enfriamiento
        movimientos += 1
        
        print(f"\nMovimiento {movimientos} (Temperatura: {temperatura:.4f}):")
        imprimir_tablero(estado_actual)
    
    tiempo_transcurrido = time.time() - start_time
    return estado_actual, movimientos, tiempo_transcurrido


estado_inicial = [0, 4, 7, 5, 2, 6, 1, 3]
# estado_inicial = [random.randint(0, 7) for _ in range(8)]

solucion, movimientos, tiempo = recocido_simulado(estado_inicial)

print("Solución encontrada:")
imprimir_tablero(solucion)
print(f"Movimientos realizados: {movimientos}")
print(f"Tiempo transcurrido (segundos): {tiempo:.4f}")
