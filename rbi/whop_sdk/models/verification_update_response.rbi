# typed: strong

module WhopSDK
  module Models
    class VerificationUpdateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::VerificationUpdateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Verification profile ID, prefixed `idpf_`.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Address on the verification profile. `null` when no address is set.
      sig do
        returns(T.nilable(WhopSDK::Models::VerificationUpdateResponse::Address))
      end
      attr_reader :address

      sig do
        params(
          address:
            T.nilable(
              WhopSDK::Models::VerificationUpdateResponse::Address::OrHash
            )
        ).void
      end
      attr_writer :address

      # Legal business name.
      sig { returns(T.nilable(String)) }
      attr_accessor :business_name

      # Legal entity structure of the business, such as `private_corporation` or
      # `sole_proprietorship`. Supported values vary by country of incorporation — see
      # [Business structures](/developer/verification/business-structures).
      sig { returns(T.nilable(String)) }
      attr_accessor :business_structure

      # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # When the verification profile was created, as an ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Formatted as `YYYY-MM-DD`.
      sig { returns(T.nilable(String)) }
      attr_accessor :date_of_birth

      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      sig do
        returns(
          T.nilable(
            WhopSDK::Models::VerificationUpdateResponse::Kind::TaggedSymbol
          )
        )
      end
      attr_reader :kind

      sig do
        params(
          kind: WhopSDK::Models::VerificationUpdateResponse::Kind::OrSymbol
        ).void
      end
      attr_writer :kind

      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # Fields or documents Whop still needs before review can continue. Submit answers
      # with the Update Verification endpoint.
      sig do
        returns(
          T.nilable(
            T::Array[
              WhopSDK::Models::VerificationUpdateResponse::RequestedInformation
            ]
          )
        )
      end
      attr_reader :requested_information

      sig do
        params(
          requested_information:
            T::Array[
              WhopSDK::Models::VerificationUpdateResponse::RequestedInformation::OrHash
            ]
        ).void
      end
      attr_writer :requested_information

      # Documents for a document-upload verification and their progress. Present only on
      # verifications created by sending `documents`. `pending_upload` documents were
      # not accepted yet — send the full set again with another Create Verification
      # call.
      sig do
        returns(
          T.nilable(
            T::Array[
              WhopSDK::Models::VerificationUpdateResponse::RequiredDocument
            ]
          )
        )
      end
      attr_reader :required_documents

      sig do
        params(
          required_documents:
            T::Array[
              WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::OrHash
            ]
        ).void
      end
      attr_writer :required_documents

      # Hosted verification session URL for the user to complete identity checks.
      # Expires 7 days after creation.
      sig { returns(T.nilable(String)) }
      attr_accessor :session_url

      # Current verification state. `not_started` before any session has been created;
      # `pending` while a session is in progress; `action_required` when items in
      # `requested_information` need answers before review can continue; `approved` once
      # verification succeeds; `rejected` if it fails. Call the Create Verification
      # endpoint again to start a new session.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::VerificationUpdateResponse::Status::TaggedSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: WhopSDK::Models::VerificationUpdateResponse::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # When the verification profile was last updated, as an ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          address:
            T.nilable(
              WhopSDK::Models::VerificationUpdateResponse::Address::OrHash
            ),
          business_name: T.nilable(String),
          business_structure: T.nilable(String),
          country: T.nilable(String),
          created_at: String,
          date_of_birth: T.nilable(String),
          first_name: T.nilable(String),
          kind: WhopSDK::Models::VerificationUpdateResponse::Kind::OrSymbol,
          last_name: T.nilable(String),
          requested_information:
            T::Array[
              WhopSDK::Models::VerificationUpdateResponse::RequestedInformation::OrHash
            ],
          required_documents:
            T::Array[
              WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::OrHash
            ],
          session_url: T.nilable(String),
          status: WhopSDK::Models::VerificationUpdateResponse::Status::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Verification profile ID, prefixed `idpf_`.
        id: nil,
        # Address on the verification profile. `null` when no address is set.
        address: nil,
        # Legal business name.
        business_name: nil,
        # Legal entity structure of the business, such as `private_corporation` or
        # `sole_proprietorship`. Supported values vary by country of incorporation — see
        # [Business structures](/developer/verification/business-structures).
        business_structure: nil,
        # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
        country: nil,
        # When the verification profile was created, as an ISO 8601 timestamp.
        created_at: nil,
        # Formatted as `YYYY-MM-DD`.
        date_of_birth: nil,
        first_name: nil,
        kind: nil,
        last_name: nil,
        # Fields or documents Whop still needs before review can continue. Submit answers
        # with the Update Verification endpoint.
        requested_information: nil,
        # Documents for a document-upload verification and their progress. Present only on
        # verifications created by sending `documents`. `pending_upload` documents were
        # not accepted yet — send the full set again with another Create Verification
        # call.
        required_documents: nil,
        # Hosted verification session URL for the user to complete identity checks.
        # Expires 7 days after creation.
        session_url: nil,
        # Current verification state. `not_started` before any session has been created;
        # `pending` while a session is in progress; `action_required` when items in
        # `requested_information` need answers before review can continue; `approved` once
        # verification succeeds; `rejected` if it fails. Call the Create Verification
        # endpoint again to start a new session.
        status: nil,
        # When the verification profile was last updated, as an ISO 8601 timestamp.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address:
              T.nilable(WhopSDK::Models::VerificationUpdateResponse::Address),
            business_name: T.nilable(String),
            business_structure: T.nilable(String),
            country: T.nilable(String),
            created_at: String,
            date_of_birth: T.nilable(String),
            first_name: T.nilable(String),
            kind:
              WhopSDK::Models::VerificationUpdateResponse::Kind::TaggedSymbol,
            last_name: T.nilable(String),
            requested_information:
              T::Array[
                WhopSDK::Models::VerificationUpdateResponse::RequestedInformation
              ],
            required_documents:
              T::Array[
                WhopSDK::Models::VerificationUpdateResponse::RequiredDocument
              ],
            session_url: T.nilable(String),
            status:
              WhopSDK::Models::VerificationUpdateResponse::Status::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      class Address < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::VerificationUpdateResponse::Address,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # First line of the street address.
        sig { returns(T.nilable(String)) }
        attr_reader :line1

        sig { params(line1: String).void }
        attr_writer :line1

        # Second line of the street address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # Postal or ZIP code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # State, province, or region code, for example `CA`.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # Address on the verification profile. `null` when no address is set.
        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            line1: String,
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
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
              city: T.nilable(String),
              country: T.nilable(String),
              line1: String,
              line2: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      module Kind
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::VerificationUpdateResponse::Kind)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(
            :individual,
            WhopSDK::Models::VerificationUpdateResponse::Kind::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            WhopSDK::Models::VerificationUpdateResponse::Kind::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::VerificationUpdateResponse::Kind::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class RequestedInformation < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::VerificationUpdateResponse::RequestedInformation,
              WhopSDK::Internal::AnyHash
            )
          end

        # Requested information item ID, prefixed `inrqi_`. Include this ID when
        # submitting an answer.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Additional instructions for this requested item, or `null`.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Reason a previously submitted value was rejected. `null` if no submitted value
        # has been rejected.
        sig { returns(T.nilable(String)) }
        attr_accessor :error_message

        # Stable field key, such as `ssn` or `business_description`.
        sig { returns(T.nilable(String)) }
        attr_reader :field

        sig { params(field: String).void }
        attr_writer :field

        # Human-readable label for the field, such as `Social Security Number`.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # Allowed values for a `select` field (e.g. account_type, business_structure) —
        # the submitted value must be one of these; empty for other types.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :options

        sig { params(options: T::Array[String]).void }
        attr_writer :options

        # Document upload slots for this item. Present when `type` is `files`; upload one
        # file for each required slot and include the slot's `category` when submitting
        # the answer.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::Models::VerificationUpdateResponse::RequestedInformation::RequestedFile
              ]
            )
          )
        end
        attr_reader :requested_files

        sig do
          params(
            requested_files:
              T::Array[
                WhopSDK::Models::VerificationUpdateResponse::RequestedInformation::RequestedFile::OrHash
              ]
          ).void
        end
        attr_writer :requested_files

        # Input type expected for this item: `text`, `date`, `phone`, `address`, `files`,
        # or `select`.
        sig { returns(T.nilable(String)) }
        attr_accessor :type

        sig do
          params(
            id: String,
            description: T.nilable(String),
            error_message: T.nilable(String),
            field: String,
            label: String,
            options: T::Array[String],
            requested_files:
              T::Array[
                WhopSDK::Models::VerificationUpdateResponse::RequestedInformation::RequestedFile::OrHash
              ],
            type: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Requested information item ID, prefixed `inrqi_`. Include this ID when
          # submitting an answer.
          id: nil,
          # Additional instructions for this requested item, or `null`.
          description: nil,
          # Reason a previously submitted value was rejected. `null` if no submitted value
          # has been rejected.
          error_message: nil,
          # Stable field key, such as `ssn` or `business_description`.
          field: nil,
          # Human-readable label for the field, such as `Social Security Number`.
          label: nil,
          # Allowed values for a `select` field (e.g. account_type, business_structure) —
          # the submitted value must be one of these; empty for other types.
          options: nil,
          # Document upload slots for this item. Present when `type` is `files`; upload one
          # file for each required slot and include the slot's `category` when submitting
          # the answer.
          requested_files: nil,
          # Input type expected for this item: `text`, `date`, `phone`, `address`, `files`,
          # or `select`.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              description: T.nilable(String),
              error_message: T.nilable(String),
              field: String,
              label: String,
              options: T::Array[String],
              requested_files:
                T::Array[
                  WhopSDK::Models::VerificationUpdateResponse::RequestedInformation::RequestedFile
                ],
              type: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class RequestedFile < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::VerificationUpdateResponse::RequestedInformation::RequestedFile,
                WhopSDK::Internal::AnyHash
              )
            end

          # File category to include with the uploaded file so Whop can route the document
          # correctly. `null` for a generic upload.
          sig { returns(T.nilable(String)) }
          attr_accessor :category

          # Whether this slot can be left empty.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_optional

          sig { params(is_optional: T::Boolean).void }
          attr_writer :is_optional

          # Specific document type requested, such as `Bank Statement`. `null` for standard
          # identity and business document uploads.
          sig { returns(T.nilable(String)) }
          attr_accessor :kind

          # Label for this upload slot, such as `Front of ID Document`.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          # Whether this slot accepts more than one file.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :multiple

          sig { params(multiple: T::Boolean).void }
          attr_writer :multiple

          sig do
            params(
              category: T.nilable(String),
              is_optional: T::Boolean,
              kind: T.nilable(String),
              label: String,
              multiple: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # File category to include with the uploaded file so Whop can route the document
            # correctly. `null` for a generic upload.
            category: nil,
            # Whether this slot can be left empty.
            is_optional: nil,
            # Specific document type requested, such as `Bank Statement`. `null` for standard
            # identity and business document uploads.
            kind: nil,
            # Label for this upload slot, such as `Front of ID Document`.
            label: nil,
            # Whether this slot accepts more than one file.
            multiple: nil
          )
          end

          sig do
            override.returns(
              {
                category: T.nilable(String),
                is_optional: T::Boolean,
                kind: T.nilable(String),
                label: String,
                multiple: T::Boolean
              }
            )
          end
          def to_hash
          end
        end
      end

      class RequiredDocument < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::VerificationUpdateResponse::RequiredDocument,
              WhopSDK::Internal::AnyHash
            )
          end

        # Document slot key, such as `id_card_front`, `id_card_back`, or `selfie`.
        sig { returns(T.nilable(String)) }
        attr_reader :document

        sig { params(document: String).void }
        attr_writer :document

        # Why the previous submission was rejected, when the provider requested new
        # documents or declined the verification.
        sig { returns(T.nilable(String)) }
        attr_accessor :rejection_reason

        # `pending_upload` until the document has been relayed for review; `submitted`
        # afterwards.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            document: String,
            rejection_reason: T.nilable(String),
            status:
              WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Document slot key, such as `id_card_front`, `id_card_back`, or `selfie`.
          document: nil,
          # Why the previous submission was rejected, when the provider requested new
          # documents or declined the verification.
          rejection_reason: nil,
          # `pending_upload` until the document has been relayed for review; `submitted`
          # afterwards.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              document: String,
              rejection_reason: T.nilable(String),
              status:
                WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # `pending_upload` until the document has been relayed for review; `submitted`
        # afterwards.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING_UPLOAD =
            T.let(
              :pending_upload,
              WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::Status::TaggedSymbol
            )
          SUBMITTED =
            T.let(
              :submitted,
              WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::VerificationUpdateResponse::RequiredDocument::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Current verification state. `not_started` before any session has been created;
      # `pending` while a session is in progress; `action_required` when items in
      # `requested_information` need answers before review can continue; `approved` once
      # verification succeeds; `rejected` if it fails. Call the Create Verification
      # endpoint again to start a new session.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::VerificationUpdateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_STARTED =
          T.let(
            :not_started,
            WhopSDK::Models::VerificationUpdateResponse::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::VerificationUpdateResponse::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            WhopSDK::Models::VerificationUpdateResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::VerificationUpdateResponse::Status::TaggedSymbol
          )
        ACTION_REQUIRED =
          T.let(
            :action_required,
            WhopSDK::Models::VerificationUpdateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::VerificationUpdateResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
