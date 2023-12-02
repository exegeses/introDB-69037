# Creación de tablas 

> Para crear tablas en sql 
> utilizamos el comando **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombreTabla    
    (  
        nombreColumna tipo características,  
        nombreColumna2 tipo características,   
        nombreColumna3 tipo características,  
        nombreColumna4 tipo características 
    );


> Ejemplo práctico: 

    CREATE TABLE personas  
    (  
        id smallint unsigned auto_increment primary key not null,  
        apellido varchar(45) not null,  
        nombre varchar(45) not null,  
        dni int unsigned unique not null,  
        alta date not null
    );


    CREATE TABLE productos_apple  
    (  
        id tinyint unsigned auto_increment not null primary key,  
        nombre varchar(45) unique not null,  
        precio decimal( 7, 2 ) unsigned not null,  
        stock smallint unsigned not null
    );
