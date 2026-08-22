# frozen_string_literal: true

module Whop_sdk
  module Members
    module Logs
      module Types
        class ListLogsResponseDataItem < Internal::Types::Model
          field :action, -> { String }, optional: false, nullable: true

          field :actor, -> { Whop_sdk::Members::Logs::Types::ListLogsResponseDataItemActor }, optional: false, nullable: true

          field :created_at, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
