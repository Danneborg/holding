package project.root.util;


import org.springframework.stereotype.Component;
import project.root.model.Holding;

import java.util.ArrayList;
import java.util.List;

@Component
public class HoldingListSorter {

    public HoldingListSorter() {

    }

    public List<Holding> sortHoldingList(List<Holding> unSortedList) {

        List<Holding> headQuarters = new ArrayList<>();

        for (Holding holding : unSortedList) {
            if (holding.getName().equals(holding.getInn_hq_holding())
                    && holding.getRf_hq_holding().equals(holding.getRegion())) {
                headQuarters.add(holding);
            }
        }
        unSortedList.removeAll(headQuarters);

        headQuarters.addAll(unSortedList);

        return headQuarters;
    }

}
