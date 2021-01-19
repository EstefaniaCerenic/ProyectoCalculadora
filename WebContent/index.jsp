<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Calculadora</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

</head>
<body>
	<main>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<form action="CALCULADORAServlet" method="POST">
						<h4 class="mt-4 mb-2 text-center">Calculadora</h4>
						<div class="form-group">
							<label for="numero1">Número 1</label> <input type="text"
								class="form-control" id="numero1" name="numero1" required />
						</div>
						<div class="form-group">
						<label>Operación</label> 
						<select class="form-select" name="cboOperacion">
						<option selected>Seleccione</option>
						<option value="1">Suma</option>
						<option value="2">Resta</option>
						<option value="3">Multiplicación</option>
						<option value="4">División</option>
						</select>
						</div>
						
						<div class="form-group">
							<label for="numero2">Número 2</label> <input type="text"
								class="form-control" id="numero2" name="numero2" required />
						</div>
						
						<div class="text-center">
						<input type="submit" class="btn btn-info" id="calcular" value="Calcular">
						<div class="form-group mt-2">
						<label for="calcular">Resultado</label>
                        <input type="text" class="form-control" id="resultado" name="resultado" disabled value="<%
                        if(request.getSession().getAttribute("resultado")==null){
                        	out.print("");
                        	
                        	
                        }else{
                        	out.print(request.getSession().getAttribute("resultado"));
                        }
                        %>">
						</div>
						</div>
						<div class="text-center">
						<input name="limpiar" value="Limpiar" type="reset" class="btn btn-info">
						</div>
						

					</form>
					
				</div>
			</div>
		</div>
		
	</main>



	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>




</html>