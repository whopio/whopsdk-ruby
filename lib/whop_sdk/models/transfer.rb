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
      #   The amount of the transfer. Provided as a number in the specified currency. Eg:
      #   10.43 for $10.43 USD.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The datetime the credit transaction transfer was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the credit transaction transfer
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute destination
      #   The recipient of the credit transaction transfer
      #
      #   @return [WhopSDK::Models::Transfer::Destination::User, WhopSDK::Models::Transfer::Destination::Company, nil]
      required :destination, union: -> { WhopSDK::Transfer::Destination }

      # @!attribute destination_ledger_account_id
      #   The ID of the destination ledger account
      #
      #   @return [String]
      required :destination_ledger_account_id, String

      # @!attribute fee_amount
      #   The decimal fee of the credit transaction transfer
      #
      #   @return [Float, nil]
      required :fee_amount, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs attached to the transfer. Max 50 keys, 500 chars per key,
      #   5000 chars per value.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute notes
      #   The notes of the credit transaction transfer
      #
      #   @return [String, nil]
      required :notes, String, nil?: true

      # @!attribute origin
      #   The sender of the credit transaction transfer
      #
      #   @return [WhopSDK::Models::Transfer::Origin::User, WhopSDK::Models::Transfer::Origin::Company, nil]
      required :origin, union: -> { WhopSDK::Transfer::Origin }

      # @!attribute origin_ledger_account_id
      #   The ID of the origin ledger account
      #
      #   @return [String]
      required :origin_ledger_account_id, String

      # @!method initialize(id:, amount:, created_at:, currency:, destination:, destination_ledger_account_id:, fee_amount:, metadata:, notes:, origin:, origin_ledger_account_id:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Transfer} for more details.
      #
      #   Credit Transaction Transfer
      #
      #   @param id [String] The unique identifier for the credit transaction transfer.
      #
      #   @param amount [Float] The amount of the transfer. Provided as a number in the specified currency. Eg:
      #
      #   @param created_at [Time] The datetime the credit transaction transfer was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the credit transaction transfer
      #
      #   @param destination [WhopSDK::Models::Transfer::Destination::User, WhopSDK::Models::Transfer::Destination::Company, nil] The recipient of the credit transaction transfer
      #
      #   @param destination_ledger_account_id [String] The ID of the destination ledger account
      #
      #   @param fee_amount [Float, nil] The decimal fee of the credit transaction transfer
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value pairs attached to the transfer. Max 50 keys, 500 chars per key,
      #
      #   @param notes [String, nil] The notes of the credit transaction transfer
      #
      #   @param origin [WhopSDK::Models::Transfer::Origin::User, WhopSDK::Models::Transfer::Origin::Company, nil] The sender of the credit transaction transfer
      #
      #   @param origin_ledger_account_id [String] The ID of the origin ledger account

      # The recipient of the credit transaction transfer
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

      # The sender of the credit transaction transfer
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
