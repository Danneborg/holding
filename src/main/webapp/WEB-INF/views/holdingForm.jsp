<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>

<div class="modal-header">
    <c:choose>

        <c:when test="${holding.code > 0}">
            <h5 class="modal-title" id="exampleModalLongTitle">Редактирование ${holding.client_name}
                (инн ${holding.name})</h5>
        </c:when>

        <c:otherwise>
            <h5 class="modal-title" id="exampleModalLongTitle">Добавление нового холдинга</h5>
        </c:otherwise>

    </c:choose>

    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<div class="modal-body">
<%--    <form id="saveForm">--%>

<%--        <!-- saving holding id to not lose it-->--%>
<%--        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>

<%--        <input type="hidden" name="code" value="${holding.code}"/>--%>


<%--        <div class="form-group">--%>
<%--            <label for="Name">ИНН</label>--%>

<%--            <input value="${holding.name}" name="Name"--%>
<%--                   id="Name"--%>
<%--                   placeholder="ИНН"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="number"--%>
<%--                   pattern="[0-9]{10,20}" required/>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="kpp">КПП</label>--%>
<%--            <input value="${holding.kpp}" name="kpp"--%>
<%--                   id="kpp"--%>
<%--                   placeholder="КПП"--%>
<%--                   maxlength="20"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="number"--%>
<%--                   required/>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="inn_hq_holding">ИНН HQ Холдинга</label>--%>
<%--            <input value="${holding.inn_hq_holding}" name="inn_hq_holding"--%>
<%--                   id="inn_hq_holding"--%>
<%--                   placeholder="ИНН HQ Холдинга"--%>
<%--                   maxlength="20"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="number" required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="name_hq_holding">Наименование HQ Холдинга</label>--%>
<%--            <input value="${holding.name_hq_holding}" name="name_hq_holding"--%>
<%--                   id="name_hq_holding"--%>
<%--                   placeholder="Наименование HQ Холдинга"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="rf_hq_holding">РФ HQ Холдинга</label>--%>
<%--            <input value="${holding.rf_hq_holding}" name="rf_hq_holding"--%>
<%--                   id="rf_hq_holding"--%>
<%--                   placeholder="РФ HQ Холдинга"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text" required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="macro_region">Макрорегиональный филиал</label>--%>
<%--            <input value="${holding.macro_region}" name="macro_region"--%>
<%--                   id="macro_region"--%>
<%--                   placeholder="Макрорегиональный филиал"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="region">Региональный филиал</label>--%>
<%--            <input value="${holding.region}" name="region" id="region"--%>
<%--                   placeholder="Региональный филиал"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text" required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="client_name">Наименование клиента</label>--%>
<%--            <input value="${holding.client_name}" name="client_name"--%>
<%--                   id="client_name"--%>
<%--                   placeholder="Наименование клиента"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text" required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="inn_industry">Индустрия по ИНН</label>--%>
<%--            <input value="${holding.inn_industry}" name="inn_industry"--%>
<%--                   id="inn_industry"--%>
<%--                   placeholder="Индустрия по ИНН"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text"/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="general_okved">Основной ОКВЭД</label>--%>
<%--            <input value="${holding.general_okved}" name="general_okved"--%>
<%--                   id="general_okved"--%>
<%--                   placeholder="Основной ОКВЭД"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text"/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="all_okved">Список всех ОКВЭД</label>--%>
<%--            <input value="${holding.all_okved}" name="all_okved" id="all_okved"--%>
<%--                   placeholder="Список всех ОКВЭД"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text" required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="number_of_employees">Численность сотрудников</label>--%>
<%--            <input value="${holding.number_of_employees}" name="number_of_employees"--%>
<%--                   id="number_of_employees"--%>
<%--                   placeholder="Численность сотрудников"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="turnover_by_inn">Оборот по ИНН, млн. руб.</label>--%>
<%--            <input value="${holding.turnover_by_inn}" name="turnover_by_inn"--%>
<%--                   id="turnover_by_inn"--%>
<%--                   placeholder="Оборот по ИНН, млн. руб."--%>
<%--                   class="form-control data_add_row floatTextBox"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="charges_by_inn_per_year_2019">Начисления по ИНН за 2019 год</label>--%>
<%--            <input value="${holding.charges_by_inn_per_year_2019}" name="charges_by_inn_per_year_2019"--%>
<%--                   id="charges_by_inn_per_year_2019"--%>
<%--                   placeholder="Начисления по ИНН за 2019 год"--%>
<%--                   class="form-control data_add_row floatTextBox"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="charges_by_inn_per_year_2020">Начисления по ИНН за 2020 год</label>--%>
<%--            <input value="${holding.charges_by_inn_per_year_2020}" name="charges_by_inn_per_year_2020"--%>
<%--                   id="charges_by_inn_per_year_2020"--%>
<%--                   placeholder="Начисления по ИНН за 2020 год"--%>
<%--                   class="form-control data_add_row floatTextBox"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="delta">Дельта 2020/2019</label>--%>
<%--            <input value="${holding.delta}" name="delta" id="delta"--%>
<%--                   placeholder="Дельта 2020/2019"--%>
<%--                   class="form-control data_add_row floatTextBox"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="kam">КАМ, закрепленный за ИНН в регионе</label>--%>
<%--            <input value="${holding.kam}" name="kam" id="kam"--%>
<%--                   placeholder="КАМ, закрепленный за ИНН в регионе"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="cm">СМ, закрепленный за ИНН в регионе</label>--%>
<%--            <input value="${holding.cm}" name="cm" id="cm"--%>
<%--                   placeholder="СМ, закрепленный за ИНН в регионе"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="number_of_services">Количество услуг на ИНН</label>--%>
<%--            <input value="${holding.number_of_services}" name="number_of_services"--%>
<%--                   id="number_of_services"--%>
<%--                   placeholder="Количество услуг на ИНН"--%>
<%--                   class="form-control data_add_row floatTextBox"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="service">Услуга</label>--%>
<%--            <input value="${holding.service}" name="service" id="service"--%>
<%--                   placeholder="Услуга"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="service_charges_per_month">Начисления по услуге за месяц</label>--%>
<%--            <input value="${holding.service_charges_per_month}" name="service_charges_per_month"--%>
<%--                   id="service_charges_per_month"--%>
<%--                   placeholder="Начисления по услуге за месяц"--%>
<%--                   class="form-control data_add_row floatTextBox"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="service_charges_per_quarter">Начисления по услуге за квартал</label>--%>
<%--            <input value="${holding.service_charges_per_quarter}" name="service_charges_per_quarter"--%>
<%--                   id="service_charges_per_quarter"--%>
<%--                   placeholder="Начисления по услуге за квартал"--%>
<%--                   class="form-control data_add_row floatTextBox"--%>
<%--                   type="text"--%>
<%--                   required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="service_charges_per_year">Начисления по услуге за год</label>--%>
<%--            <input value="${holding.service_charges_per_year}" name="service_charges_per_year"--%>
<%--                   id="service_charges_per_year"--%>
<%--                   placeholder="Начисления по услуге за год"--%>
<%--                   class="form-control data_add_row floatTextBox"--%>
<%--                   type="text" required/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="lastchgdatetime">Date of change</label>--%>
<%--            <input value="${holding.lastChgDateTime}" name="lastchgdatetime"--%>
<%--                   id="lastchgdatetime"--%>
<%--                   placeholder="Date of change"--%>
<%--                   class="form-control data_add_row"--%>
<%--                   disabled/>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <button id="add_row_button" type="submit" class="btn btn-primary">Добавить запись</button>--%>
<%--            <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--        <form:form id="saveForm" action="saveHolding" modelAttribute="holding" target="_blank" method="post">--%>
        <form:form id="saveForm" modelAttribute="holding">

            <!-- saving holding id to not lose it-->
            <form:hidden path="code"/>

            <div class="form-group">
                <label for="Name">ИНН</label>
                <form:input path="name" name="Name"
                            id="Name"
                            placeholder="ИНН"
                            class="form-control data_add_row"
                            type="number"
                            pattern="[0-9]{10,20}" requiered="true"/>
            </div>

            <div class="form-group">
                <label for="kpp">КПП</label>
                <form:input path="kpp" name="kpp"
                            id="kpp"
                            placeholder="КПП"
                            maxlength="20"
                            class="form-control data_add_row"
                            type="number"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="inn_hq_holding">ИНН HQ Холдинга</label>
                <form:input path="inn_hq_holding" name="inn_hq_holding"
                            id="inn_hq_holding"
                            placeholder="ИНН HQ Холдинга"
                            maxlength="20"
                            class="form-control data_add_row"
                            type="number" required="true"/>
            </div>
            <div class="form-group">
                <label for="name_hq_holding">Наименование HQ Холдинга</label>
                <form:input path="name_hq_holding" name="name_hq_holding"
                            id="name_hq_holding"
                            placeholder="Наименование HQ Холдинга"
                            class="form-control data_add_row"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="rf_hq_holding">РФ HQ Холдинга</label>
                <form:input path="rf_hq_holding" name="rf_hq_holding"
                            id="rf_hq_holding"
                            placeholder="РФ HQ Холдинга"
                            class="form-control data_add_row"
                            type="text" required="true"/>
            </div>
            <div class="form-group">
                <label for="macro_region">Макрорегиональный филиал</label>
                <form:input path="macro_region" name="macro_region"
                            id="macro_region"
                            placeholder="Макрорегиональный филиал"
                            class="form-control data_add_row"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="region">Региональный филиал</label>
                <form:input path="region" name="region" id="region"
                            placeholder="Региональный филиал"
                            class="form-control data_add_row"
                            type="text" required="true"/>
            </div>
            <div class="form-group">
                <label for="client_name">Наименование клиента</label>
                <form:input path="client_name" name="client_name"
                            id="client_name"
                            placeholder="Наименование клиента"
                            class="form-control data_add_row"
                            type="text" required="true"/>
            </div>
            <div class="form-group">
                <label for="inn_industry">Индустрия по ИНН</label>
                <form:input path="inn_industry" name="inn_industry"
                            id="inn_industry"
                            placeholder="Индустрия по ИНН"
                            class="form-control data_add_row"
                            type="text" required="true"/>
            </div>
            <div class="form-group">
                <label for="general_okved">Основной ОКВЭД</label>
                <form:input path="general_okved" name="general_okved"
                            id="general_okved"
                            placeholder="Основной ОКВЭД"
                            class="form-control data_add_row"
                            type="text" required="true"/>
            </div>
            <div class="form-group">
                <label for="all_okved">Список всех ОКВЭД</label>
                <form:input path="all_okved" name="all_okved" id="all_okved"
                            placeholder="Список всех ОКВЭД"
                            class="form-control data_add_row"
                            type="text" required="true"/>
            </div>
            <div class="form-group">
                <label for="number_of_employees">Численность сотрудников</label>
                <form:input path="number_of_employees" name="number_of_employees"
                            id="number_of_employees"
                            placeholder="Численность сотрудников"
                            class="form-control data_add_row"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="turnover_by_inn">Оборот по ИНН, млн. руб.</label>
                <form:input path="turnover_by_inn" name="turnover_by_inn"
                            id="turnover_by_inn"
                            placeholder="Оборот по ИНН, млн. руб."
                            class="form-control data_add_row floatTextBox"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="charges_by_inn_per_year_2019">Начисления по ИНН за 2019 год</label>
                <form:input path="charges_by_inn_per_year_2019" name="charges_by_inn_per_year_2019"
                            id="charges_by_inn_per_year_2019"
                            placeholder="Начисления по ИНН за 2019 год"
                            class="form-control data_add_row floatTextBox"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="charges_by_inn_per_year_2020">Начисления по ИНН за 2020 год</label>
                <form:input path="charges_by_inn_per_year_2020" name="charges_by_inn_per_year_2020"
                            id="charges_by_inn_per_year_2020"
                            placeholder="Начисления по ИНН за 2020 год"
                            class="form-control data_add_row floatTextBox"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="delta">Дельта 2020/2019</label>
                <form:input path="delta" name="delta" id="delta"
                            placeholder="Дельта 2020/2019"
                            class="form-control data_add_row floatTextBox"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="kam">КАМ, закрепленный за ИНН в регионе</label>
                <form:input path="kam" name="kam" id="kam"
                            placeholder="КАМ, закрепленный за ИНН в регионе"
                            class="form-control data_add_row"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="cm">СМ, закрепленный за ИНН в регионе</label>
                <form:input path="cm" name="cm" id="cm"
                            placeholder="СМ, закрепленный за ИНН в регионе"
                            class="form-control data_add_row"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="number_of_services">Количество услуг на ИНН</label>
                <form:input path="number_of_services" name="number_of_services"
                            id="number_of_services"
                            placeholder="Количество услуг на ИНН"
                            class="form-control data_add_row floatTextBox"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="service">Услуга</label>
                <form:input path="service" name="service" id="service"
                            placeholder="Услуга"
                            class="form-control data_add_row"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="service_charges_per_month">Начисления по услуге за месяц</label>
                <form:input path="service_charges_per_month" name="service_charges_per_month"
                            id="service_charges_per_month"
                            placeholder="Начисления по услуге за месяц"
                            class="form-control data_add_row floatTextBox"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="service_charges_per_quarter">Начисления по услуге за квартал</label>
                <form:input path="service_charges_per_quarter" name="service_charges_per_quarter"
                            id="service_charges_per_quarter"
                            placeholder="Начисления по услуге за квартал"
                            class="form-control data_add_row floatTextBox"
                            type="text"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="service_charges_per_year">Начисления по услуге за год</label>
                <form:input path="service_charges_per_year" name="service_charges_per_year"
                            id="service_charges_per_year"
                            placeholder="Начисления по услуге за год"
                            class="form-control data_add_row floatTextBox"
                            type="text" required="true"/>
            </div>
            <div class="form-group">
                <label for="lastchgdatetime">Date of change</label>
                <form:input path="lastChgDateTime" name="lastchgdatetime"
                            id="lastchgdatetime"
                            placeholder="Date of change"
                            class="form-control data_add_row"
                            disabled="true"/>
            </div>
            <div class="form-group">
                <button id="add_row_button" type="submit" class="btn btn-primary">Добавить запись</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
            </div>
        </form:form>
</div>



