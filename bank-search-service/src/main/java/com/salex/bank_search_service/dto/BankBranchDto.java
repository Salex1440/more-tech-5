package com.salex.bank_search_service.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
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
    @JsonProperty("schedule_from")
    private LocalTime scheduleFrom;

    @NonNull
    @JsonProperty("schedule_till")
    private LocalTime scheduleTill;

}
