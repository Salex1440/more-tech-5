package com.salex.bank_search_service;

import com.salex.bank_search_service.model.BankBranch;
import com.salex.bank_search_service.repository.BankBranchRepository;
import io.r2dbc.spi.ConnectionFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Profile;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.r2dbc.connection.init.ConnectionFactoryInitializer;
import org.springframework.r2dbc.connection.init.ResourceDatabasePopulator;
import org.springframework.r2dbc.core.DatabaseClient;
import reactor.core.publisher.Flux;

import java.time.LocalTime;
import java.util.Arrays;
import java.util.List;

@SpringBootApplication(scanBasePackages = {"com.salex.bank_search_service"})
public class BankSearchServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(BankSearchServiceApplication.class, args);
	}

//	@Bean
//	@Profile("dev")
//	CommandLineRunner commandLineRunner(DatabaseClient client, BankBranchRepository bankBranchRepository) {
//		return args -> {
////			initTable(client);
//			insertValues(bankBranchRepository);
//		};
//	}
//
//	private void initTable(DatabaseClient client) {
//		List<String> statements = Arrays.asList(
//			"DROP TABLE IF EXISTS bank_branch;",
//			"CREATE TABLE bank_branch (" +
//				"id INT AUTO_INCREMENT NOT NULL, " +
//				"city VARCHAR(255) NOT NULL," +
//				" street VARCHAR(255) NOT NULL," +
//				" house VARCHAR(10) NOT NULL," +
//				" housing VARCHAR(10) NOT NULL," +
//				" latitude FLOAT NOT NULL," +
//				" longitude FLOAT NOT NULL," +
//				" schedule_from TIME NOT NULL," +
//				" schedule_till TIME NOT NULL" +
//				");");
//
//		statements.forEach(it -> client.sql(it));
//	}
//
//	private void insertValues(BankBranchRepository bankBranchRepository) {
//		bankBranchRepository.deleteAll()
//			.thenMany(bankBranchRepository.saveAll(
//				Flux.just(
//					new BankBranch("Город", "Улица", "дом1", "корпус", 55.55F, 22.32F, LocalTime.of(8, 0, 0, 0), LocalTime.of(22, 0, 0, 0)),
//					new BankBranch("Город", "Улица", "дом2", "корпус", 66.55F, 33.32F, LocalTime.of(8, 0, 0, 0), LocalTime.of(22, 0, 0, 0)),
//					new BankBranch("Город", "Улица", "дом3", "корпус", 77.55F, 44.32F, LocalTime.of(8, 0, 0, 0), LocalTime.of(22, 0, 0, 0))
//				)
//			));
//	}

}
