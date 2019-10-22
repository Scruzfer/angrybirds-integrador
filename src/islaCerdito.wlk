class IslaCerdito {
	
	var property listaDeObstaculos
	
	constructor(unaListaDeObstaculos){
		listaDeObstaculos = unaListaDeObstaculos
	}
	
	method getListaDeObstaculos(){
		return listaDeObstaculos
	}
	
	method obstaculosNoDerribados(){
		return listaDeObstaculos.filter({ obstaculo => not obstaculo.getDerribado() })
	}
	
	method primeroNoDerribado(){
		return self.obstaculosNoDerribados().first()
	}
	
	method cantidadDeObstaculosDerribados(){
		return listaDeObstaculos.filter({ obstaculo => obstaculo.getDerribado() }).size()
	}
	
	method seRecuperaronLosHuevos(){
		return self.cantidadDeObstaculosDerribados() == listaDeObstaculos.size()
	}
}
