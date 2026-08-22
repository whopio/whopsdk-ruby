# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    module Types
      # Optional capture metadata describing where and how the footage was recorded. Persisted on the submission. On a
      # `data_capture` bounty every field except `fov` is required whenever metadata is provided.
      class CreateBountySubmissionsRequestMetadata < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :device, -> { String }, optional: true, nullable: false

        field :fov, -> { Integer }, optional: true, nullable: false

        field :operator, -> { String }, optional: true, nullable: false

        field :site, -> { String }, optional: true, nullable: false

        field :station, -> { String }, optional: true, nullable: false
      end
    end
  end
end
