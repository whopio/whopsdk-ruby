# frozen_string_literal: true

module Whop_sdk
  module Types
    class SearchRecordAccount < Internal::Types::Model
      field :banner_image_url, -> { String }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :image_url, -> { String }, optional: false, nullable: true

      field :parent_account_id, -> { String }, optional: false, nullable: true

      field :subtitle, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true
    end
  end
end
