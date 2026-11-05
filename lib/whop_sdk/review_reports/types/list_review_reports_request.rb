# frozen_string_literal: true

module Whop_sdk
  module ReviewReports
    module Types
      class ListReviewReportsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :review_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::ReviewReports::Types::ListReviewReportsRequestStatus }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::ReviewReports::Types::ListReviewReportsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::ReviewReports::Types::ListReviewReportsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
