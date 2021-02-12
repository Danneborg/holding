package project.root.repository.others;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import project.root.model.HoldingService;

import java.util.List;

@Repository
public interface HoldingServiceRepository extends JpaRepository<HoldingService, Long> {

    //    @Query(value = "SELECT * FROM HOLDING.mdm.BI_3K_V s " +
//            "where s.inn = :inn and s.rf_name LIKE '%=:rf_name%'",
//            nativeQuery = true)
    @Query("select s from HoldingService s where s.inn = :inn and s.rf_name LIKE :rf_name")
    List<HoldingService> findByInnAndRfname(@Param("inn") String inn, @Param("rf_name") String rf_name);

    @Query("select s from HoldingService s where s.inn = :inn and s.rf_name LIKE :rf_name and s.period=:period")
    List<HoldingService> findByInnAndRfnameAndPeriod(@Param("inn") String inn,
                                                     @Param("rf_name") String rf_name,
                                                     @Param("period") String period);
}
