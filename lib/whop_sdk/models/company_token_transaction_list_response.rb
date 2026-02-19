# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CompanyTokenTransactions#list
    class CompanyTokenTransactionListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the company token transaction.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The token amount for this transaction. Always a positive value regardless of
      #   transaction type.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company
      #   The company whose token balance this transaction affects.
      #
      #   @return [WhopSDK::Models::CompanyTokenTransactionListResponse::Company]
      required :company, -> { WhopSDK::Models::CompanyTokenTransactionListResponse::Company }

      # @!attribute created_at
      #   The datetime the company token transaction was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   Free-text description explaining the reason for this token transaction. Null if
      #   no description was provided.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute idempotency_key
      #   A unique key used to prevent duplicate transactions when retrying API requests.
      #   Null if no idempotency key was provided.
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute linked_transaction_id
      #   The ID of the corresponding transaction on the other side of a transfer. Null if
      #   this is not a transfer transaction.
      #
      #   @return [String, nil]
      required :linked_transaction_id, String, nil?: true

      # @!attribute member
      #   The member whose token balance was affected by this transaction.
      #
      #   @return [WhopSDK::Models::CompanyTokenTransactionListResponse::Member]
      required :member, -> { WhopSDK::Models::CompanyTokenTransactionListResponse::Member }

      # @!attribute transaction_type
      #   The direction of this token transaction (add, subtract, or transfer).
      #
      #   @return [Symbol, WhopSDK::Models::CompanyTokenTransactionType]
      required :transaction_type, enum: -> { WhopSDK::CompanyTokenTransactionType }

      # @!attribute user
      #   The user whose token balance was affected by this transaction.
      #
      #   @return [WhopSDK::Models::CompanyTokenTransactionListResponse::User]
      required :user, -> { WhopSDK::Models::CompanyTokenTransactionListResponse::User }

      # @!method initialize(id:, amount:, company:, created_at:, description:, idempotency_key:, linked_transaction_id:, member:, transaction_type:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyTokenTransactionListResponse} for more details.
      #
      #   A token transaction records a credit or debit to a member's token balance within
      #   a company, including transfers between members.
      #
      #   @param id [String] The unique identifier for the company token transaction.
      #
      #   @param amount [Float] The token amount for this transaction. Always a positive value regardless of tra
      #
      #   @param company [WhopSDK::Models::CompanyTokenTransactionListResponse::Company] The company whose token balance this transaction affects.
      #
      #   @param created_at [Time] The datetime the company token transaction was created.
      #
      #   @param description [String, nil] Free-text description explaining the reason for this token transaction. Null if
      #
      #   @param idempotency_key [String, nil] A unique key used to prevent duplicate transactions when retrying API requests.
      #
      #   @param linked_transaction_id [String, nil] The ID of the corresponding transaction on the other side of a transfer. Null if
      #
      #   @param member [WhopSDK::Models::CompanyTokenTransactionListResponse::Member] The member whose token balance was affected by this transaction.
      #
      #   @param transaction_type [Symbol, WhopSDK::Models::CompanyTokenTransactionType] The direction of this token transaction (add, subtract, or transfer).
      #
      #   @param user [WhopSDK::Models::CompanyTokenTransactionListResponse::User] The user whose token balance was affected by this transaction.

      # @see WhopSDK::Models::CompanyTokenTransactionListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The slug/route of the company on the Whop site.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The written name of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   The company whose token balance this transaction affects.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param route [String] The slug/route of the company on the Whop site.
        #
        #   @param title [String] The written name of the company.
      end

      # @see WhopSDK::Models::CompanyTokenTransactionListResponse#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company member.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The member whose token balance was affected by this transaction.
        #
        #   @param id [String] The unique identifier for the company member.
      end

      # @see WhopSDK::Models::CompanyTokenTransactionListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user whose token balance was affected by this transaction.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
