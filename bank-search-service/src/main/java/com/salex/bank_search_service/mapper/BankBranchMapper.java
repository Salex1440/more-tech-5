package com.salex.bank_search_service.mapper;

import com.salex.bank_search_service.dto.BankBranchDto;
import com.salex.bank_search_service.model.BankBranch;
import org.springframework.stereotype.Component;

@Component
public class BankBranchMapper {

    public BankBranchDto toDto(BankBranch bankBranch) {
        return BankBranchDto.builder()
            .city(bankBranch.getCity())
            .street(bankBranch.getStreet())
            .house(bankBranch.getHouse())
            .housing(bankBranch.getHousing())
            .latitude(bankBranch.getLatitude())
            .longitude(bankBranch.getLongitude())
            .scheduleFrom(bankBranch.getScheduleFrom())
            .scheduleTill(bankBranch.getScheduleTill())
            .individual(bankBranch.getIndividual())
            .legalEntity(bankBranch.getLegalEntity())
            .forInvalid(bankBranch.getForInvalid())
            .privilegy(bankBranch.getPrivilegy())
            .weekend(bankBranch.getWeekend())
            .lateEvening(bankBranch.getLateEvening())
            .waitingTime(bankBranch.getWaitingTime())
            .reviewAmount(bankBranch.getReviewAmount())
            .build();
    }
}
