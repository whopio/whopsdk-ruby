# frozen_string_literal: true

module Whop_sdk
  module Types
    class Review < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::ReviewAccount }, optional: false, nullable: false

      field :attachments, -> { Internal::Types::Array[Whop_sdk::Types::ReviewAttachment] }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :joined_at, -> { String }, optional: false, nullable: true

      field :paid_for_product, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :product, -> { Whop_sdk::Types::ReviewProduct }, optional: false, nullable: false

      field :published_at, -> { String }, optional: false, nullable: true

      field :stars, -> { Integer }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ReviewStatus }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::ReviewUser }, optional: false, nullable: false
    end
  end
end
