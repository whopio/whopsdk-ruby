# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class ListVerificationsResponseDataItemRequestedInformationItem < Internal::Types::Model
        field :action_url, -> { String }, optional: true, nullable: false

        field :details_label, -> { String }, optional: true, nullable: false

        field :details_required, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :details_visible_for, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :errors, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemRequestedInformationItemErrorsItem] }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :label, -> { String }, optional: false, nullable: false

        field :optional, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :options, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :requirement, -> { String }, optional: false, nullable: false

        field :response_type, -> { Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemRequestedInformationItemResponseType }, optional: true, nullable: false

        field :selection_mode, -> { Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemRequestedInformationItemSelectionMode }, optional: true, nullable: false

        field :supporting_documents, -> { Internal::Types::Array[Whop_sdk::Types::File] }, optional: true, nullable: false

        field :supporting_files_explanation_allowed, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :supporting_files_required, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :supporting_files_visible_for, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :type, -> { String }, optional: false, nullable: false
      end
    end
  end
end
