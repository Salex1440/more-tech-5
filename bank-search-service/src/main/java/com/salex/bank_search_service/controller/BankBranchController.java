package com.salex.bank_search_service.controller;

import com.salex.bank_search_service.dto.BankBranchDto;
import com.salex.bank_search_service.service.BankBranchService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;

@RestController
@RequestMapping(path = "/api/v1/bank", produces = "application/json")
@RequiredArgsConstructor
public class BankBranchController {

    private final BankBranchService bankBranchService;


    @GetMapping("branch")
    public Flux<BankBranchDto> bankBranchesBetweenCoordinates(@RequestParam("minLat") float minLat,
                                                              @RequestParam("minLon") float minLon,
                                                              @RequestParam("maxLat") float maxLat,
                                                              @RequestParam("maxLon") float maxLon) {
        return bankBranchService.getBetweenCoordinated(minLat, minLon, maxLat, maxLon);
    }

}
