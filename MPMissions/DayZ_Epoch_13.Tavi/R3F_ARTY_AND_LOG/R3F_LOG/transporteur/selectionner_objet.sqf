/**
 * S�lectionne un objet � charger dans un transporteur
 * 
 * @param 0 l'objet � s�lectionner
 */

if (R3F_LOG_mutex_local_verrou) then
{
	systemChat STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	R3F_LOG_mutex_local_verrou = true;
	
	R3F_LOG_objet_selectionne = _this select 0;
	systemChat format [STR_R3F_LOG_action_selectionner_objet_charge_fait, getText (configFile >> "CfgVehicles" >> (typeOf R3F_LOG_objet_selectionne) >> "displayName")];
	
	R3F_LOG_mutex_local_verrou = false;
};