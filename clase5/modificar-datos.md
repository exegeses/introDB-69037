# Modificación de datos de una tabla

> Para modificar datos dentro de una tabla
> utilizamos la palabra reservada **UPDATE**

> Sintáxis:  

    UPDATE nombreTabla  
        SET nombreCol = valor,  
            nombreCol2 = valor2
      WHERE colPK = valorID;

> Ejemplo práctico: 

    UPDATE destinos  
        SET destPrecio = 6250  
      WHERE idDestino = 2;  

    UPDATE destinos  
        SET idRegion = 7,  
            destPrecio = 8500    
      WHERE idDestino = 6;

> Modificar los destinos con idDestino = 5 
> y el destino con idDestino = 6
> (ambos) por el idRegion = 7

    UPDATE destinos  
        SET idRegion = 7   
      WHERE idDestino = 5  
        OR idDestino = 6;  

    UPDATE destinos  
        SET idRegion = 7   
      WHERE idDestino IN( 5,6 );  

> Modificar el precio de el destino con el idDestino = 8
> por un precio que sea un 5% de incremento 

    UPDATE destinos  
        SET destPrecio = destPrecio * 1.05    
      WHERE idDestino = 8;
