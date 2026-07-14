# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Audiences#create
    class Audience < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Audience ID, prefixed `adaud_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the audience was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute error_message
      #   Processing error message. `null` unless processing is partial or failed.
      #
      #   @return [String, nil]
      required :error_message, String, nil?: true

      # @!attribute match_rates
      #
      #   @return [Array<WhopSDK::Models::Audience::MatchRate>]
      required :match_rates, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Audience::MatchRate] }

      # @!attribute matched_rows
      #   Rows successfully uploaded to connected ad accounts.
      #
      #   @return [Float]
      required :matched_rows, Float

      # @!attribute name
      #   Audience display name.
      #
      #   @return [String]
      required :name, String

      # @!attribute platform_audience_ids
      #
      #   @return [Array<String>]
      required :platform_audience_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute processed_rows
      #   Rows processed from the uploaded CSV.
      #
      #   @return [Float]
      required :processed_rows, Float

      # @!attribute progress_percent
      #   Processing progress from 0 to 100.
      #
      #   @return [Float]
      required :progress_percent, Float

      # @!attribute status
      #   Current state of the audience import. `syncing` means Whop is sending matched
      #   rows to connected ad accounts. When status is `partial` or `failed`,
      #   `error_message` explains what went wrong.
      #
      #   @return [Symbol, WhopSDK::Models::Audience::Status]
      required :status, enum: -> { WhopSDK::Audience::Status }

      # @!attribute total_rows
      #   Total rows detected in the uploaded CSV.
      #
      #   @return [Float]
      required :total_rows, Float

      # @!attribute updated_at
      #   When the audience was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!method initialize(id:, created_at:, error_message:, match_rates:, matched_rows:, name:, platform_audience_ids:, processed_rows:, progress_percent:, status:, total_rows:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Audience} for more details.
      #
      #   @param id [String] Audience ID, prefixed `adaud_`.
      #
      #   @param created_at [String] When the audience was created, as an ISO 8601 timestamp.
      #
      #   @param error_message [String, nil] Processing error message. `null` unless processing is partial or failed.
      #
      #   @param match_rates [Array<WhopSDK::Models::Audience::MatchRate>]
      #
      #   @param matched_rows [Float] Rows successfully uploaded to connected ad accounts.
      #
      #   @param name [String] Audience display name.
      #
      #   @param platform_audience_ids [Array<String>]
      #
      #   @param processed_rows [Float] Rows processed from the uploaded CSV.
      #
      #   @param progress_percent [Float] Processing progress from 0 to 100.
      #
      #   @param status [Symbol, WhopSDK::Models::Audience::Status] Current state of the audience import. `syncing` means Whop is sending matched ro
      #
      #   @param total_rows [Float] Total rows detected in the uploaded CSV.
      #
      #   @param updated_at [String] When the audience was last updated, as an ISO 8601 timestamp.

      class MatchRate < WhopSDK::Internal::Type::BaseModel
        # @!attribute lower_bound
        #   Lower bound of the estimated match rate percentage. `null` until available.
        #
        #   @return [Float, nil]
        required :lower_bound, Float, nil?: true

        # @!attribute platform
        #   The ad platform that provided the match-rate estimate.
        #
        #   @return [Symbol, WhopSDK::Models::Audience::MatchRate::Platform]
        required :platform, enum: -> { WhopSDK::Audience::MatchRate::Platform }

        # @!attribute status
        #   Availability of the estimated match rate.
        #
        #   @return [Symbol, WhopSDK::Models::Audience::MatchRate::Status, nil]
        required :status, enum: -> { WhopSDK::Audience::MatchRate::Status }, nil?: true

        # @!attribute upper_bound
        #   Upper bound of the estimated match rate percentage. `null` until available.
        #
        #   @return [Float, nil]
        required :upper_bound, Float, nil?: true

        # @!method initialize(lower_bound:, platform:, status:, upper_bound:)
        #   Estimated match rates by ad platform. Empty when the audience was not sent to a
        #   supported platform.
        #
        #   @param lower_bound [Float, nil] Lower bound of the estimated match rate percentage. `null` until available.
        #
        #   @param platform [Symbol, WhopSDK::Models::Audience::MatchRate::Platform] The ad platform that provided the match-rate estimate.
        #
        #   @param status [Symbol, WhopSDK::Models::Audience::MatchRate::Status, nil] Availability of the estimated match rate.
        #
        #   @param upper_bound [Float, nil] Upper bound of the estimated match rate percentage. `null` until available.

        # The ad platform that provided the match-rate estimate.
        #
        # @see WhopSDK::Models::Audience::MatchRate#platform
        module Platform
          extend WhopSDK::Internal::Type::Enum

          META = :meta

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Availability of the estimated match rate.
        #
        # @see WhopSDK::Models::Audience::MatchRate#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          CALCULATING = :calculating
          AVAILABLE = :available
          UNAVAILABLE = :unavailable

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Current state of the audience import. `syncing` means Whop is sending matched
      # rows to connected ad accounts. When status is `partial` or `failed`,
      # `error_message` explains what went wrong.
      #
      # @see WhopSDK::Models::Audience#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        PENDING = :pending
        PROCESSING = :processing
        SYNCING = :syncing
        READY = :ready
        PARTIAL = :partial
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
