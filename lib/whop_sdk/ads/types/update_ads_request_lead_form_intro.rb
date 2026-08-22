# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Optional intro screen shown before the questions.
      class UpdateAdsRequestLeadFormIntro < Internal::Types::Model
        field :description, -> { String }, optional: true, nullable: false

        field :headline, -> { String }, optional: true, nullable: false
      end
    end
  end
end
