# typed: strong

module WhopSDK
  module Models
    class AdRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Start of the stats window.
      sig { returns(T.nilable(String)) }
      attr_reader :stats_from

      sig { params(stats_from: String).void }
      attr_writer :stats_from

      # End of the stats window.
      sig { returns(T.nilable(String)) }
      attr_reader :stats_to

      sig { params(stats_to: String).void }
      attr_writer :stats_to

      # IANA timezone the stats window is interpreted in. Defaults to UTC.
      sig { returns(T.nilable(String)) }
      attr_reader :time_zone

      sig { params(time_zone: String).void }
      attr_writer :time_zone

      sig do
        params(
          id: String,
          stats_from: String,
          stats_to: String,
          time_zone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Start of the stats window.
        stats_from: nil,
        # End of the stats window.
        stats_to: nil,
        # IANA timezone the stats window is interpreted in. Defaults to UTC.
        time_zone: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            stats_from: String,
            stats_to: String,
            time_zone: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
