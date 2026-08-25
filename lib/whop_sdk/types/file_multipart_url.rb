# frozen_string_literal: true

module Whop_sdk
  module Types
    class FileMultipartURL < Internal::Types::Model
      field :part_number, -> { Integer }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
