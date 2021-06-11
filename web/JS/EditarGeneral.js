const formulario = document.getElementById('formulario2');
const inputs = document.querySelectorAll('#formulario2 input');

const expresiones = {
	unidad: /^[a-zA-Z]{1,5}$/, // Unicamente letras de 1 a 5
	valor: /^\d{1,4}$/, // 1 a 9 numeros
             id:/^\d{1,4}$/ //1 a 4 numeros

}

const campos = {
	valor2: false,
	cantidad2: false,
    id2:false,
}

const validarFormulario = (e) => {
	switch (e.target.name) {
            
            
        case "valor2":
                validarCampo(expresiones.valor, e.target, 'valor2');
        break;
		
		
        case "unidad2":
			validarCampo(expresiones.unidad, e.target, 'unidad2');
		break;
                
        case "id2":
                validarCampo(expresiones.id, e.targe,'id2');
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

inputs.forEach((input) => {
	input.addEventListener('keyup', validarFormulario);
	input.addEventListener('blur', validarFormulario);
});

formulario.addEventListener('submit', (e) => {
	

	if(campos.valor2 && campos.cantidad2 && campos.id2){
		formulario.reset();

		document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
		setTimeout(() => {
			document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');
		}, 5000);

		document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
			icono.classList.remove('formulario__grupo-correcto');
		});
	} else {

        if(campos.valor2==false && campos.cantidad2==false && campos.id2==false){
            document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
            e.preventDefault();
        }
	}
});

