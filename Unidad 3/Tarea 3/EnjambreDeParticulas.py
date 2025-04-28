import numpy as np
import random
import warnings
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

# -------------------- Clase Particula --------------------
class Particula:
    def __init__(self, n_variables, limites_inf=None, limites_sup=None, verbose=False):
        self.n_variables = n_variables
        self.limites_inf = np.array(limites_inf if limites_inf is not None else [-10**3]*n_variables, dtype=object)
        self.limites_sup = np.array(limites_sup if limites_sup is not None else [10**3]*n_variables, dtype=object)
        self.limites_inf = np.where(self.limites_inf == None, -10**3, self.limites_inf)
        self.limites_sup = np.where(self.limites_sup == None, 10**3, self.limites_sup)

        self.posicion = np.array([random.uniform(self.limites_inf[i], self.limites_sup[i]) for i in range(n_variables)])
        self.velocidad = np.zeros(n_variables)
        self.valor = None
        self.mejor_valor = None
        self.mejor_posicion = None

        if verbose:
            print("Partícula creada:", self.posicion)

    def evaluar_particula(self, funcion_objetivo, optimizacion, verbose=False):
        self.valor = funcion_objetivo(*self.posicion)
        if self.mejor_valor is None or \
           (optimizacion == "minimizar" and self.valor < self.mejor_valor) or \
           (optimizacion == "maximizar" and self.valor > self.mejor_valor):
            self.mejor_valor = self.valor
            self.mejor_posicion = self.posicion.copy()

        if verbose:
            print("Evaluada en:", self.posicion, "->", self.valor)

    def mover_particula(self, mejor_p_enjambre, inercia=0.8, peso_cognitivo=2, peso_social=2):
        r1 = np.random.rand(self.n_variables)
        r2 = np.random.rand(self.n_variables)

        self.velocidad = (
            inercia * self.velocidad +
            peso_cognitivo * r1 * (self.mejor_posicion - self.posicion) +
            peso_social * r2 * (mejor_p_enjambre - self.posicion)
        )
        self.posicion = self.posicion + self.velocidad

        # Respetar los límites
        for i in range(self.n_variables):
            if self.posicion[i] < self.limites_inf[i]:
                self.posicion[i] = self.limites_inf[i]
                self.velocidad[i] = 0
            elif self.posicion[i] > self.limites_sup[i]:
                self.posicion[i] = self.limites_sup[i]
                self.velocidad[i] = 0

# -------------------- Clase Enjambre --------------------
class Enjambre:
    def __init__(self, n_particulas, n_variables, funcion_objetivo,
                 limites_inf=None, limites_sup=None, optimizacion="minimizar", verbose=False):
        self.funcion_objetivo = funcion_objetivo
        self.optimizacion = optimizacion
        self.verbose = verbose
        self.particulas = [Particula(n_variables, limites_inf, limites_sup, verbose) for _ in range(n_particulas)]

        self.mejor_valor_global = None
        self.mejor_posicion_global = None

        for p in self.particulas:
            p.evaluar_particula(funcion_objetivo, optimizacion)
            self._actualizar_mejor_global(p)

    def _actualizar_mejor_global(self, particula):
        if self.mejor_valor_global is None or \
           (self.optimizacion == "minimizar" and particula.mejor_valor < self.mejor_valor_global) or \
           (self.optimizacion == "maximizar" and particula.mejor_valor > self.mejor_valor_global):
            self.mejor_valor_global = particula.mejor_valor
            self.mejor_posicion_global = particula.mejor_posicion.copy()

    def iterar(self, n_iteraciones=100, inercia=0.8, peso_cognitivo=2, peso_social=2, animar=False):
        historico_posiciones = []

        for iteracion in range(n_iteraciones):
            if self.verbose:
                print(f"\nIteración {iteracion+1} de {n_iteraciones}")

            posiciones_actuales = []

            for p in self.particulas:
                p.mover_particula(self.mejor_posicion_global, inercia, peso_cognitivo, peso_social)
                p.evaluar_particula(self.funcion_objetivo, self.optimizacion)
                self._actualizar_mejor_global(p)
                posiciones_actuales.append(p.posicion.copy())

            historico_posiciones.append(posiciones_actuales)

        if animar:
            self.animar_movimiento(historico_posiciones)

        return self.mejor_valor_global, self.mejor_posicion_global

    def animar_movimiento(self, historico_posiciones):
        fig, ax = plt.subplots()
        ax.set_title("Optimización PSO")
        ax.set_xlim(-10, 10)
        ax.set_ylim(-10, 10)

        puntos, = ax.plot([], [], 'bo')
        mejor, = ax.plot([], [], 'r*', markersize=12)

        def init():
            puntos.set_data([], [])
            mejor.set_data([], [])
            return puntos, mejor

        def update(frame):
            datos = np.array(historico_posiciones[frame])
            x = datos[:, 0]
            y = datos[:, 1]
            puntos.set_data(x, y)

            # Cambia esta línea para envolver los valores en listas
            mejor.set_data([self.mejor_posicion_global[0]], [self.mejor_posicion_global[1]])  # Lista para set_data()

            return puntos, mejor

        anim = FuncAnimation(fig, update, frames=len(historico_posiciones),
                             init_func=init, blit=True, interval=200)
        plt.show()

# -------------------- Función objetivo --------------------
def funcion(x, y):
    return (x - 3)**2 + (y + 1)**2  # mínimo en (3, -1)

# -------------------- Ejecución del algoritmo --------------------
if __name__ == "__main__":
    enjambre = Enjambre(
        n_particulas=20,
        n_variables=2,
        funcion_objetivo=funcion,
        limites_inf=[-10, -10],
        limites_sup=[10, 10],
        optimizacion="minimizar",
        verbose=False
    )

    valor, posicion = enjambre.iterar(n_iteraciones=50, animar=True)

    print("\n✅ Resultado final:")
    print("Mejor valor encontrado:", valor)
    print("Posición correspondiente:", posicion)
