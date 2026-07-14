# typed: strong

module WhopSDK
  module Models
    class AccountUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_id

      # Whether prospective affiliates must submit an application before promoting this
      # account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :affiliate_application_required

      sig { params(affiliate_application_required: T::Boolean).void }
      attr_writer :affiliate_application_required

      # Guidelines shown to affiliates promoting this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_instructions

      # Attachment input for the account banner image.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :banner_image

      # Account business address used to calculate tax. A complete address in a
      # supported country is required when `tax_remitted_by` is `self`.
      sig { returns(T.nilable(WhopSDK::AccountUpdateParams::BusinessAddress)) }
      attr_reader :business_address

      sig do
        params(
          business_address:
            WhopSDK::AccountUpdateParams::BusinessAddress::OrHash
        ).void
      end
      attr_writer :business_address

      # High-level business category for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :business_type

      # Country where the account is located.
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # Account promotional description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The ID of the product to feature for affiliates. Pass `null` to clear.
      sig { returns(T.nilable(String)) }
      attr_accessor :featured_affiliate_product_id

      # Public account home page preferences.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :home_preferences

      sig { params(home_preferences: T::Array[String]).void }
      attr_writer :home_preferences

      # Account industry group.
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_group

      # Specific industry vertical for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_type

      # Prefix used for account invoices.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_prefix

      # Attachment input for the account logo.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :logo

      # Arbitrary key/value metadata to store on the account.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # The type of onboarding the account has completed.
      sig { returns(T.nilable(String)) }
      attr_accessor :onboarding_type

      # Attachment input for the account Open Graph image.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :opengraph_image

      # The account Open Graph image variant.
      sig { returns(T.nilable(String)) }
      attr_accessor :opengraph_image_variant

      # The description of the business type when business_type is other.
      sig { returns(T.nilable(String)) }
      attr_accessor :other_business_description

      # The description of the industry type when industry_type is other.
      sig { returns(T.nilable(String)) }
      attr_accessor :other_industry_description

      # ID of the tax classification code applied by default to the account's products.
      # See the available
      # [product categories](https://docs.numeral.com/essentials/product-categories).
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # Whether the account requires authorized users to have two-factor authentication
      # enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_2fa

      sig { params(require_2fa: T::Boolean).void }
      attr_writer :require_2fa

      # The unique URL slug for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Whether Whop sends transactional emails to customers on behalf of this account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_customer_emails

      sig { params(send_customer_emails: T::Boolean).void }
      attr_writer :send_customer_emails

      # Whether the account appears in joined whops on other accounts.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_joined_whops

      sig { params(show_joined_whops: T::Boolean).void }
      attr_writer :show_joined_whops

      # Whether reviews are displayed on direct-to-consumer product pages.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_reviews_dtc

      sig { params(show_reviews_dtc: T::Boolean).void }
      attr_writer :show_reviews_dtc

      # Whether the account shows users in the user directory.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_user_directory

      sig { params(show_user_directory: T::Boolean).void }
      attr_writer :show_user_directory

      # The full list of social links to display for the account.
      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :social_links

      sig { params(social_links: T::Array[T::Hash[Symbol, T.anything]]).void }
      attr_writer :social_links

      # Account store page display configuration.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :store_page_config

      # The target audience for this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :target_audience

      # Account tax/VAT registrations to add or update. When `tax_remitted_by` is
      # `self`, tax is calculated and collected only in the countries where the account
      # holds a registration.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::AccountUpdateParams::TaxIdentifier])
        )
      end
      attr_reader :tax_identifiers

      sig do
        params(
          tax_identifiers:
            T::Array[WhopSDK::AccountUpdateParams::TaxIdentifier::OrHash]
        ).void
      end
      attr_writer :tax_identifiers

      # Who calculates and remits tax for the account: `whop` (Whop calculates and
      # remits), `self` (Whop calculates; the account collects and remits), or `none`
      # (neither; the account is responsible). `self` requires a `business_address` in a
      # supported country.
      sig do
        returns(
          T.nilable(WhopSDK::AccountUpdateParams::TaxRemittedBy::OrSymbol)
        )
      end
      attr_reader :tax_remitted_by

      sig do
        params(
          tax_remitted_by: WhopSDK::AccountUpdateParams::TaxRemittedBy::OrSymbol
        ).void
      end
      attr_writer :tax_remitted_by

      # The display name of the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Whether the account uses its logo as the fallback Open Graph image.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_logo_as_opengraph_image_fallback

      sig { params(use_logo_as_opengraph_image_fallback: T::Boolean).void }
      attr_writer :use_logo_as_opengraph_image_fallback

      sig do
        params(
          account_id: String,
          affiliate_application_required: T::Boolean,
          affiliate_instructions: T.nilable(String),
          banner_image: T.nilable(T::Hash[Symbol, T.anything]),
          business_address:
            WhopSDK::AccountUpdateParams::BusinessAddress::OrHash,
          business_type: T.nilable(String),
          country: T.nilable(String),
          description: T.nilable(String),
          featured_affiliate_product_id: T.nilable(String),
          home_preferences: T::Array[String],
          industry_group: T.nilable(String),
          industry_type: T.nilable(String),
          invoice_prefix: T.nilable(String),
          logo: T.nilable(T::Hash[Symbol, T.anything]),
          metadata: T::Hash[Symbol, T.anything],
          onboarding_type: T.nilable(String),
          opengraph_image: T.nilable(T::Hash[Symbol, T.anything]),
          opengraph_image_variant: T.nilable(String),
          other_business_description: T.nilable(String),
          other_industry_description: T.nilable(String),
          product_tax_code_id: T.nilable(String),
          require_2fa: T::Boolean,
          route: T.nilable(String),
          send_customer_emails: T::Boolean,
          show_joined_whops: T::Boolean,
          show_reviews_dtc: T::Boolean,
          show_user_directory: T::Boolean,
          social_links: T::Array[T::Hash[Symbol, T.anything]],
          store_page_config: T.nilable(T::Hash[Symbol, T.anything]),
          target_audience: T.nilable(String),
          tax_identifiers:
            T::Array[WhopSDK::AccountUpdateParams::TaxIdentifier::OrHash],
          tax_remitted_by:
            WhopSDK::AccountUpdateParams::TaxRemittedBy::OrSymbol,
          title: T.nilable(String),
          use_logo_as_opengraph_image_fallback: T::Boolean,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
        # Whether prospective affiliates must submit an application before promoting this
        # account.
        affiliate_application_required: nil,
        # Guidelines shown to affiliates promoting this account.
        affiliate_instructions: nil,
        # Attachment input for the account banner image.
        banner_image: nil,
        # Account business address used to calculate tax. A complete address in a
        # supported country is required when `tax_remitted_by` is `self`.
        business_address: nil,
        # High-level business category for the account.
        business_type: nil,
        # Country where the account is located.
        country: nil,
        # Account promotional description.
        description: nil,
        # The ID of the product to feature for affiliates. Pass `null` to clear.
        featured_affiliate_product_id: nil,
        # Public account home page preferences.
        home_preferences: nil,
        # Account industry group.
        industry_group: nil,
        # Specific industry vertical for the account.
        industry_type: nil,
        # Prefix used for account invoices.
        invoice_prefix: nil,
        # Attachment input for the account logo.
        logo: nil,
        # Arbitrary key/value metadata to store on the account.
        metadata: nil,
        # The type of onboarding the account has completed.
        onboarding_type: nil,
        # Attachment input for the account Open Graph image.
        opengraph_image: nil,
        # The account Open Graph image variant.
        opengraph_image_variant: nil,
        # The description of the business type when business_type is other.
        other_business_description: nil,
        # The description of the industry type when industry_type is other.
        other_industry_description: nil,
        # ID of the tax classification code applied by default to the account's products.
        # See the available
        # [product categories](https://docs.numeral.com/essentials/product-categories).
        product_tax_code_id: nil,
        # Whether the account requires authorized users to have two-factor authentication
        # enabled.
        require_2fa: nil,
        # The unique URL slug for the account.
        route: nil,
        # Whether Whop sends transactional emails to customers on behalf of this account.
        send_customer_emails: nil,
        # Whether the account appears in joined whops on other accounts.
        show_joined_whops: nil,
        # Whether reviews are displayed on direct-to-consumer product pages.
        show_reviews_dtc: nil,
        # Whether the account shows users in the user directory.
        show_user_directory: nil,
        # The full list of social links to display for the account.
        social_links: nil,
        # Account store page display configuration.
        store_page_config: nil,
        # The target audience for this account.
        target_audience: nil,
        # Account tax/VAT registrations to add or update. When `tax_remitted_by` is
        # `self`, tax is calculated and collected only in the countries where the account
        # holds a registration.
        tax_identifiers: nil,
        # Who calculates and remits tax for the account: `whop` (Whop calculates and
        # remits), `self` (Whop calculates; the account collects and remits), or `none`
        # (neither; the account is responsible). `self` requires a `business_address` in a
        # supported country.
        tax_remitted_by: nil,
        # The display name of the account.
        title: nil,
        # Whether the account uses its logo as the fallback Open Graph image.
        use_logo_as_opengraph_image_fallback: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            affiliate_application_required: T::Boolean,
            affiliate_instructions: T.nilable(String),
            banner_image: T.nilable(T::Hash[Symbol, T.anything]),
            business_address: WhopSDK::AccountUpdateParams::BusinessAddress,
            business_type: T.nilable(String),
            country: T.nilable(String),
            description: T.nilable(String),
            featured_affiliate_product_id: T.nilable(String),
            home_preferences: T::Array[String],
            industry_group: T.nilable(String),
            industry_type: T.nilable(String),
            invoice_prefix: T.nilable(String),
            logo: T.nilable(T::Hash[Symbol, T.anything]),
            metadata: T::Hash[Symbol, T.anything],
            onboarding_type: T.nilable(String),
            opengraph_image: T.nilable(T::Hash[Symbol, T.anything]),
            opengraph_image_variant: T.nilable(String),
            other_business_description: T.nilable(String),
            other_industry_description: T.nilable(String),
            product_tax_code_id: T.nilable(String),
            require_2fa: T::Boolean,
            route: T.nilable(String),
            send_customer_emails: T::Boolean,
            show_joined_whops: T::Boolean,
            show_reviews_dtc: T::Boolean,
            show_user_directory: T::Boolean,
            social_links: T::Array[T::Hash[Symbol, T.anything]],
            store_page_config: T.nilable(T::Hash[Symbol, T.anything]),
            target_audience: T.nilable(String),
            tax_identifiers:
              T::Array[WhopSDK::AccountUpdateParams::TaxIdentifier],
            tax_remitted_by:
              WhopSDK::AccountUpdateParams::TaxRemittedBy::OrSymbol,
            title: T.nilable(String),
            use_logo_as_opengraph_image_fallback: T::Boolean,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BusinessAddress < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AccountUpdateParams::BusinessAddress,
              WhopSDK::Internal::AnyHash
            )
          end

        # City name.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # First line of the street address.
        sig { returns(T.nilable(String)) }
        attr_reader :line1

        sig { params(line1: String).void }
        attr_writer :line1

        # Second line of the street address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # Postal or ZIP code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # State, province, or region code, for example `CA`.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # Account business address used to calculate tax. A complete address in a
        # supported country is required when `tax_remitted_by` is `self`.
        sig do
          params(
            city: T.nilable(String),
            country: String,
            line1: String,
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # City name.
          city: nil,
          # Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
          country: nil,
          # First line of the street address.
          line1: nil,
          # Second line of the street address.
          line2: nil,
          # Postal or ZIP code.
          postal_code: nil,
          # State, province, or region code, for example `CA`.
          state: nil
        )
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              country: String,
              line1: String,
              line2: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class TaxIdentifier < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AccountUpdateParams::TaxIdentifier,
              WhopSDK::Internal::AnyHash
            )
          end

        # Tax ID type, for example `eu_vat`, `gb_vat`, or `us_ein`.
        sig do
          returns(
            WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::OrSymbol
          )
        end
        attr_accessor :tax_id_type

        # Tax ID value, for example `DE123456789`.
        sig { returns(String) }
        attr_accessor :tax_id_value

        sig do
          params(
            tax_id_type:
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::OrSymbol,
            tax_id_value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Tax ID type, for example `eu_vat`, `gb_vat`, or `us_ein`.
          tax_id_type:,
          # Tax ID value, for example `DE123456789`.
          tax_id_value:
        )
        end

        sig do
          override.returns(
            {
              tax_id_type:
                WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::OrSymbol,
              tax_id_value: String
            }
          )
        end
        def to_hash
        end

        # Tax ID type, for example `eu_vat`, `gb_vat`, or `us_ein`.
        module TaxIDType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_NRT =
            T.let(
              :ad_nrt,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          AO_TIN =
            T.let(
              :ao_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          AR_CUIT =
            T.let(
              :ar_cuit,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          AL_TIN =
            T.let(
              :al_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          AM_TIN =
            T.let(
              :am_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          AW_TIN =
            T.let(
              :aw_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          AU_ABN =
            T.let(
              :au_abn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          AU_ARN =
            T.let(
              :au_arn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          EU_VAT =
            T.let(
              :eu_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          AZ_TIN =
            T.let(
              :az_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BS_TIN =
            T.let(
              :bs_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BH_VAT =
            T.let(
              :bh_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BD_BIN =
            T.let(
              :bd_bin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BB_TIN =
            T.let(
              :bb_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BY_TIN =
            T.let(
              :by_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BJ_IFU =
            T.let(
              :bj_ifu,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BO_TIN =
            T.let(
              :bo_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BA_TIN =
            T.let(
              :ba_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BR_CNPJ =
            T.let(
              :br_cnpj,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BR_CPF =
            T.let(
              :br_cpf,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BG_UIC =
            T.let(
              :bg_uic,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          BF_IFU =
            T.let(
              :bf_ifu,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          KH_TIN =
            T.let(
              :kh_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CM_NIU =
            T.let(
              :cm_niu,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CA_BN =
            T.let(
              :ca_bn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CA_GST_HST =
            T.let(
              :ca_gst_hst,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CA_PST_BC =
            T.let(
              :ca_pst_bc,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CA_PST_MB =
            T.let(
              :ca_pst_mb,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CA_PST_SK =
            T.let(
              :ca_pst_sk,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CA_QST =
            T.let(
              :ca_qst,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CV_NIF =
            T.let(
              :cv_nif,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CL_TIN =
            T.let(
              :cl_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CN_TIN =
            T.let(
              :cn_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CO_NIT =
            T.let(
              :co_nit,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CD_NIF =
            T.let(
              :cd_nif,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CR_TIN =
            T.let(
              :cr_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          HR_OIB =
            T.let(
              :hr_oib,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          DO_RCN =
            T.let(
              :do_rcn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          EC_RUC =
            T.let(
              :ec_ruc,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          EG_TIN =
            T.let(
              :eg_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          SV_NIT =
            T.let(
              :sv_nit,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          ET_TIN =
            T.let(
              :et_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          EU_OSS_VAT =
            T.let(
              :eu_oss_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          GE_VAT =
            T.let(
              :ge_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          GH_TIN =
            T.let(
              :gh_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          DE_STN =
            T.let(
              :de_stn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          GB_VAT =
            T.let(
              :gb_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          GN_NIF =
            T.let(
              :gn_nif,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          HK_BR =
            T.let(
              :hk_br,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          HU_TIN =
            T.let(
              :hu_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          IS_VAT =
            T.let(
              :is_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          IN_GST =
            T.let(
              :in_gst,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          ID_NPWP =
            T.let(
              :id_npwp,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          IL_VAT =
            T.let(
              :il_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          JP_CN =
            T.let(
              :jp_cn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          JP_RN =
            T.let(
              :jp_rn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          JP_TRN =
            T.let(
              :jp_trn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          KZ_BIN =
            T.let(
              :kz_bin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          KE_PIN =
            T.let(
              :ke_pin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          KG_TIN =
            T.let(
              :kg_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          LA_TIN =
            T.let(
              :la_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          LI_UID =
            T.let(
              :li_uid,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          LI_VAT =
            T.let(
              :li_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          MY_FRP =
            T.let(
              :my_frp,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          MY_ITN =
            T.let(
              :my_itn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          MY_SST =
            T.let(
              :my_sst,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          MR_NIF =
            T.let(
              :mr_nif,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          MX_RFC =
            T.let(
              :mx_rfc,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          MD_VAT =
            T.let(
              :md_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          ME_PIB =
            T.let(
              :me_pib,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          MA_VAT =
            T.let(
              :ma_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          NP_PAN =
            T.let(
              :np_pan,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          NZ_GST =
            T.let(
              :nz_gst,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          NG_TIN =
            T.let(
              :ng_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          MK_VAT =
            T.let(
              :mk_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          NO_VAT =
            T.let(
              :no_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          NO_VOEC =
            T.let(
              :no_voec,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          OM_VAT =
            T.let(
              :om_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          PE_RUC =
            T.let(
              :pe_ruc,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          PH_TIN =
            T.let(
              :ph_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          RO_TIN =
            T.let(
              :ro_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          RU_INN =
            T.let(
              :ru_inn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          RU_KPP =
            T.let(
              :ru_kpp,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          SA_VAT =
            T.let(
              :sa_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          SN_NINEA =
            T.let(
              :sn_ninea,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          RS_PIB =
            T.let(
              :rs_pib,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          SG_GST =
            T.let(
              :sg_gst,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          SG_UEN =
            T.let(
              :sg_uen,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          SI_TIN =
            T.let(
              :si_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          ZA_VAT =
            T.let(
              :za_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          KR_BRN =
            T.let(
              :kr_brn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          ES_CIF =
            T.let(
              :es_cif,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CH_UID =
            T.let(
              :ch_uid,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          CH_VAT =
            T.let(
              :ch_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          TW_VAT =
            T.let(
              :tw_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          TJ_TIN =
            T.let(
              :tj_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          TZ_VAT =
            T.let(
              :tz_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          TH_VAT =
            T.let(
              :th_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          TR_TIN =
            T.let(
              :tr_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          UG_TIN =
            T.let(
              :ug_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          UA_VAT =
            T.let(
              :ua_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          AE_TRN =
            T.let(
              :ae_trn,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          US_EIN =
            T.let(
              :us_ein,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          UY_RUC =
            T.let(
              :uy_ruc,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          UZ_TIN =
            T.let(
              :uz_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          UZ_VAT =
            T.let(
              :uz_vat,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          VE_RIF =
            T.let(
              :ve_rif,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          VN_TIN =
            T.let(
              :vn_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          ZM_TIN =
            T.let(
              :zm_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          ZW_TIN =
            T.let(
              :zw_tin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )
          SR_FIN =
            T.let(
              :sr_fin,
              WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Who calculates and remits tax for the account: `whop` (Whop calculates and
      # remits), `self` (Whop calculates; the account collects and remits), or `none`
      # (neither; the account is responsible). `self` requires a `business_address` in a
      # supported country.
      module TaxRemittedBy
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AccountUpdateParams::TaxRemittedBy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WHOP =
          T.let(
            :whop,
            WhopSDK::AccountUpdateParams::TaxRemittedBy::TaggedSymbol
          )
        SELF =
          T.let(
            :self,
            WhopSDK::AccountUpdateParams::TaxRemittedBy::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            WhopSDK::AccountUpdateParams::TaxRemittedBy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AccountUpdateParams::TaxRemittedBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
