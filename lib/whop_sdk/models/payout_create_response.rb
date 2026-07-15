# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payouts#create
    class PayoutCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Payout ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The payout amount in whole currency units.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   When the payout was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Payout currency.
      #
      #   @return [String]
      required :currency, String

      # @!attribute estimated_arrival
      #   Estimated time the funds become available in the destination account. Null until
      #   the payout settles.
      #
      #   @return [Time, nil]
      required :estimated_arrival, Time, nil?: true

      # @!attribute fee_amount
      #   The fee charged for the payout, in the payout currency.
      #
      #   @return [Float]
      required :fee_amount, Float

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::PayoutCreateResponse::Object]
      required :object, enum: -> { WhopSDK::Models::PayoutCreateResponse::Object }

      # @!attribute payer_name
      #   Name of the entity processing the payout. Null until the payout settles.
      #
      #   @return [String, nil]
      required :payer_name, String, nil?: true

      # @!attribute payout_token
      #   The saved payout method used. Requires payout:destination:read; null without it.
      #
      #   @return [WhopSDK::Models::PayoutCreateResponse::PayoutToken, nil]
      required :payout_token, -> { WhopSDK::Models::PayoutCreateResponse::PayoutToken }, nil?: true

      # @!attribute speed
      #   Payout delivery speed.
      #
      #   @return [Symbol, WhopSDK::Models::PayoutCreateResponse::Speed]
      required :speed, enum: -> { WhopSDK::Models::PayoutCreateResponse::Speed }

      # @!attribute status
      #   Current payout status, in the same vocabulary as GET /payouts.
      #
      #   @return [Symbol, WhopSDK::Models::PayoutCreateResponse::Status]
      required :status, enum: -> { WhopSDK::Models::PayoutCreateResponse::Status }

      # @!method initialize(id:, amount:, created_at:, currency:, estimated_arrival:, fee_amount:, object:, payer_name:, payout_token:, speed:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PayoutCreateResponse} for more details.
      #
      #   @param id [String] Payout ID.
      #
      #   @param amount [Float] The payout amount in whole currency units.
      #
      #   @param created_at [Time] When the payout was created.
      #
      #   @param currency [String] Payout currency.
      #
      #   @param estimated_arrival [Time, nil] Estimated time the funds become available in the destination account. Null until
      #
      #   @param fee_amount [Float] The fee charged for the payout, in the payout currency.
      #
      #   @param object [Symbol, WhopSDK::Models::PayoutCreateResponse::Object]
      #
      #   @param payer_name [String, nil] Name of the entity processing the payout. Null until the payout settles.
      #
      #   @param payout_token [WhopSDK::Models::PayoutCreateResponse::PayoutToken, nil] The saved payout method used. Requires payout:destination:read; null without it.
      #
      #   @param speed [Symbol, WhopSDK::Models::PayoutCreateResponse::Speed] Payout delivery speed.
      #
      #   @param status [Symbol, WhopSDK::Models::PayoutCreateResponse::Status] Current payout status, in the same vocabulary as GET /payouts.

      # @see WhopSDK::Models::PayoutCreateResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        PAYOUT = :payout

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::PayoutCreateResponse#payout_token
      class PayoutToken < WhopSDK::Internal::Type::BaseModel
        # @!attribute nickname
        #   Saved payout method nickname.
        #
        #   @return [String, nil]
        required :nickname, String, nil?: true

        # @!attribute payout_destination
        #   Payout destination display details.
        #
        #   @return [WhopSDK::Models::PayoutCreateResponse::PayoutToken::PayoutDestination, nil]
        required :payout_destination,
                 -> { WhopSDK::Models::PayoutCreateResponse::PayoutToken::PayoutDestination },
                 nil?: true

        # @!method initialize(nickname:, payout_destination:)
        #   The saved payout method used. Requires payout:destination:read; null without it.
        #
        #   @param nickname [String, nil] Saved payout method nickname.
        #
        #   @param payout_destination [WhopSDK::Models::PayoutCreateResponse::PayoutToken::PayoutDestination, nil] Payout destination display details.

        # @see WhopSDK::Models::PayoutCreateResponse::PayoutToken#payout_destination
        class PayoutDestination < WhopSDK::Internal::Type::BaseModel
          # @!attribute icon_url
          #   Payout destination icon URL.
          #
          #   @return [String, nil]
          required :icon_url, String, nil?: true

          # @!attribute payer_name
          #   Payout destination display name.
          #
          #   @return [String, nil]
          required :payer_name, String, nil?: true

          # @!method initialize(icon_url:, payer_name:)
          #   Payout destination display details.
          #
          #   @param icon_url [String, nil] Payout destination icon URL.
          #
          #   @param payer_name [String, nil] Payout destination display name.
        end
      end

      # Payout delivery speed.
      #
      # @see WhopSDK::Models::PayoutCreateResponse#speed
      module Speed
        extend WhopSDK::Internal::Type::Enum

        STANDARD = :standard
        INSTANT = :instant

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current payout status, in the same vocabulary as GET /payouts.
      #
      # @see WhopSDK::Models::PayoutCreateResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        REQUESTED = :requested
        IN_TRANSIT = :in_transit
        DENIED = :denied
        COMPLETED = :completed
        FAILED = :failed
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
