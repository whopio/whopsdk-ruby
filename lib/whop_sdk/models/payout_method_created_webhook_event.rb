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
      #   An object representing an user's setup payout destination.
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

      # @!method initialize(id:, data:, timestamp:, api_version: :v1, type: :"payout_method.created")
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data] An object representing an user's setup payout destination.
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"payout_method.created"] The webhook event type

      # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the payout token
        #
        #   @return [String]
        required :id, String

        # @!attribute currency
        #   The currency code of the payout destination. This is the currency that payouts
        #   will be made in for this token.
        #
        #   @return [String]
        required :currency, String

        # @!attribute destination
        #   The payout destination associated with the payout token
        #
        #   @return [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Destination, nil]
        required :destination, -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination }, nil?: true

        # @!attribute nickname
        #   An optional nickname for the payout token to help the user identify it. This is
        #   not used by the provider and is only for the user's reference.
        #
        #   @return [String, nil]
        required :nickname, String, nil?: true

        # @!method initialize(id:, currency:, destination:, nickname:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data} for more details.
        #
        #   An object representing an user's setup payout destination.
        #
        #   @param id [String] The ID of the payout token
        #
        #   @param currency [String] The currency code of the payout destination. This is the currency that payouts w
        #
        #   @param destination [WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Destination, nil] The payout destination associated with the payout token
        #
        #   @param nickname [String, nil] An optional nickname for the payout token to help the user identify it. This is

        # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data#destination
        class Destination < WhopSDK::Internal::Type::BaseModel
          # @!attribute category
          #   The category of the payout destination
          #
          #   @return [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Destination::Category]
          required :category, enum: -> { WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category }

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
          #   The payout destination associated with the payout token
          #
          #   @param category [Symbol, WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Destination::Category] The category of the payout destination
          #
          #   @param country_code [String] The country code of the payout destination
          #
          #   @param name [String] The name of the payer associated with the payout destination

          # The category of the payout destination
          #
          # @see WhopSDK::Models::PayoutMethodCreatedWebhookEvent::Data::Destination#category
          module Category
            extend WhopSDK::Internal::Type::Enum

            CRYPTO = :crypto
            RTP = :rtp
            NEXT_DAY_BANK = :next_day_bank
            BANK_WIRE = :bank_wire
            DIGITAL_WALLET = :digital_wallet
            UNKNOWN = :unknown

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
