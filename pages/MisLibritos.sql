SELECT * FROM `mislibritos`.`libritos` LIMIT 1000;
INSERT INTO libritos (Titulo, Autor, Descripcion,Imagen,Precio) VALUES 
('ESPIRITU ANIMAL', 'TAJES, MAGALI', 'La vida es un viaje que tiene muchos viajes adentro','imagen1',22999);

INSERT INTO libritos (Titulo, Autor, Descripcion,Imagen,Precio) VALUES 
('HEARTSTOPPER 5', 
'OSEMAN, ALICE', 
'Nick y Charlie estan mas enamorados que nunca y dan un paso muy importante en su relacion. Mientras tanto, Nick empieza a visitar universidades para elproximo ao, entonces una duda se instala en su cabeza: seracapaz de vivir sin Charlie? Soportaran una relacion a distancia?',
'imagen2',
15000);

INSERT INTO libritos (Titulo, Autor, Descripcion,Imagen,Precio) VALUES 
('ALAS DE SANGRE', 
'YARROS, REBECCA', 
'Un dragon sin su jinete es una tragedia. Un jinete sin su dragon esta muerto. Articulo uno, seccion uno del Codigo de Jinetes de dragones. Violet Sorrengail creia que a sus veinte aos se uniria al Cuadrante de los Escribas para vivir una vida tranquila, estudiando sus amados libros y las historias antiguas que tanto le fascinan. Sin embargo, por ordenes de su madre, la temida comandante general, Violet debe unirse a los miles decandidatos que luchan por formar parte de la elite de Navarre: los jinetes de dragones. Cuando eres mas pequea y fragil que los demas tu vida correpeligro, porque los dragones no se vinculan con humanos debiles; de hecho, los incineran. Sumado a esto, con mas jinetes que dragones disponibles, buena parte de los candidatos mataria a Violet con tal de mejorar sus probabilidades de exito; otros, como el despiadado Xaden Riorson, el lider de ala mas poderoso del Cuadrante, la asesinarian simplemente por ser la hija de la comandante general. Para sobrevivir, necesitara aprovechar al maximo todo su ingenio. Dia tras dia, la guerra que se libra al exterior del Colegiose torna mas letal, las defenas del reino se debilitan y losmuertos aumentan. Por si fuera poco, Violet sospecha que loslideres de Navarre esconden un terrible secreto. Amistad, rivalidad y pasion… en el Colegio de Guerra de Basgiath todos tienen una agenda oculta y saben que una vez adentro solo hay dos posibilidades: graduarse o morir.',
'imagen3',
29900);

ALTER TABLE libritos
ADD CONSTRAINT unique_titulo_autor UNIQUE (titulo, autor);

INSERT INTO libritos (Titulo, Autor, Descripcion,Imagen,Precio) VALUES 
('ALAS DE HIERRO ( EMPIREO 3 )', 
'YARROS, REBECCA', 
'Todos esperaban que Violet Sorrengail muriera en su primer ao en el Colegio de Guerra de Basgiath, incluso ella misma. Pero la Trilla fue tan solo la primera de una serie de pruebas imposibles destinadas a deshacerse de los pusilnimes, los indignos y los desafortunados. Ahora comienza el verdadero entrenamiento y Violet no sabe cmo lograr superarlo. No solo porque es brutal y agotador ni porque est diseado para llevar al lmite el umbral del dolor de los jinetes, sino porque el nuevo vicecomandante est empeado en demostrar a Violet lo dbil que es a menos que traicione al hombre que ama. Aunque el cuerpo de Violet es ms frgil que el de sus compaeros, su fuerza radica en su ingenio y voluntad de hierro. Adems, los lderes estn olvidando la leccin ms importante que Basgiath les ha enseado: los jinetes de dragones crean sus propias reglas. La voluntad de sobrevivir no ser suficiente este ao, porque Violet conoce el secreto que se oculta entre los muros del colegio y nada, ni siquiera el fuego de dragn, ser suficiente para salvarlos.',
'imagen4',
34900);
