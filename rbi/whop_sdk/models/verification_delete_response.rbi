# typed: strong

module WhopSDK
  module Models
    class VerificationDeleteResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::VerificationDeleteResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The identity profile ID, e.g. idpf\_\*
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :address

      sig { returns(T.nilable(String)) }
      attr_accessor :business_name

      sig { returns(T.nilable(String)) }
      attr_accessor :business_structure

      sig { returns(T.nilable(String)) }
      attr_accessor :country

      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :date_of_birth

      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      sig do
        returns(
          T.nilable(
            WhopSDK::Models::VerificationDeleteResponse::Kind::TaggedSymbol
          )
        )
      end
      attr_reader :kind

      sig do
        params(
          kind: WhopSDK::Models::VerificationDeleteResponse::Kind::OrSymbol
        ).void
      end
      attr_writer :kind

      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      sig do
        returns(
          T.nilable(T::Array[WhopSDK::Models::VerificationDeleteResponse::Rfi])
        )
      end
      attr_reader :rfis

      sig do
        params(
          rfis:
            T::Array[WhopSDK::Models::VerificationDeleteResponse::Rfi::OrHash]
        ).void
      end
      attr_writer :rfis

      sig { returns(T.nilable(String)) }
      attr_accessor :session_url

      sig do
        returns(
          T.nilable(
            WhopSDK::Models::VerificationDeleteResponse::Status::TaggedSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: WhopSDK::Models::VerificationDeleteResponse::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          address: T.nilable(T.anything),
          business_name: T.nilable(String),
          business_structure: T.nilable(String),
          country: T.nilable(String),
          created_at: String,
          date_of_birth: T.nilable(String),
          first_name: T.nilable(String),
          kind: WhopSDK::Models::VerificationDeleteResponse::Kind::OrSymbol,
          last_name: T.nilable(String),
          rfis:
            T::Array[WhopSDK::Models::VerificationDeleteResponse::Rfi::OrHash],
          session_url: T.nilable(String),
          status: WhopSDK::Models::VerificationDeleteResponse::Status::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The identity profile ID, e.g. idpf\_\*
        id: nil,
        address: nil,
        business_name: nil,
        business_structure: nil,
        country: nil,
        created_at: nil,
        date_of_birth: nil,
        first_name: nil,
        kind: nil,
        last_name: nil,
        rfis: nil,
        session_url: nil,
        status: nil,
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address: T.nilable(T.anything),
            business_name: T.nilable(String),
            business_structure: T.nilable(String),
            country: T.nilable(String),
            created_at: String,
            date_of_birth: T.nilable(String),
            first_name: T.nilable(String),
            kind:
              WhopSDK::Models::VerificationDeleteResponse::Kind::TaggedSymbol,
            last_name: T.nilable(String),
            rfis: T::Array[WhopSDK::Models::VerificationDeleteResponse::Rfi],
            session_url: T.nilable(String),
            status:
              WhopSDK::Models::VerificationDeleteResponse::Status::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      module Kind
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::VerificationDeleteResponse::Kind)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(
            :individual,
            WhopSDK::Models::VerificationDeleteResponse::Kind::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            WhopSDK::Models::VerificationDeleteResponse::Kind::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::VerificationDeleteResponse::Kind::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Rfi < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::VerificationDeleteResponse::Rfi,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_accessor :error_message

        sig do
          returns(
            T.nilable(
              WhopSDK::Models::VerificationDeleteResponse::Rfi::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              WhopSDK::Models::VerificationDeleteResponse::Rfi::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_accessor :type

        sig do
          params(
            id: String,
            created_at: String,
            description: String,
            error_message: T.nilable(String),
            status:
              WhopSDK::Models::VerificationDeleteResponse::Rfi::Status::OrSymbol,
            type: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          created_at: nil,
          description: nil,
          error_message: nil,
          status: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              description: String,
              error_message: T.nilable(String),
              status:
                WhopSDK::Models::VerificationDeleteResponse::Rfi::Status::TaggedSymbol,
              type: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::VerificationDeleteResponse::Rfi::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OUTSTANDING =
            T.let(
              :outstanding,
              WhopSDK::Models::VerificationDeleteResponse::Rfi::Status::TaggedSymbol
            )
          INVALID =
            T.let(
              :invalid,
              WhopSDK::Models::VerificationDeleteResponse::Rfi::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::VerificationDeleteResponse::Rfi::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::VerificationDeleteResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_STARTED =
          T.let(
            :not_started,
            WhopSDK::Models::VerificationDeleteResponse::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::VerificationDeleteResponse::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            WhopSDK::Models::VerificationDeleteResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::VerificationDeleteResponse::Status::TaggedSymbol
          )
        ACTION_REQUIRED =
          T.let(
            :action_required,
            WhopSDK::Models::VerificationDeleteResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::VerificationDeleteResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
