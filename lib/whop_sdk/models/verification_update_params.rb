# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#update
    class VerificationUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute verification_id
      #
      #   @return [String]
      required :verification_id, String

      # @!attribute body
      #   Fields that can be updated on an individual (KYC) verification. At least one
      #   field is required.
      #
      #   @return [WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification, WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification]
      required :body, union: -> { WhopSDK::VerificationUpdateParams::Body }

      # @!method initialize(verification_id:, body:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::VerificationUpdateParams} for more details.
      #
      #   @param verification_id [String]
      #
      #   @param body [WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification, WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification] Fields that can be updated on an individual (KYC) verification. At least one fie
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Fields that can be updated on an individual (KYC) verification. At least one
      # field is required.
      module Body
        extend WhopSDK::Internal::Type::Union

        # Fields that can be updated on an individual (KYC) verification. At least one field is required.
        variant -> { WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification }

        # Fields that can be updated on a business entity (KYB) verification. At least one field is required.
        variant -> { WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification }

        class UpdateIndividualVerification < WhopSDK::Internal::Type::BaseModel
          # @!attribute business_tax_identification_number
          #   The business ID number of the company, as appropriate for the company's country.
          #   Examples are an Employer Identification Number (EIN) in the US, a Business
          #   Number in Canada, or a Company Number in the UK.
          #
          #   @return [String, nil]
          optional :business_tax_identification_number, String

          # @!attribute country
          #   Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          #
          #   @return [String, nil]
          optional :country, String

          # @!attribute date_of_birth
          #   Formatted as `YYYY-MM-DD`.
          #
          #   @return [String, nil]
          optional :date_of_birth, String

          # @!attribute first_name
          #
          #   @return [String, nil]
          optional :first_name, String

          # @!attribute last_name
          #
          #   @return [String, nil]
          optional :last_name, String

          # @!attribute personal_address
          #   Personal address for the individual.
          #
          #   @return [WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::PersonalAddress, nil]
          optional :personal_address,
                   -> { WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::PersonalAddress }

          # @!attribute requested_information
          #   Answers to items returned in `requested_information`. Each entry must include
          #   the requested item `id` and exactly one answer payload matching the item's
          #   `type`: `value` for `text`, `date`, or `phone`; `address` for `address`; `files`
          #   for `files`.
          #
          #   @return [Array<WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation>, nil]
          optional :requested_information,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation] }

          # @!attribute tax_identification_number
          #   The government-issued ID number of the person being verified — the individual
          #   for a KYC verification, or the business representative for a KYB verification —
          #   as appropriate for their country. Examples are a Social Security Number (SSN) in
          #   the US, or a Social Insurance Number in Canada.
          #
          #   @return [String, nil]
          optional :tax_identification_number, String

          # @!method initialize(business_tax_identification_number: nil, country: nil, date_of_birth: nil, first_name: nil, last_name: nil, personal_address: nil, requested_information: nil, tax_identification_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification}
          #   for more details.
          #
          #   Fields that can be updated on an individual (KYC) verification. At least one
          #   field is required.
          #
          #   @param business_tax_identification_number [String] The business ID number of the company, as appropriate for the company's country.
          #
          #   @param country [String] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          #
          #   @param date_of_birth [String] Formatted as `YYYY-MM-DD`.
          #
          #   @param first_name [String]
          #
          #   @param last_name [String]
          #
          #   @param personal_address [WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::PersonalAddress] Personal address for the individual.
          #
          #   @param requested_information [Array<WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation>] Answers to items returned in `requested_information`. Each entry must include th
          #
          #   @param tax_identification_number [String] The government-issued ID number of the person being verified — the individual fo

          # @see WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification#personal_address
          class PersonalAddress < WhopSDK::Internal::Type::BaseModel
            # @!attribute city
            #
            #   @return [String, nil]
            optional :city, String

            # @!attribute country
            #   Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
            #
            #   @return [String, nil]
            optional :country, String

            # @!attribute line1
            #   First line of the street address.
            #
            #   @return [String, nil]
            optional :line1, String

            # @!attribute line2
            #   Second line of the street address.
            #
            #   @return [String, nil]
            optional :line2, String

            # @!attribute postal_code
            #   Postal or ZIP code.
            #
            #   @return [String, nil]
            optional :postal_code, String

            # @!attribute state
            #   State, province, or region code, for example `CA`.
            #
            #   @return [String, nil]
            optional :state, String

            # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
            #   Personal address for the individual.
            #
            #   @param city [String]
            #
            #   @param country [String] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
            #
            #   @param line1 [String] First line of the street address.
            #
            #   @param line2 [String] Second line of the street address.
            #
            #   @param postal_code [String] Postal or ZIP code.
            #
            #   @param state [String] State, province, or region code, for example `CA`.
          end

          class RequestedInformation < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Requested information item ID, prefixed `inrqi_`.
            #
            #   @return [String]
            required :id, String

            # @!attribute address
            #   Address payload for `address` items.
            #
            #   @return [WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::Address, nil]
            optional :address,
                     -> { WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::Address }

            # @!attribute files
            #   Uploaded file payloads for `files` items. Each file should include a
            #   `direct_upload_id` from the upload flow, plus the requested file `category` and
            #   `kind` when provided.
            #
            #   @return [Array<WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::File>, nil]
            optional :files,
                     -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::File] }

            # @!attribute value
            #   Answer value for `text`, `date`, or `phone` items.
            #
            #   @return [String, nil]
            optional :value, String

            # @!attribute value_type
            #   Whether `value` is raw input or a vault token.
            #
            #   @return [Symbol, WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType, nil]
            optional :value_type,
                     enum: -> { WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType }

            # @!method initialize(id:, address: nil, files: nil, value: nil, value_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation}
            #   for more details.
            #
            #   @param id [String] Requested information item ID, prefixed `inrqi_`.
            #
            #   @param address [WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::Address] Address payload for `address` items.
            #
            #   @param files [Array<WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::File>] Uploaded file payloads for `files` items. Each file should include a `direct_upl
            #
            #   @param value [String] Answer value for `text`, `date`, or `phone` items.
            #
            #   @param value_type [Symbol, WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType] Whether `value` is raw input or a vault token.

            # @see WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation#address
            class Address < WhopSDK::Internal::Type::BaseModel
              # @!attribute city
              #
              #   @return [String, nil]
              optional :city, String

              # @!attribute country
              #   Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
              #
              #   @return [String, nil]
              optional :country, String

              # @!attribute line1
              #   First line of the street address.
              #
              #   @return [String, nil]
              optional :line1, String

              # @!attribute line2
              #   Second line of the street address.
              #
              #   @return [String, nil]
              optional :line2, String

              # @!attribute postal_code
              #   Postal or ZIP code.
              #
              #   @return [String, nil]
              optional :postal_code, String

              # @!attribute state
              #   State, province, or region code, for example `CA`.
              #
              #   @return [String, nil]
              optional :state, String

              # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
              #   Address payload for `address` items.
              #
              #   @param city [String]
              #
              #   @param country [String] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
              #
              #   @param line1 [String] First line of the street address.
              #
              #   @param line2 [String] Second line of the street address.
              #
              #   @param postal_code [String] Postal or ZIP code.
              #
              #   @param state [String] State, province, or region code, for example `CA`.
            end

            class File < WhopSDK::Internal::Type::BaseModel
              # @!attribute attachment_id
              #   Existing attachment ID, when reusing an already attached document.
              #
              #   @return [String, nil]
              optional :attachment_id, String

              # @!attribute category
              #   Requested file category copied from `requested_files.category`.
              #
              #   @return [String, nil]
              optional :category, String

              # @!attribute direct_upload_id
              #   Direct upload ID for the uploaded document.
              #
              #   @return [String, nil]
              optional :direct_upload_id, String

              # @!attribute kind
              #   Requested document kind copied from `requested_files.kind`.
              #
              #   @return [String, nil]
              optional :kind, String

              # @!method initialize(attachment_id: nil, category: nil, direct_upload_id: nil, kind: nil)
              #   @param attachment_id [String] Existing attachment ID, when reusing an already attached document.
              #
              #   @param category [String] Requested file category copied from `requested_files.category`.
              #
              #   @param direct_upload_id [String] Direct upload ID for the uploaded document.
              #
              #   @param kind [String] Requested document kind copied from `requested_files.kind`.
            end

            # Whether `value` is raw input or a vault token.
            #
            # @see WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation#value_type
            module ValueType
              extend WhopSDK::Internal::Type::Enum

              RAW = :raw
              VAULT_TOKEN = :vault_token

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class UpdateBusinessVerification < WhopSDK::Internal::Type::BaseModel
          # @!attribute business_address
          #   Business address.
          #
          #   @return [WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::BusinessAddress, nil]
          optional :business_address,
                   -> { WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::BusinessAddress }

          # @!attribute business_name
          #   Legal business name.
          #
          #   @return [String, nil]
          optional :business_name, String

          # @!attribute business_structure
          #   Legal entity structure of the business, such as `private_corporation` or
          #   `sole_proprietorship`. Supported values vary by country of incorporation — see
          #   [Business structures](/developer/verification/business-structures).
          #
          #   @return [String, nil]
          optional :business_structure, String

          # @!attribute business_tax_identification_number
          #   The business ID number of the company, as appropriate for the company's country.
          #   Examples are an Employer Identification Number (EIN) in the US, a Business
          #   Number in Canada, or a Company Number in the UK.
          #
          #   @return [String, nil]
          optional :business_tax_identification_number, String

          # @!attribute country
          #   Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          #
          #   @return [String, nil]
          optional :country, String

          # @!attribute requested_information
          #   Answers to items returned in `requested_information`. Each entry must include
          #   the requested item `id` and exactly one answer payload matching the item's
          #   `type`: `value` for `text`, `date`, or `phone`; `address` for `address`; `files`
          #   for `files`.
          #
          #   @return [Array<WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation>, nil]
          optional :requested_information,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation] }

          # @!attribute tax_identification_number
          #   The government-issued ID number of the person being verified — the individual
          #   for a KYC verification, or the business representative for a KYB verification —
          #   as appropriate for their country. Examples are a Social Security Number (SSN) in
          #   the US, or a Social Insurance Number in Canada.
          #
          #   @return [String, nil]
          optional :tax_identification_number, String

          # @!method initialize(business_address: nil, business_name: nil, business_structure: nil, business_tax_identification_number: nil, country: nil, requested_information: nil, tax_identification_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification}
          #   for more details.
          #
          #   Fields that can be updated on a business entity (KYB) verification. At least one
          #   field is required.
          #
          #   @param business_address [WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::BusinessAddress] Business address.
          #
          #   @param business_name [String] Legal business name.
          #
          #   @param business_structure [String] Legal entity structure of the business, such as `private_corporation` or `sole_p
          #
          #   @param business_tax_identification_number [String] The business ID number of the company, as appropriate for the company's country.
          #
          #   @param country [String] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          #
          #   @param requested_information [Array<WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation>] Answers to items returned in `requested_information`. Each entry must include th
          #
          #   @param tax_identification_number [String] The government-issued ID number of the person being verified — the individual fo

          # @see WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification#business_address
          class BusinessAddress < WhopSDK::Internal::Type::BaseModel
            # @!attribute city
            #
            #   @return [String, nil]
            optional :city, String

            # @!attribute country
            #   Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
            #
            #   @return [String, nil]
            optional :country, String

            # @!attribute line1
            #   First line of the street address.
            #
            #   @return [String, nil]
            optional :line1, String

            # @!attribute line2
            #   Second line of the street address.
            #
            #   @return [String, nil]
            optional :line2, String

            # @!attribute postal_code
            #   Postal or ZIP code.
            #
            #   @return [String, nil]
            optional :postal_code, String

            # @!attribute state
            #   State, province, or region code, for example `CA`.
            #
            #   @return [String, nil]
            optional :state, String

            # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
            #   Business address.
            #
            #   @param city [String]
            #
            #   @param country [String] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
            #
            #   @param line1 [String] First line of the street address.
            #
            #   @param line2 [String] Second line of the street address.
            #
            #   @param postal_code [String] Postal or ZIP code.
            #
            #   @param state [String] State, province, or region code, for example `CA`.
          end

          class RequestedInformation < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Requested information item ID, prefixed `inrqi_`.
            #
            #   @return [String]
            required :id, String

            # @!attribute address
            #   Address payload for `address` items.
            #
            #   @return [WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::Address, nil]
            optional :address,
                     -> { WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::Address }

            # @!attribute files
            #   Uploaded file payloads for `files` items. Each file should include a
            #   `direct_upload_id` from the upload flow, plus the requested file `category` and
            #   `kind` when provided.
            #
            #   @return [Array<WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::File>, nil]
            optional :files,
                     -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::File] }

            # @!attribute value
            #   Answer value for `text`, `date`, or `phone` items.
            #
            #   @return [String, nil]
            optional :value, String

            # @!attribute value_type
            #   Whether `value` is raw input or a vault token.
            #
            #   @return [Symbol, WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType, nil]
            optional :value_type,
                     enum: -> { WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType }

            # @!method initialize(id:, address: nil, files: nil, value: nil, value_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation}
            #   for more details.
            #
            #   @param id [String] Requested information item ID, prefixed `inrqi_`.
            #
            #   @param address [WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::Address] Address payload for `address` items.
            #
            #   @param files [Array<WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::File>] Uploaded file payloads for `files` items. Each file should include a `direct_upl
            #
            #   @param value [String] Answer value for `text`, `date`, or `phone` items.
            #
            #   @param value_type [Symbol, WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType] Whether `value` is raw input or a vault token.

            # @see WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation#address
            class Address < WhopSDK::Internal::Type::BaseModel
              # @!attribute city
              #
              #   @return [String, nil]
              optional :city, String

              # @!attribute country
              #   Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
              #
              #   @return [String, nil]
              optional :country, String

              # @!attribute line1
              #   First line of the street address.
              #
              #   @return [String, nil]
              optional :line1, String

              # @!attribute line2
              #   Second line of the street address.
              #
              #   @return [String, nil]
              optional :line2, String

              # @!attribute postal_code
              #   Postal or ZIP code.
              #
              #   @return [String, nil]
              optional :postal_code, String

              # @!attribute state
              #   State, province, or region code, for example `CA`.
              #
              #   @return [String, nil]
              optional :state, String

              # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
              #   Address payload for `address` items.
              #
              #   @param city [String]
              #
              #   @param country [String] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
              #
              #   @param line1 [String] First line of the street address.
              #
              #   @param line2 [String] Second line of the street address.
              #
              #   @param postal_code [String] Postal or ZIP code.
              #
              #   @param state [String] State, province, or region code, for example `CA`.
            end

            class File < WhopSDK::Internal::Type::BaseModel
              # @!attribute attachment_id
              #   Existing attachment ID, when reusing an already attached document.
              #
              #   @return [String, nil]
              optional :attachment_id, String

              # @!attribute category
              #   Requested file category copied from `requested_files.category`.
              #
              #   @return [String, nil]
              optional :category, String

              # @!attribute direct_upload_id
              #   Direct upload ID for the uploaded document.
              #
              #   @return [String, nil]
              optional :direct_upload_id, String

              # @!attribute kind
              #   Requested document kind copied from `requested_files.kind`.
              #
              #   @return [String, nil]
              optional :kind, String

              # @!method initialize(attachment_id: nil, category: nil, direct_upload_id: nil, kind: nil)
              #   @param attachment_id [String] Existing attachment ID, when reusing an already attached document.
              #
              #   @param category [String] Requested file category copied from `requested_files.category`.
              #
              #   @param direct_upload_id [String] Direct upload ID for the uploaded document.
              #
              #   @param kind [String] Requested document kind copied from `requested_files.kind`.
            end

            # Whether `value` is raw input or a vault token.
            #
            # @see WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation#value_type
            module ValueType
              extend WhopSDK::Internal::Type::Enum

              RAW = :raw
              VAULT_TOKEN = :vault_token

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification, WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification)]
      end
    end
  end
end
