package project.root.model;

import javax.persistence.*;

@Entity
@Table(name = "MDS_UAT.stg.HOLDING1_Leaf")
public class HoldingLeaf {

    @Id
    @Column(name = "Code")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int code;

    @Column(name = "importType")
    private int importType;

    @Column(name = "ImportStatus_ID")
    private int importStatus_ID;

    @Column(name = "BatchTag")
    private String batchTag;

    @Column(name = "Name")
    private String name;

    @Column(name = "kpp")
    private String kpp;

    @Column(name = "inn_hq_holding")
    private String inn_hq_holding;

    @Column(name = "name_hq_holding")
    private String name_hq_holding;

    @Column(name = "rf_hq_holding")
    private String rf_hq_holding;

    @Column(name = "macro_region")
    private String macro_region;

    @Column(name = "region")
    private String region;

    @Column(name = "client_name")
    private String client_name;

    @Column(name = "inn_industry")
    private String inn_industry;

    @Column(name = "general_okved")
    private String general_okved;

    @Column(name = "all_okved")
    private String all_okved;

    @Column(name = "number_of_employees")
    private String number_of_employees;

    @Column(name = "turnover_by_inn")
    private String turnover_by_inn;

    @Column(name = "charges_by_inn_per_year_2019")
    private String charges_by_inn_per_year_2019;

    @Column(name = "charges_by_inn_per_year_2020")
    private String charges_by_inn_per_year_2020;

    @Column(name = "delta")
    private String delta;

    @Column(name = "kam")
    private String kam;

    @Column(name = "cm")
    private String cm;

    @Column(name = "number_of_services")
    private String number_of_services;

    @Column(name = "service")
    private String service;

    @Column(name = "service_charges_per_month")
    private String service_charges_per_month;

    @Column(name = "service_charges_per_quarter")
    private String service_charges_per_quarter;

    @Column(name = "service_charges_per_year")
    private String service_charges_per_year;

    public HoldingLeaf() {
    }

    public HoldingLeaf(String name, String kpp, String inn_hq_holding, String name_hq_holding, String rf_hq_holding, String macro_region, String region, String client_name, String inn_industry, String general_okved, String all_okved, String number_of_employees, String turnover_by_inn, String charges_by_inn_per_year_2019, String charges_by_inn_per_year_2020, String delta, String kam, String cm, String number_of_services, String service, String service_charges_per_month, String service_charges_per_quarter, String service_charges_per_year) {
        this.name = name;
        this.kpp = kpp;
        this.inn_hq_holding = inn_hq_holding;
        this.name_hq_holding = name_hq_holding;
        this.rf_hq_holding = rf_hq_holding;
        this.macro_region = macro_region;
        this.region = region;
        this.client_name = client_name;
        this.inn_industry = inn_industry;
        this.general_okved = general_okved;
        this.all_okved = all_okved;
        this.number_of_employees = number_of_employees;
        this.turnover_by_inn = turnover_by_inn;
        this.charges_by_inn_per_year_2019 = charges_by_inn_per_year_2019;
        this.charges_by_inn_per_year_2020 = charges_by_inn_per_year_2020;
        this.delta = delta;
        this.kam = kam;
        this.cm = cm;
        this.number_of_services = number_of_services;
        this.service = service;
        this.service_charges_per_month = service_charges_per_month;
        this.service_charges_per_quarter = service_charges_per_quarter;
        this.service_charges_per_year = service_charges_per_year;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getKpp() {
        return kpp;
    }

    public void setKpp(String kpp) {
        this.kpp = kpp;
    }

    public String getInn_hq_holding() {
        return inn_hq_holding;
    }

    public void setInn_hq_holding(String inn_hq_holding) {
        this.inn_hq_holding = inn_hq_holding;
    }

    public String getName_hq_holding() {
        return name_hq_holding;
    }

    public void setName_hq_holding(String name_hq_holding) {
        this.name_hq_holding = name_hq_holding;
    }

    public String getRf_hq_holding() {
        return rf_hq_holding;
    }

    public void setRf_hq_holding(String rf_hq_holding) {
        this.rf_hq_holding = rf_hq_holding;
    }

    public String getMacro_region() {
        return macro_region;
    }

    public void setMacro_region(String macro_region) {
        this.macro_region = macro_region;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getClient_name() {
        return client_name;
    }

    public void setClient_name(String client_name) {
        this.client_name = client_name;
    }

    public String getInn_industry() {
        return inn_industry;
    }

    public void setInn_industry(String inn_industry) {
        this.inn_industry = inn_industry;
    }

    public String getGeneral_okved() {
        return general_okved;
    }

    public void setGeneral_okved(String general_okved) {
        this.general_okved = general_okved;
    }

    public String getAll_okved() {
        return all_okved;
    }

    public void setAll_okved(String all_okved) {
        this.all_okved = all_okved;
    }

    public String getNumber_of_employees() {
        return number_of_employees;
    }

    public void setNumber_of_employees(String number_of_employees) {
        this.number_of_employees = number_of_employees;
    }

    public String getTurnover_by_inn() {
        return turnover_by_inn;
    }

    public void setTurnover_by_inn(String turnover_by_inn) {
        this.turnover_by_inn = turnover_by_inn;
    }

    public String getCharges_by_inn_per_year_2019() {
        return charges_by_inn_per_year_2019;
    }

    public void setCharges_by_inn_per_year_2019(String charges_by_inn_per_year_2019) {
        this.charges_by_inn_per_year_2019 = charges_by_inn_per_year_2019;
    }

    public String getCharges_by_inn_per_year_2020() {
        return charges_by_inn_per_year_2020;
    }

    public void setCharges_by_inn_per_year_2020(String charges_by_inn_per_year_2020) {
        this.charges_by_inn_per_year_2020 = charges_by_inn_per_year_2020;
    }

    public String getDelta() {
        return delta;
    }

    public void setDelta(String delta) {
        this.delta = delta;
    }

    public String getKam() {
        return kam;
    }

    public void setKam(String kam) {
        this.kam = kam;
    }

    public String getCm() {
        return cm;
    }

    public void setCm(String cm) {
        this.cm = cm;
    }

    public String getNumber_of_services() {
        return number_of_services;
    }

    public void setNumber_of_services(String number_of_services) {
        this.number_of_services = number_of_services;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getService_charges_per_month() {
        return service_charges_per_month;
    }

    public void setService_charges_per_month(String service_charges_per_month) {
        this.service_charges_per_month = service_charges_per_month;
    }

    public String getService_charges_per_quarter() {
        return service_charges_per_quarter;
    }

    public void setService_charges_per_quarter(String service_charges_per_quarter) {
        this.service_charges_per_quarter = service_charges_per_quarter;
    }

    public String getService_charges_per_year() {
        return service_charges_per_year;
    }

    public void setService_charges_per_year(String service_charges_per_year) {
        this.service_charges_per_year = service_charges_per_year;
    }

    public void setImportType(int importType) {
        this.importType = importType;
    }

    public void setImportStatus_ID(int importStatus_ID) {
        this.importStatus_ID = importStatus_ID;
    }

    public void setBatchTag(String batchTag) {
        this.batchTag = batchTag;
    }

    public int getImportType() {
        return importType;
    }

    public int getImportStatus_ID() {
        return importStatus_ID;
    }

    public String getBatchTag() {
        return batchTag;
    }

    @Override
    public String toString() {
        return "HoldingLeaf{" +
                "code=" + code +
                ", importType=" + importType +
                ", importStatus_ID=" + importStatus_ID +
                ", batchTag='" + batchTag + '\'' +
                ", name='" + name + '\'' +
                ", kpp='" + kpp + '\'' +
                ", inn_hq_holding='" + inn_hq_holding + '\'' +
                ", name_hq_holding='" + name_hq_holding + '\'' +
                ", rf_hq_holding='" + rf_hq_holding + '\'' +
                ", macro_region='" + macro_region + '\'' +
                ", region='" + region + '\'' +
                ", client_name='" + client_name + '\'' +
                ", inn_industry='" + inn_industry + '\'' +
                ", general_okved='" + general_okved + '\'' +
                ", all_okved='" + all_okved + '\'' +
                ", number_of_employees='" + number_of_employees + '\'' +
                ", turnover_by_inn='" + turnover_by_inn + '\'' +
                ", charges_by_inn_per_year_2019='" + charges_by_inn_per_year_2019 + '\'' +
                ", charges_by_inn_per_year_2020='" + charges_by_inn_per_year_2020 + '\'' +
                ", delta='" + delta + '\'' +
                ", kam='" + kam + '\'' +
                ", cm='" + cm + '\'' +
                ", number_of_services='" + number_of_services + '\'' +
                ", service='" + service + '\'' +
                ", service_charges_per_month='" + service_charges_per_month + '\'' +
                ", service_charges_per_quarter='" + service_charges_per_quarter + '\'' +
                ", service_charges_per_year='" + service_charges_per_year + '\'' +
                '}';
    }

    public void equalizeFields(Holding holding) {

        this.importType = 0;

        this.importStatus_ID = 0;

        this.batchTag = "HOLDING_" + System.currentTimeMillis();

        if (holding.getCode() > 0) {
            this.code = holding.getCode();
        }

        this.name = holding.getName();
        this.kpp = holding.getKpp();
        this.inn_hq_holding = holding.getInn_hq_holding();
        this.name_hq_holding = holding.getName_hq_holding();
        this.rf_hq_holding = holding.getRf_hq_holding();
        this.macro_region = holding.getMacro_region();
        this.macro_region = holding.getRegion();
        this.client_name = holding.getClient_name();
        this.inn_industry = holding.getInn_industry();
        this.general_okved = holding.getGeneral_okved();
        this.all_okved = holding.getAll_okved();
        this.number_of_employees = holding.getNumber_of_employees();
        this.turnover_by_inn = holding.getTurnover_by_inn();
        this.charges_by_inn_per_year_2019 = holding.getCharges_by_inn_per_year_2019();
        this.charges_by_inn_per_year_2020 = holding.getCharges_by_inn_per_year_2020();
        this.delta = holding.getDelta();
        this.kam = holding.getKam();
        this.cm = holding.getCm();
        this.number_of_services = holding.getNumber_of_services();
        this.service = holding.getService();
        this.service_charges_per_month = holding.getService_charges_per_month();
        this.service_charges_per_quarter = holding.getService_charges_per_quarter();
        this.service_charges_per_year = holding.getService_charges_per_year();

    }
}
