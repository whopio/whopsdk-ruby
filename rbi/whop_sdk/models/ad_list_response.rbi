# typed: strong

module WhopSDK
  module Models
    class AdListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AdListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for this ad.
      sig { returns(String) }
      attr_accessor :id

      # When the ad was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The external ad platform this ad is running on (e.g., meta, tiktok).
      sig { returns(WhopSDK::Models::AdListResponse::Platform::TaggedSymbol) }
      attr_accessor :platform

      # Current delivery status of the ad.
      sig { returns(WhopSDK::Models::AdListResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # The display title of the ad. Falls back to the creative set caption when unset.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # When the ad was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An ad belonging to an ad group.
      sig do
        params(
          id: String,
          created_at: Time,
          platform: WhopSDK::Models::AdListResponse::Platform::OrSymbol,
          status: WhopSDK::Models::AdListResponse::Status::OrSymbol,
          title: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for this ad.
        id:,
        # When the ad was created.
        created_at:,
        # The external ad platform this ad is running on (e.g., meta, tiktok).
        platform:,
        # Current delivery status of the ad.
        status:,
        # The display title of the ad. Falls back to the creative set caption when unset.
        title:,
        # When the ad was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            platform: WhopSDK::Models::AdListResponse::Platform::TaggedSymbol,
            status: WhopSDK::Models::AdListResponse::Status::TaggedSymbol,
            title: T.nilable(String),
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The external ad platform this ad is running on (e.g., meta, tiktok).
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdListResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(:meta, WhopSDK::Models::AdListResponse::Platform::TaggedSymbol)
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::Models::AdListResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::AdListResponse::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Current delivery status of the ad.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, WhopSDK::Models::AdListResponse::Status::TaggedSymbol)
        PAUSED =
          T.let(:paused, WhopSDK::Models::AdListResponse::Status::TaggedSymbol)
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::AdListResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdListResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::AdListResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(:flagged, WhopSDK::Models::AdListResponse::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::Models::AdListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
