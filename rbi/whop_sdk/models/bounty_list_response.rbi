# typed: strong

module WhopSDK
  module Models
    class BountyListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::BountyListResponse, WhopSDK::Internal::AnyHash)
        end

      # Bounty ID, prefixed `bnty_`.
      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          T::Array[
            WhopSDK::Models::BountyListResponse::AcceptedDeliverableType::TaggedSymbol
          ]
        )
      end
      attr_accessor :accepted_deliverable_types

      # Submissions accepted so far.
      sig { returns(Integer) }
      attr_accessor :accepted_submissions_count

      # Number of submissions that can be accepted (winner slots).
      sig { returns(Integer) }
      attr_accessor :accepted_submissions_limit

      # How many winner slots one worker can win. Defaults to `1`. Wins plus proofs
      # awaiting review never exceed this number, and a worker runs one attempt at a
      # time. Cannot exceed `accepted_submissions_limit`.
      sig { returns(Integer) }
      attr_accessor :accepted_submissions_per_user_limit

      # What a referrer earns per accepted submission when the worker arrived through
      # their affiliate link, in whole currency units, at the standard platform fee
      # rate. Taken out of the worker's post-fee reward rather than added on top. `0`
      # when the bounty pays no affiliate share, including bounties tied to no account,
      # which cannot record a referral.
      sig { returns(Float) }
      attr_accessor :affiliate_share_amount

      sig { returns(T::Array[String]) }
      attr_accessor :allowed_country_codes

      # Total gross budget committed to the bounty: `gross_reward_amount` times
      # `accepted_submissions_limit`.
      sig { returns(Float) }
      attr_accessor :budget_amount

      # What the poster wants the work to achieve, declared once at create. `null` for
      # bounties created before the taxonomy rolled out.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
          )
        )
      end
      attr_accessor :business_goal_type

      # When cancellation was requested, as an ISO 8601 timestamp. On a `closed` bounty
      # this means the cancel is pending: submissions are stopped and the bounty cancels
      # once in-flight submissions resolve. On a `canceled` bounty it records when the
      # cancellation was requested. `null` when no cancellation was ever requested.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancel_requested_at

      # When the bounty was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
      sig { returns(String) }
      attr_accessor :currency

      # Full task instructions shown to workers.
      sig { returns(String) }
      attr_accessor :description

      # Experience the bounty's discussion thread lives in, prefixed `exp_`. Read this —
      # not `experience_id` — to open the thread: a platform-wide bounty has no hosting
      # experience of its own but its discussion still lives in one.
      sig { returns(T.nilable(String)) }
      attr_accessor :discussion_experience_id

      # Forum feed containing the bounty's discussion thread. `null` for a bounty with
      # no forum post.
      sig { returns(T.nilable(String)) }
      attr_accessor :discussion_feed_id

      # Forum post anchoring the bounty's discussion thread. Read together with
      # `discussion_experience_id` to address the thread. `null` for a bounty with no
      # forum post.
      sig { returns(T.nilable(String)) }
      attr_accessor :discussion_post_id

      # Experience the bounty is hosted in, prefixed `exp_`. `null` for platform-wide
      # bounties; may belong to a different account than the funder.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_id

      # Account whose balance funds the bounty pool, or `null` when a user funds it
      # personally. May differ from the account hosting `experience_id`.
      sig do
        returns(T.nilable(WhopSDK::Models::BountyListResponse::FundingAccount))
      end
      attr_reader :funding_account

      sig do
        params(
          funding_account:
            T.nilable(
              WhopSDK::Models::BountyListResponse::FundingAccount::OrHash
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

      # Account hosting the bounty's forum — the one whose `route` and `experience_id`
      # address its discussion thread, and where its submissions dashboard lives. `null`
      # for a platform-wide bounty with no host. May differ from `funding_account`.
      sig do
        returns(T.nilable(WhopSDK::Models::BountyListResponse::HostingAccount))
      end
      attr_reader :hosting_account

      sig do
        params(
          hosting_account:
            T.nilable(
              WhopSDK::Models::BountyListResponse::HostingAccount::OrHash
            )
        ).void
      end
      attr_writer :hosting_account

      # Total verified footage a submission must accumulate before it can be submitted,
      # in seconds. Always a whole number of hours. Present only on `data_capture`
      # bounties — it is what `net_reward_amount` pays for, so rate displays divide by
      # it. `null` for every other goal type.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :min_total_verified_duration_seconds

      # What a worker is quoted per accepted submission after the platform fee, in whole
      # currency units. The exact post-fee figure, at the standard platform fee rate — a
      # worker who locked a different rate, or who arrived through an affiliate link, is
      # paid a different amount.
      sig { returns(Float) }
      attr_accessor :net_reward_amount

      # User who posted the bounty — the account owner when created with an account API
      # key.
      sig { returns(WhopSDK::Models::BountyListResponse::Poster) }
      attr_reader :poster

      sig do
        params(poster: WhopSDK::Models::BountyListResponse::Poster::OrHash).void
      end
      attr_writer :poster

      # How often the schedule creates a new bounty. Each occurrence is a separate
      # bounty; the original is not republished.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::BountyListResponse::ScheduledFrequency::TaggedSymbol
          )
        )
      end
      attr_accessor :scheduled_frequency

      # When a scheduled bounty will publish, as an ISO 8601 timestamp. `null` once
      # published, for bounties that were never scheduled, and for terminally failed
      # drafts parked for manual rescheduling.
      sig { returns(T.nilable(String)) }
      attr_accessor :scheduled_publish_at

      # Unfilled winner capacity: `accepted_submissions_limit` minus
      # `accepted_submissions_count`, clamped to zero. Not on its own a signal that the
      # bounty accepts new claims — read `status` for that: only an `open` bounty takes
      # new submissions.
      sig { returns(Integer) }
      attr_accessor :spots_remaining

      # Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
      # poster and the account's authorized managers; `open` bounties accept new
      # submissions; `closed` bounties are live but no longer accept new submissions;
      # `completed` bounties paid out every winner slot; `canceled` bounties ended
      # before filling their slots.
      sig { returns(WhopSDK::Models::BountyListResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # When new submissions stopped being accepted, as an ISO 8601 timestamp. Set when
      # a cancellation is requested on a bounty with work in flight, so in-flight
      # submissions can resolve before the bounty cancels. `null` when submissions were
      # never stopped — including completed bounties that simply filled every winner
      # slot.
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

      # How many winner slots the authenticated user has already won on this bounty.
      # Read against `accepted_submissions_per_user_limit` to show a worker their
      # remaining allowance. `0` when the request has no authenticated user.
      sig { returns(Integer) }
      attr_accessor :viewer_accepted_submissions_count

      sig do
        params(
          id: String,
          accepted_deliverable_types:
            T::Array[
              WhopSDK::Models::BountyListResponse::AcceptedDeliverableType::OrSymbol
            ],
          accepted_submissions_count: Integer,
          accepted_submissions_limit: Integer,
          accepted_submissions_per_user_limit: Integer,
          affiliate_share_amount: Float,
          allowed_country_codes: T::Array[String],
          budget_amount: Float,
          business_goal_type:
            T.nilable(
              WhopSDK::Models::BountyListResponse::BusinessGoalType::OrSymbol
            ),
          cancel_requested_at: T.nilable(String),
          created_at: String,
          currency: String,
          description: String,
          discussion_experience_id: T.nilable(String),
          discussion_feed_id: T.nilable(String),
          discussion_post_id: T.nilable(String),
          experience_id: T.nilable(String),
          funding_account:
            T.nilable(
              WhopSDK::Models::BountyListResponse::FundingAccount::OrHash
            ),
          gross_paid_out_amount: Float,
          gross_reward_amount: Float,
          hosting_account:
            T.nilable(
              WhopSDK::Models::BountyListResponse::HostingAccount::OrHash
            ),
          min_total_verified_duration_seconds: T.nilable(Integer),
          net_reward_amount: Float,
          poster: WhopSDK::Models::BountyListResponse::Poster::OrHash,
          scheduled_frequency:
            T.nilable(
              WhopSDK::Models::BountyListResponse::ScheduledFrequency::OrSymbol
            ),
          scheduled_publish_at: T.nilable(String),
          spots_remaining: Integer,
          status: WhopSDK::Models::BountyListResponse::Status::OrSymbol,
          submissions_closed_at: T.nilable(String),
          title: String,
          unresolved_submissions_count: Integer,
          updated_at: String,
          viewer_accepted_submissions_count: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Bounty ID, prefixed `bnty_`.
        id:,
        accepted_deliverable_types:,
        # Submissions accepted so far.
        accepted_submissions_count:,
        # Number of submissions that can be accepted (winner slots).
        accepted_submissions_limit:,
        # How many winner slots one worker can win. Defaults to `1`. Wins plus proofs
        # awaiting review never exceed this number, and a worker runs one attempt at a
        # time. Cannot exceed `accepted_submissions_limit`.
        accepted_submissions_per_user_limit:,
        # What a referrer earns per accepted submission when the worker arrived through
        # their affiliate link, in whole currency units, at the standard platform fee
        # rate. Taken out of the worker's post-fee reward rather than added on top. `0`
        # when the bounty pays no affiliate share, including bounties tied to no account,
        # which cannot record a referral.
        affiliate_share_amount:,
        allowed_country_codes:,
        # Total gross budget committed to the bounty: `gross_reward_amount` times
        # `accepted_submissions_limit`.
        budget_amount:,
        # What the poster wants the work to achieve, declared once at create. `null` for
        # bounties created before the taxonomy rolled out.
        business_goal_type:,
        # When cancellation was requested, as an ISO 8601 timestamp. On a `closed` bounty
        # this means the cancel is pending: submissions are stopped and the bounty cancels
        # once in-flight submissions resolve. On a `canceled` bounty it records when the
        # cancellation was requested. `null` when no cancellation was ever requested.
        cancel_requested_at:,
        # When the bounty was created, as an ISO 8601 timestamp.
        created_at:,
        # Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
        currency:,
        # Full task instructions shown to workers.
        description:,
        # Experience the bounty's discussion thread lives in, prefixed `exp_`. Read this —
        # not `experience_id` — to open the thread: a platform-wide bounty has no hosting
        # experience of its own but its discussion still lives in one.
        discussion_experience_id:,
        # Forum feed containing the bounty's discussion thread. `null` for a bounty with
        # no forum post.
        discussion_feed_id:,
        # Forum post anchoring the bounty's discussion thread. Read together with
        # `discussion_experience_id` to address the thread. `null` for a bounty with no
        # forum post.
        discussion_post_id:,
        # Experience the bounty is hosted in, prefixed `exp_`. `null` for platform-wide
        # bounties; may belong to a different account than the funder.
        experience_id:,
        # Account whose balance funds the bounty pool, or `null` when a user funds it
        # personally. May differ from the account hosting `experience_id`.
        funding_account:,
        # Gross amount paid out from the bounty pool across accepted submissions — worker
        # payouts, platform fees, and affiliate shares together. Tips and reviewer rewards
        # are excluded.
        gross_paid_out_amount:,
        # Gross bounty-pool amount allocated per accepted submission, in whole currency
        # units.
        gross_reward_amount:,
        # Account hosting the bounty's forum — the one whose `route` and `experience_id`
        # address its discussion thread, and where its submissions dashboard lives. `null`
        # for a platform-wide bounty with no host. May differ from `funding_account`.
        hosting_account:,
        # Total verified footage a submission must accumulate before it can be submitted,
        # in seconds. Always a whole number of hours. Present only on `data_capture`
        # bounties — it is what `net_reward_amount` pays for, so rate displays divide by
        # it. `null` for every other goal type.
        min_total_verified_duration_seconds:,
        # What a worker is quoted per accepted submission after the platform fee, in whole
        # currency units. The exact post-fee figure, at the standard platform fee rate — a
        # worker who locked a different rate, or who arrived through an affiliate link, is
        # paid a different amount.
        net_reward_amount:,
        # User who posted the bounty — the account owner when created with an account API
        # key.
        poster:,
        # How often the schedule creates a new bounty. Each occurrence is a separate
        # bounty; the original is not republished.
        scheduled_frequency:,
        # When a scheduled bounty will publish, as an ISO 8601 timestamp. `null` once
        # published, for bounties that were never scheduled, and for terminally failed
        # drafts parked for manual rescheduling.
        scheduled_publish_at:,
        # Unfilled winner capacity: `accepted_submissions_limit` minus
        # `accepted_submissions_count`, clamped to zero. Not on its own a signal that the
        # bounty accepts new claims — read `status` for that: only an `open` bounty takes
        # new submissions.
        spots_remaining:,
        # Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
        # poster and the account's authorized managers; `open` bounties accept new
        # submissions; `closed` bounties are live but no longer accept new submissions;
        # `completed` bounties paid out every winner slot; `canceled` bounties ended
        # before filling their slots.
        status:,
        # When new submissions stopped being accepted, as an ISO 8601 timestamp. Set when
        # a cancellation is requested on a bounty with work in flight, so in-flight
        # submissions can resolve before the bounty cancels. `null` when submissions were
        # never stopped — including completed bounties that simply filled every winner
        # slot.
        submissions_closed_at:,
        # Short name of the task shown to workers.
        title:,
        # Submissions still awaiting an outcome: in progress or pending review.
        unresolved_submissions_count:,
        # When the bounty was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # How many winner slots the authenticated user has already won on this bounty.
        # Read against `accepted_submissions_per_user_limit` to show a worker their
        # remaining allowance. `0` when the request has no authenticated user.
        viewer_accepted_submissions_count:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            accepted_deliverable_types:
              T::Array[
                WhopSDK::Models::BountyListResponse::AcceptedDeliverableType::TaggedSymbol
              ],
            accepted_submissions_count: Integer,
            accepted_submissions_limit: Integer,
            accepted_submissions_per_user_limit: Integer,
            affiliate_share_amount: Float,
            allowed_country_codes: T::Array[String],
            budget_amount: Float,
            business_goal_type:
              T.nilable(
                WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
              ),
            cancel_requested_at: T.nilable(String),
            created_at: String,
            currency: String,
            description: String,
            discussion_experience_id: T.nilable(String),
            discussion_feed_id: T.nilable(String),
            discussion_post_id: T.nilable(String),
            experience_id: T.nilable(String),
            funding_account:
              T.nilable(WhopSDK::Models::BountyListResponse::FundingAccount),
            gross_paid_out_amount: Float,
            gross_reward_amount: Float,
            hosting_account:
              T.nilable(WhopSDK::Models::BountyListResponse::HostingAccount),
            min_total_verified_duration_seconds: T.nilable(Integer),
            net_reward_amount: Float,
            poster: WhopSDK::Models::BountyListResponse::Poster,
            scheduled_frequency:
              T.nilable(
                WhopSDK::Models::BountyListResponse::ScheduledFrequency::TaggedSymbol
              ),
            scheduled_publish_at: T.nilable(String),
            spots_remaining: Integer,
            status: WhopSDK::Models::BountyListResponse::Status::TaggedSymbol,
            submissions_closed_at: T.nilable(String),
            title: String,
            unresolved_submissions_count: Integer,
            updated_at: String,
            viewer_accepted_submissions_count: Integer
          }
        )
      end
      def to_hash
      end

      # The deliverable shapes this bounty accepts. Every bounty accepts any combination
      # of `content_url` (posted links) and `media` (uploaded files), except
      # `data_capture` bounties, whose proof is clips recorded in the Whop app that
      # accumulate on the attempt.
      module AcceptedDeliverableType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::BountyListResponse::AcceptedDeliverableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONTENT_URL =
          T.let(
            :content_url,
            WhopSDK::Models::BountyListResponse::AcceptedDeliverableType::TaggedSymbol
          )
        MEDIA =
          T.let(
            :media,
            WhopSDK::Models::BountyListResponse::AcceptedDeliverableType::TaggedSymbol
          )
        DATA_CAPTURE =
          T.let(
            :data_capture,
            WhopSDK::Models::BountyListResponse::AcceptedDeliverableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyListResponse::AcceptedDeliverableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # What the poster wants the work to achieve, declared once at create. `null` for
      # bounties created before the taxonomy rolled out.
      module BusinessGoalType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::BountyListResponse::BusinessGoalType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIPPING =
          T.let(
            :clipping,
            WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
          )
        POST_ENGAGEMENT =
          T.let(
            :post_engagement,
            WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
          )
        OWNED_ACCOUNT_GROWTH =
          T.let(
            :owned_account_growth,
            WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
          )
        UGC_CONTENT =
          T.let(
            :ugc_content,
            WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
          )
        LOCAL_ACTIVATION =
          T.let(
            :local_activation,
            WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
          )
        DATA_CAPTURE =
          T.let(
            :data_capture,
            WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyListResponse::BusinessGoalType::TaggedSymbol
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
              WhopSDK::Models::BountyListResponse::FundingAccount,
              WhopSDK::Internal::AnyHash
            )
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        # Account display name.
        sig { returns(String) }
        attr_accessor :title

        # Account whose balance funds the bounty pool, or `null` when a user funds it
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

      class HostingAccount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::BountyListResponse::HostingAccount,
              WhopSDK::Internal::AnyHash
            )
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        # Account logo image URL. `null` when the account has not set one.
        sig { returns(T.nilable(String)) }
        attr_accessor :logo_url

        # Account public route identifier — the `whop.com/{route}` storefront path.
        sig { returns(String) }
        attr_accessor :route

        # Account display name.
        sig { returns(String) }
        attr_accessor :title

        # Account hosting the bounty's forum — the one whose `route` and `experience_id`
        # address its discussion thread, and where its submissions dashboard lives. `null`
        # for a platform-wide bounty with no host. May differ from `funding_account`.
        sig do
          params(
            id: String,
            logo_url: T.nilable(String),
            route: String,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Account ID, prefixed `biz_`.
          id:,
          # Account logo image URL. `null` when the account has not set one.
          logo_url:,
          # Account public route identifier — the `whop.com/{route}` storefront path.
          route:,
          # Account display name.
          title:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              logo_url: T.nilable(String),
              route: String,
              title: String
            }
          )
        end
        def to_hash
        end
      end

      class Poster < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::BountyListResponse::Poster,
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
          returns(WhopSDK::Models::BountyListResponse::Poster::ProfilePicture)
        end
        attr_reader :profile_picture

        sig do
          params(
            profile_picture:
              WhopSDK::Models::BountyListResponse::Poster::ProfilePicture::OrHash
          ).void
        end
        attr_writer :profile_picture

        # Public username.
        sig { returns(String) }
        attr_accessor :username

        # User who posted the bounty — the account owner when created with an account API
        # key.
        sig do
          params(
            id: String,
            name: T.nilable(String),
            profile_picture:
              WhopSDK::Models::BountyListResponse::Poster::ProfilePicture::OrHash,
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
                WhopSDK::Models::BountyListResponse::Poster::ProfilePicture,
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
                WhopSDK::Models::BountyListResponse::Poster::ProfilePicture,
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
              WhopSDK::Models::BountyListResponse::ScheduledFrequency
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONCE =
          T.let(
            :once,
            WhopSDK::Models::BountyListResponse::ScheduledFrequency::TaggedSymbol
          )
        HOURLY =
          T.let(
            :hourly,
            WhopSDK::Models::BountyListResponse::ScheduledFrequency::TaggedSymbol
          )
        DAILY =
          T.let(
            :daily,
            WhopSDK::Models::BountyListResponse::ScheduledFrequency::TaggedSymbol
          )
        WEEKLY =
          T.let(
            :weekly,
            WhopSDK::Models::BountyListResponse::ScheduledFrequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            WhopSDK::Models::BountyListResponse::ScheduledFrequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyListResponse::ScheduledFrequency::TaggedSymbol
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
            T.all(Symbol, WhopSDK::Models::BountyListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SCHEDULED =
          T.let(
            :scheduled,
            WhopSDK::Models::BountyListResponse::Status::TaggedSymbol
          )
        OPEN =
          T.let(
            :open,
            WhopSDK::Models::BountyListResponse::Status::TaggedSymbol
          )
        CLOSED =
          T.let(
            :closed,
            WhopSDK::Models::BountyListResponse::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            WhopSDK::Models::BountyListResponse::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            WhopSDK::Models::BountyListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::BountyListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
