/*Session*/

function validarSesion() {
    var x = document.forms["sesion"]["email"].value;
    var y = document.forms["sesion"]["password"].value;
    if (x == "" || y == "") {
        alert("¡Hey!¡Pondrás tristes a los unicornios por poner mal tus datos! :'(");
        return false;
    }else{
        alert("¡YEEEY!¡IT'S TIME TO MAGIC AND RAINBOWS! :D");
        return true;
    }
}

/*Session*/

function validarRegistro() {
    var a = document.forms["registration"]["name"].value;
    var b = document.forms["registration"]["pass"].value;
	var c = document.forms["registration"]["email"].value;
	var d = document.forms["registration"]["telefono"].value;
	var e = document.forms["registration"]["textarea"].value;
	var f = document.forms["registration"]["dropdown"].value;
	var g = document.forms["registration"]["radio"].value;
	var h = document.forms["registration"]["dropdown2"].value;
	var i = document.forms["registration"]["respuesta-seg"].value;
	var j = document.forms["registration"]["archivo"].value;
	var k = document.forms["registration"]["archivo2"].value;
    if (a == "" || b == "" || c == "" || d == "" || e == "" || f == "" || g == "" || h == "" || i == "" || j == "" || k == "") {
        alert("¡Hey!¡Te faltan datos!¿De verdad quieres pertenecer a este mundo magico? :'(");
        return false;
    }else{
        alert("¡SSIII!¡BIENVENIDO A ESTE MUNDO MAGICO! :D");
        return true;
    }
}

/*Subir Archivo*/

function validarSubidaArchivo() {
    var a = document.forms["AgregaArticulo"]["name"].value;
    var b = document.forms["AgregaArticulo"]["descripcion"].value;
	var c = document.forms["AgregaArticulo"]["dropdown"].value;
	var d = document.forms["AgregaArticulo"]["archivo"].value;
	var e = document.forms["AgregaArticulo"]["archivo2"].value;

    if (a == "" || b == "" || c == "" || d == "" || e == "") {
        alert("¡Por lo visto, te falta algo de magia para completar este registro :'(");
        return false;
    }else{
        alert("¡FINALMENTE!¡MAS MAGIA! :D");
        return true;
    }
}

/*Subir Comentario*/

function validarComentario() {
    var a = document.forms["Comentar"]["name"].value;
    var b = document.forms["Comentar"]["email"].value;
	var c = document.forms["Comentar"]["textarea"].value

    if (a == "" || b == "" || c == "" || d == "" || e == "") {
        alert("¡Te dejaremos comentar siempre y cuando pongas tus datos uvu");
        return false;
    }else{
        alert("¡Lo has logrado! ¡Eres genial! :D");
        return true;
    }
}