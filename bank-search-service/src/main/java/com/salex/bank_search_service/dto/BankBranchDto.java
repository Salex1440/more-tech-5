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

    @NonNull
    private Boolean individual;

    @NonNull
    @JsonProperty("legal_entity")
    private Boolean legalEntity;

    @NonNull
    @JsonProperty("invalid")
    private Boolean forInvalid;

    @NonNull
    private Boolean privilegy;

    @NonNull
    private Boolean weekend;

    @NonNull
    @JsonProperty("late_evening")
    private Boolean lateEvening;

    @NonNull
    @JsonProperty("waiting_time")
    private Integer waitingTime;

}
