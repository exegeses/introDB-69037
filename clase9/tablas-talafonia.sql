# Telefon´´ia

-- tabla companias
create table companias
(
    idCompania tinyint unsigned auto_increment primary key not null,
    compania varchar(30) unique not null
);

-- datos compañias
insert into `companias` (`compania`, `idCompania`) values ('IUSACELL', 1);
insert into `companias` (`compania`, `idCompania`) values ('TELCEL', 2);
insert into `companias` (`compania`, `idCompania`) values ('MOVISTAR', 3);
insert into `companias` (`compania`, `idCompania`) values ('UNEFON', 4);
insert into `companias` (`compania`, `idCompania`) values ('AXEL', 5);
insert into `companias` (`compania`, `idCompania`) values ('AT&T', 6);
insert into `companias` (`compania`, `idCompania`) values ('NEXTEL', 7);

-- tabla anonados
create table abonados
(
    idAbonado smallint unsigned auto_increment primary key not null,
    usuario varchar(20) not null,
    nombre varchar(20) not null,
    sexo enum('h', 'm') not null,
    nivel tinyint unsigned not null,
    email varchar(50) not null,
    telefono varchar(20) not null,
    marca varchar(20) not null,
    idCompania tinyint unsigned not null,
    foreign key (idCompania) references companias (idCompania),
    saldo decimal(8,2) not null,
    activo boolean not null
);

-- datos abonados
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'brenda@live.com', 1, 1, 'SAMSUNG', 2, 'BRENDA', '100.00', 'M', '655-330-5736', 'BRE2271');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'oscar@gmail.com', 2, 2, 'LG', 3, 'OSCAR', '0.00', 'H', '655-143-4181', 'OSC4677');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'francisco@gmail.com', 3, 3, 'NOKIA', 3, 'JOSE', '150.00', 'H', '655-143-3922', 'JOS7086');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'enrique@outlook.com', 4, 2, 'SAMSUNG', 0, 'LUIS', '50.00', 'H', '655-137-1279', 'LUI6115');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (0, 'luis@hotmail.com', 5, 1, 'NOKIA', 1, 'LUIS', '50.00', 'H', '655-100-8260', 'LUI7072');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'daniel@outlook.com', 6, 4, 'SONY', 0, 'DANIEL', '100.00', 'H', '655-145-2586', 'DAN2832');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'jaqueline@outlook.com', 7, 5, 'BLACKBERRY', 0, 'JAQUELINE', '0.00', 'M', '655-330-5514', 'JAQ5351');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'roman@gmail.com', 8, 1, 'LG', 2, 'ROMAN', '50.00', 'H', '655-330-3263', 'ROM6520');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'blas@hotmail.com', 9, 4, 'LG', 0, 'BLAS', '100.00', 'H', '655-330-3871', 'BLA9739');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'jessica@hotmail.com', 10, 2, 'SAMSUNG', 1, 'JESSICA', '500.00', 'M', '655-143-6861', 'JES4752');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (0, 'diana@live.com', 11, 4, 'SONY', 1, 'DIANA', '100.00', 'M', '655-143-3952', 'DIA6570');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'ricardo@hotmail.com', 12, 1, 'MOTOROLA', 2, 'RICARDO', '150.00', 'H', '655-145-6049', 'RIC8283');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (0, 'valentina@live.com', 13, 6, 'BLACKBERRY', 0, 'VALENTINA', '50.00', 'M', '655-137-4253', 'VAL6882');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'brenda2@gmail.com', 14, 7, 'MOTOROLA', 3, 'BRENDA', '150.00', 'M', '655-100-1351', 'BRE8106');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'lucia@gmail.com', 15, 1, 'BLACKBERRY', 3, 'LUCIA', '0.00', 'M', '655-145-4992', 'LUC4982');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (0, 'juan@outlook.com', 16, 5, 'SAMSUNG', 0, 'JUAN', '0.00', 'H', '655-100-6517', 'JUA2337');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'elpidio@outlook.com', 17, 3, 'MOTOROLA', 1, 'ELPIDIO', '500.00', 'H', '655-145-9938', 'ELP2984');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'jessica2@live.com', 18, 1, 'SONY', 3, 'JESSICA', '200.00', 'M', '655-330-5143', 'JES9640');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'leticia@yahoo.com', 19, 4, 'BLACKBERRY', 2, 'LETICIA', '100.00', 'M', '655-143-4019', 'LET4015');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'luis2@live.com', 20, 4, 'SONY', 3, 'LUIS', '150.00', 'H', '655-100-5085', 'LUI1076');
insert into `abonados` (`activo`, `email`, `idAbonado`, `idCompania`, `marca`, `nivel`, `nombre`, `saldo`, `sexo`, `telefono`, `usuario`) values (1, 'hugo@live.com', 21, 6, 'MOTOROLA', 2, 'HUGO', '500.00', 'H', '655-137-3935', 'HUG5441');
