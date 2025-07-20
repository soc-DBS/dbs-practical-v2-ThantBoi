/*
  Warnings:

  - Added the required column `crse_code` to the `student` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dob` to the `student` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nationality` to the `student` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "student" ADD COLUMN     "crse_code" VARCHAR(5) NOT NULL,
ADD COLUMN     "dob" DATE NOT NULL,
ADD COLUMN     "nationality" VARCHAR(30) NOT NULL,
ALTER COLUMN "home_phone" SET DATA TYPE CHAR(8);

-- CreateTable
CREATE TABLE "stud_mod_performance" (
    "adm_no" CHAR(4) NOT NULL,
    "mod_registered" VARCHAR(10) NOT NULL,
    "mark" INTEGER NOT NULL,
    "grade" CHAR(2) NOT NULL,

    CONSTRAINT "stud_mod_performance_pkey" PRIMARY KEY ("adm_no","mod_registered")
);
