# 4)
Perro2 = [14, "Fido", "12/12/2012", "Macho", 23546987]
def recorrer(Perro2):
    for i in reversed(Perro2):
        print(i)
print(list(reversed(Perro2)))

# 5)
Historial = (2350, 5960, 23000, 1000, 8900)
def total(Historial):
    return sum(Historial)
if total(Historial) < 30000:
    print(f'El monto total gastado a lo largo del tiempo por atención de “Puppy” es: $ {total(Historial)} ')
else:
    print('Gastos por encima de lo presupuestado')

# 6)
Historial2 = (23500, 5960, 2300, 10200, 8900)
def total(Historial2):
    return sum(Historial2)
print(f' El monto total gastado a lo largo del tiempo por atención de “Frida” es: $ {total(Historial2)}')
def superiores(Historial2):
    contador = 0
    for i in Historial2:
        if i > 5000:
            contador += 1
    return contador
print(f'El número de gastos superiores a 5000 es: {superiores(Historial2)}')

# 7)
Historial3 = (9530, 4120, 4580, 1500, 890, 7516, 426)
def promedio(Historial6):
    return sum(Historial6) / len(Historial6)
print(f' El promedio de gasto en pesos por atención de “Lennon” es: $ {promedio(Historial3)}')
if promedio(Historial3) > 4500:
    print('Se ha excedido del gasto promedio para su mascota')
else:
    print('No se ha excedido del gasto promedio para su mascota')

# 8)
Historial4 = (7510, 7960, 76180, 800, 4100)
def min_value(Historial4):
    return min(Historial4)
print(f' El mínimo valor de atención gastada en Olivia es: $ {min_value(Historial4)}')

# 9)
Historial5 = ( 8520, 9510, 7530, 3570, 1590)
def max_value(Historial5):
    return max(Historial5)
print(f' El máximo valor de atención gastada en Toto es: $ {max_value(Historial5)}')

# 10)
clientes = ['Juan', 'Mario', 'Ariel', 'Josefina', 'Marianella']
clientes.sort()
print(clientes)





