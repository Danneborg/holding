package project.root.DAO;

import project.root.model.Holding;

import java.util.List;

public interface HoldingDAO {

    void save(Holding holding);

    List<Holding> getHoldingsByParameter(String paramName, String paramValue);

}
