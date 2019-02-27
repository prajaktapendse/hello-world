$PBExportHeader$pbsample.sra
$PBExportComments$Generated Application Object
forward
global type pbsample from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type pbsample from application
string appname = "pbsample"
string displayname = "Hello"
end type
global pbsample pbsample

on pbsample.create
appname="pbsample"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on pbsample.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Open(w_hello)
end event

