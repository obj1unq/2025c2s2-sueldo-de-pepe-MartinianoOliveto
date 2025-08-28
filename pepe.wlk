object pepe {
	var sueldo = 0
    var sueldoNeto = 0
    var bonoResultados = 0
    var bonoPresentismo = 0
    var faltas = 0

    //SETTER DE SU CATEGORIA 
    method categoriaPepe(categoria){
        sueldoNeto = categoria.sueldoNeto()
    }

    //GETTER DE FALTAS / HACER QUE FALTE 
    method faltar(dias){
        faltas = faltas + dias 
    }
    method faltas(){
        return faltas 
    }

    //GETTER DEL SUELDO / CLACULAR SUELDO
    method sueldo(){
        return sueldo 
    }
    method calcularSueldo(){
      sueldo = sueldoNeto + bonoResultados + bonoPresentismo
    }

   //BONOS POR RESULTADOS 
   method bonoPorcentaje(){
    bonoResultados = sueldoNeto * 0.1 
   }
   method bonoMontoFijo(){
    bonoResultados = 800
   }

   //BONOS POR PRESENTISMO
   method bonoNormal(){
    if(faltas == 0){
        bonoPresentismo = 2000
    }
    if(faltas == 1){
        bonoPresentismo = 1000 
    }
    else bonoPresentismo = 0
   }

   method bonoAjuste(){
    if(faltas == 0){
        bonoPresentismo = 100
    }
    else bonoPresentismo = 0
   }

   method bonoDemagogico(){
    if(sueldoNeto < 18000){
        bonoPresentismo = 500
    }
    else bonoPresentismo = 300
   }

}
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