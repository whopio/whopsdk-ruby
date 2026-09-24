# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadFormCompletion < Internal::Types::Model
      field :button_text, -> { String }, optional: false, nullable: true

      field :button_type, -> { Whop_sdk::Types::AdLeadFormCompletionButtonType }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :file_url, -> { String }, optional: false, nullable: true

      field :headline, -> { String }, optional: false, nullable: true

      field :phone_number, -> { String }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
