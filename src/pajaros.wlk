class Pajaro {

	var property ira

	constructor(_ira) {
		ira = _ira
	}

	method getIra() {
		return ira
	}

	method setIra(unaIra) {
		ira = unaIra
	}

	method getFuerza()

	method enojarse() {
		ira = 2 * ira
	}

	method tranquilizarse() {
		ira = ira - 5
	}

	method atacarObstaculo(unObstaculo) {
		if (self.getFuerza() > unObstaculo.getResistencia()) {
			unObstaculo.esImpactado(self)
		}
	}
}

class PajaroComun inherits Pajaro {

	override method getFuerza() {
		return 10 * ira
	}

}

class Red inherits Pajaro {

	var property cantidadEnojos = 6

	method getCantidadEnojos() {
		return cantidadEnojos
	}

	override method enojarse() {
		super()
		cantidadEnojos = cantidadEnojos + 1
	}

	override method getFuerza() {
		return 10 * cantidadEnojos
	}

}

class Bomb inherits Pajaro {

	var property maximoFuerza = 9000

	override method getFuerza() {
		return if ((10 * ira) <= maximoFuerza) {
			10 * ira
		} else {
			maximoFuerza
		}
	}

}

class Chuck inherits Pajaro {

	var property velocidad = 82

	override method enojarse() {
		super()
		velocidad = 2 * velocidad
	}

	override method tranquilizarse() {
	}

	override method getFuerza() {
		return 150 + (5 * (velocidad - 80).max(0))
	}

}

