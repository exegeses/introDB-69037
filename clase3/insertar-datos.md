# Inserción de datos en una tabla

> Hay 3 maneras de insertar datos 

## Sintáxis usando **SET** 

> Sintáxis: 

    INSERT INTO nombreTabla  
      SET  
        nombreColumna = valor,  
        nombreColumna2 = valor2,  
        nombreColumna3 = valor3;  

> Ejemplo práctico: 

    INSERT INTO personas  
      SET
        apellido = 'García',  
        nombre = 'Javier',  
        dni = 25852410,  
        alta = '2008-12-12'; 

## Sintáxis completa (se mencinan las columnas)

> Sintáxis:

    INSERT INTO nombreTabla  
        ( nombreCol2, nombreCol3, nombreCol4 )  
      VALUES   
        ( valor2, valor3, valor4 );  

> Ejemplo práctico:

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'González', 'Mónica', 36520147, '2005-09-30' );  
