package com.salex.bank_search_service.service;

import com.salex.bank_search_service.dto.BankBranchDto;
import com.salex.bank_search_service.mapper.BankBranchMapper;
import com.salex.bank_search_service.model.BankBranch;
import com.salex.bank_search_service.repository.BankBranchRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Flux;

@Service
@RequiredArgsConstructor
public class BankBranchService {

    private final BankBranchRepository repository;

    private final BankBranchMapper mapper;

    @Transactional(isolation = Isolation.READ_COMMITTED)
    public Flux<BankBranchDto> getBetweenCoordinates(float minLat, float minLon, float maxLat, float maxLon, Integer limit) {

        Flux<BankBranch> flux = repository.findAllBetweenCoordinates(minLat, minLon, maxLat, maxLon);
        return flux.take(limit).map(mapper::toDto);
    }

    @Transactional(isolation = Isolation.READ_COMMITTED)
    public Flux<BankBranchDto> getBetweenCoordinatesFiltered(float minLat, float minLon, float maxLat, float maxLon, Integer limit,
                                                     boolean individual, boolean legalEntity, boolean invalid,
                                                     boolean privilegy, boolean weekend, boolean lateEvening) {

        Flux<BankBranch> flux = repository.findFilteredBetweenCoordinates(minLat, minLon, maxLat, maxLon, individual, legalEntity, invalid, privilegy, weekend, lateEvening);
        return flux.take(limit).map(mapper::toDto);
    }

}
