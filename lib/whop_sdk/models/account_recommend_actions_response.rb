# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#recommend_actions
    class AccountRecommendActionsResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<WhopSDK::Models::AccountRecommendActionsResponse::Data>]
      required :data,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AccountRecommendActionsResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<WhopSDK::Models::AccountRecommendActionsResponse::Data>]

      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute action
        #   The recommendation; new values may be added, so handle unknown actions
        #   gracefully
        #
        #   @return [Symbol, WhopSDK::Models::AccountRecommendActionsResponse::Data::Action]
        required :action, enum: -> { WhopSDK::Models::AccountRecommendActionsResponse::Data::Action }

        # @!attribute blocked_capabilities
        #
        #   @return [Array<String>]
        required :blocked_capabilities, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute cta
        #   The URL the call-to-action links to
        #
        #   @return [String]
        required :cta, String

        # @!attribute cta_label
        #   Button label
        #
        #   @return [String]
        required :cta_label, String

        # @!attribute description
        #   Supporting copy, or empty
        #
        #   @return [String]
        required :description, String

        # @!attribute icon_url
        #   Illustration icon URL, or `null`
        #
        #   @return [String, nil]
        required :icon_url, String, nil?: true

        # @!attribute impact_score
        #   Estimated impact from 0-100, or `null` when not ranked
        #
        #   @return [Integer, nil]
        required :impact_score, Integer, nil?: true

        # @!attribute reasoning
        #   Why this action was recommended, or `null`
        #
        #   @return [String, nil]
        required :reasoning, String, nil?: true

        # @!attribute status
        #   Always optional — never blocking
        #
        #   @return [Symbol, WhopSDK::Models::AccountRecommendActionsResponse::Data::Status]
        required :status, enum: -> { WhopSDK::Models::AccountRecommendActionsResponse::Data::Status }

        # @!attribute title
        #   Headline for the recommendation
        #
        #   @return [String]
        required :title, String

        # @!method initialize(action:, blocked_capabilities:, cta:, cta_label:, description:, icon_url:, impact_score:, reasoning:, status:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AccountRecommendActionsResponse::Data} for more details.
        #
        #   @param action [Symbol, WhopSDK::Models::AccountRecommendActionsResponse::Data::Action] The recommendation; new values may be added, so handle unknown actions gracefull
        #
        #   @param blocked_capabilities [Array<String>]
        #
        #   @param cta [String] The URL the call-to-action links to
        #
        #   @param cta_label [String] Button label
        #
        #   @param description [String] Supporting copy, or empty
        #
        #   @param icon_url [String, nil] Illustration icon URL, or `null`
        #
        #   @param impact_score [Integer, nil] Estimated impact from 0-100, or `null` when not ranked
        #
        #   @param reasoning [String, nil] Why this action was recommended, or `null`
        #
        #   @param status [Symbol, WhopSDK::Models::AccountRecommendActionsResponse::Data::Status] Always optional — never blocking
        #
        #   @param title [String] Headline for the recommendation

        # The recommendation; new values may be added, so handle unknown actions
        # gracefully
        #
        # @see WhopSDK::Models::AccountRecommendActionsResponse::Data#action
        module Action
          extend WhopSDK::Internal::Type::Enum

          THEME_BUSINESS = :theme_business
          CREATE_PRODUCT = :create_product
          CREATE_PLAN = :create_plan
          VERIFY_IDENTITY = :verify_identity
          CONNECT_AFFILIATE_PROGRAM = :connect_affiliate_program
          CREATE_PROMOTION = :create_promotion
          SETUP_TRACKING_PIXEL = :setup_tracking_pixel
          MIGRATE_FROM_STRIPE = :migrate_from_stripe
          ACCEPT_FIRST_PAYMENT = :accept_first_payment
          LAUNCH_FIRST_AD = :launch_first_ad
          INVITE_TEAM_MEMBER = :invite_team_member
          ENABLE_TAX_COLLECTION = :enable_tax_collection
          CREATE_CARD = :create_card
          JOIN_WHOP_UNIVERSITY = :join_whop_university
          APPLY_FOR_FINANCING = :apply_for_financing

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Always optional — never blocking
        #
        # @see WhopSDK::Models::AccountRecommendActionsResponse::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          OPTIONAL = :optional

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
