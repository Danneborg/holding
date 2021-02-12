package project.root.repository.others;

import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.CrudRepository;
import project.root.model.HoldingLeaf;

public interface HoldingLeafRepository extends CrudRepository<HoldingLeaf, Long> {


    HoldingLeaf save(HoldingLeaf holdingLeaf);

    @Procedure(value = "MDS_UAT.stg.HOLDING1_Leaf")
    String udp_HOLDING1_Leaf(int importType, int importStatus_ID, String batchTag);

}
