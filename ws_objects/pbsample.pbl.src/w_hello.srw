$PBExportHeader$w_hello.srw
forward
global type w_hello from window
end type
type st_hello from statictext within w_hello
end type
type cb_close from commandbutton within w_hello
end type
end forward

global type w_hello from window
integer width = 1513
integer height = 1108
boolean titlebar = true
string title = "Hello"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_hello st_hello
cb_close cb_close
end type
global w_hello w_hello

on w_hello.create
this.st_hello=create st_hello
this.cb_close=create cb_close
this.Control[]={this.st_hello,&
this.cb_close}
end on

on w_hello.destroy
destroy(this.st_hello)
destroy(this.cb_close)
end on

type st_hello from statictext within w_hello
integer x = 530
integer y = 228
integer width = 544
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Hello World!!! 123"
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type cb_close from commandbutton within w_hello
integer x = 539
integer y = 764
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
end type

event clicked;close(Parent)
end event

