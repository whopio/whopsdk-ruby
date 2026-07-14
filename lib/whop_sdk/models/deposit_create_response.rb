# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Deposits#create
    class DepositCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute account_id
      #   Account ID of the destination owner. Null for raw wallet address destinations.
      #
      #   @return [String, nil]
      required :account_id, String, nil?: true

      # @!attribute hosted_url
      #   URL of the hosted deposit page. Only present for business destinations.
      #
      #   @return [String, nil]
      required :hosted_url, String, nil?: true

      # @!attribute metadata
      #   Metadata from the request.
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute methods_
      #   Available deposit methods for destination.
      #
      #   @return [WhopSDK::Models::DepositCreateResponse::Methods]
      required :methods_, -> { WhopSDK::Models::DepositCreateResponse::Methods }, api_name: :methods

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::DepositCreateResponse::Object]
      required :object, enum: -> { WhopSDK::Models::DepositCreateResponse::Object }

      # @!attribute amount
      #   Requested deposit amount.
      #
      #   @return [String, nil]
      optional :amount, String

      # @!method initialize(account_id:, hosted_url:, metadata:, methods_:, object:, amount: nil)
      #   @param account_id [String, nil] Account ID of the destination owner. Null for raw wallet address destinations.
      #
      #   @param hosted_url [String, nil] URL of the hosted deposit page. Only present for business destinations.
      #
      #   @param metadata [Hash{Symbol=>Object}] Metadata from the request.
      #
      #   @param methods_ [WhopSDK::Models::DepositCreateResponse::Methods] Available deposit methods for destination.
      #
      #   @param object [Symbol, WhopSDK::Models::DepositCreateResponse::Object]
      #
      #   @param amount [String] Requested deposit amount.

      # @see WhopSDK::Models::DepositCreateResponse#methods_
      class Methods < WhopSDK::Internal::Type::BaseModel
        # @!attribute bank
        #   Bank deposit details. Only present when bank deposits are active for the
        #   destination account.
        #
        #   @return [WhopSDK::Models::DepositCreateResponse::Methods::Bank, nil]
        required :bank, -> { WhopSDK::Models::DepositCreateResponse::Methods::Bank }, nil?: true

        # @!attribute crypto
        #   Crypto networks available for this deposit, each with its on-chain deposit
        #   address and the tokens accepted on that network.
        #
        #   @return [Array<WhopSDK::Models::DepositCreateResponse::Methods::Crypto>]
        required :crypto,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::DepositCreateResponse::Methods::Crypto] }

        # @!method initialize(bank:, crypto:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::DepositCreateResponse::Methods} for more details.
        #
        #   Available deposit methods for destination.
        #
        #   @param bank [WhopSDK::Models::DepositCreateResponse::Methods::Bank, nil] Bank deposit details. Only present when bank deposits are active for the destina
        #
        #   @param crypto [Array<WhopSDK::Models::DepositCreateResponse::Methods::Crypto>] Crypto networks available for this deposit, each with its on-chain deposit addre

        # @see WhopSDK::Models::DepositCreateResponse::Methods#bank
        class Bank < WhopSDK::Internal::Type::BaseModel
          # @!attribute currencies
          #   Bank transfer currencies available for this deposit.
          #
          #   @return [Array<WhopSDK::Models::DepositCreateResponse::Methods::Bank::Currency>]
          required :currencies,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::DepositCreateResponse::Methods::Bank::Currency] }

          # @!method initialize(currencies:)
          #   Bank deposit details. Only present when bank deposits are active for the
          #   destination account.
          #
          #   @param currencies [Array<WhopSDK::Models::DepositCreateResponse::Methods::Bank::Currency>] Bank transfer currencies available for this deposit.

          class Currency < WhopSDK::Internal::Type::BaseModel
            # @!attribute account_number
            #   Bank account number for deposits in this currency.
            #
            #   @return [String, nil]
            required :account_number, String, nil?: true

            # @!attribute currency
            #   Currency supported by these bank instructions.
            #
            #   @return [String]
            required :currency, String

            # @!attribute deposit_bank_name
            #   Receiving bank name.
            #
            #   @return [String, nil]
            required :deposit_bank_name, String, nil?: true

            # @!attribute deposit_beneficiary_name
            #   Beneficiary name to use for transfer.
            #
            #   @return [String, nil]
            required :deposit_beneficiary_name, String, nil?: true

            # @!attribute deposit_reference
            #   Reference to include with bank transfer.
            #
            #   @return [String, nil]
            required :deposit_reference, String, nil?: true

            # @!attribute rails
            #   Active deposit rails for this currency, such as `ach`, `wire`, or `sepa`.
            #
            #   @return [Array<String>]
            required :rails, WhopSDK::Internal::Type::ArrayOf[String]

            # @!attribute routing_number
            #   Bank routing number for deposits in this currency.
            #
            #   @return [String, nil]
            required :routing_number, String, nil?: true

            # @!method initialize(account_number:, currency:, deposit_bank_name:, deposit_beneficiary_name:, deposit_reference:, rails:, routing_number:)
            #   @param account_number [String, nil] Bank account number for deposits in this currency.
            #
            #   @param currency [String] Currency supported by these bank instructions.
            #
            #   @param deposit_bank_name [String, nil] Receiving bank name.
            #
            #   @param deposit_beneficiary_name [String, nil] Beneficiary name to use for transfer.
            #
            #   @param deposit_reference [String, nil] Reference to include with bank transfer.
            #
            #   @param rails [Array<String>] Active deposit rails for this currency, such as `ach`, `wire`, or `sepa`.
            #
            #   @param routing_number [String, nil] Bank routing number for deposits in this currency.
          end
        end

        class Crypto < WhopSDK::Internal::Type::BaseModel
          # @!attribute deposit_address
          #   Address to send funds to on this network. Null when the provider has not issued
          #   one yet.
          #
          #   @return [String, nil]
          required :deposit_address, String, nil?: true

          # @!attribute icon_url
          #   Network icon URL.
          #
          #   @return [String, nil]
          required :icon_url, String, nil?: true

          # @!attribute name
          #   Network display name, such as `Ethereum` or `Solana`.
          #
          #   @return [String]
          required :name, String

          # @!attribute supported_currencies
          #   Tokens accepted for deposit on this network.
          #
          #   @return [Array<WhopSDK::Models::DepositCreateResponse::Methods::Crypto::SupportedCurrency>]
          required :supported_currencies,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::DepositCreateResponse::Methods::Crypto::SupportedCurrency] }

          # @!method initialize(deposit_address:, icon_url:, name:, supported_currencies:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::DepositCreateResponse::Methods::Crypto} for more details.
          #
          #   @param deposit_address [String, nil] Address to send funds to on this network. Null when the provider has not issued
          #
          #   @param icon_url [String, nil] Network icon URL.
          #
          #   @param name [String] Network display name, such as `Ethereum` or `Solana`.
          #
          #   @param supported_currencies [Array<WhopSDK::Models::DepositCreateResponse::Methods::Crypto::SupportedCurrency>] Tokens accepted for deposit on this network.

          class SupportedCurrency < WhopSDK::Internal::Type::BaseModel
            # @!attribute icon_url
            #   Token icon URL. Null when no icon is available.
            #
            #   @return [String, nil]
            required :icon_url, String, nil?: true

            # @!attribute name
            #   Token symbol, such as `USDC`.
            #
            #   @return [String]
            required :name, String

            # @!method initialize(icon_url:, name:)
            #   @param icon_url [String, nil] Token icon URL. Null when no icon is available.
            #
            #   @param name [String] Token symbol, such as `USDC`.
          end
        end
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
