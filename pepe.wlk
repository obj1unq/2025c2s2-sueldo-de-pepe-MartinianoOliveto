object pepe {
	var sueldo = 0
    var sueldoNeto = 0
    var bonoResultados = 0
    var bonoPresentismo = 0
    var faltas = 0

    //acciones de pepe 
    method faltar(dias){
        faltas = faltas + dias 
    }
    method calcularSueldo(){
        sueldo = sueldoNeto + bonoResultados + bonoPresentismo
    }
    //setters pepe 
     method categoriaPepe(categoria){
        sueldoNeto = categoria.sueldoNeto()
    }
    method bonoPresentismo(_bonoPresentismo){
        bonoPresentismo = _bonoPresentismo.valorBono()
    }
    method bonoResultados(_bonoresultados){
        bonoResultados = _bonoresultados.valorBono()
    }
    //getters pepe
    method faltas(){
        return faltas 
    }
    method sueldoNeto(){
        return sueldoNeto
    }
    method bonoPresentismo(){
        return bonoPresentismo
    }
    method bonoResultados(){
        return bonoResultados
    }
    method sueldo(){
        return sueldo
    }
}
// roles 
object cadete{
    const sueldoNeto = 15000

    method sueldoNeto(){
        return sueldoNeto
    }
}
object gerente{
    const sueldoNeto = 20000

    method sueldoNeto(){
        return sueldoNeto
    }
<<<<<<< HEAD
}
//bonos por resultado 
object bonoPorcentaje{
    var valorBono = 0

    method valorBono(empleado){
        valorBono = empleado.sueldoNeto() * 0.1 
    }
    method valorBono(){
        return valorBono
    }
}
object bonoMontoFijo{
    const valorBono = 800

    method valorBono(){
        return valorBono
    }
}
object bonoNulo{
//este objeto se comparte para los dos tipos de 
//bonos 
    const valorBono = 0

    method valorBono(){
        return valorBono
    }
}
//bonos por presentismo
object bonoNormal{
    var valorBono = 0

    method valorBono(empleado){
        if(empleado.faltas() == 0){
            valorBono = 2000
        }
        else(empleado.faltas() == 1){
            valorBono = 1000
        }
    }
    method valorBono(){
        return valorBono
    }
}
object bonoDemagogico{
    var valorBono = 0

    method valorBono(empleado){
        if(empleado.sueldoNeto() < 18000){
            valorBono = 500
        }
        else{
            valorBono = 300
        }
        return valorBono
    }
    method valorBono(){
        return valorBono
    }
=======
>>>>>>> e0e1dffe4a5142b678fd5f5041548c08caa87750
}