

# Listas
    List misNumeros = new List(10);
    print(misNumeros);

    List<int> numeros = [1,2,3,4,5];
    print(numeros);

# Map
    Map<String, String> capitales = {
        'España': 'Madrid',
        'Francia': 'París',
        'Italia': 'Roma',
        'Alemania': 'Berlín'
    };

    String capitalDeEspana = capitales['España'];

    Map<Dynamic, Dynamic> otros = {
        'España': 'Madrid',
        1:10,
        2:34,
    };


# Funciones

    void saludar( required nombre){
        print("Hi ", + nombre)
    }
    
    final nombreP = "juan"
    saludar( nombre: nombreP)