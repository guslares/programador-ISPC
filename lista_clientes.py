# Ejercio 10: crear una lista denominada "clientes" con los nombres de los diferentes dueños de perro.
# Juan, Mario, Ariel, Josefina, Marianella
# Ordenarla alfabeticamente y mostrarla por pantalla

lista_clientes = ["Juan","Mario","Ariel","Josefina","Marianela" ]

#lista_clientes.sort() se puede utilizar el metodo sort() para ordenar la lista

def ordenar_lista(list):
    for r in range(1,len(lista_clientes)):
        for i in range(len(lista_clientes)-r):
             if lista_clientes[i] > lista_clientes[i+1]:
                temporal = lista_clientes[i+1]
                lista_clientes[i+1] = lista_clientes[i]
                lista_clientes[i] = temporal
        
ordenar_lista(lista_clientes)   
print(lista_clientes)
