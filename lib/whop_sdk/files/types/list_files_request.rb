# frozen_string_literal: true

module Whop_sdk
  module Files
    module Types
      class ListFilesRequest < Internal::Types::Model
        field :file_ids, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Files::Types::ListFilesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Files::Types::ListFilesRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
