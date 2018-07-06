# features/devis.feature
Feature: Devis
  In order to use the application
  I need to be able to read Devis trough the API.

  Scenario: Read List Devis If not authorized NOK
    When after authentication with method "POST" on "login_check" as "use" with password "tes", i send an authenticated "GET" request to "/api/devis" with body:
    Then the response status code should be 401
    And the response should be in JSON
    And the header "Content-Type" should be equal to "application/ld+json"

  @dropSchema
  Scenario: Read List Devis with filter If Authorized OK
    When after authentication with method "POST" on "login_check" as "user" with password "test", i send an authenticated "GET" request to "/api/devis" with body:
    Then the response status code should be 200
    And the response should be in JSON
    And the header "Content-Type" should be equal to "application/ld+json"
    And the JSON should be equal to:
    """
[
    {
        "IdDocDE": 180644,
        "DateRelDE": "2016-10-19",
        "IdSalRel": 24,
        "NatDE": "D",
        "DateRealDE": "2016-11-11",
        "lignes": [
            {
                "idDL": 1,
                "idDE": 1,
                "idDocDL": 1130163,
                "IdDocDE": 180644,
                "idDocSecDE": 0,
                "idAD": 903035,
                "numDL": 1,
                "nbUStoDL": 8,
                "uStoDL": "PCE",
                "montHTDL": 217.52,
                "montTTCDL": 261.02,
                "prixNetDL": 27.19,
                "nbUVteDL": 8,
                "uVteDL": "PCE",
                "comDL": "A2P*",
                "codEcoTaxeDL": "",
                "codTgapDL": "",
                "poidsUVteDL": 0,
                "montTVADL": 43.5,
                "montTgapDL": 0,
                "montParafDL": 0,
                "nbUCondDL": 8,
                "flgBonniDL": false,
                "typeQteDL": "S",
                "idPTA": 0,
                "idCel": 0,
                "montTTCComDL": 261.02,
                "montHTComDL": 217.52,
                "nbUVteComDL": 8,
                "flgVarDL": false,
                "nbUStoComDL": 8,
                "idTA": 1,
                "noAD": 29211,
                "codAD": "VO5101HDI+1N1",
                "codADDL": "VO5101HDI+1N1",
                "refDL": "CYLINDRE HDI+ A2P* LN SIMPLE   40  30X10  VACHETTE",
                "designationAD": "CYLINDRE HDI+ N1 LN SIMPLE 40 30X10 mm",
                "desi2Art": "",
                "hASH": "",
                "typePrixDL": "R",
                "comCel": "",
                "idExtDL": 0,
                "idFour": 1327,
                "nbUAchDL": 0,
                "dateModDL": "2016-10-24",
                "idTC": 608,
                "idDep": 1,
                "etatDL": "T",
                "codTVADL": "02",
                "uAchDL": "PCE",
                "typCvAchVteDL": true,
                "cvAchVteDL": 1,
                "prixAchDevDL": 37.82,
                "prixAchDL": 37.82,
                "prixDepConvDL": 17.473,
                "prixDepReelDL": 17.473,
                "prixNetConvDL": 17.473,
                "prixNetReelDL": 17.473,
                "prixRevConvDL": 17.473,
                "prixRevReelDL": 17.473,
                "nbDecPNetDL": 3,
                "nbDecPDepDL": 3,
                "nbDecPrixRendDL": 3,
                "nbDecPrixRevDL": 3,
                "codDevDL": "",
                "poidsUAchDL": 0,
                "volUAchDL": 0,
                "typePRDL": "02",
                "idPort": 0,
                "idEch": 0,
                "largDL": 0,
                "longDL": 0,
                "epaisDL": 0,
                "cvStoVteDL": 1,
                "typCvStoVteDL": true,
                "nbUStoCondVteDL": 1,
                "codParafDL": "",
                "condVteDL": "PCE",
                "typeLongDL": "0",
                "montEcoTaxeDL": 0,
                "prixTTCDL": 32.63,
                "montRevConvDL": 139.78,
                "montRevReDL": 139.78,
                "montHTAvecPortDL": 217.52,
                "idTar": 54115,
                "idTarPre": 0,
                "typeTarDL": "C",
                "codMethDL": "07",
                "typeSeuTarDL": "",
                "pRCAutoDL": 17.473,
                "pRRAutoDL": 17.473,
                "prixTarDL": 34.86,
                "idTarComp": 60808,
                "idTarComp2": 0,
                "idCas": 0,
                "remValDL": 10.63,
                "prixPubDL": 37.82,
                "coefDL": 1.5561,
                "remise1DL": 4,
                "remise2DL": 4,
                "remise3DL": 22,
                "comModPRDL": "",
                "dateModPRDL": "2016-10-12",
                "idUModPRDL": 0,
                "prixPortDL": 0,
                "margConvDL": 0,
                "cvVteVteDL": 0,
                "grpTarSeuDL": "",
                "margReelDL": 0
            },
            {
                "idDL": 2,
                "idDE": 1,
                "idDocDL": 1130164,
                "IdDocDE": 180644,
                "idDocSecDE": 0,
                "idAD": 851277,
                "numDL": 2,
                "nbUStoDL": 8,
                "uStoDL": "PCE",
                "montHTDL": 35.04,
                "montTTCDL": 42.05,
                "prixNetDL": 4.38,
                "nbUVteDL": 8,
                "uVteDL": "PCE",
                "comDL": "",
                "codEcoTaxeDL": "",
                "codTgapDL": "",
                "poidsUVteDL": 0,
                "montTVADL": 7.01,
                "montTgapDL": 0,
                "montParafDL": 0,
                "nbUCondDL": 8,
                "flgBonniDL": false,
                "typeQteDL": "S",
                "idPTA": 0,
                "idCel": 0,
                "montTTCComDL": 42.05,
                "montHTComDL": 35.04,
                "nbUVteComDL": 8,
                "flgVarDL": false,
                "nbUStoComDL": 8,
                "idTA": 1,
                "noAD": 29095,
                "codAD": "VOOCHDI+",
                "codADDL": "VOOCHDI+",
                "refDL": "MISE SUR COMBINAISON  OC  HDI +  VACHETTE",
                "designationAD": "MISE SUR COMBINAISON OC HDI +",
                "desi2Art": "",
                "hASH": "",
                "typePrixDL": "R",
                "comCel": "",
                "idExtDL": 0,
                "idFour": 1327,
                "nbUAchDL": 0,
                "dateModDL": "2016-10-24",
                "idTC": 608,
                "idDep": 1,
                "etatDL": "T",
                "codTVADL": "02",
                "uAchDL": "PCE",
                "typCvAchVteDL": true,
                "cvAchVteDL": 1,
                "prixAchDevDL": 6.09,
                "prixAchDL": 6.09,
                "prixDepConvDL": 2.814,
                "prixDepReelDL": 2.814,
                "prixNetConvDL": 2.814,
                "prixNetReelDL": 2.814,
                "prixRevConvDL": 2.814,
                "prixRevReelDL": 2.814,
                "nbDecPNetDL": 3,
                "nbDecPDepDL": 3,
                "nbDecPrixRendDL": 3,
                "nbDecPrixRevDL": 3,
                "codDevDL": "",
                "poidsUAchDL": 0,
                "volUAchDL": 0,
                "typePRDL": "02",
                "idPort": 0,
                "idEch": 0,
                "largDL": 0,
                "longDL": 0,
                "epaisDL": 0,
                "cvStoVteDL": 1,
                "typCvStoVteDL": true,
                "nbUStoCondVteDL": 1,
                "codParafDL": "",
                "condVteDL": "PCE",
                "typeLongDL": "0",
                "montEcoTaxeDL": 0,
                "prixTTCDL": 5.26,
                "montRevConvDL": 22.51,
                "montRevReDL": 22.51,
                "montHTAvecPortDL": 35.04,
                "idTar": 54115,
                "idTarPre": 0,
                "typeTarDL": "C",
                "codMethDL": "07",
                "typeSeuTarDL": "",
                "pRCAutoDL": 2.814,
                "pRRAutoDL": 2.814,
                "prixTarDL": 5.62,
                "idTarComp": 60808,
                "idTarComp2": 0,
                "idCas": 0,
                "remValDL": 1.71,
                "prixPubDL": 6.09,
                "coefDL": 1.5565,
                "remise1DL": 4,
                "remise2DL": 4,
                "remise3DL": 22,
                "comModPRDL": "",
                "dateModPRDL": "2016-10-12",
                "idUModPRDL": 0,
                "prixPortDL": 0,
                "margConvDL": 0,
                "cvVteVteDL": 0,
                "grpTarSeuDL": "",
                "margReelDL": 0
            }
        ],
        "edition": null,
        "famDocDE": "",
        "idDE": 1,
        "numDE": 179995,
        "dateDE": "2016-10-12",
        "idSoc": 1,
        "etatDE": "T",
        "typeDE": "V",
        "refDE": "VILLAGE LES JUDICES CHALLANS",
        "montTTCDE": 303.07,
        "montHTDE": 252.56,
        "comDE": "",
        "annotDE": "",
        "flgValidDE": false,
        "motsClesAutoDE": "  CMB SAS  VILLAGE LES JUDICES CHALLANS  !§!",
        "echRegDE": "0",
        "finMoisDE": false,
        "decalRegDE": "AUCUN",
        "JRegDE": 0,
        "MRegDE": "1",
        "flgTTCDE": false,
        "remDE": 0,
        "typeTvaDE": "01",
        "idDepCre": 1,
        "idDepLiv": 1,
        "codDepCre": "DFC² VERTOU",
        "codDepLiv": "DFC² VERTOU",
        "codPortDE": "01",
        "idCam": 0,
        "codCam": "",
        "libCam": "",
        "dateCreDE": "2016-10-12",
        "heureCreDE": 58588,
        "dateModDE": "2016-10-24",
        "idDUCre": 0,
        "idDUMod": 0,
        "montTvaDE": 50.51,
        "montTgapDE": 0,
        "montParafDE": 0,
        "montHTApRemDE": 252.56,
        "montTvaApRemDE": 50.51,
        "montParafApRemDE": 0,
        "montTTCApRemDE": 303.07,
        "montHTMarDE": 252.56,
        "montRevReMarDE": 162.29,
        "montRevConvMarDE": 162.29,
        "montEcoTaxeDE": 0,
        "montHTAvecPortDE": 252.56,
        "montRevReDE": 162.29,
        "montRevConvDE": 162.29,
        "totPoidsDE": 0,
        "comLivDE": "",
        "zoneLivDE": "",
        "flgTva2DE": false,
        "totRegDE": 0,
        "montHTExtDE": 0,
        "montTVAExtDE": 0,
        "montTTCExtDE": 0,
        "dateRegDE": null,
        "RSocDE": "",
        "dateHeureEditDE": "2016-10-24 00:00:00.000",
        "codRgpt": "",
        "HASH": "",
        "idCli": 112999,
        "noCli": 100945,
        "codCli": "CMB1",
        "noComptaCli": "00CMB1",
        "RSocCli": "CONSTRUCTION METALLIQUE DU BOCAGE",
        "RSocLivDE": "CMB SAS",
        "adrLivDE": "79 RUE FONDANIERE",
        "CPLivDE": "85120",
        "villeLivDE": "LA TARDIERE",
        "paysLivDE": "",
        "telLivDE": "0251696486",
        "faxLivDE": "0251527136",
        "mailLivDE": "travaux01@cmb85.fr",
        "RSocFacDE": "CMB SAS",
        "adrFacDE": "79 RUE FONDANIERE",
        "CPFacDE": "85120",
        "villeFacDE": "LA TARDIERE",
        "paysFacDE": "",
        "telFacDE": "0251696486",
        "faxFacDE": "0251527136",
        "mailFacDE": "travaux01@cmb85.fr",
        "idSalVend": 24,
        "codSalVend": "MADE",
        "idSalRep": 720,
        "codSalRep": "ALFL",
        "idCha": 0,
        "codCha": "",
        "libCha": "",
        "adrCha": "",
        "CPCha": "",
        "villeCha": "",
        "montPortDE": 0,
        "dateLivDE": null,
        "idTC": 636,
        "prisParDE": "MR GUENICHON",
        "dateReacDE": null,
        "flgPFDE": false,
        "codOrigDE": "V1",
        "dateCloDE": "2016-10-24"
    }
]
      """

  @dropSchema
  Scenario: Read one Devis If Authorized OK
    When after authentication with method "POST" on "login_check" as "user" with password "test", i send an authenticated "GET" request to "/api/devis?IdDocDE[equals]=180644" with body:
    Then the response status code should be 200
    And the response should be in JSON
    And the header "Content-Type" should be equal to "application/ld+json"
    And the JSON should be equal to:
    """
[
    {
        "IdDocDE": 180644,
        "DateRelDE": "2016-10-19",
        "IdSalRel": 24,
        "NatDE": "D",
        "DateRealDE": "2016-11-11",
        "lignes": [
            {
                "idDL": 1,
                "idDE": 1,
                "idDocDL": 1130163,
                "IdDocDE": 180644,
                "idDocSecDE": 0,
                "idAD": 903035,
                "numDL": 1,
                "nbUStoDL": 8,
                "uStoDL": "PCE",
                "montHTDL": 217.52,
                "montTTCDL": 261.02,
                "prixNetDL": 27.19,
                "nbUVteDL": 8,
                "uVteDL": "PCE",
                "comDL": "A2P*",
                "codEcoTaxeDL": "",
                "codTgapDL": "",
                "poidsUVteDL": 0,
                "montTVADL": 43.5,
                "montTgapDL": 0,
                "montParafDL": 0,
                "nbUCondDL": 8,
                "flgBonniDL": false,
                "typeQteDL": "S",
                "idPTA": 0,
                "idCel": 0,
                "montTTCComDL": 261.02,
                "montHTComDL": 217.52,
                "nbUVteComDL": 8,
                "flgVarDL": false,
                "nbUStoComDL": 8,
                "idTA": 1,
                "noAD": 29211,
                "codAD": "VO5101HDI+1N1",
                "codADDL": "VO5101HDI+1N1",
                "refDL": "CYLINDRE HDI+ A2P* LN SIMPLE   40  30X10  VACHETTE",
                "designationAD": "CYLINDRE HDI+ N1 LN SIMPLE 40 30X10 mm",
                "desi2Art": "",
                "hASH": "",
                "typePrixDL": "R",
                "comCel": "",
                "idExtDL": 0,
                "idFour": 1327,
                "nbUAchDL": 0,
                "dateModDL": "2016-10-24",
                "idTC": 608,
                "idDep": 1,
                "etatDL": "T",
                "codTVADL": "02",
                "uAchDL": "PCE",
                "typCvAchVteDL": true,
                "cvAchVteDL": 1,
                "prixAchDevDL": 37.82,
                "prixAchDL": 37.82,
                "prixDepConvDL": 17.473,
                "prixDepReelDL": 17.473,
                "prixNetConvDL": 17.473,
                "prixNetReelDL": 17.473,
                "prixRevConvDL": 17.473,
                "prixRevReelDL": 17.473,
                "nbDecPNetDL": 3,
                "nbDecPDepDL": 3,
                "nbDecPrixRendDL": 3,
                "nbDecPrixRevDL": 3,
                "codDevDL": "",
                "poidsUAchDL": 0,
                "volUAchDL": 0,
                "typePRDL": "02",
                "idPort": 0,
                "idEch": 0,
                "largDL": 0,
                "longDL": 0,
                "epaisDL": 0,
                "cvStoVteDL": 1,
                "typCvStoVteDL": true,
                "nbUStoCondVteDL": 1,
                "codParafDL": "",
                "condVteDL": "PCE",
                "typeLongDL": "0",
                "montEcoTaxeDL": 0,
                "prixTTCDL": 32.63,
                "montRevConvDL": 139.78,
                "montRevReDL": 139.78,
                "montHTAvecPortDL": 217.52,
                "idTar": 54115,
                "idTarPre": 0,
                "typeTarDL": "C",
                "codMethDL": "07",
                "typeSeuTarDL": "",
                "pRCAutoDL": 17.473,
                "pRRAutoDL": 17.473,
                "prixTarDL": 34.86,
                "idTarComp": 60808,
                "idTarComp2": 0,
                "idCas": 0,
                "remValDL": 10.63,
                "prixPubDL": 37.82,
                "coefDL": 1.5561,
                "remise1DL": 4,
                "remise2DL": 4,
                "remise3DL": 22,
                "comModPRDL": "",
                "dateModPRDL": "2016-10-12",
                "idUModPRDL": 0,
                "prixPortDL": 0,
                "margConvDL": 0,
                "cvVteVteDL": 0,
                "grpTarSeuDL": "",
                "margReelDL": 0
            },
            {
                "idDL": 2,
                "idDE": 1,
                "idDocDL": 1130164,
                "IdDocDE": 180644,
                "idDocSecDE": 0,
                "idAD": 851277,
                "numDL": 2,
                "nbUStoDL": 8,
                "uStoDL": "PCE",
                "montHTDL": 35.04,
                "montTTCDL": 42.05,
                "prixNetDL": 4.38,
                "nbUVteDL": 8,
                "uVteDL": "PCE",
                "comDL": "",
                "codEcoTaxeDL": "",
                "codTgapDL": "",
                "poidsUVteDL": 0,
                "montTVADL": 7.01,
                "montTgapDL": 0,
                "montParafDL": 0,
                "nbUCondDL": 8,
                "flgBonniDL": false,
                "typeQteDL": "S",
                "idPTA": 0,
                "idCel": 0,
                "montTTCComDL": 42.05,
                "montHTComDL": 35.04,
                "nbUVteComDL": 8,
                "flgVarDL": false,
                "nbUStoComDL": 8,
                "idTA": 1,
                "noAD": 29095,
                "codAD": "VOOCHDI+",
                "codADDL": "VOOCHDI+",
                "refDL": "MISE SUR COMBINAISON  OC  HDI +  VACHETTE",
                "designationAD": "MISE SUR COMBINAISON OC HDI +",
                "desi2Art": "",
                "hASH": "",
                "typePrixDL": "R",
                "comCel": "",
                "idExtDL": 0,
                "idFour": 1327,
                "nbUAchDL": 0,
                "dateModDL": "2016-10-24",
                "idTC": 608,
                "idDep": 1,
                "etatDL": "T",
                "codTVADL": "02",
                "uAchDL": "PCE",
                "typCvAchVteDL": true,
                "cvAchVteDL": 1,
                "prixAchDevDL": 6.09,
                "prixAchDL": 6.09,
                "prixDepConvDL": 2.814,
                "prixDepReelDL": 2.814,
                "prixNetConvDL": 2.814,
                "prixNetReelDL": 2.814,
                "prixRevConvDL": 2.814,
                "prixRevReelDL": 2.814,
                "nbDecPNetDL": 3,
                "nbDecPDepDL": 3,
                "nbDecPrixRendDL": 3,
                "nbDecPrixRevDL": 3,
                "codDevDL": "",
                "poidsUAchDL": 0,
                "volUAchDL": 0,
                "typePRDL": "02",
                "idPort": 0,
                "idEch": 0,
                "largDL": 0,
                "longDL": 0,
                "epaisDL": 0,
                "cvStoVteDL": 1,
                "typCvStoVteDL": true,
                "nbUStoCondVteDL": 1,
                "codParafDL": "",
                "condVteDL": "PCE",
                "typeLongDL": "0",
                "montEcoTaxeDL": 0,
                "prixTTCDL": 5.26,
                "montRevConvDL": 22.51,
                "montRevReDL": 22.51,
                "montHTAvecPortDL": 35.04,
                "idTar": 54115,
                "idTarPre": 0,
                "typeTarDL": "C",
                "codMethDL": "07",
                "typeSeuTarDL": "",
                "pRCAutoDL": 2.814,
                "pRRAutoDL": 2.814,
                "prixTarDL": 5.62,
                "idTarComp": 60808,
                "idTarComp2": 0,
                "idCas": 0,
                "remValDL": 1.71,
                "prixPubDL": 6.09,
                "coefDL": 1.5565,
                "remise1DL": 4,
                "remise2DL": 4,
                "remise3DL": 22,
                "comModPRDL": "",
                "dateModPRDL": "2016-10-12",
                "idUModPRDL": 0,
                "prixPortDL": 0,
                "margConvDL": 0,
                "cvVteVteDL": 0,
                "grpTarSeuDL": "",
                "margReelDL": 0
            }
        ],
        "edition": null,
        "famDocDE": "",
        "idDE": 1,
        "numDE": 179995,
        "dateDE": "2016-10-12",
        "idSoc": 1,
        "etatDE": "T",
        "typeDE": "V",
        "refDE": "VILLAGE LES JUDICES CHALLANS",
        "montTTCDE": 303.07,
        "montHTDE": 252.56,
        "comDE": "",
        "annotDE": "",
        "flgValidDE": false,
        "motsClesAutoDE": "  CMB SAS  VILLAGE LES JUDICES CHALLANS  !§!",
        "echRegDE": "0",
        "finMoisDE": false,
        "decalRegDE": "AUCUN",
        "JRegDE": 0,
        "MRegDE": "1",
        "flgTTCDE": false,
        "remDE": 0,
        "typeTvaDE": "01",
        "idDepCre": 1,
        "idDepLiv": 1,
        "codDepCre": "DFC² VERTOU",
        "codDepLiv": "DFC² VERTOU",
        "codPortDE": "01",
        "idCam": 0,
        "codCam": "",
        "libCam": "",
        "dateCreDE": "2016-10-12",
        "heureCreDE": 58588,
        "dateModDE": "2016-10-24",
        "idDUCre": 0,
        "idDUMod": 0,
        "montTvaDE": 50.51,
        "montTgapDE": 0,
        "montParafDE": 0,
        "montHTApRemDE": 252.56,
        "montTvaApRemDE": 50.51,
        "montParafApRemDE": 0,
        "montTTCApRemDE": 303.07,
        "montHTMarDE": 252.56,
        "montRevReMarDE": 162.29,
        "montRevConvMarDE": 162.29,
        "montEcoTaxeDE": 0,
        "montHTAvecPortDE": 252.56,
        "montRevReDE": 162.29,
        "montRevConvDE": 162.29,
        "totPoidsDE": 0,
        "comLivDE": "",
        "zoneLivDE": "",
        "flgTva2DE": false,
        "totRegDE": 0,
        "montHTExtDE": 0,
        "montTVAExtDE": 0,
        "montTTCExtDE": 0,
        "dateRegDE": null,
        "RSocDE": "",
        "dateHeureEditDE": "2016-10-24 00:00:00.000",
        "codRgpt": "",
        "HASH": "",
        "idCli": 112999,
        "noCli": 100945,
        "codCli": "CMB1",
        "noComptaCli": "00CMB1",
        "RSocCli": "CONSTRUCTION METALLIQUE DU BOCAGE",
        "RSocLivDE": "CMB SAS",
        "adrLivDE": "79 RUE FONDANIERE",
        "CPLivDE": "85120",
        "villeLivDE": "LA TARDIERE",
        "paysLivDE": "",
        "telLivDE": "0251696486",
        "faxLivDE": "0251527136",
        "mailLivDE": "travaux01@cmb85.fr",
        "RSocFacDE": "CMB SAS",
        "adrFacDE": "79 RUE FONDANIERE",
        "CPFacDE": "85120",
        "villeFacDE": "LA TARDIERE",
        "paysFacDE": "",
        "telFacDE": "0251696486",
        "faxFacDE": "0251527136",
        "mailFacDE": "travaux01@cmb85.fr",
        "idSalVend": 24,
        "codSalVend": "MADE",
        "idSalRep": 720,
        "codSalRep": "ALFL",
        "idCha": 0,
        "codCha": "",
        "libCha": "",
        "adrCha": "",
        "CPCha": "",
        "villeCha": "",
        "montPortDE": 0,
        "dateLivDE": null,
        "idTC": 636,
        "prisParDE": "MR GUENICHON",
        "dateReacDE": null,
        "flgPFDE": false,
        "codOrigDE": "V1",
        "dateCloDE": "2016-10-24"
    }
   ]
      """