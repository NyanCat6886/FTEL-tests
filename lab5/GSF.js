//funciones de la calculadora:
function vaciar(){
	document.getElementById("n1").value = "";
	document.getElementById("hex").innerHTML="";
}
function cuadrado(){
let n1 = document.getElementById("n1").value;
let resultado = n1*n1;
document.getElementById("n1").value = resultado;
}
function inverso(){
let n1 = document.getElementById("n1").value;
if (n1 != 0){
let resultado = 1/n1;
document.getElementById("n1").value = resultado;
} else{ 
document.getElementById("n1").value = `Por favor, defina bien la operación`;
}
}

function raizCuadrada() {
    let n1 = document.getElementById("n1").value;
    if (n1 >= 0) {
        let resultado = Math.sqrt(n1);
        document.getElementById("n1").value = resultado;
        convertir(resultado);  
    } else {
        document.getElementById("n1").value = `El valor es complejo`;
    }
}
function factorial() {
    let n1 = +(document.getElementById("n1").value);
    if (n1 >= 0) {
        let resultado = 1;
        let i = n1;
        while (i > 1) {
            resultado *= i;
            i--;
        }
        document.getElementById("n1").value = resultado;
        convertir(resultado);  
    } else {
        document.getElementById("n1").value = `Mete un número positivo`;
    }
}

function tan_x(){
    let n1 = document.getElementById("n1").value;
    let pi = Math.PI;
	let resultado = Math.tan(n1);
	document.getElementById("n1").value = resultado +` radianes`;
        convertir(resultado);  
}


function convertir(numero){
	let hex = "0x" + (numero.toString(16));
	let bin = "0b" + (numero.toString(2));
	document.getElementById("hex").innerHTML = `El número decimal ${numero} es ${hex} en hexadecimal<br>
	y ${bin} en binario`;
}

