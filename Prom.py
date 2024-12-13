import pyodbc
import tkinter as tk

# Configuración de la ventana principal
root = tk.Tk()

# Establecer el tamaño de la ventana
root.geometry("400x300")

# Configuración de la entrada y los botones
entry = tk.Entry(root)
entry.pack()



label = tk.Label(root, text="")
label.pack()

boton1 = tk.Button(root, text="Consulta 1", command=lambda: on_consulta1(), width=20, height=2)
boton1.pack()

boton2 = tk.Button(root, text="Consulta 2", command=lambda: on_consulta2(), width=20, height=2)
boton2.pack()

# Función para conectar a la base de datos
def obtener_conexion():
    # Detalles de la conexión
    server = 'localhost'  # Nombre de tu servidor
    database = 'GAA'  # Nombre de tu base de datos
    username = 'sa'  # Usuario para la base de datos
    password = '123456'  # Contraseña

    conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'

    # Realizar la conexión
    conn = pyodbc.connect(conn_str)
    return conn

# Función para realizar una consulta y mostrar el resultado en el label
def ejecutar_consulta(query):
    try:
        # Obtener la conexión a la base de datos
        conn = obtener_conexion()
        cursor = conn.cursor()

        # Ejecutar la consulta
        cursor.execute(query)
        
        # Obtener el resultado
        result = cursor.fetchone()  # Obtener una fila

        # Mostrar el resultado en la etiqueta
        if result:
            label.config(text=f"Resultado: {result[0]}")
        else:
            label.config(text="No se encontró ningún resultado.")

        # Cerrar la conexión
        conn.close()

    except Exception as e:
        # Manejo de errores
        label.config(text=f"Error: {e}")

# Función de consulta 1
def on_consulta1():
    query = "SELECT direccion_ip FROM Datos WHERE direccion_ip = '172.20.50.109' ORDER BY direccion_ip DESC"
    ejecutar_consulta(query)

# Función de consulta 2
def on_consulta2():
    query = "SELECT direccion_ip FROM Datos WHERE oficina = 'UREG' ORDER BY direccion_ip DESC"
    ejecutar_consulta(query)

# Ejecutar la interfaz gráfica
root.mainloop()