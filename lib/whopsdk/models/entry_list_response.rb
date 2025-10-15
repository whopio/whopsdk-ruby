# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Entries#list
    class EntryListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the entry.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the entry was created.
      #
      #   @return [Time, nil]
      required :created_at, Time, nil?: true

      # @!attribute plan
      #   The waitlist plan the entry if for.
      #
      #   @return [Whopsdk::Models::EntryListResponse::Plan, nil]
      required :plan, -> { Whopsdk::Models::EntryListResponse::Plan }, nil?: true

      # @!attribute product
      #   The access pass tied to this entry, if there is one.
      #
      #   @return [Whopsdk::Models::EntryListResponse::Product, nil]
      required :product, -> { Whopsdk::Models::EntryListResponse::Product }, nil?: true

      # @!attribute status
      #   The status of the entry.
      #
      #   @return [Symbol, Whopsdk::Models::EntryStatus]
      required :status, enum: -> { Whopsdk::EntryStatus }

      # @!attribute user
      #   The user who created the entry.
      #
      #   @return [Whopsdk::Models::EntryListResponse::User]
      required :user, -> { Whopsdk::Models::EntryListResponse::User }

      # @!method initialize(id:, created_at:, plan:, product:, status:, user:)
      #   An object representing an entry in a waitlist.
      #
      #   @param id [String] The internal ID of the entry.
      #
      #   @param created_at [Time, nil] When the entry was created.
      #
      #   @param plan [Whopsdk::Models::EntryListResponse::Plan, nil] The waitlist plan the entry if for.
      #
      #   @param product [Whopsdk::Models::EntryListResponse::Product, nil] The access pass tied to this entry, if there is one.
      #
      #   @param status [Symbol, Whopsdk::Models::EntryStatus] The status of the entry.
      #
      #   @param user [Whopsdk::Models::EntryListResponse::User] The user who created the entry.

      # @see Whopsdk::Models::EntryListResponse#plan
      class Plan < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The waitlist plan the entry if for.
        #
        #   @param id [String] The internal ID of the plan.
      end

      # @see Whopsdk::Models::EntryListResponse#product
      class Product < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the product. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The access pass tied to this entry, if there is one.
        #
        #   @param id [String] The internal ID of the public product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end

      # @see Whopsdk::Models::EntryListResponse#user
      class User < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The email of the user
        #
        #   @return [String, nil]
        required :email, String, nil?: true

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

        # @!method initialize(id:, email:, name:, username:)
        #   The user who created the entry.
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param email [String, nil] The email of the user
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
