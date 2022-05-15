import rodados.*

class Pedido {
	
	var property distancia
	var property tiempoMaximo
	var property cantPasajeros
	var property coloresIncompatibles = []
	
	method velocidadRequerida() = distancia/tiempoMaximo
	method loPuedeSatisfacer(unAuto) {
		return unAuto.velocidadMaxima() >= self.velocidadRequerida()
			 and unAuto.capacidad() >= cantPasajeros
			 and not coloresIncompatibles.contains(unAuto.color())
	}  
	method acelerar() {tiempoMaximo--}
	method relajar() {tiempoMaximo++}
	
}
