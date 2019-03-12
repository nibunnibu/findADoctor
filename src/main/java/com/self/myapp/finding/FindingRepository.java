package com.self.myapp.finding;

import com.self.myapp.db.tables.records.LocationRecord;
import org.jooq.DSLContext;
import org.jooq.SelectConditionStep;
import org.jooq.SelectWhereStep;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import static com.self.myapp.db.Tables.LOCATION;

@Repository
public class FindingRepository {
    private final DSLContext dslContext;

    @Autowired
    public FindingRepository(DSLContext dslContext) {
        this.dslContext = dslContext;
    }
    public void findings() {
        SelectConditionStep<LocationRecord> locationRecords = dslContext.selectFrom(LOCATION)
                .where(LOCATION.ID.eq(1l));
    }
}
