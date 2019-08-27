object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var property sueldo = 15000
	var dinero = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() {
		dinero = dinero + sueldo
	}
	method gasta(cuanto) {
		dinero = dinero - cuanto
	}
	method totalDeuda() {
		return dinero.min(0)
	}
	
	method totalDinero() {
		return dinero.max(0)
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() {
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}
	method cobrarSueldo() {
		totalCobrado = totalCobrado + self.sueldo()
	}
	method totalCobrado() {
		return totalCobrado
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero = dinero - empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
//"No existe el methodo cobrarSueldo()"