# typed: strong

module WhopSDK
  module Models
    class PartnerReferredUsersResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PartnerReferredUsersResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[WhopSDK::Models::PartnerReferredUsersResponse::Data])
      end
      attr_accessor :data

      sig { returns(WhopSDK::Models::PartnerReferredUsersResponse::PageInfo) }
      attr_reader :page_info

      sig do
        params(
          page_info:
            WhopSDK::Models::PartnerReferredUsersResponse::PageInfo::OrHash
        ).void
      end
      attr_writer :page_info

      sig do
        params(
          data:
            T::Array[
              WhopSDK::Models::PartnerReferredUsersResponse::Data::OrHash
            ],
          page_info:
            WhopSDK::Models::PartnerReferredUsersResponse::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, page_info:)
      end

      sig do
        override.returns(
          {
            data: T::Array[WhopSDK::Models::PartnerReferredUsersResponse::Data],
            page_info: WhopSDK::Models::PartnerReferredUsersResponse::PageInfo
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PartnerReferredUsersResponse::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :total_earnings_usd

        sig { returns(String) }
        attr_accessor :total_volume_usd

        sig do
          returns(WhopSDK::Models::PartnerReferredUsersResponse::Data::User)
        end
        attr_reader :user

        sig do
          params(
            user:
              WhopSDK::Models::PartnerReferredUsersResponse::Data::User::OrHash
          ).void
        end
        attr_writer :user

        sig do
          params(
            total_earnings_usd: String,
            total_volume_usd: String,
            user:
              WhopSDK::Models::PartnerReferredUsersResponse::Data::User::OrHash
          ).returns(T.attached_class)
        end
        def self.new(total_earnings_usd:, total_volume_usd:, user:)
        end

        sig do
          override.returns(
            {
              total_earnings_usd: String,
              total_volume_usd: String,
              user: WhopSDK::Models::PartnerReferredUsersResponse::Data::User
            }
          )
        end
        def to_hash
        end

        class User < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PartnerReferredUsersResponse::Data::User,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :username

          sig { returns(T.nilable(String)) }
          attr_accessor :city

          sig { returns(T.nilable(String)) }
          attr_accessor :country

          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::PartnerReferredUsersResponse::Data::User::ProfilePicture
              )
            )
          end
          attr_reader :profile_picture

          sig do
            params(
              profile_picture:
                WhopSDK::Models::PartnerReferredUsersResponse::Data::User::ProfilePicture::OrHash
            ).void
          end
          attr_writer :profile_picture

          sig do
            params(
              id: String,
              username: String,
              city: T.nilable(String),
              country: T.nilable(String),
              name: T.nilable(String),
              profile_picture:
                WhopSDK::Models::PartnerReferredUsersResponse::Data::User::ProfilePicture::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            username:,
            city: nil,
            country: nil,
            name: nil,
            profile_picture: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                username: String,
                city: T.nilable(String),
                country: T.nilable(String),
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::Models::PartnerReferredUsersResponse::Data::User::ProfilePicture
              }
            )
          end
          def to_hash
          end

          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PartnerReferredUsersResponse::Data::User::ProfilePicture,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :url

            sig { params(url: T.nilable(String)).returns(T.attached_class) }
            def self.new(url: nil)
            end

            sig { override.returns({ url: T.nilable(String) }) }
            def to_hash
            end
          end
        end
      end

      class PageInfo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PartnerReferredUsersResponse::PageInfo,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :end_cursor

        sig { returns(T::Boolean) }
        attr_accessor :has_next_page

        sig { returns(T::Boolean) }
        attr_accessor :has_previous_page

        sig { returns(T.nilable(String)) }
        attr_accessor :start_cursor

        sig do
          params(
            end_cursor: T.nilable(String),
            has_next_page: T::Boolean,
            has_previous_page: T::Boolean,
            start_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          end_cursor:,
          has_next_page:,
          has_previous_page:,
          start_cursor:
        )
        end

        sig do
          override.returns(
            {
              end_cursor: T.nilable(String),
              has_next_page: T::Boolean,
              has_previous_page: T::Boolean,
              start_cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
