<?php

namespace App\Controller;

use App\Entity\User;
use App\Services\Objets\Notif;
use App\Services\Objets\TTRetour;
use App\Services\Parameters\WsTableNamesRetour;
use App\Services\UserService;
use App\Services\WsManager;
use App\Utils\ErrorRoute;
use App\Entity\FactureEnAttente;
use Nelmio\ApiDocBundle\Annotation\Model;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Swagger\Annotations as SWG;


class FacturesEnAttentesController extends Controller
{
    /**
     * @SWG\Property(
     *     name="ws_manager",
     *     type="WsManager",
     *     description="Service qui permet de faire des appels aux services web GIMEL")
     */
    private $ws_manager;

    /**
     * @SWG\Property(
     *     name="user_service",
     *     type="UserService",
     *     description="Service qui permet de récupérer le client connecté par son token")
     */
    private $user_service;

    /**
     * BonsLivraisonController constructor.
     */
    public function __construct(WsManager $wsManager, UserService $userService)
    {
        if (!$wsManager instanceof WsManager) {
            throw new \InvalidArgumentException(sprintf('The wsManager must implement the %s.', WsManager::class));
        }
        else if (!$userService instanceof UserService) {
            throw new \InvalidArgumentException(sprintf('The userService must implement the %s.', UserService::class));
        }

        $this->ws_manager = $wsManager;
        $this->user_service = $userService;
        $this->setCurrentUser();
    }

    /**
     * Liste des factures en attentes pour le client connecté dans un ordre décroissant.
     *
     * @Route(
     *     name = "api_factures_en_attentes_items_get",
     *     path = "/api/factures-en-attentes",
     *     methods= "GET"
     * )
     * @SWG\Response(
     *     response=200,
     *     description="Retourne une liste de factures en attentes pour le client connecté dans un ordre décroissant",
     *     @SWG\Schema(
     *         type="array",
     *         @SWG\Items(ref=@Model(type=FactureEnAttente::class, groups={"full"}))
     *     )
     * )
     */
    public function facturesEnAttentesGetAction(Request $request)
    {
        $this->ws_manager->setFilter($request->query->all());

        $TTRetour = $this->ws_manager->getFacturesEnAttentes();

        if (!is_null($TTRetour) && $TTRetour instanceof TTRetour) {
            if($TTRetour->containsKey(WsTableNamesRetour::TABLENAME_TT_FACCLIATT)) {
                $TTFacCliAtt = $TTRetour->getTable(WsTableNamesRetour::TABLENAME_TT_FACCLIATT);

                $list_docs = array();
                for ($i = 0; $i < $TTFacCliAtt->countItems(); $i++) {
                    $wsFacCliAtt = $TTFacCliAtt->getItem($i);
                    $doc = new FactureEnAttente();
                    $doc->parseObject($wsFacCliAtt);
                    array_push($list_docs, $doc);
                }

                return $this->json($list_docs);
            }
            else {
                return $this->json(array());
            }
        }
        else if(!is_null($TTRetour) && $TTRetour instanceof Notif) {
            return new JsonResponse(new ErrorRoute($TTRetour->getTexte(), 400), 400, array(), true);
        }
    }


    private function setCurrentUser()
    {
        $user_data = $this->user_service->getCurrentUser();
        // Appel service web d'un client par son code client (CodCli)
        $TTRetour = $this->ws_manager->getClientByCodCli($user_data->getCode());

        // si le retour est de type Notif
        // Message d'erreur retourné par les webservices
        if($TTRetour instanceof Notif) {
            //throw new \ErrorException(sprintf('Il y a une erreur:  %s.', $TTRetour->__toString()), 401 ,1, __FILE__);
        }

        if(!is_null($TTRetour)) {
            $TTParam = $TTRetour->getTable(WsTableNamesRetour::TABLENAME_TT_CLI);
            $wsClient = $TTParam->getItem(0);

            if(!is_null($wsClient)) {
                $user_data->setIdCli($wsClient->getIdCli());
                $user_data->setNoCli($wsClient->getNoCli());
                $user_data->setIdDepotCli($wsClient->getIdDep());
                $user_data->setNomDepotCli($wsClient->getNomDep());
            }
        }

        // si user connecté et de type User
        if($user_data instanceof User) {
            // instancie la propriété user du manager des services web gimel
            $this->ws_manager->setUser($user_data);
        }
    }
}