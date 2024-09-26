
//tabla 1
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('111631', 'Carrera 39a 29 sur', 'Antonio Nariño', '15');
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('110111', 'avenida 19a 29', 'Usaquen', '29');
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('110211', 'carrera 10 89', 'Chapinero', '30');
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('110321', 'trasversal 39a 20a', 'Santa Fe', '10');
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('110421', 'carrera 90s 89', 'San Cristobal', '5');
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('110521', 'carrera 15i 90bis', 'Usme', '11');
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('110621', 'trasversal 40a 58s', 'Tunjuelito', '20');
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('110711', 'avenida bosa 5 sur', 'Bosa', '12');
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('110811', 'carrera 25sur 38', 'Kennedy', '2');
INSERT INTO `parcial2`.`direccion` (`id_direccion`, `n_calle`, `colonia`, `n_casa`) VALUES ('110881', 'transversal 89sur 2bis', 'Kennedy', '40');

//tabla 2

INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('1093829', 'Juan Marco', '3127583912', '111631');
INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('1938102', 'Claudia isabel', '4637128394', '110111');
INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('1928375', 'Nicol Belandia', '3210394728', '110211');
INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('3928173', 'David vargas', '2139438133', '110321');
INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('2948736', 'Juan fernando', '4848192412', '110421');
INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('3928276', 'Juan david', '4318310133', '110521');
INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('1938372', 'Angie mosquera', '1238492713', '110621');
INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('5837161', 'Diana jhannet', '5787123353', '110711');
INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('8573262', 'Sofia alajendra', '9482271823', '110811');
INSERT INTO `parcial2`.`persona` (`n_identidad`, `nombre`, `telefonos`, `n_direccion`) VALUES ('4738172', 'Andres ricardo', '3348192834', '110881');

//tabla 3
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('1', '1', '160000,00', '20', '1093829');
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('2', '2', '200000,00', '30', '1938102');
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('3', '3', '2500000,00', '40', '1928375');
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('4', '4', '160000.00', '20', '3928173');
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('5', '5', '160000.00', '20', '2948736');
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('6', '6', '1800000,00', '35', '3928276');
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('7', '7', '1800000,00', '35', '1938372');
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('8', '8', '2500000,00', '40', '5837161');
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('9', '9', '2500000,00', '40', '8573262');
INSERT INTO `parcial2`.`empleado` (`id_empleado`, `n_seguro`, `sueldo`, `horas`, `n_identidad`) VALUES ('10', '10', '2500000,00', '40', '4738172');

//tabla 4
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `id_tutor`, `n_identidad`) VALUES ('1', '302918', '1093829');
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `n_identidad`) VALUES ('2', '1938102');
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `id_tutor`, `n_identidad`) VALUES ('3', '2039481', '1928375');
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `id_tutor`, `n_identidad`) VALUES ('4', '2930192', '3928173');
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `id_tutor`, `n_identidad`) VALUES ('5', '2392032', '2948736');
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `n_identidad`) VALUES ('6', '3928276');
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `id_tutor`, `n_identidad`) VALUES ('7', '2394029', '1938372');
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `id_tutor`, `n_identidad`) VALUES ('8', '1029384', '5837161');
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `id_tutor`, `n_identidad`) VALUES ('9', '1304920', '8573262');
INSERT INTO `parcial2`.`alumno` (`id_alumno`, `id_tutor`, `n_identidad`) VALUES ('10', '3049202', '4738172');

//tabla 5
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('1', 'Decano', 'Recursos Humanos', '1');
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('2', 'Maestro', 'Ingeneria', '2');
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('3', 'Director', 'Ciencias', '3');
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('4', 'Director', 'Idiomas', '4');
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('5', 'Maestro', 'Ingierenia', '5');
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('6', 'Decano', 'Gastronomia', '6');
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('7', 'Director', 'Mercadeo', '7');
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('8', 'Decano', 'Turismo', '8');
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('9', 'Decano', 'Ciencias', '9');
INSERT INTO `parcial2`.`administrativo` (`id_admin`, `cargo`, `departamento`, `n_empleado`) VALUES ('10', 'Maestro', 'Recursos Humanos', '10');

//tabla 6
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('1', 'Matematicas', '1');
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('2', 'Ingles', '2');
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('3', 'Historia', '3');
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('4', 'Programacion', '4');
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('5', 'Base de datos', '5');
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('6', 'Estadistica', '6');
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('7', 'Contaduria', '7');
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('8', 'Telecomunicaciones', '8');
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('9 ', 'Etica', '9');
INSERT INTO `parcial2`.`maestro` (`id_maestro`, `areadoc`, `n_empleado`) VALUES ('10', 'Matematicas', '10');

// tabla 7
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('1', 'Juan marcor', 'Matematicas', 'oreo12345', '1', '1');
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('2', 'Pedro Garcia', 'Espanol', '1239434', '2', '2');
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('3', 'Maria isabel', 'Estadistica', '342112', '3', '3');
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('4', 'Santiago fuentes', 'Ingles', '5435232', '4', '4');
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('5', 'Jesus junco', 'Matematicas', '3412356', '5', '5');
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('6', 'Nicol belandia', 'programacion', '5234652', '6', '6');
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('7', 'Daniel Gomez', 'contaduria', '7345231', '7', '7');
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('8', 'Juan david', 'Economia', '8653421', '8', '8');
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('9', 'Sergio fernandes', 'Bases de datos', '213435', '9', '9');
INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('10', 'Carlos ', 'Ingles', '3413466', '10', '10');

//tabla 8
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('1', '101', 2021, '1');
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('2', '201', 2023, '2');
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('3', '102', 2021, '3');
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('4', '101', 2023, '4');
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('5', '301', 2021, '5');
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('6', '201', 2022, '6');
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('7', '102', 2020, '7');
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('8', '101', 2020, '8');
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('9', '301', 2022, '9');
INSERT INTO `parcial2`.`clasescre` (`id_creadas`, `aula`, `año`, `n_empleado`) VALUES ('10', '101', 2021, '10');

//tabla 9
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('4', '1', '1');
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('3', '2', '2');
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('5', '3', '3');
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('2', '4', '4');
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('3', '5', '5');
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('5', '6', '6');
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('4', '7', '7');
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('3', '8', '8');
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('5', '9', '9');
INSERT INTO `parcial2`.`matricula` (`nota`, `n_alumno`, `n_ccreada`) VALUES ('2', '10', '10');

//tabla 10
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('1', 'Gastronomia');
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('2', 'Informatica');
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('3', 'Ingles');
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('4', 'Informatica');
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('5', 'Ingles');
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('6', 'Matematicas');
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('7', 'Gastronomia');
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('8', 'Informatica');
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('9', 'Matematicas');
INSERT INTO `parcial2`.`carrera` (`id_carrera`, `nombre`) VALUES ('10', 'Gastronomia');

//tabla 11
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('1', 'Recetas', 'Creacion y seguimiento de recetas', '4', '1');
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('2', 'POO', 'Conocimiento y desarollo de objetos', '5', '2');
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('3', 'Recetas', 'Creacion y seguimiento de recetas', '4', '3');
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('4', 'POO', 'Conocimiento y desarollo de objetos', '5', '4');
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('5', 'POO', 'Conocimiento y desarollo de objetos', '5', '5');
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('6', 'Ingles 2', 'Nivel 2 de ingles', '3', '6');
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('7', 'Algebra lineal', 'Desarollo de algebra lineal', '4', '7');
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('8', 'Algebra lineal', 'Desarollo de algebra lineal', '4', '8');
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('9', 'Base de datos', 'Funcionamiento de base de datos', '5', '9');
INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('10', 'Base de datos', 'Funcionamiento de base de datos', '5', '10');

//tabla 12
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('1', '123', '1', '1');
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('2', '335', '2', '2');
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('3', '464', '3', '3');
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('4', '124', '4', '4');
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('5', '351', '5', '5');
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('6', '523', '6', '6');
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('7', '473', '7', '7');
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('8', '214', '8', '8');
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('9', '653', '9', '9');
INSERT INTO `parcial2`.`seccion` (`id_seccion`, `cod_seccion`, `n_carrera`, `n_ccreada`) VALUES ('10', '165', '10', '10');