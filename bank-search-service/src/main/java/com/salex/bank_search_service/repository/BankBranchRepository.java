package com.salex.bank_search_service.repository;

import com.salex.bank_search_service.model.BankBranch;
import org.springframework.data.r2dbc.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import org.springframework.stereotype.Repository;
import reactor.core.publisher.Flux;

@Repository
public interface BankBranchRepository extends ReactiveCrudRepository<BankBranch, Long> {

    @Query("SELECT * FROM bank_branch b " +
        "WHERE (b.latitude >= :minLat AND b.latitude <= :maxLat) AND (b.longitude >= :minLon AND b.longitude <= :maxLon)" +
        "ORDER BY b.waiting_time DESC")
    Flux<BankBranch> findAllBetweenCoordinates(@Param("minLat") float minLat,
                                               @Param("minLon") float minLon,
                                               @Param("maxLat") float maxLat,
                                               @Param("maxLon") float maxLon);



}
