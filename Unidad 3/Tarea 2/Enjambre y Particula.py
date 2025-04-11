import numpy as np
import random

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

        # Evaluar las partículas y actualizar el mejor valor global
        for p in self.particulas:
            p.evaluar_particula(funcion_objetivo, optimizacion)
            self._actualizar_mejor_global(p)

    def _actualizar_mejor_global(self, particula):
        if self.mejor_valor_global is None or \
           (self.optimizacion == "minimizar" and particula.mejor_valor < self.mejor_valor_global) or \
           (self.optimizacion == "maximizar" and particula.mejor_valor > self.mejor_valor_global):
            self.mejor_valor_global = particula.mejor_valor
            self.mejor_posicion_global = particula.mejor_posicion.copy()

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

    # Mostrar el mejor valor global y la mejor posición después de la inicialización
    print("\n✅ Resultado inicial:")
    print("Mejor valor encontrado:", enjambre.mejor_valor_global)
    print("Posición correspondiente:", enjambre.mejor_posicion_global)
