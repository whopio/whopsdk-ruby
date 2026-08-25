# frozen_string_literal: true

module Whop_sdk
  module Files
    module Types
      class CompleteFilesRequestMultipartPartsItem < Internal::Types::Model
        field :etag, -> { String }, optional: false, nullable: false

        field :part_number, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
