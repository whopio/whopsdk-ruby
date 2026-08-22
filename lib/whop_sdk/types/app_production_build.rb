# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppProductionBuild < Internal::Types::Model
      field :checksum, -> { String }, optional: false, nullable: true

      field :file_url, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :source_url, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AppProductionBuildStatus }, optional: false, nullable: false
    end
  end
end
