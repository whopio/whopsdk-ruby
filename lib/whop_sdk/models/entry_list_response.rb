# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Entries#list
    class EntryListResponse < WhopSDK::Internal::Type::BaseModel
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
      #   @return [WhopSDK::Models::EntryListResponse::Plan, nil]
      required :plan, -> { WhopSDK::Models::EntryListResponse::Plan }, nil?: true

      # @!attribute product
      #   The product tied to this entry, if there is one.
      #
      #   @return [WhopSDK::Models::EntryListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::EntryListResponse::Product }, nil?: true

      # @!attribute status
      #   The status of the entry.
      #
      #   @return [Symbol, WhopSDK::Models::EntryStatus]
      required :status, enum: -> { WhopSDK::EntryStatus }

      # @!attribute user
      #   The user who created the entry.
      #
      #   @return [WhopSDK::Models::EntryListResponse::User]
      required :user, -> { WhopSDK::Models::EntryListResponse::User }

      # @!method initialize(id:, created_at:, plan:, product:, status:, user:)
      #   An object representing an entry in a waitlist.
      #
      #   @param id [String] The internal ID of the entry.
      #
      #   @param created_at [Time, nil] When the entry was created.
      #
      #   @param plan [WhopSDK::Models::EntryListResponse::Plan, nil] The waitlist plan the entry if for.
      #
      #   @param product [WhopSDK::Models::EntryListResponse::Product, nil] The product tied to this entry, if there is one.
      #
      #   @param status [Symbol, WhopSDK::Models::EntryStatus] The status of the entry.
      #
      #   @param user [WhopSDK::Models::EntryListResponse::User] The user who created the entry.

      # @see WhopSDK::Models::EntryListResponse#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
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

      # @see WhopSDK::Models::EntryListResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
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
        #   The product tied to this entry, if there is one.
        #
        #   @param id [String] The internal ID of the public product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end

      # @see WhopSDK::Models::EntryListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
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
