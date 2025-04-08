object tom {
    var energia = 50
    var distanciaRecorrida = 0
    var ultimoRatonComido = jerry
    method comer(unRaton){
        energia = energia + 12 + unRaton.peso()
        ultimoRatonComido = unRaton
    }
    method correr(metros){
        energia = energia - metros/2
        distanciaRecorrida += metros
    }
    method velocidadMaxima(){
        return 5 + energia / 10
    }
    method puedeCazar(distanciaAlRaton){
        return energia >= distanciaAlRaton/2
    }
    method cazar(unRaton, distanciaAlRaton){
        if (self.puedeCazar(distanciaAlRaton)) {
            self.correr(distanciaAlRaton)
            self.comer(unRaton)
        }
    }

}

object jerry {
  var edad = 2
  method cumplirAnios(){
    edad += 1
  }
  method peso(){
    return edad * 20
  }
}

object nibbles {
  method peso() = 35
}

// Inventar otro ratón

object jorgito{
    //jorgito puede cambiar su peso a voluntad
    var peso = 50
    method peso(){
        return peso
    }
    method peso(nuevoPeso){
        peso = nuevoPeso
    }
}