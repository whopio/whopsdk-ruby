# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Bounties#create
    class BountyCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the bounty.
      #
      #   @return [String]
      required :id, String

      # @!attribute bounty_type
      #   The underlying bounty implementation type.
      #
      #   @return [Symbol, WhopSDK::Models::BountyCreateResponse::BountyType]
      required :bounty_type, enum: -> { WhopSDK::Models::BountyCreateResponse::BountyType }

      # @!attribute created_at
      #   The datetime the bounty was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency used for the bounty funds.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute description
      #   The description of the bounty.
      #
      #   @return [String]
      required :description, String

      # @!attribute status
      #   The current lifecycle status of the bounty.
      #
      #   @return [Symbol, WhopSDK::Models::BountyCreateResponse::Status]
      required :status, enum: -> { WhopSDK::Models::BountyCreateResponse::Status }

      # @!attribute title
      #   The title of the bounty.
      #
      #   @return [String]
      required :title, String

      # @!attribute total_available
      #   The total amount currently funded in the bounty pool for payout.
      #
      #   @return [Float]
      required :total_available, Float

      # @!attribute total_paid
      #   The total amount paid out for this bounty.
      #
      #   @return [Float]
      required :total_paid, Float

      # @!attribute updated_at
      #   The datetime the bounty was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vote_threshold
      #   The number of watcher votes required before the submission can resolve.
      #
      #   @return [Integer]
      required :vote_threshold, Integer

      # @!method initialize(id:, bounty_type:, created_at:, currency:, description:, status:, title:, total_available:, total_paid:, updated_at:, vote_threshold:)
      #   A privately accessible bounty.
      #
      #   @param id [String] The unique identifier for the bounty.
      #
      #   @param bounty_type [Symbol, WhopSDK::Models::BountyCreateResponse::BountyType] The underlying bounty implementation type.
      #
      #   @param created_at [Time] The datetime the bounty was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency used for the bounty funds.
      #
      #   @param description [String] The description of the bounty.
      #
      #   @param status [Symbol, WhopSDK::Models::BountyCreateResponse::Status] The current lifecycle status of the bounty.
      #
      #   @param title [String] The title of the bounty.
      #
      #   @param total_available [Float] The total amount currently funded in the bounty pool for payout.
      #
      #   @param total_paid [Float] The total amount paid out for this bounty.
      #
      #   @param updated_at [Time] The datetime the bounty was last updated.
      #
      #   @param vote_threshold [Integer] The number of watcher votes required before the submission can resolve.

      # The underlying bounty implementation type.
      #
      # @see WhopSDK::Models::BountyCreateResponse#bounty_type
      module BountyType
        extend WhopSDK::Internal::Type::Enum

        CLASSIC = :classic
        USER_FUNDED = :user_funded
        WORKFORCE = :workforce

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current lifecycle status of the bounty.
      #
      # @see WhopSDK::Models::BountyCreateResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        PUBLISHED = :published
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
