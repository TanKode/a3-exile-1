/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_display","_config","_price","_priceText","_range","_rangeText","_purchaseButton"];
disableSerialization;
createDialog "RscExilePurchaseTerritoryDialog";
_display = uiNameSpace getVariable ["RscExilePurchaseTerritoryDialog", displayNull];
_config = (getArray(missionConfigFile >> "CfgTerritories" >> "prices")) select 0;
_price = _config select 0;
_priceText = _display displayCtrl 4000;
_priceText ctrlSetStructuredText parsetext format ["<t size='1.4'>%1<img image='\exile_client\texture\ui\poptab_notification_ca.paa' size='1' shadow='true' /></t>",_price];
_range = _config select 1;
_rangeText = _display displayCtrl 4002;
_rangeText ctrlSetStructuredText parsetext format ["<t size='1.4'>%1m</t>", _range];
if(_price > ExileClientPlayerMoney)then
{
	_purchaseButton = _display displayCtrl 4001;
	_purchaseButton ctrlEnable false;
	_priceText ctrlSetTextColor [0.91, 0, 0, 1];
};
true call ExileClient_gui_postProcessing_toggleDialogBackgroundBlur;
true