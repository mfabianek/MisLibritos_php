-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2024 a las 19:14:46
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mislibritos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libritos`
--

CREATE TABLE `libritos` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Autor` varchar(100) NOT NULL,
  `Descripcion` varchar(2000) NOT NULL,
  `Imagen` varchar(100) NOT NULL,
  `Precio` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libritos`
--

INSERT INTO `libritos` (`id`, `Titulo`, `Autor`, `Descripcion`, `Imagen`, `Precio`) VALUES
(1, 'MEJOR QUE AYER', 'Lynn Painter', '¿Y SI TUVIERAS QUE REVIVIR TU PEOR SAN VALENTÍN UNA Y OTRA VEZ? Después de vivir el peor día de San Valentín del mundo, Emilie Hornby se escapa a casa de su abuela en busca de la compañía y la charla de chicas que tanto necesita. Allí, Emilie cae rendida en el sofá, pero cuando se despierta está de nuevo en su casa, en su propia cama. Aunque esa no es la única sorpresa del día¿ Por alguna extraña razón, vuelve a ser el día de San Valentín. ¡Otra vez! ¿Y al día siguiente? Otro desastroso día de San Valentín.Parece que Emilie está atrapada en un horrible bucle temporal del que no puede despertar y en el que está obligada a ver cómo su novio, Josh, le pone los cuernos día tras día. Además de la recurrente infidelidad de Josh, Emilie no logra alejarse del enigmático Nick, con el que se termina chocando (a veces, literalmente hablando) continuamente de maneras de lo más desafortunadas.¿Cuántos días puede pasar una chica viendo cómo su vida se desmorona? Y, cuando parece que, por fin, algo bueno puede salir de esos terribles días, ¿qué ocurrirá cuando el universo deje de otorgar segundas oportunidades?', 'imagen1.webp', 16290),
(2, 'MI VIAJE DE DESCUBRIMIENTO - MI CUERPO', 'Yoyo', 'Mi viaje de descubrimiento, mi cuerpo', 'Imagen2.webp', 26991),
(3, 'DESPUES DE DICIEMBRE', 'Joana Marcus', 'El tiempo es algo relativo. Para algunos pasa más rápido para otros, no tanto. A Jenna Brown el último año se le ha hecho eterno. Cuando superas una ruptura, el tiempo se rige por otras leyes físicas, y estar un año sin Jack Ross ha sido uno de los retos más difíciles de su vida. Pero ha conseguido superarlo, centrarse en sí misma y convertirse en una Jenna renovada que tiene un nuevo objetivo vital: terminar los estudios. Aunque suponga volver al lugar donde todo empezó y que tantos recuerdos le evoca. Aunque suponga tener que enfrentarse a las consecuencias de todas las decisiones que tomó un año atrás. Jenna está convencida de que todo lo ocurrido antes de diciembre forma parte del pasado, pero... ¿qué ocurrirá después de diciembre? Los lectores dicen: «Volver al mundo de Jenna Brown es todo lo que quería». «Llorar, reír, volver a llorar y así todo el rato. Una montaña rusa de emociones». «Cada día rezo para que el universo ponga un Jack Ross en mi vida.Solo le pido a Joana Marcús que nunca deje de escribir.Amo este libro igual que amo a todos sus personajes (aunque Jenna tiene un lugar especial en mi corazón)', 'imagen3.webp', 24299),
(4, 'INVICTOR DETECTIVE 2 - ESCAPA DE LA ESCUELA', 'Invictor', 'Invictor es el mejor héroe de la ciudad: ningún caso se le resiste, ¡es el mejor detective de todos! Ha sido seleccionado para ser alumno de la exclusiva Escuela de Detectives, pero ¡deberá superar un montón de pruebas para conseguir entrar en una de las tres Casas que la forman! Por si fuera poco, este lugar está lleno de secretos: puertas misteriosas, profes siniestros, accesos prohibidos... ¿¿ES POSIBLE QUE EXISTA UNA CUARTA CASA ULTRASECRETA?? ¿Lograrán Invictor y sus amigos resolver todos los enigmas de la escuela?', 'imagen4.webp', 17999),
(5, 'LA VACA SUS MIEDOS ATACA', 'Diego Barletta / Agustina Lynch', 'La vaca Paca tiene muchos miedos. Y, para aprender a vencerlos, va a recorrer la granja con su amigo Pajarito para pedirles consejos a sus amiguitos. Este cuento nos ofrece distintas herramientas que podemos utilizar y brindarles a los niños para que puedan intentar dominar sus miedos. Una vez más Agustina Lynch se las ingenia para tomar un tema difícil y ayudar a chicos y padres a procesarlo y encontrar recursos, y una vez más ¡lo logra con rima! Maritchu Seitún', 'imagen5.webp', 13500),
(6, 'MESSI CAMPEON DEL MUNDO', 'VV. AA.', '¿Sabés quién era el ídolo de Messi cuando era chico? ¿Conocés todos los títulos que ganó Leo a lo largo de su carrera? ¿Querés conocer todo lo que pasó en este Mundial? Poné a prueba los conocimientos sobre tu ídolo y dejate sorprender con la historia del mejor jugador del Mundial Qatar 2022, campeón de la Copa América y de la Copa del Mundo. EDAD: +8', 'imagen6.webp', 10791),
(7, 'MEJOR QUE EN LAS PELICULAS', 'Lynn Painter', 'Liz Buxbaum siempre ha sabido que Wes Bennett, su vecino, no tiene madera de novio. Podria parecer que es el candidato perfecto para sus fantasias romanticas, pero lo cierto es que Wes solo ha demostrado ser un autentico incordio desde que eran ni?os. Wes fue quien puso una rana en su casa de mu?ecas y el monstruito que escondio la cabeza decapitada de un gnomo de jardin en su peque?o intercambio de libros vecinal. Diez a?os despues, Liz esta en su ultimo a?o de instituto. Es un momento que deberia estar plagado de metas e hitos dignos de la gran pantalla, y necesita la ayuda de Wes. Michael, el chico por el que lleva colada toda la vida, acaba de volver a la ciudad, y desgraciadamente ha hecho muy buenas migas con Wes. Lo que significa que, si Liz quiere que Michael por fin se fije en ella y, con suerte, la invite a ir al baile de fin de curso, necesita a su vecino. ', 'imagen7.webp', 16830),
(8, 'TODOS TENEMOS UN PELUCHE CON SUPERPODERES', 'Guapi Medel / Clara Casagrande', 'NILO TIENE MIEDO DE DORMIR SOLO. VE UNOS MONSTRUOS FEOS Y DE OJOS GRANDES QUE APARECEN EN SU CUARTO TODAS LAS NOCHES Y YA NO SABE QUÉ HACER PARA QUE SE VAYAN.HASTA QUE UN DÍA, SU MAMÁ LE REGALA SU PELUCHE ATRAPAMIEDOS.CON ÉL SE SIENTE FUERTE, SEGURO, ¡INVENCIBLE! ASÍ LOGRA ENFRENTAR A ESOS MONSTRUOS DE OJOS SALTONES Y LOS HACE HUIR DE SU CUARTO PARA SIEMPRE.Al finalizar el cuento, hay un apartado para adultos, con sugerencias y herramientas para acompañar a las niñas y los niños a validar sus sentimientos y atravesar sus miedos', 'imagen8.webp', 9900),
(9, 'HARRY POTTER Y LA PIEDRA FILOSOFAL', 'Rowling, J. K.', 'Harry Potter se ha quedado huérfano y vive en casa de sus abominables tíos y del insoportable primo Dudley. Se siente muy triste y solo, hasta que un buen día recibe una carta que cambiará su vida para siempre. En ella le comunican que ha sido aceptado como alumno en el colegio interno Hogwarts de magia y hechicería. A partir de ese momento, la suerte de Harry da un vuelco espectacular. En esa escuela tan especial aprenderá encantamientos, trucos fabulosos y tácticas de defensa contra las malas artes. ', 'imagen9.webp', 15029),
(10, 'LA VACA EN SU HAMACA', 'Agustina Lynch', 'Agustina Lynch (Buenos Aires, 1978). ¿Me recibí de abogada y ejercí muchos años, hasta que dejé el Derecho con el nacimiento de mi tercer hijo. Amante de los libros, siempre tengo uno en mi cartera y leo en donde pueda. De mis experiencias como madre fueron surgiendo mis ideas para hacer cuentos infantiles, esperando que pueda ayudar a adultos y niños en distintas etapas y momentos de sus vidas.', 'imagen10.webp', 13500),
(11, 'LOS OTROS ANIMATRONICOS', 'Kira Breed-Wrisley / Scott Cawthon', 'Ha pasado un año desde los terribles sucesos en Freddy Fazbear\'s Pizza, y Charlie está intentando seguir adelante. Pero continúan atormentándola las pesadillas de un asesino enmascarado y sus cuatro temibles animatrónicos. Cuando Charlie cree que aquello ha terminado, aparecen unos cuerpos llenos de heridas que le resultan inquietantemente familiares. Enseguida se verá arrastrada de nuevo al mundo de aquellos horribles seres creados por su padre. Con las asombrosas ilustraciones de Claudia Aguirre, nominada a los Premios Eisner, ningún fan va a querer perderse el cómic de una de las historias más escalofriantes que han salido de la mente del creador de Five Night\'s at Freddy\'s, Scott Cawthon.', 'imagen11.webp', 11699),
(12, 'AL FINAL DEL JUEGO', 'Ponja Goya', 'MARA NO SABE QUÉ OCURRIÓ EL AÑO PASADO REALMENTE, SOLO QUE DEBE CUIDARSE DE KILLIAN DE SANTIS.Rivales en la cancha de vóley, un secreto los ha enfrentado mortalmente y ha convertido a Killian en una paria. En pleno torneo intercolegial, el escándalo florece cuando el atractivo y talentoso capitán del equipo enemigo reaparece en escena, totalmente impune. Pero el equipo de Mara no piensa dejar las cosas así: va a rebelarse para exponer a Killian y logran su expulsión del campeonato. Sin embargo, cuanto más conoce a Killian y mas habla con ¿Matt¿, la mascota enmascarada del equipo contrario, Mara más confundida se siente. Es que... Killian cumple con muchos requisitos de su lista del chico perfecto. Y, al final del día, no debe olvidar que todo esto no es más que un juego.', 'imagen12.webp', 17100),
(13, 'SEGUIMOS SIENDO FAMILIA', 'Mariela Califano / Carolina Mora', 'Un día, los padres deciden separarse. ¿Cómo podemos acompañar a los más chicos en este difícil proceso? Con una historia llena de emoción y actividades interactivas, este libro ofrece herramientas para entender que los cambios son parte natural de la vida y pueden ser positivos. Soy Carolina Mora, psicóloga especialista en desafíos de la crianza. Promuevo infancias respetadas, escribo, enseño y aprendo. ¡Gracias por permitirme entrar a sus hogares!', 'imagen13.webp', 16650),
(14, 'MI GRAN VIAJE EN EL TIEMPO', 'Pupi Herrera / Joe Rivadulla', 'El viaje en el tiempo es un tópico atractivo para los autores y lectores de todas las épocas. Esta historia retoma el motivo clásico y le aporta una nueva mirada: a veces, viajar al pasado y al futuro también puede significar el inicio de un nuevo presente. La mañana de su cumpleaños, Alex recibe un misterioso mensaje de su tía Ágata, escrito con tinta invisible: le pide que vaya rápido a su laboratorio. Tratándose de ella, sin duda es un regalo muy original. A partir de ese momento, comienza una aventura nunca imaginada que lo llevará al pasado y al futuro comenzando así un emocionante viaje en el tiempo. Momias, cavernícolas, dinosaurios, vikingos y dragones son algunos de los personajes que transitan por la historia y que harán de este viaje una ocasión única para descubrir la amistad y valorar la fuerza del cariño.', 'imagen14.webp', 16200),
(15, 'INFINITO IDA Y VUELTA', 'Miriam Tirado', 'Jan es consciente de que su madre lo quiere, pero le encantaría saber cuánto:¿Puede medirse el amor?, se pregunta. Desearía tener un termómetro o una cinta métrica que le mostraran cuánto lo quiere mamá... Porque, cuando ella le dice:Te quiero hasta el infinito, ida y vuelta, él no termina de entenderlo. Pero con la ayuda de su perra, Kala, intentará descubrirlo. Un cuento para aprender a identificar, recibir y dar amor incondicional y para sentirnos siempre conectados y amados. ¿Qué encontrarás en este libro? *Álbum en gran formato y tapa dura de 64 páginas *Preciosas ilustraciones a todo color *Una tierna historia repleta del humor y la sensibilidad que caracterizan a Míriam Tirado *Ideal para explicar a los más pequeños un tema complicado como es el amor incondicional *En línea con los grandes éxitos de Míriam Tirado sobre la crianza consciente como El hilo invisible, La fuente escondida y Sensibles', 'imagen15.webp', 8999),
(16, 'ALAS DE SANGRE', 'Rebecca Yarros', 'Bestseller del New York Times Un dragón sin su jinete es una tragedia. Un jinete sin su dragón está muerto.Artículo uno, sección uno del Código de jinetes de dragones Violet Sorrengail creía que a sus veinte años se uniría al Cuadrante de los Escribas para vivir una vida tranquila, estudiando sus amados libros y las historias antiguas que tanto le fascinan. Sin embargo, por órdenes de su madre, la temida comandante general, Violet debe unirse a los miles de candidatos que luchan por formar parte de la élite de Navarre.', 'imagen16.webp', 26910),
(17, 'HOLA ARGENTINA - TERCERA EDICION', 'Octavio Pintos', 'Hola Argentina', 'imagen17.webp', 24300),
(18, 'MIS PRIMEROS ORIGAMIS', 'Altea', 'Mis primeros origamis', 'imagen18.webp', 3149),
(19, 'LA MAESTRA', 'Victoria Bayona', 'Hay algo extraño en la nueva maestra. Es amable, atenta y tiene a todos cautivados con su sonrisa perfecta... A todos menos a Francisco, que está convencido de que su actitud es solo una apariencia y que esconde un misterio. Si no, ¿por qué su mirada se transforma cada vez que lo ve? ¿Qué es lo que busca? Lo que Fran no imagina es que develar ese secreto encierra un gran peligro y puede llevarlo verdaderamente lejos...', 'imagen19.webp', 8099),
(20, 'PERCY JACKSON Y DIOSES DEL OLIMPO 3', 'Rick Riordan', 'Ante la llamada de socorro de su amigo el sátiro Grover, Percy acude inmediatamente en su auxilio. Y aunque va acompañado de Annabeth y Thalia, las dos semidiosas que son sus aliadas, ninguno imagina la sorpresa que los aguarda: una terrible mantícora pretende secuestrarlos y llevarlos ante el general enviado por Cronos, el diabólico señor de los titanes. Sin embargo, gracias a la ayuda de las cazadoras de Artemisa, Percy y sus aliadas logran escapar y volver al campamento mestizo. Una vez allí, emprenderán la búsqueda del monstruo que puede provocar la destrucción del Olimpo, a pesar de que, según la profecía del Oráculo, sólo uno de ellos logrará resistir la maldición del titán.', 'imagen20.webp', 19349),
(21, 'QUERIDA YO - TENEMOS QUE HABLAR', 'Elizabeth Clapes', 'Antes, cuando escuchaba hablar sobre la importancia de conocerse a una misma, no lo entendía. Cuando llevas treinta años viviendo contigo, ¿se puede saber qué es lo que te falta por conocer? ¿De verdad hay algo que puede tomarte por sorpresa? En nuestro día a día, tenemos miles de sentimientos, personas, heridas, situaciones... que nos generan malestar. Identificarlas y saber distinguir las que podemos cambiar de las que no es muy importante para dejar de hacernos las preguntas de siempre: ¿Por qué me noto tan sensible? ¿Por qué siempre estoy a la defensiva? ¿Por qué siento ansiedad? ¿Qué es lo que me pasa? Por eso, querida amiga, tenemos que hablar. Vamos a parar un momento para conocernos, corregirnos, aceptarnos, perdonarnos... Y, sobre todo, para mandar a la mierda lo que sea necesario. A ver si así podemos empezar a querernos tanto como nos merecemos, que ya es hora', 'imagen21.webp', 13499),
(22, 'LA VACA SE EMPACA', 'Barletta / Lynch', 'Cada vez que la vaca Paca tiene un berrinche, sus padres, en vez de ayudar, no saben cómo actuar. Así que Paca va a recorrer la granja para pedirles consejos a sus amigos, y así darles ideas a sus padres sobre cómo reaccionar. Contado para niños, pero pensado para grandes, este cuento nos da consejos sobre cómo podemos actuar cuando nuestros hijos tienen berrinches. ¿Gracias, Agustina y vaca Paca por ayudarnos, una vez más, con sus rimas, a entender y a tener recursos para acompañar esta etapa tan compleja, no solo para los padres, sino también para los chicos.¿ Maritchu Seitún', 'imagen22.webp', 13500),
(23, 'HARRY POTTER Y LA CAMARA SECRETA 2', 'Rowling', 'Mientras Harry espera impaciente en casa de sus insoportables tíos el inicio del segundo curso del Colegio Hogwarts de Magia y Hechicería, un elfo aparece en su habitación y le advierte de que una amenaza mortal se cierne sobre la escuela. Harry no se lo piensa dos veces y, acompañado de Ron, se dirige a Hogwarts en un coche volador. Pero, ¿puede un aprendiz de mago defender la escuela de los malvados que pretenden destruirla? Sin saber que alguien ha abierto la Cámara de los Secretos, dejando escapar una serie de monstruos peligrosos, Harry y sus amigos Ron y Hermione tendrán que enfrentarse con arañas gigantes, serpientes encantadas, fantasmas enfurecidos y, sobre todo, con la mismísima reencarnación de su más temible adversario.', 'imagen23.webp', 15029),
(24, 'EL PRINCIPITO BY PABLO BERNASCONI', 'Pablo Bernasconi / Antoine De Saint-Exupery', 'El principito', 'imagen24.webp', 44091),
(25, 'MI UNIVERSO DE PALABRAS', 'Victoria Conte', 'Las palabras le dan forma a nuestro mundo. Conocerlas y aprender a usarlas con responsabilidad y empatía nos ayuda a entender qué sentimos y transmitirlo a los demás. A veces son cortitas y chistosas,  a veces, largas y complicadas. Algunas nos hacen trabar la lengua ¡y otras ni siquiera existen y tenemos que inventarlas! Este libro nos anima a conocer el poder de las palabras y elegirlas con cuidado para que reflejen lo que dice nuestro corazón.', 'imagen25.webp', 13499),
(26, 'LOS ANTEOJOS DE INTI', 'Mariana Fernandez / Maria Elina Mendez / Carina Schwindt', 'Inti siempre lleva puestos unos anteojos de ver bien. Son muy especiales, porque con ellos puede ver lo que sienten los demás. Pero algo inesperado ocurre ¡y los anteojos se rompen! ¿Qué podrá hacer Inti? Un cuento sobre la empatía. Para aprender a ponerse en el lugar de los demás, comprender sus sentimientos y actuar en consecuencia. Para ver el mundo de manera diferente, y convertirlo en un lugar mejor.', 'imagen26.webp', 12780),
(27, 'HEROES DEL OLIMPO 3 - LA MARCA DE ATENEA', 'Rick Riordan', 'Jason, Leo y Pipper, protagonistas de El héroe perdido, se unen a los de El hijo de Neptuno, Percy, Frank y Hazel pero todavía les falta un séptimo semidios para cumplir la profecía y salvar el mundo... El destino de la humanidad pende de un hilo: Gea ha abierto de par en par las Puertas de la Muerte para liberar a sus despiadados monstruos. Los únicos que pueden cerrarlas son Percy, Jason, Piper, Hazel, Frank, Leo y Annabeth, el equipo de semidioses griegos y romanos elegido por una antigua profecía. Pero su misión es todavía más difícil de lo que parece: sospechan que para encontrar las puertas deberán cruzar el océano, tienen solo seis días para conseguirlo y, por si fuera poco, acaba de estallar la guerra entre sus dos campamentos y ahora ellos son un objetivo...¿Lograrán ganar esta carrera de obstáculos contrarreloj?', 'imagen27.webp', 26369),
(28, 'MAGNOLIA PARKS - UNIVERSO MAGNOLIA PARKS', 'Jessa Hastings', 'Todo el mundo sabe que Magnolia Parks y BJ Ballentine están hechos el uno para el otro. Ella es una socialite preciosa, adinerada, egoísta y un poco caprichosa. Él, el chico malo más fotografiado de Inglaterra y su rompecorazones particular. Pero el destino no parece estar de su parte. Por mucho que Magnolia intente poner distancia saliendo con otras personas y BJ se acueste con un sinfín de chicas para vengarse, siempre terminan volviendo el uno a los brazos del otro. Entre las cicatrices de un viejo amor y los secretos que en ellas se reflejan, Magnolia y BJ se verán obligados a encararse para responder a la pregunta que llevan toda la vida evitando. ¿Cuántos amores tienes realmente en una vida? Uno de los títulos más virales de BookTok, recomendado por MillieBobby Brown y el primero de un universo que fascinará a los fans de Gossip Girl y El piso mil. ', 'imagen28.webp', 20699),
(29, 'LOS TRES CERDITOS', 'Melanie Baligand', 'Se trata de un libro-objeto, con estructuras pop-up en forma de casa con el techo calado y una cuña en la que se coloca un teléfono celular con la linterna encendida. La luz se proyecta a través de los calados y se ven las imágenes proyectadas en el cielorraso al modo de un teatro de sombras. En la cuña caben todos los tamaños de teléfono.Mientras los niños disfrutan de las imágenes proyectadas, el adulto mediador avanza en la lectura del cuento de los tres cerditos distribuido en el techo de la estructura iluminada.La situación de lectura crea las condiciones ideales para dormirse tranquilamente. Por supuesto también se disfrutará del libro abriéndolo durante el día para mirar las ilustraciones que se despliegan en las páginas.', 'imagen29.webp', 22500),
(30, 'HIPO NO DUERME', 'Pablo Bernasconi', 'Otra gran aventura de Hipo, donde el va a descubrir que la hora de dormir tambien puede ser divertida. No te pierdas su primer aventura: Hipo no nada', 'imagen30.webp', 8730),
(31, 'CUANDO SAN PEDRO VIAJO EN TREN', 'Liliana Bodoc', 'El tren está listo para partir. Nicanor y su mamá dejan su pueblo para mudarse a la gran ciudad. El camino es largo y muchos de los pasajeros duermen, quizás para no pensar en todo lo que dejan atrás. Pero Nicanor está bien despierto y avanza de vagón en vagón sin imaginar que junto a él viaja un secreto que lo acompañará para siempre.', 'imagen31.webp', 8099),
(32, 'NO SE COMO MOSTRAR DONDE ME DUELE', 'Amalia Andrade', 'Un libro que por momentos no quise escribir', 'imagen32.webp', 17910),
(33, 'BLUEY 3 - EL ARROYO (THE CREEK)', 'Bluey', '¡Cuentos con Bluey! La crítica dijo: «Entrego mis armas ante Bluey. La mejor serie para preescolar que me he encontrado en mucho tiempo». El Hematocrítico «Bluey, la serie de apariencia infantil que engancha a los adultos». El Mundo «El culto a Bluey: cómo un dibujo animado infantil se ha convertido en la biblia de la paternidad moderna». The Guardian «Los libros de Bluey son historias igual de imaginativas, vibrantes, tiernas y pedagógicas como las que podemos ver en televisión». Silvia Díaz, Bebés y más', 'imagen33.webp', 7919),
(34, 'AQUI ESTAMOS', 'Oliver Jeffers', 'Nuestro planeta puede ser un lugar confuso y complicado para cualquiera, particularmente para sus nuevos habitantes. En las primeras etapas de vida, la mente del individuo suele estar llena de preguntas. En este libro, Oliver Jeffers nos muestra todo lo que los niños necesitan saber para empezar a descubrir el mundo e identificarse como individuos en el tiempo y espacio, desde el sistema solar, el planeta tierra y sus elementos, hasta el cuerpo humano, las personas y los animales. Dedicado a su hijo, Jeffers explica con sencillez conceptos básicos para hacer más amable y comprensible el mundo para los más pequeños, abordando temas como inclusión, diversidad y convivencia en estas notas para vivir en el planeta tierra', 'imagen34.webp', 24210),
(35, 'DIMELO CON BESOS', 'Mercedes Ron', 'Kamila Hamilton debe decidir entre los dos hermanos Di Bianco: Thiago o Taylor... Taylor o Thiago. Escoger a uno significa renunciar al otro, pero ¿cómo puede dejar atrás una parte de sí misma? THIAGO HACE QUE TOQUE EL CIELO CON LOS DEDOS TAYLOR SABE QUE JAMÁS VA A SOLTAR SU MANO Pero cuando Kami cree que por fin su corazón ha decidido, la pesadilla más real está a punto de comenzar. ¿ESTARÁN TAYLOR Y THIAGO A LA ALTURA? ¿PODRÁ EVITAR KAMI QUE EL AMOR ARRASE CON TODO? ¿QUÉ SUCEDERÁ CUANDO LA VIDA DECIDA POR ELLOS UNA VEZ MÁS? ENAMÓRATE DE LOS HERMANOS DI BIANCO ', 'imagen35.webp', 25559);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libritos`
--
ALTER TABLE `libritos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_titulo_autor` (`Titulo`,`Autor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libritos`
--
ALTER TABLE `libritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
