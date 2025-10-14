# frozen_string_literal: true

module Whopsdk
  module Models
    class Entry < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the entry.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the entry was created.
      #
      #   @return [Integer, nil]
      required :created_at, Integer, nil?: true

      # @!attribute custom_field_responses
      #   Responses collected from the user when submitting their entry.
      #
      #   @return [Array<Whopsdk::Models::Entry::CustomFieldResponse>, nil]
      required :custom_field_responses,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Entry::CustomFieldResponse] },
               nil?: true

      # @!attribute plan
      #   The waitlist plan the entry if for.
      #
      #   @return [Whopsdk::Models::Entry::Plan, nil]
      required :plan, -> { Whopsdk::Entry::Plan }, nil?: true

      # @!attribute product
      #   The access pass tied to this entry, if there is one.
      #
      #   @return [Whopsdk::Models::Entry::Product, nil]
      required :product, -> { Whopsdk::Entry::Product }, nil?: true

      # @!attribute status
      #   The status of the entry.
      #
      #   @return [Symbol, Whopsdk::Models::EntryStatus]
      required :status, enum: -> { Whopsdk::EntryStatus }

      # @!attribute user
      #   The user who created the entry.
      #
      #   @return [Whopsdk::Models::Entry::User]
      required :user, -> { Whopsdk::Entry::User }

      # @!method initialize(id:, created_at:, custom_field_responses:, plan:, product:, status:, user:)
      #   An object representing an entry in a waitlist.
      #
      #   @param id [String] The internal ID of the entry.
      #
      #   @param created_at [Integer, nil] When the entry was created.
      #
      #   @param custom_field_responses [Array<Whopsdk::Models::Entry::CustomFieldResponse>, nil] Responses collected from the user when submitting their entry.
      #
      #   @param plan [Whopsdk::Models::Entry::Plan, nil] The waitlist plan the entry if for.
      #
      #   @param product [Whopsdk::Models::Entry::Product, nil] The access pass tied to this entry, if there is one.
      #
      #   @param status [Symbol, Whopsdk::Models::EntryStatus] The status of the entry.
      #
      #   @param user [Whopsdk::Models::Entry::User] The user who created the entry.

      class CustomFieldResponse < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the custom field item
        #
        #   @return [String]
        required :id, String

        # @!attribute answer
        #   The response a user gave to the specific question or field.
        #
        #   @return [String]
        required :answer, String

        # @!attribute question
        #   The question asked by the custom field
        #
        #   @return [String]
        required :question, String

        # @!method initialize(id:, answer:, question:)
        #   The response from a custom field on checkout
        #
        #   @param id [String] The ID of the custom field item
        #
        #   @param answer [String] The response a user gave to the specific question or field.
        #
        #   @param question [String] The question asked by the custom field
      end

      # @see Whopsdk::Models::Entry#plan
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

      # @see Whopsdk::Models::Entry#product
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

      # @see Whopsdk::Models::Entry#user
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
