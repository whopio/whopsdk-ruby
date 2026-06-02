# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#balance
    class WalletBalanceResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::WalletBalanceResponse::Object]
      required :object, enum: -> { WhopSDK::Models::WalletBalanceResponse::Object }

      # @!attribute tokens
      #
      #   @return [Array<WhopSDK::Models::WalletBalanceResponse::Token>]
      required :tokens, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::WalletBalanceResponse::Token] }

      # @!attribute total_usd
      #
      #   @return [String]
      required :total_usd, String

      # @!method initialize(object:, tokens:, total_usd:)
      #   @param object [Symbol, WhopSDK::Models::WalletBalanceResponse::Object]
      #   @param tokens [Array<WhopSDK::Models::WalletBalanceResponse::Token>]
      #   @param total_usd [String]

      # @see WhopSDK::Models::WalletBalanceResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        BALANCE = :balance

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Token < WhopSDK::Internal::Type::BaseModel
        # @!attribute balance
        #
        #   @return [String]
        required :balance, String

        # @!attribute icon_url
        #
        #   @return [String, nil]
        required :icon_url, String, nil?: true

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute price_usd
        #
        #   @return [Float]
        required :price_usd, Float

        # @!attribute symbol
        #
        #   @return [String]
        required :symbol, String

        # @!attribute token_address
        #
        #   @return [String, nil]
        required :token_address, String, nil?: true

        # @!attribute value_usd
        #
        #   @return [String]
        required :value_usd, String

        # @!method initialize(balance:, icon_url:, name:, price_usd:, symbol:, token_address:, value_usd:)
        #   @param balance [String]
        #   @param icon_url [String, nil]
        #   @param name [String]
        #   @param price_usd [Float]
        #   @param symbol [String]
        #   @param token_address [String, nil]
        #   @param value_usd [String]
      end
    end
  end
end
