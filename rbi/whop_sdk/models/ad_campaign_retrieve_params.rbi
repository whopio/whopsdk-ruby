# typed: strong

module WhopSDK
  module Models
    class AdCampaignRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdCampaignRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Inclusive start of the window for the campaign's metric fields (spend,
      # impressions, …). Omit both statsFrom and statsTo for all-time stats.
      sig { returns(T.nilable(Time)) }
      attr_accessor :stats_from

      # Inclusive end of the window for the campaign's metric fields. Omit both
      # statsFrom and statsTo for all-time stats.
      sig { returns(T.nilable(Time)) }
      attr_accessor :stats_to

      sig do
        params(
          id: String,
          stats_from: T.nilable(Time),
          stats_to: T.nilable(Time),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Inclusive start of the window for the campaign's metric fields (spend,
        # impressions, …). Omit both statsFrom and statsTo for all-time stats.
        stats_from: nil,
        # Inclusive end of the window for the campaign's metric fields. Omit both
        # statsFrom and statsTo for all-time stats.
        stats_to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            stats_from: T.nilable(Time),
            stats_to: T.nilable(Time),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
