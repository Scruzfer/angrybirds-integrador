import obstaculo.*

class Pared inherits Obstaculo {

	var property ancho
	
	constructor(_ancho){
		ancho = _ancho
	}
	
	method getResistencia()
	
	method esImpactado(unPajaro){
		self.derribar()
	}
}

class ParedDeVidrio inherits Pared {
	
	override method getResistencia(){
		return 10 * ancho
	}
}

class ParedDeMadera inherits Pared {
	
	override method getResistencia(){
		return 25 * ancho
	}
}

class ParedDePiedra inherits Pared {
	
	override method getResistencia(){
		return 50 * ancho
	}
}