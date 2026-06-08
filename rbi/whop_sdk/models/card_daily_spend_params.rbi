# typed: strong

module WhopSDK
  module Models
    class CardDailySpendParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardDailySpendParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # IANA timezone (e.g. America/New_York) the daily buckets are computed in.
      # Defaults to UTC.
      sig { returns(T.nilable(String)) }
      attr_reader :timezone

      sig { params(timezone: String).void }
      attr_writer :timezone

      sig do
        params(
          id: String,
          timezone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # IANA timezone (e.g. America/New_York) the daily buckets are computed in.
        # Defaults to UTC.
        timezone: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            timezone: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
