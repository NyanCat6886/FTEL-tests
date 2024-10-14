// defino variables para "optimizar" la programación y evitar escribir las cadena de caracteres dentro del console.log
let nombre = "Gabriel";
let apellido1 = "Sañudo";
let apellido2 = "Ferrándiz";
//Establecemos la cabecera del programa con los caractéres escapados
console.log("Nombre: "+ nombre+ "\n" + "Apellidos: " + apellido1+ " "+ apellido2 +"\n"+"Grupo: G12"+"\n");
console.log("Tabla de conversión: "+"\n");
console.log(`“G12 - Laboratorio 3: Tabla de unidades binarias”.`+"\n")
//Doy el valor del exponente como 10 (nombrada mi variable x) para que devuelva los respectivos valores en uds binarias incrementando el exponente de forma (base)^((10)*n) hasta el exponente 80 (Yobi)
let x=10;
//Defino la función unidad que me devuelve la tabla de uds binarias
function unidad(x){
    if (x === 10){
        return "Kibi";
    }
    else if (x === 20){
        return "Mebi";
    }
    else if ( x === 30){
        return "Gibi";
    }
    else if ( x === 40){
        return "Tebi";
    }
    else if ( x === 50){
        return "Pebi";
    }
    else if ( x === 60){
        return "Exbi";}
};
//Defino la función que me devuelve las potencias de base 2
function dos_a (n) {
    let res = 1;
    while (n > 0 ) {
    res = res * 2;
    n = n - 1;
    }
    return res;
}
// definimos un bucle while para ahorrar código y compactar la salida en un solo console.log hasta que x tome el valor 80 (incluido)
while (x <= 60){
    console.log(`1x2^${x} bytes son 1 ${unidad(x)}bytes, que son: ${dos_a(x)} bytes`);
   
    x +=10;
}
;
