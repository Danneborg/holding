package project.root.repository.logger;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import project.root.model.Holding;
import project.root.model.HoldingLeaf;
import project.root.model.Logger;

import java.util.List;


public interface LoggerRepository extends CrudRepository<Logger, Long> {

    Logger save(Logger logger);

}
