# typed: strong

module WhopSDK
  module Models
    class AdListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdListParams, WhopSDK::Internal::AnyHash)
        end

      # Filter by ad group. Provide exactly one of ad_group_id, campaign_id, or
      # company_id.
      sig { returns(T.nilable(String)) }
      attr_accessor :ad_group_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Filter by campaign. Provide exactly one of ad_group_id, campaign_id, or
      # company_id.
      sig { returns(T.nilable(String)) }
      attr_accessor :campaign_id

      # Filter by company. Provide exactly one of ad_group_id, campaign_id, or
      # company_id.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return ads created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return ads created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The status of an external ad.
      sig { returns(T.nilable(WhopSDK::AdListParams::Status::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          ad_group_id: T.nilable(String),
          after: T.nilable(String),
          before: T.nilable(String),
          campaign_id: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          status: T.nilable(WhopSDK::AdListParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by ad group. Provide exactly one of ad_group_id, campaign_id, or
        # company_id.
        ad_group_id: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter by campaign. Provide exactly one of ad_group_id, campaign_id, or
        # company_id.
        campaign_id: nil,
        # Filter by company. Provide exactly one of ad_group_id, campaign_id, or
        # company_id.
        company_id: nil,
        # Only return ads created after this timestamp.
        created_after: nil,
        # Only return ads created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The status of an external ad.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ad_group_id: T.nilable(String),
            after: T.nilable(String),
            before: T.nilable(String),
            campaign_id: T.nilable(String),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            status: T.nilable(WhopSDK::AdListParams::Status::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The status of an external ad.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, WhopSDK::AdListParams::Status::TaggedSymbol)
        PAUSED = T.let(:paused, WhopSDK::AdListParams::Status::TaggedSymbol)
        INACTIVE = T.let(:inactive, WhopSDK::AdListParams::Status::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, WhopSDK::AdListParams::Status::TaggedSymbol)
        REJECTED = T.let(:rejected, WhopSDK::AdListParams::Status::TaggedSymbol)
        FLAGGED = T.let(:flagged, WhopSDK::AdListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
