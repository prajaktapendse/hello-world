$PBExportHeader$w_members.srw
forward
global type w_members from window
end type
type st_sample from statictext within w_members
end type
type st_members from statictext within w_members
end type
type cb_back from commandbutton within w_members
end type
end forward

global type w_members from window
integer width = 1847
integer height = 1188
boolean titlebar = true
string title = "Members"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_sample st_sample
st_members st_members
cb_back cb_back
end type
global w_members w_members

on w_members.create
this.st_sample=create st_sample
this.st_members=create st_members
this.cb_back=create cb_back
this.Control[]={this.st_sample,&
this.st_members,&
this.cb_back}
end on

on w_members.destroy
destroy(this.st_sample)
destroy(this.st_members)
destroy(this.cb_back)
end on

type st_sample from statictext within w_members
integer x = 526
integer y = 420
integer width = 667
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "This is just a sample text"
boolean focusrectangle = false
end type

type st_members from statictext within w_members
integer x = 421
integer y = 244
integer width = 905
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean italic = true
long textcolor = 33554432
long backcolor = 67108864
string text = "Welcome members of EQUIP Tem"
boolean focusrectangle = false
end type

type cb_back from commandbutton within w_members
integer x = 658
integer y = 784
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Back"
end type

event clicked;close(parent)
end event

