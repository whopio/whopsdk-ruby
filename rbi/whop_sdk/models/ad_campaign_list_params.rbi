# typed: strong

module WhopSDK
  module Models
    class AdCampaignListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdCampaignListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The unique identifier of the company to list ad campaigns for.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return ad campaigns created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return ad campaigns created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Case-insensitive substring match against the campaign title or ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # Inclusive start of the window for each campaign's metric fields (spend,
      # impressions, …). Omit both statsFrom and statsTo for all-time stats.
      sig { returns(T.nilable(Time)) }
      attr_accessor :stats_from

      # Inclusive end of the window for each campaign's metric fields. Omit both
      # statsFrom and statsTo for all-time stats.
      sig { returns(T.nilable(Time)) }
      attr_accessor :stats_to

      # The status of an ad campaign.
      sig { returns(T.nilable(WhopSDK::AdCampaignStatus::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          query: T.nilable(String),
          stats_from: T.nilable(Time),
          stats_to: T.nilable(Time),
          status: T.nilable(WhopSDK::AdCampaignStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list ad campaigns for.
        company_id: nil,
        # Only return ad campaigns created after this timestamp.
        created_after: nil,
        # Only return ad campaigns created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Case-insensitive substring match against the campaign title or ID.
        query: nil,
        # Inclusive start of the window for each campaign's metric fields (spend,
        # impressions, …). Omit both statsFrom and statsTo for all-time stats.
        stats_from: nil,
        # Inclusive end of the window for each campaign's metric fields. Omit both
        # statsFrom and statsTo for all-time stats.
        stats_to: nil,
        # The status of an ad campaign.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            query: T.nilable(String),
            stats_from: T.nilable(Time),
            stats_to: T.nilable(Time),
            status: T.nilable(WhopSDK::AdCampaignStatus::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
