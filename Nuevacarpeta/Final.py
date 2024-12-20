import tkinter as tk
#Conexion a base de datos
import pyodbc
import subprocess  # Importamos el módulo subprocess

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
    # result_text.pack_forget()
    # scrollbar.pack_forget()
    entry_label.config(text="Ingresa algo:")
    entry_label.pack(pady=10) 
    entry.pack(pady=10)
    boton_enviar2.pack_forget()  # Mostrar el campo de entrada
    boton_enviar.pack(pady=10)  # Mostrar el botón para enviar el dato
    # result_text.pack()
    # scrollbar.pack()
    # Ocultar el segundo botón para evitar conflicto visual
    #button2.pack_forget()
    result_frame.pack_forget()  # Primero ocultamos el cuadro de resultados
    result_frame.pack(pady=20, fill=tk.BOTH, expand=True)  # Luego mostramos el cuadro de resultados

def on_button_click2():
    entry_label.config(text="Ingresa algo:")
    entry_label.pack(pady=10) 
    entry.pack()  
    boton_enviar.pack_forget() 
    boton_enviar2.pack() 
    result_frame.pack_forget()  # Primero ocultamos el cuadro de resultados
    result_frame.pack(pady=20, fill=tk.BOTH, expand=True) 

# Función para abrir una aplicación del sistema
def abrir_aplicacion():
    try:
        # Para Windows, abrir el Bloc de notas
        subprocess.Popen(['mstsc.exe'])

    except Exception as e:
        print(f"Error al intentar abrir la aplicación: {e}")

def on_consulta1(): #consulta por nombre
    entrada= entry.get()
    query = f"SELECT nom_us, direccion_ip, oficina FROM Datos WHERE nom_us like '%{entrada}%' "
    on_submit_click(query)
    

def on_consulta2(): #Consulta por oficina
    entrada= entry.get()
    query = f"SELECT oficina, nom_us, direccion_ip FROM Datos WHERE oficina like '%{entrada}%' "
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
        
         # Obtener todos los resultados
        results = cursor.fetchall()
        # Obtener el resultado
        # result = cursor.fetchone()  # Obtener una fila

         # Limpiar resultados previos
        # for label in result_labels:
        #     label.destroy()
        # result_labels.clear()

        # Limpiar resultados previos del cuadro de texto
        result_text.delete(1.0, tk.END)

        # Mostrar el resultado en la etiqueta
        if results:
            for idx, result in enumerate(results):
                result_text.insert(tk.END, f" {result[0]}: {result[1]}: {result[2]}\n")
                # label.pack(pady=5)
                # result_labels.append(label)
        else:
            result_text.insert(tk.END, "No se encontró ningún resultado.\n")
            # label.pack(pady=5)

        # Cerrar la conexión
        conn.close()

    except Exception as e:
        # Manejo de errores
        # label.config(text=f"Error: {e}")
        result_text.insert(tk.END, f"Error: {e}\n")


# Crear la ventana principal
root = tk.Tk()
root.title("Mi Primera Aplicación")
# Crear un widget de etiqueta
# label = tk.Label(root, text="Haz clic en el botón")
# label.pack(pady=20)
# Establecer el tamaño de la ventana
root.geometry("450x350")

# Crear el primer botón
button = tk.Button(root, text="Busqueda por nombre", command = on_button_click, width=20, height=2)
button.pack(pady=10)
#button.pack(side=tk.LEFT, padx=10, pady=10)

button2 = tk.Button(root, text="Busqueda por oficina", command = on_button_click2, width=20, height=2)
button.pack(pady=10)
#button2.pack(side=tk.LEFT, padx=10, pady=10)

# Crear una etiqueta para mostrar el texto del campo de entrada
entry_label = tk.Label(root, text="")
entry_label.pack(pady=10)

# boton busqueda por nombre
entry = tk.Entry(root, width=30)
boton_enviar = tk.Button(root, text="Enviar", command=lambda: on_consulta1())
#boton_enviar.pack(pady=10)
#boton_enviar.pack(side=tk.LEFT, padx=10, pady=10)

#boton busqueda por oficina
entry = tk.Entry(root, width=30)
boton_enviar2 = tk.Button(root, text="Enviar", command=lambda: on_consulta2())

# Lista para almacenar las etiquetas de resultados
# result_labels = []

# Crear el cuadro de texto con una barra de desplazamiento
result_frame = tk.Frame(root)
#result_frame.pack(pady=10, fill=tk.BOTH, expand=False)

# Crear la barra de desplazamiento
scrollbar = tk.Scrollbar(result_frame)
scrollbar.pack(side=tk.RIGHT, fill=tk.Y)

# Crear el widget Text para mostrar los resultados
result_text = tk.Text(result_frame, wrap=tk.WORD, height=10, width=10)
result_text.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

# Asociar la barra de desplazamiento con el widget Text
scrollbar.config(command=result_text.yview)
result_text.config(yscrollcommand=scrollbar.set)

# Crear el botón para abrir una aplicación
boton_aplicacion = tk.Button(root, text="Escritorio Remoto ", command=abrir_aplicacion, width=20, height=2)
boton_aplicacion.pack(pady=10)

# Iniciar el bucle de eventos
root.mainloop()


