# typed: strong

module WhopSDK
  module Models
    class VerificationListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::VerificationListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[WhopSDK::Models::VerificationListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[WhopSDK::Models::VerificationListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[WhopSDK::Models::VerificationListResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: T::Array[WhopSDK::Models::VerificationListResponse::Data] }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::VerificationListResponse::Data,
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
          returns(
            T.nilable(WhopSDK::Models::VerificationListResponse::Data::Address)
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              T.nilable(
                WhopSDK::Models::VerificationListResponse::Data::Address::OrHash
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

        # Email address on the verification profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        sig do
          returns(
            T.nilable(
              WhopSDK::Models::VerificationListResponse::Data::Kind::TaggedSymbol
            )
          )
        end
        attr_reader :kind

        sig do
          params(
            kind:
              WhopSDK::Models::VerificationListResponse::Data::Kind::OrSymbol
          ).void
        end
        attr_writer :kind

        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # Phone number on the verification profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # What Whop still needs before review can continue — one requirement per entry.
        # Answer with Update Verification; nothing from the response is echoed back. Keys
        # that don't apply are omitted.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation
              ]
            )
          )
        end
        attr_reader :requested_information

        sig do
          params(
            requested_information:
              T::Array[
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::OrHash
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
                WhopSDK::Models::VerificationListResponse::Data::RequiredDocument
              ]
            )
          )
        end
        attr_reader :required_documents

        sig do
          params(
            required_documents:
              T::Array[
                WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::OrHash
              ]
          ).void
        end
        attr_writer :required_documents

        # Hosted verification session URL for the user to complete identity checks.
        # Expires 7 days after creation.
        sig { returns(T.nilable(String)) }
        attr_accessor :session_url

        # Current verification state. `not_started` before any session exists; `pending`
        # while a session needs the user's input; `processing` while the provider's
        # automated checks run on a fresh submission; `action_required` when
        # `requested_information` needs answers; `manual_review` while information already
        # sent is under review — an audit answer, or a document the payout provider holds
        # — nothing to submit, usually done within 3 business days; `approved` on success;
        # `rejected` on failure. Call Create Verification again to start a new session.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              WhopSDK::Models::VerificationListResponse::Data::Status::OrSymbol
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
                WhopSDK::Models::VerificationListResponse::Data::Address::OrHash
              ),
            business_name: T.nilable(String),
            business_structure: T.nilable(String),
            country: T.nilable(String),
            created_at: String,
            date_of_birth: T.nilable(String),
            email: T.nilable(String),
            first_name: T.nilable(String),
            kind:
              WhopSDK::Models::VerificationListResponse::Data::Kind::OrSymbol,
            last_name: T.nilable(String),
            phone: T.nilable(String),
            requested_information:
              T::Array[
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::OrHash
              ],
            required_documents:
              T::Array[
                WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::OrHash
              ],
            session_url: T.nilable(String),
            status:
              WhopSDK::Models::VerificationListResponse::Data::Status::OrSymbol,
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
          # Email address on the verification profile.
          email: nil,
          first_name: nil,
          kind: nil,
          last_name: nil,
          # Phone number on the verification profile.
          phone: nil,
          # What Whop still needs before review can continue — one requirement per entry.
          # Answer with Update Verification; nothing from the response is echoed back. Keys
          # that don't apply are omitted.
          requested_information: nil,
          # Documents for a document-upload verification and their progress. Present only on
          # verifications created by sending `documents`. `pending_upload` documents were
          # not accepted yet — send the full set again with another Create Verification
          # call.
          required_documents: nil,
          # Hosted verification session URL for the user to complete identity checks.
          # Expires 7 days after creation.
          session_url: nil,
          # Current verification state. `not_started` before any session exists; `pending`
          # while a session needs the user's input; `processing` while the provider's
          # automated checks run on a fresh submission; `action_required` when
          # `requested_information` needs answers; `manual_review` while information already
          # sent is under review — an audit answer, or a document the payout provider holds
          # — nothing to submit, usually done within 3 business days; `approved` on success;
          # `rejected` on failure. Call Create Verification again to start a new session.
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
                T.nilable(
                  WhopSDK::Models::VerificationListResponse::Data::Address
                ),
              business_name: T.nilable(String),
              business_structure: T.nilable(String),
              country: T.nilable(String),
              created_at: String,
              date_of_birth: T.nilable(String),
              email: T.nilable(String),
              first_name: T.nilable(String),
              kind:
                WhopSDK::Models::VerificationListResponse::Data::Kind::TaggedSymbol,
              last_name: T.nilable(String),
              phone: T.nilable(String),
              requested_information:
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation
                ],
              required_documents:
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequiredDocument
                ],
              session_url: T.nilable(String),
              status:
                WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol,
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
                WhopSDK::Models::VerificationListResponse::Data::Address,
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
              T.all(
                Symbol,
                WhopSDK::Models::VerificationListResponse::Data::Kind
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INDIVIDUAL =
            T.let(
              :individual,
              WhopSDK::Models::VerificationListResponse::Data::Kind::TaggedSymbol
            )
          BUSINESS =
            T.let(
              :business,
              WhopSDK::Models::VerificationListResponse::Data::Kind::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::VerificationListResponse::Data::Kind::TaggedSymbol
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
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation,
                WhopSDK::Internal::AnyHash
              )
            end

          # Requested information item ID, prefixed `inrqi_`.
          sig { returns(String) }
          attr_accessor :id

          # Instruction to show the user. Carries the reviewer's note verbatim when there is
          # one.
          sig { returns(String) }
          attr_accessor :label

          # What is needed: a document name such as `bank_statement`, or a field key such as
          # `ssn` or `identity_document`. Handle unrecognized values by `type`.
          sig { returns(String) }
          attr_accessor :requirement

          # What to send as the answer, so you never have to infer it: `files` (a document,
          # as a list of its pages), `id_document` (send `documents` with the slot keys for
          # the ID you are uploading), `text`, `date`, `phone` or `select` (send `value`),
          # `text_with_files` (send `value` and optional `files`), `address` (send
          # `address`), or `liveness` (open `action_url`, then send `value` as `true` after
          # completion).
          sig { returns(String) }
          attr_accessor :type

          # URL for a related action, such as completing liveness verification or viewing a
          # payment. Absent when no action is available.
          sig { returns(T.nilable(String)) }
          attr_reader :action_url

          sig { params(action_url: String).void }
          attr_writer :action_url

          # Follow-up prompt shown with this requirement.
          sig { returns(T.nilable(String)) }
          attr_reader :details_label

          sig { params(details_label: String).void }
          attr_writer :details_label

          # Whether the follow-up response is required when visible.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :details_required

          sig { params(details_required: T::Boolean).void }
          attr_writer :details_required

          # Selected option values that make the follow-up prompt visible.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :details_visible_for

          sig { params(details_visible_for: T::Array[String]).void }
          attr_writer :details_visible_for

          # Present after a rejected submission.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::Error
                ]
              )
            )
          end
          attr_reader :errors

          sig do
            params(
              errors:
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::Error::OrHash
                ]
            ).void
          end
          attr_writer :errors

          # `true` when the item can be skipped.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :optional

          sig { params(optional: T::Boolean).void }
          attr_writer :optional

          # The values `value` may take on a `select` item. On an `id_document` item these
          # are the ID types accepted, and the chosen one decides which `documents` slots to
          # send. Absent when the item has no choice to make.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :options

          sig { params(options: T::Array[String]).void }
          attr_writer :options

          # Optional native input format for a text response.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::TaggedSymbol
              )
            )
          end
          attr_reader :response_type

          sig do
            params(
              response_type:
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::OrSymbol
            ).void
          end
          attr_writer :response_type

          # Whether a question with `options` accepts one value or multiple values.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SelectionMode::TaggedSymbol
              )
            )
          end
          attr_reader :selection_mode

          sig do
            params(
              selection_mode:
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SelectionMode::OrSymbol
            ).void
          end
          attr_writer :selection_mode

          # Documents supplied with the requirement for context.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument
                ]
              )
            )
          end
          attr_reader :supporting_documents

          sig do
            params(
              supporting_documents:
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::OrHash
                ]
            ).void
          end
          attr_writer :supporting_documents

          # Whether a written explanation may replace required supporting files.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :supporting_files_explanation_allowed

          sig { params(supporting_files_explanation_allowed: T::Boolean).void }
          attr_writer :supporting_files_explanation_allowed

          # Whether this requirement also needs supporting files.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :supporting_files_required

          sig { params(supporting_files_required: T::Boolean).void }
          attr_writer :supporting_files_required

          # Selected option values that make the supporting-file input visible.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :supporting_files_visible_for

          sig { params(supporting_files_visible_for: T::Array[String]).void }
          attr_writer :supporting_files_visible_for

          sig do
            params(
              id: String,
              label: String,
              requirement: String,
              type: String,
              action_url: String,
              details_label: String,
              details_required: T::Boolean,
              details_visible_for: T::Array[String],
              errors:
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::Error::OrHash
                ],
              optional: T::Boolean,
              options: T::Array[String],
              response_type:
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::OrSymbol,
              selection_mode:
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SelectionMode::OrSymbol,
              supporting_documents:
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::OrHash
                ],
              supporting_files_explanation_allowed: T::Boolean,
              supporting_files_required: T::Boolean,
              supporting_files_visible_for: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Requested information item ID, prefixed `inrqi_`.
            id:,
            # Instruction to show the user. Carries the reviewer's note verbatim when there is
            # one.
            label:,
            # What is needed: a document name such as `bank_statement`, or a field key such as
            # `ssn` or `identity_document`. Handle unrecognized values by `type`.
            requirement:,
            # What to send as the answer, so you never have to infer it: `files` (a document,
            # as a list of its pages), `id_document` (send `documents` with the slot keys for
            # the ID you are uploading), `text`, `date`, `phone` or `select` (send `value`),
            # `text_with_files` (send `value` and optional `files`), `address` (send
            # `address`), or `liveness` (open `action_url`, then send `value` as `true` after
            # completion).
            type:,
            # URL for a related action, such as completing liveness verification or viewing a
            # payment. Absent when no action is available.
            action_url: nil,
            # Follow-up prompt shown with this requirement.
            details_label: nil,
            # Whether the follow-up response is required when visible.
            details_required: nil,
            # Selected option values that make the follow-up prompt visible.
            details_visible_for: nil,
            # Present after a rejected submission.
            errors: nil,
            # `true` when the item can be skipped.
            optional: nil,
            # The values `value` may take on a `select` item. On an `id_document` item these
            # are the ID types accepted, and the chosen one decides which `documents` slots to
            # send. Absent when the item has no choice to make.
            options: nil,
            # Optional native input format for a text response.
            response_type: nil,
            # Whether a question with `options` accepts one value or multiple values.
            selection_mode: nil,
            # Documents supplied with the requirement for context.
            supporting_documents: nil,
            # Whether a written explanation may replace required supporting files.
            supporting_files_explanation_allowed: nil,
            # Whether this requirement also needs supporting files.
            supporting_files_required: nil,
            # Selected option values that make the supporting-file input visible.
            supporting_files_visible_for: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                label: String,
                requirement: String,
                type: String,
                action_url: String,
                details_label: String,
                details_required: T::Boolean,
                details_visible_for: T::Array[String],
                errors:
                  T::Array[
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::Error
                  ],
                optional: T::Boolean,
                options: T::Array[String],
                response_type:
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::TaggedSymbol,
                selection_mode:
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SelectionMode::TaggedSymbol,
                supporting_documents:
                  T::Array[
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument
                  ],
                supporting_files_explanation_allowed: T::Boolean,
                supporting_files_required: T::Boolean,
                supporting_files_visible_for: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class Error < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::Error,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Stable error code.
            sig { returns(T.nilable(String)) }
            attr_reader :code

            sig { params(code: String).void }
            attr_writer :code

            # Why it was rejected.
            sig { returns(T.nilable(String)) }
            attr_reader :reason

            sig { params(reason: String).void }
            attr_writer :reason

            sig do
              params(code: String, reason: String).returns(T.attached_class)
            end
            def self.new(
              # Stable error code.
              code: nil,
              # Why it was rejected.
              reason: nil
            )
            end

            sig { override.returns({ code: String, reason: String }) }
            def to_hash
            end
          end

          # Optional native input format for a text response.
          module ResponseType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            YES_NO =
              T.let(
                :yes_no,
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::TaggedSymbol
              )
            YES_NO_NA =
              T.let(
                :yes_no_na,
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::TaggedSymbol
              )
            DATE =
              T.let(
                :date,
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::TaggedSymbol
              )
            URL =
              T.let(
                :url,
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::TaggedSymbol
              )
            NUMBER =
              T.let(
                :number,
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::TaggedSymbol
              )
            TEL =
              T.let(
                :tel,
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::ResponseType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Whether a question with `options` accepts one value or multiple values.
          module SelectionMode
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SelectionMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SINGLE =
              T.let(
                :single,
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SelectionMode::TaggedSymbol
              )
            MULTIPLE =
              T.let(
                :multiple,
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SelectionMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SelectionMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class SupportingDocument < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The file's ID, prefixed `file_`.
            sig { returns(String) }
            attr_accessor :id

            # The file's MIME type, e.g. `application/pdf`.
            sig { returns(T.nilable(String)) }
            attr_accessor :content_type

            # When the file was created, as an ISO 8601 timestamp.
            sig { returns(String) }
            attr_accessor :created_at

            # The original filename, including its extension.
            sig { returns(T.nilable(String)) }
            attr_accessor :filename

            # The type of this object, always `file`.
            sig { returns(String) }
            attr_accessor :object

            # The file size in bytes. `null` until the upload has finished.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :size

            # Where the file is in its upload lifecycle.
            sig do
              returns(
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::UploadStatus::TaggedSymbol
              )
            end
            attr_accessor :upload_status

            # A URL to download the file: a permanent CDN URL for public files, a signed
            # expiring URL for private ones. `null` until the upload has finished.
            sig { returns(T.nilable(String)) }
            attr_accessor :url

            # `public` files are served via an unsigned CDN URL; `private` files via a signed,
            # expiring URL.
            sig do
              returns(
                WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::Visibility::TaggedSymbol
              )
            end
            attr_accessor :visibility

            # The byte size each part (except the last) must be. Present only on create, and
            # only for multipart uploads.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :multipart_chunk_size

            # The ID of the multipart upload, passed back to `complete`. Present only on
            # create, and only for multipart uploads.
            sig { returns(T.nilable(String)) }
            attr_accessor :multipart_upload_id

            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::MultipartUploadURL
                  ]
                )
              )
            end
            attr_accessor :multipart_upload_urls

            # Headers to send with the upload PUT. Present only on create.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :upload_headers

            sig { params(upload_headers: T.anything).void }
            attr_writer :upload_headers

            # Presigned URL to PUT the file's bytes to. Present only on create, and only for
            # single-part uploads.
            sig { returns(T.nilable(String)) }
            attr_accessor :upload_url

            sig do
              params(
                id: String,
                content_type: T.nilable(String),
                created_at: String,
                filename: T.nilable(String),
                object: String,
                size: T.nilable(Integer),
                upload_status:
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::UploadStatus::OrSymbol,
                url: T.nilable(String),
                visibility:
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::Visibility::OrSymbol,
                multipart_chunk_size: T.nilable(Integer),
                multipart_upload_id: T.nilable(String),
                multipart_upload_urls:
                  T.nilable(
                    T::Array[
                      WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::MultipartUploadURL::OrHash
                    ]
                  ),
                upload_headers: T.anything,
                upload_url: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The file's ID, prefixed `file_`.
              id:,
              # The file's MIME type, e.g. `application/pdf`.
              content_type:,
              # When the file was created, as an ISO 8601 timestamp.
              created_at:,
              # The original filename, including its extension.
              filename:,
              # The type of this object, always `file`.
              object:,
              # The file size in bytes. `null` until the upload has finished.
              size:,
              # Where the file is in its upload lifecycle.
              upload_status:,
              # A URL to download the file: a permanent CDN URL for public files, a signed
              # expiring URL for private ones. `null` until the upload has finished.
              url:,
              # `public` files are served via an unsigned CDN URL; `private` files via a signed,
              # expiring URL.
              visibility:,
              # The byte size each part (except the last) must be. Present only on create, and
              # only for multipart uploads.
              multipart_chunk_size: nil,
              # The ID of the multipart upload, passed back to `complete`. Present only on
              # create, and only for multipart uploads.
              multipart_upload_id: nil,
              multipart_upload_urls: nil,
              # Headers to send with the upload PUT. Present only on create.
              upload_headers: nil,
              # Presigned URL to PUT the file's bytes to. Present only on create, and only for
              # single-part uploads.
              upload_url: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  content_type: T.nilable(String),
                  created_at: String,
                  filename: T.nilable(String),
                  object: String,
                  size: T.nilable(Integer),
                  upload_status:
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::UploadStatus::TaggedSymbol,
                  url: T.nilable(String),
                  visibility:
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::Visibility::TaggedSymbol,
                  multipart_chunk_size: T.nilable(Integer),
                  multipart_upload_id: T.nilable(String),
                  multipart_upload_urls:
                    T.nilable(
                      T::Array[
                        WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::MultipartUploadURL
                      ]
                    ),
                  upload_headers: T.anything,
                  upload_url: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # Where the file is in its upload lifecycle.
            module UploadStatus
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::UploadStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :pending,
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::UploadStatus::TaggedSymbol
                )
              PROCESSING =
                T.let(
                  :processing,
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::UploadStatus::TaggedSymbol
                )
              READY =
                T.let(
                  :ready,
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::UploadStatus::TaggedSymbol
                )
              FAILED =
                T.let(
                  :failed,
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::UploadStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::UploadStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # `public` files are served via an unsigned CDN URL; `private` files via a signed,
            # expiring URL.
            module Visibility
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::Visibility
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PUBLIC =
                T.let(
                  :public,
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::Visibility::TaggedSymbol
                )
              PRIVATE =
                T.let(
                  :private,
                  WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::Visibility::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::Visibility::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::VerificationListResponse::Data::RequestedInformation::SupportingDocument::MultipartUploadURL,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The 1-based index of this part within the multipart upload.
              sig { returns(Integer) }
              attr_accessor :part_number

              # The presigned URL to PUT this part's bytes to.
              sig { returns(String) }
              attr_accessor :url

              # The presigned URL for each part. Present only on create, and only for multipart
              # uploads.
              sig do
                params(part_number: Integer, url: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # The 1-based index of this part within the multipart upload.
                part_number:,
                # The presigned URL to PUT this part's bytes to.
                url:
              )
              end

              sig { override.returns({ part_number: Integer, url: String }) }
              def to_hash
              end
            end
          end
        end

        class RequiredDocument < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::VerificationListResponse::Data::RequiredDocument,
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
                WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              document: String,
              rejection_reason: T.nilable(String),
              status:
                WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status::OrSymbol
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
                  WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status::TaggedSymbol
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
                  WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING_UPLOAD =
              T.let(
                :pending_upload,
                WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status::TaggedSymbol
              )
            SUBMITTED =
              T.let(
                :submitted,
                WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::RequiredDocument::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Current verification state. `not_started` before any session exists; `pending`
        # while a session needs the user's input; `processing` while the provider's
        # automated checks run on a fresh submission; `action_required` when
        # `requested_information` needs answers; `manual_review` while information already
        # sent is under review — an audit answer, or a document the payout provider holds
        # — nothing to submit, usually done within 3 business days; `approved` on success;
        # `rejected` on failure. Call Create Verification again to start a new session.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::VerificationListResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_STARTED =
            T.let(
              :not_started,
              WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
            )
          MANUAL_REVIEW =
            T.let(
              :manual_review,
              WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
            )
          ACTION_REQUIRED =
            T.let(
              :action_required,
              WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
