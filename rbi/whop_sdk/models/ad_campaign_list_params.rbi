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

      # The unique identifier of the company to list ad campaigns for.
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

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

      # Case-insensitive substring match against the campaign title.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # The status of an ad campaign.
      sig do
        returns(T.nilable(WhopSDK::AdCampaignListParams::Status::OrSymbol))
      end
      attr_accessor :status

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          query: T.nilable(String),
          status: T.nilable(WhopSDK::AdCampaignListParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list ad campaigns for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return ad campaigns created after this timestamp.
        created_after: nil,
        # Only return ad campaigns created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Case-insensitive substring match against the campaign title.
        query: nil,
        # The status of an ad campaign.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            query: T.nilable(String),
            status: T.nilable(WhopSDK::AdCampaignListParams::Status::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The status of an ad campaign.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaignListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        PAUSED =
          T.let(:paused, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        STALE =
          T.let(:stale, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        PENDING_REFUND =
          T.let(
            :pending_refund,
            WhopSDK::AdCampaignListParams::Status::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :payment_failed,
            WhopSDK::AdCampaignListParams::Status::TaggedSymbol
          )
        DRAFT =
          T.let(:draft, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        FLAGGED =
          T.let(:flagged, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)
        IMPORTING =
          T.let(:importing, WhopSDK::AdCampaignListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
