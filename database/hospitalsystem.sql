-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 02:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `patientID` int(11) NOT NULL,
  `doctorID` int(11) NOT NULL,
  `ADate` date DEFAULT NULL,
  `ATIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`patientID`, `doctorID`, `ADate`, `ATIME`) VALUES
(1, 106, '2023-01-15', '10:00:00'),
(2, 107, '2023-01-16', '11:30:00'),
(3, 108, '2023-01-17', '14:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `companion`
--

CREATE TABLE `companion` (
  `companion_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companion`
--

INSERT INTO `companion` (`companion_ID`, `Name`, `Address`, `patient_id`) VALUES
(201, 'Shahd', '123 Main St', 1),
(202, 'mohamed', '456 Oak St', 2),
(203, 'omar', '789 Pine St', 3),
(204, 'Mahmoud', '111 Elm St', 4),
(205, 'raghdan', '222 Maple St', 5);

-- --------------------------------------------------------

--
-- Table structure for table `companion_phone`
--

CREATE TABLE `companion_phone` (
  `phone` int(11) DEFAULT NULL,
  `companion_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companion_phone`
--

INSERT INTO `companion_phone` (`phone`, `companion_id`, `patient_id`) VALUES
(12345, 201, 1),
(98765, 202, 2),
(54321, 203, 3),
(12398, 204, 4),
(56789, 205, 5);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_ID` int(11) NOT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `DepartmentName`, `hospital_id`) VALUES
(1, 'Cardiology', 1),
(2, 'Orthopedics', 1),
(3, 'Pediatrics', 1),
(4, 'Oncology', 1),
(5, 'Neurology', 1),
(6, 'Radiology', 1),
(7, 'Surgery', 1),
(8, 'Gynecology', 1),
(9, 'Dermatology', 1),
(10, 'Urology', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `Doctor_ID` int(11) NOT NULL,
  `speciality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`Doctor_ID`, `speciality`) VALUES
(106, 'Medical Doctor'),
(107, 'Physical Therapist'),
(108, 'Surgeon');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Employee_ID` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Employee_ID`, `position`) VALUES
(104, 'Nutritionist'),
(105, 'CEO'),
(109, 'MANAGEMENT'),
(110, 'ACCOUNTING');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `Hospital_ID` int(11) NOT NULL,
  `HospitalName` varchar(50) DEFAULT NULL,
  `Hospital_Address` varchar(50) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hospital_ID`, `HospitalName`, `Hospital_Address`, `State`, `zipcode`) VALUES
(1, 'Alexandria Hospital', '123 Smouha Street', 'Alexandria', 123);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_phone`
--

CREATE TABLE `hospital_phone` (
  `phone_number` bigint(20) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital_phone`
--

INSERT INTO `hospital_phone` (`phone_number`, `hospital_id`) VALUES
(1234567890, 1),
(9876543210, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceNum` int(11) NOT NULL,
  `patientid` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `service_description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceNum`, `patientid`, `cost`, `total`, `service_description`) VALUES
(501, 1, 50, 50, 'Consultation'),
(502, 2, 75, 75, 'X-Ray'),
(503, 3, 100, 100, 'Blood Test'),
(504, 4, 120, 120, 'MRI'),
(505, 5, 80, 80, 'Physical Examination');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `Nurse_ID` int(11) NOT NULL,
  `shift` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`Nurse_ID`, `shift`) VALUES
(101, 'Day'),
(102, 'Day'),
(103, 'Night');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `patient_fname` varchar(20) DEFAULT NULL,
  `patient_lname` varchar(20) DEFAULT NULL,
  `patient_address` varchar(50) DEFAULT NULL,
  `patient_phone` int(11) DEFAULT NULL,
  `pharmacy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_fname`, `patient_lname`, `patient_address`, `patient_phone`, `pharmacy_id`) VALUES
(1, 'Shahd', 'Karam', '123 Main St', NULL, 301),
(2, 'Abdulrahman', 'Salah', '456 Oak St', NULL, 302),
(3, 'Shady', 'Alaa', '789 Pine St', NULL, 303),
(4, 'Mariam', 'Osama', '101 Elm St', NULL, 304),
(5, 'Mariam', 'Salah', '202 Cedar St', NULL, 305);

-- --------------------------------------------------------

--
-- Table structure for table `patient_phone`
--

CREATE TABLE `patient_phone` (
  `patient_phone` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_phone`
--

INSERT INTO `patient_phone` (`patient_phone`, `patient_id`) VALUES
(-679, 1),
(-5123, 2),
(-9321, 3),
(-3766, 4),
(-8210, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `pharmacy_ID` int(11) NOT NULL,
  `pharmacy_Name` varchar(20) DEFAULT NULL,
  `pharmacy_Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`pharmacy_ID`, `pharmacy_Name`, `pharmacy_Address`) VALUES
(301, 'Health Plus Pharmacy', '123 Main St'),
(302, 'MediCare Pharmacy', '456 Oak St'),
(303, 'City Drugstore', '789 Pine St'),
(304, 'QuickScript Pharmacy', '101 Elm St'),
(305, 'Metro Pharmacy', '202 Birch St');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_phone`
--

CREATE TABLE `pharmacy_phone` (
  `pharmacy_phone` int(11) DEFAULT NULL,
  `pharmacy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacy_phone`
--

INSERT INTO `pharmacy_phone` (`pharmacy_phone`, `pharmacy_id`) VALUES
(12345, 301),
(98765, 302),
(54321, 303),
(12398, 304),
(56789, 305);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `pharmacy_id` int(11) DEFAULT NULL,
  `prescription_num` int(11) NOT NULL,
  `medicationName` varchar(20) DEFAULT NULL,
  `prescription_date` time DEFAULT NULL,
  `prescription_cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`pharmacy_id`, `prescription_num`, `medicationName`, `prescription_date`, `prescription_cost`) VALUES
(301, 1, 'Aspirin', '08:30:00', 10),
(302, 2, 'Paracetamol', '09:45:00', 15),
(303, 3, 'Ibuprofen', '10:30:00', 20),
(304, 4, 'Amoxicillin', '11:15:00', 25),
(305, 5, 'Ciprofloxacin', '12:00:00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_Number` int(11) NOT NULL,
  `Admission_Data` varchar(50) DEFAULT NULL,
  `Patient_id` int(11) DEFAULT NULL,
  `Nurse_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_Number`, `Admission_Data`, `Patient_id`, `Nurse_ID`) VALUES
(1001, '2023-01-01', 1, 101),
(1002, '2023-02-15', 2, 102),
(1003, '2023-03-20', 3, 103);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_ID` int(11) NOT NULL,
  `Dep_ID` int(11) DEFAULT NULL,
  `staff_FName` varchar(20) DEFAULT NULL,
  `staff_LName` varchar(50) DEFAULT NULL,
  `staff_Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_ID`, `Dep_ID`, `staff_FName`, `staff_LName`, `staff_Address`) VALUES
(101, 1, 'John', 'Doe', '123 Main St'),
(102, 2, 'Jane', 'Smith', '456 Oak St'),
(103, 3, 'Robert', 'Johnson', '789 Pine St'),
(104, 4, 'Emily', 'White', '101 Elm St'),
(105, 5, 'Michael', 'Miller', '202 Birch St'),
(106, 6, 'Sophia', 'Anderson', '303 Cedar St'),
(107, 7, 'David', 'Brown', '404 Walnut St'),
(108, 8, 'Olivia', 'Jones', '505 Maple St'),
(109, 9, 'William', 'Taylor', '606 Cedar St'),
(110, 10, 'Ava', 'Martin', '707 Oak St');

-- --------------------------------------------------------

--
-- Table structure for table `staff_phone`
--

CREATE TABLE `staff_phone` (
  `staff_phone` bigint(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_phone`
--

INSERT INTO `staff_phone` (`staff_phone`, `staff_id`) VALUES
(123456789012, 101),
(987654321098, 102),
(555111222233, 103),
(111222333344, 104),
(888777666655, 105),
(444333222211, 106),
(666777888899, 107),
(999888777766, 108),
(333444555577, 109),
(777888999988, 110);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`patientID`,`doctorID`),
  ADD KEY `doctorID` (`doctorID`);

--
-- Indexes for table `companion`
--
ALTER TABLE `companion`
  ADD PRIMARY KEY (`companion_ID`,`patient_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `companion_phone`
--
ALTER TABLE `companion_phone`
  ADD KEY `companion_id` (`companion_id`,`patient_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`Hospital_ID`);

--
-- Indexes for table `hospital_phone`
--
ALTER TABLE `hospital_phone`
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceNum`),
  ADD KEY `patientid` (`patientid`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`Nurse_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `pharmacy_id` (`pharmacy_id`);

--
-- Indexes for table `patient_phone`
--
ALTER TABLE `patient_phone`
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`pharmacy_ID`);

--
-- Indexes for table `pharmacy_phone`
--
ALTER TABLE `pharmacy_phone`
  ADD KEY `pharmacy_id` (`pharmacy_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescription_num`),
  ADD KEY `pharmacy_id` (`pharmacy_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_Number`),
  ADD KEY `Patient_id` (`Patient_id`),
  ADD KEY `Nurse_ID` (`Nurse_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_ID`),
  ADD KEY `Dep_ID` (`Dep_ID`);

--
-- Indexes for table `staff_phone`
--
ALTER TABLE `staff_phone`
  ADD KEY `staff_id` (`staff_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`doctorID`) REFERENCES `doctors` (`Doctor_ID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `companion`
--
ALTER TABLE `companion`
  ADD CONSTRAINT `companion_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `companion_phone`
--
ALTER TABLE `companion_phone`
  ADD CONSTRAINT `companion_phone_ibfk_1` FOREIGN KEY (`companion_id`,`patient_id`) REFERENCES `companion` (`companion_ID`, `patient_id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`Hospital_ID`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `staff` (`staff_ID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `staff` (`staff_ID`);

--
-- Constraints for table `hospital_phone`
--
ALTER TABLE `hospital_phone`
  ADD CONSTRAINT `hospital_phone_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`Hospital_ID`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`patientid`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`Nurse_ID`) REFERENCES `staff` (`staff_ID`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`pharmacy_ID`);

--
-- Constraints for table `patient_phone`
--
ALTER TABLE `patient_phone`
  ADD CONSTRAINT `patient_phone_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `pharmacy_phone`
--
ALTER TABLE `pharmacy_phone`
  ADD CONSTRAINT `pharmacy_phone_ibfk_1` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`pharmacy_ID`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`pharmacy_ID`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`Nurse_ID`) REFERENCES `nurse` (`Nurse_ID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`Dep_ID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `staff_phone`
--
ALTER TABLE `staff_phone`
  ADD CONSTRAINT `staff_phone_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
