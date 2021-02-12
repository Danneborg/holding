package project.root.repository.others;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import project.root.model.Holding;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public interface HoldingRepository extends JpaRepository<Holding, Long> {

    @Query(value = "SELECT * FROM MDS_UAT.mdm.HOLDING_V_C h " +
                    "where h.inn_hq_holding IN(SELECT innerH.inn_hq_holding from MDS_UAT.mdm.HOLDING_V_C innerH where innerH.Name = :name)",
            nativeQuery = true)
    List<Holding> findByName(@Param("name") String name);

    Holding findByCode(@Param("Code") int code);

    @Query("SELECT h FROM Holding h WHERE h.kam LIKE CONCAT('%',:kam,'%')")
    List<Holding> findUserBykam(@Param("kam") String kam);

    @Query("SELECT h FROM Holding h WHERE h.region LIKE CONCAT('%',:region,'%')")
    List<Holding> findUserByregion(@Param("region") String kam);

    @Query("SELECT h FROM Holding h WHERE h.macro_region LIKE CONCAT('%',:macro_region,'%')")
    List<Holding> findUserBymacro_region(@Param("macro_region") String kam);

}
