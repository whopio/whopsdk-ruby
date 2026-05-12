# typed: strong

module WhopSDK
  module Models
    class AdCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AdCreateResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for this ad.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad belongs to.
      sig { returns(WhopSDK::Models::AdCreateResponse::AdCampaign) }
      attr_reader :ad_campaign

      sig do
        params(
          ad_campaign: WhopSDK::Models::AdCreateResponse::AdCampaign::OrHash
        ).void
      end
      attr_writer :ad_campaign

      # The parent ad group this ad belongs to.
      sig { returns(WhopSDK::Models::AdCreateResponse::AdGroup) }
      attr_reader :ad_group

      sig do
        params(
          ad_group: WhopSDK::Models::AdCreateResponse::AdGroup::OrHash
        ).void
      end
      attr_writer :ad_group

      # When the ad was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The external ad platform this ad is running on (e.g., meta, tiktok).
      sig { returns(WhopSDK::Models::AdCreateResponse::Platform::TaggedSymbol) }
      attr_accessor :platform

      # Current delivery status of the ad.
      sig { returns(WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol) }
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
          ad_campaign: WhopSDK::Models::AdCreateResponse::AdCampaign::OrHash,
          ad_group: WhopSDK::Models::AdCreateResponse::AdGroup::OrHash,
          created_at: Time,
          platform: WhopSDK::Models::AdCreateResponse::Platform::OrSymbol,
          status: WhopSDK::Models::AdCreateResponse::Status::OrSymbol,
          title: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for this ad.
        id:,
        # The ad campaign this ad belongs to.
        ad_campaign:,
        # The parent ad group this ad belongs to.
        ad_group:,
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
            ad_campaign: WhopSDK::Models::AdCreateResponse::AdCampaign,
            ad_group: WhopSDK::Models::AdCreateResponse::AdGroup,
            created_at: Time,
            platform: WhopSDK::Models::AdCreateResponse::Platform::TaggedSymbol,
            status: WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol,
            title: T.nilable(String),
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCreateResponse::AdCampaign,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for this ad campaign.
        sig { returns(String) }
        attr_accessor :id

        # The ad campaign this ad belongs to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for this ad campaign.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class AdGroup < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCreateResponse::AdGroup,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for this ad group.
        sig { returns(String) }
        attr_accessor :id

        # The parent ad group this ad belongs to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for this ad group.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      # The external ad platform this ad is running on (e.g., meta, tiktok).
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdCreateResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(
            :meta,
            WhopSDK::Models::AdCreateResponse::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::Models::AdCreateResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::AdCreateResponse::Platform::TaggedSymbol]
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
            T.all(Symbol, WhopSDK::Models::AdCreateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
