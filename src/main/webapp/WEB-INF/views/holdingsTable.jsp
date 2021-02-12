<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>

<link type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link type="text/css" href="<c:url value="/resources/css/dataTable.css" />" rel="stylesheet">
<link type="text/css" href="<c:url value="/resources/css/extendedOptionsVer2.css" />" rel="stylesheet">

<h4 id="entity_name_add" value='HOLDING'>Справочник:HOLDING</h4>
<div class="table-container">

    <div class='row'>

        <div id='filterContainer' class='col-3'></div>

    </div>

    <table id="resultsTable" class="table table-striped table-hover table-sm table-bordered">
        <thead>

        <tr>
            <th>Code</th>
            <th>ИНН</th>
            <th>КПП</th>
            <th>ИНН HQ Холдинга</th>
            <th>Наименование HQ Холдинга</th>
            <th>РФ HQ Холдинга</th>
            <th>Макрорегиональный филиал</th>
            <th>Региональный филиал</th>
            <th>Наименование клиента</th>
            <th>Индустрия по ИНН</th>
            <th>Основной ОКВЭД</th>
            <th>Список всех ОКВЭД</th>
            <th>Численность сотрудников</th>
            <th>Оборот по ИНН, млн. руб.</th>
            <th>Начисления по ИНН за 2019 год</th>
            <th>Начисления по ИНН за 2020 год</th>
            <th>Дельта 2020/2019</th>
            <th>КАМ, закрепленный за ИНН в регионе</th>
            <th>СМ, закрепленный за ИНН в регионе</th>
            <th>Количество услуг на ИНН</th>
            <th>Услуга</th>
            <th>Начисления по услуге за месяц</th>
            <th>Начисления по услуге за квартал</th>
            <th>Начисления по услуге за год</th>
            <th>Дата последнего изменения</th>
        </tr>

        </thead>

        <tbody>
        <c:forEach var="tempHolding" items="${holdings}">


            <c:url value="/services" var="serviceURL">
                <c:param name="inn" value="${tempHolding.name}"/>
                <c:param name="rfName" value="${tempHolding.region}"/>
            </c:url>


            <tr>
                <td>${tempHolding.code}</td>
                <td><a href="${serviceURL}" target="_blank">${tempHolding.name}</a></td>
                <td>${tempHolding.kpp}</td>
                <td>${tempHolding.inn_hq_holding}</td>
                <td>${tempHolding.name_hq_holding}</td>
                <td>${tempHolding.rf_hq_holding}</td>
                <td>${tempHolding.macro_region}</td>
                <td>${tempHolding.region}</td>
                <td>${tempHolding.client_name}</td>
                <td>${tempHolding.inn_industry}</td>
                <td>${tempHolding.general_okved}</td>
                <td>${tempHolding.all_okved}</td>
                <td>${tempHolding.number_of_employees}</td>
                <td>${tempHolding.turnover_by_inn}</td>
                <td>${tempHolding.charges_by_inn_per_year_2019}</td>
                <td>${tempHolding.charges_by_inn_per_year_2020}</td>
                <td>${tempHolding.delta}</td>
                <td>${tempHolding.kam}</td>
                <td>${tempHolding.cm}</td>
                <td>${tempHolding.number_of_services}</td>
                <td>${tempHolding.service}</td>
                <td>${tempHolding.service_charges_per_month}</td>
                <td>${tempHolding.service_charges_per_quarter}</td>
                <td>${tempHolding.service_charges_per_year}</td>
                <td>${tempHolding.lastChgDateTime}</td>
            </tr>
        </c:forEach>
        </tbody>

    </table>


    <a id="parametersLink" class="rounded buttonCustom" href="/holding/DownloadExcel?parameterName=${paramName}&amp;parameterValue=${paramValue}">Экспорт в Excel</a>
    <!-- Добавляем кнопку Добавить запись-->
    <c:choose>
        <c:when test="${role == true}">

            <button id="addNewHoldingButton" class="rounded buttonCustom" type="button">
                Добавить новую запись
            </button>

        </c:when>
    </c:choose>

</div>


<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content" id="singleHoldingBody">

        </div>
    </div>
</div>



<script src="<c:url value="/resources/js/jquery.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/popper.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />" type="text/javascript"></script>

<!-- Подключаем скрипты в зависимости от роли-->
<c:choose>
    <c:when test="${role == true}">
        <script src="<c:url value="/resources/js/holdingsDataManipulations.js" />" type="text/javascript"></script>
    </c:when>
    <c:otherwise>
        <script src="<c:url value="/resources/js/buildTable.js" />" type="text/javascript"></script>
    </c:otherwise>
</c:choose>

