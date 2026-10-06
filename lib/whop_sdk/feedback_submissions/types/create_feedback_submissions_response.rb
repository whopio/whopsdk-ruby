# frozen_string_literal: true

module Whop_sdk
  module FeedbackSubmissions
    module Types
      class CreateFeedbackSubmissionsResponse < Internal::Types::Model
        field :created_at, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
