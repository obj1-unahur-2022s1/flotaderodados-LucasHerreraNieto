import rodados.*
import pedidos.* 

class Dependencia {
	
	var property pedidos = []
	var property flota = []
	var property empleados 
	
	method agregarALaFlota(unRodado) {flota.add(unRodado)}
	method quitarDeLaFlota(unRodado) {flota.remove(unRodado)}
	method pesoTotalFlota() = flota.sum({r=>r.peso()})
	method velocidadMaximaTodos(velocidad) = flota.all({r=>r.velocidadMaxima() >= 100})
	method estaBienEquipada() = flota.size() > 3 and self.velocidadMaximaTodos(100)
	method rodadosDeColor(unColor) = flota.filter({r=>r.color() == unColor})
	method capacidadTotalEnColor(unColor) = self.rodadosDeColor(unColor).sum({r=>r.capacidad()})
	method rodadoMasRapido() = flota.max({r=>r.velocidadMaxima()})
	method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
	method capacidadDeLaFlota() = flota.sum({r=>r.capacidad()})
	method capacidadFaltante() = 0.max(empleados-self.capacidadDeLaFlota())
	method esGrande() = empleados >= 40 and flota.size() >= 5
	method agregarPedido(unPedido) {pedidos.add(unPedido)}
	method quitarPedido(unPedido) {pedidos.remove(unPedido)}
	method cantPasajerosDePedidos() = pedidos.sum({p=>p.cantPasajeros()})
	method puedeSatisfacerPedido(unPedido) = flota.any({r=>r.loPuedeSatisfacer(r)})
	method pedidosInsatisfechos() = pedidos.filter({p=>not self.puedeSatisfacerPedido(p)})
	method colorIncompatibleParaTodos(unColor) = pedidos.all({p=>p.color() == unColor})
}
