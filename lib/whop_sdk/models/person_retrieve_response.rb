# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::People#retrieve
    class PersonRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [WhopSDK::Models::PersonRetrieveResponse::Data]
      required :data, -> { WhopSDK::Models::PersonRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [WhopSDK::Models::PersonRetrieveResponse::Data]

      # @see WhopSDK::Models::PersonRetrieveResponse#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute first_seen_at
        #
        #   @return [Integer]
        required :first_seen_at, Integer

        # @!attribute last_seen_at
        #
        #   @return [Integer]
        required :last_seen_at, Integer

        # @!attribute person_id
        #
        #   @return [String]
        required :person_id, String

        # @!attribute purchase_count
        #
        #   @return [Integer]
        required :purchase_count, Integer

        # @!attribute ad_sets
        #
        #   @return [Array<WhopSDK::Models::PersonRetrieveResponse::Data::AdSet>, nil]
        optional :ad_sets,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PersonRetrieveResponse::Data::AdSet] }

        # @!attribute ads
        #
        #   @return [Array<WhopSDK::Models::PersonRetrieveResponse::Data::Ad>, nil]
        optional :ads, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PersonRetrieveResponse::Data::Ad] }

        # @!attribute aov
        #
        #   @return [Float, nil]
        optional :aov, Float

        # @!attribute campaigns
        #
        #   @return [Array<WhopSDK::Models::PersonRetrieveResponse::Data::Campaign>, nil]
        optional :campaigns,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PersonRetrieveResponse::Data::Campaign] }

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute has_failed_payment
        #
        #   @return [Boolean, nil]
        optional :has_failed_payment, WhopSDK::Internal::Type::Boolean

        # @!attribute ltv
        #
        #   @return [Float, nil]
        optional :ltv, Float

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute phone
        #
        #   @return [String, nil]
        optional :phone, String, nil?: true

        # @!method initialize(id:, account_id:, first_seen_at:, last_seen_at:, person_id:, purchase_count:, ad_sets: nil, ads: nil, aov: nil, campaigns: nil, email: nil, has_failed_payment: nil, ltv: nil, name: nil, phone: nil)
        #   @param id [String]
        #   @param account_id [String]
        #   @param first_seen_at [Integer]
        #   @param last_seen_at [Integer]
        #   @param person_id [String]
        #   @param purchase_count [Integer]
        #   @param ad_sets [Array<WhopSDK::Models::PersonRetrieveResponse::Data::AdSet>]
        #   @param ads [Array<WhopSDK::Models::PersonRetrieveResponse::Data::Ad>]
        #   @param aov [Float]
        #   @param campaigns [Array<WhopSDK::Models::PersonRetrieveResponse::Data::Campaign>]
        #   @param email [String, nil]
        #   @param has_failed_payment [Boolean]
        #   @param ltv [Float]
        #   @param name [String, nil]
        #   @param phone [String, nil]

        class AdSet < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute thumbnail_url
          #
          #   @return [String, nil]
          optional :thumbnail_url, String, nil?: true

          # @!method initialize(id:, name: nil, thumbnail_url: nil)
          #   @param id [String]
          #   @param name [String, nil]
          #   @param thumbnail_url [String, nil]
        end

        class Ad < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute thumbnail_url
          #
          #   @return [String, nil]
          optional :thumbnail_url, String, nil?: true

          # @!method initialize(id:, name: nil, thumbnail_url: nil)
          #   @param id [String]
          #   @param name [String, nil]
          #   @param thumbnail_url [String, nil]
        end

        class Campaign < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute thumbnail_url
          #
          #   @return [String, nil]
          optional :thumbnail_url, String, nil?: true

          # @!method initialize(id:, name: nil, thumbnail_url: nil)
          #   @param id [String]
          #   @param name [String, nil]
          #   @param thumbnail_url [String, nil]
        end
      end
    end
  end
end
