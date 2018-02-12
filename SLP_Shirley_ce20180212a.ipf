#pragma rtGlobals=3		// Use modern global access method and strict wave access.

Function SLP_Util_ShirleyGen(nrmXPSW_FName,E_High,E_Low,Iteration,Display_Flg)
	String nrmXPSW_FName
	Variable E_High
	Variable E_Low
	Variable Iteration
	Variable Display_Flg
	
	Wave nrmXPSW=$nrmXPSW_FName
	Variable N_steps=dimsize(nrmXPSW,0)-1
	String BkWardXPSW_FName=nrmXPSW_FName+"_BkWard"
	String ShirleyBGW_FName=nrmXPSW_FName+"_Shirley"
	String nSBGW_FName=nrmXPSW_FName+"_nSBG"
	
	//Create 'Backward' wave (delta = positive) otherwise the 'integrate' function wouldn't work
	Duplicate /O nrmXPSW $BkWardXPSW_FName /Wave=BkWardXPSW
	BkWardXPSW[]=nrmXPSW[N_steps-p]-nrmXPSW(E_Low) //Remove flate BG (pre-peak should be zero)
	Variable BE_Min=dimoffset(nrmXPSW,0)+dimdelta(nrmXPSW,0)*(dimsize(nrmXPSW,0)-1)
	Variable BE_Step=-1*dimdelta(nrmXPSW,0)
	setscale /P x,BE_Min,BE_Step,BkWardXPSW
	
	//Shirley BG (backwarded version - to be killed later)
	Duplicate /O BkWardXPSW root:Package_SLP:Util:ShirleyBGW_BkWard /Wave=ShirleyBGW_BkWard 
	Duplicate /O BkWardXPSW $nSBGW_FName /Wave=nSBGW //Data wave minus BG (for iteration only - to be killed later)
	
	ShirleyBGW_BkWard=0 //Initialize Shirley BG = 0
	
	Variable i=0
	Variable k1=1
	
	//Iteration to create Shirley BG (use Shirley's algorithm)
	For (i=0;i<Iteration;i+=1)	
		nSBGW=BkWardXPSW-ShirleyBGW_BkWard
		integrate /METH=1 nSBGW /D=ShirleyBGW_BkWard
		
		//Scale Shirley BG so that it crosses the DATA WAVE at E_high
		k1=BkWardXPSW(E_High)/ShirleyBGW_BkWard(E_High)
		ShirleyBGW_BkWard*=k1
	EndFor
	
	//Back to using negative deltaE for Shirley BG
	SLP_Util_Reverse_Xaxis("root:Package_SLP:Util:ShirleyBGW_BkWard",ShirleyBGW_FName) 
	//Remove Bkward wave
	Killwaves $BkWardXPSW_FName
	
	Wave ShirleyBGW=$ShirleyBGW_FName
	ShirleyBGW+=nrmXPSW(E_Low) //Add the pre-peak BG to the Shirley BG
	
	Duplicate /O nrmXPSW $nSBGW_FName /Wave=nSBGW //Create the resulting wave
	nSBGW=nrmXPSW-ShirleyBGW
	
	//Display data
	If (Display_Flg)
		String TraceList=""
		String TraceName=""
		
		Display ShirleyBGW
		ModifyGraph mode=7;DelayUpdate
		ModifyGraph rgb=(65535,49151,49151) , hbFill=2 //Filled
		Modifygraph mirror=1, minor=1, tick=2
		Legend
		Setaxis /A/R bottom
		
		Appendtograph nrmXPSW //XPS data wave
		Appendtograph nSBGW //Resulting wave (formatted to dashed)
		TraceList=tracenameList("",";",1)
		TraceName=stringfromlist(itemsinlist(TraceList,";")-1,TraceList)
		Modifygraph lstyle($TraceName)=2
	Endif
End

Function SLP_Util_Reverse_Xaxis(dataW_FName,BkwardDataW_FName)
	String dataW_FName
	String BkwardDataW_FName
	
	Wave dataW=$dataW_FName
	
	variable N_datapoints=dimsize(dataW,0)
	
	Duplicate /O $dataW_FName $BkwardDataW_FName /Wave=BkwardDataW
	
	BkwardDataW[]=dataW[N_datapoints-1-p]
	
	Variable X_Min=dimoffset(dataW,0)+dimdelta(dataW,0)*(dimsize(dataW,0)-1)
	Variable X_Step=-1*dimdelta(dataW,0)
	setscale /P x,X_Min,X_Step,BkwardDataW
End