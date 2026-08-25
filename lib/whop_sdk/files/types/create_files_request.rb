# frozen_string_literal: true

module Whop_sdk
  module Files
    module Types
      class CreateFilesRequest < Internal::Types::Model
        field :byte_size, -> { Integer }, optional: true, nullable: false

        field :filename, -> { String }, optional: false, nullable: false

        field :multipart, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :visibility, -> { Whop_sdk::Files::Types::CreateFilesRequestVisibility }, optional: true, nullable: false
      end
    end
  end
end
