#- [ ]  Crear una tupla en Python con el nombre de “Historial2” la cual contenga los siguientes valores:- 
#    
#   ** 23500, 5960, 2300, 10200, 8900**
#    
#   Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Frida”. 
# Calcular el monto total gastado a lo largo del tiempo por atención de “Frida”. 
# Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  el número calculado en pantalla.


historial2 = (23500, 5960, 2300, 10200, 8900)
monto = 0
def montoGastado(historia):
    cantidad = 0
    for monto in range(len(historia)):
        if historia[monto] > 5000:
            cantidad += 1
            print (historia[monto], end=", ")

    print("estos",cantidad , "fueron mayores a 5000")


print("Gasto total en la mascota", sum(historial2))
montoGastado(historial2)
        