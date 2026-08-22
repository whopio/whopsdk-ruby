# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      class ListPeopleResponseDataItem < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :aov, -> { Integer }, optional: true, nullable: false

        field :device, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemDevice }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :event_count, -> { Integer }, optional: false, nullable: false

        field :first_purchase_at, -> { String }, optional: true, nullable: false

        field :first_seen_at, -> { String }, optional: false, nullable: false

        field :first_source, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemFirstSource }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :last_ip, -> { String }, optional: true, nullable: false

        field :last_purchase_at, -> { String }, optional: true, nullable: false

        field :last_seen_at, -> { String }, optional: false, nullable: false

        field :last_source, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemLastSource }, optional: true, nullable: false

        field :location, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemLocation }, optional: true, nullable: false

        field :ltv, -> { Integer }, optional: true, nullable: false

        field :member, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemMember }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :purchase_count, -> { Integer }, optional: false, nullable: false

        field :timezone, -> { String }, optional: true, nullable: false

        field :user, -> { Whop_sdk::People::Types::ListPeopleResponseDataItemUser }, optional: true, nullable: false
      end
    end
  end
end
