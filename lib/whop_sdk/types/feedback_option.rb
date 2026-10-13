# frozen_string_literal: true

module Whop_sdk
  module Types
    class FeedbackOption < Internal::Types::Model
      field :category, -> { Whop_sdk::Types::FeedbackOptionCategory }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: false
    end
  end
end
