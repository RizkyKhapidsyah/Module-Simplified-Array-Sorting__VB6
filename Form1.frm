VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Temp As Variant, X As Integer

Public Function SortArray(ByRef TheArray As Variant)
Sorted = False
Do While Not Sorted
    Sorted = True
For X = 0 To UBound(TheArray) - 1
    If TheArray(X) > TheArray(X + 1) Then
        Temp = TheArray(X + 1)
        TheArray(X + 1) = TheArray(X)
        TheArray(X) = Temp
        Sorted = False
    End If
Next X
Loop
End Function

