# typed: strong

module WhopSDK
  module Models
    class MembershipAddFreeDaysParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::MembershipAddFreeDaysParams,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The number of free days to add (1-1095). Extends the billing period, expiration
      # date, or Stripe trial depending on plan type.
      sig { returns(Integer) }
      attr_accessor :free_days

      sig do
        params(
          id: String,
          free_days: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The number of free days to add (1-1095). Extends the billing period, expiration
        # date, or Stripe trial depending on plan type.
        free_days:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            free_days: Integer,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
