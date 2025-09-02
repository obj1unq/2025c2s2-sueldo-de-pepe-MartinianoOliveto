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
}