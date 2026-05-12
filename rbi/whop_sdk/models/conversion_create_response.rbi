# typed: strong

module WhopSDK
  module Models
    class ConversionCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::ConversionCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the conversion
      sig { returns(String) }
      attr_accessor :id

      # A tracked conversion event
      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # The unique identifier for the conversion
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
