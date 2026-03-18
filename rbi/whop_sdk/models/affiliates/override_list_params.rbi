# typed: strong

module WhopSDK
  module Models
    module Affiliates
      class OverrideListParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Affiliates::OverrideListParams,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Returns the elements in the list that come after the specified cursor.
        sig { returns(T.nilable(String)) }
        attr_accessor :after

        # Returns the elements in the list that come before the specified cursor.
        sig { returns(T.nilable(String)) }
        attr_accessor :before

        # Returns the first _n_ elements from the list.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :first

        # Returns the last _n_ elements from the list.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :last

        # The role of an affiliate override (standard or rev_share)
        sig do
          returns(
            T.nilable(WhopSDK::Affiliates::AffiliateOverrideRoles::OrSymbol)
          )
        end
        attr_accessor :override_type

        sig do
          params(
            id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            override_type:
              T.nilable(WhopSDK::Affiliates::AffiliateOverrideRoles::OrSymbol),
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Returns the elements in the list that come after the specified cursor.
          after: nil,
          # Returns the elements in the list that come before the specified cursor.
          before: nil,
          # Returns the first _n_ elements from the list.
          first: nil,
          # Returns the last _n_ elements from the list.
          last: nil,
          # The role of an affiliate override (standard or rev_share)
          override_type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              after: T.nilable(String),
              before: T.nilable(String),
              first: T.nilable(Integer),
              last: T.nilable(Integer),
              override_type:
                T.nilable(
                  WhopSDK::Affiliates::AffiliateOverrideRoles::OrSymbol
                ),
              request_options: WhopSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
