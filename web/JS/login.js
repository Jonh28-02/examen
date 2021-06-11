/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*-------------------------------------------------------------TODOOO ESTO ES PARA EL EFECTO DE TRANSICION--------------------------------------------------------------------------*/

document.getElementById("btn__iniciar-sesion").addEventListener("click",iniciarSesion);
document.getElementById("btn__registrarse").addEventListener("click",register);

/*DECLARACION DE VARIABLES*/
var contenedor_login_register=document.querySelector(".contenedor__login-register");
var formulario_login= document.querySelector(".formulario__login");
var formulario_register= document.querySelector(".formulario__register");

var caja_trasera_login= document.querySelector(".caja__trasera-login");
var caja_trasera_register= document.querySelector(".caja__trasera-register");


function iniciarSesion(){
    formulario_register.style.display="none";
    contenedor_login_register.style.left="10px";
    formulario_login.style.display="block";
    caja_trasera_register.style.opacity="1";
    caja_trasera_login.style.opacity="0";

}


function register(){
    formulario_register.style.display="block";
    contenedor_login_register.style.left="410px";
    formulario_login.style.display="none";
    caja_trasera_register.style.opacity="0";
    caja_trasera_login.style.opacity="1";

}




const formulario = document.getElementById('formulario2');
const inputs = document.querySelectorAll('#formulario2 input');

const expresiones = {
	usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
        domicilio:/^[a-zA-ZÀ-ÿ\s0-9\.]{20,100}$/, // Letras, espacios, punto y numeros
	nombre: /^[a-zA-ZÀ-ÿ\s]{1,20}$/, // Letras y espacios, pueden llevar acentos.
        apellidos:/^[a-zA-ZÀ-ÿ\s]{1,50}$/, //Letras, espacios, acentos y todo eso xd
	password: /^.{4,12}$/, // 4 a 12 digitos.
        edad: /^\d{1,2}$/, // 7 a 2 numeros.
        telefono: /^\d{10}$/ //Solo acepta 10 numeros

}

const campos = {
	usuario: false,
	nombre: false,
            appe:false,
	password: false,
            edad:false,
            telefono:false
  
}

const validarFormulario = (e) => {
	switch (e.target.name) {
        
        case "usuario":
			validarCampo(expresiones.usuario, e.target, 'usuario');
		break;
                
        case "nombre":
                        validarCampo(expresiones.nombre, e.target,'nombre');
                break;
                
        case "appe":
                        validarCampo(expresiones.apellidos, e.target,'appe');
                break;
		
		
        case "password":
			validarCampo(expresiones.password, e.target, 'password');
			validarPassword2();
		break;
		
        case "password2":
			validarPassword2();
		break;
		
        case "dom":
			validarCampo(expresiones.domicilio, e.target, 'dom');
		break;

        case "edad":
                        validarCampo(expresiones.edad, e.target, 'edad');
                break;
                
                
        case "telefono":
                        validarCampo(expresiones.telefono, e.target, 'telefono');
                break;

	}
}

const validarCampo = (expresion, input, campo) => {
	if(expresion.test(input.value)){
		document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-incorrecto');
		document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-correcto');
		document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-circle');
		document.querySelector(`#grupo__${campo} i`).classList.remove('fa-times-circle');
		document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');
		campos[campo] = true;
	} else {
		document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-incorrecto');
		document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-correcto');
		document.querySelector(`#grupo__${campo} i`).classList.add('fa-times-circle');
		document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-circle');
		document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');
		campos[campo] = false;
	}
}

const validarPassword2 = () => {
	const inputPassword1 = document.getElementById('password');
	const inputPassword2 = document.getElementById('password2');

	if(inputPassword1.value !== inputPassword2.value){
		document.getElementById(`grupo__password2`).classList.add('formulario__grupo-incorrecto');
		document.getElementById(`grupo__password2`).classList.remove('formulario__grupo-correcto');
		document.querySelector(`#grupo__password2 i`).classList.add('fa-times-circle');
		document.querySelector(`#grupo__password2 i`).classList.remove('fa-check-circle');
		document.querySelector(`#grupo__password2 .formulario__input-error`).classList.add('formulario__input-error-activo');
		campos['password'] = false;
	} else {
		document.getElementById(`grupo__password2`).classList.remove('formulario__grupo-incorrecto');
		document.getElementById(`grupo__password2`).classList.add('formulario__grupo-correcto');
		document.querySelector(`#grupo__password2 i`).classList.remove('fa-times-circle');
		document.querySelector(`#grupo__password2 i`).classList.add('fa-check-circle');
		document.querySelector(`#grupo__password2 .formulario__input-error`).classList.remove('formulario__input-error-activo');
		campos['password'] = true;
	}
}

inputs.forEach((input) => {
	input.addEventListener('keyup', validarFormulario);
	input.addEventListener('blur', validarFormulario);
});


formulario.addEventListener('submit', (e) => {
	/*e.preventDefault();*/

	if(campos.usuario && campos.nombre && campos.appe && campos.password && campos.edad && campos.telefono){

		/*document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
		setTimeout(() => {
			document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');
		}, 5000);

		document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
			icono.classList.remove('formulario__grupo-correcto');
		});*/
	} else {
		document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
	}
});


/*PAL LOGIN --------------------------------------------------------------------------------------------*/

