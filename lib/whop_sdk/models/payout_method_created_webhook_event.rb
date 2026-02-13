# frozen_string_literal: true

module WhopSDK
  module Models
    class PayoutMethodCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   A configured payout destination where a user receives earned funds, such as a
      #   bank account or digital wallet.
      #
      #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"payout_method.created"]
      required :type, const: :"payout_method.created"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"payout_method.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PayoutMethodCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data] A configured payout destination where a user receives earned funds, such as a ba
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"payout_method.created"] The webhook event type

      # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payout token.
        #
        #   @return [String]
        required :id, String

        # @!attribute account_reference
        #   A masked identifier for the payout destination, such as the last four digits of
        #   a bank account or an email address. Null if no reference is available.
        #
        #   @return [String, nil]
        required :account_reference, String, nil?: true

        # @!attribute company
        #   The company associated with this payout destination. Null if not linked to a
        #   specific company.
        #
        #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Company, nil]
        required :company, -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Company }, nil?: true

        # @!attribute created_at
        #   The datetime the payout token was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   The three-letter ISO currency code that payouts are delivered in for this
        #   destination.
        #
        #   @return [String]
        required :currency, String

        # @!attribute destination
        #   The payout destination configuration linked to this token. Null if not yet
        #   configured.
        #
        #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Destination, nil]
        required :destination, -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination }, nil?: true

        # @!attribute institution_name
        #   The name of the bank or financial institution receiving payouts. Null if not
        #   applicable or not provided.
        #
        #   @return [String, nil]
        required :institution_name, String, nil?: true

        # @!attribute is_default
        #   Whether this is the default payout destination for the associated payout
        #   account.
        #
        #   @return [Boolean]
        required :is_default, WhopSDK::Internal::Type::Boolean

        # @!attribute nickname
        #   A user-defined label to help identify this payout destination. Not sent to the
        #   provider. Null if no nickname has been set.
        #
        #   @return [String, nil]
        required :nickname, String, nil?: true

        # @!method initialize(id:, account_reference:, company:, created_at:, currency:, destination:, institution_name:, is_default:, nickname:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data} for more details.
        #
        #   A configured payout destination where a user receives earned funds, such as a
        #   bank account or digital wallet.
        #
        #   @param id [String] The unique identifier for the payout token.
        #
        #   @param account_reference [String, nil] A masked identifier for the payout destination, such as the last four digits of
        #
        #   @param company [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Company, nil] The company associated with this payout destination. Null if not linked to a spe
        #
        #   @param created_at [Time] The datetime the payout token was created.
        #
        #   @param currency [String] The three-letter ISO currency code that payouts are delivered in for this destin
        #
        #   @param destination [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Destination, nil] The payout destination configuration linked to this token. Null if not yet confi
        #
        #   @param institution_name [String, nil] The name of the bank or financial institution receiving payouts. Null if not app
        #
        #   @param is_default [Boolean] Whether this is the default payout destination for the associated payout account
        #
        #   @param nickname [String, nil] A user-defined label to help identify this payout destination. Not sent to the p

        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#company
        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the company.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The company associated with this payout destination. Null if not linked to a
          #   specific company.
          #
          #   @param id [String] The unique identifier for the company.
        end

        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#destination
        class Destination < WhopSDK::Internal::Type::BaseModel
          # @!attribute category
          #   The category of the payout destination
          #
          #   @return [Symbol, WhopSDK::Models::PayoutDestinationCategory]
          required :category, enum: -> { WhopSDK::PayoutDestinationCategory }

          # @!attribute country_code
          #   The country code of the payout destination
          #
          #   @return [String]
          required :country_code, String

          # @!attribute name
          #   The name of the payer associated with the payout destination
          #
          #   @return [String]
          required :name, String

          # @!method initialize(category:, country_code:, name:)
          #   The payout destination configuration linked to this token. Null if not yet
          #   configured.
          #
          #   @param category [Symbol, WhopSDK::Models::PayoutDestinationCategory] The category of the payout destination
          #
          #   @param country_code [String] The country code of the payout destination
          #
          #   @param name [String] The name of the payer associated with the payout destination
        end
      end
    end
  end
end
