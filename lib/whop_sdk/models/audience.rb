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
      #   Unix timestamp when the audience was created.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute error_message
      #   Processing error message. `null` unless processing is partial or failed.
      #
      #   @return [String, nil]
      required :error_message, String, nil?: true

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
      #   Unix timestamp when the audience was last updated.
      #
      #   @return [Float]
      required :updated_at, Float

      # @!method initialize(id:, created_at:, error_message:, matched_rows:, name:, platform_audience_ids:, processed_rows:, progress_percent:, status:, total_rows:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Audience} for more details.
      #
      #   @param id [String] Audience ID, prefixed `adaud_`.
      #
      #   @param created_at [Float] Unix timestamp when the audience was created.
      #
      #   @param error_message [String, nil] Processing error message. `null` unless processing is partial or failed.
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
      #   @param updated_at [Float] Unix timestamp when the audience was last updated.

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
