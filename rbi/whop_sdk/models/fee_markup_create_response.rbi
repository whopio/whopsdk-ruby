# typed: strong

module WhopSDK
  module Models
    class FeeMarkupCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::FeeMarkupCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the fee markup.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the fee markup was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The category of fee this markup applies to.
      sig { returns(WhopSDK::FeeMarkupType::TaggedSymbol) }
      attr_accessor :fee_type

      # A flat fee charged per transaction, in USD. Ranges from 0 to 50. Null if no
      # fixed fee is configured.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fixed_fee_usd

      # Internal notes about this fee markup, visible only to administrators. Null if no
      # notes have been added.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # A percentage-based fee charged per transaction. Ranges from 0 to 25. Null if no
      # percentage fee is configured.
      sig { returns(T.nilable(Float)) }
      attr_accessor :percentage_fee

      # The datetime the fee markup was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # A fee markup configuration that defines additional charges applied to
      # transactions for a company.
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
        # The category of fee this markup applies to.
        fee_type:,
        # A flat fee charged per transaction, in USD. Ranges from 0 to 50. Null if no
        # fixed fee is configured.
        fixed_fee_usd:,
        # Internal notes about this fee markup, visible only to administrators. Null if no
        # notes have been added.
        notes:,
        # A percentage-based fee charged per transaction. Ranges from 0 to 25. Null if no
        # percentage fee is configured.
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
