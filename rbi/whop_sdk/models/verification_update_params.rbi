# typed: strong

module WhopSDK
  module Models
    class VerificationUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::VerificationUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :verification_id

      # Fields that can be updated on an individual (KYC) verification. At least one
      # field is required.
      sig do
        returns(
          T.any(
            WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification,
            WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          verification_id: String,
          body:
            T.any(
              WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::OrHash,
              WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        verification_id:,
        # Fields that can be updated on an individual (KYC) verification. At least one
        # field is required.
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            verification_id: String,
            body:
              T.any(
                WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification,
                WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification
              ),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Fields that can be updated on an individual (KYC) verification. At least one
      # field is required.
      module Body
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification,
              WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification
            )
          end

        class UpdateIndividualVerification < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification,
                WhopSDK::Internal::AnyHash
              )
            end

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

          sig { returns(T.nilable(String)) }
          attr_reader :first_name

          sig { params(first_name: String).void }
          attr_writer :first_name

          sig { returns(T.nilable(String)) }
          attr_reader :last_name

          sig { params(last_name: String).void }
          attr_writer :last_name

          # Personal address for the individual.
          sig do
            returns(
              T.nilable(
                WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::PersonalAddress
              )
            )
          end
          attr_reader :personal_address

          sig do
            params(
              personal_address:
                WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::PersonalAddress::OrHash
            ).void
          end
          attr_writer :personal_address

          # Answers to items returned in `requested_information`. Each entry must include
          # the requested item `id` and exactly one answer payload matching the item's
          # `type`: `value` for `text`, `date`, or `phone`; `address` for `address`; `files`
          # for `files`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation
                ]
              )
            )
          end
          attr_reader :requested_information

          sig do
            params(
              requested_information:
                T::Array[
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::OrHash
                ]
            ).void
          end
          attr_writer :requested_information

          # Fields that can be updated on an individual (KYC) verification. At least one
          # field is required.
          sig do
            params(
              country: String,
              date_of_birth: String,
              first_name: String,
              last_name: String,
              personal_address:
                WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::PersonalAddress::OrHash,
              requested_information:
                T::Array[
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
            country: nil,
            # Formatted as `YYYY-MM-DD`.
            date_of_birth: nil,
            first_name: nil,
            last_name: nil,
            # Personal address for the individual.
            personal_address: nil,
            # Answers to items returned in `requested_information`. Each entry must include
            # the requested item `id` and exactly one answer payload matching the item's
            # `type`: `value` for `text`, `date`, or `phone`; `address` for `address`; `files`
            # for `files`.
            requested_information: nil
          )
          end

          sig do
            override.returns(
              {
                country: String,
                date_of_birth: String,
                first_name: String,
                last_name: String,
                personal_address:
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::PersonalAddress,
                requested_information:
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation
                  ]
              }
            )
          end
          def to_hash
          end

          class PersonalAddress < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::PersonalAddress,
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

            # Personal address for the individual.
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

          class RequestedInformation < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Requested information item ID, prefixed `inrqi_`.
            sig { returns(String) }
            attr_accessor :id

            # Address payload for `address` items.
            sig do
              returns(
                T.nilable(
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::Address
                )
              )
            end
            attr_reader :address

            sig do
              params(
                address:
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::Address::OrHash
              ).void
            end
            attr_writer :address

            # Uploaded file payloads for `files` items. Each file should include a
            # `direct_upload_id` from the upload flow, plus the requested file `category` and
            # `kind` when provided.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::File
                  ]
                )
              )
            end
            attr_reader :files

            sig do
              params(
                files:
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::File::OrHash
                  ]
              ).void
            end
            attr_writer :files

            # Answer value for `text`, `date`, or `phone` items.
            sig { returns(T.nilable(String)) }
            attr_reader :value

            sig { params(value: String).void }
            attr_writer :value

            # Whether `value` is raw input or a vault token.
            sig do
              returns(
                T.nilable(
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType::OrSymbol
                )
              )
            end
            attr_reader :value_type

            sig do
              params(
                value_type:
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType::OrSymbol
              ).void
            end
            attr_writer :value_type

            sig do
              params(
                id: String,
                address:
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::Address::OrHash,
                files:
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::File::OrHash
                  ],
                value: String,
                value_type:
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Requested information item ID, prefixed `inrqi_`.
              id:,
              # Address payload for `address` items.
              address: nil,
              # Uploaded file payloads for `files` items. Each file should include a
              # `direct_upload_id` from the upload flow, plus the requested file `category` and
              # `kind` when provided.
              files: nil,
              # Answer value for `text`, `date`, or `phone` items.
              value: nil,
              # Whether `value` is raw input or a vault token.
              value_type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  address:
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::Address,
                  files:
                    T::Array[
                      WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::File
                    ],
                  value: String,
                  value_type:
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType::OrSymbol
                }
              )
            end
            def to_hash
            end

            class Address < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::Address,
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

              # Address payload for `address` items.
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

            class File < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::File,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Existing attachment ID, when reusing an already attached document.
              sig { returns(T.nilable(String)) }
              attr_reader :attachment_id

              sig { params(attachment_id: String).void }
              attr_writer :attachment_id

              # Requested file category copied from `requested_files.category`.
              sig { returns(T.nilable(String)) }
              attr_reader :category

              sig { params(category: String).void }
              attr_writer :category

              # Direct upload ID for the uploaded document.
              sig { returns(T.nilable(String)) }
              attr_reader :direct_upload_id

              sig { params(direct_upload_id: String).void }
              attr_writer :direct_upload_id

              # Requested document kind copied from `requested_files.kind`.
              sig { returns(T.nilable(String)) }
              attr_reader :kind

              sig { params(kind: String).void }
              attr_writer :kind

              sig do
                params(
                  attachment_id: String,
                  category: String,
                  direct_upload_id: String,
                  kind: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Existing attachment ID, when reusing an already attached document.
                attachment_id: nil,
                # Requested file category copied from `requested_files.category`.
                category: nil,
                # Direct upload ID for the uploaded document.
                direct_upload_id: nil,
                # Requested document kind copied from `requested_files.kind`.
                kind: nil
              )
              end

              sig do
                override.returns(
                  {
                    attachment_id: String,
                    category: String,
                    direct_upload_id: String,
                    kind: String
                  }
                )
              end
              def to_hash
              end
            end

            # Whether `value` is raw input or a vault token.
            module ValueType
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              RAW =
                T.let(
                  :raw,
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType::TaggedSymbol
                )
              VAULT_TOKEN =
                T.let(
                  :vault_token,
                  WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::RequestedInformation::ValueType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class UpdateBusinessVerification < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification,
                WhopSDK::Internal::AnyHash
              )
            end

          # Business address.
          sig do
            returns(
              T.nilable(
                WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::BusinessAddress
              )
            )
          end
          attr_reader :business_address

          sig do
            params(
              business_address:
                WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::BusinessAddress::OrHash
            ).void
          end
          attr_writer :business_address

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

          # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          # Answers to items returned in `requested_information`. Each entry must include
          # the requested item `id` and exactly one answer payload matching the item's
          # `type`: `value` for `text`, `date`, or `phone`; `address` for `address`; `files`
          # for `files`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation
                ]
              )
            )
          end
          attr_reader :requested_information

          sig do
            params(
              requested_information:
                T::Array[
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::OrHash
                ]
            ).void
          end
          attr_writer :requested_information

          # Fields that can be updated on a business entity (KYB) verification. At least one
          # field is required.
          sig do
            params(
              business_address:
                WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::BusinessAddress::OrHash,
              business_name: String,
              business_structure: String,
              country: String,
              requested_information:
                T::Array[
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Business address.
            business_address: nil,
            # Legal business name.
            business_name: nil,
            # Legal entity structure of the business, such as `private_corporation` or
            # `sole_proprietorship`. Supported values vary by country of incorporation — see
            # [Business structures](/developer/verification/business-structures).
            business_structure: nil,
            # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
            country: nil,
            # Answers to items returned in `requested_information`. Each entry must include
            # the requested item `id` and exactly one answer payload matching the item's
            # `type`: `value` for `text`, `date`, or `phone`; `address` for `address`; `files`
            # for `files`.
            requested_information: nil
          )
          end

          sig do
            override.returns(
              {
                business_address:
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::BusinessAddress,
                business_name: String,
                business_structure: String,
                country: String,
                requested_information:
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation
                  ]
              }
            )
          end
          def to_hash
          end

          class BusinessAddress < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::BusinessAddress,
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

            # Business address.
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

          class RequestedInformation < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Requested information item ID, prefixed `inrqi_`.
            sig { returns(String) }
            attr_accessor :id

            # Address payload for `address` items.
            sig do
              returns(
                T.nilable(
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::Address
                )
              )
            end
            attr_reader :address

            sig do
              params(
                address:
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::Address::OrHash
              ).void
            end
            attr_writer :address

            # Uploaded file payloads for `files` items. Each file should include a
            # `direct_upload_id` from the upload flow, plus the requested file `category` and
            # `kind` when provided.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::File
                  ]
                )
              )
            end
            attr_reader :files

            sig do
              params(
                files:
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::File::OrHash
                  ]
              ).void
            end
            attr_writer :files

            # Answer value for `text`, `date`, or `phone` items.
            sig { returns(T.nilable(String)) }
            attr_reader :value

            sig { params(value: String).void }
            attr_writer :value

            # Whether `value` is raw input or a vault token.
            sig do
              returns(
                T.nilable(
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType::OrSymbol
                )
              )
            end
            attr_reader :value_type

            sig do
              params(
                value_type:
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType::OrSymbol
              ).void
            end
            attr_writer :value_type

            sig do
              params(
                id: String,
                address:
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::Address::OrHash,
                files:
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::File::OrHash
                  ],
                value: String,
                value_type:
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Requested information item ID, prefixed `inrqi_`.
              id:,
              # Address payload for `address` items.
              address: nil,
              # Uploaded file payloads for `files` items. Each file should include a
              # `direct_upload_id` from the upload flow, plus the requested file `category` and
              # `kind` when provided.
              files: nil,
              # Answer value for `text`, `date`, or `phone` items.
              value: nil,
              # Whether `value` is raw input or a vault token.
              value_type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  address:
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::Address,
                  files:
                    T::Array[
                      WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::File
                    ],
                  value: String,
                  value_type:
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType::OrSymbol
                }
              )
            end
            def to_hash
            end

            class Address < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::Address,
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

              # Address payload for `address` items.
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

            class File < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::File,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Existing attachment ID, when reusing an already attached document.
              sig { returns(T.nilable(String)) }
              attr_reader :attachment_id

              sig { params(attachment_id: String).void }
              attr_writer :attachment_id

              # Requested file category copied from `requested_files.category`.
              sig { returns(T.nilable(String)) }
              attr_reader :category

              sig { params(category: String).void }
              attr_writer :category

              # Direct upload ID for the uploaded document.
              sig { returns(T.nilable(String)) }
              attr_reader :direct_upload_id

              sig { params(direct_upload_id: String).void }
              attr_writer :direct_upload_id

              # Requested document kind copied from `requested_files.kind`.
              sig { returns(T.nilable(String)) }
              attr_reader :kind

              sig { params(kind: String).void }
              attr_writer :kind

              sig do
                params(
                  attachment_id: String,
                  category: String,
                  direct_upload_id: String,
                  kind: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Existing attachment ID, when reusing an already attached document.
                attachment_id: nil,
                # Requested file category copied from `requested_files.category`.
                category: nil,
                # Direct upload ID for the uploaded document.
                direct_upload_id: nil,
                # Requested document kind copied from `requested_files.kind`.
                kind: nil
              )
              end

              sig do
                override.returns(
                  {
                    attachment_id: String,
                    category: String,
                    direct_upload_id: String,
                    kind: String
                  }
                )
              end
              def to_hash
              end
            end

            # Whether `value` is raw input or a vault token.
            module ValueType
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              RAW =
                T.let(
                  :raw,
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType::TaggedSymbol
                )
              VAULT_TOKEN =
                T.let(
                  :vault_token,
                  WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::RequestedInformation::ValueType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        sig do
          override.returns(
            T::Array[WhopSDK::VerificationUpdateParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
