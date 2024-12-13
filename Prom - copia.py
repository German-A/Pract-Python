import tkinter as tk

#Conexion a base de datos
import pyodbc

# Establecer la conexión con la base de datos SQL Server
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

# Cerrar la conexión
#cursor.close()
#conn.close()


#Inicio de programa 
def on_button_click():
    # Hacer visible el campo de entrada (Entry)
    #button2.pack_forget()
    entry_label.config(text="Ingresa algo:")
    entry_label.pack(pady=10) 
    entry.pack()  # Mostrar el campo de entrada
    boton_e.pack()  # Mostrar el botón para enviar el dato
    # Ocultar el segundo botón para evitar conflicto visual
    #button2.pack_forget()

def on_consulta1():
    query = "SELECT direccion_ip FROM Datos WHERE direccion_ip like '"+'172.20.50.108'+"' ORDER BY direccion_ip DESC"
    on_submit_click(query)


def on_submit_click(query):
    # Obtener el texto ingresado en el campo de entrada
    user_input = entry.get()
    
    # Actualizar la etiqueta con el dato ingresado
    # if user_input:
    #          label.config(text=f"Has ingresado: {user_input}")
    # else:
    #         label.config(text="No se ingresó ningún dato.")
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

# def on_consulta1():
#     query = "SELECT direccion_ip FROM Datos WHERE direccion_ip = '172.20.50.109' ORDER BY direccion_ip DESC"
#     on_submit_click(query)


def on_button_click2():
    # Similar al primer botón, pero con un comportamiento diferente
    label.config(text="¡buuton 2!")
    entry_label.pack_forget()
    entry.pack_forget()
    boton_e.pack_forget()
       
    


# Crear la ventana principal
root = tk.Tk()
root.title("Mi Primera Aplicación")

# Establecer el tamaño de la ventana
root.geometry("400x300")

# Crear un widget de etiqueta
label = tk.Label(root, text="Haz clic en el botón")
label.pack(pady=20)

# Crear el primer botón
button = tk.Button(root, text="boton 1", command = on_button_click, width=20, height=2)
button.pack(pady=10)

# Crear el segundo botón
button2 = tk.Button(root, text="Botón 2", command=lambda: on_button_click2, width=20, height=2)
button2.pack(pady=10)

# Crear una etiqueta para mostrar el texto del campo de entrada
entry_label = tk.Label(root, text="")
entry_label.pack(pady=10)

# 
entry = tk.Entry(root, width=30)
boton_e = tk.Button(root, text="Enviar", command=lambda: on_consulta1())


# Iniciar el bucle de eventos
root.mainloop()




