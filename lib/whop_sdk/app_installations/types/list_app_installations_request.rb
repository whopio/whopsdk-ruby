# frozen_string_literal: true

module Whop_sdk
  module AppInstallations
    module Types
      class ListAppInstallationsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :app_id, -> { String }, optional: true, nullable: false

        field :view_type, -> { Whop_sdk::AppInstallations::Types::ListAppInstallationsRequestViewType }, optional: true, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::AppInstallations::Types::ListAppInstallationsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::AppInstallations::Types::ListAppInstallationsRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
