# typed: strong

module WhopSDK
  module Models
    class FeeMarkupListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::FeeMarkupListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the fee markup.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the fee markup was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The type of fee this markup applies to.
      sig { returns(WhopSDK::FeeMarkupType::TaggedSymbol) }
      attr_accessor :fee_type

      # The fixed fee in USD to charge (0-50).
      sig { returns(T.nilable(Float)) }
      attr_accessor :fixed_fee_usd

      # Internal notes about this fee markup.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # The percentage fee to charge (0-25).
      sig { returns(T.nilable(Float)) }
      attr_accessor :percentage_fee

      # The datetime the fee markup was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Represents a fee markup configuration for a company
      sig do
        params(
          id: String,
          created_at: Time,
          fee_type: WhopSDK::FeeMarkupType::OrSymbol,
          fixed_fee_usd: T.nilable(Float),
          notes: T.nilable(String),
          percentage_fee: T.nilable(Float),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the fee markup.
        id:,
        # The datetime the fee markup was created.
        created_at:,
        # The type of fee this markup applies to.
        fee_type:,
        # The fixed fee in USD to charge (0-50).
        fixed_fee_usd:,
        # Internal notes about this fee markup.
        notes:,
        # The percentage fee to charge (0-25).
        percentage_fee:,
        # The datetime the fee markup was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            fee_type: WhopSDK::FeeMarkupType::TaggedSymbol,
            fixed_fee_usd: T.nilable(Float),
            notes: T.nilable(String),
            percentage_fee: T.nilable(Float),
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
