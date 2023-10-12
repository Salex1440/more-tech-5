package com.salex.bank_search_service.model;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;
import org.springframework.validation.annotation.Validated;

import java.time.LocalTime;

@Data
@NoArgsConstructor
@EqualsAndHashCode(exclude = "id")
@Table("bank_branch")
@Validated
public class BankBranch {

    @Id
    private Long id;

    @NonNull
    private String city;

    @NonNull
    private String street;

    @NonNull
    private String house;

    private String housing;

    @NonNull
    @Min(value = -90, message = "The Number must be greater then or equal to '-90'")
    @Max(value = 90, message = "The Number must be less then or equal to '-90'")
    private Float latitude;

    @NonNull
    @Min(value = -180, message = "The Number must be greater then or equal to '-180'")
    @Max(value = 180, message = "The Number must be less then or equal to '180'")
    private Float longitude;

    @NonNull
    private LocalTime scheduleFrom;

    @NonNull
    private LocalTime scheduleTill;

    public BankBranch(@NonNull String city, @NonNull String street, @NonNull String house, String housing, @NonNull Float latitude, @NonNull Float longitude, @NonNull LocalTime scheduleFrom, @NonNull LocalTime scheduleTill) {
        this.city = city;
        this.street = street;
        this.house = house;
        this.housing = housing;
        this.latitude = latitude;
        this.longitude = longitude;
        this.scheduleFrom = scheduleFrom;
        this.scheduleTill = scheduleTill;
    }
}
