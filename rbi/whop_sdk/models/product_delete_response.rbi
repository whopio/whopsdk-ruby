# typed: strong

module WhopSDK
  module Models
    class ProductDeleteResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::ProductDeleteResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # ID of the deleted product.
      sig { returns(String) }
      attr_accessor :id

      # Always true.
      sig { returns(T::Boolean) }
      attr_accessor :deleted

      sig { params(id: String, deleted: T::Boolean).returns(T.attached_class) }
      def self.new(
        # ID of the deleted product.
        id:,
        # Always true.
        deleted:
      )
      end

      sig { override.returns({ id: String, deleted: T::Boolean }) }
      def to_hash
      end
    end
  end
end
