# frozen_string_literal: true

module WhopSDK
  module Models
    class PayoutAccountStatusUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute data
      #   An object representing an account used for payouts.
      #
      #   @return [WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data]
      required :data, -> { WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"payout_account.status_updated"]
      required :type, const: :"payout_account.status_updated"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"payout_account.status_updated")
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data] An object representing an account used for payouts.
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"payout_account.status_updated"] The webhook event type

      # @see WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payout account.
        #
        #   @return [String]
        required :id, String

        # @!attribute address
        #   The physical address associated with this payout account
        #
        #   @return [WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data::Address, nil]
        required :address, -> { WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address }, nil?: true

        # @!attribute business_name
        #   The company's legal name
        #
        #   @return [String, nil]
        required :business_name, String, nil?: true

        # @!attribute business_representative
        #   The business representative for this payout account
        #
        #   @return [WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative, nil]
        required :business_representative,
                 -> { WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative },
                 nil?: true

        # @!attribute email
        #   The email address of the representative
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute latest_verification
        #   The latest verification for the connected account.
        #
        #   @return [WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification, nil]
        required :latest_verification,
                 -> { WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification },
                 nil?: true

        # @!attribute phone
        #   The business representative's phone
        #
        #   @return [String, nil]
        required :phone, String, nil?: true

        # @!attribute status
        #   The granular calculated statuses reflecting payout account KYC and withdrawal
        #   readiness.
        #
        #   @return [Symbol, WhopSDK::Models::PayoutAccountCalculatedStatuses, nil]
        required :status, enum: -> { WhopSDK::PayoutAccountCalculatedStatuses }, nil?: true

        # @!method initialize(id:, address:, business_name:, business_representative:, email:, latest_verification:, phone:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data} for more
        #   details.
        #
        #   An object representing an account used for payouts.
        #
        #   @param id [String] The unique identifier for the payout account.
        #
        #   @param address [WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data::Address, nil] The physical address associated with this payout account
        #
        #   @param business_name [String, nil] The company's legal name
        #
        #   @param business_representative [WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative, nil] The business representative for this payout account
        #
        #   @param email [String, nil] The email address of the representative
        #
        #   @param latest_verification [WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification, nil] The latest verification for the connected account.
        #
        #   @param phone [String, nil] The business representative's phone
        #
        #   @param status [Symbol, WhopSDK::Models::PayoutAccountCalculatedStatuses, nil] The granular calculated statuses reflecting payout account KYC and withdrawal re

        # @see WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data#address
        class Address < WhopSDK::Internal::Type::BaseModel
          # @!attribute city
          #   The city of the address.
          #
          #   @return [String, nil]
          required :city, String, nil?: true

          # @!attribute country
          #   The country of the address.
          #
          #   @return [String, nil]
          required :country, String, nil?: true

          # @!attribute line1
          #   The line 1 of the address.
          #
          #   @return [String, nil]
          required :line1, String, nil?: true

          # @!attribute line2
          #   The line 2 of the address.
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute postal_code
          #   The postal code of the address.
          #
          #   @return [String, nil]
          required :postal_code, String, nil?: true

          # @!attribute state
          #   The state of the address.
          #
          #   @return [String, nil]
          required :state, String, nil?: true

          # @!method initialize(city:, country:, line1:, line2:, postal_code:, state:)
          #   The physical address associated with this payout account
          #
          #   @param city [String, nil] The city of the address.
          #
          #   @param country [String, nil] The country of the address.
          #
          #   @param line1 [String, nil] The line 1 of the address.
          #
          #   @param line2 [String, nil] The line 2 of the address.
          #
          #   @param postal_code [String, nil] The postal code of the address.
          #
          #   @param state [String, nil] The state of the address.
        end

        # @see WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data#business_representative
        class BusinessRepresentative < WhopSDK::Internal::Type::BaseModel
          # @!attribute date_of_birth
          #   The date of birth of the business representative in ISO 8601 format
          #   (YYYY-MM-DD).
          #
          #   @return [String, nil]
          required :date_of_birth, String, nil?: true

          # @!attribute first_name
          #   The first name of the business representative.
          #
          #   @return [String, nil]
          required :first_name, String, nil?: true

          # @!attribute last_name
          #   The last name of the business representative.
          #
          #   @return [String, nil]
          required :last_name, String, nil?: true

          # @!attribute middle_name
          #   The middle name of the business representative.
          #
          #   @return [String, nil]
          required :middle_name, String, nil?: true

          # @!method initialize(date_of_birth:, first_name:, last_name:, middle_name:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative}
          #   for more details.
          #
          #   The business representative for this payout account
          #
          #   @param date_of_birth [String, nil] The date of birth of the business representative in ISO 8601 format (YYYY-MM-DD)
          #
          #   @param first_name [String, nil] The first name of the business representative.
          #
          #   @param last_name [String, nil] The last name of the business representative.
          #
          #   @param middle_name [String, nil] The middle name of the business representative.
        end

        # @see WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data#latest_verification
        class LatestVerification < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the verification.
          #
          #   @return [String]
          required :id, String

          # @!attribute last_error_code
          #   An error code for a verification attempt.
          #
          #   @return [Symbol, WhopSDK::Models::VerificationErrorCode, nil]
          required :last_error_code, enum: -> { WhopSDK::VerificationErrorCode }, nil?: true

          # @!attribute last_error_reason
          #   A human-readable explanation of the most recent verification error. Null if no
          #   error has occurred.
          #
          #   @return [String, nil]
          required :last_error_reason, String, nil?: true

          # @!attribute status
          #   The current status of this verification session.
          #
          #   @return [Symbol, WhopSDK::Models::VerificationStatus]
          required :status, enum: -> { WhopSDK::VerificationStatus }

          # @!method initialize(id:, last_error_code:, last_error_reason:, status:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification}
          #   for more details.
          #
          #   The latest verification for the connected account.
          #
          #   @param id [String] The unique identifier for the verification.
          #
          #   @param last_error_code [Symbol, WhopSDK::Models::VerificationErrorCode, nil] An error code for a verification attempt.
          #
          #   @param last_error_reason [String, nil] A human-readable explanation of the most recent verification error. Null if no e
          #
          #   @param status [Symbol, WhopSDK::Models::VerificationStatus] The current status of this verification session.
        end
      end
    end
  end
end
