<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.BufferedWriter" %>
<%@page import="java.io.FileWriter" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.Scanner" %>
<%
/** Log POSTs at / to a file **/
if ("POST".equalsIgnoreCase(request.getMethod())) {
        BufferedWriter writer = new BufferedWriter(new FileWriter("/tmp/sample-app.log", true));
        Scanner scanner = new Scanner(request.getInputStream()).useDelimiter("\\A");
	if(scanner.hasNext()) {
		String reqBody = scanner.next();
		writer.write(String.format("%s Received message: %s.\n", (new Date()).toString(), reqBody));
	}
        writer.flush();
        writer.close();

} else {
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>DANI-NUTRI</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Owl Carousel -->
	<link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
	<link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />

	<!-- Magnific Popup -->
	<link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />

	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

</head>

<body>
	<!-- Header -->
	<header id="home">
		<!-- Background Image -->
		<div class="bg-img" style="background-image: url('./img/background5.jpg');">
			<div class="overlay"></div>
		</div>
		<!-- /Background Image -->

		<!-- Nav -->
		<nav id="nav" class="navbar nav-transparent">
			<div class="container">

				<div class="navbar-header">
					<!-- Logo -->
					<div class="navbar-brand">
						<a href="index.html">
							<img class="logo" src="img/logo1.png" alt="logo">
							<img class="logo-alt" src="img/logo1-alt.png" alt="logo">
						</a>
					</div>
					<!-- /Logo -->

					<!-- Collapse nav button -->
					<div class="nav-collapse">
						<span></span>
					</div>
					<!-- /Collapse nav button -->
				</div>

				<!--  Main navigation  -->
				<ul class="main-nav nav navbar-nav navbar-right">
					<li>
						<a href="#about">Mi historia</a>
					</li>
					<li>
						<a href="#features">Un enfoque diferente</a>
					</li>
					<li>
						<a href="#galery">Galería</a>
					</li>
					<li>
						<a href="#service">Planes</a>
					</li>
					<li>
						<a href="#contact">Contácto</a>
					</li>
				</ul>
				<!-- /Main navigation -->

			</div>
		</nav>
		<!-- /Nav -->

		<!-- home wrapper -->
		<div class="home-wrapper">
			<div class="container">
				<div class="row">

					<!-- home content -->
					<div class="col-md-10 col-md-offset-1">
						<div class="home-content">
							<h1 class="white-text">Nothing will work unless you do</h1>
							<p class="white-text">—Maya Angelou.
							</p>
							<!-- <button class="white-btn">Get Started!</button>
							<button class="main-btn">Learn more</button> -->
						</div>
					</div>
					<!-- /home content -->

				</div>
			</div>
		</div>
		<!-- /home wrapper -->

	</header>
	<!-- /Header -->

	<!-- About -->
	<div id="about" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header  -->
				<div class="section-header text-center">
					<h2 class="title"> Mi historia </h2>
				</div>
				<!-- /Section header -->
				<!-- why choose us content -->
				<div class="col-md-12">
					<div class="section-header">
						<h3 class="title">¿Quién es Daniel Guzmán?</h3>
					</div>
				</div>

				<div class="col-md-12">
					<div class="col-md-6">
						<p class="paragraph">
							&nbsp;&nbsp;Todo empieza a los ocho años cuando descubrí mi primera pasión: el fútbol. Desde 8 hasta los 11
							años,
							entrenaba 3 veces a la semana
							con el equipo de la escuela e intentaba jugar en todos los recreos. A los 12 años entre a mi primer equipo fuera
							de la escuela, lugar que
							me abrió la oportunidad de ser elegido para la selección del estado. A esa edad mi dieta era basada en frituras
							y
							alimentos ultra procesados,
							sin embargo no se veeiia reflejado en mi cuerpo por la cantidad excesiva de ejercicio que realizaba. A los 14
							años dejé mi país nativo
							para mudarme a Costa Rica. Mi primer año mantuve una mentalidad deportiva donde rechace en diferentes ocasiones
							el consumo de alcohol.
							A los 15 años, como la mayoría de los adolescentes me deje llevar por la presión social, y empecé a
							consumir alcohol y salir a fiestas,
							momento donde el fútbol paso a tener un peso menos importante en mi vida. Pase 2 años entrenando a alta
							intensidad sin embargo nunca
							mejore mis malos hábitos alimenticios.
							Esta vez la dieta si se vio reflejada en mi cuerpo y gane varios
							kilogramos de grasa. Este fue
							el momento donde descubrí que por mas ejercicio y deporte que practicara, no iba a obtener buenos resultados con
							una mala nutrición.
						</p>
					</div>
					<div class="col-sm-1"></div>
					<div class="col-sm-4">
						<div class="team">
							<div class="team-img">
								<img class="img-responsive" src="./img/team5.jpg" alt="">
								<div class="overlay">
									<div class="team-social">
										<a href="https://m.facebook.com/Daniel-Guzmán-1852691141661261/?ref=m_notif&notif_t=page_user_activity"><i
											 class="fa fa-facebook"></i></a>
										<a href="https://www.instagram.com/danielguzmanr/"><i class="fa fa-instagram"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
									</div>
								</div>
							</div>
							<div class="team-content">
								<h3>Daniel Guzmán</h3>
								<span>Estudiante de Nutrición</span>
							</div>
						</div>

					</div>


				</div>
				<div class="col-md-12">

					<p class="paragraph">
						&nbsp;&nbsp;A los 17 años decidí cambiar mis hábitos alimenticios con la ayuda de mi madre, persona fundamental e
						indispensable para encontrar mi
						nueva pasión: la nutrición. Ese año logre bajar 6% de grasa, obteniendo como resultado final un 9% de grasa. A
						consecuencia de este
						logro tuve un incremento de autoestima y seguridad en mi. No por el hecho de perder grasa, si no por el hecho de
						descubrir que tengo
						el poder y el control de lograr las metas que me plantee, si tengo el conocimiento adecuado y logro implementarlo
						de manera correcta.
					</p>

					<p class="paragraph">
						&nbsp;&nbsp;A finales de ese año sufrií una fractura en la mano, este evento me dejo 3 meses sin hacer ejercicio,
						tiempo
						en el que gane varios kilogramos de grasa. Por varios años intenté diferentes dietas, sin embargo no lograba
						mantener un porcentaje de grasa bajo y todas tenían como resultado final un efecto rebote donde terminaba con el
						porcentaje de grasa que tenía desde que inicie la dieta o incluso llegaba a porcentajes de grasa más altos que
						el inicial. Desde ese momento hasta hoy en día he investigado sobre diferentes dietas y las he probado todas,
						para poder hablar con un mejor criterio respaldado por teoría y practica. He probado diferentes dietas en los
						últimos 4 años, como la dieta vegana, lo cual consiste en eliminar todos los productos de origen animal,
						esto incluye las carnes, los quesos, la leche, el huevo, y todo lo que provenga de un animal. Este estilo de
						comer me ayudo a entender que no es necesario consumir grandes cantidades de carne para ganar masa muscular,
						ni batidos de proteína, ya que en ese período aumente masa muscular y perdí grasa. También hice una dieta
						llamada,
						ayuno intermitente, que es un estilo de comer donde la persona consume todas sus calorías diarias en un periodo
						corto del día y pasa la mayor parte del día en ayuno. Lo hice siguiendo 16 horas de ayuno al día y consumía 2
						comidas al día en un período de 8 horas. Entonces consumía mi primera comida a las dos de la tarde y la última
						a las 8 de la noche, cada comida contenía aproximadamente 1300 calorías, lo que me ayudaba a cumplir con mi
						necesidad calórica del día. Esta prueba me ayudo a eliminar el paradigma de la necesidad de consumir comida cada
						dos o tres horas, lo cual fue un descubrimiento increíble, ya que me quito la obligación de estar con envases
						llenos de comida a cualquier lugar al que iba.
					</p>

					<p class="paragraph">
						&nbsp;&nbsp;También he probado otras dietas como la dieta baja en carbohidratos, la dieta paleo, cetogénica,
						dieta carnívora,
						comer solo frutas, dieta de comida cruda, dieta de solo batidos, y en este momento no se me ocurre otra, pero
						seguro que hay más. No he parado de investigar sobre diferentes maneras de comer y las dietas de diferentes
						poblaciones, e intento poner todo lo que aprendo en practica y cuestionar todo. El día de hoy he desarrollado
						un sistema de alimentación, donde explico diferentes conceptos y creo ciertos hábitos que me han ayudado a
						poder mantener un porcentaje de grasa bajo, y hábitos sostenibles a largo plazo sin crear obsesiones.
					</p>

				</div>


			</div>
		</div>
		<!-- /Row -->

	</div>
	<!-- /Container -->

	</div>
	<!-- /About -->
	<div id="team" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">



				<!-- /team -->


			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Team -->

	<!-- Why Choose Us -->
	<div id="features" class="section md-padding bg-grey">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<!-- Section header -->
			<div class="section-header text-center">
				<h2 class="title">Un enfoque diferente</h2>
			</div>
			<!-- /Section header -->
			<div class="row">

				<!-- why choose us content -->
				<div class="col-md-6">
					<div class="section-header">
						<h3 class="title">¿No tienes que obsesionarte para tener un buen fisico?</h3>
					</div>
					<p class="paragraph">
						Desde que descubrí el gimnasio a mis 17 años, las personas que me rodeaban me hicieron creer
						que si no hacia todo perfecto iba a obtener resultados mediocres. Me hicieron creer que
						necesitaba tomar un batido de proteína después de cada entrenamiento, comprar una cantidad
						excesiva de suplementos, entrenar 6 días a la semana, hacer pesas, hacer cardio, comer cada 2 o 3 horas,
						y consumir cantidades excesivas de proteína. A pesar de que intente seguir estos consejos nunca
						obtuve los resultados deseados. Hoy en día entreno 3 días a la semana, no consumo suplementos,
						realizo cardio únicamente cuando me invitan a jugar fútbol (2 veces al mes máximo) o salgo a correr
						cuando quiero despejar mi mente, pero ya nunca lo hago con la intención de quemar calorías.
					</p>

				</div>
				<!-- /why choose us content -->

				<!-- About slider -->
				<div class="col-md-6">
					<div id="about-slider" class="owl-carousel owl-theme">
						<img class="img-responsive" src="./img/person1.jpg" alt="">
					</div>
				</div>
				<!-- /About slider -->

			</div>
			<!-- /Row -->
		</div>

		<br>
		<br>

		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div id="about-slider" class="owl-theme">
						<img class="img-responsive" src="./img/person3.jpg" alt="">
					</div>
				</div>

				<div class="col-md-6">
					<div class="section-header">
						<h3 class="title">Cuerpo funcional</h3>
					</div>
					<p class="paragraph">
						Si te interesa ganar la mayor cantidad de músculo posible existen muchos expertos que
						te pueden ayudar y yo no soy uno de ellos. Mi enfoque de alimentación y entrenamiento
						va para personas que deseen un cuerpo funcional y atlético, donde puedan llevar una
						vida social normal y no se obsesiones con sus metas físicas. Mi enfoque con el entrenamiento
						es aumentar la fuerza relativa. Esto quiere decir incrementar la fuerza relativa a tu peso.
						Esto se logra realizando ejercicios con el peso corporal y bajando los niveles de grasa.
					</p>

				</div>
			</div>
			<!-- /About slider -->

		</div>

	</div>
	<!-- /Container -->

	</div>
	<!-- /Why Choose Us -->


	<!-- Portfolio -->
	<div id="galery" class="section md-padding bg-grey">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">Galería</h2>
				</div>
				<!-- /Section header -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/person7.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#">
								<i class="fa fa-external-link"></i>
							</a>
							<a class="lightbox" href="./img/person7.jpg">
								<i class="fa fa-search"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/person5.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#">
								<i class="fa fa-external-link"></i>
							</a>
							<a class="lightbox" href="./img/person5.jpg">
								<i class="fa fa-search"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/person4.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#">
								<i class="fa fa-external-link"></i>
							</a>
							<a class="lightbox" href="./img/person4.jpg">
								<i class="fa fa-search"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/person8.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#">
								<i class="fa fa-external-link"></i>
							</a>
							<a class="lightbox" href="./img/person8.jpg">
								<i class="fa fa-search"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/person9.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#">
								<i class="fa fa-external-link"></i>
							</a>
							<a class="lightbox" href="./img/person9.jpg">
								<i class="fa fa-search"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/person6.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#">
								<i class="fa fa-external-link"></i>
							</a>
							<a class="lightbox" href="./img/person6.jpg">
								<i class="fa fa-search"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- /Work -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Portfolio -->


	<!-- Numbers -->
	<!-- <div id="numbers" class="section sm-padding"> -->

	<!-- Background Image -->
	<!-- <div class="bg-img" style="background-image: url('./img/background4.jpg');">
			<div class="overlay"></div>
		</div> -->
	<!-- /Background Image -->

	<!-- Container -->
	<!-- <div class="container"> -->

	<!-- Row -->
	<!-- <div class="row"> -->

	<!-- number -->
	<!-- <div class="col-sm-3 col-xs-6">
					<div class="number">
						<i class="fa fa-users"></i>
						<h3 class="white-text">
							<span class="counter">451</span>
						</h3>
						<span class="white-text">Happy clients</span>
					</div>
				</div> -->
	<!-- /number -->

	<!-- number -->
	<!-- <div class="col-sm-3 col-xs-6">
					<div class="number">
						<i class="fa fa-trophy"></i>
						<h3 class="white-text">
							<span class="counter">12</span>
						</h3>
						<span class="white-text">Awards won</span>
					</div>
				</div> -->
	<!-- /number -->

	<!-- number -->
	<!-- <div class="col-sm-3 col-xs-6">
					<div class="number">
						<i class="fa fa-coffee"></i>
						<h3 class="white-text">
							<span class="counter">154</span>K</h3>
						<span class="white-text">Cups of Coffee</span>
					</div>
				</div> -->
	<!-- /number -->

	<!-- number -->
	<!-- <div class="col-sm-3 col-xs-6">
					<div class="number">
						<i class="fa fa-file"></i>
						<h3 class="white-text">
							<span class="counter">45</span>
						</h3>
						<span class="white-text">Projects completed</span>
					</div>
				</div> -->
	<!-- /number -->

	<!-- </div> -->
	<!-- /Row -->

	<!-- </div> -->
	<!-- /Container -->

	<!-- </div> -->
	<!-- /Numbers -->

	<!-- Pricing -->
	<div id="pricing" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">Planes</h2>
				</div>
				<div class="col-sm-2">

				</div>
				<!-- /Section header -->

				<!-- pricing -->
				<!-- <div class="col-sm-4">
					<div class="pricing">
						<div class="price-head">
							<span class="price-title">Bronce</span>
							<div class="price">
								<h3>$15
									<span class="duration">/ month</span>
								</h3>
							</div>
						</div>
						<ul class="price-content">
							<li>
								<p>Hábitos para conseguir un cuerpo funcional</p>
							</li>
							<li>
								<p>Introducción</p>
							</li>
							<li>
								<p>¿Cómo se pierde peso?</p>
							</li>
							<li>
								<p>Cardio vs Resistencia</p>
							</li>
							<li>
								<p>Nutricionista tradicional vs Dieta de volumen</p>
							</li>
							<li>
								<p>Frutas y verduras base de la alimentación?</p>
							</li>
							<li>
								<p>Frecuencia entre comidas</p>
							</li>
						</ul>
						<div class="price-btn">
							<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
								<input type="hidden" name="cmd" value="_s-xclick">
								<input type="hidden" name="hosted_button_id" value="2A7LGBHBPVS4S">
								<input type="image" src="https://www.paypalobjects.com/es_XC/i/btn/btn_buynowCC_LG.gif" border="0" name="submit"
								 alt="PayPal - The safer, easier way to pay online!">
								<img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
							</form>
						</div>
					</div>
				</div> -->
				<!-- /pricing -->

				<!-- pricing -->
				<!-- <div class="col-sm-4">
					<div class="pricing">
						<div class="price-head">
							<span class="price-title">Silver</span>
							<div class="price">
								<h3>$20
									<span class="duration">/ month</span>
								</h3>
							</div>
						</div>
						<ul class="price-content">
							<li>
								<p>Hábitos para conseguir un cuerpo funcional</p>
							</li>
							<li>
								<p>Introducción</p>
							</li>
							<li>
								<p>¿Cómo se pierde peso?</p>
							</li>
							<li>
								<p>Cardio vs Resistencia</p>
							</li>
							<li>
								<p>Nutricionista tradicional vs Dieta de volumen</p>
							</li>
							<li>
								<p>Frutas y verduras base de la alimentación?</p>
							</li>
							<li>
								<p>Frecuencia entre comidas</p>
							</li>
						</ul>
						<div class="price-btn">
							<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
								<input type="hidden" name="cmd" value="_s-xclick">
								<input type="hidden" name="hosted_button_id" value="GJNWVH58BW6DN">
								<input type="image" src="https://www.paypalobjects.com/es_XC/i/btn/btn_buynowCC_LG.gif" border="0" name="submit"
								 alt="PayPal - The safer, easier way to pay online!">
								<img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
							</form>
						</div>
					</div>
				</div> -->
				<!-- /pricing -->

				<!-- pricing -->
				<div class="col-sm-8">
					<div class="pricing">
						<div class="price-head">
							<span class="price-title">Gold</span>
							<div class="price">
								<h3>$30
									<span class="duration">/ Pago único</span>
								</h3>
							</div>
						</div>
						<ul class="price-content">
							<li>
								<p>Hábitos para conseguir un cuerpo funcional</p>
							</li>
							<li>
								<p>Introducción</p>
							</li>
							<li>
								<p>¿Cómo se pierde peso?</p>
							</li>
							<li>
								<p>Cardio vs Resistencia</p>
							</li>
							<li>
								<p>Nutricionista tradicional vs Dieta de volumen</p>
							</li>
							<li>
								<p>Frutas y verduras base de la alimentación?</p>
							</li>
							<li>
								<p>Frecuencia entre comidas</p>
							</li>
							<li>
								<p>Base de mi alimentación</p>
							</li>
							<li>
								<p>Pirámide de prioridades</p>
							</li>
							<li>
								<p>Cómo elijo la comida procesada</p>
							</li>
							<li>
								<p>Estado mental para la pérdida de grasa</p>
							</li>
							<li>
								<p>Mi rutina de calistenia</p>
							</li>
							<li>
								<p>Plan B: Opciones de comida fuera de casa</p>
							</li>
						</ul>
						<div class="price-btn">
							<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
								<input type="hidden" name="cmd" value="_s-xclick">
								<input type="hidden" name="hosted_button_id" value="KKSXKLXUZPVN4">
								<input type="image" src="https://www.paypalobjects.com/es_XC/i/btn/btn_buynowCC_LG.gif" border="0" name="submit"
								 alt="PayPal - The safer, easier way to pay online!">
								<img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
							</form>
						</div>
					</div>
				</div>
				<!-- /pricing -->


			</div>
			<!-- Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Pricing -->


	<!-- Contact -->
	<div id="contact" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section-header -->
				<div class="section-header text-center">
					<h2 class="title">Contácteme</h2>
				</div>
				<!-- /Section-header -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<!-- <i class="fa fa-phone"></i>
						<h3>Phone</h3>
						<p>512-421-3940</p> -->
					</div>
				</div>
				<!-- /contact -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-envelope"></i>
						<h3>Email</h3>
						<p>danielguzmanrnutricion@gmail.com</p>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<!-- <i class="fa fa-map-marker"></i>
						<h3>Address</h3>
						<p>1739 Bubby Drive</p> -->
					</div>
				</div>
				<!-- /contact -->

				<!-- contact form -->
				<div class="col-md-8 col-md-offset-2">
					<form action="mailto:danielguzmanrnutricion@gmail.com" method="GET" class="contact-form">
						<input type="text" name="name" class="input" placeholder="Name">
						<input type="email" name="email" class="input" placeholder="Email">
						<input type="text" name="subject" class="input" placeholder="Subject">
						<textarea class="input" name="body" placeholder="Message"></textarea>
						<button class="main-btn">Send message</button>
					</form>
					<!-- <div id="error_message" style="width:100%; height:100%; display:none; ">
						<h4>Error</h4>
						Sorry there was an error sending your form.
					</div>
					<div id="success_message" style="width:100%; height:100%; display:none; ">
						<h2>Success! Your Message was Sent Successfully.</h2>
					</div> -->
				</div>
				<!-- /contact form -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Contact -->


	<!-- Footer -->
	<footer id="footer" class="sm-padding bg-dark">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<div class="col-md-12">

					<!-- footer logo -->
					<div class="footer-logo">
						<a href="index.html">
							<img src="img/logo1-alt.png" alt="logo">
						</a>
					</div>
					<!-- /footer logo -->

					<!-- footer follow -->
					<ul class="footer-follow">
						<li>
							<a href="#">
								<i class="fa fa-facebook"></i>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-twitter"></i>
							</a>
						</li>
						<!-- <li>
							<a href="#">
								<i class="fa fa-google-plus"></i>
							</a>
						</li> -->
						<li>
							<a href="#">
								<i class="fa fa-instagram"></i>
							</a>
						</li>
						<!-- <li>
							<a href="#">
								<i class="fa fa-linkedin"></i>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-youtube"></i>
							</a>
						</li> -->
					</ul>
					<!-- /footer follow -->

					<!-- footer copyright -->
					<div class="footer-copyright">
						<p>Copyright © 2018. All Rights Reserved. Designed by
							<a href="#" target="_blank">Sleyter Angulo</a>
						</p>
					</div>
					<!-- /footer copyright -->

				</div>

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</footer>
	<!-- /Footer -->

	<!-- Back to top -->
	<div id="back-to-top"></div>
	<!-- /Back to top -->

	<!-- Preloader -->
	<div id="preloader">
		<div class="preloader">
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>
	<!-- /Preloader -->

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>

</html>
<% } %>
