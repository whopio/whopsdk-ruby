# frozen_string_literal: true

module Whopsdk
  module Models
    class Transfer < Whopsdk::Internal::Type::BaseModel
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
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute currency
      #   The currency of the credit transaction transfer
      #
      #   @return [Symbol, Whopsdk::Models::Currency]
      required :currency, enum: -> { Whopsdk::Currency }

      # @!attribute destination
      #   The recipient of the credit transaction transfer
      #
      #   @return [Whopsdk::Models::Transfer::Destination::UnionMember0, Whopsdk::Models::Transfer::Destination::UnionMember1, nil]
      required :destination, union: -> { Whopsdk::Transfer::Destination }

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
      #   @return [Whopsdk::Models::Transfer::Origin::UnionMember0, Whopsdk::Models::Transfer::Origin::UnionMember1, nil]
      required :origin, union: -> { Whopsdk::Transfer::Origin }

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
      #   @param created_at [Integer] The timestamp when the credit transaction transfer was created
      #
      #   @param currency [Symbol, Whopsdk::Models::Currency] The currency of the credit transaction transfer
      #
      #   @param destination [Whopsdk::Models::Transfer::Destination::UnionMember0, Whopsdk::Models::Transfer::Destination::UnionMember1, nil] The recipient of the credit transaction transfer
      #
      #   @param destination_ledger_account_id [String] The ID of the destination ledger account
      #
      #   @param fee_amount [Float, nil] The decimal fee of the credit transaction transfer
      #
      #   @param notes [String, nil] The notes of the credit transaction transfer
      #
      #   @param origin [Whopsdk::Models::Transfer::Origin::UnionMember0, Whopsdk::Models::Transfer::Origin::UnionMember1, nil] The sender of the credit transaction transfer
      #
      #   @param origin_ledger_account_id [String] The ID of the origin ledger account

      # The recipient of the credit transaction transfer
      #
      # @see Whopsdk::Models::Transfer#destination
      module Destination
        extend Whopsdk::Internal::Type::Union

        # An object representing a (sanitized) user of the site.
        variant -> { Whopsdk::Transfer::Destination::UnionMember0 }

        # An object representing a (sanitized) company.
        variant -> { Whopsdk::Transfer::Destination::UnionMember1 }

        class UnionMember0 < Whopsdk::Internal::Type::BaseModel
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
          #   @return [Symbol, :PublicProfileUser]
          required :typename, const: :PublicProfileUser

          # @!attribute username
          #   The username of the user from their Whop account.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, username:, typename: :PublicProfileUser)
          #   An object representing a (sanitized) user of the site.
          #
          #   @param id [String] The internal ID of the user.
          #
          #   @param name [String, nil] The name of the user from their Whop account.
          #
          #   @param username [String] The username of the user from their Whop account.
          #
          #   @param typename [Symbol, :PublicProfileUser] The typename of this object
        end

        class UnionMember1 < Whopsdk::Internal::Type::BaseModel
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
          #   @return [Symbol, :PublicCompany]
          required :typename, const: :PublicCompany

          # @!method initialize(id:, route:, title:, typename: :PublicCompany)
          #   An object representing a (sanitized) company.
          #
          #   @param id [String] The ID (tag) of the company.
          #
          #   @param route [String] The slug/route of the company on the Whop site.
          #
          #   @param title [String] The title of the company.
          #
          #   @param typename [Symbol, :PublicCompany] The typename of this object
        end

        # @!method self.variants
        #   @return [Array(Whopsdk::Models::Transfer::Destination::UnionMember0, Whopsdk::Models::Transfer::Destination::UnionMember1)]
      end

      # The sender of the credit transaction transfer
      #
      # @see Whopsdk::Models::Transfer#origin
      module Origin
        extend Whopsdk::Internal::Type::Union

        # An object representing a (sanitized) user of the site.
        variant -> { Whopsdk::Transfer::Origin::UnionMember0 }

        # An object representing a (sanitized) company.
        variant -> { Whopsdk::Transfer::Origin::UnionMember1 }

        class UnionMember0 < Whopsdk::Internal::Type::BaseModel
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
          #   @return [Symbol, :PublicProfileUser]
          required :typename, const: :PublicProfileUser

          # @!attribute username
          #   The username of the user from their Whop account.
          #
          #   @return [String]
          required :username, String

          # @!method initialize(id:, name:, username:, typename: :PublicProfileUser)
          #   An object representing a (sanitized) user of the site.
          #
          #   @param id [String] The internal ID of the user.
          #
          #   @param name [String, nil] The name of the user from their Whop account.
          #
          #   @param username [String] The username of the user from their Whop account.
          #
          #   @param typename [Symbol, :PublicProfileUser] The typename of this object
        end

        class UnionMember1 < Whopsdk::Internal::Type::BaseModel
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
          #   @return [Symbol, :PublicCompany]
          required :typename, const: :PublicCompany

          # @!method initialize(id:, route:, title:, typename: :PublicCompany)
          #   An object representing a (sanitized) company.
          #
          #   @param id [String] The ID (tag) of the company.
          #
          #   @param route [String] The slug/route of the company on the Whop site.
          #
          #   @param title [String] The title of the company.
          #
          #   @param typename [Symbol, :PublicCompany] The typename of this object
        end

        # @!method self.variants
        #   @return [Array(Whopsdk::Models::Transfer::Origin::UnionMember0, Whopsdk::Models::Transfer::Origin::UnionMember1)]
      end
    end
  end
end
