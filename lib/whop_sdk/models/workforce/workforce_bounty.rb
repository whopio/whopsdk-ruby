# frozen_string_literal: true

module WhopSDK
  module Models
    module Workforce
      # @see WhopSDK::Resources::Workforce::Bounties#retrieve
      class WorkforceBounty < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Bounty ID, prefixed `bnty_`.
        #
        #   @return [String]
        required :id, String

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
        #   What the poster wants the work to achieve.
        #
        #   @return [Symbol, WhopSDK::Models::Workforce::WorkforceBounty::BusinessGoalType, nil]
        required :business_goal_type,
                 enum: -> { WhopSDK::Workforce::WorkforceBounty::BusinessGoalType },
                 nil?: true

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

        # @!attribute experience_id
        #   Experience the bounty is hosted in, prefixed `exp_`. Null for platform-wide
        #   bounties; may belong to a different account than the funder.
        #
        #   @return [String, nil]
        required :experience_id, String, nil?: true

        # @!attribute funding_account
        #   The account whose balance funds the bounty pool, or `null` when a user funds it
        #   personally. May differ from the account hosting `experience_id`.
        #
        #   @return [WhopSDK::Models::Workforce::WorkforceBounty::FundingAccount, nil]
        required :funding_account, -> { WhopSDK::Workforce::WorkforceBounty::FundingAccount }, nil?: true

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

        # @!attribute poster
        #   The user who posted the bounty.
        #
        #   @return [WhopSDK::Models::Workforce::WorkforceBounty::Poster]
        required :poster, -> { WhopSDK::Workforce::WorkforceBounty::Poster }

        # @!attribute scheduled_frequency
        #   How often the schedule creates a new bounty. Each occurrence is a separate
        #   bounty; the original is not republished.
        #
        #   @return [Symbol, WhopSDK::Models::Workforce::WorkforceBounty::ScheduledFrequency, nil]
        required :scheduled_frequency,
                 enum: -> { WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency },
                 nil?: true

        # @!attribute scheduled_publish_at
        #   When a scheduled bounty will publish, as an ISO 8601 timestamp. Null once
        #   published, for bounties that were never scheduled, and for terminally failed
        #   drafts parked for manual rescheduling.
        #
        #   @return [String, nil]
        required :scheduled_publish_at, String, nil?: true

        # @!attribute spots_remaining
        #   Unfilled winner capacity: `accepted_submissions_limit` minus
        #   `accepted_submissions_count`, clamped to zero. Not a signal that the bounty
        #   currently accepts new claims.
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
        #   @return [Symbol, WhopSDK::Models::Workforce::WorkforceBounty::Status]
        required :status, enum: -> { WhopSDK::Workforce::WorkforceBounty::Status }

        # @!attribute submissions_closed_at
        #   When new submissions were explicitly stopped, as an ISO 8601 timestamp. Null
        #   when submissions were never explicitly stopped — including closed or completed
        #   bounties that simply filled every winner slot.
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

        # @!method initialize(id:, accepted_submissions_count:, accepted_submissions_limit:, allowed_country_codes:, budget_amount:, business_goal_type:, created_at:, currency:, description:, experience_id:, funding_account:, gross_paid_out_amount:, gross_reward_amount:, poster:, scheduled_frequency:, scheduled_publish_at:, spots_remaining:, status:, submissions_closed_at:, title:, unresolved_submissions_count:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Workforce::WorkforceBounty} for more details.
        #
        #   @param id [String] Bounty ID, prefixed `bnty_`.
        #
        #   @param accepted_submissions_count [Integer] Submissions accepted so far.
        #
        #   @param accepted_submissions_limit [Integer] Number of submissions that can be accepted (winner slots).
        #
        #   @param allowed_country_codes [Array<String>]
        #
        #   @param budget_amount [Float] Total gross budget committed to the bounty: `gross_reward_amount` times `accepte
        #
        #   @param business_goal_type [Symbol, WhopSDK::Models::Workforce::WorkforceBounty::BusinessGoalType, nil] What the poster wants the work to achieve.
        #
        #   @param created_at [String] When the bounty was created, as an ISO 8601 timestamp.
        #
        #   @param currency [String] Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
        #
        #   @param description [String] Full task instructions shown to workers.
        #
        #   @param experience_id [String, nil] Experience the bounty is hosted in, prefixed `exp_`. Null for platform-wide boun
        #
        #   @param funding_account [WhopSDK::Models::Workforce::WorkforceBounty::FundingAccount, nil] The account whose balance funds the bounty pool, or `null` when a user funds it
        #
        #   @param gross_paid_out_amount [Float] Gross amount paid out from the bounty pool across accepted submissions — worker
        #
        #   @param gross_reward_amount [Float] Gross bounty-pool amount allocated per accepted submission, in whole currency un
        #
        #   @param poster [WhopSDK::Models::Workforce::WorkforceBounty::Poster] The user who posted the bounty.
        #
        #   @param scheduled_frequency [Symbol, WhopSDK::Models::Workforce::WorkforceBounty::ScheduledFrequency, nil] How often the schedule creates a new bounty. Each occurrence is a separate bount
        #
        #   @param scheduled_publish_at [String, nil] When a scheduled bounty will publish, as an ISO 8601 timestamp. Null once publis
        #
        #   @param spots_remaining [Integer] Unfilled winner capacity: `accepted_submissions_limit` minus `accepted_submissio
        #
        #   @param status [Symbol, WhopSDK::Models::Workforce::WorkforceBounty::Status] Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their p
        #
        #   @param submissions_closed_at [String, nil] When new submissions were explicitly stopped, as an ISO 8601 timestamp. Null whe
        #
        #   @param title [String] Short name of the task shown to workers.
        #
        #   @param unresolved_submissions_count [Integer] Submissions still awaiting an outcome: in progress or pending review.
        #
        #   @param updated_at [String] When the bounty was last updated, as an ISO 8601 timestamp.

        # What the poster wants the work to achieve.
        #
        # @see WhopSDK::Models::Workforce::WorkforceBounty#business_goal_type
        module BusinessGoalType
          extend WhopSDK::Internal::Type::Enum

          CLIPPING = :clipping
          POST_ENGAGEMENT = :post_engagement
          OWNED_ACCOUNT_GROWTH = :owned_account_growth
          UGC_CONTENT = :ugc_content
          LOCAL_ACTIVATION = :local_activation
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::Workforce::WorkforceBounty#funding_account
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
          #   The account whose balance funds the bounty pool, or `null` when a user funds it
          #   personally. May differ from the account hosting `experience_id`.
          #
          #   @param id [String] Account ID, prefixed `biz_`.
          #
          #   @param title [String] Account display name.
        end

        # @see WhopSDK::Models::Workforce::WorkforceBounty#poster
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
          #   @return [WhopSDK::Models::Workforce::WorkforceBounty::Poster::ProfilePicture]
          required :profile_picture, -> { WhopSDK::Workforce::WorkforceBounty::Poster::ProfilePicture }

          # @!attribute username
          #   Public username.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, profile_picture:, username:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Workforce::WorkforceBounty::Poster} for more details.
          #
          #   The user who posted the bounty.
          #
          #   @param id [String] User ID, prefixed `user_`.
          #
          #   @param name [String, nil] Display name.
          #
          #   @param profile_picture [WhopSDK::Models::Workforce::WorkforceBounty::Poster::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
          #
          #   @param username [String] Public username.

          # @see WhopSDK::Models::Workforce::WorkforceBounty::Poster#profile_picture
          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            # @!attribute url
            #   Avatar image URL. Always present — a generated placeholder when the user set no
            #   picture.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(url:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Workforce::WorkforceBounty::Poster::ProfilePicture} for more
            #   details.
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
        # @see WhopSDK::Models::Workforce::WorkforceBounty#scheduled_frequency
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
        # @see WhopSDK::Models::Workforce::WorkforceBounty#status
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

    WorkforceBounty = Workforce::WorkforceBounty
  end
end
