# typed: strong

module Whopsdk
  module Models
    class Product < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Product, Whopsdk::Internal::AnyHash) }

      # The internal ID of the public access pass.
      sig { returns(String) }
      attr_accessor :id

      # The different business types a company can be.
      sig { returns(T.nilable(Whopsdk::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # A short type of the company that this access pass belongs to.
      sig { returns(Whopsdk::Product::Company) }
      attr_reader :company

      sig { params(company: Whopsdk::Product::Company::OrHash).void }
      attr_writer :company

      # When the access pass was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The custom call to action for the access pass.
      sig { returns(Whopsdk::CustomCta::TaggedSymbol) }
      attr_accessor :custom_cta

      # The custom call to action URL for the access pass, if any.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # The custom statement descriptor for the access pass.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # A short description of what the company offers or does.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The percentage of a transaction a user is eligible to earn from the whop
      # marketplace global affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # The status of the global affiliate program for this access pass.
      sig { returns(Whopsdk::GlobalAffiliateStatus::TaggedSymbol) }
      attr_accessor :global_affiliate_status

      # The headline of the access pass.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The different industry types a company can be in.
      sig { returns(T.nilable(Whopsdk::IndustryTypes::TaggedSymbol)) }
      attr_accessor :industry_type

      # The percentage of a transaction a user is eligible to earn from the whop
      # marketplace member affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # The status of the member affiliate program for this access pass.
      sig { returns(Whopsdk::GlobalAffiliateStatus::TaggedSymbol) }
      attr_accessor :member_affiliate_status

      # The number of active users for this access pass.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The user that owns the access pass (company owner).
      sig { returns(Whopsdk::Product::OwnerUser) }
      attr_reader :owner_user

      sig { params(owner_user: Whopsdk::Product::OwnerUser::OrHash).void }
      attr_writer :owner_user

      # The product tax code for the access pass, if any.
      sig { returns(T.nilable(Whopsdk::Product::ProductTaxCode)) }
      attr_reader :product_tax_code

      sig do
        params(
          product_tax_code: T.nilable(Whopsdk::Product::ProductTaxCode::OrHash)
        ).void
      end
      attr_writer :product_tax_code

      # The number of reviews that have been published for the access pass.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The route of the access pass.
      sig { returns(String) }
      attr_accessor :route

      # The title of the access pass. Use for Whop 4.0.
      sig { returns(String) }
      attr_accessor :title

      # When the access pass was updated.
      sig { returns(Integer) }
      attr_accessor :updated_at

      # Whether this product is Whop verified.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # This access pass will/will not be displayed publicly.
      sig { returns(Whopsdk::Visibility::TaggedSymbol) }
      attr_accessor :visibility

      # An object representing a (sanitized) access pass.
      sig do
        params(
          id: String,
          business_type: T.nilable(Whopsdk::BusinessTypes::OrSymbol),
          company: Whopsdk::Product::Company::OrHash,
          created_at: Integer,
          custom_cta: Whopsdk::CustomCta::OrSymbol,
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status: Whopsdk::GlobalAffiliateStatus::OrSymbol,
          headline: T.nilable(String),
          industry_type: T.nilable(Whopsdk::IndustryTypes::OrSymbol),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status: Whopsdk::GlobalAffiliateStatus::OrSymbol,
          member_count: Integer,
          owner_user: Whopsdk::Product::OwnerUser::OrHash,
          product_tax_code: T.nilable(Whopsdk::Product::ProductTaxCode::OrHash),
          published_reviews_count: Integer,
          route: String,
          title: String,
          updated_at: Integer,
          verified: T::Boolean,
          visibility: Whopsdk::Visibility::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The internal ID of the public access pass.
        id:,
        # The different business types a company can be.
        business_type:,
        # A short type of the company that this access pass belongs to.
        company:,
        # When the access pass was created.
        created_at:,
        # The custom call to action for the access pass.
        custom_cta:,
        # The custom call to action URL for the access pass, if any.
        custom_cta_url:,
        # The custom statement descriptor for the access pass.
        custom_statement_descriptor:,
        # A short description of what the company offers or does.
        description:,
        # The percentage of a transaction a user is eligible to earn from the whop
        # marketplace global affiliate program.
        global_affiliate_percentage:,
        # The status of the global affiliate program for this access pass.
        global_affiliate_status:,
        # The headline of the access pass.
        headline:,
        # The different industry types a company can be in.
        industry_type:,
        # The percentage of a transaction a user is eligible to earn from the whop
        # marketplace member affiliate program.
        member_affiliate_percentage:,
        # The status of the member affiliate program for this access pass.
        member_affiliate_status:,
        # The number of active users for this access pass.
        member_count:,
        # The user that owns the access pass (company owner).
        owner_user:,
        # The product tax code for the access pass, if any.
        product_tax_code:,
        # The number of reviews that have been published for the access pass.
        published_reviews_count:,
        # The route of the access pass.
        route:,
        # The title of the access pass. Use for Whop 4.0.
        title:,
        # When the access pass was updated.
        updated_at:,
        # Whether this product is Whop verified.
        verified:,
        # This access pass will/will not be displayed publicly.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_type: T.nilable(Whopsdk::BusinessTypes::TaggedSymbol),
            company: Whopsdk::Product::Company,
            created_at: Integer,
            custom_cta: Whopsdk::CustomCta::TaggedSymbol,
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            description: T.nilable(String),
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              Whopsdk::GlobalAffiliateStatus::TaggedSymbol,
            headline: T.nilable(String),
            industry_type: T.nilable(Whopsdk::IndustryTypes::TaggedSymbol),
            member_affiliate_percentage: T.nilable(Float),
            member_affiliate_status:
              Whopsdk::GlobalAffiliateStatus::TaggedSymbol,
            member_count: Integer,
            owner_user: Whopsdk::Product::OwnerUser,
            product_tax_code: T.nilable(Whopsdk::Product::ProductTaxCode),
            published_reviews_count: Integer,
            route: String,
            title: String,
            updated_at: Integer,
            verified: T::Boolean,
            visibility: Whopsdk::Visibility::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Company < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Product::Company, Whopsdk::Internal::AnyHash)
          end

        # The ID (tag) of the company.
        sig { returns(String) }
        attr_accessor :id

        # The slug/route of the company on the Whop site.
        sig { returns(String) }
        attr_accessor :route

        # The title of the company.
        sig { returns(String) }
        attr_accessor :title

        # A short type of the company that this access pass belongs to.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID (tag) of the company.
          id:,
          # The slug/route of the company on the Whop site.
          route:,
          # The title of the company.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end

      class OwnerUser < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Product::OwnerUser, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user that owns the access pass (company owner).
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end

      class ProductTaxCode < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Product::ProductTaxCode, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the product tax code.
        sig { returns(String) }
        attr_accessor :id

        # The name of the product tax code.
        sig { returns(String) }
        attr_accessor :name

        # The type of product this tax code applies to.
        sig do
          returns(Whopsdk::Product::ProductTaxCode::ProductType::TaggedSymbol)
        end
        attr_accessor :product_type

        # The product tax code for the access pass, if any.
        sig do
          params(
            id: String,
            name: String,
            product_type:
              Whopsdk::Product::ProductTaxCode::ProductType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the product tax code.
          id:,
          # The name of the product tax code.
          name:,
          # The type of product this tax code applies to.
          product_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              product_type:
                Whopsdk::Product::ProductTaxCode::ProductType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of product this tax code applies to.
        module ProductType
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Whopsdk::Product::ProductTaxCode::ProductType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PHYSICAL =
            T.let(
              :physical,
              Whopsdk::Product::ProductTaxCode::ProductType::TaggedSymbol
            )
          DIGITAL =
            T.let(
              :digital,
              Whopsdk::Product::ProductTaxCode::ProductType::TaggedSymbol
            )
          SERVICES =
            T.let(
              :services,
              Whopsdk::Product::ProductTaxCode::ProductType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::Product::ProductTaxCode::ProductType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
