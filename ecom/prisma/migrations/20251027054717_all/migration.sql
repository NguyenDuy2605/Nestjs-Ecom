-- DropForeignKey
ALTER TABLE "public"."Review" DROP CONSTRAINT "Review_orderId_fkey";

-- DropForeignKey
ALTER TABLE "public"."ReviewMedia" DROP CONSTRAINT "ReviewMedia_reviewId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Websocket" DROP CONSTRAINT "Websocket_userId_fkey";

-- DropIndex
DROP INDEX "public"."VerificationCode_email_type_key";
