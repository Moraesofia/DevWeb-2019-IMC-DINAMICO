function calcular() {
    document.getElementById("final").style.display = "block";
    var imc = calculaImc();
    var texto = textoImc(imc);

    switch (texto) {
        case "Abaixo do peso":
            texto = "<h2><span class=\"badge badge-pill badge-secondary\">" + texto + "</span></h2>"
            break;
        case "Peso normal":
            texto = "<h2><span class=\"badge badge-pill badge-success\">" + texto + "</span></h2>"
            break;
        case "Sobrepeso":
            texto = "<h2><span class=\"badge badge-pill badge-warning\">" + texto + "</span></h2>"
            break;
        case "Obesidade grau 1":
            texto = "<h2><span class=\"badge badge-pill badge-danger\">" + texto + "</span></h2>"
            break;
        case "Obesidade grau 2":
            texto = "<h2><span class=\"badge badge-pill badge-danger\">" + texto + "</span></h2>"
            break;
        case "Obesidade grau 3":
            texto = "<h2><span class=\"badge badge-pill badge-danger\">" + texto + "</span></h2>"
            break;
        default:
            break;
    }


    var html = "";
    html = html + "<h1>" + imc + "</h1>";

    html = html + texto;
    var div = document.getElementById("calc");
    div.innerHTML = html;
    document.getElementById("calc").style.display = "block";
}

function calculaImc() {
    var altura = document.getElementById("altura").value;
    altura = altura/100;
    var peso = document.getElementById("peso").value;

    var imc = peso / Math.pow(altura, 2);
    return imc.toFixed(1);
}

function textoImc(imc) {
    var result = "";

    if (imc < 18.5) {
        result = "Abaixo do peso";
    } else if (imc < 25) {
        result = "Peso normal";
    } else if (imc < 30) {
        result = "Sobrepeso";
    } else if (imc < 35) {
        result = "Obesidade grau 1";
    } else if (imc < 40) {
        result = "Obesidade grau 2";
    } else if (imc >= 40){
        result = "Obesidade grau 3";
    }

    return result;
}

