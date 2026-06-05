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

      sig { returns(T::Array[WhopSDK::Models::VerificationListResponse::Data]) }
      attr_accessor :data

      sig { returns(WhopSDK::Models::VerificationListResponse::Pagination) }
      attr_reader :pagination

      sig do
        params(
          pagination:
            WhopSDK::Models::VerificationListResponse::Pagination::OrHash
        ).void
      end
      attr_writer :pagination

      sig do
        params(
          data:
            T::Array[WhopSDK::Models::VerificationListResponse::Data::OrHash],
          pagination:
            WhopSDK::Models::VerificationListResponse::Pagination::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, pagination:)
      end

      sig do
        override.returns(
          {
            data: T::Array[WhopSDK::Models::VerificationListResponse::Data],
            pagination: WhopSDK::Models::VerificationListResponse::Pagination
          }
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

        # The verification ID, e.g. idpf\_\*
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :created_at

        sig do
          returns(
            WhopSDK::Models::VerificationListResponse::Data::Kind::TaggedSymbol
          )
        end
        attr_accessor :kind

        sig do
          returns(
            T::Array[WhopSDK::Models::VerificationListResponse::Data::Rfi]
          )
        end
        attr_accessor :rfis

        sig do
          returns(
            WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol
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

        sig { returns(T.nilable(String)) }
        attr_accessor :session_url

        sig do
          params(
            id: String,
            created_at: String,
            kind:
              WhopSDK::Models::VerificationListResponse::Data::Kind::OrSymbol,
            rfis:
              T::Array[
                WhopSDK::Models::VerificationListResponse::Data::Rfi::OrHash
              ],
            status:
              WhopSDK::Models::VerificationListResponse::Data::Status::OrSymbol,
            updated_at: String,
            address: T.nilable(T.anything),
            business_name: T.nilable(String),
            business_structure: T.nilable(String),
            country: T.nilable(String),
            date_of_birth: T.nilable(String),
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            session_url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The verification ID, e.g. idpf\_\*
          id:,
          created_at:,
          kind:,
          rfis:,
          status:,
          updated_at:,
          address: nil,
          business_name: nil,
          business_structure: nil,
          country: nil,
          date_of_birth: nil,
          first_name: nil,
          last_name: nil,
          session_url: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              kind:
                WhopSDK::Models::VerificationListResponse::Data::Kind::TaggedSymbol,
              rfis:
                T::Array[WhopSDK::Models::VerificationListResponse::Data::Rfi],
              status:
                WhopSDK::Models::VerificationListResponse::Data::Status::TaggedSymbol,
              updated_at: String,
              address: T.nilable(T.anything),
              business_name: T.nilable(String),
              business_structure: T.nilable(String),
              country: T.nilable(String),
              date_of_birth: T.nilable(String),
              first_name: T.nilable(String),
              last_name: T.nilable(String),
              session_url: T.nilable(String)
            }
          )
        end
        def to_hash
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

        class Rfi < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::VerificationListResponse::Data::Rfi,
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
                WhopSDK::Models::VerificationListResponse::Data::Rfi::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                WhopSDK::Models::VerificationListResponse::Data::Rfi::Status::OrSymbol
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
                WhopSDK::Models::VerificationListResponse::Data::Rfi::Status::OrSymbol,
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
                  WhopSDK::Models::VerificationListResponse::Data::Rfi::Status::TaggedSymbol,
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
                  WhopSDK::Models::VerificationListResponse::Data::Rfi::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OUTSTANDING =
              T.let(
                :outstanding,
                WhopSDK::Models::VerificationListResponse::Data::Rfi::Status::TaggedSymbol
              )
            INVALID =
              T.let(
                :invalid,
                WhopSDK::Models::VerificationListResponse::Data::Rfi::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::VerificationListResponse::Data::Rfi::Status::TaggedSymbol
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

      class Pagination < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::VerificationListResponse::Pagination,
              WhopSDK::Internal::AnyHash
            )
          end

        # Current page number
        sig { returns(Float) }
        attr_accessor :current_page

        # Next page number
        sig { returns(T.nilable(Float)) }
        attr_accessor :next_page

        # Previous page number
        sig { returns(T.nilable(Float)) }
        attr_accessor :prev_page

        # Total number of records
        sig { returns(Float) }
        attr_accessor :total_count

        # Total number of pages
        sig { returns(Float) }
        attr_accessor :total_pages

        sig do
          params(
            current_page: Float,
            next_page: T.nilable(Float),
            prev_page: T.nilable(Float),
            total_count: Float,
            total_pages: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Current page number
          current_page:,
          # Next page number
          next_page:,
          # Previous page number
          prev_page:,
          # Total number of records
          total_count:,
          # Total number of pages
          total_pages:
        )
        end

        sig do
          override.returns(
            {
              current_page: Float,
              next_page: T.nilable(Float),
              prev_page: T.nilable(Float),
              total_count: Float,
              total_pages: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
