# typed: strong

module WhopSDK
  module Models
    class MembershipUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MembershipUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # `true` cancels at the end of the current billing period (the customer keeps
      # access until then); `false` reverses a pending cancellation.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :cancel_at_period_end

      sig { params(cancel_at_period_end: T::Boolean).void }
      attr_writer :cancel_at_period_end

      # Key-value pairs to merge into the membership's metadata. Pass an empty object to
      # clear it.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :metadata

      sig { params(metadata: T.anything).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          id: String,
          cancel_at_period_end: T::Boolean,
          metadata: T.anything,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # `true` cancels at the end of the current billing period (the customer keeps
        # access until then); `false` reverses a pending cancellation.
        cancel_at_period_end: nil,
        # Key-value pairs to merge into the membership's metadata. Pass an empty object to
        # clear it.
        metadata: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cancel_at_period_end: T::Boolean,
            metadata: T.anything,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
