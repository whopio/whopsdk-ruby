# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#create
    class Account < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the account, which will look like biz\_******\*******
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the account was created, as an ISO 8601 timestamp
      #
      #   @return [String]
      required :created_at, String

      # @!attribute email
      #   The email address of the account owner
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute metadata
      #   Arbitrary key/value metadata supplied when the account was created
      #
      #   @return [Object]
      required :metadata, WhopSDK::Internal::Type::Unknown

      # @!attribute wallet
      #   The account's primary crypto wallet, or null if none has been provisioned
      #
      #   @return [WhopSDK::Models::AccountWallet, nil]
      required :wallet, -> { WhopSDK::AccountWallet }, nil?: true

      # @!method initialize(id:, created_at:, email:, metadata:, wallet:)
      #   @param id [String] The ID of the account, which will look like biz\_******\*******
      #
      #   @param created_at [String] When the account was created, as an ISO 8601 timestamp
      #
      #   @param email [String, nil] The email address of the account owner
      #
      #   @param metadata [Object] Arbitrary key/value metadata supplied when the account was created
      #
      #   @param wallet [WhopSDK::Models::AccountWallet, nil] The account's primary crypto wallet, or null if none has been provisioned
    end
  end
end
