# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Bounties#list
    class BountyListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Bounty ID, prefixed `bnty_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute accepted_deliverable_types
      #
      #   @return [Array<Symbol, WhopSDK::Models::BountyListResponse::AcceptedDeliverableType>]
      required :accepted_deliverable_types,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::BountyListResponse::AcceptedDeliverableType] }

      # @!attribute accepted_submissions_count
      #   Submissions accepted so far.
      #
      #   @return [Integer]
      required :accepted_submissions_count, Integer

      # @!attribute accepted_submissions_limit
      #   Number of submissions that can be accepted (winner slots).
      #
      #   @return [Integer]
      required :accepted_submissions_limit, Integer

      # @!attribute accepted_submissions_per_user_limit
      #   How many winner slots one worker can win. Defaults to `1`. Wins plus proofs
      #   awaiting review never exceed this number, and a worker runs one attempt at a
      #   time. Cannot exceed `accepted_submissions_limit`.
      #
      #   @return [Integer]
      required :accepted_submissions_per_user_limit, Integer

      # @!attribute affiliate_share_amount
      #   What a referrer earns per accepted submission when the worker arrived through
      #   their affiliate link, in whole currency units, at the standard platform fee
      #   rate. Taken out of the worker's post-fee reward rather than added on top. `0`
      #   when the bounty pays no affiliate share, including bounties tied to no account,
      #   which cannot record a referral.
      #
      #   @return [Float]
      required :affiliate_share_amount, Float

      # @!attribute allowed_country_codes
      #
      #   @return [Array<String>]
      required :allowed_country_codes, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute budget_amount
      #   Total gross budget committed to the bounty: `gross_reward_amount` times
      #   `accepted_submissions_limit`.
      #
      #   @return [Float]
      required :budget_amount, Float

      # @!attribute business_goal_type
      #   What the poster wants the work to achieve, declared once at create. `null` for
      #   bounties created before the taxonomy rolled out.
      #
      #   @return [Symbol, WhopSDK::Models::BountyListResponse::BusinessGoalType, nil]
      required :business_goal_type,
               enum: -> { WhopSDK::Models::BountyListResponse::BusinessGoalType },
               nil?: true

      # @!attribute cancel_requested_at
      #   When cancellation was requested, as an ISO 8601 timestamp. On a `closed` bounty
      #   this means the cancel is pending: submissions are stopped and the bounty cancels
      #   once in-flight submissions resolve. On a `canceled` bounty it records when the
      #   cancellation was requested. `null` when no cancellation was ever requested.
      #
      #   @return [String, nil]
      required :cancel_requested_at, String, nil?: true

      # @!attribute created_at
      #   When the bounty was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
      #
      #   @return [String]
      required :currency, String

      # @!attribute description
      #   Full task instructions shown to workers.
      #
      #   @return [String]
      required :description, String

      # @!attribute discussion_experience_id
      #   Experience the bounty's discussion thread lives in, prefixed `exp_`. Read this —
      #   not `experience_id` — to open the thread: a platform-wide bounty has no hosting
      #   experience of its own but its discussion still lives in one.
      #
      #   @return [String, nil]
      required :discussion_experience_id, String, nil?: true

      # @!attribute discussion_feed_id
      #   Forum feed containing the bounty's discussion thread. `null` for a bounty with
      #   no forum post.
      #
      #   @return [String, nil]
      required :discussion_feed_id, String, nil?: true

      # @!attribute discussion_post_id
      #   Forum post anchoring the bounty's discussion thread. Read together with
      #   `discussion_experience_id` to address the thread. `null` for a bounty with no
      #   forum post.
      #
      #   @return [String, nil]
      required :discussion_post_id, String, nil?: true

      # @!attribute experience_id
      #   Experience the bounty is hosted in, prefixed `exp_`. `null` for platform-wide
      #   bounties; may belong to a different account than the funder.
      #
      #   @return [String, nil]
      required :experience_id, String, nil?: true

      # @!attribute funding_account
      #   Account whose balance funds the bounty pool, or `null` when a user funds it
      #   personally. May differ from the account hosting `experience_id`.
      #
      #   @return [WhopSDK::Models::BountyListResponse::FundingAccount, nil]
      required :funding_account, -> { WhopSDK::Models::BountyListResponse::FundingAccount }, nil?: true

      # @!attribute gross_paid_out_amount
      #   Gross amount paid out from the bounty pool across accepted submissions — worker
      #   payouts, platform fees, and affiliate shares together. Tips and reviewer rewards
      #   are excluded.
      #
      #   @return [Float]
      required :gross_paid_out_amount, Float

      # @!attribute gross_reward_amount
      #   Gross bounty-pool amount allocated per accepted submission, in whole currency
      #   units.
      #
      #   @return [Float]
      required :gross_reward_amount, Float

      # @!attribute hosting_account
      #   Account hosting the bounty's forum — the one whose `route` and `experience_id`
      #   address its discussion thread, and where its submissions dashboard lives. `null`
      #   for a platform-wide bounty with no host. May differ from `funding_account`.
      #
      #   @return [WhopSDK::Models::BountyListResponse::HostingAccount, nil]
      required :hosting_account, -> { WhopSDK::Models::BountyListResponse::HostingAccount }, nil?: true

      # @!attribute min_total_verified_duration_seconds
      #   Total verified footage a submission must accumulate before it can be submitted,
      #   in seconds. Always a whole number of hours. Present only on `data_capture`
      #   bounties — it is what `net_reward_amount` pays for, so rate displays divide by
      #   it. `null` for every other goal type.
      #
      #   @return [Integer, nil]
      required :min_total_verified_duration_seconds, Integer, nil?: true

      # @!attribute net_reward_amount
      #   What a worker is quoted per accepted submission after the platform fee, in whole
      #   currency units. The exact post-fee figure, at the standard platform fee rate — a
      #   worker who locked a different rate, or who arrived through an affiliate link, is
      #   paid a different amount.
      #
      #   @return [Float]
      required :net_reward_amount, Float

      # @!attribute poster
      #   User who posted the bounty — the account owner when created with an account API
      #   key.
      #
      #   @return [WhopSDK::Models::BountyListResponse::Poster]
      required :poster, -> { WhopSDK::Models::BountyListResponse::Poster }

      # @!attribute scheduled_frequency
      #   How often the schedule creates a new bounty. Each occurrence is a separate
      #   bounty; the original is not republished.
      #
      #   @return [Symbol, WhopSDK::Models::BountyListResponse::ScheduledFrequency, nil]
      required :scheduled_frequency,
               enum: -> { WhopSDK::Models::BountyListResponse::ScheduledFrequency },
               nil?: true

      # @!attribute scheduled_publish_at
      #   When a scheduled bounty will publish, as an ISO 8601 timestamp. `null` once
      #   published, for bounties that were never scheduled, and for terminally failed
      #   drafts parked for manual rescheduling.
      #
      #   @return [String, nil]
      required :scheduled_publish_at, String, nil?: true

      # @!attribute spots_remaining
      #   Unfilled winner capacity: `accepted_submissions_limit` minus
      #   `accepted_submissions_count`, clamped to zero. Not on its own a signal that the
      #   bounty accepts new claims — read `status` for that: only an `open` bounty takes
      #   new submissions.
      #
      #   @return [Integer]
      required :spots_remaining, Integer

      # @!attribute status
      #   Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
      #   poster and the account's authorized managers; `open` bounties accept new
      #   submissions; `closed` bounties are live but no longer accept new submissions;
      #   `completed` bounties paid out every winner slot; `canceled` bounties ended
      #   before filling their slots.
      #
      #   @return [Symbol, WhopSDK::Models::BountyListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::BountyListResponse::Status }

      # @!attribute submissions_closed_at
      #   When new submissions stopped being accepted, as an ISO 8601 timestamp. Set when
      #   a cancellation is requested on a bounty with work in flight, so in-flight
      #   submissions can resolve before the bounty cancels. `null` when submissions were
      #   never stopped — including completed bounties that simply filled every winner
      #   slot.
      #
      #   @return [String, nil]
      required :submissions_closed_at, String, nil?: true

      # @!attribute title
      #   Short name of the task shown to workers.
      #
      #   @return [String]
      required :title, String

      # @!attribute unresolved_submissions_count
      #   Submissions still awaiting an outcome: in progress or pending review.
      #
      #   @return [Integer]
      required :unresolved_submissions_count, Integer

      # @!attribute updated_at
      #   When the bounty was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute viewer_accepted_submissions_count
      #   How many winner slots the authenticated user has already won on this bounty.
      #   Read against `accepted_submissions_per_user_limit` to show a worker their
      #   remaining allowance. `0` when the request has no authenticated user.
      #
      #   @return [Integer]
      required :viewer_accepted_submissions_count, Integer

      # @!method initialize(id:, accepted_deliverable_types:, accepted_submissions_count:, accepted_submissions_limit:, accepted_submissions_per_user_limit:, affiliate_share_amount:, allowed_country_codes:, budget_amount:, business_goal_type:, cancel_requested_at:, created_at:, currency:, description:, discussion_experience_id:, discussion_feed_id:, discussion_post_id:, experience_id:, funding_account:, gross_paid_out_amount:, gross_reward_amount:, hosting_account:, min_total_verified_duration_seconds:, net_reward_amount:, poster:, scheduled_frequency:, scheduled_publish_at:, spots_remaining:, status:, submissions_closed_at:, title:, unresolved_submissions_count:, updated_at:, viewer_accepted_submissions_count:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::BountyListResponse} for more details.
      #
      #   @param id [String] Bounty ID, prefixed `bnty_`.
      #
      #   @param accepted_deliverable_types [Array<Symbol, WhopSDK::Models::BountyListResponse::AcceptedDeliverableType>]
      #
      #   @param accepted_submissions_count [Integer] Submissions accepted so far.
      #
      #   @param accepted_submissions_limit [Integer] Number of submissions that can be accepted (winner slots).
      #
      #   @param accepted_submissions_per_user_limit [Integer] How many winner slots one worker can win. Defaults to `1`. Wins plus proofs awai
      #
      #   @param affiliate_share_amount [Float] What a referrer earns per accepted submission when the worker arrived through th
      #
      #   @param allowed_country_codes [Array<String>]
      #
      #   @param budget_amount [Float] Total gross budget committed to the bounty: `gross_reward_amount` times `accepte
      #
      #   @param business_goal_type [Symbol, WhopSDK::Models::BountyListResponse::BusinessGoalType, nil] What the poster wants the work to achieve, declared once at create. `null` for b
      #
      #   @param cancel_requested_at [String, nil] When cancellation was requested, as an ISO 8601 timestamp. On a `closed` bounty
      #
      #   @param created_at [String] When the bounty was created, as an ISO 8601 timestamp.
      #
      #   @param currency [String] Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
      #
      #   @param description [String] Full task instructions shown to workers.
      #
      #   @param discussion_experience_id [String, nil] Experience the bounty's discussion thread lives in, prefixed `exp_`. Read this —
      #
      #   @param discussion_feed_id [String, nil] Forum feed containing the bounty's discussion thread. `null` for a bounty with n
      #
      #   @param discussion_post_id [String, nil] Forum post anchoring the bounty's discussion thread. Read together with `discuss
      #
      #   @param experience_id [String, nil] Experience the bounty is hosted in, prefixed `exp_`. `null` for platform-wide bo
      #
      #   @param funding_account [WhopSDK::Models::BountyListResponse::FundingAccount, nil] Account whose balance funds the bounty pool, or `null` when a user funds it pers
      #
      #   @param gross_paid_out_amount [Float] Gross amount paid out from the bounty pool across accepted submissions — worker
      #
      #   @param gross_reward_amount [Float] Gross bounty-pool amount allocated per accepted submission, in whole currency un
      #
      #   @param hosting_account [WhopSDK::Models::BountyListResponse::HostingAccount, nil] Account hosting the bounty's forum — the one whose `route` and `experience_id` a
      #
      #   @param min_total_verified_duration_seconds [Integer, nil] Total verified footage a submission must accumulate before it can be submitted,
      #
      #   @param net_reward_amount [Float] What a worker is quoted per accepted submission after the platform fee, in whole
      #
      #   @param poster [WhopSDK::Models::BountyListResponse::Poster] User who posted the bounty — the account owner when created with an account API
      #
      #   @param scheduled_frequency [Symbol, WhopSDK::Models::BountyListResponse::ScheduledFrequency, nil] How often the schedule creates a new bounty. Each occurrence is a separate bount
      #
      #   @param scheduled_publish_at [String, nil] When a scheduled bounty will publish, as an ISO 8601 timestamp. `null` once publ
      #
      #   @param spots_remaining [Integer] Unfilled winner capacity: `accepted_submissions_limit` minus `accepted_submissio
      #
      #   @param status [Symbol, WhopSDK::Models::BountyListResponse::Status] Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their p
      #
      #   @param submissions_closed_at [String, nil] When new submissions stopped being accepted, as an ISO 8601 timestamp. Set when
      #
      #   @param title [String] Short name of the task shown to workers.
      #
      #   @param unresolved_submissions_count [Integer] Submissions still awaiting an outcome: in progress or pending review.
      #
      #   @param updated_at [String] When the bounty was last updated, as an ISO 8601 timestamp.
      #
      #   @param viewer_accepted_submissions_count [Integer] How many winner slots the authenticated user has already won on this bounty. Rea

      # The deliverable shapes this bounty accepts. Every bounty accepts any combination
      # of `content_url` (posted links) and `media` (uploaded files), except
      # `data_capture` bounties, whose proof is clips recorded in the Whop app that
      # accumulate on the attempt.
      module AcceptedDeliverableType
        extend WhopSDK::Internal::Type::Enum

        CONTENT_URL = :content_url
        MEDIA = :media
        DATA_CAPTURE = :data_capture

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # What the poster wants the work to achieve, declared once at create. `null` for
      # bounties created before the taxonomy rolled out.
      #
      # @see WhopSDK::Models::BountyListResponse#business_goal_type
      module BusinessGoalType
        extend WhopSDK::Internal::Type::Enum

        CLIPPING = :clipping
        POST_ENGAGEMENT = :post_engagement
        OWNED_ACCOUNT_GROWTH = :owned_account_growth
        UGC_CONTENT = :ugc_content
        LOCAL_ACTIVATION = :local_activation
        DATA_CAPTURE = :data_capture
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::BountyListResponse#funding_account
      class FundingAccount < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Account ID, prefixed `biz_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   Account display name.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Account whose balance funds the bounty pool, or `null` when a user funds it
        #   personally. May differ from the account hosting `experience_id`.
        #
        #   @param id [String] Account ID, prefixed `biz_`.
        #
        #   @param title [String] Account display name.
      end

      # @see WhopSDK::Models::BountyListResponse#hosting_account
      class HostingAccount < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Account ID, prefixed `biz_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute logo_url
        #   Account logo image URL. `null` when the account has not set one.
        #
        #   @return [String, nil]
        required :logo_url, String, nil?: true

        # @!attribute route
        #   Account public route identifier — the `whop.com/{route}` storefront path.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   Account display name.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, logo_url:, route:, title:)
        #   Account hosting the bounty's forum — the one whose `route` and `experience_id`
        #   address its discussion thread, and where its submissions dashboard lives. `null`
        #   for a platform-wide bounty with no host. May differ from `funding_account`.
        #
        #   @param id [String] Account ID, prefixed `biz_`.
        #
        #   @param logo_url [String, nil] Account logo image URL. `null` when the account has not set one.
        #
        #   @param route [String] Account public route identifier — the `whop.com/{route}` storefront path.
        #
        #   @param title [String] Account display name.
      end

      # @see WhopSDK::Models::BountyListResponse#poster
      class Poster < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   User ID, prefixed `user_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   Display name.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute profile_picture
        #   Avatar wrapper; its `url` is always present, using a generated placeholder when
        #   the user set no picture.
        #
        #   @return [WhopSDK::Models::BountyListResponse::Poster::ProfilePicture]
        required :profile_picture, -> { WhopSDK::Models::BountyListResponse::Poster::ProfilePicture }

        # @!attribute username
        #   Public username.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, profile_picture:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::BountyListResponse::Poster} for more details.
        #
        #   User who posted the bounty — the account owner when created with an account API
        #   key.
        #
        #   @param id [String] User ID, prefixed `user_`.
        #
        #   @param name [String, nil] Display name.
        #
        #   @param profile_picture [WhopSDK::Models::BountyListResponse::Poster::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
        #
        #   @param username [String] Public username.

        # @see WhopSDK::Models::BountyListResponse::Poster#profile_picture
        class ProfilePicture < WhopSDK::Internal::Type::BaseModel
          # @!attribute url
          #   Avatar image URL. Always present — a generated placeholder when the user set no
          #   picture.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::BountyListResponse::Poster::ProfilePicture} for more details.
          #
          #   Avatar wrapper; its `url` is always present, using a generated placeholder when
          #   the user set no picture.
          #
          #   @param url [String] Avatar image URL. Always present — a generated placeholder when the user set no
        end
      end

      # How often the schedule creates a new bounty. Each occurrence is a separate
      # bounty; the original is not republished.
      #
      # @see WhopSDK::Models::BountyListResponse#scheduled_frequency
      module ScheduledFrequency
        extend WhopSDK::Internal::Type::Enum

        ONCE = :once
        HOURLY = :hourly
        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
      # poster and the account's authorized managers; `open` bounties accept new
      # submissions; `closed` bounties are live but no longer accept new submissions;
      # `completed` bounties paid out every winner slot; `canceled` bounties ended
      # before filling their slots.
      #
      # @see WhopSDK::Models::BountyListResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        SCHEDULED = :scheduled
        OPEN = :open
        CLOSED = :closed
        COMPLETED = :completed
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
