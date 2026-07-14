# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Events#list
    class EventListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute event_id
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_name
      #
      #   @return [String]
      required :event_name, String

      # @!attribute event_time
      #
      #   @return [Integer]
      required :event_time, Integer

      # @!attribute context
      #
      #   @return [WhopSDK::Models::EventListResponse::Context, nil]
      optional :context, -> { WhopSDK::Models::EventListResponse::Context }, nil?: true

      # @!attribute currency
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute custom_name
      #
      #   @return [String, nil]
      optional :custom_name, String, nil?: true

      # @!attribute path
      #
      #   @return [String, nil]
      optional :path, String, nil?: true

      # @!attribute questions
      #
      #   @return [Array<WhopSDK::Models::EventListResponse::Question>, nil]
      optional :questions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::EventListResponse::Question] },
               nil?: true

      # @!attribute referrer_url
      #
      #   @return [String, nil]
      optional :referrer_url, String, nil?: true

      # @!attribute total_usd_amount
      #
      #   @return [Float, nil]
      optional :total_usd_amount, Float, nil?: true

      # @!attribute url
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!attribute user
      #
      #   @return [WhopSDK::Models::EventListResponse::User, nil]
      optional :user, -> { WhopSDK::Models::EventListResponse::User }, nil?: true

      # @!attribute value
      #
      #   @return [Float, nil]
      optional :value, Float, nil?: true

      # @!method initialize(id:, event_id:, event_name:, event_time:, context: nil, currency: nil, custom_name: nil, path: nil, questions: nil, referrer_url: nil, total_usd_amount: nil, url: nil, user: nil, value: nil)
      #   @param id [String]
      #   @param event_id [String]
      #   @param event_name [String]
      #   @param event_time [Integer]
      #   @param context [WhopSDK::Models::EventListResponse::Context, nil]
      #   @param currency [String, nil]
      #   @param custom_name [String, nil]
      #   @param path [String, nil]
      #   @param questions [Array<WhopSDK::Models::EventListResponse::Question>, nil]
      #   @param referrer_url [String, nil]
      #   @param total_usd_amount [Float, nil]
      #   @param url [String, nil]
      #   @param user [WhopSDK::Models::EventListResponse::User, nil]
      #   @param value [Float, nil]

      # @see WhopSDK::Models::EventListResponse#context
      class Context < WhopSDK::Internal::Type::BaseModel
        # @!attribute ad_campaign_id
        #
        #   @return [String, nil]
        optional :ad_campaign_id, String, nil?: true

        # @!attribute ad_id
        #
        #   @return [String, nil]
        optional :ad_id, String, nil?: true

        # @!attribute ad_set_id
        #
        #   @return [String, nil]
        optional :ad_set_id, String, nil?: true

        # @!attribute utm_campaign
        #
        #   @return [String, nil]
        optional :utm_campaign, String, nil?: true

        # @!attribute utm_content
        #
        #   @return [String, nil]
        optional :utm_content, String, nil?: true

        # @!attribute utm_medium
        #
        #   @return [String, nil]
        optional :utm_medium, String, nil?: true

        # @!attribute utm_source
        #
        #   @return [String, nil]
        optional :utm_source, String, nil?: true

        # @!attribute utm_term
        #
        #   @return [String, nil]
        optional :utm_term, String, nil?: true

        # @!method initialize(ad_campaign_id: nil, ad_id: nil, ad_set_id: nil, utm_campaign: nil, utm_content: nil, utm_medium: nil, utm_source: nil, utm_term: nil)
        #   @param ad_campaign_id [String, nil]
        #   @param ad_id [String, nil]
        #   @param ad_set_id [String, nil]
        #   @param utm_campaign [String, nil]
        #   @param utm_content [String, nil]
        #   @param utm_medium [String, nil]
        #   @param utm_source [String, nil]
        #   @param utm_term [String, nil]
      end

      class Question < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute answer
        #
        #   @return [String, nil]
        optional :answer, String, nil?: true

        # @!attribute key
        #
        #   @return [String, nil]
        optional :key, String, nil?: true

        # @!attribute options
        #
        #   @return [Array<String>, nil]
        optional :options, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute question
        #
        #   @return [String, nil]
        optional :question, String, nil?: true

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String, nil?: true

        # @!method initialize(id: nil, answer: nil, key: nil, options: nil, question: nil, type: nil)
        #   @param id [String, nil]
        #   @param answer [String, nil]
        #   @param key [String, nil]
        #   @param options [Array<String>, nil]
        #   @param question [String, nil]
        #   @param type [String, nil]
      end

      # @see WhopSDK::Models::EventListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute city
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute country
        #
        #   @return [String, nil]
        optional :country, String, nil?: true

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute phone
        #
        #   @return [String, nil]
        optional :phone, String, nil?: true

        # @!attribute state
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!method initialize(city: nil, country: nil, email: nil, first_name: nil, last_name: nil, name: nil, phone: nil, state: nil)
        #   @param city [String, nil]
        #   @param country [String, nil]
        #   @param email [String, nil]
        #   @param first_name [String, nil]
        #   @param last_name [String, nil]
        #   @param name [String, nil]
        #   @param phone [String, nil]
        #   @param state [String, nil]
      end
    end
  end
end
