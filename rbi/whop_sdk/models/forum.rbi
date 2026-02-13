# typed: strong

module WhopSDK
  module Models
    class Forum < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Forum, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The email notification setting that controls which posts trigger email alerts.
      # One of: all_admin_posts, only_weekly_summary, none.
      sig { returns(WhopSDK::EmailNotificationPreferences::TaggedSymbol) }
      attr_accessor :email_notification_preference

      # The parent experience that this forum belongs to.
      sig { returns(WhopSDK::Forum::Experience) }
      attr_reader :experience

      sig { params(experience: WhopSDK::Forum::Experience::OrHash).void }
      attr_writer :experience

      # The permission level controlling who can comment on posts. One of: everyone,
      # admins.
      sig { returns(WhopSDK::WhoCanCommentTypes::TaggedSymbol) }
      attr_accessor :who_can_comment

      # The permission level controlling who can create new posts. One of: everyone,
      # admins.
      sig { returns(WhopSDK::WhoCanPostTypes::TaggedSymbol) }
      attr_accessor :who_can_post

      # A discussion forum where members can create posts, comment, and react, belonging
      # to an experience.
      sig do
        params(
          id: String,
          email_notification_preference:
            WhopSDK::EmailNotificationPreferences::OrSymbol,
          experience: WhopSDK::Forum::Experience::OrHash,
          who_can_comment: WhopSDK::WhoCanCommentTypes::OrSymbol,
          who_can_post: WhopSDK::WhoCanPostTypes::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entity
        id:,
        # The email notification setting that controls which posts trigger email alerts.
        # One of: all_admin_posts, only_weekly_summary, none.
        email_notification_preference:,
        # The parent experience that this forum belongs to.
        experience:,
        # The permission level controlling who can comment on posts. One of: everyone,
        # admins.
        who_can_comment:,
        # The permission level controlling who can create new posts. One of: everyone,
        # admins.
        who_can_post:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            email_notification_preference:
              WhopSDK::EmailNotificationPreferences::TaggedSymbol,
            experience: WhopSDK::Forum::Experience,
            who_can_comment: WhopSDK::WhoCanCommentTypes::TaggedSymbol,
            who_can_post: WhopSDK::WhoCanPostTypes::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Experience < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Forum::Experience, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the experience.
        sig { returns(String) }
        attr_accessor :id

        # The display name of this experience shown to users in the product navigation.
        # Maximum 255 characters.
        sig { returns(String) }
        attr_accessor :name

        # The parent experience that this forum belongs to.
        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the experience.
          id:,
          # The display name of this experience shown to users in the product navigation.
          # Maximum 255 characters.
          name:
        )
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
