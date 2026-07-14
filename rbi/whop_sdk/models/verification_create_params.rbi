# typed: strong

module WhopSDK
  module Models
    class VerificationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::VerificationCreateParams, WhopSDK::Internal::AnyHash)
        end

      # Account or user ID whose identity you want to verify. Use a `biz_` account ID
      # for account verifications, or the caller's `user_` ID for personal verification.
      sig { returns(String) }
      attr_accessor :account_id

      # Request body for an individual (KYC) verification. Omit `kind` or set it to
      # `individual`. KYC is required to pay out funds and is a prerequisite for Whop
      # Card access. Accepting payments does not require verification until a business
      # reaches $5000 in payments.
      #
      # Add `business_name`, `business_structure`, and `country` of incorporation if the
      # individual operates under a business entity. This enables payouts to be received
      # by a business bank account.
      sig do
        returns(
          T.any(
            WhopSDK::VerificationCreateParams::Body::Individual,
            WhopSDK::VerificationCreateParams::Body::Business
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          account_id: String,
          body:
            T.any(
              WhopSDK::VerificationCreateParams::Body::Individual::OrHash,
              WhopSDK::VerificationCreateParams::Body::Business::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account or user ID whose identity you want to verify. Use a `biz_` account ID
        # for account verifications, or the caller's `user_` ID for personal verification.
        account_id:,
        # Request body for an individual (KYC) verification. Omit `kind` or set it to
        # `individual`. KYC is required to pay out funds and is a prerequisite for Whop
        # Card access. Accepting payments does not require verification until a business
        # reaches $5000 in payments.
        #
        # Add `business_name`, `business_structure`, and `country` of incorporation if the
        # individual operates under a business entity. This enables payouts to be received
        # by a business bank account.
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            body:
              T.any(
                WhopSDK::VerificationCreateParams::Body::Individual,
                WhopSDK::VerificationCreateParams::Body::Business
              ),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

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

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::VerificationCreateParams::Body::Individual,
              WhopSDK::VerificationCreateParams::Body::Business
            )
          end

        class Individual < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::VerificationCreateParams::Body::Individual,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                WhopSDK::VerificationCreateParams::Body::Individual::Address
              )
            )
          end
          attr_reader :address

          sig do
            params(
              address:
                WhopSDK::VerificationCreateParams::Body::Individual::Address::OrHash
            ).void
          end
          attr_writer :address

          # Legal business name for a sole proprietor or single-member LLC.
          sig { returns(T.nilable(String)) }
          attr_reader :business_name

          sig { params(business_name: String).void }
          attr_writer :business_name

          # Entity type for sole proprietors, such as `single_member_llc`. Supported values
          # vary by country of incorporation — see
          # [Business structures](/developer/verification/business-structures).
          sig { returns(T.nilable(String)) }
          attr_reader :business_structure

          sig { params(business_structure: String).void }
          attr_writer :business_structure

          # Business website URL. Whop store pages are not accepted.
          sig { returns(T.nilable(String)) }
          attr_reader :business_website

          sig { params(business_website: String).void }
          attr_writer :business_website

          # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          # Formatted as `YYYY-MM-DD`.
          sig { returns(T.nilable(String)) }
          attr_reader :date_of_birth

          sig { params(date_of_birth: String).void }
          attr_writer :date_of_birth

          # Identity document being sent. Providing it (with `documents`) verifies from
          # uploaded documents instead of a hosted session, and determines the expected
          # `documents` keys: cards and licenses need front and back, passports only the
          # photo page.
          sig do
            returns(
              T.nilable(
                WhopSDK::VerificationCreateParams::Body::Individual::DocumentType::OrSymbol
              )
            )
          end
          attr_reader :document_type

          sig do
            params(
              document_type:
                WhopSDK::VerificationCreateParams::Body::Individual::DocumentType::OrSymbol
            ).void
          end
          attr_writer :document_type

          # Identity document files, keyed by slot (`id_card_front`, `id_card_back`,
          # `selfie`, …) with each value the file's raw bytes base64-encoded. Providing them
          # verifies the person from these documents instead of a hosted session —
          # individual verifications only, and the request must also carry `document_type`,
          # `first_name`, `last_name`, `date_of_birth`, `country`, `phone`,
          # `tax_identification_number`, and an `address` with `line1`, `city`, `state`, and
          # `postal_code`. JPEG, PNG, and PDF are accepted (selfies must be images), up to
          # 5MB per file before encoding. Send the complete set — a missing or rejected file
          # fails the whole request and nothing is submitted; review starts automatically
          # once every document is accepted.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :documents

          sig { params(documents: T::Hash[Symbol, String]).void }
          attr_writer :documents

          sig { returns(T.nilable(String)) }
          attr_reader :first_name

          sig { params(first_name: String).void }
          attr_writer :first_name

          # Verification type. Defaults to `individual`.
          sig do
            returns(
              T.nilable(
                WhopSDK::VerificationCreateParams::Body::Individual::Kind::OrSymbol
              )
            )
          end
          attr_reader :kind

          sig do
            params(
              kind:
                WhopSDK::VerificationCreateParams::Body::Individual::Kind::OrSymbol
            ).void
          end
          attr_writer :kind

          sig { returns(T.nilable(String)) }
          attr_reader :last_name

          sig { params(last_name: String).void }
          attr_writer :last_name

          sig { returns(T.nilable(String)) }
          attr_reader :phone

          sig { params(phone: String).void }
          attr_writer :phone

          # SSN or ITIN. Tokenized in transit and never stored raw.
          sig { returns(T.nilable(String)) }
          attr_reader :tax_identification_number

          sig { params(tax_identification_number: String).void }
          attr_writer :tax_identification_number

          # Request body for an individual (KYC) verification. Omit `kind` or set it to
          # `individual`. KYC is required to pay out funds and is a prerequisite for Whop
          # Card access. Accepting payments does not require verification until a business
          # reaches $5000 in payments.
          #
          # Add `business_name`, `business_structure`, and `country` of incorporation if the
          # individual operates under a business entity. This enables payouts to be received
          # by a business bank account.
          sig do
            params(
              address:
                WhopSDK::VerificationCreateParams::Body::Individual::Address::OrHash,
              business_name: String,
              business_structure: String,
              business_website: String,
              country: String,
              date_of_birth: String,
              document_type:
                WhopSDK::VerificationCreateParams::Body::Individual::DocumentType::OrSymbol,
              documents: T::Hash[Symbol, String],
              first_name: String,
              kind:
                WhopSDK::VerificationCreateParams::Body::Individual::Kind::OrSymbol,
              last_name: String,
              phone: String,
              tax_identification_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            address: nil,
            # Legal business name for a sole proprietor or single-member LLC.
            business_name: nil,
            # Entity type for sole proprietors, such as `single_member_llc`. Supported values
            # vary by country of incorporation — see
            # [Business structures](/developer/verification/business-structures).
            business_structure: nil,
            # Business website URL. Whop store pages are not accepted.
            business_website: nil,
            # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
            country: nil,
            # Formatted as `YYYY-MM-DD`.
            date_of_birth: nil,
            # Identity document being sent. Providing it (with `documents`) verifies from
            # uploaded documents instead of a hosted session, and determines the expected
            # `documents` keys: cards and licenses need front and back, passports only the
            # photo page.
            document_type: nil,
            # Identity document files, keyed by slot (`id_card_front`, `id_card_back`,
            # `selfie`, …) with each value the file's raw bytes base64-encoded. Providing them
            # verifies the person from these documents instead of a hosted session —
            # individual verifications only, and the request must also carry `document_type`,
            # `first_name`, `last_name`, `date_of_birth`, `country`, `phone`,
            # `tax_identification_number`, and an `address` with `line1`, `city`, `state`, and
            # `postal_code`. JPEG, PNG, and PDF are accepted (selfies must be images), up to
            # 5MB per file before encoding. Send the complete set — a missing or rejected file
            # fails the whole request and nothing is submitted; review starts automatically
            # once every document is accepted.
            documents: nil,
            first_name: nil,
            # Verification type. Defaults to `individual`.
            kind: nil,
            last_name: nil,
            phone: nil,
            # SSN or ITIN. Tokenized in transit and never stored raw.
            tax_identification_number: nil
          )
          end

          sig do
            override.returns(
              {
                address:
                  WhopSDK::VerificationCreateParams::Body::Individual::Address,
                business_name: String,
                business_structure: String,
                business_website: String,
                country: String,
                date_of_birth: String,
                document_type:
                  WhopSDK::VerificationCreateParams::Body::Individual::DocumentType::OrSymbol,
                documents: T::Hash[Symbol, String],
                first_name: String,
                kind:
                  WhopSDK::VerificationCreateParams::Body::Individual::Kind::OrSymbol,
                last_name: String,
                phone: String,
                tax_identification_number: String
              }
            )
          end
          def to_hash
          end

          class Address < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::VerificationCreateParams::Body::Individual::Address,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :city

            sig { params(city: String).void }
            attr_writer :city

            # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
            sig { returns(T.nilable(String)) }
            attr_reader :country

            sig { params(country: String).void }
            attr_writer :country

            # First line of the street address.
            sig { returns(T.nilable(String)) }
            attr_reader :line1

            sig { params(line1: String).void }
            attr_writer :line1

            # Second line of the street address.
            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            # Postal or ZIP code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code

            sig { params(postal_code: String).void }
            attr_writer :postal_code

            # State, province, or region code, for example `CA`.
            sig { returns(T.nilable(String)) }
            attr_reader :state

            sig { params(state: String).void }
            attr_writer :state

            sig do
              params(
                city: String,
                country: String,
                line1: String,
                line2: String,
                postal_code: String,
                state: String
              ).returns(T.attached_class)
            end
            def self.new(
              city: nil,
              # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
              country: nil,
              # First line of the street address.
              line1: nil,
              # Second line of the street address.
              line2: nil,
              # Postal or ZIP code.
              postal_code: nil,
              # State, province, or region code, for example `CA`.
              state: nil
            )
            end

            sig do
              override.returns(
                {
                  city: String,
                  country: String,
                  line1: String,
                  line2: String,
                  postal_code: String,
                  state: String
                }
              )
            end
            def to_hash
            end
          end

          # Identity document being sent. Providing it (with `documents`) verifies from
          # uploaded documents instead of a hosted session, and determines the expected
          # `documents` keys: cards and licenses need front and back, passports only the
          # photo page.
          module DocumentType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::VerificationCreateParams::Body::Individual::DocumentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ID_CARD =
              T.let(
                :ID_CARD,
                WhopSDK::VerificationCreateParams::Body::Individual::DocumentType::TaggedSymbol
              )
            PASSPORT =
              T.let(
                :PASSPORT,
                WhopSDK::VerificationCreateParams::Body::Individual::DocumentType::TaggedSymbol
              )
            DRIVERS =
              T.let(
                :DRIVERS,
                WhopSDK::VerificationCreateParams::Body::Individual::DocumentType::TaggedSymbol
              )
            RESIDENCE_PERMIT =
              T.let(
                :RESIDENCE_PERMIT,
                WhopSDK::VerificationCreateParams::Body::Individual::DocumentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::VerificationCreateParams::Body::Individual::DocumentType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Verification type. Defaults to `individual`.
          module Kind
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::VerificationCreateParams::Body::Individual::Kind
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :individual,
                WhopSDK::VerificationCreateParams::Body::Individual::Kind::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::VerificationCreateParams::Body::Individual::Kind::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Business < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::VerificationCreateParams::Body::Business,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                WhopSDK::VerificationCreateParams::Body::Business::Address
              )
            )
          end
          attr_reader :address

          sig do
            params(
              address:
                WhopSDK::VerificationCreateParams::Body::Business::Address::OrHash
            ).void
          end
          attr_writer :address

          # Legal business name.
          sig { returns(T.nilable(String)) }
          attr_reader :business_name

          sig { params(business_name: String).void }
          attr_writer :business_name

          # Legal entity structure of the business, such as `private_corporation` or
          # `sole_proprietorship`. Supported values vary by country of incorporation — see
          # [Business structures](/developer/verification/business-structures).
          sig { returns(T.nilable(String)) }
          attr_reader :business_structure

          sig { params(business_structure: String).void }
          attr_writer :business_structure

          # Business website URL. Whop store pages are not accepted.
          sig { returns(T.nilable(String)) }
          attr_reader :business_website

          sig { params(business_website: String).void }
          attr_writer :business_website

          # Country of incorporation as a two-letter ISO 3166-1 country code.
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          # Must be `business` to start a KYB verification.
          sig do
            returns(
              T.nilable(
                WhopSDK::VerificationCreateParams::Body::Business::Kind::OrSymbol
              )
            )
          end
          attr_reader :kind

          sig do
            params(
              kind:
                WhopSDK::VerificationCreateParams::Body::Business::Kind::OrSymbol
            ).void
          end
          attr_writer :kind

          # State or region where the business is incorporated.
          sig { returns(T.nilable(String)) }
          attr_reader :place_of_incorporation

          sig { params(place_of_incorporation: String).void }
          attr_writer :place_of_incorporation

          # EIN. Tokenized in transit and never stored raw.
          sig { returns(T.nilable(String)) }
          attr_reader :tax_identification_number

          sig { params(tax_identification_number: String).void }
          attr_writer :tax_identification_number

          # Request body for a business entity (KYB) verification. Set `kind` to `business`.
          # KYB includes everything KYC provides and additionally unlocks financing options
          # for payments and business Whop Cards.
          sig do
            params(
              address:
                WhopSDK::VerificationCreateParams::Body::Business::Address::OrHash,
              business_name: String,
              business_structure: String,
              business_website: String,
              country: String,
              kind:
                WhopSDK::VerificationCreateParams::Body::Business::Kind::OrSymbol,
              place_of_incorporation: String,
              tax_identification_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            address: nil,
            # Legal business name.
            business_name: nil,
            # Legal entity structure of the business, such as `private_corporation` or
            # `sole_proprietorship`. Supported values vary by country of incorporation — see
            # [Business structures](/developer/verification/business-structures).
            business_structure: nil,
            # Business website URL. Whop store pages are not accepted.
            business_website: nil,
            # Country of incorporation as a two-letter ISO 3166-1 country code.
            country: nil,
            # Must be `business` to start a KYB verification.
            kind: nil,
            # State or region where the business is incorporated.
            place_of_incorporation: nil,
            # EIN. Tokenized in transit and never stored raw.
            tax_identification_number: nil
          )
          end

          sig do
            override.returns(
              {
                address:
                  WhopSDK::VerificationCreateParams::Body::Business::Address,
                business_name: String,
                business_structure: String,
                business_website: String,
                country: String,
                kind:
                  WhopSDK::VerificationCreateParams::Body::Business::Kind::OrSymbol,
                place_of_incorporation: String,
                tax_identification_number: String
              }
            )
          end
          def to_hash
          end

          class Address < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::VerificationCreateParams::Body::Business::Address,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :city

            sig { params(city: String).void }
            attr_writer :city

            # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
            sig { returns(T.nilable(String)) }
            attr_reader :country

            sig { params(country: String).void }
            attr_writer :country

            # First line of the street address.
            sig { returns(T.nilable(String)) }
            attr_reader :line1

            sig { params(line1: String).void }
            attr_writer :line1

            # Second line of the street address.
            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            # Postal or ZIP code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code

            sig { params(postal_code: String).void }
            attr_writer :postal_code

            # State, province, or region code, for example `CA`.
            sig { returns(T.nilable(String)) }
            attr_reader :state

            sig { params(state: String).void }
            attr_writer :state

            sig do
              params(
                city: String,
                country: String,
                line1: String,
                line2: String,
                postal_code: String,
                state: String
              ).returns(T.attached_class)
            end
            def self.new(
              city: nil,
              # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
              country: nil,
              # First line of the street address.
              line1: nil,
              # Second line of the street address.
              line2: nil,
              # Postal or ZIP code.
              postal_code: nil,
              # State, province, or region code, for example `CA`.
              state: nil
            )
            end

            sig do
              override.returns(
                {
                  city: String,
                  country: String,
                  line1: String,
                  line2: String,
                  postal_code: String,
                  state: String
                }
              )
            end
            def to_hash
            end
          end

          # Must be `business` to start a KYB verification.
          module Kind
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::VerificationCreateParams::Body::Business::Kind
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUSINESS =
              T.let(
                :business,
                WhopSDK::VerificationCreateParams::Body::Business::Kind::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::VerificationCreateParams::Body::Business::Kind::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[WhopSDK::VerificationCreateParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
