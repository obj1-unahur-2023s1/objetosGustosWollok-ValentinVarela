/* colores */
object rojo    { method esFuerte() { return true } }
object verde   { method esFuerte() { return true } }  
object celeste { method esFuerte() { return false } }  
object pardo   { method esFuerte() { return false } }  
object naranja { method esFuerte() { return true } }

/* materiales */
object lino   { method brilla() { return false } }
object vidrio { method brilla() { return true }  }
object cobre  { method brilla() { return true }  }
object madera { method brilla() { return false } }
object cuero  { method brilla() { return false } }
// agregar: cobre, madera, cuero

/* objetos */
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo }  // completar
	method material() { return cuero }  // completar
	method peso() { return 1200 }  // completar
}

object biblioteca {
	method color() { return verde }
	method material() { return madera }
	method peso() { return 8000 }
}

object munieco {
	var peso 
	
	method color() { return celeste }
	method material() { return vidrio }
	method peso() { return peso }
	// usar siempre setPeso y setColor para setear los nuevos peso y color, respectivamente.
	method setPeso(pesoNuevo) { peso = pesoNuevo }
}

object placa {
	var color
  var peso
	method color() { return color }
	method material() { return cobre }
	method peso() { return peso }
  method setPeso(pesoNuevo) { peso = pesoNuevo }
  method setColor(colorNuevo) { color = colorNuevo }
}


// agregar biblioteca y placa

object arito {
  // completar
  method color (){
  	return celeste
  }
  method material() {
  	return cobre
  }
  method peso(){
  	return 180
  }
}

object banquito {
  // completar
  var color = naranja
  method color (){
  	return color
  }
  method material() {
  	return madera
  }
  method peso(){
  	return 1700
  }
  method cambiarElColor(colorNuevo){
  	color = colorNuevo
  }
}

object cajita {
 var peso = 400
 var objetoDentro = ''
  // completar
    method color (){
  	return rojo
  }
  method material() {
  	return cobre
  }
  method peso(){
  	return peso
  }
  method ponerAdentro(cosa) { 
  	peso += cosa.peso()
    objetoDentro = cosa
  } //completar
  
  method tieneAdentro() {
  	return objetoDentro
  }
}