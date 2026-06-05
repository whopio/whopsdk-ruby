# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#create_withdrawal
    class WalletCreateWithdrawalResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #
      #   @return [String]
      required :amount, String

      # @!attribute asset
      #
      #   @return [String]
      required :asset, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::WalletCreateWithdrawalResponse::Object]
      required :object, enum: -> { WhopSDK::Models::WalletCreateWithdrawalResponse::Object }

      # @!attribute payout_method_id
      #
      #   @return [String]
      required :payout_method_id, String

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!attribute fee_amount
      #
      #   @return [String, nil]
      optional :fee_amount, String, nil?: true

      # @!attribute fee_type
      #
      #   @return [String, nil]
      optional :fee_type, String, nil?: true

      # @!attribute speed
      #
      #   @return [String, nil]
      optional :speed, String, nil?: true

      # @!method initialize(id:, amount:, asset:, created_at:, object:, payout_method_id:, status:, fee_amount: nil, fee_type: nil, speed: nil)
      #   @param id [String]
      #   @param amount [String]
      #   @param asset [String]
      #   @param created_at [String]
      #   @param object [Symbol, WhopSDK::Models::WalletCreateWithdrawalResponse::Object]
      #   @param payout_method_id [String]
      #   @param status [String]
      #   @param fee_amount [String, nil]
      #   @param fee_type [String, nil]
      #   @param speed [String, nil]

      # @see WhopSDK::Models::WalletCreateWithdrawalResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        WITHDRAWAL = :withdrawal

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
