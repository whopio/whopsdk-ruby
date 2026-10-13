# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainWebsiteApp < Internal::Types::Model
      field :base_url, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
