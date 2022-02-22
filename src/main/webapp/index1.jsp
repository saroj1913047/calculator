<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
</head>
<body>
<form action="controller" method="post">
    <div class="main">
        <div class="display">
            <input type="text" id="screen" name="screen" value=" <%=(String)request.getAttribute("results")%> " readonly="readonly"/>
        </div>
        <div class="buttons"> <button type="button" id="clear">AC</button> <button type="button" id="delete_single_num"><i class="fa fa-scissors" aria-hidden="true"></i></button> <button type="button" id="Normal_btn">/</button> <button type="button" id="Normal_btn">*</button> </div>
        <div class="buttons"> <button type="button" id="Normal_btn">7</button> <button type="button" id="Normal_btn">8</button> <button type="button" id="Normal_btn">9</button> <button type="button" id="Normal_btn">-</button> </div>
        <div class="buttons"> <button type="button" id="Normal_btn">4</button> <button type="button" id="Normal_btn">5</button> <button type="button" id="Normal_btn">6</button> <button type="button" id="Normal_btn">+</button> </div>
        <div class="buttons"> <button type="button" id="Normal_btn">1</button> <button type="button" id="Normal_btn">2</button> <button type="button" id="Normal_btn">3</button> <button type="button" id="Normal_btn">.</button> </div>
        <div class="buttons"> <button type="button" id="Normal_btn">0</button> <button type="button" id="Normal_btn">00</button> <button type="submit" id="equalTo">=</button> </div>
    </div>
</form>
</body>
<script src="assets/js/script.js"></script>
