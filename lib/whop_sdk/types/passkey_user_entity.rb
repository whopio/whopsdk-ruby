# frozen_string_literal: true

module Whop_sdk
  module Types
    class PasskeyUserEntity < Internal::Types::Model
      field :display_name, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
