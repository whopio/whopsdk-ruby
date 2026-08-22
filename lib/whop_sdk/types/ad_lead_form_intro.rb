# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadFormIntro < Internal::Types::Model
      field :description, -> { String }, optional: false, nullable: true

      field :headline, -> { String }, optional: false, nullable: true
    end
  end
end
