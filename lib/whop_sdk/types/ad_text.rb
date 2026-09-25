# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdText < Internal::Types::Model
      field :language, -> { String }, optional: false, nullable: true

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
