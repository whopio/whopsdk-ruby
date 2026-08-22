# frozen_string_literal: true

module Whop_sdk
  module Types
    # A user-submitted review of a company, including a star rating and optional text feedback.
    class ReviewListItem < Internal::Types::Model
      field :attachments, -> { Internal::Types::Array[Whop_sdk::Types::ReviewListItemAttachmentsItem] }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :joined_at, -> { String }, optional: false, nullable: true

      field :paid_for_product, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :published_at, -> { String }, optional: false, nullable: true

      field :stars, -> { Integer }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ReviewStatus }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::ReviewListItemUser }, optional: false, nullable: false
    end
  end
end
