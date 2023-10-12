package com.salex.bank_search_service.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NonNull;

import java.time.LocalTime;

@Data
@AllArgsConstructor
@Builder
public class BankBranchDto {
    @NonNull
    private String city;

    @NonNull
    private String street;

    @NonNull
    private String house;

    private String housing;

    @NonNull
    private Float latitude;

    @NonNull
    private Float longitude;

    @NonNull
    private LocalTime scheduleFrom;

    @NonNull
    private LocalTime scheduleTill;

}
