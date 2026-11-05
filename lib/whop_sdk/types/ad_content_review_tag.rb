# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdContentReviewTag < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
