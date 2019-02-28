$PBExportHeader$w_team.srw
forward
global type w_team from window
end type
type cb_members from commandbutton within w_team
end type
type st_welcome from statictext within w_team
end type
type cb_back from commandbutton within w_team
end type
end forward

global type w_team from window
integer width = 1701
integer height = 1180
boolean titlebar = true
string title = "Team"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_members cb_members
st_welcome st_welcome
cb_back cb_back
end type
global w_team w_team

on w_team.create
this.cb_members=create cb_members
this.st_welcome=create st_welcome
this.cb_back=create cb_back
this.Control[]={this.cb_members,&
this.st_welcome,&
this.cb_back}
end on

on w_team.destroy
destroy(this.cb_members)
destroy(this.st_welcome)
destroy(this.cb_back)
end on

type cb_members from commandbutton within w_team
integer x = 283
integer y = 772
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Members"
end type

event clicked;Open(w_members)
end event

type st_welcome from statictext within w_team
integer x = 530
integer y = 248
integer width = 731
integer height = 160
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Welcome to EQUIP"
boolean focusrectangle = false
end type

type cb_back from commandbutton within w_team
integer x = 951
integer y = 772
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

