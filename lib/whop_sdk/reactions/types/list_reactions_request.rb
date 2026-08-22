# frozen_string_literal: true

module Whop_sdk
  module Reactions
    module Types
      class ListReactionsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :resource_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
