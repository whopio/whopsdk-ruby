# frozen_string_literal: true

module Whop_sdk
  module Exports
    module Types
      class CreateExportsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :columns, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :filters, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :resource, -> { Whop_sdk::Exports::Types::CreateExportsRequestResource }, optional: false, nullable: false

        field :timezone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
