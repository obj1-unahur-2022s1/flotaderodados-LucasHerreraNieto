
class Corsa {
	
	var property color 
	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300
	
}

class Kwid{
	
	var property tanqueAdicional = false
	method capacidad() = if(tanqueAdicional){3}else{4}
	method velocidadMaxima() = if(tanqueAdicional){110}else{110}
	method peso() = if(tanqueAdicional){1200+150}else{1200}
	method color() = "azul"
}

object trafic{
	
	var property interior
	var property motor 
	method peso() = 4000 + interior.peso()+ motor.peso()
	method capacidad() = interior.capacidad()
	method velocidadMaxima() = motor.velocidadMaxima()
	method color() = "blanco"
}

class AutoEspecial {
	var property peso
	var property color
	var property velocidadMaxima
	var property capacidad
}

object bataton{
	method velocidadMaxima() = 80
	method peso() = 500
}

object pulenta{
	method velocidadMaxima() = 130
	method peso() = 800
}

object comodo{
	method peso() = 700
	method capacidad() = 5
}

object popular{
	method peso() = 1000
	method capacidad() = 12
}