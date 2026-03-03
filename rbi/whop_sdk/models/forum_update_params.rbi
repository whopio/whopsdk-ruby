# typed: strong

module WhopSDK
  module Models
    class ForumUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ForumUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The banner image displayed at the top of the forum page. Pass null to remove the
      # existing banner.
      sig { returns(T.nilable(WhopSDK::ForumUpdateParams::BannerImage)) }
      attr_reader :banner_image

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::ForumUpdateParams::BannerImage::OrHash)
        ).void
      end
      attr_writer :banner_image

      # Email notification preference option for a forum feed
      sig do
        returns(T.nilable(WhopSDK::EmailNotificationPreferences::OrSymbol))
      end
      attr_accessor :email_notification_preference

      # Who can comment on a forum feed
      sig { returns(T.nilable(WhopSDK::WhoCanCommentTypes::OrSymbol)) }
      attr_accessor :who_can_comment

      # Who can post on a forum feed
      sig { returns(T.nilable(WhopSDK::WhoCanPostTypes::OrSymbol)) }
      attr_accessor :who_can_post

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::ForumUpdateParams::BannerImage::OrHash),
          email_notification_preference:
            T.nilable(WhopSDK::EmailNotificationPreferences::OrSymbol),
          who_can_comment: T.nilable(WhopSDK::WhoCanCommentTypes::OrSymbol),
          who_can_post: T.nilable(WhopSDK::WhoCanPostTypes::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The banner image displayed at the top of the forum page. Pass null to remove the
        # existing banner.
        banner_image: nil,
        # Email notification preference option for a forum feed
        email_notification_preference: nil,
        # Who can comment on a forum feed
        who_can_comment: nil,
        # Who can post on a forum feed
        who_can_post: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            banner_image: T.nilable(WhopSDK::ForumUpdateParams::BannerImage),
            email_notification_preference:
              T.nilable(WhopSDK::EmailNotificationPreferences::OrSymbol),
            who_can_comment: T.nilable(WhopSDK::WhoCanCommentTypes::OrSymbol),
            who_can_post: T.nilable(WhopSDK::WhoCanPostTypes::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ForumUpdateParams::BannerImage,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The banner image displayed at the top of the forum page. Pass null to remove the
        # existing banner.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
