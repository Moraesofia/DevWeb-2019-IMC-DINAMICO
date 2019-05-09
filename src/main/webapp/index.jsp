<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <title>Calculo de IMC</title>
  <link rel="shortcut icon" href="images/icon.png" type="image" />
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <!--Font-->
  <link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="stylesheet.css" type="text/css">
</head>

<body>
  <div id="container">
    <div>
      <h1 style="text-align:center">IMC</h1>
      <p style="text-align:center"><strong>O IMC (Indice de Massa Corporal) e uma ferramenta usada para detectar
          casos de
          obesidade ou desnutricao. Descubra o seu:</strong></p><br>
      <h3 style="text-align:center">Informe seus dados:</h3>
    </div>
    <div>
      <form>
        <fieldset>
          <div class="form-group row">
            <input class="form-control col-xs-2" min="0" name="altura" placeholder="Altura (Cm)" type="number">
          </div>
          <div class="form-group row">
            <input class="form-control col-xs-2" min="0" step="0.01" name="peso" placeholder="Peso (Kg)" type="number">
          </div>
          <button class="btn-outline-success" style="margin-right: 5px">Calcular</a>
            <button type="reset" class="btn-outline-dark" style="color: black">Limpar</button>
        </fieldset>
      </form>
      <!-- Scriptlet. Codigo Java no HTML. -->
      <%
      String alturaStr = request.getParameter("altura");
      String pesoStr = request.getParameter("peso");
      if (alturaStr != null && pesoStr != null) {
         float altura = Integer.parseInt(alturaStr);
         altura = altura/100;
         float peso = Integer.parseInt(pesoStr);
         float imc = 0;
         imc = peso / (altura*altura);
    %>
      <br>
      <h2> <%= imc %> </h2>
      <%
        if (imc < 18.5) {
    %>
      <p>
        <h2><span class="badge badge-secondary">Abaixo do peso</span></h2>

      </p>
      <% 
        } else if (imc < 25) {
    %>
      <p>
        <h2><span class="badge badge-success">Peso Normal</span></h2>
      </p>
      <% 
        } else if (imc < 30) {
    %>
      <p>
        <h2><span class="badge badge-warning">Sobrepeso</span></h2>
      </p>
      <% 
        } else if (imc < 35) {
    %>
      <p>
        <h2><span class="badge badge-danger">Obesidade grau 1</span></h2>
      </p>
      <% 
        } else if (imc < 40) {
    %>
      <p>
        <h2><span class="badge badge-danger">Obesidade grau 2</span></h2>
      </p>
      <% 
        } else if (imc >= 40) {
    %>
      <p>
        <h2><span class="badge badge-danger">Obesidade grau 3</span></h2>
      </p>
      <%
        }
      }
    %>
    </div>
  </div>
  <footer style="align-content: right;">
    <p style="color: green; text-align: center">Mais informacoes <a
        href="https://www.minhavida.com.br/alimentacao/tudo-sobre/32159-imc" target="_blank">aqui!</a></p>
  </footer>



</body>

</html>