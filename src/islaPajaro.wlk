class IslaPajaro {

	var property listaDePajaros

	constructor(unaListaDePajaros) {
		listaDePajaros = unaListaDePajaros
	}

	// TODO: Metodos pasa-manos
	method obtenerFuerzaDe(unPajaro) {
		return unPajaro.getFuerza()
	}

	method hacerEnojarA(unPajaro) {
		unPajaro.enojarse()
	}

	method pajarosMasFuertes() {
		return listaDePajaros.filter({ unPajaro => unPajaro.getFuerza() > 50 })
	}

	method fuerzaDeLaIsla() {
		return listaDePajaros.sum({ unPajaro => unPajaro.getFuerza() })
	}

	method tranquilizarPajaros() {
		listaDePajaros.forEach({ pajaro => pajaro.tranquilizarse()})
	}

	method enojarPajaros() {
		listaDePajaros.forEach({ pajaro => pajaro.enojarse()})
	}

	method invasionDeCerditos(cantidadCerditos) {
		var cantidad = cantidadCerditos.div(100)
		cantidad.times({ numero => self.enojarPajaros()})
	}

	method fiestaSorpresa(homenajeados) {
		homenajeados.forEach({ pajaro => self.hacerEnojarA(pajaro)})
	}

	method atacarIslaCerdito(unaIslaCerdito) {
		listaDePajaros.forEach({ pajaro => self.lanzarPajaro(unaIslaCerdito, pajaro)})
	}

	method lanzarPajaro(isla, pajaro) {
	// TODO: obtener el primer obstaculo que no esta derribado (contra el que se lanza),
	// y hacer que el pajaro lo ataque.
		var noDerribado = isla.primeroNoDerribado()
		pajaro.atacarObstaculo(noDerribado)
	}
}

