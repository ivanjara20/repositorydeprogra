Algoritmo cajeroAutomatico
//El usuario cuenta con un capital de: $200.000
//Pedir al usuario que ingrese su contrase�a, s�lo tiene 3 intentos posibles de lo contrario debe salir sin mostrar las opciones del cajero.
//Una vez verificado la contrase�a correcta del usuario mostrar un men� de opciones:
//1 Mostrar Saldo: muestra el capital
//2 Extraer Monto: pide el monto que desea extraer, verifica que puede retirar ese monto y muestra el Saldo
//3 Ingresar Dinero: pide el monto que desea ingresar y muestra el saldo
	//4 Salir
	
	capital = 200000
	contrase�a = "2354"
	intentos = 0
	
	Escribir "******CAJERO AUTOMATICO******"
	Escribir "Ingrese su contrase�a de 4 digitos: "
	Leer contraIngresada
	
	Mientras intentos < 2 Hacer
		Si contraIngresada = contrase�a Entonces
			Mientras opcionUsuario <> 4 Hacer
				Escribir "*******Bienvenido!*******"
				Escribir "1. Mostrar saldo"
				Escribir "2. Extraer Monto"
				Escribir "3. Ingresar dinero"
				Escribir "4. Salir"
				Escribir "***********************"
				Escribir "Ingrese una opcion:"
				Leer opcionUsuario
				
				
				Segun opcionUsuario Hacer
					1:
						Escribir "Su saldo es de:" , capital
					2:
						Escribir "Ingrese monto a extraer: "
						Leer monto
						Si monto <= capital Entonces
							Escribir "Monto extraido"
							capital = capital - monto
							Escribir "Saldo: ", capital
						SiNo
							Escribir "No se puede extraer el monto. Insuficiente dinero"
						Fin Si
					3:
						Escribir "Ingrese la cantidad de dinero a ingresar: "
						Leer ingreso
						capital = capital + ingreso
						Escribir "Su saldo es de: ", capital
					De Otro Modo:
						Escribir "Salir"
				Fin Segun
			Fin Mientras
		SiNo
			intentos = intentos + 1
			Escribir "Contrase�a incorrecte. Intente nuevamente: "
			Leer contraIngresada
		Fin Si
	Fin Mientras

	
	
	
FinAlgoritmo
