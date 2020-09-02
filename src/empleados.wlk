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
	
	var dinero = 0
	var deuda = 0
	var sueldoFijo = 15000
	
	method sueldo(){
		return sueldoFijo
	}
	method sueldo(cantidad){
		sueldoFijo = cantidad
	}
	method recibirSueldo() {
		dinero += sueldoFijo
		gimenez.actualizarFondo(sueldoFijo)
	}
	method gastar(cuanto){
		if (dinero == 0){
			deuda += cuanto
		}
		dinero = 0.max(dinero -cuanto)
	}
	
	method deuda(){
		return deuda
	}
	method dinero(){
		return dinero
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
