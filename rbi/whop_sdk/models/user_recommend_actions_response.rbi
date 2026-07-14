# typed: strong

module WhopSDK
  module Models
    class UserRecommendActionsResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::UserRecommendActionsResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[WhopSDK::Models::UserRecommendActionsResponse::Data])
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              WhopSDK::Models::UserRecommendActionsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data: T::Array[WhopSDK::Models::UserRecommendActionsResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::UserRecommendActionsResponse::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The account (`biz_`) a business recommendation is for, or `null` for personal
        # recommendations
        sig { returns(T.nilable(String)) }
        attr_accessor :account_id

        # The account's display name, or `null`
        sig { returns(T.nilable(String)) }
        attr_accessor :account_name

        # The recommendation; new values may be added, so handle unknown actions
        # gracefully
        sig do
          returns(
            WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
          )
        end
        attr_accessor :action

        sig { returns(T::Array[String]) }
        attr_accessor :blocked_capabilities

        # The URL the call-to-action links to
        sig { returns(String) }
        attr_accessor :cta

        # Button label
        sig { returns(String) }
        attr_accessor :cta_label

        # Supporting copy, or empty
        sig { returns(String) }
        attr_accessor :description

        # Illustration icon URL, or `null`
        sig { returns(T.nilable(String)) }
        attr_accessor :icon_url

        # Estimated impact from 0-100, or `null` when not ranked
        sig { returns(T.nilable(Integer)) }
        attr_accessor :impact_score

        # Why this action was recommended, or `null`
        sig { returns(T.nilable(String)) }
        attr_accessor :reasoning

        # Always optional — never blocking
        sig do
          returns(
            WhopSDK::Models::UserRecommendActionsResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Headline for the recommendation
        sig { returns(String) }
        attr_accessor :title

        sig do
          params(
            account_id: T.nilable(String),
            account_name: T.nilable(String),
            action:
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::OrSymbol,
            blocked_capabilities: T::Array[String],
            cta: String,
            cta_label: String,
            description: String,
            icon_url: T.nilable(String),
            impact_score: T.nilable(Integer),
            reasoning: T.nilable(String),
            status:
              WhopSDK::Models::UserRecommendActionsResponse::Data::Status::OrSymbol,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The account (`biz_`) a business recommendation is for, or `null` for personal
          # recommendations
          account_id:,
          # The account's display name, or `null`
          account_name:,
          # The recommendation; new values may be added, so handle unknown actions
          # gracefully
          action:,
          blocked_capabilities:,
          # The URL the call-to-action links to
          cta:,
          # Button label
          cta_label:,
          # Supporting copy, or empty
          description:,
          # Illustration icon URL, or `null`
          icon_url:,
          # Estimated impact from 0-100, or `null` when not ranked
          impact_score:,
          # Why this action was recommended, or `null`
          reasoning:,
          # Always optional — never blocking
          status:,
          # Headline for the recommendation
          title:
        )
        end

        sig do
          override.returns(
            {
              account_id: T.nilable(String),
              account_name: T.nilable(String),
              action:
                WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol,
              blocked_capabilities: T::Array[String],
              cta: String,
              cta_label: String,
              description: String,
              icon_url: T.nilable(String),
              impact_score: T.nilable(Integer),
              reasoning: T.nilable(String),
              status:
                WhopSDK::Models::UserRecommendActionsResponse::Data::Status::TaggedSymbol,
              title: String
            }
          )
        end
        def to_hash
        end

        # The recommendation; new values may be added, so handle unknown actions
        # gracefully
        module Action
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::UserRecommendActionsResponse::Data::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATE_BUSINESS =
            T.let(
              :create_business,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          BECOME_AFFILIATE =
            T.let(
              :become_affiliate,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          THEME_BUSINESS =
            T.let(
              :theme_business,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          CREATE_PRODUCT =
            T.let(
              :create_product,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          CREATE_PLAN =
            T.let(
              :create_plan,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          VERIFY_IDENTITY =
            T.let(
              :verify_identity,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          CONNECT_AFFILIATE_PROGRAM =
            T.let(
              :connect_affiliate_program,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          CREATE_PROMOTION =
            T.let(
              :create_promotion,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          SETUP_TRACKING_PIXEL =
            T.let(
              :setup_tracking_pixel,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          MIGRATE_FROM_STRIPE =
            T.let(
              :migrate_from_stripe,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          ACCEPT_FIRST_PAYMENT =
            T.let(
              :accept_first_payment,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          LAUNCH_FIRST_AD =
            T.let(
              :launch_first_ad,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          INVITE_TEAM_MEMBER =
            T.let(
              :invite_team_member,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          ENABLE_TAX_COLLECTION =
            T.let(
              :enable_tax_collection,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          CREATE_CARD =
            T.let(
              :create_card,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          JOIN_WHOP_UNIVERSITY =
            T.let(
              :join_whop_university,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )
          APPLY_FOR_FINANCING =
            T.let(
              :apply_for_financing,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::UserRecommendActionsResponse::Data::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Always optional — never blocking
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::UserRecommendActionsResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPTIONAL =
            T.let(
              :optional,
              WhopSDK::Models::UserRecommendActionsResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::UserRecommendActionsResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
