<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/2de4120c2f.js" crossorigin="anonymous"></script>
        <title>Editar Cliente</title>
    </head>
    <body>
        <!--Cabecero-->
        <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/>
        
        <form action="${pageContext.request.contextPath}/ServletControlador?accion=modificar&idCliente=${cliente.idCliente}"
              method="POST" class="was-validated">

            <!--Botones de Navegacion-->
            <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacionEdicion.jsp"/>

            <section id="details">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar Cliente</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" required value="${cliente.Nombre}">
                                    </div>
                                    <div class="form-group">
                                        <label for="apellido">Apellido</label>
                                        <input type="text" class="form-control" name="apellido" required value="${cliente.apellido}" >
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" name="email" required value="${cliente.email}" >
                                    </div>
                                    <div class="form-group">
                                        <label for="telefono">Teléfono</label>
                                        <input type="tel" class="form-control" name="telefono" required value="${cliente.telefono}" >
                                    </div>
                                    <div class="form-group">
                                        <label for="saldo">Saldo</label>
                                        <input type="number" class="form-control" name="saldo" required value="${cliente.saldo}" step="any">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </form>

        <!--Pie de Pagina-->
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</body>
</html>
