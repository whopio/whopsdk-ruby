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

      # The ID (tag) of the company you want to update the fee markup for.
      sig { returns(String) }
      attr_accessor :company_id

      # The type of fee this markup applies to.
      sig { returns(WhopSDK::FeeMarkupType::OrSymbol) }
      attr_accessor :fee_type

      # The fixed fee in USD to charge (0-50).
      sig { returns(T.nilable(Float)) }
      attr_accessor :fixed_fee_usd

      # Custom metadata to attach to this fee markup.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # Internal notes about this fee markup.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # The percentage fee to charge (0-25).
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
        # The ID (tag) of the company you want to update the fee markup for.
        company_id:,
        # The type of fee this markup applies to.
        fee_type:,
        # The fixed fee in USD to charge (0-50).
        fixed_fee_usd: nil,
        # Custom metadata to attach to this fee markup.
        metadata: nil,
        # Internal notes about this fee markup.
        notes: nil,
        # The percentage fee to charge (0-25).
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
