#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function SLP_DLA_init()
	string Current_folder=getdatafolder(1)
	NewDataFolder /O  root:Package_SLP
	NewDataFolder /O  root:Package_SLP:DLA //Diffusion limited aggregation theory analysis
	SetDataFolder root:Package_SLP:DLA
	
	variable /G xAdj=0
	variable /G yAdj=0
	variable /G intAdj=0.01
	variable /G ImgTh=50
	variable /G MinSize=100
	variable /G xMin=100
	variable /G xMax=600
	variable /G yMin=0
	variable /G yMax=500
	variable /G SelRow=0
	variable /G HistBin=10
	variable /G GuessBeta=3
	variable /G GuessA=10
	//variable /G FitBeta=0
	//variable /G FitA=0
	
	Make /O/T/N=(0,64) SLP_DLA_ImgListW
	SetDimLabel 1,0,ImgName,SLP_DLA_ImgListW
	SetDimLabel 1,1,DataFolder,SLP_DLA_ImgListW
	SetDimLabel 1,2,OrgDataLoc,SLP_DLA_ImgListW
	SetDimLabel 1,3,FOV,SLP_DLA_ImgListW
	SetDimLabel 1,4,xAdj,SLP_DLA_ImgListW
	SetDimLabel 1,5,yAdj,SLP_DLA_ImgListW
	SetDimLabel 1,6,intAdj,SLP_DLA_ImgListW
	SetDimLabel 1,7,imgThreshold,SLP_DLA_ImgListW
	SetDimLabel 1,8,MinSize,SLP_DLA_ImgListW
	SetDimLabel 1,9,xMin,SLP_DLA_ImgListW
	SetDimLabel 1,10,xMax,SLP_DLA_ImgListW
	SetDimLabel 1,11,yMin,SLP_DLA_ImgListW
	SetDimLabel 1,12,yMax,SLP_DLA_ImgListW
	SetDimLabel 1,13,HistBin,SLP_DLA_ImgListW
	SetDimLabel 1,14,GuessBeta,SLP_DLA_ImgListW
	SetDimLabel 1,15,GuessA,SLP_DLA_ImgListW
	SetDimLabel 1,16,FitBeta,SLP_DLA_ImgListW
	SetDimLabel 1,17,FitA,SLP_DLA_ImgListW
	//SetDimLabel 1,18,,SLP_DLA_ImgListW
	//SetDimLabel 1,19,,SLP_DLA_ImgListW
	//SetDimLabel 1,20,,SLP_DLA_ImgListW
	//SetDimLabel 1,21,,SLP_DLA_ImgListW
	
	Make /O/T/N=(0,16) SLP_DLA_ImgListDisplayW
	SetDimLabel 1,0,ImgName,SLP_DLA_ImgListDisplayW
	SetDimLabel 1,1,FOV,SLP_DLA_ImgListDisplayW
	SetDimLabel 1,2,Notes,SLP_DLA_ImgListDisplayW
	
	Make /O/N=(0,16) SLP_DLA_ImgListDisplaySelW
	
	Setdatafolder $Current_folder
End

Function SLP_DLA_CreatePanel01()
	
	//Init
	if (!DataFolderExists("root:Package_SLP:DLA"))
		SLP_DLA_init()
	Endif
	
	NVAR xAdj=root:Package_SLP:DLA:xAdj
	NVAR yAdj=root:Package_SLP:DLA:yAdj
	NVAR intAdj=root:Package_SLP:DLA:intAdj
	NVAR ImgTh=root:Package_SLP:DLA:ImgTh
	NVAR MinSize=root:Package_SLP:DLA:MinSize
	NVAR SelRow=root:Package_SLP:DLA:SelRow
	
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW
	Wave /T SLP_DLA_ImgListDisplayW=root:Package_SLP:DLA:SLP_DLA_ImgListDisplayW
	Wave SLP_DLA_ImgListDisplaySelW=root:Package_SLP:DLA:SLP_DLA_ImgListDisplaySelW

	DoWindow /K SLP_DLA_Panel_01
	NewPanel /W=(30,40,850,635) /N=SLP_DLA_Panel_01

	SetDrawLayer UserFront
	SetDrawEnv /W=SLP_DLA_Panel_01 fSize=16,TextRGB=(0,0,0)
	DrawText 10,30,"SLP Diffusion-limited Aggregation model"
	SetDrawEnv /W=SLP_DLA_Panel_01 fSize=11,TextRGB=(0,0,0)
	DrawText 430,20,"Remove non-uniformity"
	SetDrawEnv /W=SLP_DLA_Panel_01 fSize=11,TextRGB=(0,0,0)
	DrawText 430,77,"Image threshold"
	
	Display /W=(5,60,220,225) /HOST=SLP_DLA_Panel_01 /N=DLA_IMAGE1
	ModifyGraph /W=SLP_DLA_Panel_01#DLA_IMAGE1 margin(left)=40,margin(right)=3,margin(bottom)=25,margin(top)=3
	Display /W=(5,260,420,580) /HOST=SLP_DLA_Panel_01 /N=DLA_IMAGE2
	ModifyGraph /W=SLP_DLA_Panel_01#DLA_IMAGE2 margin(left)=40,margin(right)=3,margin(bottom)=30,margin(top)=3
	Display /W=(225,60,420,225) /HOST=SLP_DLA_Panel_01 /N=DLA_IMAGE3
	ModifyGraph /W=SLP_DLA_Panel_01#DLA_IMAGE3 margin(left)=40,margin(right)=3,margin(bottom)=25,margin(top)=3
	Display /W=(590,25,810,180) /HOST=SLP_DLA_Panel_01 /N=DLA_Plot1
	Display /W=(590,200,810,360) /HOST=SLP_DLA_Panel_01 /N=DLA_Plot2
	
	SetVariable setvar_xAdj,pos={430,25},size={65,16},title="x:",variable=xAdj,proc=SetVarProc_DLA_FindIslands
	SetVariable setvar_xAdj,limits={0,inf,10}
	SetVariable setvar_yAdj,pos={505,25},size={65,16},title="y:",variable=yAdj,proc=SetVarProc_DLA_FindIslands
	SetVariable setvar_yAdj,limits={0,inf,10}
	SetVariable setvar_intAdj,pos={430,45},size={140,16},title="Int:",variable=intAdj,proc=SetVarProc_DLA_FindIslands
	SetVariable setvar_intAdj,limits={0,inf,0.00002}
	
	SetVariable setvar_threshold,pos={430,80},size={140,16},title="Threshold:",variable=ImgTh,proc=SetVarProc_DLA_FindIslands
	SetVariable setvar_MinSize,pos={430,100},size={140,16},title="MinSize:",variable=MinSize,proc=SetVarProc_DLA_FindIslands
	
	SetVariable setvar_xMin,pos={430,180},size={140,12},title="Min x:",proc=SetVarProc_DLA_ScreenParam
	SetVariable setvar_xMin,value= root:Package_SLP:DLA:xMin
	SetVariable setvar_xMax,pos={430,200},size={140,12},title="Max x:",proc=SetVarProc_DLA_ScreenParam
	SetVariable setvar_xMax,value= root:Package_SLP:DLA:xMax
	SetVariable setvar_yMin,pos={430,220},size={140,12},title="Min y:",proc=SetVarProc_DLA_ScreenParam
	SetVariable setvar_yMin,value= root:Package_SLP:DLA:yMin
	SetVariable setvar_yMax,pos={430,240},size={140,12},title="Max y:",proc=SetVarProc_DLA_ScreenParam
	SetVariable setvar_yMax,value= root:Package_SLP:DLA:yMax
	
	SetVariable setvar_HistBin,pos={430,285},size={140,12},title="Histogram Binning:",proc=SetVarProc_DLA_HistBin
	SetVariable setvar_HistBin,value= root:Package_SLP:DLA:HistBin
	
	SetVariable setvar_GssBeta,pos={430,305},size={65,12},title="Beta:",proc=SetVarProc_DLA_GssBeta
	SetVariable setvar_GssBeta,value= root:Package_SLP:DLA:GuessBeta
	SetVariable setvar_GssA,pos={500,305},size={65,12},title="A:",proc=SetVarProc_DLA_GssBeta
	SetVariable setvar_GssA,value= root:Package_SLP:DLA:GuessA
	
	ListBox ListBox_ImageList,pos={440,370},size={370,195},listwave=SLP_DLA_ImgListDisplayW,selWave=SLP_DLA_ImgListDisplaySelW
	ListBox ListBox_ImageList, widths={150,40,100,1,1,1,1,1,1,1,1,1,1,1,1,1,1},userColumnResize=1,mode=2,proc=ListBoxProc_DLA_ImgList
	ListBox ListBox_ImageList, SelRow=SelRow
	
	Button Button_FindIsl,pos={430,120},size={140,16},title="Find islands",fSize=10
	Button Button_EditIslPos,pos={430,140},size={140,16},title="Edit island positions"
	Button Button_EditIslPos,fSize=10
	Button Button_FindScrn,pos={430,160},size={140,16},title="Find screen",fSize=10
	
	Button Button_FindISD,pos={430,260},size={140,20},title="Find island size distribution"
	Button Button_FindISD,fSize=10,proc=ButtonProc_DLA_FindISD

	Button Button_BetaFit,pos={430,340},size={140,16},title="Beta function fitting",fsize=10,proc=ButtonProc_DLA_BetaFit
	
	Button Button_LoadImg,pos={440,570},size={100,16},title="Load image..",fSize=10,proc=ButtonProc_DLA_ChooseImgW
	Button Button_DelImg,pos={550,570},size={100,16},title="Delete image..",fSize=10
	Button Button_Done,pos={750,570},size={50,16},title="Done",fSize=10,proc=ButtonProc_DLA_Done

	Button Button_PlotOrg,pos={180,40},size={40,16},title="Plot",fSize=10
	Button Button_PlotTh,pos={380,40},size={40,16},title="Plot",fSize=10
	Button Button_PlotVor,pos={380,240},size={40,16},title="Plot",fSize=10
	Button Button_PlotISD,pos={775,3},size={40,16},title="Plot",fSize=10
	Button Button_PlotIVArea,pos={775,185},size={40,16},title="Plot",fSize=10
	
	 SLP_DLA_DisplaySelectedImg()
End

Function SLP_DLA_DisplaySelectedImg()
	ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
	variable SelRow=V_Value
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
	String ImgW_FName=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
	
	String ImgIntCorrW_Name=ImgW_FName+"_IntCorr"
	String IntNrmImgW_Name=ImgW_FName+"_IntNrm"
	String ThImgW_Name=ImgW_FName+"_Th"
	String ESpotXW_Name=ImgW_FName+"_ESpotX"
	String ESpotYW_Name=ImgW_FName+"_ESpotY"
	String VEdgesM_Name=ImgW_FName+"_VEdges"
	String VEdgesProcM_FName=ImgW_FName+"_VEdgesP"
	String VAreaResM_FName=ImgW_FName+"_VAreaRes"
	String VEdgesXW_Name=ImgW_FName+"_VEdgesX"
	String VEdgesYW_Name=ImgW_FName+"_VEdgesY"
	String IslandAreaW_FName=ImgW_FName+"_IsArea"
	String VoronoiAreaW_FName=ImgW_FName+"_VoArea"
	String NrmAreaW_FName=ImgW_FName+"_NrmArea"
	String NrmAreaHW_FName=ImgW_FName+"_NrmAreaH"
	String BetaFuncCoefW_FName=ImgW_FName+"_BetaCoef"
	String AreaTableW_FName=ImgW_FName+"_AreaTabl"
	String BetaCurve_FName=ImgW_FName+"_BetaCurve"

	Wave ImgW=$ImgW_FName
	
	NVAR xAdj=root:Package_SLP:DLA:xAdj
	NVAR yAdj=root:Package_SLP:DLA:yAdj
	NVAR intAdj=root:Package_SLP:DLA:intAdj
	NVAR ImgTh=root:Package_SLP:DLA:ImgTh
	NVAR MinSize=root:Package_SLP:DLA:MinSize
	NVAR xMin=root:Package_SLP:DLA:xMin
	NVAR yMin=root:Package_SLP:DLA:yMin
	NVAR xMax=root:Package_SLP:DLA:xMax
	NVAR yMax=root:Package_SLP:DLA:yMax
	
	xAdj=str2num(SLP_DLA_ImgListW[SelRow][4])
	yAdj=str2num(SLP_DLA_ImgListW[SelRow][5])
	intAdj=str2num(SLP_DLA_ImgListW[SelRow][6])
	imgTh=str2num(SLP_DLA_ImgListW[SelRow][7])
	MinSize=str2num(SLP_DLA_ImgListW[SelRow][8])
	xMin=str2num(SLP_DLA_ImgListW[SelRow][9])
	xMax=str2num(SLP_DLA_ImgListW[SelRow][10])
	yMin=str2num(SLP_DLA_ImgListW[SelRow][11])
	yMax=str2num(SLP_DLA_ImgListW[SelRow][12])
	
	SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_IMAGE1",ImgW_FName,1)
	
	If (Exists(IntNrmImgW_Name))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_IMAGE2",IntNrmImgW_Name,1)
	Endif
	
	If (Exists(ThImgW_Name))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_IMAGE3",ThImgW_Name,1)
	Endif
	
	If (Exists(ESpotXW_Name))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_IMAGE2",ESpotXW_Name+";"+ESpotYW_Name,2)
		Modifygraph /W=SLP_DLA_Panel_01#DLA_IMAGE2 mode=3,marker=19,msize=2
	EndIf
	
	If (Exists(VEdgesYW_Name))
		Appendtograph /W=SLP_DLA_Panel_01#DLA_IMAGE2 $VEdgesYW_Name vs $VEdgesXW_Name
	Endif
	
	variable Img_xMin=dimoffset(ImgW,0)
	variable Img_xMax=dimoffset(ImgW,0)+dimdelta(ImgW,0)*(dimsize(ImgW,0)-1)
	variable Img_yMin=dimoffset(ImgW,1)
	variable Img_yMax=dimoffset(ImgW,1)+dimdelta(ImgW,1)*(dimsize(ImgW,1)-1)
	SetAxis /W=SLP_DLA_Panel_01#DLA_IMAGE2 bottom,Img_xMin,Img_xMax
	SetAxis /R/W=SLP_DLA_Panel_01#DLA_IMAGE2 left,Img_yMin,Img_yMax
	
	if (Exists(VoronoiAreaW_FName)&&Exists(IslandAreaW_FName))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_PLOT1",VoronoiAreaW_FName+";"+IslandAreaW_FName,2)
		Modifygraph /W=SLP_DLA_Panel_01#DLA_PLOT1 mode=3,mirror=1,minor=1,tick=2
		Label /W=SLP_DLA_Panel_01#DLA_PLOT1 bottom "Voronoi area"
		Label /W=SLP_DLA_Panel_01#DLA_PLOT1 left "Island area"
	Endif
	
	If (Exists(NrmAreaHW_FName))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_PLOT2",NrmAreaHW_FName,0)
		Modifygraph /W=SLP_DLA_Panel_01#DLA_PLOT2 mode=5,mirror=1,minor=1,tick=2,hbFill=4
		Label /W=SLP_DLA_Panel_01#DLA_PLOT2 bottom "Normalized island area"
		Label /W=SLP_DLA_Panel_01#DLA_PLOT2 left "Counts"
	Endif
	
	If (Exists(BetaCurve_FName))
		Appendtograph /W=SLP_DLA_Panel_01#DLA_PLOT2 $BetaCurve_FName
	Endif
End

Function SetVarProc_DLA_ScreenParam(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			NVAR xMin=root:Package_SLP:DLA:xMin
			NVAR yMin=root:Package_SLP:DLA:yMin
			NVAR xMax=root:Package_SLP:DLA:xMax
			NVAR yMax=root:Package_SLP:DLA:yMax
			NVAR HistBin=root:Package_SLP:DLA:HistBin
			
			ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
			variable SelRow=V_Value
			Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW
			SLP_DLA_ImgListW[SelRow][9]=num2str(xMin)
			SLP_DLA_ImgListW[SelRow][10]=num2str(xMax)
			SLP_DLA_ImgListW[SelRow][11]=num2str(yMin)
			SLP_DLA_ImgListW[SelRow][12]=num2str(yMax)
			SLP_DLA_ImgListW[SelRow][13]=num2str(HistBin)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_DLA_HistBin(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			NVAR HistBin=root:Package_SLP:DLA:HistBin
			
			ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
			variable SelRow=V_Value
			Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW
			SLP_DLA_ImgListW[SelRow][13]=num2str(HistBin)
			SLP_DLA_CreateIsSizeHist()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_DLA_GssBeta(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			NVAR GuessBeta=root:Package_SLP:DLA:GuessBeta
			NVAR GuessA=root:Package_SLP:DLA:GuessA
			
			ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
			variable SelRow=V_Value
			Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW
			SLP_DLA_ImgListW[SelRow][14]=num2str(GuessBeta)
			SLP_DLA_ImgListW[SelRow][15]=num2str(GuessA)
			
			SLP_DLA_CreateGssBetaCurve()
			
			SLP_DLA_DisplaySelectedImg()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End



Function SLP_Util_AutoFindScreen(ImgW_FName,ResultW_FName)
	string ImgW_FName,ResultW_FName
	variable ThStartLevel=40
	variable ThStep=1
	variable ThMaxLevel=1000
	
	Wave ImgW=$ImgW_FName
	//Duplicate /O ImgW,$ResultW_FName /WAVE=ThW
	Duplicate /O ImgW,$ResultW_FName /WAVE=ResultW
	
	Variable ThLevel=ThStartLevel
	
	Variable MinSize=dimsize(ResultW,0)*dimsize(ResultW,1)/3
	Variable Circularity=0
	
	//Make /O/N=(1,2) SLP_ThIntv
	//SLP_ThIntv[0][]=0
	
	 Do
	 	//SLP_ThIntv[0][1]=ThLevel
		//ImageThreshold /I/O/Q/W=SLP_ThIntv ResultW
		ImageThreshold /I/Q/T=(ThLevel) ResultW
		Wave M_ImageThresh
		DoUpdate
		ImageAnalyzeParticles /E/W/Q/EBPC/M=3/A=(MinSize)/F stats, M_ImageThresh
		Wave W_circularity
		ThLevel+=ThStep
		If (dimsize(W_circularity,0)>0)
			Circularity=W_circularity[0]
		EndIf
	While ((ThLevel<ThMaxLevel)&&(V_NumParticles<1)&&(Circularity<0.95))
	
	Wave M_Particle
	ResultW=M_Particle
	
	//Killwaves SLP_ThIntv
End

Function ButtonProc_DLA_ChooseImgW(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			String SelectedWaveFName=""
			Execute "CreateBrowser prompt=\"Select image wave\", showWaves=1, showVars=0, showStrs=0" 
			//Old style. in Igor7 no need to use Execute
			SVAR S_BrowserList=S_BrowserList
			NVAR V_Flag=V_Flag
			if(V_Flag!=0)
				SelectedWaveFName=stringfromlist(0,S_BrowserList)
			endif
					  	
			SLP_DLA_LoadImg(SelectedWaveFName,NaN)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_DLA_Done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			DoWindow /K SLP_DLA_Panel_01
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_DLA_FindISD(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			SLP_DLA_VoronoiTraceAll(100,600,0,500)
			SLP_DLA_CreateAreaTable()
			SLP_DLA_DisplaySelectedImg()
						
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_DLA_BetaFit(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_DLA_BetaFit()
			SLP_DLA_DisplaySelectedImg()
						
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ListBoxProc_DLA_ImgList(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave

	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
			SLP_DLA_DisplaySelectedImg()
			NVAR SelRow=root:Package_SLP:DLA:SelRow
			SelRow=row
		case 5: // cell selection plus shift key
			break
		case 6: // begin edit
			break
		case 7: // finish edit
			break
		case 13: // checkbox clicked (Igor 6.2 or later)
			break
	endswitch

	return 0
End




Function SLP_DLA_LoadImg(ImgW_FName,FOV)
	String ImgW_FName
	Variable FOV
	String ImgW_Name=stringFromList(itemsinlist(ImgW_FName,":")-1,ImgW_FName,":")
	String ImgW_DataFolder=RemoveEnding(ImgW_FName,ImgW_Name)
	
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW
	Wave /T SLP_DLA_ImgListDisplayW=root:Package_SLP:DLA:SLP_DLA_ImgListDisplayW
	Wave SLP_DLA_ImgListDisplaySelW=root:Package_SLP:DLA:SLP_DLA_ImgListDisplaySelW
	
	String NewDataFolder_Name="root:Package_SLP:DLA:"+ImgW_Name
	NewDataFolder $NewDataFolder_Name
	
	Wave ImgW=$ImgW_FName
	
	Redimension /N=(dimsize(SLP_DLA_ImgListW,0)+1,64)  SLP_DLA_ImgListW
	Redimension /N=(dimsize(SLP_DLA_ImgListDisplayW,0)+1,16)  SLP_DLA_ImgListDisplayW
	Redimension /N=(dimsize(SLP_DLA_ImgListDisplaySelW,0)+1,16)  SLP_DLA_ImgListDisplaySelW
	
	Variable SelRow=dimsize(SLP_DLA_ImgListW,0)-1
	
	ListBox ListBox_ImageList,SelRow=SelRow
	
	SLP_DLA_ImgListW[SelRow][0]=ImgW_Name
	SLP_DLA_ImgListW[SelRow][1]=NewDataFolder_Name+":"
	SLP_DLA_ImgListW[SelRow][2]=ImgW_DataFolder
	SLP_DLA_ImgListW[SelRow][3]=num2str(FOV) //FOV
	SLP_DLA_ImgListW[SelRow][4]=num2str(dimsize(ImgW,0)/2) //intensity correction X (default = middle of the image)
	SLP_DLA_ImgListW[SelRow][5]=num2str(dimsize(ImgW,1)/2)//intensity correction Y (default = middle of the image)
	SLP_DLA_ImgListW[SelRow][6]="0.00001" //Intensity correction
	SLP_DLA_ImgListW[SelRow][7]="50" //Threshold
	SLP_DLA_ImgListW[SelRow][8]="100" //MinSize
	SLP_DLA_ImgListW[SelRow][9]="0"
	SLP_DLA_ImgListW[SelRow][10]=num2str(dimsize(ImgW,0)/2)
	SLP_DLA_ImgListW[SelRow][11]="0"
	SLP_DLA_ImgListW[SelRow][12]=num2str(dimsize(ImgW,1)/2)
	
	SLP_DLA_ImgListDisplayW[SelRow][0]=ImgW_Name
	SLP_DLA_ImgListDisplayW[SelRow][1]=num2str(FOV)
	SLP_DLA_ImgListDisplayW[SelRow][2]=""
	
	SLP_DLA_ImgListDisplaySelW[SelRow][1]=2 //FOV
	SLP_DLA_ImgListDisplaySelW[SelRow][2]=2 //Notes
	
	String NewImgW_Fname=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
	Duplicate /O $ImgW_FName,$NewImgW_Fname
	
	
End

Function SLP_DLA_CreateAreaTable()
	ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
	variable SelRow=V_Value
	
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
	String ImgW_FName=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
	//NVAR HistBin=root:Package_SLP:DLA:HistBin
	
	//Variable NBin=10
	
	String ImgIntCorrW_FName=ImgW_FName+"_IntCorr"
	String IntNrmImgW_FName=ImgW_FName+"_IntNrm"
	String ThImgW_FName=ImgW_FName+"_Th"
	String ESpotXW_FName=ImgW_FName+"_ESpotX"
	String ESpotYW_FName=ImgW_FName+"_ESpotY"
	String VEdgesM_FName=ImgW_FName+"_VEdges"
	String VEdgesProcM_FName=ImgW_FName+"_VEdgesP"
	String VAreaResM_FName=ImgW_FName+"_VAreaRes"
	String VEdgesXW_FName=ImgW_FName+"_VEdgesX"
	String VEdgesYW_FName=ImgW_FName+"_VEdgesY"
	String IslandAreaW_FName=ImgW_FName+"_IsArea"
	String VoronoiAreaW_FName=ImgW_FName+"_VoArea"
	String NrmAreaW_FName=ImgW_FName+"_NrmArea"
	String NrmAreaHW_FName=ImgW_FName+"_NrmAreaH"
	String BetaFuncCoefW_FName=ImgW_FName+"_BetaCoef"
	String AreaTableW_FName=ImgW_FName+"_AreaTabl"
	
	wave ESpotXW=$ESpotXW_FName
	wave ESpotYW=$ESpotYW_FName
	wave IslandAreaW=$IslandAreaW_FName
	wave VAreaResM=$VAreaResM_FName
	wave VEdgesProcM=$VEdgesProcM_FName
	
	make /O/N=(dimsize(IslandAreaW,0),8) $AreaTableW_FName /WAVE=AreaTableW
	AreaTableW=NaN
	
	AreaTableW[][0]=ESpotXW[p]
	AreaTableW[][1]=ESpotYW[p]
	AreaTableW[][2]=IslandAreaW[p]
	
	variable i=0
	variable j=0
	variable N_CellSides=0
	variable ObjNo=0
	
	Make /O/N=0 $IslandAreaW_FName /WAVE=IslandAreaW
	Make /O/N=0 $VoronoiAreaW_FName /WAVE=VoronoiAreaW
	//Make /O/N=0 $NrmAreaW_Name /WAVE=NrmAreaW
	IslandAreaW=0
	VoronoiAreaW=0
	//NrmAreaW=0
	
	For (i=0;i<dimsize(VEdgesProcM,0);i+=1)
		if (numtype(VAreaResM[i][0])!=2) //If not NaN
			N_CellSides=VAreaResM[i][0]
			Make /O/N=(N_CellSides+1) CellPolyX
			Make /O/N=(N_CellSides+1) CellPolyY
			CellPolyX[]=VEdgesProcM[i][2*p]
			CellPolyY[]=VEdgesProcM[i][2*p+1]
			FindPointsInPoly ESpotXW, ESpotYW, CellPolyX, CellPolyY
			Wave W_inPoly
			FindValue /V=1 W_inPoly
			ObjNo=V_Value
			AreaTableW[ObjNo][3]=VAreaResM[i][1]
			//AreaTableW[ObjNo][4]=AreaTableW[ObjNo][2]/W_VoronoiAreaResults[i][1] //Normalized island size (by cell size)
			
			//make indv. area waves
			Redimension /N=(dimsize(IslandAreaW,0)+1) IslandAreaW
			Redimension /N=(dimsize(VoronoiAreaW,0)+1) VoronoiAreaW
			//Redimension /N=(dimsize(NrmAreaW,0)+1) NrmAreaW
			
			IslandAreaW[dimsize(IslandAreaW,0)-1]=AreaTableW[ObjNo][2]
			VoronoiAreaW[dimsize(VoronoiAreaW,0)-1]=AreaTableW[ObjNo][3]
			//NrmAreaW[dimsize(NrmAreaW,0)-1]=AreaTableW[ObjNo][4]
		EndIf
	EndFor
	
	SLP_DLA_CreateIsSizeHist()
	
	
End

Function SLP_DLA_CreateIsSizeHist()
	ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
	variable SelRow=V_Value
	
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
	String ImgW_FName=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
	NVAR HistBin=root:Package_SLP:DLA:HistBin
	
	String ImgIntCorrW_FName=ImgW_FName+"_IntCorr"
	String IntNrmImgW_FName=ImgW_FName+"_IntNrm"
	String ThImgW_FName=ImgW_FName+"_Th"
	String ESpotXW_FName=ImgW_FName+"_ESpotX"
	String ESpotYW_FName=ImgW_FName+"_ESpotY"
	String VEdgesM_FName=ImgW_FName+"_VEdges"
	String VEdgesProcM_FName=ImgW_FName+"_VEdgesP"
	String VAreaResM_FName=ImgW_FName+"_VAreaRes"
	String VEdgesXW_FName=ImgW_FName+"_VEdgesX"
	String VEdgesYW_FName=ImgW_FName+"_VEdgesY"
	String IslandAreaW_FName=ImgW_FName+"_IsArea"
	String VoronoiAreaW_FName=ImgW_FName+"_VoArea"
	String NrmAreaW_FName=ImgW_FName+"_NrmArea"
	String NrmAreaHW_FName=ImgW_FName+"_NrmAreaH"
	String BetaFuncCoefW_FName=ImgW_FName+"_BetaCoef"
	String AreaTableW_FName=ImgW_FName+"_AreaTabl"
	
	Wave IslandAreaW=$IslandAreaW_FName

	Wavestats /Q IslandAreaW
	Duplicate /O IslandAreaW,$NrmAreaW_FName /WAVE=NrmAreaW
	NrmAreaW/=V_avg
	
	//Histogram
	Make /O/N=(HistBin) $NrmAreaHW_FName /WAVE=NrmAreaHW
	WaveStats /Q NrmAreaW
	Setscale /I x,V_min,V_max,NrmAreaHW
	Histogram /B={V_min,(V_max-V_min)/HistBin,HistBin} NrmAreaW,NrmAreaHW
	//SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_PLOT1",NrmAreaHW_FName,0)
	
End

Function SLP_DLA_CreateGssBetaCurve()
	ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
	variable SelRow=V_Value
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
	String ImgW_FName=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
	
	String NrmAreaHW_FName=ImgW_FName+"_NrmAreaH"
	String BetaCurve_FName=ImgW_FName+"_BetaCurve"
	
	NVAR GuessBeta=root:Package_SLP:DLA:GuessBeta
	NVAR GuessA=root:Package_SLP:DLA:GuessA
	
	Wave NrmAreaHW=$NrmAreaHW_FName
	
	Make /O/N=128 $BetaCurve_FName /WAVE=BetaCurve
	SetScale /I x,dimoffset(NrmAreaHW,0),dimoffset(NrmAreaHW,0)+(dimsize(NrmAreaHW,0)-1)*dimdelta(NrmAreaHW,0),BetaCurve
	
	//make /O /N=2 CoefW
	//CoefW[0]={GuessBeta,GuessA}
	
	BetaCurve=GuessA*(GuessBeta^GuessBeta)/gamma(GuessBeta)*x^(GuessBeta-1)*exp(-1*GuessBeta*x)
End

Function SLP_DLA_BetaFit()
	ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
	variable SelRow=V_Value
	
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
	String ImgW_FName=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
	NVAR HistBin=root:Package_SLP:DLA:HistBin
	NVAR GuessBeta=root:Package_SLP:DLA:GuessBeta
	NVAR GuessA=root:Package_SLP:DLA:GuessA
	variable FitBeta=0
	variable FitA=0
	
	String ImgIntCorrW_FName=ImgW_FName+"_IntCorr"
	String IntNrmImgW_FName=ImgW_FName+"_IntNrm"
	String ThImgW_FName=ImgW_FName+"_Th"
	String ESpotXW_FName=ImgW_FName+"_ESpotX"
	String ESpotYW_FName=ImgW_FName+"_ESpotY"
	String VEdgesM_FName=ImgW_FName+"_VEdges"
	String VEdgesProcM_FName=ImgW_FName+"_VEdgesP"
	String VAreaResM_FName=ImgW_FName+"_VAreaRes"
	String VEdgesXW_FName=ImgW_FName+"_VEdgesX"
	String VEdgesYW_FName=ImgW_FName+"_VEdgesY"
	String IslandAreaW_FName=ImgW_FName+"_IsArea"
	String VoronoiAreaW_FName=ImgW_FName+"_VoArea"
	String NrmAreaW_FName=ImgW_FName+"_NrmArea"
	String NrmAreaHW_FName=ImgW_FName+"_NrmAreaH"
	String BetaFuncCoefW_FName=ImgW_FName+"_BetaCoef"
	String AreaTableW_FName=ImgW_FName+"_AreaTabl"
	
	Wave NrmAreaHW=$NrmAreaHW_FName
	//Fit
	Make /O/D/N=2/O $BetaFuncCoefW_FName /WAVE=BetaFuncCoefW
	BetaFuncCoefW[0] = {GuessBeta,GuessA}
	FuncFit/NTHR=0/TBOX=768 WKW_ISD BetaFuncCoefW  NrmAreaHW /D 
	FitBeta=BetaFuncCoefW[0]
	FitA=BetaFuncCoefW[1]
	SLP_DLA_ImgListW[SelRow][16]=num2str(FitBeta)
	SLP_DLA_ImgListW[SelRow][17]=num2str(FitA)
End

Function SLP_DLA_CreateAreaTable_Old(ImgWName,NBin)
	String ImgWName
	Variable NBin
	
	String ImgIntCorrW_Name=ImgWName+"_IntCorr"
	String IntNrmImgW_Name=ImgWName+"_IntNrm"
	String ThImgW_Name=ImgWName+"_Th"
	String ESpotXW_Name=ImgWName+"_ESpotX"
	String ESpotYW_Name=ImgWName+"_ESpotY"
	String AreaTableW_Name=ImgWName+"_ATable"
	String IslandAreaW_Name=ImgWName+"_IslArea"
	String VoronoiAreaW_Name=ImgWName+"_VorArea"
	String NrmAreaW_Name=ImgWName+"_NrmArea"
	String NrmAreaHW_Name=ImgWName+"_NrmAreaH"
	String BetaFuncCoefW_Name=ImgWName+"_BetaCoef"
	
	wave ESpotXW=$ESpotXW_Name
	wave ESpotYW=$ESpotYW_Name
	wave W_ImageObjArea
	wave W_VoronoiAreaResults
	wave M_VoronoiEdgesProc
	
	make /O/N=(dimsize(W_ImageObjArea,0),8) $AreaTableW_Name /WAVE=AreaTableW
	AreaTableW=NaN
	
	AreaTableW[][0]=ESpotXW[p]
	AreaTableW[][1]=ESpotYW[p]
	AreaTableW[][2]=W_ImageObjArea[p]
	
	variable i=0
	variable j=0
	variable N_CellSides=0
	variable ObjNo=0
	
	Make /O/N=0 $IslandAreaW_Name /WAVE=IslandAreaW
	Make /O/N=0 $VoronoiAreaW_Name /WAVE=VoronoiAreaW
	//Make /O/N=0 $NrmAreaW_Name /WAVE=NrmAreaW
	IslandAreaW=0
	VoronoiAreaW=0
	//NrmAreaW=0
	
	For (i=0;i<dimsize(M_VoronoiEdgesProc,0);i+=1)
		if (numtype(W_VoronoiAreaResults[i][0])!=2) //If not NaN
			N_CellSides=W_VoronoiAreaResults[i][0]
			Make /O/N=(N_CellSides+1) CellPolyX
			Make /O/N=(N_CellSides+1) CellPolyY
			CellPolyX[]=M_VoronoiEdgesProc[i][2*p]
			CellPolyY[]=M_VoronoiEdgesProc[i][2*p+1]
			FindPointsInPoly ESpotXW, ESpotYW, CellPolyX, CellPolyY
			Wave W_inPoly
			FindValue /V=1 W_inPoly
			ObjNo=V_Value
			AreaTableW[ObjNo][3]=W_VoronoiAreaResults[i][1]
			//AreaTableW[ObjNo][4]=AreaTableW[ObjNo][2]/W_VoronoiAreaResults[i][1] //Normalized island size (by cell size)
			
			//make indv. area waves
			Redimension /N=(dimsize(IslandAreaW,0)+1) IslandAreaW
			Redimension /N=(dimsize(VoronoiAreaW,0)+1) VoronoiAreaW
			//Redimension /N=(dimsize(NrmAreaW,0)+1) NrmAreaW
			
			IslandAreaW[dimsize(IslandAreaW,0)-1]=AreaTableW[ObjNo][2]
			VoronoiAreaW[dimsize(VoronoiAreaW,0)-1]=AreaTableW[ObjNo][3]
			//NrmAreaW[dimsize(NrmAreaW,0)-1]=AreaTableW[ObjNo][4]
		EndIf
	EndFor
	
	Wavestats /Q IslandAreaW
	Duplicate /O IslandAreaW,$NrmAreaW_Name /WAVE=NrmAreaW
	NrmAreaW/=V_avg
	
	Display IslandAreaW vs VoronoiAreaW
	Modifygraph mode=3,mirror=1,minor=1,tick=2
	Legend
	
	
	//Histogram
	Make /O/N=(NBin) $NrmAreaHW_Name /WAVE=NrmAreaHW
	WaveStats /Q NrmAreaW
	Setscale /I x,V_min,V_max,NrmAreaHW
	Histogram /B={V_min,(V_max-V_min)/NBin,NBin} NrmAreaW,NrmAreaHW
	Display NrmAreaHW
	Modifygraph mode=5,mirror=1,minor=1,tick=2,hbFill=4
	//Fit
	Make /O/D/N=2/O $BetaFuncCoefW_Name /WAVE=BetaFuncCoefW
	BetaFuncCoefW[0] = {3,19}
	FuncFit/NTHR=0/TBOX=768 WKW_ISD BetaFuncCoefW  NrmAreaHW /D 
	
End

Function WKW_ISD(w,x) : FitFunc
	Wave w
	Variable x

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(x) = A*(Beta^Beta)/gamma(Beta)*x^(Beta-1)*exp(-1*Beta*x)
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ x
	//CurveFitDialog/ Coefficients 2
	//CurveFitDialog/ w[0] = Beta
	//CurveFitDialog/ w[1] = A

	return w[1]*(w[0]^w[0])/gamma(w[0])*x^(w[0]-1)*exp(-1*w[0]*x)
End

Function SetVarProc_DLA_FindIslands(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
			variable SelRow=V_Value
			Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
			String ImgW_FName=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
			
			NVAR xAdj=root:Package_SLP:DLA:xAdj
			NVAR yAdj=root:Package_SLP:DLA:yAdj
			NVAR intAdj=root:Package_SLP:DLA:intAdj
			NVAR ImgTh=root:Package_SLP:DLA:ImgTh
			NVAR MinSize=root:Package_SLP:DLA:MinSize
			
			SLP_DLA_ImgListW[SelRow][4]=num2str(xAdj)
			SLP_DLA_ImgListW[SelRow][5]=num2str(yAdj)
			SLP_DLA_ImgListW[SelRow][6]=num2str(intAdj)
			SLP_DLA_ImgListW[SelRow][7]=num2str(ImgTh)
			SLP_DLA_ImgListW[SelRow][8]=num2str(MinSize)
			
			SLP_DLA_FindIslands(ImgW_FName,xAdj,yAdj,intAdj,ImgTh,MinSize)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_DLA_FindIslands(ImgW_FName,xAdj,yAdj,intAdj,ImgTh,MinSize)
	String ImgW_FName
	
	variable xAdj
	variable yAdj
	variable intAdj
	variable ImgTh
	variable MinSize
	
	String ImgIntCorrW_FName=ImgW_FName+"_IntCorr"
	String IntNrmImgW_FName=ImgW_FName+"_IntNrm"
	String ThImgW_FName=ImgW_FName+"_Th"
	String ESpotXW_FName=ImgW_FName+"_ESpotX"
	String ESpotYW_FName=ImgW_FName+"_ESpotY"
	String VEdgesM_FName=ImgW_FName+"_VEdges"
	String VEdgesXW_FName=ImgW_FName+"_VEdgesX"
	String VEdgesYW_FName=ImgW_FName+"_VEdgesY"
	String IslandAreaW_FName=ImgW_FName+"_IsArea"
	
	Wave ImgW=$ImgW_FName
	
	Duplicate /O $ImgW_FName,$ImgIntCorrW_FName /WAVE=ImgIntCorrW
	
	ImgIntCorrW=intAdj*((x-xAdj)^2+(y-yAdj)^2)
	
	Duplicate /O $ImgW_FName,$IntNrmImgW_FName /WAVE=IntNrmImgW
	IntNrmImgW=ImgW-ImgIntCorrW
	
	ImageThreshold/Q/I/T=(ImgTh) $IntNrmImgW_FName
	Wave M_ImageThresh
	Duplicate /O M_ImageThresh,$ThImgW_FName
	
	ImageAnalyzeParticles /E/W/Q/M=3/A=(MinSize) stats, $ThImgW_FName
	
	If (V_NumParticles>10)
		
		Wave M_Moments
		
		duplicate /O/R=[][0] M_Moments,$ESpotXW_FName /WAVE=ESpotXW
		duplicate /O/R=[][1] M_Moments,$ESpotYW_FName /WAVE=ESpotYW
		Redimension /N=-1 ESpotXW
		Redimension /N=-1 ESpotYW
		
		//NewImage /N=VoronoiMesh IntNrmImgW
		//Appendtograph /W=VoronoiMesh /T=top ESpotYW vs ESpotXW
		//Modifygraph /W=VoronoiMesh mode=3,marker=19,msize=3
		
		Make /O/N=(dimsize(ESpotXW,0),3) M_ESpotXY
		M_ESpotXY[][0]=ESpotXW[p]
		M_ESpotXY[][1]=ESpotYW[p]
		M_ESpotXY[][2]=0
		
		ImageTransForm Voronoi M_ESpotXY
		
		Wave M_VoronoiEdges
		Duplicate /O M_VoronoiEdges,$VEdgesM_FName /WAVe=VEdgesM
		Duplicate /O/R=[][0] M_VoronoiEdges,$VEdgesXW_FName /WAVe=VEdgeXW
		Duplicate /O/R=[][1] M_VoronoiEdges,$VEdgesYW_FName /WAVe=VEdgeYW
		
		//Appendtograph  /T=top M_VoronoiEdges[][1] vs M_VoronoiEdges[][0]
		
		variable xMin=dimoffset(ImgW,0)
		variable xMax=dimoffset(ImgW,0)+dimdelta(ImgW,0)*(dimsize(ImgW,0)-1)
		variable yMin=dimoffset(ImgW,1)
		variable yMax=dimoffset(ImgW,1)+dimdelta(ImgW,1)*(dimsize(ImgW,1)-1)
		
		SetAxis /W=SLP_DLA_Panel_01#DLA_IMAGE2 bottom,xMin,xMax
		SetAxis /R/W=SLP_DLA_Panel_01#DLA_IMAGE2 left,yMin,yMax
		
		wave W_ImageObjArea
		duplicate /O W_ImageObjArea,$IslandAreaW_FName 
		
		SLP_DLA_DisplaySelectedImg()
		
	EndIf
End

Function SLP_DLA_FindIslands_StandAlone(ImgWName,xAdj,yAdj,intAdj,ImgTh,MinSize)
	String ImgWName
	
	variable xAdj
	variable yAdj
	variable intAdj
	variable ImgTh
	variable MinSize
	
	String ImgIntCorrW_Name=ImgWName+"_IntCorr"
	String IntNrmImgW_Name=ImgWName+"_IntNrm"
	String ThImgW_Name=ImgWName+"_Th"
	String ESpotXW_Name=ImgWName+"_ESpotX"
	String ESpotYW_Name=ImgWName+"_ESpotY"
	String VorEdgesW_Name=ImgWName+"_VorEdges"
	
	Wave ImgW=$ImgWName
	
	Duplicate /O $ImgWName,$ImgIntCorrW_Name /WAVE=ImgIntCorrW
	
	ImgIntCorrW=intAdj*((x-xAdj)^2+(y-yAdj)^2)
	
	Duplicate /O $ImgWName,$IntNrmImgW_Name /WAVE=IntNrmImgW
	IntNrmImgW=ImgW-ImgIntCorrW
	
	ImageThreshold/Q/I/T=(ImgTh) $IntNrmImgW_Name
	Wave M_ImageThresh
	Duplicate /O M_ImageThresh,Pn05_21_Th
	
	ImageAnalyzeParticles /E/W/Q/M=3/A=(MinSize) stats, $ThImgW_Name
	Wave M_Moments
	duplicate /O/R=[][0] M_Moments,$ESpotXW_Name /WAVE=ESpotXW
	duplicate /O/R=[][1] M_Moments,$ESpotYW_Name /WAVE=ESpotYW
	Redimension /N=-1 ESpotXW
	Redimension /N=-1 ESpotYW
	
	NewImage /N=VoronoiMesh IntNrmImgW
	Appendtograph /W=VoronoiMesh /T=top ESpotYW vs ESpotXW
	Modifygraph /W=VoronoiMesh mode=3,marker=19,msize=3
	
	Make /O/N=(dimsize(ESpotXW,0),3) M_ESpotXY
	M_ESpotXY[][0]=ESpotXW[p]
	M_ESpotXY[][1]=ESpotYW[p]
	M_ESpotXY[][2]=0
	
	ImageTransForm Voronoi M_ESpotXY
	
	Wave M_VoronoiEdges
	Duplicate /O M_VoronoiEdges,$VorEdgesW_Name /WAVe=VorEdgesW
	
	Appendtograph  /T=top M_VoronoiEdges[][1] vs M_VoronoiEdges[][0]
	
	variable xMin=dimoffset(ImgW,0)
	variable xMax=dimoffset(ImgW,0)+dimdelta(ImgW,0)*(dimsize(ImgW,0)-1)
	variable yMin=dimoffset(ImgW,1)
	variable yMax=dimoffset(ImgW,1)+dimdelta(ImgW,1)*(dimsize(ImgW,1)-1)
	
	SetAxis top ,xMin,xMax
	SetAxis/R left yMin,yMax
	
	SLP_DLA_VoronoiTraceAll(xMin,xMax,yMin,yMax)

End

Function SLP_DLA_VoronoiTraceAll(xMin,xMax,yMin,yMax)
	variable xMin,xMax,yMin,yMax
	
	ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
	variable SelRow=V_Value
	
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
	String ImgW_FName=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
	String VEdgesProcM_FName=ImgW_FName+"_VEdgesP"

	SLP_DLA_VoronoiProc1()
	Wave VEdgesProcM=$VEdgesProcM_FName
	
	Setdrawlayer /W=SLP_DLA_Panel_01#DLA_IMAGE2 ProgFront
	DrawAction /W=SLP_DLA_Panel_01#DLA_IMAGE2 delete
		
	Variable N_CellEdges=dimsize(VEdgesProcM,0)
	
	Variable i
	
	For (i=0;i<N_CellEdges;i+=1)
		SLP_DLA_VoronoiTraceSingle(i,xMin,xMax,yMin,yMax)
	EndFor
End

Function SLP_DLA_VoronoiProc1()
	ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
	variable SelRow=V_Value
	
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
	String ImgW_FName=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
	String ImgIntCorrW_FName=ImgW_FName+"_IntCorr"
	String IntNrmImgW_FName=ImgW_FName+"_IntNrm"
	String ThImgW_FName=ImgW_FName+"_Th"
	String ESpotXW_FName=ImgW_FName+"_ESpotX"
	String ESpotYW_FName=ImgW_FName+"_ESpotY"
	String VEdgesM_FName=ImgW_FName+"_VEdges"
	String VEdgesProcM_FName=ImgW_FName+"_VEdgesP"
	String VAreaResM_FName=ImgW_FName+"_VAreaRes"
	String VEdgesXW_FName=ImgW_FName+"_VEdgesX"
	String VEdgesYW_FName=ImgW_FName+"_VEdgesY"
	
	Wave VEdgesM=$VEdgesM_FName
	
	variable i=0
	
	Make /O /N=(dimsize(VEdgesM,0)/3, 64) $VEdgesProcM_FName /WAVE=VEdgesProcM
	Make /O /N=(dimsize(VEdgesProcM,0),8) $VAreaResM_FName /WAVE=VAreaResM
	VEdgesProcM=NaN
	VAreaResM=NaN
	
	For (i=0;i<dimsize(VEdgesM,0);i+=3)
		VEdgesProcM[i/3][0]=VEdgesM[i+0][0]
		VEdgesProcM[i/3][1]=VEdgesM[i+0][1]
		VEdgesProcM[i/3][2]=VEdgesM[i+1][0]
		VEdgesProcM[i/3][3]=VEdgesM[i+1][1]
	EndFor
End

Function SLP_DLA_VoronoiTrace()
	Wave M_VoronoiEdgesProc
	variable i=0
	variable j=0
	variable k=0
	
	Make /O /N=(4,1) V_OrgVector
	Make /O /N=(4,2) M_PathVectors
	
	variable x0,y0
	variable x1,y1
	
	For (i=0;i<dimsize( M_VoronoiEdgesProc,0);i+=1)
		V_OrgVector=M_VoronoiEdgesProc[i][q]
		x1=M_VoronoiEdgesProc[i][2]
		y1=M_VoronoiEdgesProc[i][3]
		For (j=0;j<dimsize( M_VoronoiEdgesProc,0);j+=1)
			If(j!=i)
				if (x1==M_VoronoiEdgesProc[j][0]&&y1==M_VoronoiEdgesProc[j][1])
					M_PathVectors[k][0]=x1
					M_PathVectors[k][1]=y1
					M_PathVectors[k][2]=M_VoronoiEdgesProc[j][2]
					M_PathVectors[k][3]=M_VoronoiEdgesProc[j][3]
					k+=1
				Elseif (x1==M_VoronoiEdgesProc[j][2]&&y1==M_VoronoiEdgesProc[j][3])
					M_PathVectors[k][0]=x1
					M_PathVectors[k][1]=y1
					M_PathVectors[k][2]=M_VoronoiEdgesProc[j][0]
					M_PathVectors[k][3]=M_VoronoiEdgesProc[j][1]
					k+=1
				Endif
			Endif
		EndFor
	EndFor
	
End

Function SLP_DLA_VoronoiTraceSingle(row,xMin,xMax,yMin,yMax)

	variable row
	variable xMin,xMax,yMin,yMax
	
	ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
	variable SelRow=V_Value
	
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
	String ImgW_FName=SLP_DLA_ImgListW[SelRow][1]+SLP_DLA_ImgListW[SelRow][0]
	String ImgIntCorrW_FName=ImgW_FName+"_IntCorr"
	String IntNrmImgW_FName=ImgW_FName+"_IntNrm"
	String ThImgW_FName=ImgW_FName+"_Th"
	String ESpotXW_FName=ImgW_FName+"_ESpotX"
	String ESpotYW_FName=ImgW_FName+"_ESpotY"
	String VEdgesM_FName=ImgW_FName+"_VEdges"
	String VEdgesProcM_FName=ImgW_FName+"_VEdgesP"
	String VAreaResM_FName=ImgW_FName+"_VAreaRes"
	String VEdgesXW_FName=ImgW_FName+"_VEdgesX"
	String VEdgesYW_FName=ImgW_FName+"_VEdgesY"

	Wave VEdgesProcM=$VEdgesProcM_FName
	Wave VAreaResM=$VAreaResM_FName
	
	//variable i=0
	variable j=0
	variable k=0
	variable m=2
	
	//Make /O /N=(1,4) V_OrgVector
	Make /O /N=(16,4) M_PathVectors
	Make /O /N=(dimsize(VEdgesProcM,0)) W_PassFlg
	
	W_PassFlg=0
	
	W_PassFlg[row]=1
	
	variable x0,y0
	variable x1,y1
	
	Setdrawlayer /W=SLP_DLA_Panel_01#DLA_IMAGE2 UserFront	
	DrawAction /W=SLP_DLA_Panel_01#DLA_IMAGE2 delete
	SetDrawEnv /W=SLP_DLA_Panel_01#DLA_IMAGE2  xcoord=bottom, ycoord=left,lineThick=3,lineFgc=(0,65535,0)
	Drawline /W=SLP_DLA_Panel_01#DLA_IMAGE2 VEdgesProcM[row][m-2],VEdgesProcM[row][m-1],VEdgesProcM[row][m-0],VEdgesProcM[row][m+1]
	
	Do
		//V_OrgVector=M_VoronoiEdgesProc[row][q]
		x0=VEdgesProcM[row][m-2]
		y0=VEdgesProcM[row][m-1]
		x1=VEdgesProcM[row][m-0]
		y1=VEdgesProcM[row][m+1]
		
		If (x0<xMin||x0>xMax||y0<yMin||y0>yMax||x1<xMin||x1>xMax||y1<xMin||y1>xMax)
			//W_VoronoiAreaResults[row][]=NaN
			Return 0
		Endif
		
		//Search for points that match (x1,y1)
		For (j=0;j<dimsize(VEdgesProcM,0);j+=1)
			If(W_PassFlg[j]!=1) //skip itself
				if (x1==VEdgesProcM[j][0]&&y1==VEdgesProcM[j][1])
					M_PathVectors[k][0]=x1
					M_PathVectors[k][1]=y1
					M_PathVectors[k][2]=VEdgesProcM[j][2]
					M_PathVectors[k][3]=VEdgesProcM[j][3]
					k+=1
					W_PassFlg[j]=1
				Elseif (x1==VEdgesProcM[j][2]&&y1==VEdgesProcM[j][3])
					M_PathVectors[k][0]=x1
					M_PathVectors[k][1]=y1
					M_PathVectors[k][2]=VEdgesProcM[j][0]
					M_PathVectors[k][3]=VEdgesProcM[j][1]
					k+=1
					W_PassFlg[j]=1
				Endif
			Endif
		EndFor
		
		variable VSelection=SLP_DLA_CWPathSelect(x0,y0,x1,y1,M_PathVectors[0][2],M_PathVectors[0][3],M_PathVectors[1][2],M_PathVectors[1][3])
		
		If (VSelection==1)
			VEdgesProcM[row][m+2]=M_PathVectors[0][2]
			VEdgesProcM[row][m+3]=M_PathVectors[0][3]
		ElseIf (VSelection==2)
			VEdgesProcM[row][m+2]=M_PathVectors[1][2]
			VEdgesProcM[row][m+3]=M_PathVectors[1][3]
		Endif
		
		Setdrawlayer /W=SLP_DLA_Panel_01#DLA_IMAGE2 UserFront	
		//DrawAction /W=SLP_DLA_Panel_01#DLA_IMAGE2 delete
		SetDrawEnv /W=SLP_DLA_Panel_01#DLA_IMAGE2  xcoord=bottom, ycoord=left,lineThick=3,lineFgc=(0,0,65535)
		Drawline /W=SLP_DLA_Panel_01#DLA_IMAGE2 x1,y1,VEdgesProcM[row][m+2],VEdgesProcM[row][m+3]
		
		DoUpdate
		
		M_PathVectors=0
		k=0
		m+=2
	
	While (!(VEdgesProcM[row][0]==VEdgesProcM[row][m]&&(VEdgesProcM[row][1]==VEdgesProcM[row][m+1]))&&m<100)
	
	variable N_Sides=m/2
	VAreaResM[row][0]=N_Sides
	make /O/N=(N_Sides+1) CellEdgeX
	make /O/N=(N_Sides+1) CellEdgeY
	CellEdgeX=VEdgesProcM[row][2*p]
	CellEdgeY=VEdgesProcM[row][2*p+1]
	VAreaResM[row][1]=AreaXY(CellEdgeX,CellEdgeY)
	String AreaXYText=num2str(AreaXY(CellEdgeX,CellEdgeY))
	
	variable xCenter=mean(CellEdgeX,0,dimsize(CellEdgeX,0)-1)
	variable yCenter=mean(CellEdgeY,0,dimsize(CellEdgeY,0)-1)
	
	Setdrawlayer /W=SLP_DLA_Panel_01#DLA_IMAGE2  ProgFront	
	SetDrawEnv /W=SLP_DLA_Panel_01#DLA_IMAGE2   xcoord=bottom, ycoord=left,fSize=10,TextRGB=(0,0,0)
	DrawText /W=SLP_DLA_Panel_01#DLA_IMAGE2  xCenter,yCenter,AreaXYText
	DoUpdate
End

Function SLP_DLA_CWPathSelect(x0,y0,x1,y1,x2,y2,x3,y3)
	variable x0,y0,x1,y1,x2,y2,x3,y3
	
	variable a0=x1-x0
	variable b0=y1-y0
	variable a1=x2-x1
	variable b1=y2-y1
	variable a2=x3-x1
	variable b2=y3-y1
	
	variable crossP01=a0*b1-a1*b0
	variable crossP02=a0*b2-a2*b0
	
	variable Vselection=0
	
	If (crossP01>=crossP02)
		Vselection=1
	Else
		Vselection=2
	Endif
	
	Return VSelection
End

