import pandas as pd
import numpy as np
import tensorflow as tf
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import OneHotEncoder, StandardScaler
import joblib

# Cargar dataset
df = pd.read_csv("operaciones.csv")

# Codificar operación transformar el símbolo en números para que la red neuronal pueda trabajar con ellos.
encoder = OneHotEncoder(sparse_output=False)
op_encoded = encoder.fit_transform(df[['op']])

# Escalar números de entrada para la red neuronal
scaler_input = StandardScaler()
nums_scaled = scaler_input.fit_transform(df[['num1', 'num2']])

# Preparar datos de entrada X y salida y
X = np.concatenate([nums_scaled, op_encoded], axis=1)
y = df['result'].values.reshape(-1, 1)

# Escalar salida
scaler_output = StandardScaler()
y_scaled = scaler_output.fit_transform(y)

# Dividir datos (80% entrenamiento, 20% validación)
X_train, X_val, y_train, y_val = train_test_split(X, y_scaled, test_size=0.2, random_state=42)

model = tf.keras.Sequential([
    tf.keras.layers.Input(shape=(X_train.shape[1],)),
    tf.keras.layers.Dense(64, activation='relu'),
    tf.keras.layers.Dense(64, activation='relu'),
    tf.keras.layers.Dense(1)
])

model.compile(optimizer='adam', loss='mse', metrics=['mae'])
model.fit(X_train, y_train, validation_data=(X_val, y_val), epochs=200, batch_size=16, verbose=0)

print(" Modelo entrenado.")

# Función para predecir ek resultado
def predecir(num1, num2, op):
    if op not in ['+', '-', '*', '/']:
        print("Operación no válida.")
        return
    entrada_nums = scaler_input.transform(pd.DataFrame([[num1, num2]], columns=["num1", "num2"]))
    entrada_op = encoder.transform(pd.DataFrame([[op]], columns=["op"]))
    entrada = np.concatenate([entrada_nums, entrada_op], axis=1)
    resultado_escalado = model.predict(entrada, verbose=0)
    resultado = scaler_output.inverse_transform(resultado_escalado)
    return resultado[0][0]

while True:
    print("\nCalculadora con red neuronal (valores del 0 al 9)")
    try:
        num1 = int(input("Número 1 (0-9): "))
        num2 = int(input("Número 2 (0-9): "))
        op = input("Operación (+, -, *, /): ")

        if not (0 <= num1 <= 9 and 0 <= num2 <= 9):
            print("Números fuera del rango.")
            continue

        resultado = predecir(num1, num2, op)
        print(f"Resultado aproximado por la red neuronal: {resultado:.4f}")
    except KeyboardInterrupt:
        print("\nSaliendo.")
        break
    except Exception as e:
        print("Error:", e)
