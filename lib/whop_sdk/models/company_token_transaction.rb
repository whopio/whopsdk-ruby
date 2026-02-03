# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CompanyTokenTransactions#create
    class CompanyTokenTransaction < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the transaction
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The transaction amount (always positive)
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company
      #   The company
      #
      #   @return [WhopSDK::Models::CompanyTokenTransaction::Company]
      required :company, -> { WhopSDK::CompanyTokenTransaction::Company }

      # @!attribute created_at
      #   When the transaction was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   Optional description
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute idempotency_key
      #   Optional idempotency key to prevent duplicate transactions
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute linked_transaction_id
      #   For transfers, the ID of the linked transaction
      #
      #   @return [String, nil]
      required :linked_transaction_id, String, nil?: true

      # @!attribute member
      #   The member
      #
      #   @return [WhopSDK::Models::CompanyTokenTransaction::Member]
      required :member, -> { WhopSDK::CompanyTokenTransaction::Member }

      # @!attribute transaction_type
      #   The type of transaction
      #
      #   @return [Symbol, WhopSDK::Models::BotTokenTransactionTypes]
      required :transaction_type, enum: -> { WhopSDK::BotTokenTransactionTypes }

      # @!attribute user
      #   The user whose balance changed
      #
      #   @return [WhopSDK::Models::CompanyTokenTransaction::User]
      required :user, -> { WhopSDK::CompanyTokenTransaction::User }

      # @!method initialize(id:, amount:, company:, created_at:, description:, idempotency_key:, linked_transaction_id:, member:, transaction_type:, user:)
      #   A token transaction within a company
      #
      #   @param id [String] The ID of the transaction
      #
      #   @param amount [Float] The transaction amount (always positive)
      #
      #   @param company [WhopSDK::Models::CompanyTokenTransaction::Company] The company
      #
      #   @param created_at [Time] When the transaction was created
      #
      #   @param description [String, nil] Optional description
      #
      #   @param idempotency_key [String, nil] Optional idempotency key to prevent duplicate transactions
      #
      #   @param linked_transaction_id [String, nil] For transfers, the ID of the linked transaction
      #
      #   @param member [WhopSDK::Models::CompanyTokenTransaction::Member] The member
      #
      #   @param transaction_type [Symbol, WhopSDK::Models::BotTokenTransactionTypes] The type of transaction
      #
      #   @param user [WhopSDK::Models::CompanyTokenTransaction::User] The user whose balance changed

      # @see WhopSDK::Models::CompanyTokenTransaction#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the company
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
        #   The company
        #
        #   @param id [String] The ID of the company
        #
        #   @param route [String] The slug/route of the company on the Whop site.
        #
        #   @param title [String] The written name of the company.
      end

      # @see WhopSDK::Models::CompanyTokenTransaction#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the member
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The member
        #
        #   @param id [String] The ID of the member
      end

      # @see WhopSDK::Models::CompanyTokenTransaction#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user whose balance changed
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
