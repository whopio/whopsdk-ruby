# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Deposits#create
    class DepositCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [String]
      required :amount, String

      # @!attribute deposit_address
      #
      #   @return [WhopSDK::Models::DepositCreateResponse::DepositAddress]
      required :deposit_address, -> { WhopSDK::Models::DepositCreateResponse::DepositAddress }

      # @!attribute destination
      #
      #   @return [WhopSDK::Models::DepositCreateResponse::Destination]
      required :destination, -> { WhopSDK::Models::DepositCreateResponse::Destination }

      # @!attribute hosted_url
      #
      #   @return [String, nil]
      required :hosted_url, String, nil?: true

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::DepositCreateResponse::Object]
      required :object, enum: -> { WhopSDK::Models::DepositCreateResponse::Object }

      # @!method initialize(amount:, deposit_address:, destination:, hosted_url:, metadata:, object:)
      #   @param amount [String]
      #   @param deposit_address [WhopSDK::Models::DepositCreateResponse::DepositAddress]
      #   @param destination [WhopSDK::Models::DepositCreateResponse::Destination]
      #   @param hosted_url [String, nil]
      #   @param metadata [Hash{Symbol=>Object}]
      #   @param object [Symbol, WhopSDK::Models::DepositCreateResponse::Object]

      # @see WhopSDK::Models::DepositCreateResponse#deposit_address
      class DepositAddress < WhopSDK::Internal::Type::BaseModel
        # @!attribute evm
        #
        #   @return [String]
        required :evm, String

        # @!attribute solana
        #
        #   @return [String]
        required :solana, String

        # @!method initialize(evm:, solana:)
        #   @param evm [String]
        #   @param solana [String]
      end

      # @see WhopSDK::Models::DepositCreateResponse#destination
      class Destination < WhopSDK::Internal::Type::BaseModel
        # @!attribute address
        #
        #   @return [String]
        required :address, String

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute network
        #
        #   @return [String]
        required :network, String

        # @!attribute account_id
        #
        #   @return [String, nil]
        optional :account_id, String, nil?: true

        # @!method initialize(address:, currency:, network:, account_id: nil)
        #   @param address [String]
        #   @param currency [String]
        #   @param network [String]
        #   @param account_id [String, nil]
      end

      # @see WhopSDK::Models::DepositCreateResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        DEPOSIT = :deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
