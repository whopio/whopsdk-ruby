# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdCreative < Internal::Types::Model
      field :crop, -> { Whop_sdk::Types::AdCreativeCrop }, optional: false, nullable: true

      field :format, -> { Whop_sdk::Types::AdCreativeFormat }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :media_type, -> { String }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
