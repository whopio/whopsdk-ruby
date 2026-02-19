# typed: strong

module WhopSDK
  module Models
    class FeeMarkupCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::FeeMarkupCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to create or update the fee markup for.
      sig { returns(String) }
      attr_accessor :company_id

      # The type of fee this markup applies to, such as processing or platform fees.
      sig { returns(WhopSDK::FeeMarkupType::OrSymbol) }
      attr_accessor :fee_type

      # The fixed fee amount in USD to charge per transaction. Must be between 0 and 50.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fixed_fee_usd

      # Custom key-value metadata to attach to this fee markup.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # Internal notes about this fee markup for record-keeping purposes.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # The percentage fee to charge per transaction. Must be between 0 and 25.
      sig { returns(T.nilable(Float)) }
      attr_accessor :percentage_fee

      sig do
        params(
          company_id: String,
          fee_type: WhopSDK::FeeMarkupType::OrSymbol,
          fixed_fee_usd: T.nilable(Float),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String),
          percentage_fee: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to create or update the fee markup for.
        company_id:,
        # The type of fee this markup applies to, such as processing or platform fees.
        fee_type:,
        # The fixed fee amount in USD to charge per transaction. Must be between 0 and 50.
        fixed_fee_usd: nil,
        # Custom key-value metadata to attach to this fee markup.
        metadata: nil,
        # Internal notes about this fee markup for record-keeping purposes.
        notes: nil,
        # The percentage fee to charge per transaction. Must be between 0 and 25.
        percentage_fee: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            fee_type: WhopSDK::FeeMarkupType::OrSymbol,
            fixed_fee_usd: T.nilable(Float),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            notes: T.nilable(String),
            percentage_fee: T.nilable(Float),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
