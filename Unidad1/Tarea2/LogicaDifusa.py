import pandas as pd

# Cargar el CSV
df = pd.read_csv("C:/Users/Migue/OneDrive/Escritorio/IndicadoresSalud.csv", sep=";", usecols=["Country"])

# Guardar solo la columna de países en un nuevo archivo CSV
df.to_csv("paises.csv", index=False)

print("Archivo guardado con éxito 🎉")
