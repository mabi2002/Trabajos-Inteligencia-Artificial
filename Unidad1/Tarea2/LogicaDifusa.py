import numpy as np
import skfuzzy as fuzz
from skfuzzy import control as ctrl

# Crear variables difusas
calidad = ctrl.Antecedent(np.arange(0, 11, 1), 'calidad')
servicio = ctrl.Antecedent(np.arange(0, 11, 1), 'servicio')
propina = ctrl.Consequent(np.arange(0, 26, 1), 'propina')

# Definir funciones de membresía manualmente en español
calidad['mala'] = fuzz.trimf(calidad.universe, [0, 0, 5])
calidad['regular'] = fuzz.trimf(calidad.universe, [0, 5, 10])
calidad['buena'] = fuzz.trimf(calidad.universe, [5, 10, 10])

servicio['malo'] = fuzz.trimf(servicio.universe, [0, 0, 5])
servicio['normal'] = fuzz.trimf(servicio.universe, [0, 5, 10])
servicio['bueno'] = fuzz.trimf(servicio.universe, [5, 10, 10])

propina['baja'] = fuzz.trimf(propina.universe, [0, 0, 13])
propina['media'] = fuzz.trimf(propina.universe, [0, 13, 25])
propina['alta'] = fuzz.trimf(propina.universe, [13, 25, 25])

# Reglas difusas
regla1 = ctrl.Rule(calidad['mala'] | servicio['malo'], propina['baja'])
regla2 = ctrl.Rule(servicio['normal'], propina['media'])
regla3 = ctrl.Rule(servicio['bueno'] | calidad['buena'], propina['alta'])

# Sistema de control
sistema = ctrl.ControlSystem([regla1, regla2, regla3])
simulacion = ctrl.ControlSystemSimulation(sistema)

# Entradas
simulacion.input['calidad'] = 6.5
simulacion.input['servicio'] = 9.8

# Calcular
simulacion.compute()
print(f"Propina sugerida: {simulacion.output['propina']:.2f}%")