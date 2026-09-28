# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      class CreatePlansRequestImage < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
