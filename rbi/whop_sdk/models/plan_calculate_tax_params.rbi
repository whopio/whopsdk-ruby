# typed: strong

module WhopSDK
  module Models
    class PlanCalculateTaxParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PlanCalculateTaxParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Buyer billing address used for tax calculation. Provide either `address.country`
      # or `ip_address`; include state and postal code when available for more accurate
      # results.
      sig { returns(T.nilable(WhopSDK::PlanCalculateTaxParams::Address)) }
      attr_reader :address

      sig do
        params(
          address: T.nilable(WhopSDK::PlanCalculateTaxParams::Address::OrHash)
        ).void
      end
      attr_writer :address

      # Buyer IP address used to infer location when no billing address is provided.
      sig { returns(T.nilable(String)) }
      attr_reader :ip_address

      sig { params(ip_address: String).void }
      attr_writer :ip_address

      # Optional buyer tax ID for B2B exemptions. At most one entry is supported.
      sig do
        returns(T.nilable(T::Array[WhopSDK::PlanCalculateTaxParams::TaxID]))
      end
      attr_accessor :tax_ids

      sig do
        params(
          id: String,
          address: T.nilable(WhopSDK::PlanCalculateTaxParams::Address::OrHash),
          ip_address: String,
          tax_ids:
            T.nilable(T::Array[WhopSDK::PlanCalculateTaxParams::TaxID::OrHash]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Buyer billing address used for tax calculation. Provide either `address.country`
        # or `ip_address`; include state and postal code when available for more accurate
        # results.
        address: nil,
        # Buyer IP address used to infer location when no billing address is provided.
        ip_address: nil,
        # Optional buyer tax ID for B2B exemptions. At most one entry is supported.
        tax_ids: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address: T.nilable(WhopSDK::PlanCalculateTaxParams::Address),
            ip_address: String,
            tax_ids:
              T.nilable(T::Array[WhopSDK::PlanCalculateTaxParams::TaxID]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Address < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PlanCalculateTaxParams::Address,
              WhopSDK::Internal::AnyHash
            )
          end

        # ISO 3166-1 alpha-2 country code, such as `US`, `DE`, or `GB`.
        sig { returns(String) }
        attr_accessor :country

        # City name.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # First line of the street address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # Second line of the street address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # Postal or ZIP code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # State, province, or region code, such as `CA`.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # Buyer billing address used for tax calculation. Provide either `address.country`
        # or `ip_address`; include state and postal code when available for more accurate
        # results.
        sig do
          params(
            country: String,
            city: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # ISO 3166-1 alpha-2 country code, such as `US`, `DE`, or `GB`.
          country:,
          # City name.
          city: nil,
          # First line of the street address.
          line1: nil,
          # Second line of the street address.
          line2: nil,
          # Postal or ZIP code.
          postal_code: nil,
          # State, province, or region code, such as `CA`.
          state: nil
        )
        end

        sig do
          override.returns(
            {
              country: String,
              city: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class TaxID < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PlanCalculateTaxParams::TaxID,
              WhopSDK::Internal::AnyHash
            )
          end

        # Tax ID type, such as `eu_vat` for an EU VAT number.
        sig do
          returns(
            T.nilable(WhopSDK::PlanCalculateTaxParams::TaxID::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: WhopSDK::PlanCalculateTaxParams::TaxID::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Tax ID value, for example `DE123456789`.
        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        sig do
          params(
            type: WhopSDK::PlanCalculateTaxParams::TaxID::Type::OrSymbol,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Tax ID type, such as `eu_vat` for an EU VAT number.
          type: nil,
          # Tax ID value, for example `DE123456789`.
          value: nil
        )
        end

        sig do
          override.returns(
            {
              type: WhopSDK::PlanCalculateTaxParams::TaxID::Type::OrSymbol,
              value: String
            }
          )
        end
        def to_hash
        end

        # Tax ID type, such as `eu_vat` for an EU VAT number.
        module Type
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PlanCalculateTaxParams::TaxID::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_NRT =
            T.let(
              :ad_nrt,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          AO_TIN =
            T.let(
              :ao_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          AR_CUIT =
            T.let(
              :ar_cuit,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          AL_TIN =
            T.let(
              :al_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          AM_TIN =
            T.let(
              :am_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          AW_TIN =
            T.let(
              :aw_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          AU_ABN =
            T.let(
              :au_abn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          AU_ARN =
            T.let(
              :au_arn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          EU_VAT =
            T.let(
              :eu_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          AZ_TIN =
            T.let(
              :az_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BS_TIN =
            T.let(
              :bs_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BH_VAT =
            T.let(
              :bh_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BD_BIN =
            T.let(
              :bd_bin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BB_TIN =
            T.let(
              :bb_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BY_TIN =
            T.let(
              :by_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BJ_IFU =
            T.let(
              :bj_ifu,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BO_TIN =
            T.let(
              :bo_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BA_TIN =
            T.let(
              :ba_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BR_CNPJ =
            T.let(
              :br_cnpj,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BR_CPF =
            T.let(
              :br_cpf,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BG_UIC =
            T.let(
              :bg_uic,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          BF_IFU =
            T.let(
              :bf_ifu,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          KH_TIN =
            T.let(
              :kh_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CM_NIU =
            T.let(
              :cm_niu,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CA_BN =
            T.let(
              :ca_bn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CA_GST_HST =
            T.let(
              :ca_gst_hst,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CA_PST_BC =
            T.let(
              :ca_pst_bc,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CA_PST_MB =
            T.let(
              :ca_pst_mb,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CA_PST_SK =
            T.let(
              :ca_pst_sk,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CA_QST =
            T.let(
              :ca_qst,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CV_NIF =
            T.let(
              :cv_nif,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CL_TIN =
            T.let(
              :cl_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CN_TIN =
            T.let(
              :cn_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CO_NIT =
            T.let(
              :co_nit,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CD_NIF =
            T.let(
              :cd_nif,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CR_TIN =
            T.let(
              :cr_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          HR_OIB =
            T.let(
              :hr_oib,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          DO_RCN =
            T.let(
              :do_rcn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          EC_RUC =
            T.let(
              :ec_ruc,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          EG_TIN =
            T.let(
              :eg_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          SV_NIT =
            T.let(
              :sv_nit,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          ET_TIN =
            T.let(
              :et_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          EU_OSS_VAT =
            T.let(
              :eu_oss_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          GE_VAT =
            T.let(
              :ge_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          GH_TIN =
            T.let(
              :gh_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          DE_STN =
            T.let(
              :de_stn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          GB_VAT =
            T.let(
              :gb_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          GN_NIF =
            T.let(
              :gn_nif,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          HK_BR =
            T.let(
              :hk_br,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          HU_TIN =
            T.let(
              :hu_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          IS_VAT =
            T.let(
              :is_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          IN_GST =
            T.let(
              :in_gst,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          ID_NPWP =
            T.let(
              :id_npwp,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          IL_VAT =
            T.let(
              :il_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          JP_CN =
            T.let(
              :jp_cn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          JP_RN =
            T.let(
              :jp_rn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          JP_TRN =
            T.let(
              :jp_trn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          KZ_BIN =
            T.let(
              :kz_bin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          KE_PIN =
            T.let(
              :ke_pin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          KG_TIN =
            T.let(
              :kg_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          LA_TIN =
            T.let(
              :la_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          LI_UID =
            T.let(
              :li_uid,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          LI_VAT =
            T.let(
              :li_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          MY_FRP =
            T.let(
              :my_frp,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          MY_ITN =
            T.let(
              :my_itn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          MY_SST =
            T.let(
              :my_sst,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          MR_NIF =
            T.let(
              :mr_nif,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          MX_RFC =
            T.let(
              :mx_rfc,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          MD_VAT =
            T.let(
              :md_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          ME_PIB =
            T.let(
              :me_pib,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          MA_VAT =
            T.let(
              :ma_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          NP_PAN =
            T.let(
              :np_pan,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          NZ_GST =
            T.let(
              :nz_gst,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          NG_TIN =
            T.let(
              :ng_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          MK_VAT =
            T.let(
              :mk_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          NO_VAT =
            T.let(
              :no_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          NO_VOEC =
            T.let(
              :no_voec,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          OM_VAT =
            T.let(
              :om_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          PE_RUC =
            T.let(
              :pe_ruc,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          PH_TIN =
            T.let(
              :ph_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          RO_TIN =
            T.let(
              :ro_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          RU_INN =
            T.let(
              :ru_inn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          RU_KPP =
            T.let(
              :ru_kpp,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          SA_VAT =
            T.let(
              :sa_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          SN_NINEA =
            T.let(
              :sn_ninea,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          RS_PIB =
            T.let(
              :rs_pib,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          SG_GST =
            T.let(
              :sg_gst,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          SG_UEN =
            T.let(
              :sg_uen,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          SI_TIN =
            T.let(
              :si_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          ZA_VAT =
            T.let(
              :za_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          KR_BRN =
            T.let(
              :kr_brn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          ES_CIF =
            T.let(
              :es_cif,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CH_UID =
            T.let(
              :ch_uid,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          CH_VAT =
            T.let(
              :ch_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          TW_VAT =
            T.let(
              :tw_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          TJ_TIN =
            T.let(
              :tj_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          TZ_VAT =
            T.let(
              :tz_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          TH_VAT =
            T.let(
              :th_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          TR_TIN =
            T.let(
              :tr_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          UG_TIN =
            T.let(
              :ug_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          UA_VAT =
            T.let(
              :ua_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          AE_TRN =
            T.let(
              :ae_trn,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          US_EIN =
            T.let(
              :us_ein,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          UY_RUC =
            T.let(
              :uy_ruc,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          UZ_TIN =
            T.let(
              :uz_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          UZ_VAT =
            T.let(
              :uz_vat,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          VE_RIF =
            T.let(
              :ve_rif,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          VN_TIN =
            T.let(
              :vn_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          ZM_TIN =
            T.let(
              :zm_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          ZW_TIN =
            T.let(
              :zw_tin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )
          SR_FIN =
            T.let(
              :sr_fin,
              WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PlanCalculateTaxParams::TaxID::Type::TaggedSymbol
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
