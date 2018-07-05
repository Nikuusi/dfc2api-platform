# features/commandes.feature
Feature: Commande
  In order to use the application
  I need to be able to read commandes trough the API.

  Scenario: Read List Commandes If not authorized NOK
    When after authentication with method "POST" on "login_check" as "use" with password "tes", i send an authenticated "GET" request to "/api/commandes" with body:
    Then the response status code should be 401
    And the response should be in JSON
    And the header "Content-Type" should be equal to "application/ld+json"

    @dropSchema
    Scenario: Read List Commandes with filter If Authorized OK
    When after authentication with method "POST" on "login_check" as "user" with password "test", i send an authenticated "GET" request to "/api/commandes?IdDocDE[equals]=469648" with body:
    Then the response status code should be 200
    And the response should be in JSON
    And the header "Content-Type" should be equal to "application/ld+json"
    And the JSON should be equal to:
    """
    [
    {
    "IdDocDE": 469648,
    "lignes": [
    {
    "idDL": 11,
    "idDE": 4,
    "idDocDL": 1571829,
    "IdDocDE": 469648,
    "idDocSecDE": 0,
    "idAD": 1306952,
    "numDL": 1,
    "nbUStoDL": 2,
    "uStoDL": "PCE",
    "montHTDL": 270.66,
    "montTTCDL": 324.79,
    "prixNetDL": 135.33,
    "nbUVteDL": 2,
    "uVteDL": "pce",
    "comDL": "",
    "codEcoTaxeDL": "",
    "codTgapDL": "",
    "poidsUVteDL": 0,
    "montTVADL": 54.13,
    "montTgapDL": 0,
    "montParafDL": 0,
    "nbUCondDL": 2,
    "flgBonniDL": false,
    "typeQteDL": "S",
    "idPTA": 0,
    "idCel": 0,
    "montTTCComDL": 0,
    "montHTComDL": 0,
    "nbUVteComDL": 0,
    "flgVarDL": false,
    "nbUStoComDL": 0,
    "idTA": 1,
    "noAD": 884907,
    "codAD": "HM31113034050B",
    "codADDL": "HM31113034050B",
    "refDL": "CYLINDRE BOUTON LN 303 40X50B S/PG.PP",
    "designationAD": "CYLINDRE BOUTON LN 303 40X50B S/PG.PP",
    "desi2Art": "",
    "hASH": "",
    "typePrixDL": "R",
    "comCel": "",
    "idExtDL": 0,
    "idFour": 2421,
    "nbUAchDL": 0,
    "dateModDL": "2018-02-07",
    "idTC": 608,
    "idDep": 5,
    "etatDL": "T",
    "codTVADL": "02",
    "uAchDL": "pce",
    "typCvAchVteDL": true,
    "cvAchVteDL": 1,
    "prixAchDevDL": 91.13,
    "prixAchDL": 91.13,
    "prixDepConvDL": 91.13,
    "prixDepReelDL": 91.13,
    "prixNetConvDL": 91.13,
    "prixNetReelDL": 91.13,
    "prixRevConvDL": 91.13,
    "prixRevReelDL": 91.13,
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
    "condVteDL": "",
    "typeLongDL": "0",
    "montEcoTaxeDL": 0,
    "prixTTCDL": 162.4,
    "montRevConvDL": 182.26,
    "montRevReDL": 182.26,
    "montHTAvecPortDL": 270.66,
    "idTar": 70735,
    "idTarPre": 0,
    "typeTarDL": "B",
    "codMethDL": "04",
    "typeSeuTarDL": "",
    "pRCAutoDL": 91.13,
    "pRRAutoDL": 91.13,
    "prixTarDL": 150.36,
    "idTarComp": 0,
    "idTarComp2": 0,
    "idCas": 0,
    "remValDL": 138.06,
    "prixPubDL": 273.39,
    "coefDL": 1.485,
    "remise1DL": 45,
    "remise2DL": 0,
    "remise3DL": 10,
    "comModPRDL": "",
    "dateModPRDL": "2017-12-14",
    "idUModPRDL": 0,
    "prixPortDL": 0,
    "margConvDL": 0,
    "cvVteVteDL": 0,
    "grpTarSeuDL": "",
    "margReelDL": 0
    },
    {
    "idDL": 12,
    "idDE": 4,
    "idDocDL": 1571830,
    "IdDocDE": 469648,
    "idDocSecDE": 0,
    "idAD": 1306963,
    "numDL": 2,
    "nbUStoDL": 3,
    "uStoDL": "PCE",
    "montHTDL": 405.99,
    "montTTCDL": 487.19,
    "prixNetDL": 135.33,
    "nbUVteDL": 3,
    "uVteDL": "pce",
    "comDL": "",
    "codEcoTaxeDL": "",
    "codTgapDL": "",
    "poidsUVteDL": 0,
    "montTVADL": 81.2,
    "montTgapDL": 0,
    "montParafDL": 0,
    "nbUCondDL": 3,
    "flgBonniDL": false,
    "typeQteDL": "S",
    "idPTA": 0,
    "idCel": 0,
    "montTTCComDL": 0,
    "montHTComDL": 0,
    "nbUVteComDL": 0,
    "flgVarDL": false,
    "nbUStoComDL": 0,
    "idTA": 1,
    "noAD": 884908,
    "codAD": "HM31113034545",
    "codADDL": "HM31113034545",
    "refDL": "CYLINDRE BOUTON LN 303 45X45B S/PG.PP",
    "designationAD": "CYLINDRE BOUTON LN 303 45X45B S/PG.PP",
    "desi2Art": "",
    "hASH": "",
    "typePrixDL": "R",
    "comCel": "",
    "idExtDL": 0,
    "idFour": 2421,
    "nbUAchDL": 0,
    "dateModDL": "2018-02-07",
    "idTC": 608,
    "idDep": 5,
    "etatDL": "T",
    "codTVADL": "02",
    "uAchDL": "pce",
    "typCvAchVteDL": true,
    "cvAchVteDL": 1,
    "prixAchDevDL": 91.13,
    "prixAchDL": 91.13,
    "prixDepConvDL": 91.13,
    "prixDepReelDL": 91.13,
    "prixNetConvDL": 91.13,
    "prixNetReelDL": 91.13,
    "prixRevConvDL": 91.13,
    "prixRevReelDL": 91.13,
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
    "condVteDL": "",
    "typeLongDL": "0",
    "montEcoTaxeDL": 0,
    "prixTTCDL": 162.4,
    "montRevConvDL": 273.39,
    "montRevReDL": 273.39,
    "montHTAvecPortDL": 405.99,
    "idTar": 70735,
    "idTarPre": 0,
    "typeTarDL": "B",
    "codMethDL": "04",
    "typeSeuTarDL": "",
    "pRCAutoDL": 91.13,
    "pRRAutoDL": 91.13,
    "prixTarDL": 150.36,
    "idTarComp": 0,
    "idTarComp2": 0,
    "idCas": 0,
    "remValDL": 138.06,
    "prixPubDL": 273.39,
    "coefDL": 1.485,
    "remise1DL": 45,
    "remise2DL": 0,
    "remise3DL": 10,
    "comModPRDL": "",
    "dateModPRDL": "2017-12-14",
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
    "idDE": 4,
    "numDE": 459428,
    "dateDE": "2017-12-19",
    "idSoc": 1,
    "etatDE": "T",
    "typeDE": "R",
    "refDE": "BC N° 13588 CHANT 17005 Collège CELLES SUR BELLE",
    "montTTCDE": 811.98,
    "montHTDE": 676.65,
    "comDE": "PLAN D05524 - Dossier 70785 - LOT 2 SERRURERIE",
    "annotDE": "",
    "flgValidDE": false,
    "motsClesAutoDE": "  CONSTRUCTION METALLIQUE DU BOCAGE  BC N° 13588 CHANT 17005 COLLEGE CELLES SUR BELLE N  !§!",
    "echRegDE": "1",
    "finMoisDE": true,
    "decalRegDE": "FINMOIS",
    "JRegDE": 15,
    "MRegDE": "6",
    "flgTTCDE": false,
    "remDE": 0,
    "typeTvaDE": "01",
    "idDepCre": 1,
    "idDepLiv": 5,
    "codDepCre": "DFC² VERTOU",
    "codDepLiv": "DFC² VERTOU",
    "codPortDE": "01",
    "idCam": 0,
    "codCam": "",
    "libCam": "",
    "dateCreDE": "2017-12-19",
    "heureCreDE": 44341,
    "dateModDE": "2018-02-07",
    "idDUCre": 0,
    "idDUMod": 0,
    "montTvaDE": 135.33,
    "montTgapDE": 0,
    "montParafDE": 0,
    "montHTApRemDE": 676.65,
    "montTvaApRemDE": 135.33,
    "montParafApRemDE": 0,
    "montTTCApRemDE": 811.98,
    "montHTMarDE": 676.65,
    "montRevReMarDE": 455.65,
    "montRevConvMarDE": 455.65,
    "montEcoTaxeDE": 0,
    "montHTAvecPortDE": 676.65,
    "montRevReDE": 455.65,
    "montRevConvDE": 455.65,
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
    "dateHeureEditDE": "",
    "codRgpt": "",
    "HASH": "",
    "idCli": 112999,
    "noCli": 100945,
    "codCli": "CMB1",
    "noComptaCli": "00CMB1",
    "RSocCli": "CONSTRUCTION METALLIQUE DU BOCAGE",
    "RSocLivDE": "CONSTRUCTION METALLIQUE DU BOCAGE",
    "adrLivDE": "79 RUE FONDANIERE",
    "CPLivDE": "85120",
    "villeLivDE": "LA TARDIERE",
    "paysLivDE": "",
    "telLivDE": "0251696486",
    "faxLivDE": "0251527136",
    "mailLivDE": "travaux02@cmb85.fr",
    "RSocFacDE": "",
    "adrFacDE": "",
    "CPFacDE": "",
    "villeFacDE": "",
    "paysFacDE": "",
    "telFacDE": "",
    "faxFacDE": "",
    "mailFacDE": "",
    "idSalVend": 45,
    "codSalVend": "COLE",
    "idSalRep": 720,
    "codSalRep": "ALFL",
    "idCha": 0,
    "codCha": "",
    "libCha": "",
    "adrCha": "",
    "CPCha": "",
    "villeCha": "",
    "montPortDE": 0,
    "dateLivDE": "2018-01-26",
    "idTC": 636,
    "prisParDE": "François BERTHOME",
    "dateReacDE": null,
    "flgPFDE": false,
    "codOrigDE": "R",
    "dateCloDE": null
    }
    ]
      """

    @dropSchema
    Scenario: Read List Commandes If Authorized OK
    When after authentication with method "POST" on "login_check" as "user" with password "test", i send an authenticated "GET" request to "/api/commandes?IdDocDE[equals]=469648" with body:
    Then the response status code should be 200
    And the response should be in JSON
    And the header "Content-Type" should be equal to "application/ld+json"
    And the JSON should be equal to:
    """
    [
    {
    "IdDocDE": 469648,
    "lignes": [
    {
    "idDL": 11,
    "idDE": 4,
    "idDocDL": 1571829,
    "IdDocDE": 469648,
    "idDocSecDE": 0,
    "idAD": 1306952,
    "numDL": 1,
    "nbUStoDL": 2,
    "uStoDL": "PCE",
    "montHTDL": 270.66,
    "montTTCDL": 324.79,
    "prixNetDL": 135.33,
    "nbUVteDL": 2,
    "uVteDL": "pce",
    "comDL": "",
    "codEcoTaxeDL": "",
    "codTgapDL": "",
    "poidsUVteDL": 0,
    "montTVADL": 54.13,
    "montTgapDL": 0,
    "montParafDL": 0,
    "nbUCondDL": 2,
    "flgBonniDL": false,
    "typeQteDL": "S",
    "idPTA": 0,
    "idCel": 0,
    "montTTCComDL": 0,
    "montHTComDL": 0,
    "nbUVteComDL": 0,
    "flgVarDL": false,
    "nbUStoComDL": 0,
    "idTA": 1,
    "noAD": 884907,
    "codAD": "HM31113034050B",
    "codADDL": "HM31113034050B",
    "refDL": "CYLINDRE BOUTON LN 303 40X50B S/PG.PP",
    "designationAD": "CYLINDRE BOUTON LN 303 40X50B S/PG.PP",
    "desi2Art": "",
    "hASH": "",
    "typePrixDL": "R",
    "comCel": "",
    "idExtDL": 0,
    "idFour": 2421,
    "nbUAchDL": 0,
    "dateModDL": "2018-02-07",
    "idTC": 608,
    "idDep": 5,
    "etatDL": "T",
    "codTVADL": "02",
    "uAchDL": "pce",
    "typCvAchVteDL": true,
    "cvAchVteDL": 1,
    "prixAchDevDL": 91.13,
    "prixAchDL": 91.13,
    "prixDepConvDL": 91.13,
    "prixDepReelDL": 91.13,
    "prixNetConvDL": 91.13,
    "prixNetReelDL": 91.13,
    "prixRevConvDL": 91.13,
    "prixRevReelDL": 91.13,
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
    "condVteDL": "",
    "typeLongDL": "0",
    "montEcoTaxeDL": 0,
    "prixTTCDL": 162.4,
    "montRevConvDL": 182.26,
    "montRevReDL": 182.26,
    "montHTAvecPortDL": 270.66,
    "idTar": 70735,
    "idTarPre": 0,
    "typeTarDL": "B",
    "codMethDL": "04",
    "typeSeuTarDL": "",
    "pRCAutoDL": 91.13,
    "pRRAutoDL": 91.13,
    "prixTarDL": 150.36,
    "idTarComp": 0,
    "idTarComp2": 0,
    "idCas": 0,
    "remValDL": 138.06,
    "prixPubDL": 273.39,
    "coefDL": 1.485,
    "remise1DL": 45,
    "remise2DL": 0,
    "remise3DL": 10,
    "comModPRDL": "",
    "dateModPRDL": "2017-12-14",
    "idUModPRDL": 0,
    "prixPortDL": 0,
    "margConvDL": 0,
    "cvVteVteDL": 0,
    "grpTarSeuDL": "",
    "margReelDL": 0
    },
    {
    "idDL": 12,
    "idDE": 4,
    "idDocDL": 1571830,
    "IdDocDE": 469648,
    "idDocSecDE": 0,
    "idAD": 1306963,
    "numDL": 2,
    "nbUStoDL": 3,
    "uStoDL": "PCE",
    "montHTDL": 405.99,
    "montTTCDL": 487.19,
    "prixNetDL": 135.33,
    "nbUVteDL": 3,
    "uVteDL": "pce",
    "comDL": "",
    "codEcoTaxeDL": "",
    "codTgapDL": "",
    "poidsUVteDL": 0,
    "montTVADL": 81.2,
    "montTgapDL": 0,
    "montParafDL": 0,
    "nbUCondDL": 3,
    "flgBonniDL": false,
    "typeQteDL": "S",
    "idPTA": 0,
    "idCel": 0,
    "montTTCComDL": 0,
    "montHTComDL": 0,
    "nbUVteComDL": 0,
    "flgVarDL": false,
    "nbUStoComDL": 0,
    "idTA": 1,
    "noAD": 884908,
    "codAD": "HM31113034545",
    "codADDL": "HM31113034545",
    "refDL": "CYLINDRE BOUTON LN 303 45X45B S/PG.PP",
    "designationAD": "CYLINDRE BOUTON LN 303 45X45B S/PG.PP",
    "desi2Art": "",
    "hASH": "",
    "typePrixDL": "R",
    "comCel": "",
    "idExtDL": 0,
    "idFour": 2421,
    "nbUAchDL": 0,
    "dateModDL": "2018-02-07",
    "idTC": 608,
    "idDep": 5,
    "etatDL": "T",
    "codTVADL": "02",
    "uAchDL": "pce",
    "typCvAchVteDL": true,
    "cvAchVteDL": 1,
    "prixAchDevDL": 91.13,
    "prixAchDL": 91.13,
    "prixDepConvDL": 91.13,
    "prixDepReelDL": 91.13,
    "prixNetConvDL": 91.13,
    "prixNetReelDL": 91.13,
    "prixRevConvDL": 91.13,
    "prixRevReelDL": 91.13,
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
    "condVteDL": "",
    "typeLongDL": "0",
    "montEcoTaxeDL": 0,
    "prixTTCDL": 162.4,
    "montRevConvDL": 273.39,
    "montRevReDL": 273.39,
    "montHTAvecPortDL": 405.99,
    "idTar": 70735,
    "idTarPre": 0,
    "typeTarDL": "B",
    "codMethDL": "04",
    "typeSeuTarDL": "",
    "pRCAutoDL": 91.13,
    "pRRAutoDL": 91.13,
    "prixTarDL": 150.36,
    "idTarComp": 0,
    "idTarComp2": 0,
    "idCas": 0,
    "remValDL": 138.06,
    "prixPubDL": 273.39,
    "coefDL": 1.485,
    "remise1DL": 45,
    "remise2DL": 0,
    "remise3DL": 10,
    "comModPRDL": "",
    "dateModPRDL": "2017-12-14",
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
    "idDE": 4,
    "numDE": 459428,
    "dateDE": "2017-12-19",
    "idSoc": 1,
    "etatDE": "T",
    "typeDE": "R",
    "refDE": "BC N° 13588 CHANT 17005 Collège CELLES SUR BELLE",
    "montTTCDE": 811.98,
    "montHTDE": 676.65,
    "comDE": "PLAN D05524 - Dossier 70785 - LOT 2 SERRURERIE",
    "annotDE": "",
    "flgValidDE": false,
    "motsClesAutoDE": "  CONSTRUCTION METALLIQUE DU BOCAGE  BC N° 13588 CHANT 17005 COLLEGE CELLES SUR BELLE N  !§!",
    "echRegDE": "1",
    "finMoisDE": true,
    "decalRegDE": "FINMOIS",
    "JRegDE": 15,
    "MRegDE": "6",
    "flgTTCDE": false,
    "remDE": 0,
    "typeTvaDE": "01",
    "idDepCre": 1,
    "idDepLiv": 5,
    "codDepCre": "DFC² VERTOU",
    "codDepLiv": "DFC² VERTOU",
    "codPortDE": "01",
    "idCam": 0,
    "codCam": "",
    "libCam": "",
    "dateCreDE": "2017-12-19",
    "heureCreDE": 44341,
    "dateModDE": "2018-02-07",
    "idDUCre": 0,
    "idDUMod": 0,
    "montTvaDE": 135.33,
    "montTgapDE": 0,
    "montParafDE": 0,
    "montHTApRemDE": 676.65,
    "montTvaApRemDE": 135.33,
    "montParafApRemDE": 0,
    "montTTCApRemDE": 811.98,
    "montHTMarDE": 676.65,
    "montRevReMarDE": 455.65,
    "montRevConvMarDE": 455.65,
    "montEcoTaxeDE": 0,
    "montHTAvecPortDE": 676.65,
    "montRevReDE": 455.65,
    "montRevConvDE": 455.65,
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
    "dateHeureEditDE": "",
    "codRgpt": "",
    "HASH": "",
    "idCli": 112999,
    "noCli": 100945,
    "codCli": "CMB1",
    "noComptaCli": "00CMB1",
    "RSocCli": "CONSTRUCTION METALLIQUE DU BOCAGE",
    "RSocLivDE": "CONSTRUCTION METALLIQUE DU BOCAGE",
    "adrLivDE": "79 RUE FONDANIERE",
    "CPLivDE": "85120",
    "villeLivDE": "LA TARDIERE",
    "paysLivDE": "",
    "telLivDE": "0251696486",
    "faxLivDE": "0251527136",
    "mailLivDE": "travaux02@cmb85.fr",
    "RSocFacDE": "",
    "adrFacDE": "",
    "CPFacDE": "",
    "villeFacDE": "",
    "paysFacDE": "",
    "telFacDE": "",
    "faxFacDE": "",
    "mailFacDE": "",
    "idSalVend": 45,
    "codSalVend": "COLE",
    "idSalRep": 720,
    "codSalRep": "ALFL",
    "idCha": 0,
    "codCha": "",
    "libCha": "",
    "adrCha": "",
    "CPCha": "",
    "villeCha": "",
    "montPortDE": 0,
    "dateLivDE": "2018-01-26",
    "idTC": 636,
    "prisParDE": "François BERTHOME",
    "dateReacDE": null,
    "flgPFDE": false,
    "codOrigDE": "R",
    "dateCloDE": null
    }
    ]
      """