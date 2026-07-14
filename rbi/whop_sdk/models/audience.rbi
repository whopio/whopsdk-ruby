# typed: strong

module WhopSDK
  module Models
    class Audience < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Audience, WhopSDK::Internal::AnyHash) }

      # Audience ID, prefixed `adaud_`.
      sig { returns(String) }
      attr_accessor :id

      # When the audience was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Processing error message. `null` unless processing is partial or failed.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      sig { returns(T::Array[WhopSDK::Audience::MatchRate]) }
      attr_accessor :match_rates

      # Rows successfully uploaded to connected ad accounts.
      sig { returns(Float) }
      attr_accessor :matched_rows

      # Audience display name.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[String]) }
      attr_accessor :platform_audience_ids

      # Rows processed from the uploaded CSV.
      sig { returns(Float) }
      attr_accessor :processed_rows

      # Processing progress from 0 to 100.
      sig { returns(Float) }
      attr_accessor :progress_percent

      # Current state of the audience import. `syncing` means Whop is sending matched
      # rows to connected ad accounts. When status is `partial` or `failed`,
      # `error_message` explains what went wrong.
      sig { returns(WhopSDK::Audience::Status::TaggedSymbol) }
      attr_accessor :status

      # Total rows detected in the uploaded CSV.
      sig { returns(Float) }
      attr_accessor :total_rows

      # When the audience was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: String,
          error_message: T.nilable(String),
          match_rates: T::Array[WhopSDK::Audience::MatchRate::OrHash],
          matched_rows: Float,
          name: String,
          platform_audience_ids: T::Array[String],
          processed_rows: Float,
          progress_percent: Float,
          status: WhopSDK::Audience::Status::OrSymbol,
          total_rows: Float,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Audience ID, prefixed `adaud_`.
        id:,
        # When the audience was created, as an ISO 8601 timestamp.
        created_at:,
        # Processing error message. `null` unless processing is partial or failed.
        error_message:,
        match_rates:,
        # Rows successfully uploaded to connected ad accounts.
        matched_rows:,
        # Audience display name.
        name:,
        platform_audience_ids:,
        # Rows processed from the uploaded CSV.
        processed_rows:,
        # Processing progress from 0 to 100.
        progress_percent:,
        # Current state of the audience import. `syncing` means Whop is sending matched
        # rows to connected ad accounts. When status is `partial` or `failed`,
        # `error_message` explains what went wrong.
        status:,
        # Total rows detected in the uploaded CSV.
        total_rows:,
        # When the audience was last updated, as an ISO 8601 timestamp.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            error_message: T.nilable(String),
            match_rates: T::Array[WhopSDK::Audience::MatchRate],
            matched_rows: Float,
            name: String,
            platform_audience_ids: T::Array[String],
            processed_rows: Float,
            progress_percent: Float,
            status: WhopSDK::Audience::Status::TaggedSymbol,
            total_rows: Float,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      class MatchRate < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Audience::MatchRate, WhopSDK::Internal::AnyHash)
          end

        # Lower bound of the estimated match rate percentage. `null` until available.
        sig { returns(T.nilable(Float)) }
        attr_accessor :lower_bound

        # The ad platform that provided the match-rate estimate.
        sig { returns(WhopSDK::Audience::MatchRate::Platform::TaggedSymbol) }
        attr_accessor :platform

        # Availability of the estimated match rate.
        sig do
          returns(T.nilable(WhopSDK::Audience::MatchRate::Status::TaggedSymbol))
        end
        attr_accessor :status

        # Upper bound of the estimated match rate percentage. `null` until available.
        sig { returns(T.nilable(Float)) }
        attr_accessor :upper_bound

        # Estimated match rates by ad platform. Empty when the audience was not sent to a
        # supported platform.
        sig do
          params(
            lower_bound: T.nilable(Float),
            platform: WhopSDK::Audience::MatchRate::Platform::OrSymbol,
            status: T.nilable(WhopSDK::Audience::MatchRate::Status::OrSymbol),
            upper_bound: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # Lower bound of the estimated match rate percentage. `null` until available.
          lower_bound:,
          # The ad platform that provided the match-rate estimate.
          platform:,
          # Availability of the estimated match rate.
          status:,
          # Upper bound of the estimated match rate percentage. `null` until available.
          upper_bound:
        )
        end

        sig do
          override.returns(
            {
              lower_bound: T.nilable(Float),
              platform: WhopSDK::Audience::MatchRate::Platform::TaggedSymbol,
              status:
                T.nilable(WhopSDK::Audience::MatchRate::Status::TaggedSymbol),
              upper_bound: T.nilable(Float)
            }
          )
        end
        def to_hash
        end

        # The ad platform that provided the match-rate estimate.
        module Platform
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Audience::MatchRate::Platform)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          META =
            T.let(:meta, WhopSDK::Audience::MatchRate::Platform::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::Audience::MatchRate::Platform::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Availability of the estimated match rate.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, WhopSDK::Audience::MatchRate::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALCULATING =
            T.let(
              :calculating,
              WhopSDK::Audience::MatchRate::Status::TaggedSymbol
            )
          AVAILABLE =
            T.let(
              :available,
              WhopSDK::Audience::MatchRate::Status::TaggedSymbol
            )
          UNAVAILABLE =
            T.let(
              :unavailable,
              WhopSDK::Audience::MatchRate::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::Audience::MatchRate::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # Current state of the audience import. `syncing` means Whop is sending matched
      # rows to connected ad accounts. When status is `partial` or `failed`,
      # `error_message` explains what went wrong.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Audience::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, WhopSDK::Audience::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, WhopSDK::Audience::Status::TaggedSymbol)
        SYNCING = T.let(:syncing, WhopSDK::Audience::Status::TaggedSymbol)
        READY = T.let(:ready, WhopSDK::Audience::Status::TaggedSymbol)
        PARTIAL = T.let(:partial, WhopSDK::Audience::Status::TaggedSymbol)
        FAILED = T.let(:failed, WhopSDK::Audience::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Audience::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
