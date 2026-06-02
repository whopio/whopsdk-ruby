# typed: strong

module WhopSDK
  module Models
    class AccountSocialLink < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountSocialLink, WhopSDK::Internal::AnyHash)
        end

      # The ID of the social link
      sig { returns(String) }
      attr_accessor :id

      # The optional display title for the social link
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The social link URL
      sig { returns(String) }
      attr_accessor :url

      # The social platform for this link
      sig { returns(WhopSDK::AccountSocialLink::Website::TaggedSymbol) }
      attr_accessor :website

      sig do
        params(
          id: String,
          title: T.nilable(String),
          url: String,
          website: WhopSDK::AccountSocialLink::Website::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the social link
        id:,
        # The optional display title for the social link
        title:,
        # The social link URL
        url:,
        # The social platform for this link
        website:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            title: T.nilable(String),
            url: String,
            website: WhopSDK::AccountSocialLink::Website::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The social platform for this link
      module Website
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AccountSocialLink::Website) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        X = T.let(:x, WhopSDK::AccountSocialLink::Website::TaggedSymbol)
        INSTAGRAM =
          T.let(:instagram, WhopSDK::AccountSocialLink::Website::TaggedSymbol)
        FACEBOOK =
          T.let(:facebook, WhopSDK::AccountSocialLink::Website::TaggedSymbol)
        TIKTOK =
          T.let(:tiktok, WhopSDK::AccountSocialLink::Website::TaggedSymbol)
        YOUTUBE =
          T.let(:youtube, WhopSDK::AccountSocialLink::Website::TaggedSymbol)
        LINKEDIN =
          T.let(:linkedin, WhopSDK::AccountSocialLink::Website::TaggedSymbol)
        TWITCH =
          T.let(:twitch, WhopSDK::AccountSocialLink::Website::TaggedSymbol)
        WEBSITE =
          T.let(:website, WhopSDK::AccountSocialLink::Website::TaggedSymbol)
        CUSTOM =
          T.let(:custom, WhopSDK::AccountSocialLink::Website::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AccountSocialLink::Website::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
