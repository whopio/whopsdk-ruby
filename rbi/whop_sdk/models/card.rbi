# typed: strong

module WhopSDK
  module Models
    class Card < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::Card, WhopSDK::Internal::AnyHash) }

      # The card ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :id

      sig { returns(WhopSDK::Card::Object::TaggedSymbol) }
      attr_accessor :object

      # The card lifecycle status.
      sig { returns(T.nilable(WhopSDK::Card::Status::TaggedSymbol)) }
      attr_accessor :status

      sig { returns(T.nilable(WhopSDK::Card::CardType::TaggedSymbol)) }
      attr_accessor :card_type

      # ISO 8601 creation timestamp.
      sig { returns(T.nilable(String)) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :expiration_month

      sig { returns(T.nilable(String)) }
      attr_accessor :expiration_year

      # The last 4 digits of the card number.
      sig { returns(T.nilable(String)) }
      attr_accessor :last4

      # The display name of the card.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Recurring spend limit in dollars.
      sig { returns(T.nilable(String)) }
      attr_accessor :spend_limit

      sig do
        returns(T.nilable(WhopSDK::Card::SpendLimitFrequency::TaggedSymbol))
      end
      attr_accessor :spend_limit_frequency

      # Per-authorization limit in dollars.
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_limit

      sig do
        params(
          id: T.nilable(String),
          object: WhopSDK::Card::Object::OrSymbol,
          status: T.nilable(WhopSDK::Card::Status::OrSymbol),
          card_type: T.nilable(WhopSDK::Card::CardType::OrSymbol),
          created_at: T.nilable(String),
          expiration_month: T.nilable(String),
          expiration_year: T.nilable(String),
          last4: T.nilable(String),
          name: T.nilable(String),
          spend_limit: T.nilable(String),
          spend_limit_frequency:
            T.nilable(WhopSDK::Card::SpendLimitFrequency::OrSymbol),
          transaction_limit: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The card ID.
        id:,
        object:,
        # The card lifecycle status.
        status:,
        card_type: nil,
        # ISO 8601 creation timestamp.
        created_at: nil,
        expiration_month: nil,
        expiration_year: nil,
        # The last 4 digits of the card number.
        last4: nil,
        # The display name of the card.
        name: nil,
        # Recurring spend limit in dollars.
        spend_limit: nil,
        spend_limit_frequency: nil,
        # Per-authorization limit in dollars.
        transaction_limit: nil
      )
      end

      sig do
        override.returns(
          {
            id: T.nilable(String),
            object: WhopSDK::Card::Object::TaggedSymbol,
            status: T.nilable(WhopSDK::Card::Status::TaggedSymbol),
            card_type: T.nilable(WhopSDK::Card::CardType::TaggedSymbol),
            created_at: T.nilable(String),
            expiration_month: T.nilable(String),
            expiration_year: T.nilable(String),
            last4: T.nilable(String),
            name: T.nilable(String),
            spend_limit: T.nilable(String),
            spend_limit_frequency:
              T.nilable(WhopSDK::Card::SpendLimitFrequency::TaggedSymbol),
            transaction_limit: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Card::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD = T.let(:card, WhopSDK::Card::Object::TaggedSymbol)

        sig { override.returns(T::Array[WhopSDK::Card::Object::TaggedSymbol]) }
        def self.values
        end
      end

      # The card lifecycle status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Card::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, WhopSDK::Card::Status::TaggedSymbol)
        ACTIVE = T.let(:active, WhopSDK::Card::Status::TaggedSymbol)
        FROZEN = T.let(:frozen, WhopSDK::Card::Status::TaggedSymbol)
        CANCELED = T.let(:canceled, WhopSDK::Card::Status::TaggedSymbol)

        sig { override.returns(T::Array[WhopSDK::Card::Status::TaggedSymbol]) }
        def self.values
        end
      end

      module CardType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Card::CardType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VIRTUAL = T.let(:virtual, WhopSDK::Card::CardType::TaggedSymbol)
        PHYSICAL = T.let(:physical, WhopSDK::Card::CardType::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Card::CardType::TaggedSymbol])
        end
        def self.values
        end
      end

      module SpendLimitFrequency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Card::SpendLimitFrequency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY = T.let(:daily, WhopSDK::Card::SpendLimitFrequency::TaggedSymbol)
        WEEKLY =
          T.let(:weekly, WhopSDK::Card::SpendLimitFrequency::TaggedSymbol)
        MONTHLY =
          T.let(:monthly, WhopSDK::Card::SpendLimitFrequency::TaggedSymbol)
        ONE_TIME =
          T.let(:one_time, WhopSDK::Card::SpendLimitFrequency::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::Card::SpendLimitFrequency::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
