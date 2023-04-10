import objetos.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		const elDeMostradorBrilla = objetoEnMostrador.material().brilla()   // implementar
		const elDeVidrieraBrilla = objetoEnVidriera.material().brilla()    // implementar
		return elDeMostradorBrilla and elDeVidrieraBrilla
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
		// completar
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
	}
	
	method tieneAlgoDeColor(color) {
		// completar
    return objetoEnMostrador.color() == color or objetoEnVidriera.color() == color
	}

	method puedeMejorar() {
  	return self.esMonocromatico() or self.estaDesequilibrado()
  }

	method puedeOfrecerleAlgoA(persona) {
		// completar
    return persona.leGusta(objetoEnMostrador) or persona.leGusta(objetoEnVidriera)
	}
}