package project.root.model;

import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "HOLDING.mdm.Logging")
public class Logger {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "userName")
    private String userName;

    @Column(name = "methodName")
    private String methodName;

    @Column(name = "parameters")
    private String parameters;

    @Column(name = "lastchgdatetime")
    private String lastchgdatetime;

//    @CreationTimestamp
//    @Temporal(TemporalType.TIMESTAMP)
//    @Column(name = "lastchgdatetime")
//    private Date lastchgdatetime;

    public Logger() {
    }

    public Logger(int id, String userName, String methodName, String parameters, String lastchgdatetime) {
        this.id = id;
        this.userName = userName;
        this.methodName = methodName;
        this.parameters = parameters;
        this.lastchgdatetime = lastchgdatetime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMethodName() {
        return methodName;
    }

    public void setMethodName(String methodName) {
        this.methodName = methodName;
    }

    public String getParameters() {
        return parameters;
    }

    public void setParameters(String parameters) {
        this.parameters = parameters;
    }

    public String getLastchgdatetime() {
        return lastchgdatetime;
    }

    public void setLastchgdatetime(String lastchgdatetime) {
        this.lastchgdatetime = lastchgdatetime;
    }

    @Override
    public String toString() {
        return "Logger{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", methodName='" + methodName + '\'' +
                ", parameters='" + parameters + '\'' +
                ", lastchgdatetime=" + lastchgdatetime +
                '}';
    }
}
