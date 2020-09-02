object gimenez {
	
	var fondo = 300000
	
	method pagarSueldo(empleado){
		empleado.recibirSueldo()
	}
	method actualizarFondo(cantidad){
		fondo -= cantidad
	}
	method fondo(){
		return fondo
	}
}

object galvan {
	
	var sueldo = 0
	var sueldoFijo = 15000
	
	method sueldo(){
		return sueldoFijo
	}
	method recibirSueldo() {
		sueldo += sueldoFijo
		gimenez.actualizarFondo(sueldoFijo)
	}
	method sueldo(cantidad){
		sueldoFijo = cantidad
	}
}

object baigorria {
	
	var sueldoTotal = 0
	var sueldo = 0
	
	method sueldo(){
		return sueldo
	}
	
	method recibirSueldo(){
		
		sueldoTotal += sueldo
		gimenez.actualizarFondo(sueldo)
		sueldo = 0
	}
	method vender(cantidad){
		sueldo += cantidad * 15
	}
}
