# typed: strong

module WhopSDK
  module Models
    WorkforceBounty = Workforce::WorkforceBounty

    module Workforce
      class WorkforceBounty < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Workforce::WorkforceBounty,
              WhopSDK::Internal::AnyHash
            )
          end

        # Bounty ID, prefixed `bnty_`.
        sig { returns(String) }
        attr_accessor :id

        # Submissions accepted so far.
        sig { returns(Integer) }
        attr_accessor :accepted_submissions_count

        # Number of submissions that can be accepted (winner slots).
        sig { returns(Integer) }
        attr_accessor :accepted_submissions_limit

        sig { returns(T::Array[String]) }
        attr_accessor :allowed_country_codes

        # Total gross budget committed to the bounty: `gross_reward_amount` times
        # `accepted_submissions_limit`.
        sig { returns(Float) }
        attr_accessor :budget_amount

        # What the poster wants the work to achieve.
        sig do
          returns(
            T.nilable(
              WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::TaggedSymbol
            )
          )
        end
        attr_accessor :business_goal_type

        # When the bounty was created, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        # Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
        sig { returns(String) }
        attr_accessor :currency

        # Full task instructions shown to workers.
        sig { returns(String) }
        attr_accessor :description

        # Experience the bounty is hosted in, prefixed `exp_`. Null for platform-wide
        # bounties; may belong to a different account than the funder.
        sig { returns(T.nilable(String)) }
        attr_accessor :experience_id

        # The account whose balance funds the bounty pool, or `null` when a user funds it
        # personally. May differ from the account hosting `experience_id`.
        sig do
          returns(
            T.nilable(WhopSDK::Workforce::WorkforceBounty::FundingAccount)
          )
        end
        attr_reader :funding_account

        sig do
          params(
            funding_account:
              T.nilable(
                WhopSDK::Workforce::WorkforceBounty::FundingAccount::OrHash
              )
          ).void
        end
        attr_writer :funding_account

        # Gross amount paid out from the bounty pool across accepted submissions — worker
        # payouts, platform fees, and affiliate shares together. Tips and reviewer rewards
        # are excluded.
        sig { returns(Float) }
        attr_accessor :gross_paid_out_amount

        # Gross bounty-pool amount allocated per accepted submission, in whole currency
        # units.
        sig { returns(Float) }
        attr_accessor :gross_reward_amount

        # The user who posted the bounty.
        sig { returns(WhopSDK::Workforce::WorkforceBounty::Poster) }
        attr_reader :poster

        sig do
          params(
            poster: WhopSDK::Workforce::WorkforceBounty::Poster::OrHash
          ).void
        end
        attr_writer :poster

        # How often the schedule creates a new bounty. Each occurrence is a separate
        # bounty; the original is not republished.
        sig do
          returns(
            T.nilable(
              WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency::TaggedSymbol
            )
          )
        end
        attr_accessor :scheduled_frequency

        # When a scheduled bounty will publish, as an ISO 8601 timestamp. Null once
        # published, for bounties that were never scheduled, and for terminally failed
        # drafts parked for manual rescheduling.
        sig { returns(T.nilable(String)) }
        attr_accessor :scheduled_publish_at

        # Unfilled winner capacity: `accepted_submissions_limit` minus
        # `accepted_submissions_count`, clamped to zero. Not a signal that the bounty
        # currently accepts new claims.
        sig { returns(Integer) }
        attr_accessor :spots_remaining

        # Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
        # poster and the account's authorized managers; `open` bounties accept new
        # submissions; `closed` bounties are live but no longer accept new submissions;
        # `completed` bounties paid out every winner slot; `canceled` bounties ended
        # before filling their slots.
        sig do
          returns(WhopSDK::Workforce::WorkforceBounty::Status::TaggedSymbol)
        end
        attr_accessor :status

        # When new submissions were explicitly stopped, as an ISO 8601 timestamp. Null
        # when submissions were never explicitly stopped — including closed or completed
        # bounties that simply filled every winner slot.
        sig { returns(T.nilable(String)) }
        attr_accessor :submissions_closed_at

        # Short name of the task shown to workers.
        sig { returns(String) }
        attr_accessor :title

        # Submissions still awaiting an outcome: in progress or pending review.
        sig { returns(Integer) }
        attr_accessor :unresolved_submissions_count

        # When the bounty was last updated, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            accepted_submissions_count: Integer,
            accepted_submissions_limit: Integer,
            allowed_country_codes: T::Array[String],
            budget_amount: Float,
            business_goal_type:
              T.nilable(
                WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::OrSymbol
              ),
            created_at: String,
            currency: String,
            description: String,
            experience_id: T.nilable(String),
            funding_account:
              T.nilable(
                WhopSDK::Workforce::WorkforceBounty::FundingAccount::OrHash
              ),
            gross_paid_out_amount: Float,
            gross_reward_amount: Float,
            poster: WhopSDK::Workforce::WorkforceBounty::Poster::OrHash,
            scheduled_frequency:
              T.nilable(
                WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency::OrSymbol
              ),
            scheduled_publish_at: T.nilable(String),
            spots_remaining: Integer,
            status: WhopSDK::Workforce::WorkforceBounty::Status::OrSymbol,
            submissions_closed_at: T.nilable(String),
            title: String,
            unresolved_submissions_count: Integer,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Bounty ID, prefixed `bnty_`.
          id:,
          # Submissions accepted so far.
          accepted_submissions_count:,
          # Number of submissions that can be accepted (winner slots).
          accepted_submissions_limit:,
          allowed_country_codes:,
          # Total gross budget committed to the bounty: `gross_reward_amount` times
          # `accepted_submissions_limit`.
          budget_amount:,
          # What the poster wants the work to achieve.
          business_goal_type:,
          # When the bounty was created, as an ISO 8601 timestamp.
          created_at:,
          # Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
          currency:,
          # Full task instructions shown to workers.
          description:,
          # Experience the bounty is hosted in, prefixed `exp_`. Null for platform-wide
          # bounties; may belong to a different account than the funder.
          experience_id:,
          # The account whose balance funds the bounty pool, or `null` when a user funds it
          # personally. May differ from the account hosting `experience_id`.
          funding_account:,
          # Gross amount paid out from the bounty pool across accepted submissions — worker
          # payouts, platform fees, and affiliate shares together. Tips and reviewer rewards
          # are excluded.
          gross_paid_out_amount:,
          # Gross bounty-pool amount allocated per accepted submission, in whole currency
          # units.
          gross_reward_amount:,
          # The user who posted the bounty.
          poster:,
          # How often the schedule creates a new bounty. Each occurrence is a separate
          # bounty; the original is not republished.
          scheduled_frequency:,
          # When a scheduled bounty will publish, as an ISO 8601 timestamp. Null once
          # published, for bounties that were never scheduled, and for terminally failed
          # drafts parked for manual rescheduling.
          scheduled_publish_at:,
          # Unfilled winner capacity: `accepted_submissions_limit` minus
          # `accepted_submissions_count`, clamped to zero. Not a signal that the bounty
          # currently accepts new claims.
          spots_remaining:,
          # Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
          # poster and the account's authorized managers; `open` bounties accept new
          # submissions; `closed` bounties are live but no longer accept new submissions;
          # `completed` bounties paid out every winner slot; `canceled` bounties ended
          # before filling their slots.
          status:,
          # When new submissions were explicitly stopped, as an ISO 8601 timestamp. Null
          # when submissions were never explicitly stopped — including closed or completed
          # bounties that simply filled every winner slot.
          submissions_closed_at:,
          # Short name of the task shown to workers.
          title:,
          # Submissions still awaiting an outcome: in progress or pending review.
          unresolved_submissions_count:,
          # When the bounty was last updated, as an ISO 8601 timestamp.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              accepted_submissions_count: Integer,
              accepted_submissions_limit: Integer,
              allowed_country_codes: T::Array[String],
              budget_amount: Float,
              business_goal_type:
                T.nilable(
                  WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::TaggedSymbol
                ),
              created_at: String,
              currency: String,
              description: String,
              experience_id: T.nilable(String),
              funding_account:
                T.nilable(WhopSDK::Workforce::WorkforceBounty::FundingAccount),
              gross_paid_out_amount: Float,
              gross_reward_amount: Float,
              poster: WhopSDK::Workforce::WorkforceBounty::Poster,
              scheduled_frequency:
                T.nilable(
                  WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency::TaggedSymbol
                ),
              scheduled_publish_at: T.nilable(String),
              spots_remaining: Integer,
              status: WhopSDK::Workforce::WorkforceBounty::Status::TaggedSymbol,
              submissions_closed_at: T.nilable(String),
              title: String,
              unresolved_submissions_count: Integer,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        # What the poster wants the work to achieve.
        module BusinessGoalType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Workforce::WorkforceBounty::BusinessGoalType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CLIPPING =
            T.let(
              :clipping,
              WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::TaggedSymbol
            )
          POST_ENGAGEMENT =
            T.let(
              :post_engagement,
              WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::TaggedSymbol
            )
          OWNED_ACCOUNT_GROWTH =
            T.let(
              :owned_account_growth,
              WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::TaggedSymbol
            )
          UGC_CONTENT =
            T.let(
              :ugc_content,
              WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::TaggedSymbol
            )
          LOCAL_ACTIVATION =
            T.let(
              :local_activation,
              WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Workforce::WorkforceBounty::BusinessGoalType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class FundingAccount < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Workforce::WorkforceBounty::FundingAccount,
                WhopSDK::Internal::AnyHash
              )
            end

          # Account ID, prefixed `biz_`.
          sig { returns(String) }
          attr_accessor :id

          # Account display name.
          sig { returns(String) }
          attr_accessor :title

          # The account whose balance funds the bounty pool, or `null` when a user funds it
          # personally. May differ from the account hosting `experience_id`.
          sig { params(id: String, title: String).returns(T.attached_class) }
          def self.new(
            # Account ID, prefixed `biz_`.
            id:,
            # Account display name.
            title:
          )
          end

          sig { override.returns({ id: String, title: String }) }
          def to_hash
          end
        end

        class Poster < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Workforce::WorkforceBounty::Poster,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID, prefixed `user_`.
          sig { returns(String) }
          attr_accessor :id

          # Display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          sig do
            returns(WhopSDK::Workforce::WorkforceBounty::Poster::ProfilePicture)
          end
          attr_reader :profile_picture

          sig do
            params(
              profile_picture:
                WhopSDK::Workforce::WorkforceBounty::Poster::ProfilePicture::OrHash
            ).void
          end
          attr_writer :profile_picture

          # Public username.
          sig { returns(String) }
          attr_accessor :username

          # The user who posted the bounty.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              profile_picture:
                WhopSDK::Workforce::WorkforceBounty::Poster::ProfilePicture::OrHash,
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID, prefixed `user_`.
            id:,
            # Display name.
            name:,
            # Avatar wrapper; its `url` is always present, using a generated placeholder when
            # the user set no picture.
            profile_picture:,
            # Public username.
            username:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::Workforce::WorkforceBounty::Poster::ProfilePicture,
                username: String
              }
            )
          end
          def to_hash
          end

          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Workforce::WorkforceBounty::Poster::ProfilePicture,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Avatar image URL. Always present — a generated placeholder when the user set no
            # picture.
            sig { returns(String) }
            attr_accessor :url

            # Avatar wrapper; its `url` is always present, using a generated placeholder when
            # the user set no picture.
            sig { params(url: String).returns(T.attached_class) }
            def self.new(
              # Avatar image URL. Always present — a generated placeholder when the user set no
              # picture.
              url:
            )
            end

            sig { override.returns({ url: String }) }
            def to_hash
            end
          end
        end

        # How often the schedule creates a new bounty. Each occurrence is a separate
        # bounty; the original is not republished.
        module ScheduledFrequency
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONCE =
            T.let(
              :once,
              WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency::TaggedSymbol
            )
          HOURLY =
            T.let(
              :hourly,
              WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency::TaggedSymbol
            )
          DAILY =
            T.let(
              :daily,
              WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :weekly,
              WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
        # poster and the account's authorized managers; `open` bounties accept new
        # submissions; `closed` bounties are live but no longer accept new submissions;
        # `completed` bounties paid out every winner slot; `canceled` bounties ended
        # before filling their slots.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Workforce::WorkforceBounty::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SCHEDULED =
            T.let(
              :scheduled,
              WhopSDK::Workforce::WorkforceBounty::Status::TaggedSymbol
            )
          OPEN =
            T.let(
              :open,
              WhopSDK::Workforce::WorkforceBounty::Status::TaggedSymbol
            )
          CLOSED =
            T.let(
              :closed,
              WhopSDK::Workforce::WorkforceBounty::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              WhopSDK::Workforce::WorkforceBounty::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              WhopSDK::Workforce::WorkforceBounty::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Workforce::WorkforceBounty::Status::TaggedSymbol
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
