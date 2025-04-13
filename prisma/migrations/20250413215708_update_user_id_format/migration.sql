/*
  Warnings:

  - The primary key for the `user_settings` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `id` on the `user_settings` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(8)`.
  - The primary key for the `users` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `id` on the `users` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(8)`.

*/
-- AlterTable
ALTER TABLE "user_settings" DROP CONSTRAINT "user_settings_pkey",
ALTER COLUMN "id" SET DATA TYPE VARCHAR(8),
ADD CONSTRAINT "user_settings_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "users" DROP CONSTRAINT "users_pkey",
ALTER COLUMN "id" SET DATA TYPE VARCHAR(8),
ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");
