<%-- 
    Document   : ProfileAdmin-content
    Created on : 18-dic-2015, 12:21:21
    Author     : inftel10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<div class="container">
                <section id="perf" class="section appear clearfix">
                    <div class="container">  
                        <div class="align-center"><h2>Mi perfil</h2><br> </div>
                        <div class="row mar-bot40 col-md-6" role="group" style="margin-top: 0px"> 
                            <p>Número de usuario: <strong>${membership.memberNumber}</strong></p>
                            <p>DNI: <strong>${membership.dni}</strong></p>
                            <p>Nombre y apellidos: <strong>${membership.userName} ${membership.surname}</strong></p>
                            <p>Dirección: <strong>${membership.address}</strong></p>
                            <p>Teléfono: <strong>${membership.phone}</strong></p>
                            <p>E-Mail: <strong>${membership.email}</strong></p>
                            <a href="ServletChangePass"><button type="button" id="changepass" class="line-btn green">Cambiar Contraseña</button></a>                         
                        </div>
                        <div class="row mar-bot40 col-lg-offset-2 col-md-4" role="group" style="margin-top:0px">
                            <c:if test="${param.changepass}">
                                <div class="cform" id="contact-form">
                                    <form action="ServletConfirmChangePass" method="post" role="form">
                                        <div class="wow bounceIn">
                                            <div class="form-group">
                                                <label for="name">Contraseña Actual</label>
                                                <input type="password" name="oldPass" class="form-control" id="user" placeholder="" data-rule="required" data-msg="Por favor, introduca contraseña" />
                                                <div class="validation"></div>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Nueva Contraseña</label>
                                                <input type="password" class="form-control" name="newPass" id="password" placeholder="" data-rule="required" data-msg="Por favor, introduzca contraseña" />
                                                <div class="validation"></div>
                                            </div>
                                               <button type="submit" class="line-btn green">Cambiar Contraseña</button>        
                                        </div>
                                    </form>
                                </div>
                            </c:if >
                            <c:choose>
                                <c:when test="${correctUpdate}">
                                    <p class="verificate">Tu contraseña ha sido actualizada</p>
                                </c:when>
                                <c:when test="${incorrectUpdate}">
                                    <p class="error">Tu contraseña no se ha podido actualizar</p>
                                </c:when>
                            </c:choose>

                        </div>    
                    </div>
                </section>
            </div>