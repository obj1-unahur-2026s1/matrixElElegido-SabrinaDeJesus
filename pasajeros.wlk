import nave.*
object neo {
    var energia = 100

    method esElElegido() = true
    method saltar() {energia *= 0.5}
    method vitalidad() {energia *= 0.1}
    method bajarDeLaNave() { nave.bajarA(self) }
}
object morfeo {
    var vitalidad = 8
    var estaCansado = false

    method esElElegido() = false
    method saltar() { 
            estaCansado = !estaCansado
            vitalidad -= 1}
    method vitalidad() = vitalidad
    method bajarDeLaNave() { nave.bajarA(self) }
}
object trinity {
    method esElElegido() = false
    method saltar() {}
    method vitalidad() = 0
    method bajarDeLaNave() { nave.bajarA(self) }
}