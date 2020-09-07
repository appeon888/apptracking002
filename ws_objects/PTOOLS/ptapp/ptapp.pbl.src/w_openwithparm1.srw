$PBExportHeader$w_openwithparm1.srw
forward
global type w_openwithparm1 from window
end type
type mle_1 from multilineedit within w_openwithparm1
end type
end forward

global type w_openwithparm1 from window
integer width = 1440
integer height = 840
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
mle_1 mle_1
end type
global w_openwithparm1 w_openwithparm1

type variables

end variables

on w_openwithparm1.create
this.mle_1=create mle_1
this.Control[]={this.mle_1}
end on

on w_openwithparm1.destroy
destroy(this.mle_1)
end on

event open;//RibbonItemBuilder lrb_builder
////String ls_Value, ls_output
////
////lrb_builder = message.powerobjectparm
////
////If IsValid ( lrb_builder ) Then
////	ls_Value = "RibbonItemBuilder is Valid."
////	Destroy ( lrb_builder )
////Else
////	ls_Value = "RibbonItemBuilder is invalid."
////End If
////
////gs_values = ls_Value
////重新创建对象返回
//lrb_builder = Create RibbonItemBuilder
//MessageBox( "", "123" )
closewithreturn(this,"")


end event

event timer;//closewithreturn(this,)
//HttpClient lhc_Client
//
//lhc_Client = Create HttpClient
//lhc_Client.SetRequestHeader ( "Content-Type", "application/json" )
//
//closewithreturn(this,lhc_Client)
end event

type mle_1 from multilineedit within w_openwithparm1
integer x = 18
integer y = 28
integer width = 1394
integer height = 524
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

