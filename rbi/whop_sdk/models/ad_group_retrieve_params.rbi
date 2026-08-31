# typed: strong

module WhopSDK
  module Models
    class AdGroupRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdGroupRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Attribution model the conversion stats count under (defaults to last_touch).
      # Under both models a journey with any whop ad touch attributes to whop; the model
      # picks which whop touch credits the entity and which non-whop source wins
      # otherwise.
      sig do
        returns(
          T.nilable(WhopSDK::AdGroupRetrieveParams::AttributionModel::OrSymbol)
        )
      end
      attr_reader :attribution_model

      sig do
        params(
          attribution_model:
            WhopSDK::AdGroupRetrieveParams::AttributionModel::OrSymbol
        ).void
      end
      attr_writer :attribution_model

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

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          id: String,
          attribution_model:
            WhopSDK::AdGroupRetrieveParams::AttributionModel::OrSymbol,
          stats_from: String,
          stats_to: String,
          time_zone: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Attribution model the conversion stats count under (defaults to last_touch).
        # Under both models a journey with any whop ad touch attributes to whop; the model
        # picks which whop touch credits the entity and which non-whop source wins
        # otherwise.
        attribution_model: nil,
        # Start of the stats window.
        stats_from: nil,
        # End of the stats window.
        stats_to: nil,
        # IANA timezone the stats window is interpreted in. Defaults to UTC.
        time_zone: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            attribution_model:
              WhopSDK::AdGroupRetrieveParams::AttributionModel::OrSymbol,
            stats_from: String,
            stats_to: String,
            time_zone: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Attribution model the conversion stats count under (defaults to last_touch).
      # Under both models a journey with any whop ad touch attributes to whop; the model
      # picks which whop touch credits the entity and which non-whop source wins
      # otherwise.
      module AttributionModel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupRetrieveParams::AttributionModel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LAST_TOUCH =
          T.let(
            :last_touch,
            WhopSDK::AdGroupRetrieveParams::AttributionModel::TaggedSymbol
          )
        FIRST_TOUCH =
          T.let(
            :first_touch,
            WhopSDK::AdGroupRetrieveParams::AttributionModel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AdGroupRetrieveParams::AttributionModel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
