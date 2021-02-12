package project.root.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "HOLDING.mdm.BI_3K_RUS_HIBERNATE")
public class HoldingService {

    @Id
    @Column(name = "id")
    private long id;

    @Column(name = "inn")
    private String inn;

    @Column(name = "charge_save")
    private String charge_save;

    @Column(name = "period")
    private String period;

    @Column(name = "service")
    private String service;

    @Column(name = "service2")
    private String service2;

    @Column(name = "mrf_name")
    private String mrf_name;

    @Column(name = "rf_name")
    private String rf_name;

    public HoldingService() {
    }

    public HoldingService(long id, String inn, String charge_save, String period, String service, String service2, String mrf_name, String rf_name) {
        this.id = id;
        this.inn = inn;
        this.charge_save = charge_save;
        this.period = period;
        this.service = service;
        this.service2 = service2;
        this.mrf_name = mrf_name;
        this.rf_name = rf_name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getInn() {
        return inn;
    }

    public void setInn(String inn) {
        this.inn = inn;
    }

    public String getCharge_save() {
        return charge_save;
    }

    public void setCharge_save(String charge_save) {
        this.charge_save = charge_save;
    }

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getService2() {
        return service2;
    }

    public void setService2(String service2) {
        this.service2 = service2;
    }

    public String getMrf_name() {
        return mrf_name;
    }

    public void setMrf_name(String mrf_name) {
        this.mrf_name = mrf_name;
    }

    public String getRf_name() {
        return rf_name;
    }

    public void setRf_name(String rf_name) {
        this.rf_name = rf_name;
    }

    @Override
    public String toString() {
        return "HoldingService{" +
                "id=" + id +
                ", inn='" + inn + '\'' +
                ", charge_save='" + charge_save + '\'' +
                ", period='" + period + '\'' +
                ", service='" + service + '\'' +
                ", service2='" + service2 + '\'' +
                ", mrf_name='" + mrf_name + '\'' +
                ", rf_name='" + rf_name + '\'' +
                '}';
    }
}
