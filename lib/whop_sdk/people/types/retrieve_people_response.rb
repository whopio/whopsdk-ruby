# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      # The full profile a retrieve returns: the summary plus every linked identity, purchase rows, all acquisition
      # sources, and exact usage breakdowns.
      class RetrievePeopleResponse < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :aov, -> { Integer }, optional: true, nullable: false

        field :audience_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :custom_event_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :device, -> { Whop_sdk::People::Types::RetrievePeopleResponseDevice }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :emails, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :event_count, -> { Integer }, optional: false, nullable: false

        field :event_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :first_purchase_at, -> { String }, optional: true, nullable: false

        field :first_seen_at, -> { String }, optional: false, nullable: false

        field :first_source, -> { Whop_sdk::People::Types::RetrievePeopleResponseFirstSource }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :last_ip, -> { String }, optional: true, nullable: false

        field :last_purchase_at, -> { String }, optional: true, nullable: false

        field :last_seen_at, -> { String }, optional: false, nullable: false

        field :last_source, -> { Whop_sdk::People::Types::RetrievePeopleResponseLastSource }, optional: true, nullable: false

        field :location, -> { Whop_sdk::People::Types::RetrievePeopleResponseLocation }, optional: true, nullable: false

        field :ltv, -> { Integer }, optional: true, nullable: false

        field :member, -> { Whop_sdk::People::Types::RetrievePeopleResponseMember }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :phones, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :purchase_count, -> { Integer }, optional: false, nullable: false

        field :purchases, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponsePurchasesItem] }, optional: true, nullable: false

        field :roles, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :sources, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponseSourcesItem] }, optional: true, nullable: false

        field :timezone, -> { String }, optional: true, nullable: false

        field :usage, -> { Whop_sdk::People::Types::RetrievePeopleResponseUsage }, optional: true, nullable: false

        field :user, -> { Whop_sdk::People::Types::RetrievePeopleResponseUser }, optional: true, nullable: false

        field :user_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
