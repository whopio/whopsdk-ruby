# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Bounties#create
    class BountyCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Bounty ID, prefixed `bnty_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute accepted_deliverable_types
      #
      #   @return [Array<Symbol, WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType>]
      required :accepted_deliverable_types,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType] }

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

      # @!attribute active_proof_livestream_feeds
      #
      #   @return [Array<WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed>]
      required :active_proof_livestream_feeds,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed] }

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

      # @!attribute awaiting_review_submissions_count
      #   Submissions delivered and waiting on review. A subset of
      #   `unresolved_submissions_count`, which also counts attempts still in progress.
      #
      #   @return [Integer]
      required :awaiting_review_submissions_count, Integer

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
      #   @return [Symbol, WhopSDK::Models::BountyCreateResponse::BusinessGoalType, nil]
      required :business_goal_type,
               enum: -> { WhopSDK::Models::BountyCreateResponse::BusinessGoalType },
               nil?: true

      # @!attribute cancel_requested_at
      #   When cancellation was requested, as an ISO 8601 timestamp. On a `closed` bounty
      #   this means the cancel is pending: submissions are stopped and the bounty cancels
      #   once in-flight submissions resolve. On a `canceled` bounty it records when the
      #   cancellation was requested. `null` when no cancellation was ever requested.
      #
      #   @return [String, nil]
      required :cancel_requested_at, String, nil?: true

      # @!attribute capture_spec
      #   The technical contract footage must be recorded against. Present only on
      #   `data_capture` bounties; `null` for every other goal type.
      #
      #   @return [WhopSDK::Models::BountyCreateResponse::CaptureSpec, nil]
      required :capture_spec, -> { WhopSDK::Models::BountyCreateResponse::CaptureSpec }, nil?: true

      # @!attribute created_at
      #   When the bounty was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
      #
      #   @return [Symbol, WhopSDK::Models::BountyCreateResponse::Currency]
      required :currency, enum: -> { WhopSDK::Models::BountyCreateResponse::Currency }

      # @!attribute denied_submissions_count
      #   Submissions reviewed and turned down.
      #
      #   @return [Integer]
      required :denied_submissions_count, Integer

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
      #   @return [WhopSDK::Models::BountyCreateResponse::FundingAccount, nil]
      required :funding_account, -> { WhopSDK::Models::BountyCreateResponse::FundingAccount }, nil?: true

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
      #   @return [WhopSDK::Models::BountyCreateResponse::HostingAccount, nil]
      required :hosting_account, -> { WhopSDK::Models::BountyCreateResponse::HostingAccount }, nil?: true

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
      #   @return [WhopSDK::Models::BountyCreateResponse::Poster]
      required :poster, -> { WhopSDK::Models::BountyCreateResponse::Poster }

      # @!attribute scheduled_frequency
      #   How often the schedule creates a new bounty. Each occurrence is a separate
      #   bounty; the original is not republished.
      #
      #   @return [Symbol, WhopSDK::Models::BountyCreateResponse::ScheduledFrequency, nil]
      required :scheduled_frequency,
               enum: -> { WhopSDK::Models::BountyCreateResponse::ScheduledFrequency },
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
      #   @return [Symbol, WhopSDK::Models::BountyCreateResponse::Status]
      required :status, enum: -> { WhopSDK::Models::BountyCreateResponse::Status }

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

      # @!method initialize(id:, accepted_deliverable_types:, accepted_submissions_count:, accepted_submissions_limit:, accepted_submissions_per_user_limit:, active_proof_livestream_feeds:, affiliate_share_amount:, allowed_country_codes:, awaiting_review_submissions_count:, budget_amount:, business_goal_type:, cancel_requested_at:, capture_spec:, created_at:, currency:, denied_submissions_count:, description:, discussion_experience_id:, discussion_feed_id:, discussion_post_id:, experience_id:, funding_account:, gross_paid_out_amount:, gross_reward_amount:, hosting_account:, min_total_verified_duration_seconds:, net_reward_amount:, poster:, scheduled_frequency:, scheduled_publish_at:, spots_remaining:, status:, submissions_closed_at:, title:, unresolved_submissions_count:, updated_at:, viewer_accepted_submissions_count:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::BountyCreateResponse} for more details.
      #
      #   @param id [String] Bounty ID, prefixed `bnty_`.
      #
      #   @param accepted_deliverable_types [Array<Symbol, WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType>]
      #
      #   @param accepted_submissions_count [Integer] Submissions accepted so far.
      #
      #   @param accepted_submissions_limit [Integer] Number of submissions that can be accepted (winner slots).
      #
      #   @param accepted_submissions_per_user_limit [Integer] How many winner slots one worker can win. Defaults to `1`. Wins plus proofs awai
      #
      #   @param active_proof_livestream_feeds [Array<WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed>]
      #
      #   @param affiliate_share_amount [Float] What a referrer earns per accepted submission when the worker arrived through th
      #
      #   @param allowed_country_codes [Array<String>]
      #
      #   @param awaiting_review_submissions_count [Integer] Submissions delivered and waiting on review. A subset of `unresolved_submissions
      #
      #   @param budget_amount [Float] Total gross budget committed to the bounty: `gross_reward_amount` times `accepte
      #
      #   @param business_goal_type [Symbol, WhopSDK::Models::BountyCreateResponse::BusinessGoalType, nil] What the poster wants the work to achieve, declared once at create. `null` for b
      #
      #   @param cancel_requested_at [String, nil] When cancellation was requested, as an ISO 8601 timestamp. On a `closed` bounty
      #
      #   @param capture_spec [WhopSDK::Models::BountyCreateResponse::CaptureSpec, nil] The technical contract footage must be recorded against. Present only on `data_c
      #
      #   @param created_at [String] When the bounty was created, as an ISO 8601 timestamp.
      #
      #   @param currency [Symbol, WhopSDK::Models::BountyCreateResponse::Currency] Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
      #
      #   @param denied_submissions_count [Integer] Submissions reviewed and turned down.
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
      #   @param funding_account [WhopSDK::Models::BountyCreateResponse::FundingAccount, nil] Account whose balance funds the bounty pool, or `null` when a user funds it pers
      #
      #   @param gross_paid_out_amount [Float] Gross amount paid out from the bounty pool across accepted submissions — worker
      #
      #   @param gross_reward_amount [Float] Gross bounty-pool amount allocated per accepted submission, in whole currency un
      #
      #   @param hosting_account [WhopSDK::Models::BountyCreateResponse::HostingAccount, nil] Account hosting the bounty's forum — the one whose `route` and `experience_id` a
      #
      #   @param min_total_verified_duration_seconds [Integer, nil] Total verified footage a submission must accumulate before it can be submitted,
      #
      #   @param net_reward_amount [Float] What a worker is quoted per accepted submission after the platform fee, in whole
      #
      #   @param poster [WhopSDK::Models::BountyCreateResponse::Poster] User who posted the bounty — the account owner when created with an account API
      #
      #   @param scheduled_frequency [Symbol, WhopSDK::Models::BountyCreateResponse::ScheduledFrequency, nil] How often the schedule creates a new bounty. Each occurrence is a separate bount
      #
      #   @param scheduled_publish_at [String, nil] When a scheduled bounty will publish, as an ISO 8601 timestamp. `null` once publ
      #
      #   @param spots_remaining [Integer] Unfilled winner capacity: `accepted_submissions_limit` minus `accepted_submissio
      #
      #   @param status [Symbol, WhopSDK::Models::BountyCreateResponse::Status] Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their p
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

      class ActiveProofLivestreamFeed < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Livestream feed ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute host
        #   User hosting the proof livestream — the worker streaming their attempt. `null`
        #   if the host account no longer exists.
        #
        #   @return [WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host, nil]
        required :host, -> { WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host }, nil?: true

        # @!attribute title
        #   Display title for the proof livestream.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, host:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed} for more
        #   details.
        #
        #   Proof livestreams live on this bounty right now, newest first — workers
        #   streaming their attempts. Empty when nothing is live.
        #
        #   @param id [String] Livestream feed ID.
        #
        #   @param host [WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host, nil] User hosting the proof livestream — the worker streaming their attempt. `null` i
        #
        #   @param title [String] Display title for the proof livestream.

        # @see WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed#host
        class Host < WhopSDK::Internal::Type::BaseModel
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
          #   @return [WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::ProfilePicture]
          required :profile_picture,
                   -> { WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::ProfilePicture }

          # @!attribute username
          #   Public username.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, profile_picture:, username:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host} for
          #   more details.
          #
          #   User hosting the proof livestream — the worker streaming their attempt. `null`
          #   if the host account no longer exists.
          #
          #   @param id [String] User ID, prefixed `user_`.
          #
          #   @param name [String, nil] Display name.
          #
          #   @param profile_picture [WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
          #
          #   @param username [String] Public username.

          # @see WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host#profile_picture
          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            # @!attribute url
            #   Avatar image URL. Always present — a generated placeholder when the user set no
            #   picture.
            #
            #   @return [String]
            required :url, String

            # @!method initialize(url:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::ProfilePicture}
            #   for more details.
            #
            #   Avatar wrapper; its `url` is always present, using a generated placeholder when
            #   the user set no picture.
            #
            #   @param url [String] Avatar image URL. Always present — a generated placeholder when the user set no
          end
        end
      end

      # What the poster wants the work to achieve, declared once at create. `null` for
      # bounties created before the taxonomy rolled out.
      #
      # @see WhopSDK::Models::BountyCreateResponse#business_goal_type
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

      # @see WhopSDK::Models::BountyCreateResponse#capture_spec
      class CaptureSpec < WhopSDK::Internal::Type::BaseModel
        # @!attribute filename_pattern
        #   The naming convention for uploaded files, built from the required metadata
        #   fields.
        #
        #   @return [String]
        required :filename_pattern, String

        # @!attribute imu
        #   Inertial measurement unit (IMU) recording requirements.
        #
        #   @return [WhopSDK::Models::BountyCreateResponse::CaptureSpec::Imu]
        required :imu, -> { WhopSDK::Models::BountyCreateResponse::CaptureSpec::Imu }

        # @!attribute manifest_schema_version
        #   Schema version the client must stamp on the capture manifest it uploads.
        #
        #   @return [Integer]
        required :manifest_schema_version, Integer

        # @!attribute min_clip_duration_seconds
        #   Minimum length of a single clip, in seconds.
        #
        #   @return [Integer]
        required :min_clip_duration_seconds, Integer

        # @!attribute min_total_verified_duration_seconds
        #   Total verified footage a submission must accumulate across all its clips before
        #   it can be submitted, in seconds. Always a whole number of hours.
        #
        #   @return [Integer]
        required :min_total_verified_duration_seconds, Integer

        # @!attribute required_metadata_fields
        #
        #   @return [Array<String>]
        required :required_metadata_fields, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute single_continuous_take
        #   Whether each clip must be one uninterrupted recording rather than stitched
        #   segments.
        #
        #   @return [Boolean]
        required :single_continuous_take, WhopSDK::Internal::Type::Boolean

        # @!attribute video
        #   Video recording requirements.
        #
        #   @return [WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video]
        required :video, -> { WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video }

        # @!method initialize(filename_pattern:, imu:, manifest_schema_version:, min_clip_duration_seconds:, min_total_verified_duration_seconds:, required_metadata_fields:, single_continuous_take:, video:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::BountyCreateResponse::CaptureSpec} for more details.
        #
        #   The technical contract footage must be recorded against. Present only on
        #   `data_capture` bounties; `null` for every other goal type.
        #
        #   @param filename_pattern [String] The naming convention for uploaded files, built from the required metadata field
        #
        #   @param imu [WhopSDK::Models::BountyCreateResponse::CaptureSpec::Imu] Inertial measurement unit (IMU) recording requirements.
        #
        #   @param manifest_schema_version [Integer] Schema version the client must stamp on the capture manifest it uploads.
        #
        #   @param min_clip_duration_seconds [Integer] Minimum length of a single clip, in seconds.
        #
        #   @param min_total_verified_duration_seconds [Integer] Total verified footage a submission must accumulate across all its clips before
        #
        #   @param required_metadata_fields [Array<String>]
        #
        #   @param single_continuous_take [Boolean] Whether each clip must be one uninterrupted recording rather than stitched segme
        #
        #   @param video [WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video] Video recording requirements.

        # @see WhopSDK::Models::BountyCreateResponse::CaptureSpec#imu
        class Imu < WhopSDK::Internal::Type::BaseModel
          # @!attribute device_motion_units
          #   Units for the device-motion channels, as a compact key=unit string.
          #
          #   @return [String]
          required :device_motion_units, String

          # @!attribute magnetometer_units
          #   Units for the magnetometer channel.
          #
          #   @return [String]
          required :magnetometer_units, String

          # @!attribute min_rate_hz
          #   Minimum sustained IMU sample rate in hertz for a clip to pass validation.
          #
          #   @return [Float]
          required :min_rate_hz, Float

          # @!attribute target_rate_hz
          #   Target IMU sample rate in hertz.
          #
          #   @return [Integer]
          required :target_rate_hz, Integer

          # @!attribute warmup_min_rate_hz
          #   Minimum IMU sample rate in hertz tolerated during the warmup window.
          #
          #   @return [Float]
          required :warmup_min_rate_hz, Float

          # @!attribute warmup_ns
          #   Startup window, in nanoseconds, during which the relaxed warmup rate applies.
          #
          #   @return [Integer]
          required :warmup_ns, Integer

          # @!method initialize(device_motion_units:, magnetometer_units:, min_rate_hz:, target_rate_hz:, warmup_min_rate_hz:, warmup_ns:)
          #   Inertial measurement unit (IMU) recording requirements.
          #
          #   @param device_motion_units [String] Units for the device-motion channels, as a compact key=unit string.
          #
          #   @param magnetometer_units [String] Units for the magnetometer channel.
          #
          #   @param min_rate_hz [Float] Minimum sustained IMU sample rate in hertz for a clip to pass validation.
          #
          #   @param target_rate_hz [Integer] Target IMU sample rate in hertz.
          #
          #   @param warmup_min_rate_hz [Float] Minimum IMU sample rate in hertz tolerated during the warmup window.
          #
          #   @param warmup_ns [Integer] Startup window, in nanoseconds, during which the relaxed warmup rate applies.
        end

        # @see WhopSDK::Models::BountyCreateResponse::CaptureSpec#video
        class Video < WhopSDK::Internal::Type::BaseModel
          # @!attribute bitrate_ceiling_mbps
          #   Maximum acceptable average bitrate, in megabits per second.
          #
          #   @return [Integer]
          required :bitrate_ceiling_mbps, Integer

          # @!attribute bitrate_floor_mbps
          #   Minimum acceptable average bitrate, in megabits per second.
          #
          #   @return [Integer]
          required :bitrate_floor_mbps, Integer

          # @!attribute bitrate_target_mbps
          #   Recommended average bitrate to encode at, in megabits per second.
          #
          #   @return [Integer]
          required :bitrate_target_mbps, Integer

          # @!attribute camera_lens
          #   Which physical lens to record with.
          #
          #   @return [String]
          required :camera_lens, String

          # @!attribute codecs
          #
          #   @return [Array<String>]
          required :codecs, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute embed_camera_metadata
          #   Whether the client must also write the camera make and model into the video
          #   container's metadata. When `false`, the capture manifest and export CSV are the
          #   metadata carrier.
          #
          #   @return [Boolean]
          required :embed_camera_metadata, WhopSDK::Internal::Type::Boolean

          # @!attribute fps
          #   Target capture frame rate.
          #
          #   @return [Integer]
          required :fps, Integer

          # @!attribute frame_gap_tolerance_ms
          #   Longest stall between consecutive frames a clip may contain before the client
          #   rejects it, in milliseconds. Every frame is timestamped in the frame log, so a
          #   stall stays alignable downstream — this bounds how broken a capture may be, not
          #   how evenly it must be paced.
          #
          #   @return [Integer]
          required :frame_gap_tolerance_ms, Integer

          # @!attribute height
          #   Required frame height in pixels — recorded footage must match exactly.
          #
          #   @return [Integer]
          required :height, Integer

          # @!attribute min_fov_degrees
          #   Minimum acceptable horizontal field of view, in degrees.
          #
          #   @return [Integer]
          required :min_fov_degrees, Integer

          # @!attribute orientation
          #   Device orientation to record in.
          #
          #   @return [String]
          required :orientation, String

          # @!attribute preferred_fov_degrees
          #   Preferred horizontal field of view, in degrees.
          #
          #   @return [Integer]
          required :preferred_fov_degrees, Integer

          # @!attribute stabilization_mode
          #   How the client must configure video stabilization: `off` disables EIS so raw
          #   motion is preserved for pose extraction, `on` requires it, `any` leaves the
          #   device default.
          #
          #   @return [Symbol, WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode]
          required :stabilization_mode,
                   enum: -> { WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode }

          # @!attribute stabilization_required
          #   Whether hardware/software stabilization must be enabled. True exactly when
          #   stabilization_mode is `on`.
          #
          #   @return [Boolean]
          required :stabilization_required, WhopSDK::Internal::Type::Boolean

          # @!attribute width
          #   Required frame width in pixels — recorded footage must match exactly.
          #
          #   @return [Integer]
          required :width, Integer

          # @!method initialize(bitrate_ceiling_mbps:, bitrate_floor_mbps:, bitrate_target_mbps:, camera_lens:, codecs:, embed_camera_metadata:, fps:, frame_gap_tolerance_ms:, height:, min_fov_degrees:, orientation:, preferred_fov_degrees:, stabilization_mode:, stabilization_required:, width:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video} for more details.
          #
          #   Video recording requirements.
          #
          #   @param bitrate_ceiling_mbps [Integer] Maximum acceptable average bitrate, in megabits per second.
          #
          #   @param bitrate_floor_mbps [Integer] Minimum acceptable average bitrate, in megabits per second.
          #
          #   @param bitrate_target_mbps [Integer] Recommended average bitrate to encode at, in megabits per second.
          #
          #   @param camera_lens [String] Which physical lens to record with.
          #
          #   @param codecs [Array<String>]
          #
          #   @param embed_camera_metadata [Boolean] Whether the client must also write the camera make and model into the video cont
          #
          #   @param fps [Integer] Target capture frame rate.
          #
          #   @param frame_gap_tolerance_ms [Integer] Longest stall between consecutive frames a clip may contain before the client re
          #
          #   @param height [Integer] Required frame height in pixels — recorded footage must match exactly.
          #
          #   @param min_fov_degrees [Integer] Minimum acceptable horizontal field of view, in degrees.
          #
          #   @param orientation [String] Device orientation to record in.
          #
          #   @param preferred_fov_degrees [Integer] Preferred horizontal field of view, in degrees.
          #
          #   @param stabilization_mode [Symbol, WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode] How the client must configure video stabilization: `off` disables EIS so raw mot
          #
          #   @param stabilization_required [Boolean] Whether hardware/software stabilization must be enabled. True exactly when stabi
          #
          #   @param width [Integer] Required frame width in pixels — recorded footage must match exactly.

          # How the client must configure video stabilization: `off` disables EIS so raw
          # motion is preserved for pose extraction, `on` requires it, `any` leaves the
          # device default.
          #
          # @see WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video#stabilization_mode
          module StabilizationMode
            extend WhopSDK::Internal::Type::Enum

            OFF = :off
            ON = :on
            ANY = :any

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
      #
      # @see WhopSDK::Models::BountyCreateResponse#currency
      module Currency
        extend WhopSDK::Internal::Type::Enum

        USD = :usd
        SGD = :sgd
        INR = :inr
        AUD = :aud
        BRL = :brl
        CAD = :cad
        DKK = :dkk
        EUR = :eur
        NOK = :nok
        GBP = :gbp
        SEK = :sek
        CHF = :chf
        HKD = :hkd
        HUF = :huf
        JPY = :jpy
        MXN = :mxn
        MYR = :myr
        PLN = :pln
        CZK = :czk
        NZD = :nzd
        AED = :aed
        COP = :cop
        RON = :ron
        THB = :thb
        BGN = :bgn
        IDR = :idr
        DOP = :dop
        PHP = :php
        TRY = :try
        KRW = :krw
        TWD = :twd
        VND = :vnd
        PKR = :pkr
        CLP = :clp
        UYU = :uyu
        ARS = :ars
        ZAR = :zar
        DZD = :dzd
        TND = :tnd
        MAD = :mad
        KES = :kes
        KWD = :kwd
        JOD = :jod
        ALL = :all
        XCD = :xcd
        AMD = :amd
        BSD = :bsd
        BHD = :bhd
        BOB = :bob
        BAM = :bam
        KHR = :khr
        CRC = :crc
        XOF = :xof
        EGP = :egp
        ETB = :etb
        GMD = :gmd
        GHS = :ghs
        GTQ = :gtq
        GYD = :gyd
        ILS = :ils
        JMD = :jmd
        MOP = :mop
        MGA = :mga
        MUR = :mur
        MDL = :mdl
        MNT = :mnt
        NAD = :nad
        NGN = :ngn
        MKD = :mkd
        OMR = :omr
        PYG = :pyg
        PEN = :pen
        QAR = :qar
        RWF = :rwf
        SAR = :sar
        RSD = :rsd
        LKR = :lkr
        TZS = :tzs
        TTD = :ttd
        UZS = :uzs
        RUB = :rub
        CNY = :cny
        KZT = :kzt
        AWG = :awg

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::BountyCreateResponse#funding_account
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

      # @see WhopSDK::Models::BountyCreateResponse#hosting_account
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

      # @see WhopSDK::Models::BountyCreateResponse#poster
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
        #   @return [WhopSDK::Models::BountyCreateResponse::Poster::ProfilePicture]
        required :profile_picture, -> { WhopSDK::Models::BountyCreateResponse::Poster::ProfilePicture }

        # @!attribute username
        #   Public username.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, profile_picture:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::BountyCreateResponse::Poster} for more details.
        #
        #   User who posted the bounty — the account owner when created with an account API
        #   key.
        #
        #   @param id [String] User ID, prefixed `user_`.
        #
        #   @param name [String, nil] Display name.
        #
        #   @param profile_picture [WhopSDK::Models::BountyCreateResponse::Poster::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
        #
        #   @param username [String] Public username.

        # @see WhopSDK::Models::BountyCreateResponse::Poster#profile_picture
        class ProfilePicture < WhopSDK::Internal::Type::BaseModel
          # @!attribute url
          #   Avatar image URL. Always present — a generated placeholder when the user set no
          #   picture.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::BountyCreateResponse::Poster::ProfilePicture} for more
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
      # @see WhopSDK::Models::BountyCreateResponse#scheduled_frequency
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
      # @see WhopSDK::Models::BountyCreateResponse#status
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
