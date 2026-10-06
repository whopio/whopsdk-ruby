# frozen_string_literal: true

module Whop_sdk
  module FeedbackSubmissions
    module Types
      class CreateFeedbackSubmissionsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :content, -> { String }, optional: false, nullable: false

        field :source, -> { Whop_sdk::FeedbackSubmissions::Types::CreateFeedbackSubmissionsRequestSource }, optional: false, nullable: false
      end
    end
  end
end
