import tkinter as tk
import pyodbc
import subprocess



def obtener_conexion():
    server = '.'
    database = 'GAA'
    username = 'sa'
    password = '123456'

    conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
    conn = pyodbc.connect(conn_str)
    return conn
#Funcion de limpieza
def limpiar_widgets(root):
    for widget in root.winfo_children():
        widget.grid_forget()  # Para ocultar los widgets
        # widget.destroy()  # Si deseas destruir los widgets completamente

#funcion de retorno
def atras():
    limpiar_widgets(root)
    button_busqueda.grid(row=0, column=0, padx=20, pady=40)
    button_modificar.grid(row=0, column=1, padx=10, pady=10)

#Busqueda
def buscar():
    entry_label.config(text="Busqueda")
    button_bn.grid(row=0, column=0, padx=20, pady=40)
    button2.grid(row=0, column=1, padx=10, pady=10)
    button_atras.grid(row=0, column=2, padx=60, pady=40)
    #boton_aplicacion.grid(row=5, column=0, columnspan=2, pady=10)
    
def modificar():
    entry_label.config(text="Modificar")
    entry_label.grid(row=1, column=0, columnspan=2, pady=10) 
    button_busqueda.grid_forget()
    button_atras.grid(row=0, column=2, padx=60, pady=40)   
#
def buscar_nombre():
    button_modificar.grid_forget()
    entry_label.config(text="Ingresa nombre:")
    entry_label.grid(row=1, column=0, columnspan=2, pady=10)
    entry.grid(row=2, column=0, columnspan=2, pady=10)
    boton_enviar2.grid_forget()
    boton_enviar.grid(row=3, column=0,columnspan=2, pady=10)
    result_frame.grid(row=4, column=0,columnspan=2, pady=10)

def buscar_oficina():
    entry_label.config(text="Ingresa oficina:")
    entry_label.grid(row=1, column=0, columnspan=2, pady=10)
    entry.grid(row=2, column=0, columnspan=2, pady=10)
    boton_enviar2.grid(row=3, column=0,columnspan=2, pady=10)
    result_frame.grid(row=4, column=0, columnspan=2, pady=20, sticky="nsew") 


def abrir_aplicacion():
    try:
        subprocess.Popen(['mstsc.exe'])
    except Exception as e:
        print(f"Error al intentar abrir la aplicación: {e}")

def f_buscar_nom():
    entrada= entry.get()
    query = f"SELECT nom_us, direccion_ip, oficina FROM Datos WHERE nom_us LIKE '%{entrada}%' ORDER BY CASE WHEN nom_us LIKE '{entrada}%' THEN 0 ELSE 1 END,nom_us ASC;  "
    on_submit_click(query)
    
def f_buscar_ofi():
    entrada= entry.get()
    query = f"SELECT oficina, nom_us, direccion_ip FROM Datos WHERE oficina like '%{entrada}%' "
    on_submit_click(query)    

def on_submit_click(query):
    user_input = entry.get()
    try:
        conn = obtener_conexion()
        cursor = conn.cursor()
        cursor.execute(query)
        results = cursor.fetchall()
        result_text.delete(1.0, tk.END)
        if results:
            for idx, result in enumerate(results):
                result_text.insert(tk.END, f" {result[0]}: {result[1]}: {result[2]}\n")
        else:
            result_text.insert(tk.END, "No se encontró ningún resultado.\n")
        conn.close()
    except Exception as e:
        result_text.insert(tk.END, f"Error: {e}\n")

root = tk.Tk()
root.title("Busquedas IP")
root.geometry("600x350")

#nuevos botones busqueda y modificacion
button_busqueda = tk.Button(root, text="Buscar", command=buscar, width=20, height=2)
# button.pack(pady=10)
button_busqueda.grid(row=0, column=0, padx=60, pady=40)

button_modificar = tk.Button(root, text="Modificar", command=lambda:modificar(), width=20, height=2)
#button2.pack(pady=10)
button_modificar.grid(row=0, column=1, padx=10, pady=40)


button_atras = tk.Button(root, text="atras", command=lambda:atras(), width=10, height=2)
# button_atras.grid(row=0, column=2, padx=20, pady=40)
#limpiar = tk.Button(root, text="limpiar", command=lambda: limpiar_widgets(root), width=20, height=2)
#limpiar.grid(row=0, column=2, padx=20, pady=40)
###

button_bn = tk.Button(root, text="Busqueda por nombre", command=buscar_nombre, width=20, height=2)
# button.pack(pady=10)
#button.grid(row=0, column=0, padx=20, pady=40)

button2 = tk.Button(root, text="Busqueda por oficina", command=buscar_oficina, width=20, height=2)
#button2.pack(pady=10)
#button2.grid(row=0, column=1, padx=10, pady=10)

entry_label = tk.Label(root, text="")
#entry_label.pack(pady=10)
#entry = tk.Entry(root, width=30)


entry = tk.Entry(root, width=30)
boton_enviar = tk.Button(root, text="Enviar", command=lambda: f_buscar_nom())
#boton_enviar.grid(row=1, column=1, padx=10, pady=10)
entry = tk.Entry(root, width=30)
boton_enviar2 = tk.Button(root, text="Enviar", command=lambda: f_buscar_ofi())

#boton_enviar = tk.Button(root, text="Enviar", command=lambda: print("Consulta por nombre"))
#boton_enviar2 = tk.Button(root, text="Enviar", command=lambda: print("Consulta por oficina"))



result_frame = tk.Frame(root)
#result_frame.pack(fill=tk.BOTH, expand=True)

#result_frame.grid(row=4, column=0, columnspan=2, pady=20, sticky="nsew")

scrollbar = tk.Scrollbar(result_frame)
#scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
scrollbar.grid(row=0, column=1, sticky="ns")

result_text = tk.Text(result_frame, wrap=tk.WORD, height=10, width=45)
#result_text.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
result_text.grid(row=0, column=0, sticky="nsew") 


scrollbar.config(command=result_text.yview)
result_text.config(yscrollcommand=scrollbar.set)

# Crear el botón para abrir una aplicación
#boton_aplicacion = tk.Button(root, text="Escritorio Remoto ", command=abrir_aplicacion, width=20, height=2)
# boton_aplicacion.pack(pady=10)
#boton_aplicacion.grid(row=5, column=0, columnspan=2, pady=10)



root.mainloop()