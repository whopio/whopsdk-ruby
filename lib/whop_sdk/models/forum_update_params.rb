# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Forums#update
    class ForumUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute banner_image
      #   The banner image displayed at the top of the forum page. Pass null to remove the
      #   existing banner.
      #
      #   @return [WhopSDK::Models::ForumUpdateParams::BannerImage, nil]
      optional :banner_image, -> { WhopSDK::ForumUpdateParams::BannerImage }, nil?: true

      # @!attribute email_notification_preference
      #   Email notification preference option for a forum feed
      #
      #   @return [Symbol, WhopSDK::Models::EmailNotificationPreferences, nil]
      optional :email_notification_preference, enum: -> { WhopSDK::EmailNotificationPreferences }, nil?: true

      # @!attribute who_can_comment
      #   Who can comment on a forum feed
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanCommentTypes, nil]
      optional :who_can_comment, enum: -> { WhopSDK::WhoCanCommentTypes }, nil?: true

      # @!attribute who_can_post
      #   Who can post on a forum feed
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanPostTypes, nil]
      optional :who_can_post, enum: -> { WhopSDK::WhoCanPostTypes }, nil?: true

      # @!method initialize(id:, banner_image: nil, email_notification_preference: nil, who_can_comment: nil, who_can_post: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ForumUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param banner_image [WhopSDK::Models::ForumUpdateParams::BannerImage, nil] The banner image displayed at the top of the forum page. Pass null to remove the
      #
      #   @param email_notification_preference [Symbol, WhopSDK::Models::EmailNotificationPreferences, nil] Email notification preference option for a forum feed
      #
      #   @param who_can_comment [Symbol, WhopSDK::Models::WhoCanCommentTypes, nil] Who can comment on a forum feed
      #
      #   @param who_can_post [Symbol, WhopSDK::Models::WhoCanPostTypes, nil] Who can post on a forum feed
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The banner image displayed at the top of the forum page. Pass null to remove the
        #   existing banner.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
