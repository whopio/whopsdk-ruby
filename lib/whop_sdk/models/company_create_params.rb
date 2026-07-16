# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#create
    class CompanyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute title
      #   The display name of the company shown to customers.
      #
      #   @return [String]
      required :title, String

      # @!attribute country
      #   The available countries on the platform
      #
      #   @return [Symbol, WhopSDK::Models::CompanyCreateParams::Country, nil]
      optional :country, enum: -> { WhopSDK::CompanyCreateParams::Country }, nil?: true

      # @!attribute description
      #   A promotional pitch displayed to potential customers on the company's store
      #   page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute email
      #   The email address of the user who will own the connected account. Required when
      #   parent_company_id is provided.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute logo
      #   The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      #   @return [WhopSDK::Models::CompanyCreateParams::Logo, nil]
      optional :logo, -> { WhopSDK::CompanyCreateParams::Logo }, nil?: true

      # @!attribute metadata
      #   A key-value JSON object of custom metadata to store on the company.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute parent_company_id
      #   The unique identifier of the parent platform company. When provided, creates a
      #   connected account under that platform. Omit to create a company for the current
      #   user.
      #
      #   @return [String, nil]
      optional :parent_company_id, String, nil?: true

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails to customers on behalf of this company.
      #   Only applies when creating a connected account.
      #
      #   @return [Boolean, nil]
      optional :send_customer_emails, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(title:, country: nil, description: nil, email: nil, logo: nil, metadata: nil, parent_company_id: nil, send_customer_emails: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyCreateParams} for more details.
      #
      #   @param title [String] The display name of the company shown to customers.
      #
      #   @param country [Symbol, WhopSDK::Models::CompanyCreateParams::Country, nil] The available countries on the platform
      #
      #   @param description [String, nil] A promotional pitch displayed to potential customers on the company's store page
      #
      #   @param email [String, nil] The email address of the user who will own the connected account. Required when
      #
      #   @param logo [WhopSDK::Models::CompanyCreateParams::Logo, nil] The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] A key-value JSON object of custom metadata to store on the company.
      #
      #   @param parent_company_id [String, nil] The unique identifier of the parent platform company. When provided, creates a c
      #
      #   @param send_customer_emails [Boolean, nil] Whether Whop sends transactional emails to customers on behalf of this company.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The available countries on the platform
      module Country
        extend WhopSDK::Internal::Type::Enum

        US = :us
        CA = :ca
        GB = :gb
        AB = :ab
        AF = :af
        AL = :al
        DZ = :dz
        AS = :as
        AD = :ad
        AO = :ao
        AI = :ai
        AQ = :aq
        AG = :ag
        AR = :ar
        AM = :am
        AW = :aw
        AU = :au
        AT = :at
        AZ = :az
        BS = :bs
        BH = :bh
        BD = :bd
        BB = :bb
        BY = :by
        BE = :be
        BZ = :bz
        BJ = :bj
        BM = :bm
        BT = :bt
        BO = :bo
        BA = :ba
        BW = :bw
        BR = :br
        IO = :io
        VG = :vg
        BN = :bn
        BG = :bg
        BF = :bf
        BI = :bi
        KH = :kh
        CM = :cm
        CV = :cv
        KY = :ky
        CF = :cf
        TD = :td
        CL = :cl
        CN = :cn
        CX = :cx
        CC = :cc
        CO = :co
        KM = :km
        CG = :cg
        CK = :ck
        CR = :cr
        CI = :ci
        HR = :hr
        CU = :cu
        CW = :cw
        CY = :cy
        CZ = :cz
        CD = :cd
        DK = :dk
        DJ = :dj
        DM = :dm
        DO = :do
        EC = :ec
        EG = :eg
        SV = :sv
        GQ = :gq
        EE = :ee
        ET = :et
        FK = :fk
        FO = :fo
        FJ = :fj
        FI = :fi
        FR = :fr
        GF = :gf
        PF = :pf
        GA = :ga
        GM = :gm
        GE = :ge
        DE = :de
        GH = :gh
        GI = :gi
        GR = :gr
        GL = :gl
        GD = :gd
        GP = :gp
        GU = :gu
        GT = :gt
        GG = :gg
        GN = :gn
        GW = :gw
        GY = :gy
        HT = :ht
        HN = :hn
        HK = :hk
        HU = :hu
        IS = :is
        IN = :in
        ID = :id
        IQ = :iq
        IE = :ie
        IM = :im
        IL = :il
        IT = :it
        JM = :jm
        SJ = :sj
        JP = :jp
        JE = :je
        JO = :jo
        KZ = :kz
        KE = :ke
        KI = :ki
        XK = :xk
        KW = :kw
        KG = :kg
        LA = :la
        LV = :lv
        LB = :lb
        LS = :ls
        LR = :lr
        LY = :ly
        LI = :li
        LT = :lt
        LU = :lu
        MO = :mo
        MK = :mk
        MG = :mg
        MW = :mw
        MY = :my
        MV = :mv
        ML = :ml
        MT = :mt
        MH = :mh
        MQ = :mq
        MR = :mr
        MU = :mu
        YT = :yt
        MX = :mx
        FM = :fm
        MD = :md
        MC = :mc
        MN = :mn
        ME = :me
        MS = :ms
        MA = :ma
        MZ = :mz
        MM = :mm
        NA = :na
        NR = :nr
        NP = :np
        NL = :nl
        AN = :an
        NC = :nc
        NZ = :nz
        NI = :ni
        NE = :ne
        NG = :ng
        NU = :nu
        MP = :mp
        NO = :no
        OM = :om
        PK = :pk
        PW = :pw
        PS = :ps
        PA = :pa
        PG = :pg
        PY = :py
        PE = :pe
        PH = :ph
        PN = :pn
        PL = :pl
        PT = :pt
        PR = :pr
        QA = :qa
        RE = :re
        RO = :ro
        RU = :ru
        RW = :rw
        BL = :bl
        SH = :sh
        KN = :kn
        LC = :lc
        MF = :mf
        PM = :pm
        VC = :vc
        WS = :ws
        SM = :sm
        ST = :st
        SA = :sa
        SN = :sn
        RS = :rs
        SC = :sc
        SL = :sl
        SG = :sg
        SX = :sx
        SK = :sk
        SI = :si
        SB = :sb
        SO = :so
        ZA = :za
        KR = :kr
        SS = :ss
        ES = :es
        LK = :lk
        SD = :sd
        SR = :sr
        SZ = :sz
        SE = :se
        CH = :ch
        TW = :tw
        TJ = :tj
        TZ = :tz
        TH = :th
        TL = :tl
        TG = :tg
        TK = :tk
        TO = :to
        TT = :tt
        TN = :tn
        TR = :tr
        TM = :tm
        TC = :tc
        TV = :tv
        VI = :vi
        UG = :ug
        UA = :ua
        AE = :ae
        UM = :um
        UY = :uy
        UZ = :uz
        VU = :vu
        VA = :va
        VE = :ve
        VN = :vn
        WF = :wf
        EH = :eh
        YE = :ye
        ZM = :zm
        ZW = :zw
        SY = :sy

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company's logo image. Accepts PNG, JPEG, or GIF format.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
