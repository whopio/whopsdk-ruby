# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Referrals#referred_users
    class ReferralReferredUsersParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute first
      #   Number of referred users to return from the start of the window.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute has_businesses
      #   When true, only referred users who brought at least one business onto Whop.
      #
      #   @return [Boolean, nil]
      optional :has_businesses, WhopSDK::Internal::Type::Boolean

      # @!attribute has_earning_businesses
      #   When true, only referred users with at least one business that has generated
      #   earnings.
      #
      #   @return [Boolean, nil]
      optional :has_earning_businesses, WhopSDK::Internal::Type::Boolean

      # @!attribute last
      #   Number of referred users to return from the end of the window.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!method initialize(after: nil, before: nil, first: nil, has_businesses: nil, has_earning_businesses: nil, last: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ReferralReferredUsersParams} for more details.
      #
      #   @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @param first [Integer] Number of referred users to return from the start of the window.
      #
      #   @param has_businesses [Boolean] When true, only referred users who brought at least one business onto Whop.
      #
      #   @param has_earning_businesses [Boolean] When true, only referred users with at least one business that has generated ear
      #
      #   @param last [Integer] Number of referred users to return from the end of the window.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
