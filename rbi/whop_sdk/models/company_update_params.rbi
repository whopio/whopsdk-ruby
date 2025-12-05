# typed: strong

module WhopSDK
  module Models
    class CompanyUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CompanyUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The logo for the company in png, jpeg, or gif format
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID,
              WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithID
            )
          )
        )
      end
      attr_accessor :logo

      # The title of the company
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          logo:
            T.nilable(
              T.any(
                WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithID::OrHash
              )
            ),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The logo for the company in png, jpeg, or gif format
        logo: nil,
        # The title of the company
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            logo:
              T.nilable(
                T.any(
                  WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID,
                  WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithID
                )
              ),
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The logo for the company in png, jpeg, or gif format
      module Logo
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID,
              WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CompanyUpdateParams::Logo::AttachmentInputWithID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[WhopSDK::CompanyUpdateParams::Logo::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
