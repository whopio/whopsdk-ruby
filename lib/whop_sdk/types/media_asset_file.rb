# frozen_string_literal: true

module Whop_sdk
  module Types
    class MediaAssetFile < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
