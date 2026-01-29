# typed: strong

module WhopSDK
  module Models
    class DmMemberUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::DmMemberUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The notification preferences for a DMs feed member
      sig do
        returns(
          T.nilable(
            WhopSDK::DmMemberUpdateParams::NotificationPreference::OrSymbol
          )
        )
      end
      attr_accessor :notification_preference

      # The statuses of a DMs feed member
      sig do
        returns(T.nilable(WhopSDK::DmMemberUpdateParams::Status::OrSymbol))
      end
      attr_accessor :status

      sig do
        params(
          notification_preference:
            T.nilable(
              WhopSDK::DmMemberUpdateParams::NotificationPreference::OrSymbol
            ),
          status: T.nilable(WhopSDK::DmMemberUpdateParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The notification preferences for a DMs feed member
        notification_preference: nil,
        # The statuses of a DMs feed member
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            notification_preference:
              T.nilable(
                WhopSDK::DmMemberUpdateParams::NotificationPreference::OrSymbol
              ),
            status: T.nilable(WhopSDK::DmMemberUpdateParams::Status::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The notification preferences for a DMs feed member
      module NotificationPreference
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::DmMemberUpdateParams::NotificationPreference)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :all,
            WhopSDK::DmMemberUpdateParams::NotificationPreference::TaggedSymbol
          )
        MENTIONS =
          T.let(
            :mentions,
            WhopSDK::DmMemberUpdateParams::NotificationPreference::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            WhopSDK::DmMemberUpdateParams::NotificationPreference::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::DmMemberUpdateParams::NotificationPreference::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The statuses of a DMs feed member
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::DmMemberUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REQUESTED =
          T.let(:requested, WhopSDK::DmMemberUpdateParams::Status::TaggedSymbol)
        ACCEPTED =
          T.let(:accepted, WhopSDK::DmMemberUpdateParams::Status::TaggedSymbol)
        HIDDEN =
          T.let(:hidden, WhopSDK::DmMemberUpdateParams::Status::TaggedSymbol)
        CLOSED =
          T.let(:closed, WhopSDK::DmMemberUpdateParams::Status::TaggedSymbol)
        ARCHIVED =
          T.let(:archived, WhopSDK::DmMemberUpdateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::DmMemberUpdateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
