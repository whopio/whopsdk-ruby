# typed: strong

module WhopSDK
  module Models
    module Affiliates
      class OverrideRetrieveParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Affiliates::OverrideRetrieveParams,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :override_id

        sig do
          params(
            id: String,
            override_id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, override_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              id: String,
              override_id: String,
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
