# typed: strong

module WhopSDK
  module Models
    class Forum < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Forum, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The email notification preference for this forum
      sig { returns(WhopSDK::EmailNotificationPreferences::TaggedSymbol) }
      attr_accessor :email_notification_preference

      # The experience for this forum
      sig { returns(WhopSDK::Forum::Experience) }
      attr_reader :experience

      sig { params(experience: WhopSDK::Forum::Experience::OrHash).void }
      attr_writer :experience

      # Who can comment on this forum
      sig { returns(WhopSDK::WhoCanCommentTypes::TaggedSymbol) }
      attr_accessor :who_can_comment

      # Who can post on this forum
      sig { returns(WhopSDK::WhoCanPostTypes::TaggedSymbol) }
      attr_accessor :who_can_post

      # Represents a forum feed
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
        # The email notification preference for this forum
        email_notification_preference:,
        # The experience for this forum
        experience:,
        # Who can comment on this forum
        who_can_comment:,
        # Who can post on this forum
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

        # The written name of the description.
        sig { returns(String) }
        attr_accessor :name

        # The experience for this forum
        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the experience.
          id:,
          # The written name of the description.
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
