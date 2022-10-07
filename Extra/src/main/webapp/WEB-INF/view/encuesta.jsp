<%--
  Created by IntelliJ IDEA.
  User: victo
  Date: 04/10/2022
  Time: 12:31 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Encuestas <c:out value="${idEnc}"/></title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<style>
input[type="radio"]{
    display: none;

}
.orange{
    position: relative;
    color: blue;
    border :2px solid orange;
    border-radius: 5px;
}
.orange:hover{
    background-color: #FF6800;
}

.orange:before{
    content: "";
}
input[type="radio"]:checked+.orange{
    background-color: #FF6800;
}
input[type="radio"]:checked+.orange:before{
    background-color: #FF6800;
}</style>
<body>

<div class="container">
    <div class="row">
        <div class="col-12 text-center">
            <br>
            <h3>Encuesta <c:out value="${idEnc}"/></h3>
        </div>
    </div>

    <form action="save-encuesta" method="post">
        <div class="row mb-4">
            <div class="col-2 text-center">
                <img src="https://www.obrasciviles.utalca.cl/img/desa/ac_generico.jpg"
                     style="height: 120px; width: 120px; border-radius: 100%; border: 3px solid black;">
            </div>
            <div class="col-8">
                <br>
                <h5>Nombre: <c:out value="${namePerson}"/></h5>
                <br>
                <h5>Escuela: <c:out value="${escuela}"/></h5>
            </div>
            <div class="col-2">
                <button class="btn btn-danger" type="submit">ENVIAR</button>
                <br>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-2 text-center">
                        <h5>Carateristicas</h5>
                    </div>
                    <div class="col-1"></div>
                    <div class="col-1 text-center">
                        <h5>Mala</h5>
                    </div>
                    <div class="col-2 text-center">
                        <h5>    Regular</h5>
                    </div>
                    <div class="col-2 text-center">
                        <h5>Buena</h5>
                    </div>
                    <div class="col-1 text-center">
                        <h5>Muy buena</h5>
                    </div>
                    <div class="col-1 text-center">
                        <h5>Exelente</h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 text-center">
                        <br>
                        <h5>Funcionalidad</h5>
                    </div>
                    <div class="col-10">
                        <div class="btn col-12" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="funcionabilidad" value="1" id="1" autocomplete="off">
                            <label class="btn btn-outline-danger col-2" for="1"><br></label>
                            <input type="radio" class="btn-check" name="funcionabilidad" value="2" id="2" autocomplete="off">
                            <label class="btn btn-outline-primary orange col-2" for="2" style=" border: 1px solid orange;"><br></label>
                            <input type="radio" class="btn-check" name="funcionabilidad" value="3" id="3" autocomplete="off">
                            <label class="btn btn-outline-warning col-2" for="3"><br></label>
                            <input type="radio" class="btn-check" name="funcionabilidad" value="4" id="4" autocomplete="off">
                            <label class="btn btn-outline-success col-2" for="4"><br></label>
                            <input type="radio" class="btn-check" name="funcionabilidad" value="5" id="5" autocomplete="off">
                            <label class="btn btn-outline-primary col-2" for="5"><br></label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 text-center">
                        <br>
                        <h5>Confiabilidad</h5>
                    </div>
                    <div class="col-10">
                        <div class="btn col-12" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="confiabilidad" value="1" id="6" autocomplete="off">
                            <label class="btn btn-outline-danger col-2" for="6"><br></label>
                            <input type="radio" class="btn-check" name="confiabilidad" value="2" id="7" autocomplete="off">
                            <label class="btn btn-outline-primary orange col-2" for="7" style=" border: 1px solid orange;"><br></label>
                            <input type="radio" class="btn-check" name="confiabilidad" value="3" id="8" autocomplete="off">
                            <label class="btn btn-outline-warning col-2" for="8"><br></label>
                            <input type="radio" class="btn-check" name="confiabilidad" value="4" id="9" autocomplete="off">
                            <label class="btn btn-outline-success col-2" for="9"><br></label>
                            <input type="radio" class="btn-check" name="confiabilidad" value="5" id="10" autocomplete="off">
                            <label class="btn btn-outline-primary col-2" for="10"><br></label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 text-center">
                        <br>
                        <h5>Usabilidad</h5>
                    </div>
                    <div class="col-10">
                        <div class="btn col-12" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="usabilidad" value="1" id="11" autocomplete="off">
                            <label class="btn btn-outline-danger col-2" for="11"><br></label>
                            <input type="radio" class="btn-check" name="usabilidad" value="2" id="12" autocomplete="off">
                            <label class="btn btn-outline-primary orange col-2" for="12" style=" border: 1px solid orange;"><br></label>
                            <input type="radio" class="btn-check" name="usabilidad" value="3" id="13" autocomplete="off">
                            <label class="btn btn-outline-warning col-2" for="13"><br></label>
                            <input type="radio" class="btn-check" name="usabilidad" value="4" id="14" autocomplete="off">
                            <label class="btn btn-outline-success col-2" for="14"><br></label>
                            <input type="radio" class="btn-check" name="usabilidad" value="5" id="15" autocomplete="off">
                            <label class="btn btn-outline-primary col-2" for="15"><br></label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 text-center">
                        <br>
                        <h5>Rendimiento</h5>
                    </div>
                    <div class="col-10">
                        <div class="btn col-12" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="rendimiento" value="1" id="16" autocomplete="off">
                            <label class="btn btn-outline-danger col-2" for="16"><br></label>
                            <input type="radio" class="btn-check" name="rendimiento" value="2" id="17" autocomplete="off">
                            <label class="btn btn-outline-primary orange col-2" for="17" style=" border: 1px solid orange;"><br></label>
                            <input type="radio" class="btn-check" name="rendimiento" value="3" id="18" autocomplete="off">
                            <label class="btn btn-outline-warning col-2" for="18"><br></label>
                            <input type="radio" class="btn-check" name="rendimiento" value="4" id="19" autocomplete="off">
                            <label class="btn btn-outline-success col-2" for="19"><br></label>
                            <input type="radio" class="btn-check" name="rendimiento" value="5" id="20" autocomplete="off">
                            <label class="btn btn-outline-primary col-2" for="20"><br></label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 text-center">
                        <br>
                        <h5>Mantenimiento</h5>
                    </div>
                    <div class="col-10">
                        <div class="btn col-12" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="mantenimiento" value="1" id="21" autocomplete="off">
                            <label class="btn btn-outline-danger col-2" for="21"><br></label>
                            <input type="radio" class="btn-check" name="mantenimiento" value="2" id="22" autocomplete="off">
                            <label class="btn btn-outline-primary orange col-2" for="22" style=" border: 1px solid orange;"><br></label>
                            <input type="radio" class="btn-check" name="mantenimiento" value="3" id="23" autocomplete="off">
                            <label class="btn btn-outline-warning col-2" for="23"><br></label>
                            <input type="radio" class="btn-check" name="mantenimiento" value="4" id="24" autocomplete="off">
                            <label class="btn btn-outline-success col-2" for="24"><br></label>
                            <input type="radio" class="btn-check" name="mantenimiento" value="5" id="25" autocomplete="off">
                            <label class="btn btn-outline-primary col-2" for="25"><br></label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 text-center">
                        <br>
                        <h5>Portabilidad</h5>
                    </div>
                    <div class="col-10">
                        <div class="btn col-12" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="portabilidad" value="1" id="26" autocomplete="off">
                            <label class="btn btn-outline-danger col-2" for="26"><br></label>
                            <input type="radio" class="btn-check" name="portabilidad" value="2" id="27" autocomplete="off">
                            <label class="btn btn-outline-primary orange col-2" for="27" style=" border: 1px solid orange;"><br></label>
                            <input type="radio" class="btn-check" name="portabilidad" value="3" id="28" autocomplete="off">
                            <label class="btn btn-outline-warning col-2" for="28"><br></label>
                            <input type="radio" class="btn-check" name="portabilidad" value="4" id="29" autocomplete="off">
                            <label class="btn btn-outline-success col-2" for="29"><br></label>
                            <input type="radio" class="btn-check" name="portabilidad" value="5" id="30" autocomplete="off">
                            <label class="btn btn-outline-primary col-2" for="30"><br></label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 text-center">
                        <br>
                        <h5>Seguridad</h5>
                    </div>
                    <div class="col-10">
                        <div class="btn col-12" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="seguridad" value="1" id="31" autocomplete="off">
                            <label class="btn btn-outline-danger col-2" for="31"><br></label>
                            <input type="radio" class="btn-check" name="seguridad" value="2" id="32" autocomplete="off">
                            <label class="btn btn-outline-primary orange col-2" for="32" style=" border: 1px solid orange;"><br></label>
                            <input type="radio" class="btn-check" name="seguridad" value="3" id="33" autocomplete="off">
                            <label class="btn btn-outline-warning col-2" for="33"><br></label>
                            <input type="radio" class="btn-check" name="seguridad" value="4" id="34" autocomplete="off">
                            <label class="btn btn-outline-success col-2" for="34"><br></label>
                            <input type="radio" class="btn-check" name="seguridad" value="5" id="35" autocomplete="off">
                            <label class="btn btn-outline-primary col-2" for="35"><br></label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-2 text-center">
                        <br>
                        <h5>Compartibilidad</h5>
                    </div>
                    <div class="col-10">
                        <div class="btn col-12" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="compartibilidad" value="1" id="36" autocomplete="off">
                            <label class="btn btn-outline-danger col-2" for="36"><br></label>
                            <input type="radio" class="btn-check" name="compartibilidad" value="2" id="37" autocomplete="off">
                            <label class="btn btn-outline-primary orange col-2" for="37" style=" border: 1px solid orange;"><br></label>
                            <input type="radio" class="btn-check" name="compartibilidad" value="3" id="38" autocomplete="off">
                            <label class="btn btn-outline-warning col-2" for="38"><br></label>
                            <input type="radio" class="btn-check" name="compartibilidad" value="4" id="39" autocomplete="off">
                            <label class="btn btn-outline-success col-2" for="39"><br></label>
                            <input type="radio" class="btn-check" name="compartibilidad" value="5" id="40" autocomplete="off">
                            <label class="btn btn-outline-primary col-2" for="40"><br></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
</body>
</html>
