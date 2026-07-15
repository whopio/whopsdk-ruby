# typed: strong

module WhopSDK
  module Models
    class PartnerCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PartnerCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The caller's referral link — businesses that sign up through it are attributed
      # to the caller.
      sig { returns(String) }
      attr_accessor :referral_link

      # When the caller became a Whop partner.
      sig { returns(Time) }
      attr_accessor :whop_partner_enabled_at

      sig do
        params(referral_link: String, whop_partner_enabled_at: Time).returns(
          T.attached_class
        )
      end
      def self.new(
        # The caller's referral link — businesses that sign up through it are attributed
        # to the caller.
        referral_link:,
        # When the caller became a Whop partner.
        whop_partner_enabled_at:
      )
      end

      sig do
        override.returns(
          { referral_link: String, whop_partner_enabled_at: Time }
        )
      end
      def to_hash
      end
    end
  end
end
