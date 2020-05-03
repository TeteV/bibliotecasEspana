<?xml version="1.0" encoding="UTF-8"?>
<stylesheet xmlns:x="https://www.tito.com" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:xd="https://www.tito.com">
	<output method="html" />
	<template match="/">
		<html>
			<head>
				<title>
					Prueba XSLT
				</title>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" />
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js" />
				<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" />

			</head>
			<body>
				<div class="container">
					<div class="row">
						<div class="col-sm-4">
							<label for="mySearch">
								Search...
							</label>
							<input class="form-control" type="text" id="mySearch" onkeyup="search()" placeholder="Search.." title="Type in a category" />
						</div>
                                                <button type="button" href="bibliotecasEspana.html" class="btn btn-primary col-sm-4">Ordenar por Institucion</button>

					</div>
				</div>
				<br />
				<div class="container">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>
									Pais
								</th>
								<th>
									Nombre
								</th>
								<th>
									Direccion
								</th>
								<th>
									Localidad
								</th>
								<th>
									Institucion
								</th>
							</tr>
						</thead>
						<tbody id="my-tbody">
							<for-each select="x:list/x:item">
								<tr>
									<td>
										<value-of select="x:PAIS" />
									</td>
									<td>
										<value-of select="x:NOMBRE" />
									</td>
									<td>
										<value-of select="x:DIRECCION" />
									</td>
									<td>
										<value-of select="x:LOCALIDAD" />
									</td>
									<td>
										<value-of select="x:INSTITUCION" />
									</td>
								</tr>
							</for-each>
						</tbody>
					</table>
				</div>
			</body>
		</html>
	</template>
</stylesheet>
<!--  -->
