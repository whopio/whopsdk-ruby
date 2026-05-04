# typed: strong

module WhopSDK
  module Models
    class AdGroupListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdGroupListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Filter by campaign. Provide exactly one of campaign_id or company_id.
      sig { returns(T.nilable(String)) }
      attr_accessor :campaign_id

      # Filter by company. Provide exactly one of campaign_id or company_id.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return ad groups created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return ad groups created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Case-insensitive substring match against the ad group name.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # The status of an external ad group.
      sig { returns(T.nilable(WhopSDK::AdGroupListParams::Status::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          campaign_id: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          query: T.nilable(String),
          status: T.nilable(WhopSDK::AdGroupListParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter by campaign. Provide exactly one of campaign_id or company_id.
        campaign_id: nil,
        # Filter by company. Provide exactly one of campaign_id or company_id.
        company_id: nil,
        # Only return ad groups created after this timestamp.
        created_after: nil,
        # Only return ad groups created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Case-insensitive substring match against the ad group name.
        query: nil,
        # The status of an external ad group.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            campaign_id: T.nilable(String),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            query: T.nilable(String),
            status: T.nilable(WhopSDK::AdGroupListParams::Status::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The status of an external ad group.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroupListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, WhopSDK::AdGroupListParams::Status::TaggedSymbol)
        PAUSED =
          T.let(:paused, WhopSDK::AdGroupListParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, WhopSDK::AdGroupListParams::Status::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, WhopSDK::AdGroupListParams::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, WhopSDK::AdGroupListParams::Status::TaggedSymbol)
        FLAGGED =
          T.let(:flagged, WhopSDK::AdGroupListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
