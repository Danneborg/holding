<div>
    <div class="modal fade" id="changeModal" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="true"
         aria-labelledby="changeLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="changeLabel">Изменить запись</h4>
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true"
                                                                                   class=""></span><span
                            class="sr-only">Закрыть</span>

                    </button>a<div>
                    <!-- Modal -->
                    <div class="modal fade" id="addModal" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="exampleModalLongTitle" style="display: none;" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle" value="HOLDING">HOLDING
                                    </h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">X</span>
                                    </button>
                                </div>
                                <div id="add_row_body" class="modal-body">
                                    <form id="add_form">
                                        <div class="form-group">
                                            <label for="Name">ИНН</label>
                                            <input type="text" name="Name" id="Name" placeholder="ИНН" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="Code">Code</label>
                                            <input type="text" name="Code" id="Code" placeholder="Code" class="form-control data_add_row" disabled="disabled">
                                        </div>
                                        <div class="form-group">
                                            <label for="kpp">КПП</label>
                                            <input type="text" name="kpp" id="kpp" placeholder="КПП" maxlength="20" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="region">Регион где представлен ИНН</label>
                                            <input type="text" name="region" id="region" placeholder="Регион где представлен ИНН" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="client_name">Наименование клиента</label>
                                            <input type="text" name="client_name" id="client_name" placeholder="Наименование клиента" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="inn_industry">Индустрия по ИНН</label>
                                            <input type="text" name="inn_industry" id="inn_industry" placeholder="Индустрия по ИНН" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="general_okved">Основной ОКВЭД</label>
                                            <input type="text" name="general_okved" id="general_okved" placeholder="Основной ОКВЭД" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="all_okved">Список кодов всех ОКВЭД</label>
                                            <input type="text" name="all_okved" id="all_okved" placeholder="Список кодов всех ОКВЭД" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="residency">Резидент или нерезидент</label>
                                            <input type="text" name="residency" id="residency" placeholder="Резидент или нерезидент" maxlength="1" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="turnover_by_inn">Оборот по ИНН, млн. руб.</label>
                                            <input type="text" name="turnover_by_inn" id="turnover_by_inn" placeholder="Оборот по ИНН, млн. руб." class="form-control data_add_row floatTextBox" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="charges_by_inn_per_month">Сумма начислений по ИНН за месяц, руб.</label>
                                            <input type="text" name="charges_by_inn_per_month" id="charges_by_inn_per_month" placeholder="Сумма начислений по ИНН за месяц, руб." class="form-control data_add_row floatTextBox" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="charges_by_inn_per_quarter">Сумма начислений по ИНН за квартал, руб.</label>
                                            <input type="text" name="charges_by_inn_per_quarter" id="charges_by_inn_per_quarter" placeholder="Сумма начислений по ИНН за квартал, руб." class="form-control data_add_row floatTextBox" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="charger_by_inn_per_year">Сумма начислений по ИНН за год, руб.</label>
                                            <input type="text" name="charger_by_inn_per_year" id="charger_by_inn_per_year" placeholder="Сумма начислений по ИНН за год, руб." class="form-control data_add_row floatTextBox" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="kam">ФИО КАМ, закрепленного за ИНН в регионе (Федеральный/Региональный)</label>
                                            <input type="text" name="kam" id="kam" placeholder="ФИО КАМ, закрепленного за ИНН в регионе (Федеральный/Региональный)" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="inn_hq_holding">ИНН HQ холдинг</label>
                                            <input type="text" name="inn_hq_holding" id="inn_hq_holding" placeholder="ИНН HQ холдинг" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="headquarter">Штаб-квартира</label>
                                            <input type="text" name="headquarter" id="headquarter" placeholder="Штаб-квартира" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="holding_hq_name">Наименование HQ холдинга</label>
                                            <input type="text" name="holding_hq_name" id="holding_hq_name" placeholder="Наименование HQ холдинга" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="workers_count">Численность сотрудников</label>
                                            <input type="text" name="workers_count" id="workers_count" placeholder="Численность сотрудников" class="form-control data_add_row" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="lastchgdatetime">Date of change</label>
                                            <input type="text" name="lastchgdatetime" id="lastchgdatetime" placeholder="Date of change" class="form-control data_add_row" disabled="disabled">
                                        </div>

                                        <div class="form-group">
                                            <button id="add_row_button" type="submit" class="btn btn-primary">Добавить запись
                                            </button>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div id="change_body" class="modal-body">
                    <div id="modalContent">
                        <form id="changeform" value="HOLDING">
                            <div class="form-group"><label class="label_change" for="Name">ИНН</label><input
                                    class="form-control  data_change data_change_row" name="Name" id="Name"
                                    value="6382063152" required=""
                            </div>
                            <div class="form-group"><label class="label_change" for="Code">Code</label><input
                                    class="form-control data_change_row data_change" name="Code" id="Code"
                                    placeholder="2516" value="2516" disabled="disabled"></div>
                            <div class="form-group"><label class="label_change" for="kpp">КПП</label><input
                                    maxlength="20" class="form-control  data_change data_change_row" name="kpp" id="kpp"
                                    value="632001001" required=""></div>
                            <div class="form-group"><label class="label_change" for="region">Регион где представлен
                                ИНН</label><input class="form-control  data_change data_change_row" name="region"
                                                  id="region" value="Волгоградский филиал ПАО&nbsp;" Ростелеком""=""
                                required="">
                            </div>
                            <div class="form-group"><label class="label_change" for="client_name">Наименование
                                клиента</label><input class="form-control  data_change data_change_row"
                                                      name="client_name" id="client_name"
                                                      value="ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ " ПРАКСАЙР=""
                                                      САМАРА""="" required="">
                            </div>
                            <div class="form-group"><label class="label_change" for="inn_industry">Индустрия по
                                ИНН</label><input class="form-control  data_change data_change_row" name="inn_industry"
                                                  id="inn_industry" value="Тяжелая промышленность" required=""></div>
                            <div class="form-group"><label class="label_change" for="general_okved">Основной
                                ОКВЭД</label><input class="form-control  data_change data_change_row"
                                                    name="general_okved" id="general_okved" value="21.20.1" required="">
                            </div>
                            <div class="form-group"><label class="label_change" for="all_okved">Список кодов всех
                                ОКВЭД</label><input class="form-control  data_change data_change_row" name="all_okved"
                                                    id="all_okved" value="null" required=""></div>
                            <div class="form-group"><label class="label_change" for="residency">Резидент или
                                нерезидент</label><input maxlength="1" class="form-control  data_change data_change_row"
                                                         name="residency" id="residency" value="null" required=""></div>
                            <div class="form-group"><label class="label_change" for="turnover_by_inn">Оборот по ИНН,
                                млн. руб.</label><input class="form-control floatTextBox1 data_change data_change_row"
                                                        name="turnover_by_inn" id="turnover_by_inn"
                                                        value="8625445000.00" required=""></div>
                            <div class="form-group"><label class="label_change" for="charges_by_inn_per_month">Сумма
                                начислений по ИНН за месяц, руб.</label><input
                                    class="form-control floatTextBox1 data_change data_change_row"
                                    name="charges_by_inn_per_month" id="charges_by_inn_per_month" value="122403.60"
                                    required=""></div>
                            <div class="form-group"><label class="label_change" for="charges_by_inn_per_quarter">Сумма
                                начислений по ИНН за квартал, руб.</label><input
                                    class="form-control floatTextBox1 data_change data_change_row"
                                    name="charges_by_inn_per_quarter" id="charges_by_inn_per_quarter" value="367210.80"
                                    required=""></div>
                            <div class="form-group"><label class="label_change" for="charger_by_inn_per_year">Сумма
                                начислений по ИНН за год, руб.</label><input
                                    class="form-control floatTextBox1 data_change data_change_row"
                                    name="charger_by_inn_per_year" id="charger_by_inn_per_year" value="1468843.20"
                                    required=""></div>
                            <div class="form-group"><label class="label_change" for="kam">ФИО КАМ, закрепленного за ИНН
                                в регионе (Федеральный/Региональный)</label><input
                                    class="form-control  data_change data_change_row" name="kam" id="kam"
                                    value="Сливко Дмитрий Владимирович" required=""></div>
                            <div class="form-group"><label class="label_change" for="inn_hq_holding">ИНН HQ
                                холдинг</label><input class="form-control  data_change data_change_row"
                                                      name="inn_hq_holding" id="inn_hq_holding" value="6323085860"
                                                      required=""></div>
                            <div class="form-group"><label class="label_change"
                                                           for="headquarter">Штаб-квартира</label><input
                                    class="form-control  data_change data_change_row" name="headquarter"
                                    id="headquarter" value="null" required=""></div>
                            <div class="form-group"><label class="label_change" for="holding_hq_name">Наименование HQ
                                холдинга</label><input class="form-control  data_change data_change_row"
                                                       name="holding_hq_name" id="holding_hq_name"
                                                       value="ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ " КУЙБЫШЕВАЗОТ=""
                                                       -="" ПЛЮС""="" required="">
                            </div>
                            <div class="form-group"><label class="label_change" for="workers_count">Численность
                                сотрудников</label><input class="form-control  data_change data_change_row"
                                                          name="workers_count" id="workers_count" value="6 .. 10"
                                                          required=""></div>
                            <div class="form-group"><label class="label_change" for="lastchgdatetime">Date of
                                change</label><input class="form-control data_change_row data_change"
                                                     name="lastchgdatetime" id="lastchgdatetime"
                                                     placeholder="09/10/2020 13:30" value="09/10/2020 13:30"
                                                     disabled="disabled"></div>
                            <div class="modal-footer">
                                <button id="change_row_button" type="submit" class="btn btn-primary">Изменить</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="modal-footer data-hidden">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>