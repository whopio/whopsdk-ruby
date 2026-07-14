# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payouts#list
    class PayoutListResponse < WhopSDK::Internal::Type::BaseModel
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
      #   Estimated time the funds become available in the destination account.
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
      #   @return [Symbol, WhopSDK::Models::PayoutListResponse::Object]
      required :object, enum: -> { WhopSDK::Models::PayoutListResponse::Object }

      # @!attribute payer_name
      #   Name of the entity processing the payout.
      #
      #   @return [String, nil]
      required :payer_name, String, nil?: true

      # @!attribute payout_request_id
      #   The ID returned by POST /payouts when this payout was requested. Match it to the
      #   settled payout in GET /payouts. Null for payouts not created by POST /payouts.
      #
      #   @return [String, nil]
      required :payout_request_id, String, nil?: true

      # @!attribute payout_token
      #   The saved payout method used. Requires payout:destination:read; null without it.
      #
      #   @return [WhopSDK::Models::PayoutListResponse::PayoutToken, nil]
      required :payout_token, -> { WhopSDK::Models::PayoutListResponse::PayoutToken }, nil?: true

      # @!attribute speed
      #   Payout delivery speed.
      #
      #   @return [Symbol, WhopSDK::Models::PayoutListResponse::Speed]
      required :speed, enum: -> { WhopSDK::Models::PayoutListResponse::Speed }

      # @!attribute status
      #   Current payout status.
      #
      #   @return [Symbol, WhopSDK::Models::PayoutListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::PayoutListResponse::Status }

      # @!method initialize(id:, amount:, created_at:, currency:, estimated_arrival:, fee_amount:, object:, payer_name:, payout_request_id:, payout_token:, speed:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PayoutListResponse} for more details.
      #
      #   @param id [String] Payout ID.
      #
      #   @param amount [Float] The payout amount in whole currency units.
      #
      #   @param created_at [Time] When the payout was created.
      #
      #   @param currency [String] Payout currency.
      #
      #   @param estimated_arrival [Time, nil] Estimated time the funds become available in the destination account.
      #
      #   @param fee_amount [Float] The fee charged for the payout, in the payout currency.
      #
      #   @param object [Symbol, WhopSDK::Models::PayoutListResponse::Object]
      #
      #   @param payer_name [String, nil] Name of the entity processing the payout.
      #
      #   @param payout_request_id [String, nil] The ID returned by POST /payouts when this payout was requested. Match it to the
      #
      #   @param payout_token [WhopSDK::Models::PayoutListResponse::PayoutToken, nil] The saved payout method used. Requires payout:destination:read; null without it.
      #
      #   @param speed [Symbol, WhopSDK::Models::PayoutListResponse::Speed] Payout delivery speed.
      #
      #   @param status [Symbol, WhopSDK::Models::PayoutListResponse::Status] Current payout status.

      # @see WhopSDK::Models::PayoutListResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        PAYOUT = :payout

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::PayoutListResponse#payout_token
      class PayoutToken < WhopSDK::Internal::Type::BaseModel
        # @!attribute nickname
        #   Saved payout method nickname.
        #
        #   @return [String, nil]
        required :nickname, String, nil?: true

        # @!attribute payout_destination
        #   Payout destination display details.
        #
        #   @return [WhopSDK::Models::PayoutListResponse::PayoutToken::PayoutDestination, nil]
        required :payout_destination,
                 -> { WhopSDK::Models::PayoutListResponse::PayoutToken::PayoutDestination },
                 nil?: true

        # @!method initialize(nickname:, payout_destination:)
        #   The saved payout method used. Requires payout:destination:read; null without it.
        #
        #   @param nickname [String, nil] Saved payout method nickname.
        #
        #   @param payout_destination [WhopSDK::Models::PayoutListResponse::PayoutToken::PayoutDestination, nil] Payout destination display details.

        # @see WhopSDK::Models::PayoutListResponse::PayoutToken#payout_destination
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
      # @see WhopSDK::Models::PayoutListResponse#speed
      module Speed
        extend WhopSDK::Internal::Type::Enum

        STANDARD = :standard
        INSTANT = :instant

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current payout status.
      #
      # @see WhopSDK::Models::PayoutListResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        REQUESTED = :requested
        AWAITING_PAYMENT = :awaiting_payment
        IN_TRANSIT = :in_transit
        COMPLETED = :completed
        FAILED = :failed
        CANCELED = :canceled
        DENIED = :denied

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
