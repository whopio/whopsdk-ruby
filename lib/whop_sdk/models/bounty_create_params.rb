# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Bounties#create
    class BountyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute base_unit_amount
      #   The amount paid to each approved submission. The total bounty pool funded is
      #   this amount times accepted_submissions_limit.
      #
      #   @return [Float]
      required :base_unit_amount, Float

      # @!attribute currency
      #   The currency for the bounty pool funding amount.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute description
      #   The description of the bounty.
      #
      #   @return [String]
      required :description, String

      # @!attribute title
      #   The title of the bounty.
      #
      #   @return [String]
      required :title, String

      # @!attribute accepted_submissions_limit
      #   The number of submissions that can be approved before the bounty closes.
      #   Defaults to 1.
      #
      #   @return [Integer, nil]
      optional :accepted_submissions_limit, Integer, nil?: true

      # @!attribute allowed_country_codes
      #   The ISO3166 country codes where this bounty should be visible. Empty means
      #   globally visible.
      #
      #   @return [Array<String>, nil]
      optional :allowed_country_codes, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute business_goal_type
      #   What the poster is trying to accomplish with a workforce bounty. Used for
      #   product taxonomy and analytics, separate from the bounty's implementation type.
      #
      #   @return [Symbol, WhopSDK::Models::BountyCreateParams::BusinessGoalType, nil]
      optional :business_goal_type, enum: -> { WhopSDK::BountyCreateParams::BusinessGoalType }, nil?: true

      # @!attribute experience_id
      #   An optional experience to scope the bounty to.
      #
      #   @return [String, nil]
      optional :experience_id, String, nil?: true

      # @!attribute origin_account_id
      #   The user (user*\*) or company (biz*\*) tag whose balance funds this bounty pool.
      #   Defaults to the requester's personal balance when omitted. The requester must be
      #   the user themself or an owner/admin of the company.
      #
      #   @return [String, nil]
      optional :origin_account_id, String, nil?: true

      # @!attribute post_markdown_content
      #   Optional markdown body for the anchor forum post. Falls back to the bounty
      #   description when omitted.
      #
      #   @return [String, nil]
      optional :post_markdown_content, String, nil?: true

      # @!attribute post_title
      #   Optional title for the anchor forum post. Falls back to the bounty title when
      #   omitted.
      #
      #   @return [String, nil]
      optional :post_title, String, nil?: true

      # @!method initialize(base_unit_amount:, currency:, description:, title:, accepted_submissions_limit: nil, allowed_country_codes: nil, business_goal_type: nil, experience_id: nil, origin_account_id: nil, post_markdown_content: nil, post_title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::BountyCreateParams} for more details.
      #
      #   @param base_unit_amount [Float] The amount paid to each approved submission. The total bounty pool funded is thi
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency for the bounty pool funding amount.
      #
      #   @param description [String] The description of the bounty.
      #
      #   @param title [String] The title of the bounty.
      #
      #   @param accepted_submissions_limit [Integer, nil] The number of submissions that can be approved before the bounty closes. Default
      #
      #   @param allowed_country_codes [Array<String>, nil] The ISO3166 country codes where this bounty should be visible. Empty means globa
      #
      #   @param business_goal_type [Symbol, WhopSDK::Models::BountyCreateParams::BusinessGoalType, nil] What the poster is trying to accomplish with a workforce bounty. Used for produc
      #
      #   @param experience_id [String, nil] An optional experience to scope the bounty to.
      #
      #   @param origin_account_id [String, nil] The user (user*\*) or company (biz*\*) tag whose balance funds this bounty pool.
      #   D
      #
      #   @param post_markdown_content [String, nil] Optional markdown body for the anchor forum post. Falls back to the bounty descr
      #
      #   @param post_title [String, nil] Optional title for the anchor forum post. Falls back to the bounty title when om
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # What the poster is trying to accomplish with a workforce bounty. Used for
      # product taxonomy and analytics, separate from the bounty's implementation type.
      module BusinessGoalType
        extend WhopSDK::Internal::Type::Enum

        CLIPPING = :clipping
        POST_ENGAGEMENT = :post_engagement
        OWNED_ACCOUNT_GROWTH = :owned_account_growth
        UGC_CONTENT = :ugc_content
        LOCAL_ACTIVATION = :local_activation
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
