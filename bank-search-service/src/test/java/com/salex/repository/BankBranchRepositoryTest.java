package com.salex.repository;

import com.salex.bank_search_service.model.BankBranch;
import com.salex.bank_search_service.repository.BankBranchRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.data.r2dbc.DataR2dbcTest;
import org.springframework.r2dbc.core.DatabaseClient;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Hooks;
import reactor.test.StepVerifier;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@DataR2dbcTest
class BankBranchRepositoryTest {

    @Autowired
    private BankBranchRepository bankBranchRepository;
    @Autowired
    private DatabaseClient client;

    @BeforeEach
    void setUp() {
        Hooks.onOperatorDebug();

        List<String> statements = Arrays.asList(//
            "DROP TABLE IF EXISTS bank_branch;",
            "CREATE TABLE bank_branch (" +
                "id INT AUTO_INCREMENT NOT NULL, " +
                "city VARCHAR(255) NOT NULL," +
                " street VARCHAR(255) NOT NULL," +
                " house VARCHAR(10) NOT NULL," +
                " housing VARCHAR(10) NOT NULL," +
                " latitude FLOAT NOT NULL," +
                " longitude FLOAT NOT NULL," +
                " schedule_from TIME NOT NULL," +
                " schedule_till TIME NOT NULL" +
                ");");

        statements.forEach(it -> client.sql(it) //
            .fetch() //
            .rowsUpdated() //
            .as(StepVerifier::create) //
            .expectNextCount(1) //
            .verifyComplete());

        Flux<BankBranch> deleteAndInsert = bankBranchRepository.deleteAll()
            .thenMany(bankBranchRepository.saveAll(
                Flux.just(
                    new BankBranch("Город", "Улица", "дом1", "корпус", 55.55F, 22.32F, LocalTime.of(8, 0, 0, 0), LocalTime.of(22, 0, 0, 0)),
                    new BankBranch("Город", "Улица", "дом2", "корпус", 66.55F, 33.32F, LocalTime.of(8, 0, 0, 0), LocalTime.of(22, 0, 0, 0)),
                    new BankBranch("Город", "Улица", "дом3", "корпус", 77.55F, 44.32F, LocalTime.of(8, 0, 0, 0), LocalTime.of(22, 0, 0, 0))
                )
            ));

        StepVerifier.create(deleteAndInsert)
            .expectNextCount(3)
            .verifyComplete();
    }

    @Test
    public void shouldSaveAndFetchBankBranches() {
        Flux<BankBranch> all = bankBranchRepository.findAllBetweenCoordinates(60, 30, 70, 40);

        StepVerifier.create(all)
                .expectNextCount(1)
                    .recordWith(ArrayList::new)
                    .thenConsumeWhile(x -> true)
                    .consumeRecordedWith(banks -> {
                        assertThat(banks).hasSize(1);
                        assertThat(banks).contains(new BankBranch("Город", "Улица", "дом2", "корпус", 66.55F, 33.32F, LocalTime.of(8, 0, 0, 0), LocalTime.of(22, 0, 0, 0)));
                    });
        all.subscribe(System.out::println);
    }

}