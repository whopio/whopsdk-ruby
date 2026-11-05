# frozen_string_literal: true

module Whop_sdk
  module Types
    class ReviewReport < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :reason, -> { String }, optional: false, nullable: false

      field :review_id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ReviewReportStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: true
    end
  end
end
