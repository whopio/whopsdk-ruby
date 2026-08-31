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

      # Full task instructions shown to workers.
      sig { returns(String) }
      attr_accessor :description

      # Gross bounty-pool amount (USD) escrowed per accepted submission, in whole
      # dollars. Platform fees and affiliate shares are paid from this amount.
      sig { returns(Float) }
      attr_accessor :gross_reward_amount

      # Short name of the task shown to workers.
      sig { returns(String) }
      attr_accessor :title

      # Number of submissions that can be accepted (winner slots). Defaults to 1. The
      # escrowed total is `gross_reward_amount` times this limit and must be at least
      # $5.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :accepted_submissions_limit

      # How many winner slots one worker can win. Defaults to `1`. Wins plus proofs
      # awaiting review never exceed this number, and a worker runs one attempt at a
      # time. Cannot exceed `accepted_submissions_limit`.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :accepted_submissions_per_user_limit

      # Account whose balance funds the bounty pool (`biz_` tag). Defaults to the
      # caller's personal balance. Requires permission to move the account's funds.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # Countries whose residents can work the bounty, as ISO 3166 alpha-2 codes. Empty
      # means worldwide.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :allowed_country_codes

      # What the poster wants the work to achieve, declared once here.
      sig do
        returns(
          T.nilable(WhopSDK::BountyCreateParams::BusinessGoalType::OrSymbol)
        )
      end
      attr_reader :business_goal_type

      sig do
        params(
          business_goal_type:
            WhopSDK::BountyCreateParams::BusinessGoalType::OrSymbol
        ).void
      end
      attr_writer :business_goal_type

      # Per-bounty overrides of the served capture contract. Only accepted when
      # `business_goal_type` is `data_capture`; omitted fields keep the platform
      # defaults, and the resulting contract is echoed back as `capture_spec` on the
      # bounty.
      sig { returns(T.nilable(WhopSDK::BountyCreateParams::CaptureSpec)) }
      attr_reader :capture_spec

      sig do
        params(
          capture_spec: WhopSDK::BountyCreateParams::CaptureSpec::OrHash
        ).void
      end
      attr_writer :capture_spec

      # Experience to host the bounty in (`exp_` tag). Any visibility — public for an
      # open bounty, private for an invited one. Required unless account_id is set, in
      # which case the bounty anchors in that account's public forum.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_id

      # How often the schedule creates a new bounty. Each occurrence is a separate
      # bounty. Defaults to `once`; only applies with `publish_at`.
      sig do
        returns(T.nilable(WhopSDK::BountyCreateParams::Frequency::OrSymbol))
      end
      attr_reader :frequency

      sig do
        params(frequency: WhopSDK::BountyCreateParams::Frequency::OrSymbol).void
      end
      attr_writer :frequency

      # ISO 8601 time to publish the bounty. When set, the bounty is created as a hidden
      # draft and funded + published at this time instead of immediately.
      sig { returns(T.nilable(String)) }
      attr_accessor :publish_at

      # IANA timezone for recurring occurrences. Required when publish_at is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :publish_at_timezone

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          description: String,
          gross_reward_amount: Float,
          title: String,
          accepted_submissions_limit: T.nilable(Integer),
          accepted_submissions_per_user_limit: T.nilable(Integer),
          account_id: T.nilable(String),
          allowed_country_codes: T.nilable(T::Array[String]),
          business_goal_type:
            WhopSDK::BountyCreateParams::BusinessGoalType::OrSymbol,
          capture_spec: WhopSDK::BountyCreateParams::CaptureSpec::OrHash,
          experience_id: T.nilable(String),
          frequency: WhopSDK::BountyCreateParams::Frequency::OrSymbol,
          publish_at: T.nilable(String),
          publish_at_timezone: T.nilable(String),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full task instructions shown to workers.
        description:,
        # Gross bounty-pool amount (USD) escrowed per accepted submission, in whole
        # dollars. Platform fees and affiliate shares are paid from this amount.
        gross_reward_amount:,
        # Short name of the task shown to workers.
        title:,
        # Number of submissions that can be accepted (winner slots). Defaults to 1. The
        # escrowed total is `gross_reward_amount` times this limit and must be at least
        # $5.
        accepted_submissions_limit: nil,
        # How many winner slots one worker can win. Defaults to `1`. Wins plus proofs
        # awaiting review never exceed this number, and a worker runs one attempt at a
        # time. Cannot exceed `accepted_submissions_limit`.
        accepted_submissions_per_user_limit: nil,
        # Account whose balance funds the bounty pool (`biz_` tag). Defaults to the
        # caller's personal balance. Requires permission to move the account's funds.
        account_id: nil,
        # Countries whose residents can work the bounty, as ISO 3166 alpha-2 codes. Empty
        # means worldwide.
        allowed_country_codes: nil,
        # What the poster wants the work to achieve, declared once here.
        business_goal_type: nil,
        # Per-bounty overrides of the served capture contract. Only accepted when
        # `business_goal_type` is `data_capture`; omitted fields keep the platform
        # defaults, and the resulting contract is echoed back as `capture_spec` on the
        # bounty.
        capture_spec: nil,
        # Experience to host the bounty in (`exp_` tag). Any visibility — public for an
        # open bounty, private for an invited one. Required unless account_id is set, in
        # which case the bounty anchors in that account's public forum.
        experience_id: nil,
        # How often the schedule creates a new bounty. Each occurrence is a separate
        # bounty. Defaults to `once`; only applies with `publish_at`.
        frequency: nil,
        # ISO 8601 time to publish the bounty. When set, the bounty is created as a hidden
        # draft and funded + published at this time instead of immediately.
        publish_at: nil,
        # IANA timezone for recurring occurrences. Required when publish_at is set.
        publish_at_timezone: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: String,
            gross_reward_amount: Float,
            title: String,
            accepted_submissions_limit: T.nilable(Integer),
            accepted_submissions_per_user_limit: T.nilable(Integer),
            account_id: T.nilable(String),
            allowed_country_codes: T.nilable(T::Array[String]),
            business_goal_type:
              WhopSDK::BountyCreateParams::BusinessGoalType::OrSymbol,
            capture_spec: WhopSDK::BountyCreateParams::CaptureSpec,
            experience_id: T.nilable(String),
            frequency: WhopSDK::BountyCreateParams::Frequency::OrSymbol,
            publish_at: T.nilable(String),
            publish_at_timezone: T.nilable(String),
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # What the poster wants the work to achieve, declared once here.
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
        DATA_CAPTURE =
          T.let(
            :data_capture,
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

      class CaptureSpec < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::BountyCreateParams::CaptureSpec,
              WhopSDK::Internal::AnyHash
            )
          end

        # Average bitrate the recorder encodes at, in megabits per second. Must sit within
        # the served floor and ceiling.
        sig { returns(T.nilable(Integer)) }
        attr_reader :bitrate_target_mbps

        sig { params(bitrate_target_mbps: Integer).void }
        attr_writer :bitrate_target_mbps

        # Whether the recorder also writes camera make and model into the video
        # container's metadata.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :embed_camera_metadata

        sig { params(embed_camera_metadata: T::Boolean).void }
        attr_writer :embed_camera_metadata

        # Longest stall between consecutive frames a clip may contain before the client
        # rejects it, in milliseconds. Unlike the recording fields this one can also be
        # tuned after the bounty is created, since it bounds what is accepted rather than
        # how footage is captured.
        sig { returns(T.nilable(Integer)) }
        attr_reader :frame_gap_tolerance_ms

        sig { params(frame_gap_tolerance_ms: Integer).void }
        attr_writer :frame_gap_tolerance_ms

        # Minimum length of a single clip, in seconds.
        sig { returns(T.nilable(Integer)) }
        attr_reader :min_clip_duration_seconds

        sig { params(min_clip_duration_seconds: Integer).void }
        attr_writer :min_clip_duration_seconds

        # Total verified footage a submission must accumulate across all its clips before
        # it can be submitted, in seconds. Must be a whole number of hours between 1
        # and 12. Editable after create, until someone starts an attempt.
        sig { returns(T.nilable(Integer)) }
        attr_reader :min_total_verified_duration_seconds

        sig { params(min_total_verified_duration_seconds: Integer).void }
        attr_writer :min_total_verified_duration_seconds

        # How the recorder configures video stabilization. `off` preserves raw motion for
        # pose extraction.
        sig do
          returns(
            T.nilable(
              WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode::OrSymbol
            )
          )
        end
        attr_reader :stabilization_mode

        sig do
          params(
            stabilization_mode:
              WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode::OrSymbol
          ).void
        end
        attr_writer :stabilization_mode

        # Per-bounty overrides of the served capture contract. Only accepted when
        # `business_goal_type` is `data_capture`; omitted fields keep the platform
        # defaults, and the resulting contract is echoed back as `capture_spec` on the
        # bounty.
        sig do
          params(
            bitrate_target_mbps: Integer,
            embed_camera_metadata: T::Boolean,
            frame_gap_tolerance_ms: Integer,
            min_clip_duration_seconds: Integer,
            min_total_verified_duration_seconds: Integer,
            stabilization_mode:
              WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Average bitrate the recorder encodes at, in megabits per second. Must sit within
          # the served floor and ceiling.
          bitrate_target_mbps: nil,
          # Whether the recorder also writes camera make and model into the video
          # container's metadata.
          embed_camera_metadata: nil,
          # Longest stall between consecutive frames a clip may contain before the client
          # rejects it, in milliseconds. Unlike the recording fields this one can also be
          # tuned after the bounty is created, since it bounds what is accepted rather than
          # how footage is captured.
          frame_gap_tolerance_ms: nil,
          # Minimum length of a single clip, in seconds.
          min_clip_duration_seconds: nil,
          # Total verified footage a submission must accumulate across all its clips before
          # it can be submitted, in seconds. Must be a whole number of hours between 1
          # and 12. Editable after create, until someone starts an attempt.
          min_total_verified_duration_seconds: nil,
          # How the recorder configures video stabilization. `off` preserves raw motion for
          # pose extraction.
          stabilization_mode: nil
        )
        end

        sig do
          override.returns(
            {
              bitrate_target_mbps: Integer,
              embed_camera_metadata: T::Boolean,
              frame_gap_tolerance_ms: Integer,
              min_clip_duration_seconds: Integer,
              min_total_verified_duration_seconds: Integer,
              stabilization_mode:
                WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode::OrSymbol
            }
          )
        end
        def to_hash
        end

        # How the recorder configures video stabilization. `off` preserves raw motion for
        # pose extraction.
        module StabilizationMode
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFF =
            T.let(
              :off,
              WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode::TaggedSymbol
            )
          ON =
            T.let(
              :on,
              WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode::TaggedSymbol
            )
          ANY =
            T.let(
              :any,
              WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::BountyCreateParams::CaptureSpec::StabilizationMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # How often the schedule creates a new bounty. Each occurrence is a separate
      # bounty. Defaults to `once`; only applies with `publish_at`.
      module Frequency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::BountyCreateParams::Frequency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONCE =
          T.let(:once, WhopSDK::BountyCreateParams::Frequency::TaggedSymbol)
        HOURLY =
          T.let(:hourly, WhopSDK::BountyCreateParams::Frequency::TaggedSymbol)
        DAILY =
          T.let(:daily, WhopSDK::BountyCreateParams::Frequency::TaggedSymbol)
        WEEKLY =
          T.let(:weekly, WhopSDK::BountyCreateParams::Frequency::TaggedSymbol)
        MONTHLY =
          T.let(:monthly, WhopSDK::BountyCreateParams::Frequency::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::BountyCreateParams::Frequency::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
