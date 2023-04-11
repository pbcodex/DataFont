EnableExplicit

Global fontid

fontid= AddFontMemResourceEx_(?font,?end_font-?font,0,@"1")

LoadFont(0,"Candy Shop", 14)

OpenWindow(0,0,0,800,300,"Test",#PB_Window_SystemMenu| #PB_Window_ScreenCentered| #PB_Window_MaximizeGadget| #PB_Window_SizeGadget)
TextGadget(0,10,10,780,40,"PureBasic à consommer sans modération",#SS_CENTERIMAGE | #SS_CENTER| #WS_BORDER)
SetGadgetFont(0,FontID(0))
SetGadgetColor(0,#PB_Gadget_FrontColor,#Red)
SetGadgetColor(0,#PB_Gadget_BackColor,#Yellow)


Repeat
  Select WaitWindowEvent()
      
    Case #PB_Event_CloseWindow
      RemoveFontMemResourceEx_(fontid)
      End 
      
  EndSelect 
ForEver

DataSection
  font:
  IncludeBinary "Candy Shop.ttf"
  end_font:
EndDataSection
