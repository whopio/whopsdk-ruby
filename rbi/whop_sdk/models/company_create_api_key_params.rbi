# typed: strong

module WhopSDK
  module Models
    class CompanyCreateAPIKeyParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CompanyCreateAPIKeyParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :parent_company_id

      # The unique identifier of the connected account to create the API key for (e.g.
      # 'biz_xxx').
      sig { returns(String) }
      attr_accessor :child_company_id

      # A human-readable name for the API key, such as 'Production API Key'.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Granular permission statements defining which actions this API key can perform.
      # Either permissions or role must be provided.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::CompanyCreateAPIKeyParams::Permission])
        )
      end
      attr_accessor :permissions

      # The different system roles that can be assigned.
      sig do
        returns(T.nilable(WhopSDK::CompanyCreateAPIKeyParams::Role::OrSymbol))
      end
      attr_accessor :role

      sig do
        params(
          parent_company_id: String,
          child_company_id: String,
          name: T.nilable(String),
          permissions:
            T.nilable(
              T::Array[WhopSDK::CompanyCreateAPIKeyParams::Permission::OrHash]
            ),
          role: T.nilable(WhopSDK::CompanyCreateAPIKeyParams::Role::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        parent_company_id:,
        # The unique identifier of the connected account to create the API key for (e.g.
        # 'biz_xxx').
        child_company_id:,
        # A human-readable name for the API key, such as 'Production API Key'.
        name: nil,
        # Granular permission statements defining which actions this API key can perform.
        # Either permissions or role must be provided.
        permissions: nil,
        # The different system roles that can be assigned.
        role: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            parent_company_id: String,
            child_company_id: String,
            name: T.nilable(String),
            permissions:
              T.nilable(
                T::Array[WhopSDK::CompanyCreateAPIKeyParams::Permission]
              ),
            role: T.nilable(WhopSDK::CompanyCreateAPIKeyParams::Role::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Permission < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyCreateAPIKeyParams::Permission,
              WhopSDK::Internal::AnyHash
            )
          end

        # Actions covered by this statement
        sig { returns(T::Array[String]) }
        attr_accessor :actions

        # Whether the actions are granted or denied
        sig { returns(T::Boolean) }
        attr_accessor :grant

        # Resource identifiers. Can look like 'biz*xxxx' or 'biz_xxx|pass*_|exp*xxx' or
        # 'biz_xxx|app_xxx' or 'biz_xxx|pass_xxx|exp_xxx' or 'biz_xxx|pass_xxx' or
        # 'biz_xxx|pass*_'
        sig { returns(T::Array[String]) }
        attr_accessor :resources

        # Input for a single permissions statement
        sig do
          params(
            actions: T::Array[String],
            grant: T::Boolean,
            resources: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Actions covered by this statement
          actions:,
          # Whether the actions are granted or denied
          grant:,
          # Resource identifiers. Can look like 'biz*xxxx' or 'biz_xxx|pass*_|exp*xxx' or
          # 'biz_xxx|app_xxx' or 'biz_xxx|pass_xxx|exp_xxx' or 'biz_xxx|pass_xxx' or
          # 'biz_xxx|pass*_'
          resources:
        )
        end

        sig do
          override.returns(
            {
              actions: T::Array[String],
              grant: T::Boolean,
              resources: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end

      # The different system roles that can be assigned.
      module Role
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CompanyCreateAPIKeyParams::Role)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OWNER =
          T.let(:owner, WhopSDK::CompanyCreateAPIKeyParams::Role::TaggedSymbol)
        ADMIN =
          T.let(:admin, WhopSDK::CompanyCreateAPIKeyParams::Role::TaggedSymbol)
        MODERATOR =
          T.let(
            :moderator,
            WhopSDK::CompanyCreateAPIKeyParams::Role::TaggedSymbol
          )
        SALES_MANAGER =
          T.let(
            :sales_manager,
            WhopSDK::CompanyCreateAPIKeyParams::Role::TaggedSymbol
          )
        ADVERTISER =
          T.let(
            :advertiser,
            WhopSDK::CompanyCreateAPIKeyParams::Role::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::CompanyCreateAPIKeyParams::Role::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
