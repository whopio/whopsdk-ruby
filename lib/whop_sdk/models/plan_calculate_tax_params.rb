# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#calculate_tax
    class PlanCalculateTaxParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute address
      #   Buyer billing address used for tax calculation. Provide either `address.country`
      #   or `ip_address`; include state and postal code when available for more accurate
      #   results.
      #
      #   @return [WhopSDK::Models::PlanCalculateTaxParams::Address, nil]
      optional :address, -> { WhopSDK::PlanCalculateTaxParams::Address }, nil?: true

      # @!attribute ip_address
      #   Buyer IP address used to infer location when no billing address is provided.
      #
      #   @return [String, nil]
      optional :ip_address, String

      # @!attribute tax_ids
      #   Optional buyer tax ID for B2B exemptions. At most one entry is supported.
      #
      #   @return [Array<WhopSDK::Models::PlanCalculateTaxParams::TaxID>, nil]
      optional :tax_ids,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::PlanCalculateTaxParams::TaxID] },
               nil?: true

      # @!method initialize(id:, address: nil, ip_address: nil, tax_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PlanCalculateTaxParams} for more details.
      #
      #   @param id [String]
      #
      #   @param address [WhopSDK::Models::PlanCalculateTaxParams::Address, nil] Buyer billing address used for tax calculation. Provide either `address.country`
      #
      #   @param ip_address [String] Buyer IP address used to infer location when no billing address is provided.
      #
      #   @param tax_ids [Array<WhopSDK::Models::PlanCalculateTaxParams::TaxID>, nil] Optional buyer tax ID for B2B exemptions. At most one entry is supported.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Address < WhopSDK::Internal::Type::BaseModel
        # @!attribute country
        #   ISO 3166-1 alpha-2 country code, such as `US`, `DE`, or `GB`.
        #
        #   @return [String]
        required :country, String

        # @!attribute city
        #   City name.
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute line1
        #   First line of the street address.
        #
        #   @return [String, nil]
        optional :line1, String, nil?: true

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
        #   State, province, or region code, such as `CA`.
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!method initialize(country:, city: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
        #   Buyer billing address used for tax calculation. Provide either `address.country`
        #   or `ip_address`; include state and postal code when available for more accurate
        #   results.
        #
        #   @param country [String] ISO 3166-1 alpha-2 country code, such as `US`, `DE`, or `GB`.
        #
        #   @param city [String, nil] City name.
        #
        #   @param line1 [String, nil] First line of the street address.
        #
        #   @param line2 [String, nil] Second line of the street address.
        #
        #   @param postal_code [String, nil] Postal or ZIP code.
        #
        #   @param state [String, nil] State, province, or region code, such as `CA`.
      end

      class TaxID < WhopSDK::Internal::Type::BaseModel
        # @!attribute type
        #   Tax ID type, such as `eu_vat` for an EU VAT number.
        #
        #   @return [Symbol, WhopSDK::Models::PlanCalculateTaxParams::TaxID::Type, nil]
        optional :type, enum: -> { WhopSDK::PlanCalculateTaxParams::TaxID::Type }

        # @!attribute value
        #   Tax ID value, for example `DE123456789`.
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(type: nil, value: nil)
        #   @param type [Symbol, WhopSDK::Models::PlanCalculateTaxParams::TaxID::Type] Tax ID type, such as `eu_vat` for an EU VAT number.
        #
        #   @param value [String] Tax ID value, for example `DE123456789`.

        # Tax ID type, such as `eu_vat` for an EU VAT number.
        #
        # @see WhopSDK::Models::PlanCalculateTaxParams::TaxID#type
        module Type
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
    end
  end
end
