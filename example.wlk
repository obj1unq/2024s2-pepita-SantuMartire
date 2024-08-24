object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	//Getter
	method madurez() {
		return madurez
	}
	
	//Setter
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

//EJERCICIO 1

//Agregar a Pepón: Pepón es otra ave que puede comer el alpiste y la manzana y sigue las siguientes reglas:
//● La energía inicial de pepón es 30.
//● Sabe decir su energía.
//● Cuando come, solo puede aprovechar la mitad de la energía que aporta el alimento
//○ Ejemplo: si tiene 30 de energía y come alpiste su nueva energía
//es 30 + 20/2 = 40
//● Cuando vuela gasta 20 fijos más 2 joules por km,
//○ Ejemplo si tiene 30 de energía y vuela 3 km su nueva energía
//es: 30 - 20 - 2*3 = 4

object pepon {

    var energia = 30

    method energia(){
        return energia
    }

    method comer(alimento){
        energia = energia + (alimento.energiaQueAporta()/2)
    } 

    method volar(distancia){
        energia = energia - (20 + 2 * distancia)
    } 
}

//Ejercicio 2: Roque
//Agregar a Roque, que es una persona

//Ave de roque
//Tiene un ave, a veces es Pepón, a veces es Pepita, por lo tanto tiene que entender un mensaje 
//para que se le indique cual es su ave. Inicialmente es pepita.

//Alimentar
//Entiende el mensaje alimentar, que recibe un alimento por parámetro. Al recibir este mensaje
// roque alimenta a su ave.

//Ejemplos:
//Si tiene a pepona con energía de 30, y recibe el mensaje alimentar(alpiste) pepon queda con 40 de energía
//Si tiene a pepita con energía de 100 y recibe el mensaje alimentar(alpiste) pepita queda con 120 de energía.
//Cenas
//Entiende el mensaje cenas sin parámetros, el cual devuelve la cantidad de veces que roque dio de alimentar a su ave Desde que la está entrenando. (pensar como hacer para recordar este dato) Por ejemplo:


object roque{
	var ave = pepita
	var cantCenas = 0
	//Getter
	method mascota(){
		return ave
	}
	//Setter
	method cambiarMascota(_ave){
		ave = _ave
	}

	method alimentar(alimento){
		ave.comer(alimento)
		cantCenas = cantCenas +1
	}
	//Getter
	method cenas(){
		return cantCenas
	}
}
