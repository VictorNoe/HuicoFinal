<%--
  Created by IntelliJ IDEA.
  User: 52777
  Date: 30/08/2022
  Time: 11:08 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tienda de Abrratos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<c:set var="total" scope = "page" value="${0}"/>
<c:set var="totalCan" scope = "page" value="${0}"/>
<c:set var="neto" scope = "page" value="${0}"/>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <center>
            <a style="font-size: 40px;">ABARROTERIA LOS EXTRAS</a>
            <br>
        </center>
    </div>
    <div class="row"></div>
    <div class="row">
        <div class="col-4">
            <center>
                <form action="save-producto" method="post">
                    <p>Producto</p>
                    <select name="producto" class="form-select" aria-label="Default select example" placeholder="agregar producto">
                        <c:forEach items="${productos1}" var="producos">
                            <option value="${producos.nombre_producto}"><c:out value="${producos.nombre_producto}"/></option>
                        </c:forEach>
                    </select>
                    <br>
                    <div class="mb-3">
                        <label for="montoProducto" class="form-label">Monto</label>
                        <input type="text" class="form-control" id="montoProducto" name="monto">
                    </div>
                    <button type="submit" class="btn btn-success">registrar</button>
                    <br>
                </form>
                <div class="row"></div>
                <div>
                    <c:forEach items="${productosVentas}" var="productos" varStatus="status">
                        <c:set var="total" scope = "page" value="${total=total+productos.precio}"/>
                        <c:if test="${productos.estado == 'cancelado'}">
                            <c:set var="totalCan" scope = "page" value="${totalCan=totalCan+productos.precio}"/>
                        </c:if>
                        <c:set var="neto" scope = "page" value="${neto=total-totalCan}"/>
                    </c:forEach>
                    <br>
                    <p>Total Vendido: $${total}</p>
                    <br>
                    <p>Total Cancelado: $${totalCan}</p>
                    <br>
                    <p>Total Neto: $${neto}</p>
                    <br>
                </div>
            </center>
        </div>
        <div class="col-8 text-center" style="height: 410px; overflow: auto;">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Producto</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Cancelar</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${productosVentas}" var="productox" varStatus="statusList">
                    <tr>
                        <td><c:out value="${statusList.count}"/></td>
                        <td><c:out value="${productox.nombre_producto}"/></td>
                        <td>$<c:out value="${productox.precio}"/></td>
                        <td><c:out value="${productox.estado}"/></td>
                            <td>
                                <c:if test="${productox.estado=='activo'}">
                                    <form action="cancelar-prodcuto" method="post">
                                        <input type="hidden" name="id" value="${productox.id_producto}">
                                        <button type="submit" class="btn btn-danger justi">Cancelar</button>
                                    </form>
                                </c:if>
                                <c:if test="${productox.estado=='cancelado'}">
                                    <button type="button" class="btn btn-light">Cancelar</button>
                                </c:if>
                            </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</body>
</html>
