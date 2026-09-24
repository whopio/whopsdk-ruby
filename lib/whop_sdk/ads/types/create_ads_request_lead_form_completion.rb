# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Optional completion screen shown after submission. Its button needs a destination: url for button_type website
      # (the default), phone_number for call, file_url for download.
      class CreateAdsRequestLeadFormCompletion < Internal::Types::Model
        field :button_text, -> { String }, optional: true, nullable: false

        field :button_type, -> { Whop_sdk::Ads::Types::CreateAdsRequestLeadFormCompletionButtonType }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :file_url, -> { String }, optional: true, nullable: false

        field :headline, -> { String }, optional: true, nullable: false

        field :phone_number, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
