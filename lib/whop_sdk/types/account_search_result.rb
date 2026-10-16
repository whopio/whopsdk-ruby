# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountSearchResult < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
