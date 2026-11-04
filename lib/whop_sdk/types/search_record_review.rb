# frozen_string_literal: true

module Whop_sdk
  module Types
    class SearchRecordReview < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :image_url, -> { String }, optional: false, nullable: true

      field :subtitle, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true
    end
  end
end
