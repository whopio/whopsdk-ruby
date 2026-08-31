# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Bounties#create
    class BountyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute description
      #   Full task instructions shown to workers.
      #
      #   @return [String]
      required :description, String

      # @!attribute gross_reward_amount
      #   Gross bounty-pool amount (USD) escrowed per accepted submission, in whole
      #   dollars. Platform fees and affiliate shares are paid from this amount.
      #
      #   @return [Float]
      required :gross_reward_amount, Float

      # @!attribute title
      #   Short name of the task shown to workers.
      #
      #   @return [String]
      required :title, String

      # @!attribute accepted_submissions_limit
      #   Number of submissions that can be accepted (winner slots). Defaults to 1. The
      #   escrowed total is `gross_reward_amount` times this limit and must be at least
      #   $5.
      #
      #   @return [Integer, nil]
      optional :accepted_submissions_limit, Integer, nil?: true

      # @!attribute accepted_submissions_per_user_limit
      #   How many winner slots one worker can win. Defaults to `1`. Wins plus proofs
      #   awaiting review never exceed this number, and a worker runs one attempt at a
      #   time. Cannot exceed `accepted_submissions_limit`.
      #
      #   @return [Integer, nil]
      optional :accepted_submissions_per_user_limit, Integer, nil?: true

      # @!attribute account_id
      #   Account whose balance funds the bounty pool (`biz_` tag). Defaults to the
      #   caller's personal balance. Requires permission to move the account's funds.
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute allowed_country_codes
      #   Countries whose residents can work the bounty, as ISO 3166 alpha-2 codes. Empty
      #   means worldwide.
      #
      #   @return [Array<String>, nil]
      optional :allowed_country_codes, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute business_goal_type
      #   What the poster wants the work to achieve, declared once here.
      #
      #   @return [Symbol, WhopSDK::Models::BountyCreateParams::BusinessGoalType, nil]
      optional :business_goal_type, enum: -> { WhopSDK::BountyCreateParams::BusinessGoalType }

      # @!attribute capture_spec
      #   Per-bounty overrides of the served capture contract. Only accepted when
      #   `business_goal_type` is `data_capture`; omitted fields keep the platform
      #   defaults, and the resulting contract is echoed back as `capture_spec` on the
      #   bounty.
      #
      #   @return [WhopSDK::Models::BountyCreateParams::CaptureSpec, nil]
      optional :capture_spec, -> { WhopSDK::BountyCreateParams::CaptureSpec }

      # @!attribute experience_id
      #   Experience to host the bounty in (`exp_` tag). Any visibility — public for an
      #   open bounty, private for an invited one. Required unless account_id is set, in
      #   which case the bounty anchors in that account's public forum.
      #
      #   @return [String, nil]
      optional :experience_id, String, nil?: true

      # @!attribute frequency
      #   How often the schedule creates a new bounty. Each occurrence is a separate
      #   bounty. Defaults to `once`; only applies with `publish_at`.
      #
      #   @return [Symbol, WhopSDK::Models::BountyCreateParams::Frequency, nil]
      optional :frequency, enum: -> { WhopSDK::BountyCreateParams::Frequency }

      # @!attribute publish_at
      #   ISO 8601 time to publish the bounty. When set, the bounty is created as a hidden
      #   draft and funded + published at this time instead of immediately.
      #
      #   @return [String, nil]
      optional :publish_at, String, nil?: true

      # @!attribute publish_at_timezone
      #   IANA timezone for recurring occurrences. Required when publish_at is set.
      #
      #   @return [String, nil]
      optional :publish_at_timezone, String, nil?: true

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(description:, gross_reward_amount:, title:, accepted_submissions_limit: nil, accepted_submissions_per_user_limit: nil, account_id: nil, allowed_country_codes: nil, business_goal_type: nil, capture_spec: nil, experience_id: nil, frequency: nil, publish_at: nil, publish_at_timezone: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::BountyCreateParams} for more details.
      #
      #   @param description [String] Full task instructions shown to workers.
      #
      #   @param gross_reward_amount [Float] Gross bounty-pool amount (USD) escrowed per accepted submission, in whole dollar
      #
      #   @param title [String] Short name of the task shown to workers.
      #
      #   @param accepted_submissions_limit [Integer, nil] Number of submissions that can be accepted (winner slots). Defaults to 1. The es
      #
      #   @param accepted_submissions_per_user_limit [Integer, nil] How many winner slots one worker can win. Defaults to `1`. Wins plus proofs awai
      #
      #   @param account_id [String, nil] Account whose balance funds the bounty pool (`biz_` tag). Defaults to the caller
      #
      #   @param allowed_country_codes [Array<String>, nil] Countries whose residents can work the bounty, as ISO 3166 alpha-2 codes. Empty
      #
      #   @param business_goal_type [Symbol, WhopSDK::Models::BountyCreateParams::BusinessGoalType] What the poster wants the work to achieve, declared once here.
      #
      #   @param capture_spec [WhopSDK::Models::BountyCreateParams::CaptureSpec] Per-bounty overrides of the served capture contract. Only accepted when `busines
      #
      #   @param experience_id [String, nil] Experience to host the bounty in (`exp_` tag). Any visibility — public for an op
      #
      #   @param frequency [Symbol, WhopSDK::Models::BountyCreateParams::Frequency] How often the schedule creates a new bounty. Each occurrence is a separate bount
      #
      #   @param publish_at [String, nil] ISO 8601 time to publish the bounty. When set, the bounty is created as a hidden
      #
      #   @param publish_at_timezone [String, nil] IANA timezone for recurring occurrences. Required when publish_at is set.
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # What the poster wants the work to achieve, declared once here.
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

      class CaptureSpec < WhopSDK::Internal::Type::BaseModel
        # @!attribute bitrate_target_mbps
        #   Average bitrate the recorder encodes at, in megabits per second. Must sit within
        #   the served floor and ceiling.
        #
        #   @return [Integer, nil]
        optional :bitrate_target_mbps, Integer

        # @!attribute embed_camera_metadata
        #   Whether the recorder also writes camera make and model into the video
        #   container's metadata.
        #
        #   @return [Boolean, nil]
        optional :embed_camera_metadata, WhopSDK::Internal::Type::Boolean

        # @!attribute frame_gap_tolerance_ms
        #   Longest stall between consecutive frames a clip may contain before the client
        #   rejects it, in milliseconds. Unlike the recording fields this one can also be
        #   tuned after the bounty is created, since it bounds what is accepted rather than
        #   how footage is captured.
        #
        #   @return [Integer, nil]
        optional :frame_gap_tolerance_ms, Integer

        # @!attribute min_clip_duration_seconds
        #   Minimum length of a single clip, in seconds.
        #
        #   @return [Integer, nil]
        optional :min_clip_duration_seconds, Integer

        # @!attribute min_total_verified_duration_seconds
        #   Total verified footage a submission must accumulate across all its clips before
        #   it can be submitted, in seconds. Must be a whole number of hours between 1
        #   and 12. Editable after create, until someone starts an attempt.
        #
        #   @return [Integer, nil]
        optional :min_total_verified_duration_seconds, Integer

        # @!attribute stabilization_mode
        #   How the recorder configures video stabilization. `off` preserves raw motion for
        #   pose extraction.
        #
        #   @return [Symbol, WhopSDK::Models::BountyCreateParams::CaptureSpec::StabilizationMode, nil]
        optional :stabilization_mode, enum: -> { WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode }

        # @!method initialize(bitrate_target_mbps: nil, embed_camera_metadata: nil, frame_gap_tolerance_ms: nil, min_clip_duration_seconds: nil, min_total_verified_duration_seconds: nil, stabilization_mode: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::BountyCreateParams::CaptureSpec} for more details.
        #
        #   Per-bounty overrides of the served capture contract. Only accepted when
        #   `business_goal_type` is `data_capture`; omitted fields keep the platform
        #   defaults, and the resulting contract is echoed back as `capture_spec` on the
        #   bounty.
        #
        #   @param bitrate_target_mbps [Integer] Average bitrate the recorder encodes at, in megabits per second. Must sit within
        #
        #   @param embed_camera_metadata [Boolean] Whether the recorder also writes camera make and model into the video container'
        #
        #   @param frame_gap_tolerance_ms [Integer] Longest stall between consecutive frames a clip may contain before the client re
        #
        #   @param min_clip_duration_seconds [Integer] Minimum length of a single clip, in seconds.
        #
        #   @param min_total_verified_duration_seconds [Integer] Total verified footage a submission must accumulate across all its clips before
        #
        #   @param stabilization_mode [Symbol, WhopSDK::Models::BountyCreateParams::CaptureSpec::StabilizationMode] How the recorder configures video stabilization. `off` preserves raw motion for

        # How the recorder configures video stabilization. `off` preserves raw motion for
        # pose extraction.
        #
        # @see WhopSDK::Models::BountyCreateParams::CaptureSpec#stabilization_mode
        module StabilizationMode
          extend WhopSDK::Internal::Type::Enum

          OFF = :off
          ON = :on
          ANY = :any

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # How often the schedule creates a new bounty. Each occurrence is a separate
      # bounty. Defaults to `once`; only applies with `publish_at`.
      module Frequency
        extend WhopSDK::Internal::Type::Enum

        ONCE = :once
        HOURLY = :hourly
        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
