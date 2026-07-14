# typed: strong

module WhopSDK
  module Models
    class AudienceListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AudienceListParams, WhopSDK::Internal::AnyHash)
        end

      # Account ID, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :account_id

      # Cursor for the next page of audiences.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Audience ID, prefixed `adaud_`, used to filter the response to one audience.
      sig { returns(T.nilable(String)) }
      attr_reader :audience_id

      sig { params(audience_id: String).void }
      attr_writer :audience_id

      # Number of audiences to return. Defaults to 20; maximum 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      sig do
        params(
          account_id: String,
          after: String,
          audience_id: String,
          first: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account ID, prefixed `biz_`.
        account_id:,
        # Cursor for the next page of audiences.
        after: nil,
        # Audience ID, prefixed `adaud_`, used to filter the response to one audience.
        audience_id: nil,
        # Number of audiences to return. Defaults to 20; maximum 100.
        first: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            audience_id: String,
            first: Integer,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
