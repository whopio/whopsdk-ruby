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

      # What the poster is trying to accomplish with a workforce bounty. Used for
      # product taxonomy and analytics, separate from the bounty's implementation type.
      sig do
        returns(
          T.nilable(WhopSDK::BountyCreateParams::BusinessGoalType::OrSymbol)
        )
      end
      attr_accessor :business_goal_type

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
          business_goal_type:
            T.nilable(WhopSDK::BountyCreateParams::BusinessGoalType::OrSymbol),
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
        # What the poster is trying to accomplish with a workforce bounty. Used for
        # product taxonomy and analytics, separate from the bounty's implementation type.
        business_goal_type: nil,
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
            business_goal_type:
              T.nilable(
                WhopSDK::BountyCreateParams::BusinessGoalType::OrSymbol
              ),
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

      # What the poster is trying to accomplish with a workforce bounty. Used for
      # product taxonomy and analytics, separate from the bounty's implementation type.
      module BusinessGoalType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::BountyCreateParams::BusinessGoalType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIPPING =
          T.let(
            :clipping,
            WhopSDK::BountyCreateParams::BusinessGoalType::TaggedSymbol
          )
        POST_ENGAGEMENT =
          T.let(
            :post_engagement,
            WhopSDK::BountyCreateParams::BusinessGoalType::TaggedSymbol
          )
        OWNED_ACCOUNT_GROWTH =
          T.let(
            :owned_account_growth,
            WhopSDK::BountyCreateParams::BusinessGoalType::TaggedSymbol
          )
        UGC_CONTENT =
          T.let(
            :ugc_content,
            WhopSDK::BountyCreateParams::BusinessGoalType::TaggedSymbol
          )
        LOCAL_ACTIVATION =
          T.let(
            :local_activation,
            WhopSDK::BountyCreateParams::BusinessGoalType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            WhopSDK::BountyCreateParams::BusinessGoalType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::BountyCreateParams::BusinessGoalType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
