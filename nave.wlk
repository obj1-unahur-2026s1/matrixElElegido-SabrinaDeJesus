object nave {
    const pasajeros = []

    method subirA(pasajero) = pasajeros.add(pasajero)
    //Para agregar mas de un pasajero a la vez//
    method subirPasajeros(listaDePasajeros) = pasajeros.addAll(listaDePasajeros)
    method bajarA(pasajero) = pasajeros.remove(pasajero)
    method cantidadDePasajerosEnLaNave() = pasajeros.size()
    method pasajeroConMayorVitalidad() = pasajeros.max({ p => p.vitalidad() })
    method vitalidadEquilibrada() { self.pasajeroConMayorVitalidad().vitalidad() <= (self.pasajeroConMenorVitalidad().vitalidad() * 2 )}
    method pasajeroConMenorVitalidad() = pasajeros.min({ p => p.vitalidad()})
    method elegidoEnLaNave() = pasajeros.any({ p => p.esElElegido() })

    method chocar() {
        pasajeros.forEach({ p => p.saltar() ; p.bajarDeLaNave()})
    }
    method acelerar() {
        self.pasajerosNoElegidos().forEach({ p => p.saltar()})
    }
    method pasajerosNoElegidos() = pasajeros.filter({ p => !p.esElElegido() }) // Devuelve a Morfeo y Trinity
    method pasajerosValiosos() = pasajeros.filter({ p => p.vitalidad() > 5})
    method hayPasajeroAlHorno() = pasajeros.any({ p => p.vitalidad() == 0 })
    method todosPuedenEnfrentarAgente() = pasajeros.all({ p => p.vitalidad() > 2 })
    method vitalidadPromedio() = pasajeros.sum({ p => p.vitalidad()}) / self.cantidadDePasajerosEnLaNave()
    method cantidadConVitalidadPar() = pasajeros.count({ p => p.vitalidad().even() })
    method simulacroDeCombate() = pasajeros.forEach({ p => p.saltar(); p.saltar(); p.saltar()})
    method vitalidades() = pasajeros.map({ p => p.vitalidad() })
    method ordenarPasajerosDeMenorAMayor() = pasajeros.sortBy({ p1 , p2 => p1.vitalidad() < p2.vitalidad() })
    method pasajeroAlAzar() {
        if (pasajeros.isEmpty()) {
            self.error("La lista esta vacia")
        }
        pasajeros.anyOne()
    }
    method cantidadDeElegidos() = pasajeros.count({ p => p.esElElegido() })
    method potenciaVital() = pasajeros.fold(1, {acumulador, p => p.vitalidad() * acumulador})
}