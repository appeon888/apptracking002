﻿$PBExportHeader$n_cst_taskmanager_importamounts.sru
$PBExportComments$ImportAmounts (Task Manager from PBL map PTSetl) //@(*)[55981472|813:t]<nosync>
forward
global type n_cst_taskmanager_importamounts from n_cst_taskmanager
end type
end forward

global type n_cst_taskmanager_importamounts from n_cst_taskmanager
end type
global n_cst_taskmanager_importamounts n_cst_taskmanager_importamounts

forward prototypes
function any gettaskattribute (String as_name)
function integer settaskattribute (String as_name, n_cst_parameters anv_parameters)
end prototypes

function any gettaskattribute (String as_name);//@(*)[]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<Attributes>
Any la_null


Return la_null
//@(text)--

end function

function integer settaskattribute (String as_name, n_cst_parameters anv_parameters);//@(*)[]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<Attributes>

Return 1
//@(text)--

end function

on n_cst_taskmanager_importamounts.create
TriggerEvent(this, "constructor")
end on

on n_cst_taskmanager_importamounts.destroy
TriggerEvent(this, "destructor")
end on

event constructor;call super::constructor;//@(data)(recreate=yes)<Parameters>
//@(data)--

//@(data)(recreate=yes)<Navigations>
SetNavigationName( 1, "Entry to FuelCardImport1")
SetIsEntry( 1)
SetDestinationName( 1, "w_importamounts")
SetWindowType( 1, main!)
SetNavigationName( 2, "FuelCardImport to Exit1")
SetSourceName( 2, "w_importamounts")
SetIsExit( 2) //@(*)[]<Return Code>
SetCloseSource( 2, TRUE)
//@(data)--

end event

