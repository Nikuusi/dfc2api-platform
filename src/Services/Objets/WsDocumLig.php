<?php

namespace App\Services\Objets;

class WsDocumLig
{
    private $IdDL;
    private $IdDE;
    private $IdDocDL;
    public $IdDocDE;
    private $IdDocSecDE;
    private $IdAD;
    private $NumDL;
    private $NbUStoDL;
    private $UStoDL;
    private $MontHTDL;
    private $MontTTCDL;
    private $PrixNetDL;
    private $NbUVteDL;
    private $UVteDL;
    private $ComDL;
    private $CodEcoTaxeDL= null;
    private $CodTgapDL= null;
    private $PoidsUVteDL= 0;
    private $MontTVADL= 0;
    private $MontTgapDL= 0;
    private $MontParafDL= 0;
    private $NbUCondDL= 0;
    private $FlgBonniDL= false;
    private $TypeQteDL= null;
    private $IdPTA= 0;
    private $IdCel= 0;
    private $MontTTCComDL= 0;
    private $MontHTComDL= 0;
    private $NbUVteComDL= 0;
    private $FlgVarDL= false;
    private $NbUStoComDL= 0;
    private $IdTA= 0;
    private $NoAD= 0;
    private $CodAD= null;
    private $CodADDL= null;
    private $RefDL= null;
    private $DesignationAD= null;
    private $Desi2Art= null;
    private $HASH= null;
    private $TypePrixDL= null;
    private $ComCel= null;

    /**
     * Constructeur
     * Peut prendre un argument $json_object : hydrate l'objet avec la structure json passée en argument
     */
    public function __construct($json_object=null) {
        if(!is_null($json_object)) {
            $this->setIdDL($json_object->{'IdDL'});
            $this->setIdDE($json_object->{'IdDE'});
            $this->setIdDocDL($json_object->{'IdDocDL'});
            $this->setIdDocDE($json_object->{'IdDocDE'});
            $this->setIdDocSecDE($json_object->{'IdDocSecDE'});
            $this->setIdAD($json_object->{'IdAD'});
            $this->setNumDL($json_object->{'NumDL'});
            $this->setNbUStoDL($json_object->{'NbUStoDL'});
            $this->setUStoDL($json_object->{'UStoDL'});
            $this->setMontHTDL($json_object->{'MontHTDL'});
            $this->setMontTTCDL($json_object->{'MontTTCDL'});
            $this->setPrixNetDL($json_object->{'PrixNetDL'});
            $this->setNbUVteDL($json_object->{'NbUVteDL'});
            $this->setUVteDL($json_object->{'UVteDL'});
            $this->setComDL($json_object->{'ComDL'});
            $this->setCodEcoTaxeDL($json_object->{'CodEcoTaxeDL'});
            $this->setCodTgapDL($json_object->{'CodTgapDL'});
            $this->setPoidsUVteDL($json_object->{'PoidsUVteDL'});
            $this->setMontTVADL($json_object->{'MontTVADL'});
            $this->setMontTgapDL($json_object->{'MontTgapDL'});
            $this->setMontParafDL($json_object->{'MontParafDL'});
            $this->setNbUCondDL($json_object->{'NbUCondDL'});
            $this->setFlgBonniDL($json_object->{'FlgBonniDL'});
            $this->setTypeQteDL($json_object->{'TypeQteDL'});
            $this->setIdPTA($json_object->{'IdPTA'});
            $this->setIdCel($json_object->{'IdCel'});
            $this->setMontTTCComDL($json_object->{'MontTTCComDL'});
            $this->setMontHTComDL($json_object->{'MontHTComDL'});
            $this->setNbUVteComDL($json_object->{'NbUVteComDL'});
            $this->setFlgVarDL($json_object->{'FlgVarDL'});
            $this->setNbUStoComDL($json_object->{'NbUStoComDL'});
            $this->setIdTA($json_object->{'IdTA'});
            $this->setNoAD($json_object->{'NoAD'});
            $this->setCodAD($json_object->{'CodAD'});
            $this->setCodADDL($json_object->{'CodADDL'});
            $this->setRefDL($json_object->{'RefDL'});
            $this->setDesignationAD($json_object->{'DesignationAD'});
            $this->setDesi2Art($json_object->{'Desi2Art'});
            $this->setHASH($json_object->{'HASH'});
            $this->setTypePrixDL($json_object->{'TypePrixDL'});
            $this->setComCel($json_object->{'ComCel'});
        }
    }

    public function __toString()
    {
        $string = '{';
        $string .= '"IdDL": '.$this->getIdDL().' ,';
        $string .= '"IdDE": '.$this->getIdDE().' ,';
        $string .= '"IdDocDL": '.$this->getIdDocDL().' ,';
        $string .= '"IdDocDE": '.$this->getIdDocDE().' ,';
        $string .= '"IdDocSecDE": '.$this->getIdDocSecDE().' ,';
        $string .= '"IdAD": '.$this->getIdAD().' ,';
        $string .= '"NumDL": '.$this->getNumDL().' ,';
        $string .= '"NbUStoDL": '.$this->getNbUStoDL().' ,';
        $string .= '"UStoDL": "'.$this->getUStoDL().'" ,';
        $string .= '"MontHTDL": '.$this->getMontHTDL().' ,';
        $string .= '"MontTTCDL": '.$this->getMontTTCDL().' ,';
        $string .= '"PrixNetDL": '.$this->getPrixNetDL().' ,';
        $string .= '"NbUVteDL": '.$this->getNbUVteDL().' ,';
        $string .= '"UVteDL": "'.$this->getUVteDL().'" ,';
        $string .= '"ComDL": "'.$this->getComDL().'" ,';
        $string .= '"CodEcoTaxeDL": "'.$this->getCodEcoTaxeDL().'" ,';
        $string .= '"CodTgapDL": "'.$this->getCodTgapDL().'" ,';
        $string .= '"PoidsUVteDL": '.$this->getPoidsUVteDL().' ,';
        $string .= '"MontTVADL": '.$this->getMontTVADL().' ,';
        $string .= '"MontTgapDL": '.$this->getMontTgapDL().' ,';
        $string .= '"MontParafDL": '.$this->getMontParafDL().' ,';
        $string .= '"NbUCondDL": '.$this->getNbUCondDL().' ,';

        $val = ($this->getFlgBonniDL()) ? 'true' : 'false';
        $string .= '"FlgBonniDL": ' . $val . ' ,';

        $string .= '"TypeQteDL": "'.$this->getTypeQteDL().'" ,';
        $string .= '"IdPTA": '.$this->getIdPTA().' ,';
        $string .= '"IdCel": '.$this->getIdCel().' ,';
        $string .= '"MontTTCComDL": '.$this->getMontTTCComDL().' ,';
        $string .= '"MontHTComDL": '.$this->getMontHTComDL().' ,';
        $string .= '"NbUVteComDL": '.$this->getNbUVteComDL().' ,';

        $val = ($this->getFlgVarDL()) ? 'true' : 'false';
        $string .= '"FlgVarDL": ' . $val . ' ,';

        $string .= '"NbUStoComDL": '.$this->getNbUStoComDL().' ,';
        $string .= '"IdTA": '.$this->getIdTA().' ,';
        $string .= '"NoAD": '.$this->getNoAD().' ,';
        $string .= '"CodAD": "'.$this->getCodAD().'" ,';
        $string .= '"CodADDL": "'.$this->getCodADDL().'" ,';
        $string .= '"RefDL": "'.$this->getRefDL().'" ,';
        $string .= '"DesignationAD": "'.$this->getDesignationAD().'" ,';
        $string .= '"Desi2Art": "'.$this->getDesi2Art().'" ,';
        $string .= '"HASH": "'.$this->getHASH().'" ,';
        $string .= '"TypePrixDL": "'.$this->getTypePrixDL().'" ,';
        $string .= '"ComCel": "'.$this->getComCel().'" ';
        $string .= '}';

        return $string;
    }


    public function getIdDL()
    {
        return $this->IdDL;
    }

    /**
     * @param mixed $IdDL
     */
    public function setIdDL($IdDL)
    {
        $this->IdDL = $IdDL;
    }

    /**
     * @return mixed
     */
    public function getIdDE()
    {
        return $this->IdDE;
    }

    /**
     * @param mixed $IdDE
     */
    public function setIdDE($IdDE)
    {
        $this->IdDE = $IdDE;
    }

    /**
     * @return mixed
     */
    public function getIdDocDL()
    {
        return $this->IdDocDL;
    }

    /**
     * @param mixed $IdDocDL
     */
    public function setIdDocDL($IdDocDL)
    {
        $this->IdDocDL = $IdDocDL;
    }

    /**
     * @return mixed
     */
    public function getIdDocDE()
    {
        return $this->IdDocDE;
    }

    /**
     * @param mixed $IdDocDE
     */
    public function setIdDocDE($IdDocDE)
    {
        $this->IdDocDE = $IdDocDE;
    }

    /**
     * @return mixed
     */
    public function getIdDocSecDE()
    {
        return $this->IdDocSecDE;
    }

    /**
     * @param mixed $IdDocSecDE
     */
    public function setIdDocSecDE($IdDocSecDE)
    {
        $this->IdDocSecDE = $IdDocSecDE;
    }

    /**
     * @return mixed
     */
    public function getIdAD()
    {
        return $this->IdAD;
    }

    /**
     * @param mixed $IdAD
     */
    public function setIdAD($IdAD)
    {
        $this->IdAD = $IdAD;
    }

    /**
     * @return mixed
     */
    public function getNumDL()
    {
        return $this->NumDL;
    }

    /**
     * @param mixed $NumDL
     */
    public function setNumDL($NumDL)
    {
        $this->NumDL = $NumDL;
    }

    /**
     * @return mixed
     */
    public function getNbUStoDL()
    {
        return $this->NbUStoDL;
    }

    /**
     * @param mixed $NbUStoDL
     */
    public function setNbUStoDL($NbUStoDL)
    {
        $this->NbUStoDL = $NbUStoDL;
    }

    /**
     * @return mixed
     */
    public function getUStoDL()
    {
        return $this->UStoDL;
    }

    /**
     * @param mixed $UStoDL
     */
    public function setUStoDL($UStoDL)
    {
        $this->UStoDL = $UStoDL;
    }

    /**
     * @return mixed
     */
    public function getMontHTDL()
    {
        return $this->MontHTDL;
    }

    /**
     * @param mixed $MontHTDL
     */
    public function setMontHTDL($MontHTDL)
    {
        $this->MontHTDL = $MontHTDL;
    }

    /**
     * @return mixed
     */
    public function getMontTTCDL()
    {
        return $this->MontTTCDL;
    }

    /**
     * @param mixed $MontTTCDL
     */
    public function setMontTTCDL($MontTTCDL)
    {
        $this->MontTTCDL = $MontTTCDL;
    }

    /**
     * @return mixed
     */
    public function getPrixNetDL()
    {
        return $this->PrixNetDL;
    }

    /**
     * @param mixed $PrixNetDL
     */
    public function setPrixNetDL($PrixNetDL)
    {
        $this->PrixNetDL = $PrixNetDL;
    }

    /**
     * @return mixed
     */
    public function getNbUVteDL()
    {
        return $this->NbUVteDL;
    }

    /**
     * @param mixed $NbUVteDL
     */
    public function setNbUVteDL($NbUVteDL)
    {
        $this->NbUVteDL = $NbUVteDL;
    }

    /**
     * @return mixed
     */
    public function getUVteDL()
    {
        return $this->UVteDL;
    }

    /**
     * @param mixed $UVteDL
     */
    public function setUVteDL($UVteDL)
    {
        $this->UVteDL = $UVteDL;
    }

    /**
     * @return mixed
     */
    public function getComDL()
    {
        return $this->ComDL;
    }

    /**
     * @param mixed $ComDL
     */
    public function setComDL($ComDL)
    {
        $this->ComDL = $ComDL;
    }

    /**
     * @return null
     */
    public function getCodEcoTaxeDL()
    {
        return $this->CodEcoTaxeDL;
    }

    /**
     * @param null $CodEcoTaxeDL
     */
    public function setCodEcoTaxeDL($CodEcoTaxeDL)
    {
        $this->CodEcoTaxeDL = $CodEcoTaxeDL;
    }

    /**
     * @return null
     */
    public function getCodTgapDL()
    {
        return $this->CodTgapDL;
    }

    /**
     * @param null $CodTgapDL
     */
    public function setCodTgapDL($CodTgapDL)
    {
        $this->CodTgapDL = $CodTgapDL;
    }

    /**
     * @return int
     */
    public function getPoidsUVteDL()
    {
        return $this->PoidsUVteDL;
    }

    /**
     * @param int $PoidsUVteDL
     */
    public function setPoidsUVteDL($PoidsUVteDL)
    {
        $this->PoidsUVteDL = $PoidsUVteDL;
    }

    /**
     * @return int
     */
    public function getMontTVADL()
    {
        return $this->MontTVADL;
    }

    /**
     * @param int $MontTVADL
     */
    public function setMontTVADL($MontTVADL)
    {
        $this->MontTVADL = $MontTVADL;
    }

    /**
     * @return int
     */
    public function getMontTgapDL()
    {
        return $this->MontTgapDL;
    }

    /**
     * @param int $MontTgapDL
     */
    public function setMontTgapDL($MontTgapDL)
    {
        $this->MontTgapDL = $MontTgapDL;
    }

    /**
     * @return int
     */
    public function getMontParafDL()
    {
        return $this->MontParafDL;
    }

    /**
     * @param int $MontParafDL
     */
    public function setMontParafDL($MontParafDL)
    {
        $this->MontParafDL = $MontParafDL;
    }

    /**
     * @return int
     */
    public function getNbUCondDL()
    {
        return $this->NbUCondDL;
    }

    /**
     * @param int $NbUCondDL
     */
    public function setNbUCondDL($NbUCondDL)
    {
        $this->NbUCondDL = $NbUCondDL;
    }

    /**
     * @return bool
     */
    public function getFlgBonniDL()
    {
        return $this->FlgBonniDL;
    }

    /**
     * @param bool $FlgBonniDL
     */
    public function setFlgBonniDL($FlgBonniDL)
    {
        $this->FlgBonniDL = $FlgBonniDL;
    }

    /**
     * @return null
     */
    public function getTypeQteDL()
    {
        return $this->TypeQteDL;
    }

    /**
     * @param null $TypeQteDL
     */
    public function setTypeQteDL($TypeQteDL)
    {
        $this->TypeQteDL = $TypeQteDL;
    }

    /**
     * @return int
     */
    public function getIdPTA()
    {
        return $this->IdPTA;
    }

    /**
     * @param int $IdPTA
     */
    public function setIdPTA($IdPTA)
    {
        $this->IdPTA = $IdPTA;
    }

    /**
     * @return int
     */
    public function getIdCel()
    {
        return $this->IdCel;
    }

    /**
     * @param int $IdCel
     */
    public function setIdCel($IdCel)
    {
        $this->IdCel = $IdCel;
    }

    /**
     * @return int
     */
    public function getMontTTCComDL()
    {
        return $this->MontTTCComDL;
    }

    /**
     * @param int $MontTTCComDL
     */
    public function setMontTTCComDL($MontTTCComDL)
    {
        $this->MontTTCComDL = $MontTTCComDL;
    }

    /**
     * @return int
     */
    public function getMontHTComDL()
    {
        return $this->MontHTComDL;
    }

    /**
     * @param int $MontHTComDL
     */
    public function setMontHTComDL($MontHTComDL)
    {
        $this->MontHTComDL = $MontHTComDL;
    }

    /**
     * @return int
     */
    public function getNbUVteComDL()
    {
        return $this->NbUVteComDL;
    }

    /**
     * @param int $NbUVteComDL
     */
    public function setNbUVteComDL($NbUVteComDL)
    {
        $this->NbUVteComDL = $NbUVteComDL;
    }

    /**
     * @return bool
     */
    public function getFlgVarDL()
    {
        return $this->FlgVarDL;
    }

    /**
     * @param bool $FlgVarDL
     */
    public function setFlgVarDL($FlgVarDL)
    {
        $this->FlgVarDL = $FlgVarDL;
    }

    /**
     * @return int
     */
    public function getNbUStoComDL()
    {
        return $this->NbUStoComDL;
    }

    /**
     * @param int $NbUStoComDL
     */
    public function setNbUStoComDL($NbUStoComDL)
    {
        $this->NbUStoComDL = $NbUStoComDL;
    }

    /**
     * @return int
     */
    public function getIdTA()
    {
        return $this->IdTA;
    }

    /**
     * @param int $IdTA
     */
    public function setIdTA($IdTA)
    {
        $this->IdTA = $IdTA;
    }

    /**
     * @return int
     */
    public function getNoAD()
    {
        return $this->NoAD;
    }

    /**
     * @param int $NoAD
     */
    public function setNoAD($NoAD)
    {
        $this->NoAD = $NoAD;
    }

    /**
     * @return null
     */
    public function getCodAD()
    {
        return $this->CodAD;
    }

    /**
     * @param null $CodAD
     */
    public function setCodAD($CodAD)
    {
        $this->CodAD = $CodAD;
    }

    /**
     * @return null
     */
    public function getCodADDL()
    {
        return $this->CodADDL;
    }

    /**
     * @param null $CodADDL
     */
    public function setCodADDL($CodADDL)
    {
        $this->CodADDL = $CodADDL;
    }

    /**
     * @return null
     */
    public function getRefDL()
    {
        return $this->RefDL;
    }

    /**
     * @param null $RefDL
     */
    public function setRefDL($RefDL)
    {
        $this->RefDL = $RefDL;
    }

    /**
     * @return null
     */
    public function getDesignationAD()
    {
        return $this->DesignationAD;
    }

    /**
     * @param null $DesignationAD
     */
    public function setDesignationAD($DesignationAD)
    {
        $this->DesignationAD = $DesignationAD;
    }

    /**
     * @return null
     */
    public function getDesi2Art()
    {
        return $this->Desi2Art;
    }

    /**
     * @param null $Desi2Art
     */
    public function setDesi2Art($Desi2Art)
    {
        $this->Desi2Art = $Desi2Art;
    }

    /**
     * @return null
     */
    public function getHASH()
    {
        return $this->HASH;
    }

    /**
     * @param null $HASH
     */
    public function setHASH($HASH)
    {
        $this->HASH = $HASH;
    }

    /**
     * @return null
     */
    public function getTypePrixDL()
    {
        return $this->TypePrixDL;
    }

    /**
     * @param null $TypePrixDL
     */
    public function setTypePrixDL($TypePrixDL)
    {
        $this->TypePrixDL = $TypePrixDL;
    }

    /**
     * @return null
     */
    public function getComCel()
    {
        return $this->ComCel;
    }

    /**
     * @param null $ComCel
     */
    public function setComCel($ComCel)
    {
        $this->ComCel = $ComCel;
    }


}