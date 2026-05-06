# typed: strong

module WhopSDK
  module Models
    class BountyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::BountyCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The amount paid to each approved submission. The total bounty pool funded is
      # this amount times accepted_submissions_limit.
      sig { returns(Float) }
      attr_accessor :base_unit_amount

      # The currency for the bounty pool funding amount.
      sig { returns(WhopSDK::Currency::OrSymbol) }
      attr_accessor :currency

      # The description of the bounty.
      sig { returns(String) }
      attr_accessor :description

      # The title of the bounty.
      sig { returns(String) }
      attr_accessor :title

      # The number of submissions that can be approved before the bounty closes.
      # Defaults to 1.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :accepted_submissions_limit

      # The ISO3166 country codes where this bounty should be visible. Empty means
      # globally visible.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :allowed_country_codes

      # An optional experience to scope the bounty to.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_id

      # The user (user*\*) or company (biz*\*) tag whose balance funds this bounty pool.
      # Defaults to the requester's personal balance when omitted. The requester must be
      # the user themself or an owner/admin of the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :origin_account_id

      # Optional markdown body for the anchor forum post. Falls back to the bounty
      # description when omitted.
      sig { returns(T.nilable(String)) }
      attr_accessor :post_markdown_content

      # Optional title for the anchor forum post. Falls back to the bounty title when
      # omitted.
      sig { returns(T.nilable(String)) }
      attr_accessor :post_title

      sig do
        params(
          base_unit_amount: Float,
          currency: WhopSDK::Currency::OrSymbol,
          description: String,
          title: String,
          accepted_submissions_limit: T.nilable(Integer),
          allowed_country_codes: T.nilable(T::Array[String]),
          experience_id: T.nilable(String),
          origin_account_id: T.nilable(String),
          post_markdown_content: T.nilable(String),
          post_title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount paid to each approved submission. The total bounty pool funded is
        # this amount times accepted_submissions_limit.
        base_unit_amount:,
        # The currency for the bounty pool funding amount.
        currency:,
        # The description of the bounty.
        description:,
        # The title of the bounty.
        title:,
        # The number of submissions that can be approved before the bounty closes.
        # Defaults to 1.
        accepted_submissions_limit: nil,
        # The ISO3166 country codes where this bounty should be visible. Empty means
        # globally visible.
        allowed_country_codes: nil,
        # An optional experience to scope the bounty to.
        experience_id: nil,
        # The user (user*\*) or company (biz*\*) tag whose balance funds this bounty pool.
        # Defaults to the requester's personal balance when omitted. The requester must be
        # the user themself or an owner/admin of the company.
        origin_account_id: nil,
        # Optional markdown body for the anchor forum post. Falls back to the bounty
        # description when omitted.
        post_markdown_content: nil,
        # Optional title for the anchor forum post. Falls back to the bounty title when
        # omitted.
        post_title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            base_unit_amount: Float,
            currency: WhopSDK::Currency::OrSymbol,
            description: String,
            title: String,
            accepted_submissions_limit: T.nilable(Integer),
            allowed_country_codes: T.nilable(T::Array[String]),
            experience_id: T.nilable(String),
            origin_account_id: T.nilable(String),
            post_markdown_content: T.nilable(String),
            post_title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
