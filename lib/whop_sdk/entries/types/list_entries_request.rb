# frozen_string_literal: true

module Whop_sdk
  module Entries
    module Types
      class ListEntriesRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :company_id, -> { String }, optional: false, nullable: false

        field :direction, -> { Whop_sdk::Types::Direction }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Types::EntriesSortableColumns }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :plan_ids, -> { String }, optional: true, nullable: false

        field :statuses, -> { Whop_sdk::Types::EntryStatus }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
