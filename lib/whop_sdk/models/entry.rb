# frozen_string_literal: true

module WhopSDK
  module Models
    class Entry < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entry.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The datetime the entry was created.
      #
      #   @return [Time, nil]
      required :created_at, Time, nil?: true

      # @!attribute custom_field_responses
      #   The list of responses collected from the user when submitting their waitlist
      #   entry.
      #
      #   @return [Array<WhopSDK::Models::Entry::CustomFieldResponse>, nil]
      required :custom_field_responses,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Entry::CustomFieldResponse] },
               nil?: true

      # @!attribute plan
      #   The waitlisted plan that this entry is a signup for.
      #
      #   @return [WhopSDK::Models::Entry::Plan, nil]
      required :plan, -> { WhopSDK::Entry::Plan }, nil?: true

      # @!attribute product
      #   The product associated with this entry's waitlisted plan. Null if the plan is
      #   not tied to a product.
      #
      #   @return [WhopSDK::Models::Entry::Product, nil]
      required :product, -> { WhopSDK::Entry::Product }, nil?: true

      # @!attribute status
      #   The current status of the waitlist entry (e.g., drafted, pending, approved,
      #   denied).
      #
      #   @return [Symbol, WhopSDK::Models::EntryStatus]
      required :status, enum: -> { WhopSDK::EntryStatus }

      # @!attribute user
      #   The user who submitted this waitlist entry.
      #
      #   @return [WhopSDK::Models::Entry::User]
      required :user, -> { WhopSDK::Entry::User }

      # @!method initialize(id:, created_at:, custom_field_responses:, plan:, product:, status:, user:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Entry}
      #   for more details.
      #
      #   An entry represents a user's signup for a waitlisted plan.
      #
      #   @param id [String] The unique identifier for the entry.
      #
      #   @param created_at [Time, nil] The datetime the entry was created.
      #
      #   @param custom_field_responses [Array<WhopSDK::Models::Entry::CustomFieldResponse>, nil] The list of responses collected from the user when submitting their waitlist ent
      #
      #   @param plan [WhopSDK::Models::Entry::Plan, nil] The waitlisted plan that this entry is a signup for.
      #
      #   @param product [WhopSDK::Models::Entry::Product, nil] The product associated with this entry's waitlisted plan. Null if the plan is no
      #
      #   @param status [Symbol, WhopSDK::Models::EntryStatus] The current status of the waitlist entry (e.g., drafted, pending, approved, deni
      #
      #   @param user [WhopSDK::Models::Entry::User] The user who submitted this waitlist entry.

      class CustomFieldResponse < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the custom field response.
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
        #   @param id [String] The unique identifier for the custom field response.
        #
        #   @param answer [String] The response a user gave to the specific question or field.
        #
        #   @param question [String] The question asked by the custom field
      end

      # @see WhopSDK::Models::Entry#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The waitlisted plan that this entry is a signup for.
        #
        #   @param id [String] The unique identifier for the plan.
      end

      # @see WhopSDK::Models::Entry#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Entry::Product} for more details.
        #
        #   The product associated with this entry's waitlisted plan. Null if the plan is
        #   not tied to a product.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # @see WhopSDK::Models::Entry#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The user's email address. Requires the member:email:read permission to access.
        #   Null if not authorized.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

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

        # @!method initialize(id:, email:, name:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Entry::User} for more details.
        #
        #   The user who submitted this waitlist entry.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param email [String, nil] The user's email address. Requires the member:email:read permission to access. N
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
