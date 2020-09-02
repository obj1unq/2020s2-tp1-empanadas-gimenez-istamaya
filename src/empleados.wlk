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
	
	var totalCobrado = 0
	var sueldoFijo = 15000
	
	method sueldo(){
		return sueldoFijo
	}
	method sueldo(cantidad){
		sueldoFijo = cantidad
	}
	method recibirSueldo() {
		totalCobrado += sueldoFijo
		gimenez.actualizarFondo(sueldoFijo)
	}
}

object baigorria {
	
	var totalCobrado = 0
	var sueldo = 0
	
	method sueldo(){
		return sueldo
	}
	method vender(cantidad){
		sueldo += cantidad * 15
	}
	method recibirSueldo(){
		totalCobrado += sueldo
		gimenez.actualizarFondo(sueldo)
		sueldo = 0
	}
	method totalCobrado(){
		return totalCobrado
	}
}
