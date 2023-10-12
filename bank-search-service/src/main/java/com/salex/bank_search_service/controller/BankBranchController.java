package com.salex.bank_search_service.controller;

import com.salex.bank_search_service.dto.BankBranchDto;
import com.salex.bank_search_service.service.BankBranchService;
import jakarta.validation.ConstraintViolationException;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping(path = "/api/v1/bank", produces = "application/json")
@RequiredArgsConstructor
@Validated
public class BankBranchController {

    private final BankBranchService bankBranchService;
    private final StringBuilder sb = new StringBuilder();

    @GetMapping("branch")
    public Flux<BankBranchDto> bankBranchesBetweenCoordinates(@RequestParam @Min(-90) @Max(90) float minLat,
                                                              @RequestParam @Min(-180) @Max(180) float minLon,
                                                              @RequestParam @Min(-90) @Max(90) float maxLat,
                                                              @RequestParam @Min(-180) @Max(180) float maxLon,
                                                              @RequestParam(defaultValue = "20") @Min(value = 1) @Max(value = 200) Integer limit) {
        return bankBranchService.getBetweenCoordinated(minLat, minLon, maxLat, maxLon, limit);
    }


    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(ConstraintViolationException.class)
    public Mono<String> constraintViolationExceptionHandler(ConstraintViolationException e) {
        String[] errors = e.getMessage().split(",");
        for (String error : errors) {
            String[] split = error.split(":");
            if (split[0].contains("arg0")) {
                split[0] = "minLat";
            } else if (split[0].contains("arg1")) {
                split[0] = "minLon";
            } else if (split[0].contains("arg2")) {
                split[0] = "maxLat";
            } else if (split[0].contains("arg3")) {
                split[0] = "maxLon";
            } else if (split[0].contains("arg4")) {
                split[0] = "limit";
            }
            sb.append(split[0]).append(split[1]).append("\n");
        }
        String message = sb.toString();
        sb.delete(0, message.length() - 1);
        return Mono.just(message);
    }

}
