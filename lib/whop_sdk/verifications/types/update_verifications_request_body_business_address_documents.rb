# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Company formation documents, each the ID of a file uploaded with Create File and not yet attached to anything
      # else, prefixed `file_`. Send the ID once its `upload_status` is `ready`. Each file must be a PDF, JPEG, or PNG
      # of up to 10MB. They are filed under the business's country, from `country`, `address`, or an earlier request. A
      # document of a kind already on file is kept unless it was rejected, so a retried request does not add a second
      # copy. The hosted session at `session_url` collects anything still missing.
      class UpdateVerificationsRequestBodyBusinessAddressDocuments < Internal::Types::Model
        field :articles_of_incorporation, -> { String }, optional: true, nullable: false

        field :certificate_of_incorporation, -> { String }, optional: true, nullable: false
      end
    end
  end
end
