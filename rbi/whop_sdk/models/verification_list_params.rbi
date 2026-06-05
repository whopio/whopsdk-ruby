# typed: strong

module WhopSDK
  module Models
    class VerificationListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::VerificationListParams, WhopSDK::Internal::AnyHash)
        end

      # Filter verifications to a specific account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # The page number to retrieve.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # The number of resources to return per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :per

      sig { params(per: Integer).void }
      attr_writer :per

      # Filter by profile type.
      sig do
        returns(
          T.nilable(WhopSDK::VerificationListParams::ProfileType::OrSymbol)
        )
      end
      attr_reader :profile_type

      sig do
        params(
          profile_type: WhopSDK::VerificationListParams::ProfileType::OrSymbol
        ).void
      end
      attr_writer :profile_type

      # Filter by derived verification status.
      sig do
        returns(T.nilable(WhopSDK::VerificationListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: WhopSDK::VerificationListParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          account_id: String,
          page: Integer,
          per: Integer,
          profile_type: WhopSDK::VerificationListParams::ProfileType::OrSymbol,
          status: WhopSDK::VerificationListParams::Status::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter verifications to a specific account.
        account_id: nil,
        # The page number to retrieve.
        page: nil,
        # The number of resources to return per page.
        per: nil,
        # Filter by profile type.
        profile_type: nil,
        # Filter by derived verification status.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            page: Integer,
            per: Integer,
            profile_type:
              WhopSDK::VerificationListParams::ProfileType::OrSymbol,
            status: WhopSDK::VerificationListParams::Status::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by profile type.
      module ProfileType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::VerificationListParams::ProfileType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(
            :individual,
            WhopSDK::VerificationListParams::ProfileType::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            WhopSDK::VerificationListParams::ProfileType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::VerificationListParams::ProfileType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter by derived verification status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::VerificationListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_STARTED =
          T.let(
            :not_started,
            WhopSDK::VerificationListParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(:pending, WhopSDK::VerificationListParams::Status::TaggedSymbol)
        APPROVED =
          T.let(
            :approved,
            WhopSDK::VerificationListParams::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::VerificationListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::VerificationListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
