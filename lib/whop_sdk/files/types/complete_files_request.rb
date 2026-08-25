# frozen_string_literal: true

module Whop_sdk
  module Files
    module Types
      class CompleteFilesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :multipart_parts, -> { Internal::Types::Array[Whop_sdk::Files::Types::CompleteFilesRequestMultipartPartsItem] }, optional: false, nullable: false

        field :multipart_upload_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
