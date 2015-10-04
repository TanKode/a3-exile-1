/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_responseCode","_newPlayerMoneyString","_itemClassName","_quantity","_containerType","_containerNetID","_newPlayerRespectString","_newPlayerMoney","_sellPrice","_newPlayerRespect","_respect","_containersBefore","_containersAfter","_vehicle","_dialog"];
_responseCode = _this select 0;
_newPlayerMoneyString = _this select 1;
_itemClassName = _this select 2;
_quantity  = _this select 3;
_containerType = _this select 4;
_containerNetID = _this select 5;
_newPlayerRespectString = _this select 6;
ExileClientIsWaitingForServerTradeResponse = false;
if (_responseCode isEqualTo 0) then
{
	_newPlayerMoney = parseNumber _newPlayerMoneyString;
	_sellPrice = _newPlayerMoney - ExileClientPlayerMoney;
	ExileClientPlayerMoney = _newPlayerMoney;
	_newPlayerRespect = parseNumber _newPlayerRespectString;
	_respect = _newPlayerRespect - ExileClientPlayerScore;
	ExileClientPlayerScore = _newPlayerRespect;
	switch (_containerType) do
	{
		case 1:
		{
			_containersBefore = [uniform player, vest player, backpack player];
			[player, _itemClassName] call ExileClient_util_playerCargo_remove;
			_containersAfter = [uniform player, vest player, backpack player];
			if !(_containersAfter isEqualTo _containersBefore) then
			{
				call ExileClient_gui_traderDialog_updateInventoryDropdown;
			};
		};
		case 2:
		{
			[(uniformContainer player), _itemClassName] call ExileClient_util_containerCargo_remove;
		};
		case 3:
		{
			[(vestContainer player), _itemClassName] call ExileClient_util_containerCargo_remove;
		};
		case 4:
		{
			[(backpackContainer player), _itemClassName] call ExileClient_util_containerCargo_remove;
		};
		case 5:
		{
			_vehicle = objectFromNetId _containerNetID;
			[_vehicle, _itemClassName] call ExileClient_util_containerCargo_remove;
		};
	};
	if (_respect isEqualTo 0) then
	{
		["ItemSoldInformation", [_sellPrice]] call ExileClient_gui_notification_event_addNotification;
	}
	else 
	{
		["ItemSoldInformationWithRespect", [_sellPrice, _respect]] call ExileClient_gui_notification_event_addNotification;
	};
	_dialog = uiNameSpace getVariable ["RscExileTraderDialog", displayNull];
	if !(_dialog isEqualTo displayNull) then
	{
		call ExileClient_gui_traderDialog_updateInventoryListBox;
		call ExileClient_gui_traderDialog_updatePlayerControls;
	};
}
else 
{
	systemChat format["Failed to sell item: %1", _responseCode];
};