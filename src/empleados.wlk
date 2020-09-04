object gimenez {
	
	var fondo = 300000
	
	method pagarSueldo(empleado){
		fondo -= empleado.sueldo()
		empleado.recibirSueldo()
	}
	method fondo(){
		return fondo
	}
}

object galvan {
	
	var dinero = 0
	var deuda = 0
	var sueldo = 15000
	
	method sueldo(cantidad){
		sueldo = cantidad
	}
	method sueldo(){
		return sueldo
	}
	method recibirSueldo() {
		dinero += 0.max(sueldo - deuda)
		deuda = 0.max(deuda - sueldo)
	}
	method gastar(_dinero){
		deuda = 0.max((_dinero - dinero) +  deuda)
		dinero = 0.max (dinero - _dinero)
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
		sueldo = 0
	}
	method totalCobrado(){
		return totalCobrado
	}
}
