﻿$PBExportHeader$n_cst_setting_shipsalestotgroup.sru
forward
global type n_cst_setting_shipsalestotgroup from n_cst_syssettings_dropdownchoices
end type
end forward

global type n_cst_setting_shipsalestotgroup from n_cst_syssettings_dropdownchoices
end type
global n_cst_setting_shipsalestotgroup n_cst_setting_shipsalestotgroup

type variables

end variables

forward prototypes
public function string of_getvalue ()
public function integer of_savevalue (any aa_value)
end prototypes

public function string of_getvalue ();String 	ls_Value
Any 		la_Value

n_cst_Settings lnv_settings

lnv_settings.of_GetSetting(27,la_Value)

ls_Value = Upper(String(la_Value))

CHOOSE CASE ls_Value
	CASE "ALL!"
		ls_Value = cs_All
	CASE "AUDIT!"
		ls_Value = cs_Audit_Admin
	CASE "ADMIN!"
		ls_Value = cs_Admin
	CASE "NONE!"
		ls_Value = cs_None
END CHOOSE		

Return ls_Value


end function

public function integer of_savevalue (any aa_value);Any 		la_Value
String ls_Value

n_cst_Settings lnv_settings

ls_Value = String(aa_Value)

CHOOSE CASE ls_Value
	CASE cs_All 
		la_Value = "ALL!"
	CASE cs_Audit_Admin
		la_Value = "AUDIT!" 
	CASE cs_Admin
		la_Value = "ADMIN!" 
	CASE cs_None
		la_Value = "NONE!" 
END CHOOSE		

This.of_SetSetting(27,la_Value,lnv_settings.cs_datatype_string)

Return 1
end function

on n_cst_setting_shipsalestotgroup.create
call super::create
end on

on n_cst_setting_shipsalestotgroup.destroy
call super::destroy
end on

event constructor;call super::constructor;is_PropertyTextlabel = "Groups Who See Shipment List Sales Totals."
isa_MultiChoice[] = {cs_All	& 
						  ,cs_Audit_Admin	&
						  ,cs_Admin &
  						  ,cs_None}
end event
