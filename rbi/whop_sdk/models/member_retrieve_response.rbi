# typed: strong

module WhopSDK
  module Models
    class MemberRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::MemberRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Member ID, prefixed `mber_`.
      sig { returns(String) }
      attr_accessor :id

      # What the member can reach on the account: `customer` for paying members, `admin`
      # for team members, `no_access` once every grant has lapsed.
      sig do
        returns(
          WhopSDK::Models::MemberRetrieveResponse::AccessLevel::TaggedSymbol
        )
      end
      attr_accessor :access_level

      # The account this member belongs to, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :account_id

      # When the member record was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # When the member first joined the account, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :joined_at

      # When the member last opened the account's content, as an ISO 8601 timestamp.
      # `null` if they never have.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_accessed_at

      # The member's phone number, or `null`. Their account number when they have shared
      # one with this seller; otherwise the most recent number collected (or verified)
      # at checkout.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # `joined` while the member is part of the account, `left` after they leave.
      sig do
        returns(WhopSDK::Models::MemberRetrieveResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      # The member's current token balance for this account, computed from token
      # transactions.
      sig { returns(Float) }
      attr_accessor :token_balance

      # The user behind this member. `null` when the buyer is another business rather
      # than a person.
      sig { returns(T.nilable(WhopSDK::Models::MemberRetrieveResponse::User)) }
      attr_reader :user

      sig do
        params(
          user: T.nilable(WhopSDK::Models::MemberRetrieveResponse::User::OrHash)
        ).void
      end
      attr_writer :user

      sig do
        params(
          id: String,
          access_level:
            WhopSDK::Models::MemberRetrieveResponse::AccessLevel::OrSymbol,
          account_id: String,
          created_at: String,
          joined_at: String,
          last_accessed_at: T.nilable(String),
          phone_number: T.nilable(String),
          status: WhopSDK::Models::MemberRetrieveResponse::Status::OrSymbol,
          token_balance: Float,
          user: T.nilable(WhopSDK::Models::MemberRetrieveResponse::User::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Member ID, prefixed `mber_`.
        id:,
        # What the member can reach on the account: `customer` for paying members, `admin`
        # for team members, `no_access` once every grant has lapsed.
        access_level:,
        # The account this member belongs to, prefixed `biz_`.
        account_id:,
        # When the member record was created, as an ISO 8601 timestamp.
        created_at:,
        # When the member first joined the account, as an ISO 8601 timestamp.
        joined_at:,
        # When the member last opened the account's content, as an ISO 8601 timestamp.
        # `null` if they never have.
        last_accessed_at:,
        # The member's phone number, or `null`. Their account number when they have shared
        # one with this seller; otherwise the most recent number collected (or verified)
        # at checkout.
        phone_number:,
        # `joined` while the member is part of the account, `left` after they leave.
        status:,
        # The member's current token balance for this account, computed from token
        # transactions.
        token_balance:,
        # The user behind this member. `null` when the buyer is another business rather
        # than a person.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            access_level:
              WhopSDK::Models::MemberRetrieveResponse::AccessLevel::TaggedSymbol,
            account_id: String,
            created_at: String,
            joined_at: String,
            last_accessed_at: T.nilable(String),
            phone_number: T.nilable(String),
            status:
              WhopSDK::Models::MemberRetrieveResponse::Status::TaggedSymbol,
            token_balance: Float,
            user: T.nilable(WhopSDK::Models::MemberRetrieveResponse::User)
          }
        )
      end
      def to_hash
      end

      # What the member can reach on the account: `customer` for paying members, `admin`
      # for team members, `no_access` once every grant has lapsed.
      module AccessLevel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::MemberRetrieveResponse::AccessLevel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NO_ACCESS =
          T.let(
            :no_access,
            WhopSDK::Models::MemberRetrieveResponse::AccessLevel::TaggedSymbol
          )
        ADMIN =
          T.let(
            :admin,
            WhopSDK::Models::MemberRetrieveResponse::AccessLevel::TaggedSymbol
          )
        CUSTOMER =
          T.let(
            :customer,
            WhopSDK::Models::MemberRetrieveResponse::AccessLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::MemberRetrieveResponse::AccessLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # `joined` while the member is part of the account, `left` after they leave.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::MemberRetrieveResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        JOINED =
          T.let(
            :joined,
            WhopSDK::Models::MemberRetrieveResponse::Status::TaggedSymbol
          )
        LEFT =
          T.let(
            :left,
            WhopSDK::Models::MemberRetrieveResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::MemberRetrieveResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MemberRetrieveResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # User ID, prefixed `user_`.
        sig { returns(String) }
        attr_accessor :id

        # Display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Avatar wrapper; its `url` is always present, using a generated placeholder when
        # the user set no picture.
        sig do
          returns(WhopSDK::Models::MemberRetrieveResponse::User::ProfilePicture)
        end
        attr_reader :profile_picture

        sig do
          params(
            profile_picture:
              WhopSDK::Models::MemberRetrieveResponse::User::ProfilePicture::OrHash
          ).void
        end
        attr_writer :profile_picture

        # Public username.
        sig { returns(String) }
        attr_accessor :username

        # The user behind this member. `null` when the buyer is another business rather
        # than a person.
        sig do
          params(
            id: String,
            name: T.nilable(String),
            profile_picture:
              WhopSDK::Models::MemberRetrieveResponse::User::ProfilePicture::OrHash,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # User ID, prefixed `user_`.
          id:,
          # Display name.
          name:,
          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          profile_picture:,
          # Public username.
          username:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: T.nilable(String),
              profile_picture:
                WhopSDK::Models::MemberRetrieveResponse::User::ProfilePicture,
              username: String
            }
          )
        end
        def to_hash
        end

        class ProfilePicture < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::MemberRetrieveResponse::User::ProfilePicture,
                WhopSDK::Internal::AnyHash
              )
            end

          # Avatar image URL. Always present — a generated placeholder when the user set no
          # picture.
          sig { returns(String) }
          attr_accessor :url

          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          sig { params(url: String).returns(T.attached_class) }
          def self.new(
            # Avatar image URL. Always present — a generated placeholder when the user set no
            # picture.
            url:
          )
          end

          sig { override.returns({ url: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
