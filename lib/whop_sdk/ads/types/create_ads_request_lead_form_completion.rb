# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Optional completion screen shown after submission; url sets the follow-up website button.
      class CreateAdsRequestLeadFormCompletion < Internal::Types::Model
        field :button_text, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :headline, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
