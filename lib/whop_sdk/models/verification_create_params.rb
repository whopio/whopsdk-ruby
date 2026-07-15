# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#create
    class VerificationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Account or user ID whose identity you want to verify. Use a `biz_` account ID
      #   for account verifications, or the caller's `user_` ID for personal verification.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute body
      #   Request body for an individual (KYC) verification. Omit `kind` or set it to
      #   `individual`. KYC is required to pay out funds and is a prerequisite for Whop
      #   Card access. Accepting payments does not require verification until a business
      #   reaches $5000 in payments.
      #
      #   Add `business_name`, `business_structure`, and `country` of incorporation if the
      #   individual operates under a business entity. This enables payouts to be received
      #   by a business bank account.
      #
      #   @return [WhopSDK::Models::VerificationCreateParams::Body::Individual, WhopSDK::Models::VerificationCreateParams::Body::Business]
      required :body, union: -> { WhopSDK::VerificationCreateParams::Body }

      # @!method initialize(account_id:, body:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::VerificationCreateParams} for more details.
      #
      #   @param account_id [String] Account or user ID whose identity you want to verify. Use a `biz_` account ID fo
      #
      #   @param body [WhopSDK::Models::VerificationCreateParams::Body::Individual, WhopSDK::Models::VerificationCreateParams::Body::Business] Request body for an individual (KYC) verification. Omit `kind` or set it to `ind
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Request body for an individual (KYC) verification. Omit `kind` or set it to
      # `individual`. KYC is required to pay out funds and is a prerequisite for Whop
      # Card access. Accepting payments does not require verification until a business
      # reaches $5000 in payments.
      #
      # Add `business_name`, `business_structure`, and `country` of incorporation if the
      # individual operates under a business entity. This enables payouts to be received
      # by a business bank account.
      module Body
        extend WhopSDK::Internal::Type::Union

        discriminator :kind

        # Request body for an individual (KYC) verification. Omit `kind` or set it to `individual`. KYC is required to pay out funds and is a prerequisite for Whop Card access. Accepting payments does not require verification until a business reaches $5000 in payments.
        #
        # Add `business_name`, `business_structure`, and `country` of incorporation if the individual operates under a business entity. This enables payouts to be received by a business bank account.
        variant :individual, -> { WhopSDK::VerificationCreateParams::Body::Individual }

        # Request body for a business entity (KYB) verification. Set `kind` to `business`. KYB includes everything KYC provides and additionally unlocks financing options for payments and business Whop Cards.
        variant :business, -> { WhopSDK::VerificationCreateParams::Body::Business }

        class Individual < WhopSDK::Internal::Type::BaseModel
          # @!attribute address
          #
          #   @return [WhopSDK::Models::VerificationCreateParams::Body::Individual::Address, nil]
          optional :address, -> { WhopSDK::VerificationCreateParams::Body::Individual::Address }

          # @!attribute business_name
          #   Legal business name for a sole proprietor or single-member LLC.
          #
          #   @return [String, nil]
          optional :business_name, String

          # @!attribute business_structure
          #   Entity type for sole proprietors, such as `single_member_llc`. Supported values
          #   vary by country of incorporation — see
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

          # @!attribute business_website
          #   Business website URL. Whop store pages are not accepted.
          #
          #   @return [String, nil]
          optional :business_website, String

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

          # @!attribute document_type
          #   Identity document being sent. Providing it (with `documents`) verifies from
          #   uploaded documents instead of a hosted session, and determines the expected
          #   `documents` keys: cards and licenses need front and back, passports only the
          #   photo page.
          #
          #   @return [Symbol, WhopSDK::Models::VerificationCreateParams::Body::Individual::DocumentType, nil]
          optional :document_type, enum: -> { WhopSDK::VerificationCreateParams::Body::Individual::DocumentType }

          # @!attribute documents
          #   Identity document files, keyed by slot (`id_card_front`, `id_card_back`,
          #   `selfie`, …) with each value the file's raw bytes base64-encoded. Providing them
          #   verifies the person from these documents instead of a hosted session —
          #   individual verifications only, and the request must also carry `document_type`,
          #   `first_name`, `last_name`, `date_of_birth`, `country`, `phone`,
          #   `tax_identification_number`, and an `address` with `line1`, `city`, `state`, and
          #   `postal_code`. JPEG, PNG, and PDF are accepted (selfies must be images), up to
          #   5MB per file before encoding. Send the complete set — a missing or rejected file
          #   fails the whole request and nothing is submitted; review starts automatically
          #   once every document is accepted.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :documents, WhopSDK::Internal::Type::HashOf[String]

          # @!attribute first_name
          #
          #   @return [String, nil]
          optional :first_name, String

          # @!attribute kind
          #   Verification type. Defaults to `individual`.
          #
          #   @return [Symbol, WhopSDK::Models::VerificationCreateParams::Body::Individual::Kind, nil]
          optional :kind, enum: -> { WhopSDK::VerificationCreateParams::Body::Individual::Kind }

          # @!attribute last_name
          #
          #   @return [String, nil]
          optional :last_name, String

          # @!attribute phone
          #
          #   @return [String, nil]
          optional :phone, String

          # @!attribute tax_identification_number
          #   The government-issued ID number of the person being verified — the individual
          #   for a KYC verification, or the business representative for a KYB verification —
          #   as appropriate for their country. Examples are a Social Security Number (SSN) in
          #   the US, or a Social Insurance Number in Canada.
          #
          #   @return [String, nil]
          optional :tax_identification_number, String

          # @!method initialize(address: nil, business_name: nil, business_structure: nil, business_tax_identification_number: nil, business_website: nil, country: nil, date_of_birth: nil, document_type: nil, documents: nil, first_name: nil, kind: nil, last_name: nil, phone: nil, tax_identification_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::VerificationCreateParams::Body::Individual} for more details.
          #
          #   Request body for an individual (KYC) verification. Omit `kind` or set it to
          #   `individual`. KYC is required to pay out funds and is a prerequisite for Whop
          #   Card access. Accepting payments does not require verification until a business
          #   reaches $5000 in payments.
          #
          #   Add `business_name`, `business_structure`, and `country` of incorporation if the
          #   individual operates under a business entity. This enables payouts to be received
          #   by a business bank account.
          #
          #   @param address [WhopSDK::Models::VerificationCreateParams::Body::Individual::Address]
          #
          #   @param business_name [String] Legal business name for a sole proprietor or single-member LLC.
          #
          #   @param business_structure [String] Entity type for sole proprietors, such as `single_member_llc`. Supported values
          #
          #   @param business_tax_identification_number [String] The business ID number of the company, as appropriate for the company's country.
          #
          #   @param business_website [String] Business website URL. Whop store pages are not accepted.
          #
          #   @param country [String] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          #
          #   @param date_of_birth [String] Formatted as `YYYY-MM-DD`.
          #
          #   @param document_type [Symbol, WhopSDK::Models::VerificationCreateParams::Body::Individual::DocumentType] Identity document being sent. Providing it (with `documents`) verifies from uplo
          #
          #   @param documents [Hash{Symbol=>String}] Identity document files, keyed by slot (`id_card_front`, `id_card_back`, `selfie
          #
          #   @param first_name [String]
          #
          #   @param kind [Symbol, WhopSDK::Models::VerificationCreateParams::Body::Individual::Kind] Verification type. Defaults to `individual`.
          #
          #   @param last_name [String]
          #
          #   @param phone [String]
          #
          #   @param tax_identification_number [String] The government-issued ID number of the person being verified — the individual fo

          # @see WhopSDK::Models::VerificationCreateParams::Body::Individual#address
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

          # Identity document being sent. Providing it (with `documents`) verifies from
          # uploaded documents instead of a hosted session, and determines the expected
          # `documents` keys: cards and licenses need front and back, passports only the
          # photo page.
          #
          # @see WhopSDK::Models::VerificationCreateParams::Body::Individual#document_type
          module DocumentType
            extend WhopSDK::Internal::Type::Enum

            ID_CARD = :ID_CARD
            PASSPORT = :PASSPORT
            DRIVERS = :DRIVERS
            RESIDENCE_PERMIT = :RESIDENCE_PERMIT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Verification type. Defaults to `individual`.
          #
          # @see WhopSDK::Models::VerificationCreateParams::Body::Individual#kind
          module Kind
            extend WhopSDK::Internal::Type::Enum

            INDIVIDUAL = :individual

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Business < WhopSDK::Internal::Type::BaseModel
          # @!attribute address
          #
          #   @return [WhopSDK::Models::VerificationCreateParams::Body::Business::Address, nil]
          optional :address, -> { WhopSDK::VerificationCreateParams::Body::Business::Address }

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

          # @!attribute business_website
          #   Business website URL. Whop store pages are not accepted.
          #
          #   @return [String, nil]
          optional :business_website, String

          # @!attribute country
          #   Country of incorporation as a two-letter ISO 3166-1 country code.
          #
          #   @return [String, nil]
          optional :country, String

          # @!attribute kind
          #   Must be `business` to start a KYB verification.
          #
          #   @return [Symbol, WhopSDK::Models::VerificationCreateParams::Body::Business::Kind, nil]
          optional :kind, enum: -> { WhopSDK::VerificationCreateParams::Body::Business::Kind }

          # @!attribute place_of_incorporation
          #   State or region where the business is incorporated.
          #
          #   @return [String, nil]
          optional :place_of_incorporation, String

          # @!attribute tax_identification_number
          #   The government-issued ID number of the person being verified — the individual
          #   for a KYC verification, or the business representative for a KYB verification —
          #   as appropriate for their country. Examples are a Social Security Number (SSN) in
          #   the US, or a Social Insurance Number in Canada.
          #
          #   @return [String, nil]
          optional :tax_identification_number, String

          # @!method initialize(address: nil, business_name: nil, business_structure: nil, business_tax_identification_number: nil, business_website: nil, country: nil, kind: nil, place_of_incorporation: nil, tax_identification_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::VerificationCreateParams::Body::Business} for more details.
          #
          #   Request body for a business entity (KYB) verification. Set `kind` to `business`.
          #   KYB includes everything KYC provides and additionally unlocks financing options
          #   for payments and business Whop Cards.
          #
          #   @param address [WhopSDK::Models::VerificationCreateParams::Body::Business::Address]
          #
          #   @param business_name [String] Legal business name.
          #
          #   @param business_structure [String] Legal entity structure of the business, such as `private_corporation` or `sole_p
          #
          #   @param business_tax_identification_number [String] The business ID number of the company, as appropriate for the company's country.
          #
          #   @param business_website [String] Business website URL. Whop store pages are not accepted.
          #
          #   @param country [String] Country of incorporation as a two-letter ISO 3166-1 country code.
          #
          #   @param kind [Symbol, WhopSDK::Models::VerificationCreateParams::Body::Business::Kind] Must be `business` to start a KYB verification.
          #
          #   @param place_of_incorporation [String] State or region where the business is incorporated.
          #
          #   @param tax_identification_number [String] The government-issued ID number of the person being verified — the individual fo

          # @see WhopSDK::Models::VerificationCreateParams::Body::Business#address
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

          # Must be `business` to start a KYB verification.
          #
          # @see WhopSDK::Models::VerificationCreateParams::Body::Business#kind
          module Kind
            extend WhopSDK::Internal::Type::Enum

            BUSINESS = :business

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::VerificationCreateParams::Body::Individual, WhopSDK::Models::VerificationCreateParams::Body::Business)]
      end
    end
  end
end
