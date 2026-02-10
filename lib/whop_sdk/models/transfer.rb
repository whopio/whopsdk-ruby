# frozen_string_literal: true

module WhopSDK
  module Models
    class Transfer < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the credit transaction transfer.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The transfer amount in the currency specified by the currency field. For
      #   example, 10.43 represents $10.43 USD.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The datetime the credit transaction transfer was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency in which this transfer amount is denominated.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute destination
      #   The entity receiving the transferred funds.
      #
      #   @return [WhopSDK::Models::Transfer::Destination::User, WhopSDK::Models::Transfer::Destination::Company, nil]
      required :destination, union: -> { WhopSDK::Transfer::Destination }

      # @!attribute destination_ledger_account_id
      #   The unique identifier of the ledger account receiving the funds.
      #
      #   @return [String]
      required :destination_ledger_account_id, String

      # @!attribute fee_amount
      #   The flat fee amount deducted from this transfer, in the transfer's currency.
      #   Null if no flat fee was applied.
      #
      #   @return [Float, nil]
      required :fee_amount, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs attached to this transfer. Maximum 50 keys, 500
      #   characters per key, 5000 characters per value.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute notes
      #   A free-text note attached to this transfer by the sender. Null if no note was
      #   provided.
      #
      #   @return [String, nil]
      required :notes, String, nil?: true

      # @!attribute origin
      #   The entity that sent the transferred funds.
      #
      #   @return [WhopSDK::Models::Transfer::Origin::User, WhopSDK::Models::Transfer::Origin::Company, nil]
      required :origin, union: -> { WhopSDK::Transfer::Origin }

      # @!attribute origin_ledger_account_id
      #   The unique identifier of the ledger account that sent the funds.
      #
      #   @return [String]
      required :origin_ledger_account_id, String

      # @!method initialize(id:, amount:, created_at:, currency:, destination:, destination_ledger_account_id:, fee_amount:, metadata:, notes:, origin:, origin_ledger_account_id:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Transfer} for more details.
      #
      #   A transfer of credit between two ledger accounts.
      #
      #   @param id [String] The unique identifier for the credit transaction transfer.
      #
      #   @param amount [Float] The transfer amount in the currency specified by the currency field. For example
      #
      #   @param created_at [Time] The datetime the credit transaction transfer was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency in which this transfer amount is denominated.
      #
      #   @param destination [WhopSDK::Models::Transfer::Destination::User, WhopSDK::Models::Transfer::Destination::Company, nil] The entity receiving the transferred funds.
      #
      #   @param destination_ledger_account_id [String] The unique identifier of the ledger account receiving the funds.
      #
      #   @param fee_amount [Float, nil] The flat fee amount deducted from this transfer, in the transfer's currency. Nul
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value pairs attached to this transfer. Maximum 50 keys, 500 character
      #
      #   @param notes [String, nil] A free-text note attached to this transfer by the sender. Null if no note was pr
      #
      #   @param origin [WhopSDK::Models::Transfer::Origin::User, WhopSDK::Models::Transfer::Origin::Company, nil] The entity that sent the transferred funds.
      #
      #   @param origin_ledger_account_id [String] The unique identifier of the ledger account that sent the funds.

      # The entity receiving the transferred funds.
      #
      # @see WhopSDK::Models::Transfer#destination
      module Destination
        extend WhopSDK::Internal::Type::Union

        discriminator :typename

        # A user account on Whop. Contains profile information, identity details, and social connections.
        variant :User, -> { WhopSDK::Transfer::Destination::User }

        # A company is a seller on Whop. Companies own products, manage members, and receive payouts.
        variant :Company, -> { WhopSDK::Transfer::Destination::Company }

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

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :User]
          required :typename, const: :User

          # @!attribute username
          #   The user's unique username shown on their public profile.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, username:, typename: :User)
          #   A user account on Whop. Contains profile information, identity details, and
          #   social connections.
          #
          #   @param id [String] The unique identifier for the user.
          #
          #   @param name [String, nil] The user's display name shown on their public profile.
          #
          #   @param username [String] The user's unique username shown on their public profile.
          #
          #   @param typename [Symbol, :User] The typename of this object
        end

        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the company.
          #
          #   @return [String]
          required :id, String

          # @!attribute route
          #   The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
          #
          #   @return [String]
          required :route, String

          # @!attribute title
          #   The display name of the company shown to customers.
          #
          #   @return [String]
          required :title, String

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :Company]
          required :typename, const: :Company

          # @!method initialize(id:, route:, title:, typename: :Company)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Transfer::Destination::Company} for more details.
          #
          #   A company is a seller on Whop. Companies own products, manage members, and
          #   receive payouts.
          #
          #   @param id [String] The unique identifier for the company.
          #
          #   @param route [String] The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
          #
          #   @param title [String] The display name of the company shown to customers.
          #
          #   @param typename [Symbol, :Company] The typename of this object
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::Transfer::Destination::User, WhopSDK::Models::Transfer::Destination::Company)]
      end

      # The entity that sent the transferred funds.
      #
      # @see WhopSDK::Models::Transfer#origin
      module Origin
        extend WhopSDK::Internal::Type::Union

        discriminator :typename

        # A user account on Whop. Contains profile information, identity details, and social connections.
        variant :User, -> { WhopSDK::Transfer::Origin::User }

        # A company is a seller on Whop. Companies own products, manage members, and receive payouts.
        variant :Company, -> { WhopSDK::Transfer::Origin::Company }

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

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :User]
          required :typename, const: :User

          # @!attribute username
          #   The user's unique username shown on their public profile.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, username:, typename: :User)
          #   A user account on Whop. Contains profile information, identity details, and
          #   social connections.
          #
          #   @param id [String] The unique identifier for the user.
          #
          #   @param name [String, nil] The user's display name shown on their public profile.
          #
          #   @param username [String] The user's unique username shown on their public profile.
          #
          #   @param typename [Symbol, :User] The typename of this object
        end

        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the company.
          #
          #   @return [String]
          required :id, String

          # @!attribute route
          #   The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
          #
          #   @return [String]
          required :route, String

          # @!attribute title
          #   The display name of the company shown to customers.
          #
          #   @return [String]
          required :title, String

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :Company]
          required :typename, const: :Company

          # @!method initialize(id:, route:, title:, typename: :Company)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Transfer::Origin::Company} for more details.
          #
          #   A company is a seller on Whop. Companies own products, manage members, and
          #   receive payouts.
          #
          #   @param id [String] The unique identifier for the company.
          #
          #   @param route [String] The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
          #
          #   @param title [String] The display name of the company shown to customers.
          #
          #   @param typename [Symbol, :Company] The typename of this object
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::Transfer::Origin::User, WhopSDK::Models::Transfer::Origin::Company)]
      end
    end
  end
end
