package com.salex.model;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import java.time.LocalTime;

@Data
@NoArgsConstructor
@EqualsAndHashCode(exclude = "id")
@Table("bank_branch")
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
    private Float latitude;

    @NonNull
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
