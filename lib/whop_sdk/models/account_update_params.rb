# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#update
    class AccountUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute affiliate_application_required
      #   Whether prospective affiliates must submit an application before promoting this
      #   account.
      #
      #   @return [Boolean, nil]
      optional :affiliate_application_required, WhopSDK::Internal::Type::Boolean

      # @!attribute affiliate_instructions
      #   Guidelines shown to affiliates promoting this account.
      #
      #   @return [String, nil]
      optional :affiliate_instructions, String, nil?: true

      # @!attribute banner_image
      #   Attachment input for the account banner image.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :banner_image, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute business_address
      #   Account business address used to calculate tax. A complete address in a
      #   supported country is required when `tax_remitted_by` is `self`.
      #
      #   @return [WhopSDK::Models::AccountUpdateParams::BusinessAddress, nil]
      optional :business_address, -> { WhopSDK::AccountUpdateParams::BusinessAddress }

      # @!attribute business_type
      #   High-level business category for the account.
      #
      #   @return [String, nil]
      optional :business_type, String, nil?: true

      # @!attribute country
      #   Country where the account is located.
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute description
      #   Account promotional description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute featured_affiliate_product_id
      #   The ID of the product to feature for affiliates. Pass `null` to clear.
      #
      #   @return [String, nil]
      optional :featured_affiliate_product_id, String, nil?: true

      # @!attribute home_preferences
      #   Public account home page preferences.
      #
      #   @return [Array<String>, nil]
      optional :home_preferences, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute industry_group
      #   Account industry group.
      #
      #   @return [String, nil]
      optional :industry_group, String, nil?: true

      # @!attribute industry_type
      #   Specific industry vertical for the account.
      #
      #   @return [String, nil]
      optional :industry_type, String, nil?: true

      # @!attribute invoice_prefix
      #   Prefix used for account invoices.
      #
      #   @return [String, nil]
      optional :invoice_prefix, String, nil?: true

      # @!attribute logo
      #   Attachment input for the account logo.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :logo, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute metadata
      #   Arbitrary key/value metadata to store on the account.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute onboarding_type
      #   The type of onboarding the account has completed.
      #
      #   @return [String, nil]
      optional :onboarding_type, String, nil?: true

      # @!attribute opengraph_image
      #   Attachment input for the account Open Graph image.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :opengraph_image, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute opengraph_image_variant
      #   The account Open Graph image variant.
      #
      #   @return [String, nil]
      optional :opengraph_image_variant, String, nil?: true

      # @!attribute other_business_description
      #   The description of the business type when business_type is other.
      #
      #   @return [String, nil]
      optional :other_business_description, String, nil?: true

      # @!attribute other_industry_description
      #   The description of the industry type when industry_type is other.
      #
      #   @return [String, nil]
      optional :other_industry_description, String, nil?: true

      # @!attribute product_tax_code_id
      #   ID of the tax classification code applied by default to the account's products.
      #   See the available
      #   [product categories](https://docs.numeral.com/essentials/product-categories).
      #
      #   @return [String, nil]
      optional :product_tax_code_id, String, nil?: true

      # @!attribute require_2fa
      #   Whether the account requires authorized users to have two-factor authentication
      #   enabled.
      #
      #   @return [Boolean, nil]
      optional :require_2fa, WhopSDK::Internal::Type::Boolean

      # @!attribute route
      #   The unique URL slug for the account.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails to customers on behalf of this account.
      #
      #   @return [Boolean, nil]
      optional :send_customer_emails, WhopSDK::Internal::Type::Boolean

      # @!attribute show_joined_whops
      #   Whether the account appears in joined whops on other accounts.
      #
      #   @return [Boolean, nil]
      optional :show_joined_whops, WhopSDK::Internal::Type::Boolean

      # @!attribute show_reviews_dtc
      #   Whether reviews are displayed on direct-to-consumer product pages.
      #
      #   @return [Boolean, nil]
      optional :show_reviews_dtc, WhopSDK::Internal::Type::Boolean

      # @!attribute show_user_directory
      #   Whether the account shows users in the user directory.
      #
      #   @return [Boolean, nil]
      optional :show_user_directory, WhopSDK::Internal::Type::Boolean

      # @!attribute social_links
      #   The full list of social links to display for the account.
      #
      #   @return [Array<Hash{Symbol=>Object}>, nil]
      optional :social_links,
               WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]]

      # @!attribute store_page_config
      #   Account store page display configuration.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :store_page_config,
               WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown],
               nil?: true

      # @!attribute target_audience
      #   The target audience for this account.
      #
      #   @return [String, nil]
      optional :target_audience, String, nil?: true

      # @!attribute tax_identifiers
      #   Account tax/VAT registrations to add or update. When `tax_remitted_by` is
      #   `self`, tax is calculated and collected only in the countries where the account
      #   holds a registration.
      #
      #   @return [Array<WhopSDK::Models::AccountUpdateParams::TaxIdentifier>, nil]
      optional :tax_identifiers,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountUpdateParams::TaxIdentifier] }

      # @!attribute tax_remitted_by
      #   Who calculates and remits tax for the account: `whop` (Whop calculates and
      #   remits), `self` (Whop calculates; the account collects and remits), or `none`
      #   (neither; the account is responsible). `self` requires a `business_address` in a
      #   supported country.
      #
      #   @return [Symbol, WhopSDK::Models::AccountUpdateParams::TaxRemittedBy, nil]
      optional :tax_remitted_by, enum: -> { WhopSDK::AccountUpdateParams::TaxRemittedBy }

      # @!attribute title
      #   The display name of the account.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute use_logo_as_opengraph_image_fallback
      #   Whether the account uses its logo as the fallback Open Graph image.
      #
      #   @return [Boolean, nil]
      optional :use_logo_as_opengraph_image_fallback, WhopSDK::Internal::Type::Boolean

      # @!method initialize(account_id:, affiliate_application_required: nil, affiliate_instructions: nil, banner_image: nil, business_address: nil, business_type: nil, country: nil, description: nil, featured_affiliate_product_id: nil, home_preferences: nil, industry_group: nil, industry_type: nil, invoice_prefix: nil, logo: nil, metadata: nil, onboarding_type: nil, opengraph_image: nil, opengraph_image_variant: nil, other_business_description: nil, other_industry_description: nil, product_tax_code_id: nil, require_2fa: nil, route: nil, send_customer_emails: nil, show_joined_whops: nil, show_reviews_dtc: nil, show_user_directory: nil, social_links: nil, store_page_config: nil, target_audience: nil, tax_identifiers: nil, tax_remitted_by: nil, title: nil, use_logo_as_opengraph_image_fallback: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccountUpdateParams} for more details.
      #
      #   @param account_id [String]
      #
      #   @param affiliate_application_required [Boolean] Whether prospective affiliates must submit an application before promoting this
      #
      #   @param affiliate_instructions [String, nil] Guidelines shown to affiliates promoting this account.
      #
      #   @param banner_image [Hash{Symbol=>Object}, nil] Attachment input for the account banner image.
      #
      #   @param business_address [WhopSDK::Models::AccountUpdateParams::BusinessAddress] Account business address used to calculate tax. A complete address in a supporte
      #
      #   @param business_type [String, nil] High-level business category for the account.
      #
      #   @param country [String, nil] Country where the account is located.
      #
      #   @param description [String, nil] Account promotional description.
      #
      #   @param featured_affiliate_product_id [String, nil] The ID of the product to feature for affiliates. Pass `null` to clear.
      #
      #   @param home_preferences [Array<String>] Public account home page preferences.
      #
      #   @param industry_group [String, nil] Account industry group.
      #
      #   @param industry_type [String, nil] Specific industry vertical for the account.
      #
      #   @param invoice_prefix [String, nil] Prefix used for account invoices.
      #
      #   @param logo [Hash{Symbol=>Object}, nil] Attachment input for the account logo.
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary key/value metadata to store on the account.
      #
      #   @param onboarding_type [String, nil] The type of onboarding the account has completed.
      #
      #   @param opengraph_image [Hash{Symbol=>Object}, nil] Attachment input for the account Open Graph image.
      #
      #   @param opengraph_image_variant [String, nil] The account Open Graph image variant.
      #
      #   @param other_business_description [String, nil] The description of the business type when business_type is other.
      #
      #   @param other_industry_description [String, nil] The description of the industry type when industry_type is other.
      #
      #   @param product_tax_code_id [String, nil] ID of the tax classification code applied by default to the account's products.
      #
      #   @param require_2fa [Boolean] Whether the account requires authorized users to have two-factor authentication
      #
      #   @param route [String, nil] The unique URL slug for the account.
      #
      #   @param send_customer_emails [Boolean] Whether Whop sends transactional emails to customers on behalf of this account.
      #
      #   @param show_joined_whops [Boolean] Whether the account appears in joined whops on other accounts.
      #
      #   @param show_reviews_dtc [Boolean] Whether reviews are displayed on direct-to-consumer product pages.
      #
      #   @param show_user_directory [Boolean] Whether the account shows users in the user directory.
      #
      #   @param social_links [Array<Hash{Symbol=>Object}>] The full list of social links to display for the account.
      #
      #   @param store_page_config [Hash{Symbol=>Object}, nil] Account store page display configuration.
      #
      #   @param target_audience [String, nil] The target audience for this account.
      #
      #   @param tax_identifiers [Array<WhopSDK::Models::AccountUpdateParams::TaxIdentifier>] Account tax/VAT registrations to add or update. When `tax_remitted_by` is `self`
      #
      #   @param tax_remitted_by [Symbol, WhopSDK::Models::AccountUpdateParams::TaxRemittedBy] Who calculates and remits tax for the account: `whop` (Whop calculates and remit
      #
      #   @param title [String, nil] The display name of the account.
      #
      #   @param use_logo_as_opengraph_image_fallback [Boolean] Whether the account uses its logo as the fallback Open Graph image.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class BusinessAddress < WhopSDK::Internal::Type::BaseModel
        # @!attribute city
        #   City name.
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute country
        #   Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute line1
        #   First line of the street address.
        #
        #   @return [String, nil]
        optional :line1, String

        # @!attribute line2
        #   Second line of the street address.
        #
        #   @return [String, nil]
        optional :line2, String, nil?: true

        # @!attribute postal_code
        #   Postal or ZIP code.
        #
        #   @return [String, nil]
        optional :postal_code, String, nil?: true

        # @!attribute state
        #   State, province, or region code, for example `CA`.
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
        #   Account business address used to calculate tax. A complete address in a
        #   supported country is required when `tax_remitted_by` is `self`.
        #
        #   @param city [String, nil] City name.
        #
        #   @param country [String] Two-letter ISO 3166-1 country code, for example `US`, `DE`, or `GB`.
        #
        #   @param line1 [String] First line of the street address.
        #
        #   @param line2 [String, nil] Second line of the street address.
        #
        #   @param postal_code [String, nil] Postal or ZIP code.
        #
        #   @param state [String, nil] State, province, or region code, for example `CA`.
      end

      class TaxIdentifier < WhopSDK::Internal::Type::BaseModel
        # @!attribute tax_id_type
        #   Tax ID type, for example `eu_vat`, `gb_vat`, or `us_ein`.
        #
        #   @return [Symbol, WhopSDK::Models::AccountUpdateParams::TaxIdentifier::TaxIDType]
        required :tax_id_type, enum: -> { WhopSDK::AccountUpdateParams::TaxIdentifier::TaxIDType }

        # @!attribute tax_id_value
        #   Tax ID value, for example `DE123456789`.
        #
        #   @return [String]
        required :tax_id_value, String

        # @!method initialize(tax_id_type:, tax_id_value:)
        #   @param tax_id_type [Symbol, WhopSDK::Models::AccountUpdateParams::TaxIdentifier::TaxIDType] Tax ID type, for example `eu_vat`, `gb_vat`, or `us_ein`.
        #
        #   @param tax_id_value [String] Tax ID value, for example `DE123456789`.

        # Tax ID type, for example `eu_vat`, `gb_vat`, or `us_ein`.
        #
        # @see WhopSDK::Models::AccountUpdateParams::TaxIdentifier#tax_id_type
        module TaxIDType
          extend WhopSDK::Internal::Type::Enum

          AD_NRT = :ad_nrt
          AO_TIN = :ao_tin
          AR_CUIT = :ar_cuit
          AL_TIN = :al_tin
          AM_TIN = :am_tin
          AW_TIN = :aw_tin
          AU_ABN = :au_abn
          AU_ARN = :au_arn
          EU_VAT = :eu_vat
          AZ_TIN = :az_tin
          BS_TIN = :bs_tin
          BH_VAT = :bh_vat
          BD_BIN = :bd_bin
          BB_TIN = :bb_tin
          BY_TIN = :by_tin
          BJ_IFU = :bj_ifu
          BO_TIN = :bo_tin
          BA_TIN = :ba_tin
          BR_CNPJ = :br_cnpj
          BR_CPF = :br_cpf
          BG_UIC = :bg_uic
          BF_IFU = :bf_ifu
          KH_TIN = :kh_tin
          CM_NIU = :cm_niu
          CA_BN = :ca_bn
          CA_GST_HST = :ca_gst_hst
          CA_PST_BC = :ca_pst_bc
          CA_PST_MB = :ca_pst_mb
          CA_PST_SK = :ca_pst_sk
          CA_QST = :ca_qst
          CV_NIF = :cv_nif
          CL_TIN = :cl_tin
          CN_TIN = :cn_tin
          CO_NIT = :co_nit
          CD_NIF = :cd_nif
          CR_TIN = :cr_tin
          HR_OIB = :hr_oib
          DO_RCN = :do_rcn
          EC_RUC = :ec_ruc
          EG_TIN = :eg_tin
          SV_NIT = :sv_nit
          ET_TIN = :et_tin
          EU_OSS_VAT = :eu_oss_vat
          GE_VAT = :ge_vat
          GH_TIN = :gh_tin
          DE_STN = :de_stn
          GB_VAT = :gb_vat
          GN_NIF = :gn_nif
          HK_BR = :hk_br
          HU_TIN = :hu_tin
          IS_VAT = :is_vat
          IN_GST = :in_gst
          ID_NPWP = :id_npwp
          IL_VAT = :il_vat
          JP_CN = :jp_cn
          JP_RN = :jp_rn
          JP_TRN = :jp_trn
          KZ_BIN = :kz_bin
          KE_PIN = :ke_pin
          KG_TIN = :kg_tin
          LA_TIN = :la_tin
          LI_UID = :li_uid
          LI_VAT = :li_vat
          MY_FRP = :my_frp
          MY_ITN = :my_itn
          MY_SST = :my_sst
          MR_NIF = :mr_nif
          MX_RFC = :mx_rfc
          MD_VAT = :md_vat
          ME_PIB = :me_pib
          MA_VAT = :ma_vat
          NP_PAN = :np_pan
          NZ_GST = :nz_gst
          NG_TIN = :ng_tin
          MK_VAT = :mk_vat
          NO_VAT = :no_vat
          NO_VOEC = :no_voec
          OM_VAT = :om_vat
          PE_RUC = :pe_ruc
          PH_TIN = :ph_tin
          RO_TIN = :ro_tin
          RU_INN = :ru_inn
          RU_KPP = :ru_kpp
          SA_VAT = :sa_vat
          SN_NINEA = :sn_ninea
          RS_PIB = :rs_pib
          SG_GST = :sg_gst
          SG_UEN = :sg_uen
          SI_TIN = :si_tin
          ZA_VAT = :za_vat
          KR_BRN = :kr_brn
          ES_CIF = :es_cif
          CH_UID = :ch_uid
          CH_VAT = :ch_vat
          TW_VAT = :tw_vat
          TJ_TIN = :tj_tin
          TZ_VAT = :tz_vat
          TH_VAT = :th_vat
          TR_TIN = :tr_tin
          UG_TIN = :ug_tin
          UA_VAT = :ua_vat
          AE_TRN = :ae_trn
          US_EIN = :us_ein
          UY_RUC = :uy_ruc
          UZ_TIN = :uz_tin
          UZ_VAT = :uz_vat
          VE_RIF = :ve_rif
          VN_TIN = :vn_tin
          ZM_TIN = :zm_tin
          ZW_TIN = :zw_tin
          SR_FIN = :sr_fin

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Who calculates and remits tax for the account: `whop` (Whop calculates and
      # remits), `self` (Whop calculates; the account collects and remits), or `none`
      # (neither; the account is responsible). `self` requires a `business_address` in a
      # supported country.
      module TaxRemittedBy
        extend WhopSDK::Internal::Type::Enum

        WHOP = :whop
        SELF = :self
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
