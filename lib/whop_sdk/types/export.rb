# frozen_string_literal: true

module Whop_sdk
  module Types
    class Export < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :download_url, -> { String }, optional: false, nullable: true

      field :expires_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :progress_percent, -> { Integer }, optional: false, nullable: true

      field :resource, -> { Whop_sdk::Types::ExportResource }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ExportStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
