# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadFormPrivacyPolicy < Internal::Types::Model
      field :link_text, -> { String }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
