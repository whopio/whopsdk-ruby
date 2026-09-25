# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class CreateAdsRequestPrimaryTextsItem < Internal::Types::Model
        field :language, -> { String }, optional: true, nullable: false

        field :text, -> { String }, optional: false, nullable: false
      end
    end
  end
end
