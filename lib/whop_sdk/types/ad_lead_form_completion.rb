# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadFormCompletion < Internal::Types::Model
      field :button_text, -> { String }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :headline, -> { String }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
