# frozen_string_literal: true

module Whop_sdk
  module Files
    module Types
      class CreateFilesRequest < Internal::Types::Model
        field :filename, -> { String }, optional: false, nullable: false

        field :visibility, -> { Whop_sdk::Types::FileVisibility }, optional: true, nullable: false
      end
    end
  end
end
