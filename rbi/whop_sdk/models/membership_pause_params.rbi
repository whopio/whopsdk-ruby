# typed: strong

module WhopSDK
  module Models
    class MembershipPauseParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MembershipPauseParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # ISO 8601 time to automatically resume payment collection. Must be in the future;
      # only supported for memberships billed by Whop.
      sig { returns(T.nilable(String)) }
      attr_reader :until_

      sig { params(until_: String).void }
      attr_writer :until_

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          id: String,
          until_: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # ISO 8601 time to automatically resume payment collection. Must be in the future;
        # only supported for memberships billed by Whop.
        until_: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            until_: String,
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
