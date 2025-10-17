# frozen_string_literal: true

module WhopSDK
  module Models
    class Transfer < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the credit transaction transfer
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The amount of the credit transaction transfer
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The timestamp when the credit transaction transfer was created
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

      # @!method initialize(id:, amount:, created_at:, currency:, destination:, destination_ledger_account_id:, fee_amount:, notes:, origin:, origin_ledger_account_id:)
      #   Credit Transaction Transfer
      #
      #   @param id [String] The unique identifier of the credit transaction transfer
      #
      #   @param amount [Float] The amount of the credit transaction transfer
      #
      #   @param created_at [Time] The timestamp when the credit transaction transfer was created
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the credit transaction transfer
      #
      #   @param destination [WhopSDK::Models::Transfer::Destination::User, WhopSDK::Models::Transfer::Destination::Company, nil] The recipient of the credit transaction transfer
      #
      #   @param destination_ledger_account_id [String] The ID of the destination ledger account
      #
      #   @param fee_amount [Float, nil] The decimal fee of the credit transaction transfer
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

        # An object representing a (sanitized) user of the site.
        variant :User, -> { WhopSDK::Transfer::Destination::User }

        # An object representing a (sanitized) company.
        variant :Company, -> { WhopSDK::Transfer::Destination::Company }

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

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :User]
          required :typename, const: :User

          # @!attribute username
          #   The username of the user from their Whop account.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, username:, typename: :User)
          #   An object representing a (sanitized) user of the site.
          #
          #   @param id [String] The internal ID of the user.
          #
          #   @param name [String, nil] The name of the user from their Whop account.
          #
          #   @param username [String] The username of the user from their Whop account.
          #
          #   @param typename [Symbol, :User] The typename of this object
        end

        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID (tag) of the company.
          #
          #   @return [String]
          required :id, String

          # @!attribute route
          #   The slug/route of the company on the Whop site.
          #
          #   @return [String]
          required :route, String

          # @!attribute title
          #   The title of the company.
          #
          #   @return [String]
          required :title, String

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :Company]
          required :typename, const: :Company

          # @!method initialize(id:, route:, title:, typename: :Company)
          #   An object representing a (sanitized) company.
          #
          #   @param id [String] The ID (tag) of the company.
          #
          #   @param route [String] The slug/route of the company on the Whop site.
          #
          #   @param title [String] The title of the company.
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

        # An object representing a (sanitized) user of the site.
        variant :User, -> { WhopSDK::Transfer::Origin::User }

        # An object representing a (sanitized) company.
        variant :Company, -> { WhopSDK::Transfer::Origin::Company }

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

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :User]
          required :typename, const: :User

          # @!attribute username
          #   The username of the user from their Whop account.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, username:, typename: :User)
          #   An object representing a (sanitized) user of the site.
          #
          #   @param id [String] The internal ID of the user.
          #
          #   @param name [String, nil] The name of the user from their Whop account.
          #
          #   @param username [String] The username of the user from their Whop account.
          #
          #   @param typename [Symbol, :User] The typename of this object
        end

        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID (tag) of the company.
          #
          #   @return [String]
          required :id, String

          # @!attribute route
          #   The slug/route of the company on the Whop site.
          #
          #   @return [String]
          required :route, String

          # @!attribute title
          #   The title of the company.
          #
          #   @return [String]
          required :title, String

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :Company]
          required :typename, const: :Company

          # @!method initialize(id:, route:, title:, typename: :Company)
          #   An object representing a (sanitized) company.
          #
          #   @param id [String] The ID (tag) of the company.
          #
          #   @param route [String] The slug/route of the company on the Whop site.
          #
          #   @param title [String] The title of the company.
          #
          #   @param typename [Symbol, :Company] The typename of this object
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::Transfer::Origin::User, WhopSDK::Models::Transfer::Origin::Company)]
      end
    end
  end
end
