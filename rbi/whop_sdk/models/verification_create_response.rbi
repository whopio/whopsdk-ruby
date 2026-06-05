# typed: strong

module WhopSDK
  module Models
    class VerificationCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::VerificationCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The verification ID, e.g. idpf\_\*
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :created_at

      sig do
        returns(WhopSDK::Models::VerificationCreateResponse::Kind::TaggedSymbol)
      end
      attr_accessor :kind

      sig { returns(T.nilable(String)) }
      attr_accessor :session_url

      sig do
        returns(
          WhopSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :updated_at

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :address

      sig { returns(T.nilable(String)) }
      attr_accessor :business_name

      sig { returns(T.nilable(String)) }
      attr_accessor :business_structure

      sig { returns(T.nilable(String)) }
      attr_accessor :country

      sig { returns(T.nilable(String)) }
      attr_accessor :date_of_birth

      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      sig do
        returns(
          T.nilable(T::Array[WhopSDK::Models::VerificationCreateResponse::Rfi])
        )
      end
      attr_reader :rfis

      sig do
        params(
          rfis:
            T::Array[WhopSDK::Models::VerificationCreateResponse::Rfi::OrHash]
        ).void
      end
      attr_writer :rfis

      sig do
        params(
          id: String,
          created_at: String,
          kind: WhopSDK::Models::VerificationCreateResponse::Kind::OrSymbol,
          session_url: T.nilable(String),
          status: WhopSDK::Models::VerificationCreateResponse::Status::OrSymbol,
          updated_at: String,
          address: T.nilable(T.anything),
          business_name: T.nilable(String),
          business_structure: T.nilable(String),
          country: T.nilable(String),
          date_of_birth: T.nilable(String),
          first_name: T.nilable(String),
          last_name: T.nilable(String),
          rfis:
            T::Array[WhopSDK::Models::VerificationCreateResponse::Rfi::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The verification ID, e.g. idpf\_\*
        id:,
        created_at:,
        kind:,
        session_url:,
        status:,
        updated_at:,
        address: nil,
        business_name: nil,
        business_structure: nil,
        country: nil,
        date_of_birth: nil,
        first_name: nil,
        last_name: nil,
        rfis: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            kind:
              WhopSDK::Models::VerificationCreateResponse::Kind::TaggedSymbol,
            session_url: T.nilable(String),
            status:
              WhopSDK::Models::VerificationCreateResponse::Status::TaggedSymbol,
            updated_at: String,
            address: T.nilable(T.anything),
            business_name: T.nilable(String),
            business_structure: T.nilable(String),
            country: T.nilable(String),
            date_of_birth: T.nilable(String),
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            rfis: T::Array[WhopSDK::Models::VerificationCreateResponse::Rfi]
          }
        )
      end
      def to_hash
      end

      module Kind
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::VerificationCreateResponse::Kind)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(
            :individual,
            WhopSDK::Models::VerificationCreateResponse::Kind::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            WhopSDK::Models::VerificationCreateResponse::Kind::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::VerificationCreateResponse::Kind::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::VerificationCreateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_STARTED =
          T.let(
            :not_started,
            WhopSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            WhopSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        ACTION_REQUIRED =
          T.let(
            :action_required,
            WhopSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
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
              WhopSDK::Models::VerificationCreateResponse::Rfi,
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
              WhopSDK::Models::VerificationCreateResponse::Rfi::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              WhopSDK::Models::VerificationCreateResponse::Rfi::Status::OrSymbol
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
              WhopSDK::Models::VerificationCreateResponse::Rfi::Status::OrSymbol,
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
                WhopSDK::Models::VerificationCreateResponse::Rfi::Status::TaggedSymbol,
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
                WhopSDK::Models::VerificationCreateResponse::Rfi::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OUTSTANDING =
            T.let(
              :outstanding,
              WhopSDK::Models::VerificationCreateResponse::Rfi::Status::TaggedSymbol
            )
          INVALID =
            T.let(
              :invalid,
              WhopSDK::Models::VerificationCreateResponse::Rfi::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::VerificationCreateResponse::Rfi::Status::TaggedSymbol
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
