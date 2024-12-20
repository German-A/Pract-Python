import tkinter as tk


def on_button_click():
    # Hacer visible el campo de entrada (Entry)
    #button2.pack_forget()
    entry_label.config(text="Ingresa algo:")
    entry_label.pack(pady=10) 
    entry.pack()  # Mostrar el campo de entrada
    boton_e.pack()  # Mostrar el botón para enviar el dato
    # Ocultar el segundo botón para evitar conflicto visual
    #button2.pack_forget()

def on_submit_click():
    # Obtener el texto ingresado en el campo de entrada
    user_input = entry.get()
    
    # Actualizar la etiqueta con el dato ingresado
    if user_input:
        label.config(text=f"Has ingresado: {user_input}")
    else:
        label.config(text="No se ingresó ningún dato.")
    
    # Ocultar el campo de entrada y el botón de envío después de ingresar el dato
    entry.pack_forget()
    boton_e.pack_forget()

    # Volver a mostrar el segundo botón para continuar con su funcionalidad
    #button2.pack(pady=1)

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
button = tk.Button(root, text="boton 1", command=on_button_click, width=20, height=2)
button.pack(pady=10)

# Crear el segundo botón
button2 = tk.Button(root, text="Botón 2", command=on_button_click2, width=20, height=2)
button2.pack(pady=10)

# Crear una etiqueta para mostrar el texto del campo de entrada
entry_label = tk.Label(root, text="")
entry_label.pack(pady=10)

# Crear un campo de entrada (Entry) y dos botones de envío, pero no los mostramos inicialmente
entry = tk.Entry(root, width=30)
boton_e = tk.Button(root, text="Enviar", command=on_submit_click)


# Iniciar el bucle de eventos
root.mainloop()




#Conexion a base de datos
import pyodbc

# Establecer la conexión con la base de datos SQL Server
conn = pyodbc.connect(
    'DRIVER={ODBC Driver 17 for SQL Server};'
    'SERVER=localhost;'
    'DATABASE=EJEMPLO;'
    'UID=sa;'
    'PWD=123456'
)

# Crear un cursor para interactuar con la base de datos
cursor = conn.cursor()

# Ejecutar una consulta SQL
cursor.execute("SELECT * FROM nombre_tabla;")

# Obtener todos los resultados
resultados = cursor.fetchall()

# Mostrar los resultados
for fila in resultados:
    print(fila)

# Cerrar la conexión
cursor.close()
conn.close()