import numpy as np
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense

# Datos de entrada (A, B)
X = np.array([
    [0, 0],
    [0, 1],
    [1, 0],
    [1, 1]
], dtype=np.float32)

# Salida esperada: [suma, resta, multiplicación, división]
Y = np.array([
    [0,  0, 0,  0],    
    [1, -1, 0,  0],    
    [1,  1, 0, 99],    
    [2,  0, 1,  1]
], dtype=np.float32)

# Modelo tipo perceptrón: sin capas ocultas, salida lineal (no va a dar respuestas tan acertadas)
model = Sequential([
    Dense(4, input_dim=2, activation='linear')  # 4 salidas: suma, resta, multiplicación, división
])
model.compile(optimizer='adam', loss='mse')
model.fit(X, Y, epochs=1000, verbose=0)

# Evaluación
print("Resultados del perceptrón (TensorFlow):")
predicciones = model.predict(X)

# Imprimir resultados corregidos
for i in range(len(X)):
    a, b = X[i]
    suma, resta, mult, div = map(float, predicciones[i])  
    print(f"A={int(a)} B={int(b)} => Suma: {suma:.2f}, Resta: {resta:.2f}, Mult: {mult:.2f}, Div: {div:.2f}")
