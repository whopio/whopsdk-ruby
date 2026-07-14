# typed: strong

module WhopSDK
  module Models
    class PayoutListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::PayoutListResponse, WhopSDK::Internal::AnyHash)
        end

      # Payout ID.
      sig { returns(String) }
      attr_accessor :id

      # The payout amount in whole currency units.
      sig { returns(Float) }
      attr_accessor :amount

      # When the payout was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Payout currency.
      sig { returns(String) }
      attr_accessor :currency

      # Estimated time the funds become available in the destination account.
      sig { returns(T.nilable(Time)) }
      attr_accessor :estimated_arrival

      # The fee charged for the payout, in the payout currency.
      sig { returns(Float) }
      attr_accessor :fee_amount

      sig { returns(WhopSDK::Models::PayoutListResponse::Object::TaggedSymbol) }
      attr_accessor :object

      # Name of the entity processing the payout.
      sig { returns(T.nilable(String)) }
      attr_accessor :payer_name

      # The ID returned by POST /payouts when this payout was requested. Match it to the
      # settled payout in GET /payouts. Null for payouts not created by POST /payouts.
      sig { returns(T.nilable(String)) }
      attr_accessor :payout_request_id

      # The saved payout method used. Requires payout:destination:read; null without it.
      sig do
        returns(T.nilable(WhopSDK::Models::PayoutListResponse::PayoutToken))
      end
      attr_reader :payout_token

      sig do
        params(
          payout_token:
            T.nilable(WhopSDK::Models::PayoutListResponse::PayoutToken::OrHash)
        ).void
      end
      attr_writer :payout_token

      # Payout delivery speed.
      sig { returns(WhopSDK::Models::PayoutListResponse::Speed::TaggedSymbol) }
      attr_accessor :speed

      # Current payout status.
      sig { returns(WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol) }
      attr_accessor :status

      sig do
        params(
          id: String,
          amount: Float,
          created_at: Time,
          currency: String,
          estimated_arrival: T.nilable(Time),
          fee_amount: Float,
          object: WhopSDK::Models::PayoutListResponse::Object::OrSymbol,
          payer_name: T.nilable(String),
          payout_request_id: T.nilable(String),
          payout_token:
            T.nilable(WhopSDK::Models::PayoutListResponse::PayoutToken::OrHash),
          speed: WhopSDK::Models::PayoutListResponse::Speed::OrSymbol,
          status: WhopSDK::Models::PayoutListResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Payout ID.
        id:,
        # The payout amount in whole currency units.
        amount:,
        # When the payout was created.
        created_at:,
        # Payout currency.
        currency:,
        # Estimated time the funds become available in the destination account.
        estimated_arrival:,
        # The fee charged for the payout, in the payout currency.
        fee_amount:,
        object:,
        # Name of the entity processing the payout.
        payer_name:,
        # The ID returned by POST /payouts when this payout was requested. Match it to the
        # settled payout in GET /payouts. Null for payouts not created by POST /payouts.
        payout_request_id:,
        # The saved payout method used. Requires payout:destination:read; null without it.
        payout_token:,
        # Payout delivery speed.
        speed:,
        # Current payout status.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created_at: Time,
            currency: String,
            estimated_arrival: T.nilable(Time),
            fee_amount: Float,
            object: WhopSDK::Models::PayoutListResponse::Object::TaggedSymbol,
            payer_name: T.nilable(String),
            payout_request_id: T.nilable(String),
            payout_token:
              T.nilable(WhopSDK::Models::PayoutListResponse::PayoutToken),
            speed: WhopSDK::Models::PayoutListResponse::Speed::TaggedSymbol,
            status: WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PayoutListResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYOUT =
          T.let(
            :payout,
            WhopSDK::Models::PayoutListResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::PayoutListResponse::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class PayoutToken < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PayoutListResponse::PayoutToken,
              WhopSDK::Internal::AnyHash
            )
          end

        # Saved payout method nickname.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname

        # Payout destination display details.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::PayoutListResponse::PayoutToken::PayoutDestination
            )
          )
        end
        attr_reader :payout_destination

        sig do
          params(
            payout_destination:
              T.nilable(
                WhopSDK::Models::PayoutListResponse::PayoutToken::PayoutDestination::OrHash
              )
          ).void
        end
        attr_writer :payout_destination

        # The saved payout method used. Requires payout:destination:read; null without it.
        sig do
          params(
            nickname: T.nilable(String),
            payout_destination:
              T.nilable(
                WhopSDK::Models::PayoutListResponse::PayoutToken::PayoutDestination::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Saved payout method nickname.
          nickname:,
          # Payout destination display details.
          payout_destination:
        )
        end

        sig do
          override.returns(
            {
              nickname: T.nilable(String),
              payout_destination:
                T.nilable(
                  WhopSDK::Models::PayoutListResponse::PayoutToken::PayoutDestination
                )
            }
          )
        end
        def to_hash
        end

        class PayoutDestination < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PayoutListResponse::PayoutToken::PayoutDestination,
                WhopSDK::Internal::AnyHash
              )
            end

          # Payout destination icon URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :icon_url

          # Payout destination display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :payer_name

          # Payout destination display details.
          sig do
            params(
              icon_url: T.nilable(String),
              payer_name: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Payout destination icon URL.
            icon_url:,
            # Payout destination display name.
            payer_name:
          )
          end

          sig do
            override.returns(
              { icon_url: T.nilable(String), payer_name: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end

      # Payout delivery speed.
      module Speed
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PayoutListResponse::Speed)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STANDARD =
          T.let(
            :standard,
            WhopSDK::Models::PayoutListResponse::Speed::TaggedSymbol
          )
        INSTANT =
          T.let(
            :instant,
            WhopSDK::Models::PayoutListResponse::Speed::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::PayoutListResponse::Speed::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Current payout status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PayoutListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REQUESTED =
          T.let(
            :requested,
            WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol
          )
        AWAITING_PAYMENT =
          T.let(
            :awaiting_payment,
            WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol
          )
        IN_TRANSIT =
          T.let(
            :in_transit,
            WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::PayoutListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
