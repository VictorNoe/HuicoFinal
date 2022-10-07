<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/css/encuesta.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Encuestas</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container mx-auto">
    <div class="row mb-3"></div>
    <div class="row">
        <div class="col-4">
            <form action="save-persona" method="get">
                <legend class="text-center">Encuestas Naranjos</legend>
                <label class="form-label">Encuestas</label>
                <select name="encuesta" class="form-select" aria-label="Default select example">
                    <c:forEach items="${list}" var="listEncuesta">
                        <option value="${listEncuesta.id}"><c:out value="Encuesta ${listEncuesta.name}"/></option>
                    </c:forEach>
                </select>
                <div class="mb-3">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" id="nombre" class="form-control" placeholder="Ingresa Nombre" name="nombre" required>
                </div>
                <div class="mb-3">
                    <label for="escuelas" class="form-label">Escuela</label>
                    <input type="text" id="escuelas" class="form-control" placeholder="Ingresa Escuela" name="encuelas" required>
                </div>
                <button type="submit" class="btn btn-success d-grid col-4 mx-auto">Ingresar</button>
            </form>
        </div>
        <div class="col-4"></div>
        <div class="col-4">
            <form action="get-encuesta" method="get">
                <legend class="text-center">Ver resultados <br> encuestas</legend>
                <label class="form-label">Encuestas</label>
                <select name="encuesta1" class="form-select" aria-label="Default select example">
                    <c:forEach items="${list}" var="listEncuesta">
                        <option value="${listEncuesta.id}"><c:out value="Encuesta ${listEncuesta.name}"/></option>
                    </c:forEach>
                </select>
                <br>
                <button type="submit" class="btn btn-success d-grid col-4 mx-auto">Consultar</button>
            </form>

        </div>
    </div>
    <c:if test="${param['message']=='error'}">
        <div class="alert alert-danger" role="alert">
            Ha ocurrido un error :c
        </div>
    </c:if>
    <c:if test="${param['message']=='succesfully'}">
        <div class="alert alert-success" role="alert">
            Gracias se ha registrado tu respuesta! :D
        </div>
    </c:if>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>