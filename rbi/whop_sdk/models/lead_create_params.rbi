# typed: strong

module WhopSDK
  module Models
    class LeadCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::LeadCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to create a lead for.
      sig { returns(String) }
      attr_accessor :company_id

      # Custom metadata for the lead.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The ID of the product the lead is interested in.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # The url referrer of the lead, if any.
      sig { returns(T.nilable(String)) }
      attr_accessor :referrer

      # The ID of the user to create a lead for. If the request is made by a user, that
      # user will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          company_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          product_id: T.nilable(String),
          referrer: T.nilable(String),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to create a lead for.
        company_id:,
        # Custom metadata for the lead.
        metadata: nil,
        # The ID of the product the lead is interested in.
        product_id: nil,
        # The url referrer of the lead, if any.
        referrer: nil,
        # The ID of the user to create a lead for. If the request is made by a user, that
        # user will be used.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            product_id: T.nilable(String),
            referrer: T.nilable(String),
            user_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
