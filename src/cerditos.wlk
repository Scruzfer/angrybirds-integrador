import obstaculo.*

class Cerdito inherits Obstaculo{

	method getResistencia()

	method esImpactado(unPajaro)

}

class CerditoObrero inherits Cerdito {

	override method getResistencia() {
		return 50
	}

	override method esImpactado(unPajaro) {
		if (unPajaro.getIra() > 10) {
			self.derribar()
		}
	}

}

class CerditoArmado inherits Cerdito {

	var property horasEntrenamiento
	var property cantidadImpactos

	constructor(_horasEntrenamiento, _cantidadImpactos) {
		horasEntrenamiento = _horasEntrenamiento
		cantidadImpactos = _cantidadImpactos
	}

	method debilitar() {
		cantidadImpactos = cantidadImpactos - 1
	}
	
	method estaArmado(){
		return cantidadImpactos > 0
	}
	
	override method getResistencia() {
		return if (self.estaArmado()) {
			self.resistenciaArmado()
		} else {
			10
		}
	}
	
	method resistenciaArmado()

	override method esImpactado(unPajaro) {
		if (cantidadImpactos > 0) {
			self.debilitar()
		} else {
			self.derribar()
		}
	}

}

class CerditoConCasco inherits CerditoArmado {

	constructor(_horasEntrenamiento) = super(_horasEntrenamiento, 1) {}
	
	override method resistenciaArmado() {
		return 100 
	}

}

class CerditoConEscudo inherits CerditoArmado {
	
	override method resistenciaArmado() {
		return 5 * horasEntrenamiento 
	}

}

