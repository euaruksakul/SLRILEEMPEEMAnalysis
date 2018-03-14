#pragma rtGlobals=3		// Use modern global access method and strict wave access.

/////////////////////////////////////
//////////CHANGE LOG/////////////////
////////////////////////////////////

//SLPA ver. ce20180222a.ipf
// - [UTIL] Bug fix: SLP_Util_ShirleyGen to be able to create Shirley BG for both positive and negative dE.

//SLPA ver. ce20180221a.ipf
// - [DXPS] SLP_DXPS_Convert4PCA() - convert Map Volume Wave into a table to be used for PCA analysis software

//SLPA ver. ce20180219a.ipf
// - [UTIL] SLP_Util_Split2D() to split 2D wave (e.g. TRXPS scan) into multiple 1D waves
// - [UTIL] SLP_Util_NormalizeMultiWaves()

//SLPA ver. ce20180212a.ipf
// - [UTIL] add SLP_Util_ShirleyGen to generate Shirley BG and subtract the BG (for XPS)

//SLPA ver. ce20180201a.ipf
//	- [DXPS] Ask users for photon energy (hv) when loading the scan.

//SLPA ver. ce20180131b.ipf
//	- [DXPS] Bug fixes on the BE/STV swap for Merged spectrum after changing Disp. Factor or (x0,y0)
//	- [DXPS] Change default values

//SLPA ver. ce20180131a.ipf
//	- [DXPS] Bug fixes on the overwriting exported waves.

//SLPA ver. ce20180130b.ipf
//	- [DXPS] Initialize the selected dispersive line (vertical line in the middle)

//SLPA ver. ce20180130a.ipf
//	- [DXPS] Ask whether user wants to overwrite the wave when exporting the plot

//SLPA ver. ce20180116a.ipf
//	- [DXPS] Check whether the selected scan name is duplicated or not.

//SLPA ver. ce20171227a.ipf
//	- [DXPS] Bug fix - Newly loaded scan is selected after the load finish.

//SLPA ver. ce20171030a.ipf
//	- [DXPS] Bug fix - add the auto detection of STV start, STV step from .txt file in the DXPS scan.

//SLPA ver. ce20170920a.ipf
//	- [IXPS] Bug fix - Extract LEEM Cutoff - previously MapVol size is only 1 layer and only collect the first parameter. Corrected now.

//SLPA ver. ce20170906d.ipf
//	- [LL] Note field is now editable. Can make note for individual image

//SLPA ver. ce20170906c.ipf
//	- [Util] Ask user to find SLP_Auger_W.ibw or SLP_BE_W.ibw if they have not been loaded to the current Igor folder.

//SLPA ver. ce20170906b.ipf
//	- [DXPS] Add Auger data to peak assignment
//	- [IXPS] Add Auger data to peak assignment

//SLPA ver. ce20170906a.ipf
//	- [LL] Bug fix - Display preview image once the 'Preview' checkbox is clicked [ListBoxProx_LL_FileList]

//SLPA ver. ce20170904a.ipf
//	- [DXPS] Bug fix - Peak assignment hook function. 

//SLPA ver. ce20170816b.ipf
//	- [IXPS] Draw ROI manually instead of using auto- screen mask creation

//SLPA ver. ce20170816a.ipf
//	- [DXPS] SLP_DXPS_RestoreRawData - If the raw data has been moved, ask user to browse for it.

//SLPA ver. ce20170815b.ipf
//	- [DXPS] Peak assignment function.

//SLPA ver. ce20170815a.ipf
//	- [DXPS] BE/KE display for the combined spectrum. Export to BE or KE. Prompt for analyzer's WF if no input.

//SLPA ver. ce20170728a.ipf
//	- [IXPS] Fix small bugs on peak assignment/BE display function (initialize new scans)
//	- [IXPS] Warn when users try to use existing volume names (incl. names used by other SLP functions) during Load Scan..

//SLPA ver. ce20170713a.ipf
//	- [IXPS] Peak assignment (using BE table)

//SLPA ver. ce20170707c.ipf
//	- [IXPS] Export and plot z-profile (both KE and BE)

//SLPA ver. ce20170707a.ipf
//	- [IXPS] Save z-profile cursor positions for each scan
//	- [IXPS] Able to switch KE<->BE scale

//SLPA ver. ce20170707a.ipf
//	- [IXPS] Bug fix - Delete all scans = ok (previously didn't actually delete raw data..)

//SLPA ver. ce20170706c.ipf
//	- [IXPS] Automatically detect STV start, STV step when loading IXPS,DXPS,LEEDIV,LEEMIV

//SLPA ver. ce20170706b.ipf
//	- [DLA] Bug fix - Don't display anything if there is no image loaded yet
//	- [UTIL] LoadMultImg2Vol can now load either .tif and .TIFF for 
//	- [IXPS] Bug fix - Error when 'See z-profile' is checked when loading new volume.

//SLPA ver. ce20170706a.ipf
//	- [DLA] Include Diffusion Limit Aggregation analysis (SLP_DLA_ce20170504d.ipf)

//SLPA ver. ce20170629a.ipf
//	- [IXPS] Can use cursor to see different z-profile in different area. First use of 'hook' function in Igor.

//SLPA ver. ce20170627a.ipf
//	- [IXPS] Add 'LEEM cut-off' mapping (for rel. WF measurement with LEEM).

//SLPA ver. ce20170607a.ipf
//	- [IXPS] Can now adjust Isochromaticity mathematical function (displayed in SetVar controls)

//SLPA ver. ce20170606d.ipf
//	- [IXPS] Use Inversed GLA instead (for KE scale)

//SLPA ver. ce20170606c.ipf
//	- [IXPS] Add 4GLAs fit function
//	- [IXPS] Small bug fix on display selected param. map (applied auto-intensity)

//SLPA ver. ce20170606b.ipf
//	- [IXPS] Add 3GLAs fit function

//SLPA ver. ce20170606a.ipf
//	- [IXPS] adjust LLim and ULim after loading
//	- [IXPS] Bug fixes for the Display/selected image vs. histogram and auto intensity adjust

//SLPA ver. ce20170430b.ipf
//	- [IXPS] Change to green color

//SLPA ver. ce20170430a.ipf
//	- [IXPS] Copy fit coef. from another scan

//SLPA ver. ce20170429b.ipf
//	- [IXPS] Update fit mask LLim and ULim variable with scan selection
//	- [IXPS] Copy screen mask from another scan (with the same bin)

//SLPA ver. ce20170429a.ipf
//	- [IXPS] 1GLA fit mode added
//	- [IXPS] Hold functionality for keeping fit coef. constant

//SLPA ver. ce20170424a.ipf
//	- [IXPS] Improve the auto range funtionality - use median then average MatrixFilter (avg works quite well with NaN)

//SLPA ver. ce20170424a.ipf
//	- [IXPS] 
//		- Correc the Image selection function - should work properly now
//		- Do a 'low pass filter' with MatrixFilter in the 'median' mode to remove speckles. The histogram looks much better this way.
//		- Automatically set the Color min/max using the LPF'ed Map
//		- Update the color min/max slider and color min/max update the ParamDisplayW
//		- Clean up the DisplaySel function (call the SelectImage function instead of doing it by itself)

//SLPA ver. ce20170420a.ipf
//	- [NEX] Load scans.. button is now load only one scan at a time. It also checks and corrects the scan name automatically.
//	- [IXPS] Auto create correction (using 2d parabolic correction function)

//SLPA
//	- Load_LEEMDAT_ce20170226a.ipf
//	- SLP_NEXAFS_ce20170104a.ipf
//	- DispXPS_Panel_ce20170302f.ipf
//	- ImgXPS_Panel_ce20170321e.ipf
//	- SLP_Util_ce20170226a.ipf

//ver. ce20170104a
//	- Add SLP_Load_oldLEEM_Img() - Load old .DAT file from Elmitec LEEM (before 2014)
	
//ver. ce20161216a
// - Add image creation date/time in the param list

//ver. ce20161215c
// - Add Image notes
// - Some cosmetic changes
// - Bug fix on deleting many DataSet

//ver. ce20161215b
// - Delete dataset is available. It warns when some images are in used. Dataset won't be deleted in that case.

//ver. ce20161214a
// - Cross-hair in the Find screen dialog (only if the x-y scale is not set). Values of new x_center and y_center can be manually changed.
// - Change Plot single image button to Plot fullsize image (required that the data file is accessible). Plot single image still works with double clicking the image name in the list

//ver. ce20161210a
// - Stitch - ROI can be modified. Mask creation window also shows selected image behind the mask.

//ver. ce20161209a
// - Add functions to scale images, find screen position, and image stitching
// - Plot the displayed image w/ description legend
// - Export selected images to TIFF files in selected folder w/ a .csv file containing image details
	//[from Stitch .ipf  Ver. ce20161128a.ipf
		// - Work with LoadLEEM .ipf
		// - Set scale for selected images in the dataset. Scale can be pixel, relative or absolute (offset with Mitutoyo X,Y reading).

//Ver. ce20161207a.ipf
// - Stitching almost works. Need algorithm for some FOV adjustment (e.g. 75um FOV is not really

//ver. ce20161119a
// - Load images (.DAT) in batch. Read and store important LEEM/PEEM parameters from the header of the image file

//ver.ce20161123a
// - User interface
// - Load sets of image and automatically save the image set. 

//ver.ce20161124a
// - Bug fixed - solve the problem when the some image number is missing. Change the search algorithm in the SLP_LL_setup function (now ver.2)
// - Record no. of images in the 4th column of DatasetListW
// - Cosmetic change to the image plot display

//ver. ce20161126a
// - New dataset selection and display automatically after loading
// - Default resize option is 0.25 and is kept afterward
// - Bug fixed - parameter display update
// - Dataset name suggestion using folder name

//ver. ce20161127a
// - Warn when users use duplicated dataset name

//ver. ce20161127b
// - Remove the 128 dataset limit. ImgSetListW size is increased with added datasets
// - use 'row=" in the ListBox selection so that the selection is always visible when switching between datasets
// - Prevent users from clicking outside the range in Image and DataSet listboxes

//ver. ce20161127c
// - Image/dataset selection with SelWave
// - Select all/select none buttons for image list

//ver. ce20161127d
// - Image ctab (colour/first colour/last colour)is retained for the next image selection. It is saved for the next time the program is run

//ver. ce20170226a
// - Add new image load panel. The multiple image loading is easier and more efficient.
// - Bug fix on the deleting datasets (the previous version doesn't use /TXOP=6 in the FindValue so the deletion had been wrong

/////////////////////////////////////
/////////////TODOs/////////////////
/////////////////////////////////////
// [LEED-IV]
//	- Extract IV curves from LEEM's LEED
//	[UTIL]
//	- Project creation
//	- Auto detect/index new data
//	- Auto update??
//	- Report creation assist - Report panel
//	[LoadLEEM]
//	+ Functionality
	// - ***Make notes for individual images [to be used for Report Making feature]
	// - **Report making
	// - Record time when images have been captured
//	+ Bug fixes
	// - Editable note column for images and dataset
	// - Load TIFF&other file types as well
	// - Should be able to distinguish the LEED/Disp. mode and prevent program from interrupting the processes
	// - Error when all datasets are deleted
	// - FOV name table <-> FOV variable
//	[NEXAFS]
//	- Option to load existing wave instead of from .txt file (e.g. z-profile waves extracted from [ImgXPS]
//	- Fit and Global fit
//	- Report creation - export to LaTeX
//	- Rescale selected graph button
//	- Clear all graph selections button
//	- Memorise recipe parameter values
//	[ImgXPS]
//	- Volume data pre-processing - [z-wave] Normalize, subtraction, and [xy wave] Isochromaticity correction, brightness correction before extraction
//	+ Additional features	*
//		- Th. adj. for screen mask creation
//			- Error report when scrn. msk. creation is not successful
//	- Coef. real-time display for curve fitting
//	- Est. time for extraction
//	- Quick ext. mode (no fit display)
//	- Error marking for bad fit.
//	[DispXPS]
//	- Fitting and Global Fitting
//	- Use 'absolute' scale (in ref. to the MCP screen size).
//	- Default parameters
//	Bug fixes
//	- Axis label disappears for both indv. and cmbn. plots
//	- Disp. and P. lines display is not correct sometimes.
//	[DLA]
//	- Bug fixes - duplicate Voronoi cell
//	- Manually movable/editable/addable island centers

/////////////////////////////////////
/////////////ARCHIVE/////////////////
/////////////////////////////////////

//CODE: DispXPSPanel
//Ver. ce20170301a
//	- First working version
//		- Data loaded and saved in separated folders (Raw data in one folder)
//		- Adjust threshold and minimum disp. size (in pixels) to find a dispersive line automatically
//		- Extract XPS spectra from different position in the disp. line (several param. can be selected in the panel)
//		- Disp. factor and energy position can be calibrated in the panel 
//Ver. ce20170301b
//	- Can now choose Disp. line and subsequent P. lines gen. param. from another scan (helps when measuring low S/N scans, or Ef)
//	- Can correct the first frame which sometimes has unusually high intensity (by copying the second frame onto it - losing 1 data point).
//Ver. ce20170301c
//	- Can remove the raw data to reduce the project file size.
//	- Small code clean-up
//Ver. ce20170301d
//	- Can restore raw data for re-processing
//Ver. ce20170302a
//	- Small bug fixes (control toggling when scan has/has no raw data
//	- Select all/select none buttons
//Ver. ce20170302b
//	-  Export and plot results (combined spectrum only)
//Ver. ce20170302c
//	- Add Scan Note (all the parameters used in the data extraction) to the exported wave
//Ver. ce20170302d
//	- Bug fixed: Error when trying to adjust Disp. Factor/x0/y0 w/o raw data (removed a wave refrence to the raw data)
//	- Bug fixed: Copy dispersive line from.. button -> Error conditioning with V_Flag (Continue -> V_Flag=0)
//	- Bug fixed: NLines is not stored in the ScanListW! -> Fixed
//	- Check ScanName and make suggestions for users to conform to Standard Wave Name. [CODE: SLP_Util_WNameCheck], [CODE: SLP_Util_WNameSuggest]
//Ver. ce20170302e
//	- Manual edit of the disp. line
//Ver. ce20170302f
//	- Cosmetic change - panel colour = blue

//[POS]IXPS Begin
//CODE: ImgXPSPanel
//
//	Ver.ce20170310c
//	- Almost working - Ver. 0.7
//	- Can Load and display image volume w/ slider
//	- Automatic screen mask creation
//	- Loop data fitting for (binned) each pixel
//	- Extraction progress (in %)
//	- Load correction waves from DataBrowser window
//	- Correction fine-adjustment (x,y,magnitude)

//	Ver.ce20170311a
//	- ListBoxProc for DisplayListW
//	- ListBoxProc for XPS param ListW

//	Ver.ce20170311b
//	- Auto color scale/int. for the image volume/maps
//	- Some fix on using the ScanList ListBox
//		- properly show ImgVol or IntgImg depending on whether there is raw data stored in the project

//	Ver.ce20170311d
//	- Can now use slider to adjust color scale
//	- Radio button to select which Image to adjust the color scale
//	- Use STRUCT of the checkbox control.

//	Ver.ce20170312a
//	- Export/display maps
//	- Still with some bugs
//	- Can still extract only the cutoff (w/ ERF fit) for WF measurements

//	Ver. ce20170312b
//	- First working version - Ver. 1.0
//	- Many bug fixes..

//	Ver. ce20170317a
//	- Small bug fix (automatically select newly loaded Scans, display fitted curve)

//	Ver. ce20170321b
//	- Can now select which fitting mode to use (2 modes - Secondary Yield Cut-off for WF measurements, and 2GLAs for isochromaticity map)
//	- 'Fast Extraction' mode (much faster with /N=1 in FuncFit)

// Ver. ce20170321c
//	- Adjust Threshold for finding screen

//	Ver. ce20170321d
//	- Clean up the windows. Move graph and control positions.

//	Ver. ce20170321e
//	- Init check. Bug fixes (not 100% yet)

//Igor procedure to assist BL3.2Ub operation and data analyses

//ver. ce20161031a
// - Can load, draw line, change line profile width, and plot profile and intensity vs. time plot
// - Still very buggy

//ver. ce20161107b
// - Initialize program (creating Package waves, global variables, etc.)
// - Plotting the result
// - Label and formatting graph
// - Stored and display previous image series
// - Updating line profiles with line profile width
// - Remove old line profile (bottom graph)

//ver. ce20161111a
// - Keep raw images and line profiles in separated folders

//ver. ce20170226a
//	- Change name to SLP_XPS
//	- Merge SLP_WF_ce20170208a.ipf (WF mapping)
//	- Merge SLP_CreateDispLines_ce20170214a.ipf (Automatic dispersion line finding and multiple-point data collection for XPS)

//Current ver. ce20161114a
// Todos
//	- New DataSet system (from SLP_LoadLEEM)
// - Filter for file loading (e.g. *.TIF)
// - Option to load .DAT and extract data
// - Auto calculation of dispersion (eV/pixel)
// - Show line profile width
// - Delete raw data (to save disk space)
// - Clean up the code

///////////////////////////
//Under developments///////
//SLPA Multi GLAs anaysis///
///////////////////////////

//TODOs

//	- Line size adjust
//	- Arbitrary constraints
//		- Display 'Kn' for each parameter
//	- Log file and history
//	- Fine slider adjustment (depending on zoom)

//Bug fixes
//	- Prevent the generation of unused fit curves.
//	- Error to add peak to library if the library is empty..

//Function
//	- Slider 
//	- BG subtraction
//	- Peak select
//	- Copy Guess values
//	- Default constraint
//	- use default constraint and edit
//	- Peak library and import peak library from a .txt file
//	- Colour changes /w hold or guess out of range
//	- Save/Load guesses
//	- Fit and show fit results
//	- Display last fit result
//	- BG adjust and record
//	- Export fit results
//	- Check for duplicated new data W name
//		- Allow user to change data W name
//	- Peak area report

//Bug fixed
//	- Users can now click cancel for the load new data

//USE OFTEN
Function SLP_MGFit_UseOften()
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
	Variable DataRow=V_Value
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
	Variable PeakRow=V_Value
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Wave SLP_MGFit_DataListSelW=root:Package_SLP:MGFit:SLP_MGFit_DataListSelW
	
	Wave /T SLP_MGFit_ConstraintDisplayW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW
	Wave  SLP_MGFit_ConstraintDisplaySelW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplaySelW
	Wave /T SLP_MGFit_DefaultConstraintW=root:Package_SLP:MGFit:SLP_MGFit_DefaultConstraintW
	Wave SLP_MGFit_DefaultConstraintSelW=root:Package_SLP:MGFit:SLP_MGFit_DefaultConstraintSelW
	Wave /T SLP_MGFit_PeakLibraryW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibraryW
	Wave SLP_MGFit_PeakLibrarySelW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibrarySelW
	
	String DataName=SLP_MGFit_DataListW[DataRow][0]
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	
	String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
	String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
	String ConstraintW_FName=DataLocation+"ConstraintW"
	String HilightW_FName=DataLocation+"HilightW"
	String CoefGuessM_FName=DataLocation+"CoefGuessM" //Use for fitting
	String ConstraintV_FName=DataLocation+"ConstraintV" //Use for fitting

	String DataW_FName=DataLocation+DataName	//Raw data
	String BgW_FName=DataW_FName+"_BG"		//Background
	String Data_nBGW_FName=DataW_FName+"_nBG"	//Data after BG subtraction
	String Data_GssW_FName=DataW_FName+"_Gss"	//Guess curve
	
	variable i=0
	String Data_Comp_FName=DataW_FName+"_p"+num2str(i)	//Individual GLA component
End


Menu "SLPA"
	"Multi-GLAs Fit..",SLP_MGFit_CreatePanel()
End

Function SLP_MGFit_CreatePanel() : Panel

	//Init
	if (!DataFolderExists("root:Package_SLP:MGFit"))
		SLP_MGFit_init()
	Endif

	Dowindow /K SLP_MultiGLAFit_01
	PauseUpdate; Silent 1		// building window...
	NewPanel /W=(45,45,1150,670) /N=SLP_MultiGLAFit_01
	
	SetDrawLayer UserBack
	SetDrawEnv fsize= 14
	DrawText 10,25,"SLP Multi GLA Peaks Fitting Panel"
	DrawText 380,30,"Parameter Guess and Results"
	DrawText 915,25,"Constraints and Hold"
	DrawText 715,205,"Data list"
	DrawText 380,280,"Peak library"
	
	DrawText 427,508,"Peak area"
	DrawText 379,570,"Area under curve"
	DrawText 915,194,"Data list"
	SetDrawEnv fsize= 10
	DrawText 452,522,"Guess"
	SetDrawEnv fsize= 10
	DrawText 468,538,"Fit"
	//SetVariable Setvar_N_Peaks,pos={378,13},size={170,15},title="Number of GLA peak(s)",noEdit=1
	
	NVAR GDataRow=root:Package_SLP:MGFit:GDataRow
	
	Variable a=30,b=60,c=90
	ListBox ListBox_PeakParam,pos={380,33},size={530,215},ListWave=root:Package_SLP:MGFit:SLP_MGFit_iCoefGuessDisplayW ,SelWave=root:Package_SLP:MGFit:SLP_MGFit_iCoefGuessDisplaySelW
	ListBox ListBox_PeakParam,widths={32,45,85,a,a,a,a,a,a,a,a,a,a,0,0,0},userColumnResize=1
	ListBox ListBox_PeakParam,mode=2,proc=ListBoxProc_MGFit_CoefGuess,SelRow=0,colorWave=root:Package_SLP:MGFit:ListColors
	
	ListBox ListBox_PeakConstraints,pos={915,31},size={170,110},ListWave=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW, SelWave=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplaySelW
	ListBox ListBox_PeakConstraints,widths={50,a,a,32},userColumnResize=1
	ListBox ListBox_PeakConstraints proc=ListBoxProc_MGFit_Constraints
	
	ListBox ListBox_DataList,pos={915,220},size={170,250},ListWave=root:Package_SLP:MGFit:SLP_MGFit_DataListDisplayW, Selwave=root:Package_SLP:MGFit:SLP_MGFit_DataListDisplaySelW
	ListBox ListBox_DataList,widths={32,50,100},SelRow=GDataRow,userColumnResize=1
	ListBox ListBox_DataList,mode=2,proc=ListBoxProc_MGFit_DataSelect
	
	ListBox ListBox_Library,pos={380,285},size={530,130},ListWave=root:Package_SLP:MGFit:SLP_MGFit_PeakLibraryW,SelWave=root:Package_SLP:MGFit:SLP_MGFit_PeakLibrarySelW
	ListBox ListBox_Library,widths={32,50,100,a,a,a,a,a,a,a,a,a,a,a,a,a},userColumnResize=1
	
	ListBox list_PeakArea,pos={485,494},size={601,64},mode=6,proc=ListBoxProc_MGFit_AreaRatio
	ListBox list_PeakArea,listWave=root:Package_SLP:MGFit:SLP_MGFit_PeakAreaW
	ListBox list_PeakArea,widths={b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b}
	ListBox list_PeakArea,userColumnResize= 1
	
	ListBox list_CurveArea,pos={483,562},size={601,54},mode=6,proc=ListBoxProc_MGFit_AreaRatio
	ListBox list_CurveArea,listWave=root:Package_SLP:MGFit:SLP_MGFit_CurveAreaW
	ListBox list_CurveArea,widths={c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c}
	ListBox list_CurveArea,userColumnResize= 1
	
	Variable SliderGroup_Xpos=10
	Variable SliderGroup_Ypos=355
	Variable SliderGroup_vspacing=48
	Variable SliderGroup_hWidth=250
	SetDrawLayer UserBack
	SetDrawEnv fsize= 10; DrawText SliderGroup_Xpos,SliderGroup_Ypos,"Intensity"
	SetDrawEnv fsize= 10; DrawText SliderGroup_Xpos+SliderGroup_hWidth+62,SliderGroup_Ypos+5,"Position"
	SetDrawEnv fsize= 10; DrawText SliderGroup_Xpos+SliderGroup_hWidth+62,SliderGroup_Ypos+5+SliderGroup_vspacing,"FWHM"
	SetDrawEnv fsize= 10; DrawText SliderGroup_Xpos+SliderGroup_hWidth+62,SliderGroup_Ypos+5+2*SliderGroup_vspacing,"Mixture"
	SetDrawEnv fsize= 10; DrawText SliderGroup_Xpos+SliderGroup_hWidth+62,SliderGroup_Ypos+5+3*SliderGroup_vspacing,"Asymmetry"
	
	Slider slider_Int,pos={SliderGroup_Xpos,SliderGroup_Ypos},size={60,170}
	Slider slider_Int,limits={0,2,0.05},value= 0,ticks=10,proc=SliderProc_MGFit_CoefAdjust
	Slider slider_Pos,pos={SliderGroup_Xpos+60,SliderGroup_Ypos-10},size={SliderGroup_hWidth,45}
	Slider slider_Pos,limits={270,350,0.1},value= 0,ticks=10,vert= 0,proc=SliderProc_MGFit_CoefAdjust
	Slider slider_Fwhm,pos={SliderGroup_Xpos+60,SliderGroup_Ypos-10+SliderGroup_vspacing},size={SliderGroup_hWidth,45}
	Slider slider_Fwhm,limits={0.3,5,0.1},value= 0,ticks=10,vert= 0,proc=SliderProc_MGFit_CoefAdjust
	Slider slider_Mix,pos={SliderGroup_Xpos+60,SliderGroup_Ypos-10+2*SliderGroup_vspacing},size={SliderGroup_hWidth,45}
	Slider slider_Mix,limits={0.01,0.99,0.01},value= 0,ticks=10,vert= 0,proc=SliderProc_MGFit_CoefAdjust
	Slider slider_As,pos={SliderGroup_Xpos+60,SliderGroup_Ypos-10+3*SliderGroup_vspacing},size={SliderGroup_hWidth,45}
	Slider slider_As,limits={0.01,0.99,0.01},value= 0,ticks=10,vert= 0,proc=SliderProc_MGFit_CoefAdjust
	
	SetVariable setvar_GssChisq,pos={11,323},size={150,15},title="Guess chi square"
	SetVariable setvar_GssChisq,limits={-inf,inf,0},value= root:Package_SLP:MGFit:Gss_Chisq,noedit= 1
	SetVariable setvar_GssChisq valueColor=(1,26221,39321)
	SetVariable setvar_FitChisq,pos={181,323},size={150,15},title="Fit chi square"
	SetVariable setvar_FitChisq,valueColor=(13102,26214,0)
	SetVariable setvar_FitChisq,limits={-inf,inf,0},value= root:Package_SLP:MGFit:Fit_Chisq,noedit= 1
	
	SetVariable setvar_LowX,pos={390,575},size={90,15},title="Low X",proc=SetVarProc_MGFit_AreaUnderCurve
	SetVariable setvar_LowX,value= root:Package_SLP:MGFit:LowX
  	SetVariable SetVar_HighX,pos={390,600},size={90,15},title="High X",proc=SetVarProc_MGFit_AreaUnderCurve
	SetVariable SetVar_HighX,value= root:Package_SLP:MGFit:HighX
	
	SetVariable setvar_AreaRatio,pos={485,477},size={100,15},title="Area ratio"
	SetVariable setvar_AreaRatio,limits={-inf,inf,0},value= root:Package_SLP:MGFit:AreaRatio,noedit= 1
	
	PopupMenu popup_BgSel,pos={155,25},size={113,20},title="Background type",Proc=PopMenuProc_MGFit_MakeBG
	PopupMenu popup_BgSel,mode=1,popvalue="None",value= #"\"None;Shirley;Erf;atan;Flat;Slope\""
	
	Button button_Done,pos={857,466},size={50,20},title="Done",proc=ButtonProc_MGFit_Done,fsize=10
	
	Button Button_ImportFromLib,pos={383,418},size={525,20},title="Import selected peak",fSize=10,proc=ButtonProc_MGFit_ImportFromLib
	Button Button_AddLibItem,pos={383,442},size={100,20},proc=ButtonProc_MGFit_AddLibItem,title="Add to library..",fSize=10
	Button Button_EditLib,pos={489,442},size={70,20},proc=ButtonProc_MGFit_EditLib,title="Edit library..",fSize=10
	Button Button_RemoveLibItem,pos={564,442},size={120,20},proc=ButtonProc_MGFit_RemoveFromLib,title="Remove selected peak",fSize=10
	Button Button_SaveLib,pos={689,442},size={95,20},proc=ButtonProc_MGFit_SaveLibAsTxt,title="Save library as..", fSize=10
	Button Button_LoadLib,pos={789,442},size={120,20},proc=ButtonProc_MGFit_LoadLibFile,title="Load library from file..",fSize=10

	Button Button_Export,pos={120,46},size={100,20},title="Export graph..",fsize=10,proc=ButtonProc_MGFit_ExportGraph
	Button Button_AddData,pos={915,195},size={85,20},title="Add data wave",fsize=10,proc=ButtonProc_MGFit_LoadData
  	Button Button_ConstraintDefault,pos={915,145},size={51,16},title="Default",fsize=10,proc=ButtonProc_MGFit_DefConstraints
  	Button Button_EditConstraintDefault,pos={965,145},size={80,16},title="Edit default..",fsize=10,proc=ButtonProc_MGFit_EditConstDef
  	Button Button_DeleteData,pos={1005,195},size={85,20},title="Delete data..",fSize=10,proc=ButtonProc_MGFit_DeleteData
	Button Button_CopyGssParam,pos={745,10},size={130,20},proc=ButtonProc_MGFit_CopyGssParam,title="Copy parameters from..",fSize=10
	Button Button_Holdall,pos={1046,146},size={51,16},proc=ButtonProc_MGFit_HoldAllTogg,title="Hold all",fSize=10
	Button Button_AddLibFromGss,pos={465,251},size={200,20},proc=ButtonProc_MGFit_AddLibItemGss,title="Add highlighted peak to library",fSize=10
  	Button button_Fit,pos={700,255},size={50,23},proc=ButtonProc_MGFit_Fit,title="FIT",fColor=(65535,21845,0)
	
	Button Button_SaveGss,pos={555,11},size={90,20},proc=ButtonProc_MGFit_SaveGssAsTxt,title="Save guesses..",fSize=10
	Button Button_LoadGss,pos={650,11},size={90,20},proc=ButtonProc_MGFit_LoadGssFile,title="Load guesses..",fSize=10
	
	Button Button_AcceptFitCoef,pos={758,254},size={150,20},proc=ButtonProc_MGFit_AcceptFit,title="Accept new fit coefficients",fSize=10
	Button Button_AdjBG,pos={10,46},size={100,20},proc=ButtonProc_MGFit_BGAdj,title="Adjust background",fSize=10

	CheckBox check_DisplayOriginal,pos={10,28},size={50,15},title="Original",value= 0,proc=CheckProc_MGFit_DisplayOrgBG
  	CheckBox check_DisplayBg,pos={70,28},size={69,15},title="Background",value= 0,proc=CheckProc_MGFit_DisplayOrgBG
	CheckBox check_DispFit,pos={282,51},size={59,15},proc=CheckProc_MGFit_DispFit,title="Show fit result"
	
	Display/W=(12,71,366,317)/HOST=SLP_MultiGLAFit_01 
	RenameWindow #,G0
	SetActiveSubwindow ##
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW	
	If (Dimsize(SLP_MGFit_DataListW,0)>0)
		String DataName=SLP_MGFit_DataListW[GDataRow][0]
		SLP_MGFit_DisplaySelectedData(DataName)
	EndIf
End

Function SLP_MGFit_Init()
	String Current_folder=getdatafolder(1)
	NewDataFolder /O  root:Package_SLP
	NewDataFolder /O  root:Package_SLP:MGFit 
	SetDataFolder root:Package_SLP:MGFit
	
	variable /G N_peaks=1
	
	Variable /G MaxN_peaks=64
	variable /G GDataRow=0
	
	variable /G GLA_int=0
	variable /G GLA_pos=0
	variable /G GLA_fwhm=0
	variable /G GLA_mix=0
	variable /G GLA_as=0

	variable /G Init_int=1
	variable /G Init_pos=0
	variable /G Init_fwhm=1
	variable /G Init_mix=0.5
	variable /G Init_as=0.5
	
	variable /G PosRange=0
	variable /G Pos_pm_flg=0
	
	variable /G Gss_Chisq
	variable /G Fit_Chisq
	
	variable /G LowX //to calculate area under curve
	variable /G HighX //to calculate area under curve
	
	variable /G AreaRatio
	
	Make /O/T/N=(0,64) SLP_MGFit_DataListW
	SetDimLabel 1,0,DataName,SLP_MGFit_DataListW
	SetDimLabel 1,1,DataFolder,SLP_MGFit_DataListW
	SetDimLabel 1,2,OrgData,SLP_MGFit_DataListW
	SetDimLabel 1,3,N_Peaks,SLP_MGFit_DataListW
	SetDimLabel 1,4,Peak_Sel,SLP_MGFit_DataListW
	SetDimLabel 1,5,BG_Type,SLP_MGFit_DataListW
	SetDimLabel 1,6,BG_Param0,SLP_MGFit_DataListW
	SetDimLabel 1,7,BG_Param1,SLP_MGFit_DataListW
	SetDimLabel 1,8,BG_Param2,SLP_MGFit_DataListW
	SetDimLabel 1,9,BG_Param3,SLP_MGFit_DataListW
	SetDimLabel 1,10,BG_Param4,SLP_MGFit_DataListW
	SetDimLabel 1,11,BG_Param5,SLP_MGFit_DataListW
	SetDimLabel 1,12,BG_Param6,SLP_MGFit_DataListW
	SetDimLabel 1,13,BG_Param7,SLP_MGFit_DataListW
	SetDimLabel 1,14,BG_Param8,SLP_MGFit_DataListW
	SetDimLabel 1,15,GssChiSq,SLP_MGFit_DataListW
	SetDimLabel 1,16,FitChiSq,SLP_MGFit_DataListW
	SetDimLabel 1,17,ShowFit_Flg,SLP_MGFit_DataListW //Show fit result instead of guess
	SetDimLabel 1,18,LowX,SLP_MGFit_DataListW //For area under curve calculations
	SetDimLabel 1,19,HighX,SLP_MGFit_DataListW //For area under curve calculations

	Make /O/T/N=(0,16) SLP_MGFit_DataListDisplayW
	SetDimLabel 1,0,Select,SLP_MGFit_DataListDisplayW
	SetDimLabel 1,1,DataName,SLP_MGFit_DataListDisplayW
	SetDimLabel 1,2,DataNote,SLP_MGFit_DataListDisplayW
	Make /O/N=(0,16) SLP_MGFit_DataListDisplaySelW
	
	Make /O/T/N=(MaxN_peaks,16) SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,0,Select,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,1,PeakName,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,2,PeakNote,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,3,Int,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,4,Pos,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,5,FWHM,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,6,Mix,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,7,As,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,8,RInt,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,9,RPos,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,10,RFWHM,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,11,RMix,SLP_MGFit_iCoefGuessDisplayW
	SetDimLabel 1,12,RAs,SLP_MGFit_iCoefGuessDisplayW
	SLP_MGFit_iCoefGuessDisplayW[][1]="p"+num2str(p)
	SLP_MGFit_iCoefGuessDisplayW[][3]=num2str(Init_int)
	SLP_MGFit_iCoefGuessDisplayW[][4]=num2str(Init_pos)
	SLP_MGFit_iCoefGuessDisplayW[][5]=num2str(Init_fwhm)
	SLP_MGFit_iCoefGuessDisplayW[][6]=num2str(Init_mix)
	SLP_MGFit_iCoefGuessDisplayW[][7]=num2str(Init_as)
	
	Make /O/N=(MaxN_peaks,16,2) SLP_MGFit_iCoefGuessDisplaySelW //Layer2 = cell color
	SLP_MGFit_iCoefGuessDisplaySelW[][0][0]=32 //Checkbox (unchecked)
	SLP_MGFit_iCoefGuessDisplaySelW[][2,7][0]=2 //Editable (peak description)
	
	Make /O/T/N=(5,8) SLP_MGFit_ConstraintDisplayW
	SetDimLabel 1,0,CoefName,SLP_MGFit_ConstraintDisplayW
	SetDimLabel 1,1, MinimumVal,SLP_MGFit_ConstraintDisplayW
	SetDimLabel 1,2, MaximumVal,SLP_MGFit_ConstraintDisplayW
	SetDimLabel 1,3,Hold,SLP_MGFit_ConstraintDisplayW
	SLP_MGFit_ConstraintDisplayW[0][0]={"Intensity","Position","FWHM","Mixture","Assymetry"}
	SLP_MGFit_ConstraintDisplayW[0][1]={"0","NaN","0.3","0.01","0.01"}
	SLP_MGFit_ConstraintDisplayW[0][2]={"NaN","NaN","5","0.99","0.99"}
	Duplicate /O/T SLP_MGFit_ConstraintDisplayW,SLP_MGFit_DefaultConstraintW
	
	Make /O/N=(5,8,2) SLP_MGFit_ConstraintDisplaySelW //Layer2 = cell color
	SLP_MGFit_ConstraintDisplaySelW[][1,2][0]=2
	SLP_MGFit_ConstraintDisplaySelW[][3][0]=32
	Duplicate /O SLP_MGFit_ConstraintDisplaySelW,SLP_MGFit_DefaultConstraintSelW

	Make /O/T/N=(6,32) SLP_MGFit_PeakLibraryW
	SetDimLabel 1,0,Select,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,1,Name,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,2,PeakNote,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,3,Int,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,4,Pos,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,5,FWHM,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,6,Mix,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,7,As,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,9,IntMin,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,10,IntMax,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,11,PosMin,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,12,PosMax,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,13,FWHMMin,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,14,FWHMMax,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,15,MixMin,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,16,MixMax,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,17,AsMin,SLP_MGFit_PeakLibraryW
	SetDimLabel 1,18,AsMax,SLP_MGFit_PeakLibraryW
	SLP_MGFit_PeakLibraryW[0][1]={{"C1s Atomic"},{""},{"1"},{"283"},{"1"},{"0.5"},{"0.5"}}
	SLP_MGFit_PeakLibraryW[1][1]={{"C1s C-C"},{""},{"1"},{"284"},{"1"},{"0.5"},{"0.5"}}
	SLP_MGFit_PeakLibraryW[2][1]={{"C1s C-OH"},{""},{"1"},{"285"},{"1"},{"0.5"},{"0.5"}}
	SLP_MGFit_PeakLibraryW[3][1]={{"C1s C=O"},{""},{"1"},{"286"},{"1"},{"0.5"},{"0.5"}}
	SLP_MGFit_PeakLibraryW[4][1]={{"C1s COOH"},{""},{"1"},{"288"},{"1"},{"0.5"},{"0.5"}}
	SLP_MGFit_PeakLibraryW[5][1]={{"C1s C-NH3"},{""},{"1"},{"285"},{"1"},{"0.5"},{"0.5"}}
	
	Make /O/N=(6,32) SLP_MGFit_PeakLibrarySelW
	SLP_MGFit_PeakLibrarySelW[][0]=32
	SLP_MGFit_PeakLibrarySelW[][2]=2
	
	Make/O/W/U ListColors= {{0,0,0},{65535,0,0},{25000,25000,25000},{0,0,65535},{0,65535,65535}}
	MatrixTranspose ListColors
	
	make /O/T /N=(2,16) SLP_MGFit_CurveAreaW
	SLP_MGFit_CurveAreaW=""
	make /O/T /N=(3,MaxN_peaks) SLP_MGFit_PeakAreaW
	SLP_MGFit_PeakAreaW=""
	SLP_MGFit_PeakAreaW[0][]="p"+num2str(q)
		
	Setdatafolder $Current_folder
End

Function SetVarProc_MGFit_AreaUnderCurve(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			SLP_MGFit_ReadAreaUnderCurve(DataName)
			NVAR LowX=root:Package_SLP:MGFit:LowX
			NVAR HighX=root:Package_SLP:MGFit:HighX
			SLP_MGFit_DataListW[DataRow][18]=num2str(LowX)
			SLP_MGFit_DataListW[DataRow][19]=num2str(HighX)
			SLP_MGFit_DrawVLine(dVal)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_AddLibItemGss(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
			Variable PeakRow=V_Value
			
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			
			Wave /T SLP_MGFit_PeakLibraryW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibraryW
			Wave SLP_MGFit_PeakLibrarySelW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibrarySelW

			String DataName=SLP_MGFit_DataListW[DataRow][0]
			String DataLocation=SLP_MGFit_DataListW[DataRow][1]
			
			String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
			String ConstraintW_FName=DataLocation+"ConstraintW"
			Wave /T CoefGuessDispW=$CoefGuessDispW_FName
			Wave ConstraintW=$ConstraintW_FName
			
			String PeakName=CoefGuessDispW[PeakRow][1]
			String PeakNote=CoefGuessDispW[PeakRow][2]
			variable int=str2num(CoefGuessDispW[PeakRow][3]),pos=str2num(CoefGuessDispW[PeakRow][4])
			variable fwhm=str2num(CoefGuessDispW[PeakRow][5]),mix=str2num(CoefGuessDispW[PeakRow][6])
			Variable as=str2num(CoefGuessDispW[PeakRow][7])
			
			variable int_min=ConstraintW[0][0][PeakRow],pos_min=ConstraintW[1][0][PeakRow],fwhm_min=ConstraintW[2][0][PeakRow],mix_min=ConstraintW[3][0][PeakRow],as_min=ConstraintW[4][0][PeakRow]
			variable int_max=ConstraintW[0][1][PeakRow],pos_max=ConstraintW[1][1][PeakRow],fwhm_max=ConstraintW[2][1][PeakRow],mix_max=ConstraintW[3][1][PeakRow],as_max=ConstraintW[4][1][PeakRow]
			
			Redimension /N=(dimsize(SLP_MGFit_PeakLibraryW,0)+1,dimsize(SLP_MGFit_PeakLibraryW,1))  SLP_MGFit_PeakLibraryW
			Redimension /N=(dimsize(SLP_MGFit_PeakLibrarySelW,0)+1,dimsize(SLP_MGFit_PeakLibrarySelW,1))  SLP_MGFit_PeakLibrarySelW
			SLP_MGFit_PeakLibrarySelW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][0]=32
			SLP_MGFit_PeakLibrarySelW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][2]=2
		
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][1]=PeakName
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][2]=PeakNote
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][3]=Num2str(int)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][4]=Num2str(pos)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][5]=Num2str(fwhm)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][6]=Num2str(mix)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][7]=Num2str(as)
		
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][8]=Num2str(int_min)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][9]=Num2str(int_max)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][10]=Num2str(pos_min)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][11]=Num2str(pos_max)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][12]=Num2str(fwhm_min)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][13]=Num2str(fwhm_max)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][14]=Num2str(mix_min)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][15]=Num2str(mix_max)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][16]=Num2str(as_min)
			SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][17]=Num2str(as_min)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_AddLibItem(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			String PeakName,PeakNote
			variable int=NaN,pos=NaN,fwhm=NaN,mix=NaN,as=NaN
			variable int_min=NaN,pos_min=NaN,fwhm_min=NaN,mix_min=NaN,as_min=NaN
			variable int_max=NaN,pos_max=NaN,fwhm_max=NaN,mix_max=NaN,as_max=NaN
			
			Prompt PeakName,"Peak Name"
			Prompt PeakNote,"Note"
			Prompt int,"Intensity"
			Prompt pos,"Position"
			prompt fwhm,"FWHM"
			prompt mix,"Mixture"
			prompt as,"Asymmetry"
			Doprompt "Enter peak parameters",PeakName,PeakNote,int,pos,fwhm,mix,as
			
			If (V_Flag==0) //If user clicks ok
				Prompt int_min,"Min intensity"
				Prompt int_max,"Max intensity"
				Prompt pos_min,"Min position"
				Prompt pos_max,"Max position"
				prompt fwhm_min,"Min FWHM"
				prompt fwhm_max,"Max FWHM"
				prompt mix_Min,"Min mixture"
				prompt mix_Max,"Max mixture"
				prompt as_min,"Min Asymmetry"
				prompt as_max,"Max Asymmetry"
				Doprompt "Enter peak parameters",int_min,int_max,pos_min,pos_max,fwhm_min,fwhm_max,mix_min,mix_max,as_min,as_max
				
				If (V_Flag==0) //if user clicks ok
					Wave /T SLP_MGFit_PeakLibraryW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibraryW
					Wave SLP_MGFit_PeakLibrarySelW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibrarySelW
					Redimension /N=(dimsize(SLP_MGFit_PeakLibraryW,0)+1,dimsize(SLP_MGFit_PeakLibraryW,1))  SLP_MGFit_PeakLibraryW
					Redimension /N=(dimsize(SLP_MGFit_PeakLibrarySelW,0)+1,dimsize(SLP_MGFit_PeakLibrarySelW,1))  SLP_MGFit_PeakLibrarySelW
					SLP_MGFit_PeakLibrarySelW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][0]=32
					SLP_MGFit_PeakLibrarySelW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][2]=2
				
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][1]=PeakName
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][2]=PeakNote
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][3]=Num2str(int)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][4]=Num2str(pos)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][5]=Num2str(fwhm)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][6]=Num2str(mix)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][7]=Num2str(as)
				
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][8]=Num2str(int_min)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][9]=Num2str(int_max)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][10]=Num2str(pos_min)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][11]=Num2str(pos_max)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][12]=Num2str(fwhm_min)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][13]=Num2str(fwhm_max)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][14]=Num2str(mix_min)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][15]=Num2str(mix_max)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][16]=Num2str(as_min)
					SLP_MGFit_PeakLibraryW[dimsize(SLP_MGFit_PeakLibrarySelW,0)-1][17]=Num2str(as_min)
				EndIf
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_ExportGraph(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
			Variable PeakRow=V_Value
			
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			String DataLocation=SLP_MGFit_DataListW[DataRow][1]
			String DataW_FName=DataLocation+DataName	//Raw data
			String BgW_FName=DataW_FName+"_BG"		//Background
			String Data_nBGW_FName=DataW_FName+"_nBG"	//Data after BG subtraction
			String Data_GssW_FName=DataW_FName+"_Gss"	//Guess curve
			Wave Data_nBGW=$Data_nBGW_FName
			
			String TraceList=TraceNameList("SLP_MultiGLAFit_01#G0",";",1)
			Variable N_curves=Itemsinlist(TraceList,";")
			String NewFolderName=":"+DataName
			String TraceName=""
			String orgW_FName=""
			String destW_Name=""
			variable i=0
			variable run_flg=0
			String LegendStr=DataName+"\r\Zr080"
			String FolderExistsWarning="Enter new folder name?"
			
			//Check if the folder to keep waves already exists
			If (!DataFolderExists(NewFolderName))
				run_flg=1
			Else
				DoAlert 1,NewFolderName+" folder already exists. Overwrite existing waves?"
				If (V_Flag==1) //Click yes
					run_flg=1
				Else //Click no
					Do
						DoAlert 1,FolderExistsWarning
						If (V_Flag==1)
							Prompt NewFolderName,"New folder:"
							DoPrompt "Enter new folder name",NewFolderName
							run_flg=1
						Else
							run_flg=0
						EndIf
						FolderExistsWarning="Still duplicated name. Enter new folder name?"
					While (run_flg!=0&&DataFolderExists(NewFolderName))
				Endif
			EndIf
			
			If (run_flg)
				NewDataFolder /O $NewFolderName				
				For (i=0;i<N_curves;i+=1)
					TraceName=StringFromList(i,TraceList)
					orgW_FName=DataLocation+TraceName
					destW_Name=NewFolderName+":"+TraceName
					duplicate /O $orgW_FName,$destW_Name
				EndFor	
				
				String Current_folder=getdatafolder(1)
				SetDataFolder $NewFolderName
				
				TraceName=StringFromList(0,TraceList)
				Display $TraceName
				ModifyGraph mode($TraceName)=7,hbFill($TraceName)=2,rgb($TraceName)=(65535,49151,49151)
				For (i=1;i<N_curves;i+=1)
					TraceName=StringFromList(i,TraceList)
					Appendtograph $TraceName
					Variable FitDisplay_Flg=str2num(SLP_MGFit_DataListW[DataRow][17])
					If (FitDisplay_Flg==0) //Display Guess curves
						//Modify the graph and trace colors
						If (i==1)//Data Wave (BG subtracted)
							Modifygraph mode($TraceName)=3, Marker($TraceName)=16, rgb($TraceName)=(43690,43690,43690)
							LegendStr+="\s("+TraceName+")"+"Data w/o BG\r"
						ElseIf (i==2) //Guess Wave
							ModifyGraph rgb($TraceName)=(1,34817,52428), lsize($TraceName)=3
							LegendStr+="\s("+TraceName+")Guess curve\r"
						Elseif (i==PeakRow+3)//Selected peak
							ModifyGraph rgb($TraceName)=(65535,43690,0),lsize($TraceName)=1.5
							LegendStr+="\s("+TraceName+")Selected component\r"
						EndIf
					Elseif (FitDisplay_Flg==1)	//Display fit results
						If (i==1)
							Modifygraph mode($TraceName)=3, Marker($TraceName)=16, rgb($TraceName)=(43690,43690,43690)
							LegendStr+="\s("+TraceName+")"+"Data w/o BG\r"
						Elseif (i==2)//Fit Wave
							ModifyGraph rgb($TraceName)=(0,35000,0), lsize($TraceName)=3
							LegendStr+="\s("+TraceName+")Fit result\r"
						Elseif (i==PeakRow+3) //Selected peak
							ModifyGraph rgb($TraceName)=(65535,43690,0),lsize($TraceName)=1.5
							LegendStr+="\s("+TraceName+")Selected component\r"
						EndIf
					EndIf
				EndFor
				
				//Orginal data w (before BG) and BG waves display
				Wavestats /Q Data_nBGW
				Variable OrgData_yOffset=(V_Max-V_Min)*1.10 //Determine offset value from the data y-range
				
				ControlInfo /W=SLP_MultiGLAFit_01 Check_DisplayOriginal; variable DisplayOrg_Flg=V_Value
				If (DisplayOrg_Flg)
					TraceName=StringFromList(ItemsInlist(TraceList,";")-2,TraceList,";")
					ModifyGraph offset($TraceName)={0,OrgData_yOffset},rgb($TraceName)=(30000,30000,30000)
					LegendStr+="\s("+TraceName+")Original data\r"
				EndIf
				
				ControlInfo /W=SLP_MultiGLAFit_01 Check_DisplayBG; variable DisplayBg_Flg=V_Value
				If (DisplayBg_Flg)
					TraceName=StringFromList(ItemsInlist(TraceList,";")-1,TraceList,";")
					ModifyGraph offset($TraceName)={0,OrgData_yOffset}, lstyle($TraceName)=2,rgb($TraceName)=(30000,30000,30000)
					LegendStr+="\s("+TraceName+")Background\r"
				EndIf
				
				SetDataFolder $Current_folder
				
				Modifygraph mirror=1,minor=1,tick=2
				LegendStr=removeending(LegendStr,"\r")
				Legend LegendStr
				
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function ButtonProc_MGFit_AcceptFit(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
				
			DoAlert 1,"Overwrite the guess values with the fitted coefficients."
			
			If (V_Flag==1)
				Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
				
				String DataName=SLP_MGFit_DataListW[DataRow][0]
				String DataLocation=SLP_MGFit_DataListW[DataRow][1]
				String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
				Wave /T CoefGuessDispW=$CoefGuessDispW_FName
				
				CoefGuessDispW[][3]=CoefGuessDispW[p][8]
				CoefGuessDispW[][4]=CoefGuessDispW[p][9]
				CoefGuessDispW[][5]=CoefGuessDispW[p][10]
				CoefGuessDispW[][6]=CoefGuessDispW[p][11]
				CoefGuessDispW[][7]=CoefGuessDispW[p][12]
				
				SLP_MGFit_DataListW[DataRow][17]="0"
				SLP_MGFit_DisplaySelectedData(DataName)
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_SaveGssAsTxt(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			String DataLocation=SLP_MGFit_DataListW[DataRow][1]
			String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
			Wave /T CoefGuessDispW=$CoefGuessDispW_FName
			
			Make /O/T/N=(dimsize(CoefGuessDispW,0)+1,dimsize(CoefGuessDispW,1)) root:Package_SLP:MGFit:SLP_MGFit_GssExportW /Wave=SLP_MGFit_GssExportW
			SLP_MGFit_GssExportW=""
			
			Variable i=0
			For (i=0;i<dimsize(CoefGuessDispW,0);i+=1)
				SLP_MGFit_GssExportW[i+1][]=CoefGuessDispW[i][q]
			EndFor
			For (i=0;i<dimsize(CoefGuessDispW,1);i+=1)
				SLP_MGFit_GssExportW[0][i]=GetDimLabel(CoefGuessDispW,1,i)
			EndFor
			
			String GssFileName="GuessExport"
			Save/G /I /M="\n" SLP_MGFit_GssExportW as GssFileName
			
			Killwaves SLP_MGFit_GssExportW
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_LoadGssFile(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			String DataLocation=SLP_MGFit_DataListW[DataRow][1]
			String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
			String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
			Wave /T CoefGuessDispW=$CoefGuessDispW_FName
			
			LoadWave /J /M  /K=2 /N=GssData /U={0,0,1,0}
			String NewGssWaveName=stringfromlist(0,S_Wavenames)
			Wave NewGssWave=$NewGssWaveName
			Duplicate /O /T NewGssWave,CoefGuessDispW
			Killwaves NewGssWave
			Make /O /N=(dimsize(CoefGuessDispW,0),dimsize(CoefGuessDispW,1),2) $CoefGuessDispSelW_FName /Wave=CoefGuessDispSelW
			CoefGuessDispSelW=0
			CoefGuessDispSelW[][0][0]=32
			CoefGuessDispSelW[][2,7][0]=2
			
			SLP_MGFit_DisplaySelectedData(DataName)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_LoadLibFile(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave /T SLP_MGFit_PeakLibraryW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibraryW

			LoadWave /J /M  /K=2 /N=LibData /U={0,0,1,0}
			String NewLibWaveName=stringfromlist(0,S_Wavenames)
			Wave NewLibWave=$NewLibWaveName
			Duplicate /O /T NewLibWave,SLP_MGFit_PeakLibraryW
			Killwaves NewLibWave
			Make /O /N=(dimsize(SLP_MGFit_PeakLibraryW,0),dimsize(SLP_MGFit_PeakLibraryW,1)) root:Package_SLP:MGFit:SLP_MGFit_PeakLibrarySelW /Wave=SLP_MGFit_PeakLibrarySelW
			SLP_MGFit_PeakLibrarySelW=0
			SLP_MGFit_PeakLibrarySelW[][0]=32
			SLP_MGFit_PeakLibrarySelW[][2]=2
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_SaveLibAsTxt(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
		
			Wave /T SLP_MGFit_PeakLibraryW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibraryW
			
			Make /O/T/N=(dimsize(SLP_MGFit_PeakLibraryW,0)+1,dimsize(SLP_MGFit_PeakLibraryW,1)) root:Package_SLP:MGFit:SLP_MGFit_PeakLibExportW /Wave=SLP_MGFit_PeakLibExportW
			SLP_MGFit_PeakLibExportW=""
			Variable i=0
			For (i=0;i<dimsize(SLP_MGFit_PeakLibraryW,0);i+=1)
				SLP_MGFit_PeakLibExportW[i+1][]=SLP_MGFit_PeakLibraryW[i][q]
			EndFor
			SLP_MGFit_PeakLibExportW[0][0]={{""},{"Peak name"},{"Note"},{"Int"},{"Pos"},{"FWHM"},{"Mix"},{"As"},{"Min Int"},{"Max Int"},{"Min Pos"},{"Max Pos"},{"Min FWHM"},{"Max FWHM"},{"Min Mix"},{"Max Mix"},{"Min As"},{"Max As"}}
			
			String LibFileName="LibraryExport"
			Save/G /I /M="\n" SLP_MGFit_PeakLibExportW as LibFileName
			
			Killwaves SLP_MGFit_PeakLibExportW
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_RemoveFromLib(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Doalert 2,"Remove selected peak(s) from library?"
			If (V_Flag==1)
				Wave /T SLP_MGFit_PeakLibraryW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibraryW
				Wave SLP_MGFit_PeakLibrarySelW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibrarySelW
				
				Variable i
				For (i=dimsize(SLP_MGFit_PeakLibrarySelW,0)-1;i>=0;i-=1)
					If (SLP_MGFit_PeakLibrarySelW[i][0]==48)
						DeletePoints i,1,SLP_MGFit_PeakLibraryW
						DeletePoints i,1,SLP_MGFit_PeakLibrarySelW
					EndIf
				EndFor
			EndIf
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_EditLib(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave /T SLP_MGFit_PeakLibraryW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibraryW
			DoWindow /K SLP_MGFit_PeakLibraryEdit_01
			Edit /K=1/N=SLP_MGFit_PeakLibraryEdit_01 SLP_MGFit_PeakLibraryW
			ModifyTable /W=SLP_MGFit_PeakLibraryEdit_01 horizontalIndex=2,rgb=(0,0,65535)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_ImportFromLib(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
			Variable PeakRow=V_Value
			
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			
			Wave /T SLP_MGFit_ConstraintDisplayW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW
			Wave  SLP_MGFit_ConstraintDisplaySelW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplaySelW

			Wave /T SLP_MGFit_PeakLibraryW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibraryW
			Wave SLP_MGFit_PeakLibrarySelW=root:Package_SLP:MGFit:SLP_MGFit_PeakLibrarySelW
			
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			String DataLocation=SLP_MGFit_DataListW[DataRow][1]
			
			String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
			String ConstraintW_FName=DataLocation+"ConstraintW"
			
			Wave /T CoefGuessDispW=$CoefGuessDispW_FName
			Wave ConstraintW=$ConstraintW_FName
			
			Variable i=0
			Variable j=PeakRow
			For (i=0;i<dimsize(SLP_MGFit_PeakLibraryW,0);i+=1)
				If (SLP_MGFit_PeakLibrarySelW[i][0]==48)
					//Note
					CoefGuessDispW[j][2]=SLP_MGFit_PeakLibraryW[i][1]+"; "+SLP_MGFit_PeakLibraryW[i][2]
					//Guess
					CoefGuessDispW[j][3]=SLP_MGFit_PeakLibraryW[i][3]	//int
					CoefGuessDispW[j][4]=SLP_MGFit_PeakLibraryW[i][4]	//pos
					CoefGuessDispW[j][5]=SLP_MGFit_PeakLibraryW[i][5]	//fwhm
					CoefGuessDispW[j][6]=SLP_MGFit_PeakLibraryW[i][6]	//mix
					CoefGuessDispW[j][7]=SLP_MGFit_PeakLibraryW[i][7]	//as
					//Constraints
					ConstraintW[0][0][j]=str2num(SLP_MGFit_PeakLibraryW[i][8])	//int min
					ConstraintW[0][1][j]=str2num(SLP_MGFit_PeakLibraryW[i][9])	//int max
					ConstraintW[1][0][j]=str2num(SLP_MGFit_PeakLibraryW[i][10])	//pos min
					ConstraintW[1][1][j]=str2num(SLP_MGFit_PeakLibraryW[i][11])	//pos max
					ConstraintW[2][0][j]=str2num(SLP_MGFit_PeakLibraryW[i][12])	//fwhm min
					ConstraintW[2][1][j]=str2num(SLP_MGFit_PeakLibraryW[i][13])	//fwhm max
					ConstraintW[3][0][j]=str2num(SLP_MGFit_PeakLibraryW[i][14])	//mix min
					ConstraintW[3][1][j]=str2num(SLP_MGFit_PeakLibraryW[i][15])	//mix max
					ConstraintW[4][0][j]=str2num(SLP_MGFit_PeakLibraryW[i][16])	//as min
					ConstraintW[4][1][j]=str2num(SLP_MGFit_PeakLibraryW[i][17])	//as max
					
					j+=1
				Endif
			EndFor
			
			SLP_MGFit_DisplaySelectedData(DataName)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_EditConstDef(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_MGFit_Panel_DefConstraints()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc_MGFit_Pos_pm_flg(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			Wave SLP_MGFit_DefaultConstraintSelW=root:Package_SLP:MGFit:SLP_MGFit_DefaultConstraintSelW
			SLP_MGFit_DefaultConstraintSelW[1][1,2]=!checked*2
			SetVariable setvar_PlusMinus disable=!checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc_MGFit_DispFit(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			SLP_MGFit_DataListW[DataRow][17]=num2str(checked)
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			SLP_MGFit_DisplaySelectedData(DataName)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_ConstraintDone(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow /K MGFit_DefaultConstraint
			
		break
		case -1: // control being killed
			break
	endswitch

	return 0
End



Function ButtonProc_MGFit_CopyGssParam(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW	
			String DataW_List=""
			Variable i=0
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			
			For (i=0;i<dimsize(SLP_MGFit_DataListW,0);i+=1)
				If (i!=DataRow)
					DataW_List+=SLP_MGFit_DataListW[i][0]+";"
				EndIf
			EndFor
			
			String Org_DataName=""
			Prompt Org_DataName,"Data to copy from..",popup,DataW_List
			DoPrompt "Choose the data to copy parameters from:",Org_DataName
			If (V_Flag==0) //If user click continue
				SLP_MGFit_CopyParam(Org_DataName,DataName)
			EndIf 
			
			SLP_MGFit_DisplaySelectedData(DataName)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function SLP_MGFit_CopyParam(Org_DataName,Dest_DataName)
	String Org_DataName,Dest_DataName
	
	Variable Org_DataRow=SLP_MGFit_FindDataRow(Org_DataName)
	Variable Dest_DataRow=SLP_MGFit_FindDataRow(Dest_DataName)
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW	
	
	String Org_CoefGuessDispW_FName=SLP_MGFit_DataListW[Org_DataRow][1]+"CoefGuessDispW"
	String Org_CoefGuessDispSelW_FName=SLP_MGFit_DataListW[Org_DataRow][1]+"CoefGuessDispSelW"
	String Org_CoefGuessM_FName=SLP_MGFit_DataListW[Org_DataRow][1]+"CoefGuessM"
	String Org_ConstraintW_FName=SLP_MGFit_DataListW[Org_DataRow][1]+"ConstraintW"
	
	String Dest_CoefGuessDispW_FName=SLP_MGFit_DataListW[Dest_DataRow][1]+"CoefGuessDispW"
	String Dest_CoefGuessDispSelW_FName=SLP_MGFit_DataListW[Dest_DataRow][1]+"CoefGuessDispSelW"
	String Dest_CoefGuessM_FName=SLP_MGFit_DataListW[Dest_DataRow][1]+"CoefGuessM"
	String Dest_ConstraintW_FName=SLP_MGFit_DataListW[Dest_DataRow][1]+"ConstraintW"
	
	Duplicate /T/O $Org_CoefGuessDispW_FName,$Dest_CoefGuessDispW_FName
	Duplicate /O $Org_CoefGuessDispSelW_FName,$Dest_CoefGuessDispSelW_FName
	Duplicate /O $Org_CoefGuessM_FName,$Dest_CoefGuessM_FName
	Duplicate /O $Org_ConstraintW_FName,$Dest_ConstraintW_FName
	
End

Function ButtonProc_MGFit_HoldAllTogg(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW	
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			Wave ConstraintDisplaySelW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplaySelW
			If (ConstraintDisplaySelW[0][3][0]==32)
				ConstraintDisplaySelW[][3][0]=48
			Elseif (ConstraintDisplaySelW[0][3][0]==48)
				ConstraintDisplaySelW[][3][0]=32
			Endif
			SLP_MGFit_Listbox2ConstraintW(DataName)
			SLP_MGFit_ConstraintLogic(DataName)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function SLP_MGFit_ConstraintLogic1p(DataName,PeakRow)
	String DataName
	Variable PeakRow
	//Logic:
	//	- If hold - do not constraint
	//	- Guess should be within constraint level
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW	
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String DataW_FName=DataLocation+DataName 
	
	String CoefGuessDispW_FName=SLP_MGFit_DataListW[DataRow][1]+"CoefGuessDispW"
	String CoefGuessDispSelW_FName=SLP_MGFit_DataListW[DataRow][1]+"CoefGuessDispSelW"
	String ConstraintW_FName=SLP_MGFit_DataListW[DataRow][1]+"ConstraintW"
	
	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName
	//Wave /T SLP_MGFit_ConstraintDisplayW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW
	Wave ConstraintW=$ConstraintW_FName
	
	CoefGuessDispSelW[PeakRow][3,7][1]=0
	
	Variable j=0
	For (j=3;j<=7;j+=1)
		If ((str2num(CoefGuessDispW[PeakRow][j]) < ConstraintW[j-3][0][PeakRow]) || (str2num(CoefGuessDispW[PeakRow][j])>ConstraintW[j-3][1][PeakRow]))
			CoefGuessDispSelW[PeakRow][j][1]=1
		EndIf
		If (ConstraintW[j-3][2][PeakRow]==1)
			CoefGuessDispSelW[PeakRow][j][1]=2
		EndIf
	EndFor

End

Function SLP_MGFit_ConstraintLogic(DataName)
	String DataName
	//Logic:
	//	- If hold - do not constraint
	//	- Guess should be within constraint level
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW	
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String DataW_FName=DataLocation+DataName 
	
	String CoefGuessDispW_FName=SLP_MGFit_DataListW[DataRow][1]+"CoefGuessDispW"
	String CoefGuessDispSelW_FName=SLP_MGFit_DataListW[DataRow][1]+"CoefGuessDispSelW"
	String ConstraintW_FName=SLP_MGFit_DataListW[DataRow][1]+"ConstraintW"
	
	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName
	//Wave /T SLP_MGFit_ConstraintDisplayW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW
	Wave ConstraintW=$ConstraintW_FName
	
	CoefGuessDispSelW[][][1]=0
	
	Variable i=0
	Variable j=0
	
	For (i=0;i<dimsize(CoefGuessDispW,0);i+=1)
		For (j=3;j<=7;j+=1)
			If ((str2num(CoefGuessDispW[i][j]) < ConstraintW[j-3][0][i]) || (str2num(CoefGuessDispW[i][j])>ConstraintW[j-3][1][i]))
				CoefGuessDispSelW[i][j][1]=1
			EndIf
			If (ConstraintW[j-3][2][i]==1)
				CoefGuessDispSelW[i][j][1]=2
			EndIf
		EndFor
	EndFor

End

Function SLP_MGFit_MakeBGPrompt(DataName,BG_type)
	String DataName
	String BG_type //"Erf","Flat","Slope","atan","Shirley"
	
	Variable FlatBG,StepPos,StepHeight,Width,Atten,StartX,EndX

	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW	

	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]

	String DataW_FName=DataLocation+DataName 
	String DataW_BG_FName=DataW_FName+"_BG"
	String DataW_nBG_FName=DataW_FName+"_nBG"
	
	Wave DataW=$DataW_FName
	Wave DataW_BG=$DataW_BG_FName
	Wave DataW_nBG=$DataW_nBG_FName
	
	If (Stringmatch(SLP_MGFit_DataListW[DataRow][6],""))
		FlatBG=DataW[0]
	Else
		FlatBG=str2num(SLP_MGFit_DataListW[DataRow][6])
	EndIf
	
	If (Stringmatch(SLP_MGFit_DataListW[DataRow][7],""))
		StepPos=dimoffset(DataW,0)+dimdelta(DataW,0)*dimsize(DataW,0)/2 //in the center
	Else
		StepPos=str2num(SLP_MGFit_DataListW[DataRow][7])
	EndIf
	
	If (Stringmatch(SLP_MGFit_DataListW[DataRow][8],""))
		StepHeight=DataW[dimsize(DataW,0)-1]-DataW[0]
	Else
		StepHeight=str2num(SLP_MGFit_DataListW[DataRow][8])
	EndIf
	
	If (Stringmatch(SLP_MGFit_DataListW[DataRow][9],""))
		Width=1
	Else
		Width=str2num(SLP_MGFit_DataListW[DataRow][9])
	EndIf
	
	If (Stringmatch(SLP_MGFit_DataListW[DataRow][10],""))
		Atten=100000
	Else
		Atten=str2num(SLP_MGFit_DataListW[DataRow][10])
	EndIf
	
	If (Stringmatch(SLP_MGFit_DataListW[DataRow][11],""))
		StartX=dimoffset(DataW,0)
	Else
		StartX=str2num(SLP_MGFit_DataListW[DataRow][11])
	EndIf
	
	If (Stringmatch(SLP_MGFit_DataListW[DataRow][12],""))
		EndX=dimoffset(DataW,0)+dimdelta(DataW,0)*(dimsize(DataW,0)-1)
	Else
		EndX=str2num(SLP_MGFit_DataListW[DataRow][12])
	EndIf
	
	strswitch(BG_type)	// string switch
		case "Erf":		// execute if case matches expression
			Prompt FlatBG, "Baseline level"
			Prompt StepPos, "Step position"
			Prompt StepHeight, "Step height"
			Prompt Width, "Step width"
			Prompt Atten, "Attenuation"
			DoPrompt "Enter background parameters:",FlatBG,StepPos,StepHeight,Width,Atten
			
			//Record the Input
			SLP_MGFit_DataListW[DataRow][6]=num2str(FlatBG)
			SLP_MGFit_DataListW[DataRow][7]=num2str(StepPos)
			SLP_MGFit_DataListW[DataRow][8]=num2str(StepHeight)
			SLP_MGFit_DataListW[DataRow][9]=num2str(Width)
			SLP_MGFit_DataListW[DataRow][10]=num2str(Atten)
			
			break						// exit from switch
		case "atan":	
			Prompt FlatBG, "Baseline level"
			Prompt StepPos, "Step position"
			Prompt StepHeight, "Step height"
			Prompt Width, "Step width"
			Prompt Atten, "Attenuation"
			DoPrompt "Enter background parameters:",FlatBG,StepPos,StepHeight,Width,Atten
			
			//Record the input
			SLP_MGFit_DataListW[DataRow][6]=num2str(FlatBG)
			SLP_MGFit_DataListW[DataRow][7]=num2str(StepPos)
			SLP_MGFit_DataListW[DataRow][8]=num2str(StepHeight)
			SLP_MGFit_DataListW[DataRow][9]=num2str(Width)
			SLP_MGFit_DataListW[DataRow][10]=num2str(Atten)
			
			break
		case "Slope":	
			Prompt StartX, "Low energy position"
			Prompt EndX, "High energy position"
			DoPrompt "Enter background parameters:",StartX,EndX
			//Record the input
			SLP_MGFit_DataListW[DataRow][11]=num2str(StartX)
			SLP_MGFit_DataListW[DataRow][12]=num2str(EndX)
								
			break
		case "Flat":	
			Prompt FlatBG, "Baseline level"
			DoPrompt "Enter background parameters:",FlatBG
			//Record the input
			SLP_MGFit_DataListW[DataRow][6]=num2str(FlatBG)
			
			break
		case "Shirley":
			Prompt StartX, "Low energy position"
			Prompt EndX, "High energy position"
			DoPrompt "Enter background parameters:",StartX,EndX
			//Record the input
			SLP_MGFit_DataListW[DataRow][11]=num2str(StartX)
			SLP_MGFit_DataListW[DataRow][12]=num2str(EndX)
			
			break
		default:							// optional default expression executed
			DataW_BG=0					// when no case matches
	endswitch
	
	SLP_MGFit_MakeBG(DataName,BG_type,FlatBG,StepPos,StepHeight,Width,Atten,StartX,EndX)

End



Function SLP_MGFit_MakeBG(DataName,BG_type,FlatBG,StepPos,StepHeight,Width,Atten,StartX,EndX)
	String DataName
	String BG_type //"Erf","Flat","Slope","atan","Shirley"
	Variable FlatBG,StepPos,StepHeight,Width,Atten,StartX,EndX

	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW	

	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]

	String DataW_FName=DataLocation+DataName 
	String DataW_BG_FName=DataW_FName+"_BG"
	String DataW_nBG_FName=DataW_FName+"_nBG"
	
	Wave DataW=$DataW_FName
	Wave DataW_BG=$DataW_BG_FName
	Wave DataW_nBG=$DataW_nBG_FName

	
	strswitch(BG_type)	// string switch
		case "Erf":		// execute if case matches expression
			DataW_BG=FlatBG+StepHeight/2+(StepHeight/2)*erf((x-StepPos)/Width)*exp(1/(Atten*x))
			break						// exit from switch
		case "atan":	
			DataW_BG=FlatBG+StepHeight/2+(StepHeight/2)*atan((x-StepPos)/Width)*exp(1/(Atten*x))
			break
		case "Slope":	
			DataW_BG=DataW(StartX)*(x<=StartX)+DataW(EndX)*(x>=EndX)+(x>StartX&&x<EndX)*(DataW(StartX)+(x-StartX)*(DataW(EndX)-DataW(StartX))/(EndX-StartX))		
			break
		case "Flat":	
			DataW_BG=FlatBG
			break
		case "Shirley":
			SLP_Util_ShirleyGen(DataW_FName,EndX,StartX,10,0)
			String ShirleyBGW_FName=DataW_FName+"_Shirley"
			Wave ShirleyBGW=$ShirleyBGW_FName
			DataW_BG=ShirleyBGW
			Killwaves ShirleyBGW
			break
		default:							// optional default expression executed
			DataW_BG=0					// when no case matches
	endswitch
	DataW_nBG=DataW-DataW_BG
End

Function PopMenuProc_MGFit_MakeBG(pa) : PopupMenuControl
	STRUCT WMPopupAction &pa

	switch( pa.eventCode )
		case 2: // mouse up
			Variable popNum = pa.popNum
			String popStr = pa.popStr
			
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			
			SLP_MGFit_MakeBGPrompt(DataName,popStr)
			SLP_MGFit_DataListW[DataRow][5]=popStr
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_MGFit_ListBox2CoefMatrix(DataName)
	String DataName
	
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW	
	//Wave /T SLP_MGFit_ConstraintDisplayW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW
	
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
	String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
	String CoefGuessM_FName=DataLocation+"CoefGuessM"
	String ConstraintW_FName=DataLocation+"ConstraintW"
	
	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName
	Wave CoefGuessM=$CoefGuessM_FName
	Wave ConstraintW=$ConstraintW_FName
	
	variable i=0
	variable j=0
	variable N_peak=0
	String Peak_List=""
	
	Make /O /N=(0,5) $CoefGuessM_FName /Wave=CoefGuessM
	CoefGuessM=NaN
	
	For (i=0;i<dimsize(CoefGuessDispW,0);i+=1)
		If (CoefGuessDispSelW[i][0][0]==48)
			Redimension /N=(dimsize(CoefGuessM,0)+1,dimsize(CoefGuessM,1))  CoefGuessM
			CoefGuessM[j][]=str2num(CoefGuessDispW[i][q+3])
			j+=1
		EndIf
	EndFor
	
	SLP_MGFit_DataListW[DataRow][3]=num2str(N_peak)

End

Function SLP_MGFit_AddDataW(DataW_FName)
	String DataW_FName //**Must be Full Name only**
	NVAR Init_pos=root:Package_SLP:MGFit:Init_pos
	NVAR Init_int=root:Package_SLP:MGFit:Init_int
	NVAR Init_fwhm=root:Package_SLP:MGFit:Init_fwhm
	NVAR Init_mix=root:Package_SLP:MGFit:Init_mix
	NVAR Init_as=root:Package_SLP:MGFit:Init_as
	NVAR MaxN_peaks=root:Package_SLP:MGFit:MaxN_peaks
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Wave /T SLP_MGFit_DataListDisplayW=root:Package_SLP:MGFit:SLP_MGFit_DataListDisplayW
	Wave SLP_MGFit_DataListDisplaySelW=root:Package_SLP:MGFit:SLP_MGFit_DataListDisplaySelW
	
	Variable N_Data=dimsize(SLP_MGFit_DataListW,0)
	
	NVAR GDataRow=root:Package_SLP:MGFit:GDataRow
	
	String DataW_Name=StringFromList(itemsinlist(DataW_FName,":")-1,DataW_FName,":")
	Wave DataW=$DataW_Name
	String DataFolder_Name=RemoveEnding(DataW_FName,DataW_Name)
	Variable N_Peaks=0
	Variable Peask_Sel=0
	
	Prompt DataW_Name,"Enter data name"
	DoPrompt "Add data wave",DataW_Name
	
	//Save everything in Package folder (separately between different data)
	String NewDataFolder_Name="root:Package_SLP:MGFit:"+DataW_Name
	
	//Check if the folder to keep waves already exists
	Variable run_flg=0
	String FolderExistsWarning="Enter new data name?"
	If (!DataFolderExists(NewDataFolder_Name))
		run_flg=1
	Else
		DoAlert 1,"Adding "+DataW_Name+". Data already exists. Overwrite?"
		If (V_Flag==1) //Click yes
			ListBox ListBox_PeakParam ListWave=root:Package_SLP:MGFit:SLP_MGFit_iCoefGuessDisplayW,SelWave=root:Package_SLP:MGFit:SLP_MGFit_iCoefGuessDisplaySelW
			SLP_Util_RemoveAllTraces("SLP_MultiGLAFit_01#G0")
			SLP_MGFit_DeleteData(DataW_Name)
			N_Data-=1
			run_flg=1
		Else //Click no
			Do
				DoAlert 1,FolderExistsWarning
				If (V_Flag==1)
					Prompt DataW_Name,"New data name:"
					DoPrompt "Enter new data name",DataW_Name
					run_flg=1
				Else
					run_flg=0
				EndIf
				NewDataFolder_Name="root:Package_SLP:MGFit:"+DataW_Name
				FolderExistsWarning="Still duplicated name. Enter new data name?"
			While (run_flg!=0&&DataFolderExists(NewDataFolder_Name))
		Endif
	EndIf
	
	If (run_flg)
		NewDataFolder /O  $NewDataFolder_Name
		
		Redimension /N=(dimsize(SLP_MGFit_DataListW,0)+1,64)  SLP_MGFit_DataListW
		SLP_MGFit_DataListW[N_Data][0]=DataW_Name
		SLP_MGFit_DataListW[N_Data][1]=NewDataFolder_Name+":"
		SLP_MGFit_DataListW[N_Data][2]=DataW_FName //Original wave name and location
		SLP_MGFit_DataListW[N_Data][3]="0"
		SLP_MGFit_DataListW[N_Data][4]="0"
		SLP_MGFit_DataListW[N_Data][5]="None" //Background for subtraction
		SLP_MGFit_DataListW[N_Data][17]="0" //Fit display flag
		SLP_MGFit_DataListW[N_Data][18]=num2str(Dimoffset(DataW,0))
		SLP_MGFit_DataListW[N_Data][19]=num2str(Dimoffset(DataW,0)+DimDelta(DataW,0)*(DimSize(DataW,0)-1))
		
		Redimension /N=(dimsize(SLP_MGFit_DataListDisplayW,0)+1,16)  SLP_MGFit_DataListDisplayW
		SLP_MGFit_DataListDisplayW[N_Data][1]=DataW_Name
		Redimension /N=(dimsize(SLP_MGFit_DataListDisplaySelW,0)+1,16)  SLP_MGFit_DataListDisplaySelW
		SLP_MGFit_DataListDisplaySelW[N_Data][0]=32
		SLP_MGFit_DataListDisplaySelW[N_Data][2]=2
		
		String DataW_Copy_FName=NewDataFolder_Name+":"+DataW_Name
		String DataW_BG_FName=DataW_Copy_FName+"_BG"
		String DataW_nBG_FName=DataW_Copy_FName+"_nBG"
		String FitW_FName=DataW_nBG_FName+"_Fit"
		String HilightW_FName=NewDataFolder_Name+":HiLightW"
	
		Duplicate /O $DataW_FName,$DataW_Copy_FName
		Duplicate /O $DataW_Copy_FName,$DataW_BG_FName /Wave=DataW_BG
		Duplicate /O $DataW_Copy_FName,$DataW_nBG_FName /Wave=DataW_nBG
		Duplicate /O $DataW_Copy_FName,$FitW_FName /Wave=FitW
		Duplicate /O $DataW_Copy_FName,$HilightW_FName /Wave=HilightW
		DataW_BG=0
		FitW=0
		//DataW_nBG=0
		HilightW=0
		
		String CoefGuessDispW_FName=NewDataFolder_Name+":CoefGuessDispW"
		Duplicate /T/O root:Package_SLP:MGFit:SLP_MGFit_iCoefGuessDisplayW,$CoefGuessDispW_FName /Wave=CoefGuessDispW
		CoefGuessDispW[][3]=num2str(Init_int)
		//CoefGuessDispW[][4]=num2str(Dimoffset(DataW,0)+DimDelta(DataW,0)*DimSize(DataW,0)/2) //init = center
		CoefGuessDispW[][4]=num2str(Dimoffset(DataW,0)) //init = min X
		CoefGuessDispW[][5]=num2str(Init_fwhm)
		CoefGuessDispW[][6]=num2str(Init_mix)
		CoefGuessDispW[][7]=num2str(Init_as)
		
		String CoefGuessDispSelW_FName=NewDataFolder_Name+":CoefGuessDispSelW"
		Duplicate /O root:Package_SLP:MGFit:SLP_MGFit_iCoefGuessDisplaySelW,$CoefGuessDispSelW_FName /Wave=CoefGuessDispSelW
		SetDimLabel 2,1,ForeColors,CoefGuessDispSelW				// define plane 1 as Foreground colors
		
		String CoefGuessM_FName=NewDataFolder_Name+":CoefGuessM"
		Make /O/N=(0,5) $CoefGuessM_FName /Wave=CoefGuessM
		//CoefGuessM[][0]=Init_pos
	//	CoefGuessM[][0]=Init_int
	//	CoefGuessM[][1]=(Dimoffset(DataW,0)+DimDelta(DataW,0)*DimSize(DataW,0)/2)
	//	CoefGuessM[][2]=Init_fwhm
	//	CoefGuessM[][3]=Init_mix
	//	CoefGuessM[][4]=Init_as
		
		String ConstraintW_FName=NewDataFolder_Name+":ConstraintW"
		Make /O/N=(5,3,MaxN_peaks) $ConstraintW_FName /Wave=ConstraintW
		ConstraintW[0][0][]=0 //min Int=0
		ConstraintW[2][0][]=0.1 //min FWHM=0.1 eV
		ConstraintW[3][0][]=0.001 //min mix=0.001
		ConstraintW[3][1][]=0.999 //max mix=0.999
		ConstraintW[4][0][]=0.001 //min as=0.001
		ConstraintW[4][1][]=0.999 //min as=0.999
		ConstraintW[][2][]=0 //Hold = 0
		
		String DefaultConstrintW_FName=NewDataFolder_Name+":DefaultConstraint"
	EndIf
End

Function ButtonProc_MGFit_DeleteData(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			DoAlert 1,"Delete "+DataName+"?"
			If (V_Flag==1)
				ListBox ListBox_PeakParam ListWave=root:Package_SLP:MGFit:SLP_MGFit_iCoefGuessDisplayW,SelWave=root:Package_SLP:MGFit:SLP_MGFit_iCoefGuessDisplaySelW
				SLP_Util_RemoveAllTraces("SLP_MultiGLAFit_01#G0")
				SLP_MGFit_DeleteData(DataName)
			EndIf
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_LoadData(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			String SelectedWaveFName=""
			Execute "CreateBrowser prompt=\"Select data wave\", showWaves=1, showVars=0, showStrs=0" 
			//Old style. in Igor7 no need to use Execute
			SVAR S_BrowserList=S_BrowserList
			NVAR V_Flag=V_Flag
			if(V_Flag!=0)
				SelectedWaveFName=stringfromlist(0,S_BrowserList)
				SLP_MGFit_AddDataW(SelectedWaveFName)
				Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
				Variable NewDataRow=Dimsize(SLP_MGFit_DataListW,0)-1
				ListBox ListBox_DataList win=SLP_MultiGLAFit_01,SelRow=NewDataRow//Select the new one
				String DataName=SLP_MGFit_DataListW[NewDataRow][0]
				SLP_MGFit_DisplaySelectedData(DataName)
			endif
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_Done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Dowindow /K SLP_MultiGLAFit_01
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_MGFit_DeleteData(DataName)
	String DataName
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Wave /T SLP_MGFit_DataListDisplayW=root:Package_SLP:MGFit:SLP_MGFit_DataListDisplayW
	Wave SLP_MGFit_DataListDisplaySelW=root:Package_SLP:MGFit:SLP_MGFit_DataListDisplaySelW
	
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	
	String DataFolder_FName=SLP_MGFit_DataListW[DataRow][1]
	
	KillDataFolder $DataFolder_FName
	Variable DeleteFolderError_Flg=V_Flag
	
	If (DeleteFolderError_Flg==0)
		DeletePoints DataRow,1,SLP_MGFit_DataListW
		DeletePoints DataRow,1,SLP_MGFit_DataListDisplayW
		DeletePoints DataRow,1,SLP_MGFit_DataListDisplaySelW
	EndIf
End

Function SLP_MGFit_Panel_DefConstraints() : Panel
	DoWindow /K MGFit_DefaultConstraint
	
	PauseUpdate; Silent 1		// building window...
	
	NVAR PosRange=root:Package_SLP:MGFit:PosRange
	NVAR Pos_pm_flg=root:Package_SLP:MGFit:Pos_pm_flg
	
	NewPanel /W=(340,110,550,300) /N=MGFit_DefaultConstraint
	
	Wave SLP_MGFit_DefaultConstraintSelW=root:Package_SLP:MGFit:SLP_MGFit_DefaultConstraintSelW
	
	SetDrawLayer UserBack
	DrawText 9,25,"Default constraints"
	ListBox ListBox_DefConstraints,pos={9,52},size={193,110}
	ListBox ListBox_DefConstraints,listWave=root:Package_SLP:MGFit:SLP_MGFit_DefaultConstraintW
	ListBox ListBox_DefConstraints,selWave=root:Package_SLP:MGFit:SLP_MGFit_DefaultConstraintSelW
	ListBox ListBox_DefConstraints,widths={57,41,40,33,7,32,32,32}
	ListBox ListBox_DefConstraints,userColumnResize= 1
	Button button_done,pos={152,166},size={50,20},title="done",proc=ButtonProc_MGFit_ConstraintDone
	CheckBox check_PosPercent,pos={13,31},size={69,15},title="Position (+/-)",variable= Pos_pm_flg,proc=CheckProc_MGFit_Pos_pm_flg
	SetVariable setvar_PlusMinus,pos={100,30},size={50,15},limits={-inf,inf,0},variable=PosRange,title=" ",disable=!Pos_pm_flg
	
	SLP_MGFit_DefaultConstraintSelW[1][1,2]=!Pos_pm_flg*2
	
End

Function ButtonProc_MGFit_DefConstraints(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
			Variable PeakRow=V_Value
			
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			Wave /T SLP_MGFit_ConstraintDisplayW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW
			Wave  SLP_MGFit_ConstraintDisplaySelW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplaySelW
			Wave /T SLP_MGFit_DefaultConstraintW=root:Package_SLP:MGFit:SLP_MGFit_DefaultConstraintW
			Wave SLP_MGFit_DefaultConstraintSelW=root:Package_SLP:MGFit:SLP_MGFit_DefaultConstraintSelW
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			String DataLocation=SLP_MGFit_DataListW[DataRow][1]
			String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
			Wave /T CoefGuessDispW=$CoefGuessDispW_FName
			Duplicate /O/T SLP_MGFit_DefaultConstraintW,SLP_MGFit_ConstraintDisplayW
			Duplicate /O SLP_MGFit_DefaultConstraintSelW,SLP_MGFit_ConstraintDisplaySelW
			
			NVAR PosRange=root:Package_SLP:MGFit:PosRange
			NVAR Pos_pm_flg=root:Package_SLP:MGFit:Pos_pm_flg
			
			If (Pos_pm_flg)
				SLP_MGFit_ConstraintDisplayW[1][1]=num2str(str2num(CoefGuessDispW[PeakRow][4])-PosRange)
				SLP_MGFit_ConstraintDisplayW[1][2]=num2str(str2num(CoefGuessDispW[PeakRow][4])+PosRange)
			EndIf
			SLP_MGFit_ConstraintDisplaySelW[1][1][0]=2
			SLP_MGFit_ConstraintDisplaySelW[1][2][0]=2
			
			SLP_MGFit_Listbox2ConstraintW(DataName)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End



Function SLP_MGFit_DisplaySelectedData(DataName)
	String DataName

	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	//Wave /T SLP_MGFit_CoefGuessDisplayW=root:Package_SLP:MGFit:SLP_MGFit_CoefGuessDisplayW
	Wave /T SLP_MGFit_ConstraintDisplayW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW
	
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
	String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
	String CoefGuessM_FName=DataLocation+"CoefGuessM"
	String ConstraintW_FName=DataLocation+"ConstraintW"
	String HilightW_FName=DataLocation+"HilightW"
	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName
	Wave CoefGuessM=$CoefGuessM_FName
	Wave ConstraintW=$ConstraintW_FName
	
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
	Variable PeakRow=V_Value
	
	String DataW_FName=DataLocation+DataName
	String BgW_FName=DataW_FName+"_BG"
	String Data_nBGW_FName=DataW_FName+"_nBG"
	Wave DataW=$DataW_FName
	Wave Data_nBGW=$Data_nBGW_FName
	
	ListBox ListBox_PeakParam ListWave= $CoefGuessDispW_FName, SelWave=$CoefGuessDispSelW_FName, SelRow=str2num(SLP_MGFit_DataListW[DataRow][4])
	
	SLP_MGFit_ConstraintW2Listbox(DataName)
	
	String WavesToBeDisplayed=""
	String DisplayedWaves_NameList=""
	String TraceList=""
	String TraceName=""
	
	Variable i=0
	Variable j=0
	String CoefW_FName=""
	String Index_str=""
	String ComponentW_FName=""
	String SelPeak_Name=""
	
	//FORMAT THE GRAPH and TRACE
	//Clear drawings
	setdrawlayer /W=SLP_MultiGLAFit_01#G0 UserFront
	drawaction /W=SLP_MultiGLAFit_01#G0  delete
	DoUpdate
	
	Variable FitDisplay_Flg=str2num(SLP_MGFit_DataListW[DataRow][17])
	If (FitDisplay_Flg==0) //Display Guess curves
	
		DisplayedWaves_NameList=SLP_MGFit_CreateComponents(DataName)
		
		//Create highlighted peak
		SelPeak_Name=StringFromList(PeakRow+1,DisplayedWaves_NameList,";") //Selected peak name
		If (Exists(SelPeak_Name))
			Duplicate /O $SelPeak_Name,$HilightW_FName /Wave=HilightW
		EndIf
		
		//Display the wave on graph
		WavesToBeDisplayed=HilightW_FName+";"+Data_nBGW_FName+";"+DisplayedWaves_NameList
		SLP_Util_AddnRmTraces("SLP_MultiGLAFit_01#G0",WavesToBeDisplayed,0)

		//Modify the graph and trace colors
		
		TraceList=tracenamelist("SLP_MultiGLAFit_01#G0",";",1)
		TraceName=StringFromList(0,TraceList,";") //Filled BG for selected peak
		ModifyGraph /W=SLP_MultiGLAFit_01#G0  mode($TraceName)=7,hbFill($TraceName)=2,rgb($TraceName)=(65535,49151,49151)
		TraceName=StringFromList(1,TraceList,";") //Data Wave (BG subtracted)
		Modifygraph /W=SLP_MultiGLAFit_01#G0 mode($TraceName)=3, Marker($TraceName)=16, rgb($TraceName)=(43690,43690,43690)
		TraceName=StringFromList(2,TraceList,";") //Guess Wave
		ModifyGraph /W=SLP_MultiGLAFit_01#G0 rgb($TraceName)=(1,34817,52428), lsize($TraceName)=3
		TraceName=StringFromList(PeakRow+3,TraceList,";") //Selected peak
		ModifyGraph /W=SLP_MultiGLAFit_01#G0  rgb($TraceName)=(65535,43690,0),lsize($TraceName)=1.5
	
	Elseif (FitDisplay_Flg==1)	//Display fit results
		
		//Make a list of waves to be displayed
		String FitW_FName=Data_nBGW_FName+"_Fit"
		WavesToBeDisplayed=HilightW_FName+";"+Data_nBGW_FName+";"+FitW_FName+";" //Hilight - Data nBG - Fit
		
		For (i=0;i<dimsize(CoefGuessDispW,0);i+=1)
			If (CoefGuessDispSelW[i][0]==48)
				sprintf Index_str,"%02d",j
				ComponentW_FName=Data_nBGW_FName+"_f"+index_str //Add fit components
				WavesToBeDisplayed+=ComponentW_FName+";"				
				j+=1
			EndIf
		EndFor
		
		//Create highlighted peak
		SelPeak_Name=StringFromList(PeakRow+3,WavesToBeDisplayed,";") //Selected peak name
		If (Exists(SelPeak_Name))
			Duplicate /O $SelPeak_Name,$HilightW_FName /Wave=HilightW
		EndIf
	
		SLP_Util_AddnRmTraces("SLP_MultiGLAFit_01#G0",WavesToBeDisplayed,0)
		
		TraceList=tracenamelist("SLP_MultiGLAFit_01#G0",";",1)
		TraceName=StringFromList(0,TraceList,";") //Filled BG for selected peak
		ModifyGraph /W=SLP_MultiGLAFit_01#G0  mode($TraceName)=7,hbFill($TraceName)=2,rgb($TraceName)=(40000,50000,40000)
		TraceName=StringFromList(1,TraceList,";") //Data Wave (BG subtracted)
		Modifygraph /W=SLP_MultiGLAFit_01#G0 mode($TraceName)=3, Marker($TraceName)=16, rgb($TraceName)=(43690,43690,43690)
		TraceName=StringFromList(2,TraceList,";") //Fit Wave
		ModifyGraph /W=SLP_MultiGLAFit_01#G0 rgb($TraceName)=(0,35000,0), lsize($TraceName)=3
		TraceName=StringFromList(PeakRow+3,TraceList,";") //Selected peak
		ModifyGraph /W=SLP_MultiGLAFit_01#G0  rgb($TraceName)=(65535,43690,0),lsize($TraceName)=1.5
		
	EndIf
	
	ModifyGraph /W=SLP_MultiGLAFit_01#G0 margin(left)=28,margin(bottom)=28, margin(top)=9,margin(right)=9
	Modifygraph /W=SLP_MultiGLAFit_01#G0 mirror=1,minor=1,tick=2
	//Orginal data w (before BG) and BG waves display
	Wavestats /Q Data_nBGW
	Variable OrgData_yOffset=(V_Max-V_Min)*1.10 //Determine offset value from the data y-range
	ControlInfo /W=SLP_MultiGLAFit_01 Check_DisplayOriginal; variable DisplayOrg_Flg=V_Value
	If (DisplayOrg_Flg)
		appendtograph /W=SLP_MultiGLAFit_01#G0 $DataW_FName
		TraceName=StringFromList(ItemsInlist(TraceNameList("SLP_MultiGLAFit_01#G0",";",1))-1,TraceNameList("SLP_MultiGLAFit_01#G0",";",1))
		ModifyGraph /W=SLP_MultiGLAFit_01#G0 offset($TraceName)={0,OrgData_yOffset},rgb($TraceName)=(30000,30000,30000)
	EndIf
	ControlInfo /W=SLP_MultiGLAFit_01 Check_DisplayBG; variable DisplayBg_Flg=V_Value
	If (DisplayBg_Flg)
		appendtograph /W=SLP_MultiGLAFit_01#G0 $BgW_FName
		TraceName=StringFromList(ItemsInlist(TraceNameList("SLP_MultiGLAFit_01#G0",";",1))-1,TraceNameList("SLP_MultiGLAFit_01#G0",";",1))
		ModifyGraph /W=SLP_MultiGLAFit_01#G0 offset($TraceName)={0,OrgData_yOffset}, lstyle($TraceName)=2,rgb($TraceName)=(30000,30000,30000)
	EndIf
	
	//Slider controls
	Variable MinX=dimoffset(DataW,0)
	Variable MaxX=dimoffset(DataW,0)+(dimsize(DataW,0)-1)*dimdelta(DataW,0)
	Variable StepX=dimdelta(DataW,0)
	Slider slider_Pos, limits={MinX,MaxX,StepX/4}
	WaveStats /Q DataW
	Slider slider_Int, limits={0,V_Max,V_Max/400}
	Slider slider_Fwhm, limits={0.01,MaxX-MinX,(MaxX-MinX)/100}
	
	Slider Slider_Int, value=str2num(CoefGuessDispW[PeakRow][3])
	Slider Slider_Pos, value=str2num(CoefGuessDispW[PeakRow][4])
	Slider Slider_Fwhm, value=str2num(CoefGuessDispW[PeakRow][5])
	Slider Slider_Mix, value=str2num(CoefGuessDispW[PeakRow][6])
	Slider Slider_As, value=str2num(CoefGuessDispW[PeakRow][7])
	
	//Popup
	Variable BG_Sel=whichlistitem(SLP_MGFit_DataListW[DataRow][5],"None;Shirley;Erf;atan;Flat;Slope")+1
	PopupMenu popup_BgSel, mode=BG_Sel
	
	SLP_MGFit_ConstraintLogic(DataName)
	
	NVAR Gss_ChiSq=root:Package_SLP:MGFit:Gss_ChiSq
	NVAR Fit_ChiSq=root:Package_SLP:MGFit:Fit_ChiSq
	
	Gss_ChiSq=str2num(SLP_MGFit_DataListW[DataRow][15])
	Fit_ChiSq=str2num(SLP_MGFit_DataListW[DataRow][16])
	
	//Checkbox
	CheckBox check_DispFit value=str2num(SLP_MGFit_DataListW[DataRow][17])
	
	NVAR LowX=root:Package_SLP:MGFit:LowX
	NVAR HighX=root:Package_SLP:MGFit:HighX
	LowX=str2num(SLP_MGFit_DataListW[DataRow][18])
	HighX=str2num(SLP_MGFit_DataListW[DataRow][19])
	
	SLP_MGFit_ReadAreaUnderCurve(DataName)
	SLP_MGFit_ReadAreaUnderPeaks(DataName)

	SLP_MGFit_CalculateARatio(DataName)
	
End

Function SLP_MGFit_Listbox2ConstraintW(DataName) //Copy user's inputs in Listbox to ConstraintW volume of the fitting
	String DataName
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
	String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
	String CoefGuessM_FName=DataLocation+"CoefGuessM"
	String ConstraintW_FName=DataLocation+"ConstraintW"
	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName
	Wave CoefGuessM=$CoefGuessM_FName
	Wave ConstraintW=$ConstraintW_FName
	
	Wave /T SLP_MGFit_ConstraintDisplayW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW
	Wave SLP_MGFit_ConstraintDisplaySelW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplaySelW
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
	Variable PeakRow=V_Value
	//DoUpdate
	ConstraintW[][0][PeakRow]=str2num(SLP_MGFit_ConstraintDisplayW[p][1])
	ConstraintW[][1][PeakRow]=str2num(SLP_MGFit_ConstraintDisplayW[p][2])
	ConstraintW[][2][PeakRow]=(SLP_MGFit_ConstraintDisplaySelW[p][3][0]==48)
	//edit ConstraintW
	//DoUpdate
	SLP_MGFit_ConstrW2ConstrV(DataName)
End

Function CheckProc_MGFit_DisplayOrgBG(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			SLP_MGFit_DisplaySelectedData(DataName)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SliderProc_MGFit_CoefAdjust(sa) : SliderControl
	STRUCT WMSliderAction &sa

	switch( sa.eventCode )
		case -1: // control being killed
			break
		default:
			if( sa.eventCode & 1 ) // value set
				Variable curval = sa.curval
				
				ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
				Variable DataRow=V_Value
				ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
				Variable PeakRow=V_Value
				ControlInfo /W=SLP_MultiGLAFit_01 check_DispFit
				Variable FitResultChecked=V_Value
				
				Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
				String DataLocation=SLP_MGFit_DataListW[DataRow][1]
				String DataName=SLP_MGFit_DataListW[DataRow][0]
				
				If (FitResultChecked)
					SLP_MGFit_DataListW[DataRow][17]="0"
					SLP_MGFit_DisplaySelectedData(DataName)
					DoUpdate
				EndIf
				
				String DataW_FName=DataLocation+DataName
				String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
				Wave /T CoefGuessDispW=$CoefGuessDispW_FName
				String GssCurveW_FName=DataW_FName+"_Gss"
				Wave GssCurveW=$GssCurveW_FName
				
				ControlInfo /W=SLP_MultiGLAFit_01 Slider_Int
				Variable Int=V_Value
				ControlInfo /W=SLP_MultiGLAFit_01 Slider_Pos
				Variable Pos=V_Value
				ControlInfo /W=SLP_MultiGLAFit_01 Slider_Fwhm
				Variable Fwhm=V_Value
				ControlInfo /W=SLP_MultiGLAFit_01 Slider_Mix
				Variable Mix=V_Value
				ControlInfo /W=SLP_MultiGLAFit_01 Slider_AS
				Variable As=V_Value
				
				CoefGuessDispW[Peakrow][3]=num2str(Int)
				CoefGuessDispW[Peakrow][4]=num2str(Pos)
				CoefGuessDispW[Peakrow][5]=num2str(Fwhm)
				CoefGuessDispW[Peakrow][6]=num2str(Mix)
				CoefGuessDispW[Peakrow][7]=num2str(As)
				
				SLP_MGFit_UpdatePeakComponent()
				
				SLP_MGFit_ConstraintLogic1p(DataName,PeakRow)	
				
				SLP_MGFit_ReadAreaUnder1GssPeak(DataName,PeakRow)
				
				SLP_MGFit_CalculateARatio(DataName)
			endif
			break
	endswitch

	return 0
End

Function SLP_MGFit_UpdatePeakComponent()
	
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
	Variable DataRow=V_Value
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
	Variable PeakRow=V_Value
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String DataName=SLP_MGFit_DataListW[DataRow][0]
	String DataW_FName=DataLocation+DataName
	String DataW_nBG_FName=DataW_FName+"_nBG"
	String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	String GssCurveW_FName=DataW_FName+"_Gss"
	Wave GssCurveW=$GssCurveW_FName
	
	Variable int=str2num(CoefGuessDispW[Peakrow][3])
	Variable Pos=str2num(CoefGuessDispW[Peakrow][4])
	Variable Fwhm=str2num(CoefGuessDispW[Peakrow][5])
	Variable Mix=str2num(CoefGuessDispW[Peakrow][6])
	Variable As=str2num(CoefGuessDispW[Peakrow][7])
	
	String ComponentW_FName=DataW_FName+"_p"+num2str(PeakRow)
	If (Exists(ComponentW_FName))
		Wave ComponentW=$ComponentW_FName
		GssCurveW-=ComponentW		//Subtract the component from the guess W first
		ComponentW=SLP_GLA_Func(Int,Pos,Fwhm,Mix,As,x)
		GssCurveW+=ComponentW		//Add it back to the Gss W
	EndIf

	NVAR Gss_Chisq=root:Package_SLP:MGFit:Gss_Chisq
	Gss_Chisq=SLP_MGFit_CalcChiSq(GssCurveW_FName,DataW_nBG_FName)
	SLP_MGFit_DataListW[DataRow][15]=num2str(Gss_Chisq)
	
	SLP_MGFit_ReadAreaUnderCurve(DataName)
End

Function SLP_MGFit_DrawVLine(x)
	variable x
	setdrawlayer /W=SLP_MultiGLAFit_01#G0 UserFront
	drawaction /W=SLP_MultiGLAFit_01#G0  delete
	SetDrawEnv /W=SLP_MultiGLAFit_01#G0 xcoord= bottom,ycoord= left,linefgc=(50000,20000,20000 ),dash=2
	GetAxis /W=SLP_MultiGLAFit_01#G0 /Q left
	drawline /W=SLP_MultiGLAFit_01#G0 x,V_min,x,V_max

End

Function SLP_MGFit_ConstraintW2Listbox(DataName) //Copy ConstraintW values to the Constraint ListBox on the panel
	String DataName
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
	Variable PeakRow=V_Value
	
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
	String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
	String CoefGuessM_FName=DataLocation+"CoefGuessM"
	String ConstraintW_FName=DataLocation+"ConstraintW"
	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName
	Wave CoefGuessM=$CoefGuessM_FName
	Wave ConstraintW=$ConstraintW_FName
	
	Wave /T SLP_MGFit_ConstraintDisplayW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplayW
	Wave SLP_MGFit_ConstraintDisplaySelW=root:Package_SLP:MGFit:SLP_MGFit_ConstraintDisplaySelW
	
	SLP_MGFit_ConstraintDisplayW[][1]=num2str(ConstraintW[p][0][PeakRow])
	SLP_MGFit_ConstraintDisplayW[][2]=num2str(ConstraintW[p][1][PeakRow])
	SLP_MGFit_ConstraintDisplaySelW[][3][0]=(ConstraintW[p][2][PeakRow]==1)*16+32 //If true = put 48 (checkbox is checked). If faulse = put 32 (checkbox is unchecked)
	
End

Function ListBoxProc_MGFit_AreaRatio(lba) : ListBoxControl
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
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			SLP_MGFit_CalculateARatio(DataName)
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

Function SLP_MGFit_ReadAreaUnderCurve(DataName)
	String DataName
	NVAR LowX=root:Package_SLP:MGFit:LowX
	NVAR HighX=root:Package_SLP:MGFit:HighX
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	
	
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String DataW_FName=DataLocation+DataName	//Raw data
	String BgW_FName=DataW_FName+"_BG"		//Background
	String Data_nBGW_FName=DataW_FName+"_nBG"	//Data after BG subtraction
	String Data_GssW_FName=DataW_FName+"_Gss"	//Guess curve
	String FitW_FName=Data_nBGW_FName+"_Fit"		//Fit curve
	wave DataW=$DataW_FName
	wave BgW=$BgW_FName
	
	Wave /T SLP_MGFit_CurveAreaW=root:Package_SLP:MGFit:SLP_MGFit_CurveAreaW
	
	SLP_MGFit_CurveAreaW[0][]={{"Data wave area"},{"Data wave after BG subtraction area"},{"Data wave after flat BG subtraction area"},{"Guess curve area"},{"Fit curve area"},{"BG area"},{"BG after flat BG area"}}
	SLP_MGFit_CurveAreaW[1][0]={num2str(area($DataW_FName,LowX,HighX))}
	SLP_MGFit_CurveAreaW[1][1]={num2str(area($Data_nBGW_FName,LowX,HighX))}
	SLP_MGFit_CurveAreaW[1][2]={num2str(area($DataW_FName,LowX,HighX)-(DataW[0]*(HighX-LowX)))}
	SLP_MGFit_CurveAreaW[1][3]={num2str(area($Data_GssW_FName,LowX,HighX))}
	SLP_MGFit_CurveAreaW[1][4]={num2str(area($FitW_FName,LowX,HighX))}
	SLP_MGFit_CurveAreaW[1][5]={num2str(area($BgW_FName,LowX,HighX))}
	SLP_MGFit_CurveAreaW[1][6]={num2str(area($BgW_FName,LowX,HighX)-(BgW[0]*(HighX-LowX)))}
End

Function  SLP_MGFit_CalculateARatio(DataName)
	String DataName
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	Wave /T SLP_MGFit_PeakAreaW=root:Package_SLP:MGFit:SLP_MGFit_PeakAreaW
	Wave /T SLP_MGFit_CurveAreaW=root:Package_SLP:MGFit:SLP_MGFit_CurveAreaW

	Variable PeakCol,PeakRow,CurveCol,CurveRow
	ControlInfo /W=SLP_MultiGLAFit_01 list_PeakArea
	PeakRow=V_Value
	PeakCol=V_selCol
	ControlInfo /W=SLP_MultiGLAFit_01 list_CurveArea
	CurveRow=V_Value
	CurveCol=V_selCol
	
	NVAR AreaRatio=root:Package_SLP:MGFit:AreaRatio
	
	AreaRatio=str2num(SLP_MGFit_PeakAreaW[PeakRow][PeakCol])/str2num(SLP_MGFit_CurveAreaW[CurveRow][CurveCol])
	
End

Function  SLP_MGFit_ReadAreaUnder1GssPeak(DataName,PeakRow)
	String DataName
	Variable PeakRow
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	Wave /T SLP_MGFit_PeakAreaW=root:Package_SLP:MGFit:SLP_MGFit_PeakAreaW
	
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String DataW_FName=DataLocation+DataName	//Raw data
	wave DataW=$DataW_FName
	
	String BgW_FName=DataW_FName+"_BG"		//Background
	String Data_nBGW_FName=DataW_FName+"_nBG"	//Data after BG subtraction
	
	String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"

	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	
	duplicate /O  DataW,root:Package_SLP:MGFit:PeakAreaCalW /Wave=PeakAreaCalW
	PeakAreaCalW=0
	
	Variable Int,Pos,Fwhm,Mix,As

	int=str2num(CoefGuessDispW[PeakRow][3])
	Pos=str2num(CoefGuessDispW[PeakRow][4])
	Fwhm=str2num(CoefGuessDispW[PeakRow][5])
	Mix=str2num(CoefGuessDispW[PeakRow][6])
	As=str2num(CoefGuessDispW[PeakRow][7])

	PeakAreaCalW=SLP_GLA_Func(Int,Pos,Fwhm,Mix,As,x)
	SLP_MGFit_PeakAreaW[1][PeakRow]=num2str(area(PeakAreaCalW))
		
	Killwaves PeakAreaCalW
End

Function  SLP_MGFit_ReadAreaUnderPeaks(DataName)
	String DataName
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	Wave /T SLP_MGFit_PeakAreaW=root:Package_SLP:MGFit:SLP_MGFit_PeakAreaW
	
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String DataW_FName=DataLocation+DataName	//Raw data
	wave DataW=$DataW_FName
	
	String BgW_FName=DataW_FName+"_BG"		//Background
	String Data_nBGW_FName=DataW_FName+"_nBG"	//Data after BG subtraction
	String Data_GssW_FName=DataW_FName+"_Gss"	//Guess curve
	String PAreaW_FName=Data_nBGW_FName+"_PArea" //peak area from fitting (only selected peak(s))
	Wave PAreaW=$PAreaW_FName
	
	String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
	String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName
	String FitPeakFName=""
	String Index_str=""
	duplicate /O  DataW,root:Package_SLP:MGFit:PeakAreaCalW /Wave=PeakAreaCalW
	PeakAreaCalW=0
	
	Variable Int,Pos,Fwhm,Mix,As
	
	Variable i=0
	Variable j=0
	For (i=0;i<dimsize(CoefGuessDispW,0);i+=1)
		//Guess peaks
		
		int=str2num(CoefGuessDispW[i][3])
		Pos=str2num(CoefGuessDispW[i][4])
		Fwhm=str2num(CoefGuessDispW[i][5])
		Mix=str2num(CoefGuessDispW[i][6])
		As=str2num(CoefGuessDispW[i][7])
	
		PeakAreaCalW=SLP_GLA_Func(Int,Pos,Fwhm,Mix,As,x)
		SLP_MGFit_PeakAreaW[1][i]=num2str(area(PeakAreaCalW))
		
		//Fit peaks
		If (CoefGuessDispSelW[i][0]==48)
			sprintf Index_str,"%02d",j
			FitPeakFName=Data_nBGW_FName+"_f"+Index_str
			SLP_MGFit_PeakAreaW[2][i]=num2str(PAreaW[j])
			j+=1
		EndIf
	EndFor
	Killwaves PeakAreaCalW
End

Function /T SLP_MGFit_CreateComponents(DataName)
	String DataName
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
	Variable PeakRow=V_Value
	Variable N_Peaks=str2num(SLP_MGFit_DataListW[DataRow][3])
	
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
	String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
	String CoefGuessM_FName=DataLocation+"CoefGuessM"
	String ConstraintW_FName=DataLocation+"ConstraintW"
	Wave /T CoefGuessDispW=$CoefGuessDispW_FName
	Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName
	Wave CoefGuessM=$CoefGuessM_FName
	Wave ConstraintW=$ConstraintW_FName
	
	String ComponentW_FName=""
	String ComponentW_NameList=""
	
	variable i=0
	
	String DataW_FName=DataLocation+DataName
	Wave DataW=$DataW_FName
	
	String GssCurveW_FName=DataW_FName+"_Gss"
	Duplicate /O DataW,$GssCurveW_FName /wave=GssCurveW
	GssCurveW=0
	
	For (i=0;i<dimsize(CoefGuessDispW,0);i+=1)
		If (CoefGuessDispSelW[i][0][0]==48)
			ComponentW_FName=DataW_FName+"_p"+num2str(i)
			Duplicate /O DataW,$ComponentW_FName /wave=ComponentW
			ComponentW=SLP_GLA_Func(str2num(CoefGuessDispW[i][3]),str2num(CoefGuessDispW[i][4]),str2num(CoefGuessDispW[i][5]),str2num(CoefGuessDispW[i][6]),str2num(CoefGuessDispW[i][7]),x)
			ComponentW_NameList+=ComponentW_FName+";"
			GssCurveW+=ComponentW
		Endif
	EndFor
	
	ComponentW_NameList=GssCurveW_FName+";"+ComponentW_NameList
	
	Return ComponentW_NameList
End

Function SLP_MGFit_CalcChiSq(ObsW_FName,ExpW_FName)
	String ObsW_FName,ExpW_FName
	
	Wave ObsW=$ObsW_FName
	Wave ExpW=$ExpW_FName
	Variable ChiSq=0
	
	If (dimoffset(ObsW,0)==dimoffset(ExpW,0) && dimdelta(ObsW,0)==dimdelta(ExpW,0) && dimsize(ObsW,0)==dimsize(ExpW,0))
		Variable i=0
		For (i=0;i<dimsize(ObsW,0);i+=1)
			ChiSq+=(ObsW[i]-ExpW[i])^2
		EndFor
	Else
		print "Aborted. Wave 1 and 2 have different x-scaling"
	EndIf
	Return ChiSq
End

Function ButtonProc_MGFit_Fit(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
			Variable DataRow=V_Value
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
			Variable PeakRow=V_Value
			
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			
			String DataName=SLP_MGFit_DataListW[DataRow][0]
			String DataLocation=SLP_MGFit_DataListW[DataRow][1]
			
			String CoefGuessDispW_FName=DataLocation+"CoefGuessDispW"
			String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
			Wave /T CoefGuessDispW=$CoefGuessDispW_FName
			Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName

			String CoefGuessM_FName=DataLocation+"CoefGuessM" //Use for fitting
			String ConstraintV_FName=DataLocation+"ConstraintV" //Use for fitting
		
			String DataW_FName=DataLocation+DataName	//Raw data
			String BgW_FName=DataW_FName+"_BG"		//Background
			String Data_nBGW_FName=DataW_FName+"_nBG"	//Data after BG subtraction
			String Data_GssW_FName=DataW_FName+"_Gss"	//Guess curve
			String FitW_FName=Data_nBGW_FName+"_Fit"
			
			Wave Data_nBGW=$Data_nBGW_FName
			
			//Copy data to Constraint Volume and Coef Matrix
			SLP_MGFit_ConstrW2ConstrV(DataName)
			SLP_MGFit_ListBox2CoefMatrix(DataName)
			
			//	!!!! FIT !!!!
			SLP_Util_FitMultiGLAs2(Data_nBGW_FName,dimsize($ConstraintV_FName,2),CoefGuessM_FName,ConstraintV_FName)
			Wave FitW=$FitW_FName
			
			//DISPLAY RESULTS
			SLP_MGFit_DataListW[DataRow][17]="1" //== show fit result on the graph
			SLP_MGFit_DisplaySelectedData(DataName)
			
			//Update param guess table
			Variable i=0
			Variable j=0
			NVAR MaxN_peaks=root:Package_SLP:MGFit:MaxN_peaks
			String CoefW_FName=""
			String Index_str=""
			For (i=0;i<MaxN_peaks;i+=1)
				If (CoefGuessDispSelW[i][0]==48)
					sprintf Index_str,"%02d",j
					CoefW_FName=Data_nBGW_FName+"_c"+Index_str
					wave CoefW=$CoefW_FName
					
					CoefGuessDispW[i][8]=num2str(CoefW[0])
					CoefGuessDispW[i][9]=num2str(CoefW[1])
					CoefGuessDispW[i][10]=num2str(CoefW[2])
					CoefGuessDispW[i][11]=num2str(CoefW[3])
					CoefGuessDispW[i][12]=num2str(CoefW[4])
					
					j+=1
				EndIf
			EndFor
			
			//Calculate Chi Sq.
			NVAR Fit_ChiSq=root:Package_SLP:MGFit:Fit_ChiSq
			Fit_ChiSq= SLP_MGFit_CalcChiSq(FitW_FName,Data_nBGW_FName)
			SLP_MGFit_DataListW[DataRow][16]=num2str(Fit_ChiSq)
			
			//Read area under fitted peaks
			SLP_MGFit_ReadAreaUnderPeaks(DataName)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_Util_FitMultiGLAs2(DataW_FName,N_Peaks,CoefGuessM_FName,ConstraintW_FName)
	String DataW_FName
	Variable N_Peaks
	String CoefGuessM_FName
	String ConstraintW_FName
	
	Wave DataW=$DataW_FName
	Wave CoefGuessM=$CoefGuessM_FName
	Wave ConstraintW=$ConstraintW_FName
	
	String ComponentW_FName=""
	String Constraint_txt=""
	String HoldStr=""
	String PAreaW_FName=DataW_FName+"_PArea"
	String FitW_FName=DataW_FName+"_Fit"
	Duplicate /O DataW,$FitW_FName /Wave=FitW
	FitW=0
	
	Make /O/N=(N_peaks) $PAreaW_FName /WAVE=PAreaW
	
	Make /O/N=(N_peaks,5) GLA_coef_M
	GLA_coef_M=0
	
	Make /T/O/N=0 FitConstraintW
	
	Variable i=0
	Variable j=0
	Variable k=0
	Variable m=0
	String CoefList=""
	String CoefW_FName=""
	String Index_str=""
	//String Fit_str="FuncFit /Q/W=2/NTHR=0/TBOX=768 {"
	//String Fit_str="FuncFit /Q/W=2/NTHR=0 {"
	
	//Create a string for Funcfit execution..
	String Fit_str="FuncFit /ODR=0/W=1/NTHR=0 {"

	For (i=0;i<N_Peaks;i+=1)
		sprintf Index_str,"%02d",i
		CoefW_FName=DataW_FName+"_c"+Index_str
		Make /O/N=5 $CoefW_FName /Wave=CoefW
		CoefW[]=CoefGuessM[i][p]
		Print "Coef guess for peak "+Index_Str
		Print CoefW
		
		//Hold String
		HoldStr=num2str(ConstraintW[0][2][i])+num2str(ConstraintW[1][2][i])+num2str(ConstraintW[2][2][i])+num2str(ConstraintW[3][2][i])+num2str(ConstraintW[4][2][i])

		Fit_str+="{SLP_GLA_FitFunc,"+CoefW_FName+",HOLD=\""+HoldStr+"\"},"
				
		
		//Constraints
		For (j=0;j<5;j+=1) //Parameters: Int,Pos,FWHM,Mix,As
			If (!Numtype(ConstraintW[j][0][i]) && !(ConstraintW[j][2][i])) //If HOLD, don't put constraint!
				Constraint_txt="K"+num2str(k)+">="+num2str(ConstraintW[j][0][i])
				redimension /N=(dimsize(FitConstraintW,0)+1,dimsize(FitConstraintW,1)) FitConstraintW
				FitConstraintW[m]=Constraint_txt
				m+=1
			EndIf
			If (!Numtype(ConstraintW[j][1][i]) && !(ConstraintW[j][2][i])) //If HOLD, don't put constraint!
				Constraint_txt="K"+num2str(k)+"<="+num2str(ConstraintW[j][1][i])
				redimension /N=(dimsize(FitConstraintW,0)+1,dimsize(FitConstraintW,1)) FitConstraintW
				FitConstraintW[m]=Constraint_txt
				m+=1
			EndIf
			k+=1
		EndFor
		
	EndFor
	
	Fit_str=RemoveEnding(Fit_str)
	String DestW_FName=DataW_FName+"_Fit"
	Fit_str+="} "+DataW_FName+" /D"+" /C=FitConstraintW"
	
	//Execute funcfit
	Print Fit_str
	Execute Fit_str
	
	//Create results (components and fit)
	For (i=0;i<N_Peaks;i+=1)
		sprintf Index_str,"%02d",i
		CoefW_FName=DataW_FName+"_c"+Index_str
		wave CoefW=$CoefW_FName
		ComponentW_FName=DataW_FName+"_f"+index_str
		duplicate /O DataW,$ComponentW_FName /Wave=ComponentW
		
		ComponentW=SLP_GLA_Func(CoefW[0],CoefW[1],CoefW[2],CoefW[3],CoefW[4],x)
		
		FitW+=ComponentW
		
		//Individual peak area
		PAreaW[i]=area(ComponentW)
	EndFor
End



Function SLP_MGFit_ConstrW2ConstrV(DataName)
	String DataName
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	Variable DataRow=SLP_MGFit_FindDataRow(DataName)
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
	Variable PeakRow=V_Value
	
	Variable N_peak=str2num(SLP_MGFit_DataListW[DataRow][3])
	
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String ConstraintW_FName=DataLocation+"ConstraintW"
	String ConstraintV_FName=DataLocation+"ConstraintV"
	String CoefGuessDispSelW_FName=DataLocation+"CoefGuessDispSelW"
	
	Wave ConstraintW=$ConstraintW_FName
	Wave CoefGuessDispSelW=$CoefGuessDispSelW_FName
	
	Make /O/N=(5,3,0) $ConstraintV_FName /Wave=ConstraintV
	
	variable i=0
	variable j=0
	
	For (i=0;i<dimsize(CoefGuessDispSelW,0);i+=1)
		If (CoefGuessDispSelW[i][0][0]==48)
			redimension /N=(dimsize(ConstraintV,0),dimsize(ConstraintV,1),dimsize(ConstraintV,2)+1) ConstraintV
			ConstraintV[][][j]=ConstraintW[p][q][i]
			j+=1
		EndIf
	EndFor
End

Function SLP_MGFit_FindDataRow(DataName)
	String DataName
	
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	FindValue /TEXT=DataName /TXOP=6 SLP_MGFit_DataListW
	variable col=floor(V_value/dimsize(SLP_MGFit_DataListW,0))
	variable DataRow=V_value-col*dimsize(SLP_MGFit_DataListW,0) 
	
	Return DataRow
End

Function ListBoxProc_MGFit_Constraints(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
	Variable DataRow=V_Value
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
	Variable PeakRow=V_Value
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	String DataName=SLP_MGFit_DataListW[DataRow][0]
	
	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
			break
		case 5: // cell selection plus shift key
			break
		case 6: // begin edit
			break
		case 7: // finish edit
			SLP_MGFit_Listbox2ConstraintW(DataName)
			//SLP_MGFit_ConstrW2ConstrV(DataName)
			SLP_MGFit_ConstraintLogic1p(DataName,PeakRow)
			break
		case 13: // checkbox clicked (Igor 6.2 or later)
			SLP_MGFit_Listbox2ConstraintW(DataName)
			//SLP_MGFit_ConstrW2ConstrV(DataName)
			SLP_MGFit_ConstraintLogic1p(DataName,PeakRow)
			break
	endswitch

	return 0
End

Function ListBoxProc_MGFit_DataSelect(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
	Variable DataRow=V_Value
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	String DataName=SLP_MGFit_DataListW[DataRow][0]
	NVAR GDataRow=root:Package_SLP:MGFit:GDataRow
	
	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
			Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
			If (row!=-1&&row<dimsize(SLP_MGFit_DataListW,0))
				DataName=SLP_MGFit_DataListW[row][0]
				SLP_MGFit_DisplaySelectedData(DataName)
			EndIf
			GDataRow=row
			
			break
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

Function ListBoxProc_MGFit_CoefGuess(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	String DataName
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
	Variable DataRow=V_Value
	DataName=SLP_MGFit_DataListW[DataRow][0]
	
	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
			ControlInfo /W=SLP_MultiGLAFit_01 ListBox_PeakParam
			Variable PeakRow=V_Value
			SLP_MGFit_DataListW[DataRow][4]=num2str(PeakRow)
			SLP_MGFit_DisplaySelectedData(DataName)
			break
		case 5: // cell selection plus shift key
			break
		case 6: // begin edit
			break
		case 7: // finish edit
			SLP_MGFit_DataListW[DataRow][17]="0"
			SLP_MGFit_DisplaySelectedData(DataName)
			SLP_MGFit_UpdatePeakComponent()
			break
		case 13: // checkbox clicked (Igor 6.2 or later)
			SLP_MGFit_DataListW[DataRow][17]="0"
			SLP_MGFit_DisplaySelectedData(DataName)
			SLP_MGFit_UpdatePeakComponent()
			break
	endswitch

	return 0
End

Function SLP_MGFit_Panel_BGAdj() : Panel
	DoWindow /K MGFit_BGAdjust
	
	PauseUpdate; Silent 1		// building window...
	NewPanel /W=(471,157,894,468) /N=MGFit_BGAdjust
	
	ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
	Variable DataRow=V_Value
	Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
	String DataName=SLP_MGFit_DataListW[DataRow][0]
	String DataLocation=SLP_MGFit_DataListW[DataRow][1]
	String DataW_FName=DataLocation+DataName
	Wave DataW=$DataW_FName
	
	Variable MinX=dimoffset(DataW,0)
	Variable MaxX=dimoffset(DataW,0)+dimdelta(DataW,0)*(dimsize(DataW,0)-1)
	Variable StepX=(MaxX-MinX)/100
	
	WaveStats /Q DataW
	Variable MinY=V_Min-(V_Max-V_Min)/2
	Variable MaxY=V_Max+(V_Max-V_Min)/2
	Variable STepY=(MaxY-MinY)/100
	
	Variable FlatBG,StepPos,StepHeight,Width,Atten,StartX,EndX	
	//Starting values
	FlatBG=str2num(SLP_MGFit_DataListW[DataRow][6])
	StepPos=str2num(SLP_MGFit_DataListW[DataRow][7])
	StepHeight=str2num(SLP_MGFit_DataListW[DataRow][8])
	Width=str2num(SLP_MGFit_DataListW[DataRow][9])
	Atten=str2num(SLP_MGFit_DataListW[DataRow][10])
	StartX=str2num(SLP_MGFit_DataListW[DataRow][11])
	EndX=str2num(SLP_MGFit_DataListW[DataRow][12])
	
	String BGType=SLP_MGFit_DataListW[DataRow][5]
	make /O/N=9 MGFit_BGAdj_SliderDisableW
	If (Stringmatch(BGType,"Erf")||Stringmatch(BGType,"atan"))
		MGFit_BGAdj_SliderDisableW={0,0,0,0,0,2,2}
	ElseIf (Stringmatch (BGType,"Slope")||Stringmatch(BGType,"Shirley"))
		MGFit_BGAdj_SliderDisableW={2,2,2,2,2,0,0}
	ElseIf (Stringmatch (BGType,"Flat"))
		MGFit_BGAdj_SliderDisableW={0,2,2,2,2,2,2}
	ElseIf (Stringmatch (BGType,"None"))
		MGFit_BGAdj_SliderDisableW={2,2,2,2,2,2,2}
	EndIF
	
	Slider slider_BGAdj_FlatBG,pos={98,7},size={300,41},fSize=8,proc=SliderProc_MGFit_BGAdj,ticks=10
	Slider slider_BGAdj_FlatBG,limits={MinY,MaxY,StepY},value=FlatBG,vert= 0,disable=MGFit_BGAdj_SliderDisableW[0]
	
	Slider slider_BGAdj_StepPos,pos={98,47},size={300,41},fSize=8,proc=SliderProc_MGFit_BGAdj,ticks=10
	Slider slider_BGAdj_StepPos,limits={MinX,MaxX,StepX},value=StepPos,vert= 0,disable=MGFit_BGAdj_SliderDisableW[1]
	
	Slider slider_BGAdj_StepHeight,pos={98,87},size={300,41},fSize=8,proc=SliderProc_MGFit_BGAdj,ticks=10
	Slider slider_BGAdj_StepHeight,limits={MinY,MaxY,StepY},value=StepHeight,vert= 0,disable=MGFit_BGAdj_SliderDisableW[2]
	
	Slider slider_BGAdj_StepWidth,pos={98,126},size={300,41},fSize=8,proc=SliderProc_MGFit_BGAdj,ticks=10
	Slider slider_BGAdj_StepWidth,limits={0.01,(MaxX-MinX)/2,(MaxX-MinX)/200},value=Width,vert= 0,disable=MGFit_BGAdj_SliderDisableW[3]
	
	Slider slider_BGAdj_Atten,pos={98,163},size={300,41},fSize=8,proc=SliderProc_MGFit_BGAdj,ticks=10
	Slider slider_BGAdj_Atten,limits={0.001,10000,0},value=Atten,vert= 0,disable=MGFit_BGAdj_SliderDisableW[4]

	Slider slider_BGAdj_StartX,pos={98,202},size={300,41},fSize=8,proc=SliderProc_MGFit_BGAdj,ticks=10
	Slider slider_BGAdj_StartX,limits={MinX,MaxX,StepX},value=StartX,vert= 0,disable=MGFit_BGAdj_SliderDisableW[5]
	
	Slider slider_BGAdj_EndX,pos={98,242},size={300,41},fSize=8,proc=SliderProc_MGFit_BGAdj,ticks=10
	Slider slider_BGAdj_EndX,limits={MinX,MaxX,StepX},value=EndX,vert= 0,disable=MGFit_BGAdj_SliderDisableW[6]
	
	Killwaves MGFit_BGAdj_SliderDisableW
	
	
	Button button_BGAdj_Done,pos={348,284},size={50,20},title="Done",fSize=10,proc=ButtonProc_MGFit_BGAdj_Done

	//LABEL
	SetDrawLayer UserBack
	SetDrawEnv fsize= 10
	DrawText 17,23,"Flat background"
	SetDrawEnv fsize= 10
	DrawText 49,59,"Step pos"
	SetDrawEnv fsize= 10
	DrawText 38,98,"Step height"
	SetDrawEnv fsize= 10
	DrawText 40,138,"Step width"
	SetDrawEnv fsize= 10
	DrawText 37,177,"Attenuation"
	SetDrawEnv fsize= 10
	DrawText 59,215,"Start X"
	SetDrawEnv fsize= 10
	DrawText 66,255,"End X"

End

Function ButtonProc_MGFit_BGAdj(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_MGFit_Panel_BGAdj()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_MGFit_BGAdj_Done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow /K MGFit_BGAdjust
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SliderProc_MGFit_BGAdj(sa) : SliderControl
	STRUCT WMSliderAction &sa

	switch( sa.eventCode )
		case -1: // control being killed
			break
		default:
			if( sa.eventCode & 1 ) // value set
				Variable curval = sa.curval
				
				ControlInfo /W=SLP_MultiGLAFit_01 ListBox_DataList
				Variable DataRow=V_Value
				Wave /T SLP_MGFit_DataListW=root:Package_SLP:MGFit:SLP_MGFit_DataListW
				String DataName=SLP_MGFit_DataListW[DataRow][0]
				String BG_type=SLP_MGFit_DataListW[DataRow][5]
				
				
				ControlInfo /W=MGFit_BGAdjust slider_BGAdj_FlatBG
				Variable FlatBG=V_Value
				ControlInfo /W=MGFit_BGAdjust slider_BGAdj_StepPos
				Variable StepPos=V_Value
				ControlInfo /W=MGFit_BGAdjust slider_BGAdj_StepHeight
				Variable StepHeight=V_Value
				ControlInfo /W=MGFit_BGAdjust slider_BGAdj_StepWidth
				Variable Width=V_Value
				ControlInfo /W=MGFit_BGAdjust slider_BGAdj_Attend
				Variable Atten=V_Value
				ControlInfo /W=MGFit_BGAdjust slider_BGAdj_StartX
				Variable StartX=V_Value
				ControlInfo /W=MGFit_BGAdjust slider_BGAdj_EndX
				Variable EndX=V_Value
				
				SLP_MGFit_MakeBG(DataName,BG_type,FlatBG,StepPos,StepHeight,Width,Atten,StartX,EndX)
				
				SLP_MGFit_DataListW[DataRow][6]=num2str(FlatBG)
				SLP_MGFit_DataListW[DataRow][7]=num2str(StepPos)
				SLP_MGFit_DataListW[DataRow][8]=num2str(StepHeight)
				SLP_MGFit_DataListW[DataRow][9]=num2str(Width)
				SLP_MGFit_DataListW[DataRow][10]=num2str(Atten)
				SLP_MGFit_DataListW[DataRow][11]=num2str(StartX)
				SLP_MGFit_DataListW[DataRow][12]=num2str(EndX)
				
			endif
			break
	endswitch

	return 0
End













/////////////////////////////////////
/////////////CODE START HERE/////////
/////////////////////////////////////






Menu "SLPA"
	"Load LEEM images..",SLP_LL_CreatePanel01()
	"Load NEXAFS scans..",SLP_NEX_CreatePanel()
	"Imaging XPS..",SLP_IXPS_CreatePanel1()
	"Dispersive XPS..",SLP_DXPS_CreatePanel1()
	"DLA analysis..",SLP_DLA_CreatePanel01()
End

Function SLP_LL_CreatePanel01()
	//Check whether initiallization is needed
	If (!DataFolderExists("root:Package_SLP:LoadLEEM" ))
		SLP_LoadLEEM_init()
		slp_Stitch_Init()
		SLP_Util_Init()
	Endif
	
	wave /T SLP_ImgParamColDescrptn=root:Package_SLP:LoadLEEM:SLP_ImgParamColDescrptn
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	wave SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	NVAR LL_InitFlg=root:Package_SLP:LoadLEEM:LL_InitFlg
	NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel
	
	DoWindow/K SLP_LL_01
	NewPanel /W=(200,90,1000,610) /N=SLP_LL_01
	//ShowTools/A
	//SetDrawLayer UserBack
	//DrawRect 38,43,330,266
	Display /HOST=SLP_LL_01 /N=SLP_LL_01_ImPlot /W=(20,40,330,270)
	ModifyGraph tick=3,noLabel=2
	ModifyGraph width=0,height=0
	ModifyGraph standoff=0
	
	Button Button_DelDataSet,pos={650,10},size={130,20}, Fsize=10,title="Delete selected datasets",proc=ButtonProc_LL_DelDataSet
	
	Button Button_FindScreenPos,pos={370,130},size={130,20}, Fsize=10,title="Find screen position..",proc=ButtonProc_LL_FindScreen
	Button Button_SetScale,pos={370,155},size={130,20},Fsize=10,title="Set scale..", proc=ButtonProc_LL_SetScale
	Button Button_Stitch,pos={370,180},size={130,20},Fsize=10,title="Stitch images..", proc=ButtonProc_LL_Stitch

	Button Button_LoadFullSize,pos={370,215},size={130,20},Fsize=10,title="Load fullsize image", proc=ButtonProc_LL_LoadFullSize
	Button Button_ExportSelImg,pos={370,240},size={130,20},Fsize=10,title="Export selected images..",proc=ButtonProc_LL_ExportSelImg
	Button Button_CreateReport,pos={370,265},size={130,20},Fsize=10,title="Create report.."

	Button Button_LoadImg,pos={20,280},size={115,20},Fsize=10,title="Load image set..", proc=ButtonProc_LL_LoadImg
	Button Button_SelAll,pos={150,280},size={90,20},Fsize=10,title="Select all", proc=ButtonProc_LL_SelAll
	Button Button_SelNone,pos={245,280},size={90,20},Fsize=10,title="Select none", proc=ButtonProc_LL_SelNone

	Button Button_Done,pos={725,490},size={50,20},title="Done", proc=ButtonProc_LL_done
	
	TitleBox SLP_LLP_TitleBox_Main,pos={330,10},size={210,20},title="LEEM/PEEM Image Browser"
	TitleBox SLP_LLP_TitleBox_Main,fSize=16,frame=0

	TitleBox SLP_LLP_TitleBox_Main1,pos={556,22},size={66,16},title="Dataset list"
	TitleBox SLP_LLP_TitleBox_Main1,fSize=12,frame=0
	
	TitleBox SLP_LLP_Titlebox_Descriptions, fsize=9, frame=0, pos={20,485},title="Double click wave name to display image in a separate window"
	
	ListBox list0,pos={20,305},size={750,177}
	ListBox list0,titleWave=SLP_ImgParamColDescrptn,mode= 2,selRow= 0
	ListBox list0,widths={35,150,50,50,50,50,40,40,50,50,70,50,70,250,85,85}
	ListBox list0,userColumnResize= 1
	ListBox list0, proc=ListBoxProc_LL_ImgList
	//ListBox list0, selWave=SLP_ImgParamListSelW
	
	ListBox list1,pos={550,40},size={220,255}
	ListBox list1,listWave=SLP_ImgSetListW
	ListBox list1,mode= 2,selRow= 0
	ListBox list1 widths={35,76,48,60}
	ListBox list1,userColumnResize= 1
	ListBox list1,titleWave=root:Package_SLP:LoadLEEM:SLP_DatasetColDescrptn
	ListBox list1, proc=ListBoxProc_LL_DatasetList
	ListBox list1, selrow=Dataset_Sel
	ListBox list1, selWave=SLP_ImgSetListSelW
	
	NVAR ce_X=root:Package_SLP:LoadLEEM:ce_X
	NVAR ce_Y=root:Package_SLP:LoadLEEM:ce_Y
	NVAR ce_SampleTemp=root:Package_SLP:LoadLEEM:ce_SampleTemp
	SVAR ce_FOV1=root:Package_SLP:LoadLEEM:ce_FOV1
	SVAR ce_Notes=root:Package_SLP:LoadLEEM:ce_Notes
	SVAR ce_Date=root:Package_SLP:LoadLEEM:ce_Date
	
	TitleBox SLP_LLP_TitleBox_02, pos={350,40},frame=0,title="Image parameters:"
	Setvariable SetVar_X,pos={350,60},size={80,15},limits={-inf,inf,0},title="x:",value=ce_X,noedit=1
	Setvariable SetVar_Y,pos={435,60},size={80,15},limits={-inf,inf,0},title="y:",value=ce_Y,noedit=1
	Setvariable SetVar_SampleTemp,pos={350,80},size={80,15},limits={-inf,inf,0},title="Temp:",value=ce_SampleTemp,noedit=1
	Setvariable SetVar_FOV1,pos={435,80},size={80,15},title="FOV:",value=ce_FOV1,noedit=1
	Setvariable SetVar_Date,pos={350,100},size={180,15},title=" ",value=ce_Date,noedit=1,frame=0

	Setvariable SetVar_notes,pos={20,15},size={300,15},title="Image notes:",value=ce_Notes,proc=SetVarProc_ImgNotes
	
	//SetVariable setvar0,pos={387,149},size={50,19},fSize=12
	//SetVariable setvar0,limits={-inf,inf,0},noedit= 1	
	//string DataSetName=SLP_ImgSetListW[LoadLEEM_Sel][1]
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	
	If (LL_InitFlg==0)
		string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
		string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
		string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
		string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"
		wave /T SLP_ImgListW=$ImgList_Fname
		wave /T SLP_ImgParamListW=$ImgParam_Fname
		wave SLP_ImgParamListSelW=$ImgParamSel_Fname
		Wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
		SLP_LL_PlotImage(SLP_ImgListW[LoadLEEM_sel][3],SLP_ImgListW[LoadLEEM_sel][2])
		
		ListBox list0,listWave=SLP_ImgParamListW
		ListBox list0, selWave=SLP_ImgParamListSelW
		ListBox list0,selRow=LoadLEEM_sel
		ListBox list0, selWave=SLP_ImgParamListSelW
	Endif 
End

Function SLP_Load_oldLEEM_Img()
	//Load old .DAT file from Elmitec LEEM (before 2014)
	//Positions (in bytes) for image size and image data (can be found from U-View manual)
	variable ImWidth_Location=40
	variable ImHeight_Location=42
	variable ImageData_Location=392
	variable ce_RefNum
	
	String fileFilters = "Data Files (*.dat):.dat;"
	
	Open /R /F=fileFilters ce_RefNum
	
	String ce_FileName=S_fileName
	
	ce_FileName=stringfromlist(itemsinlist(S_fileName,":")-1,S_fileName,":")
	ce_FileName=stringfromlist(0,ce_FileName,".")
	
	variable ce_ImWidth=0
	variable ce_ImHeight=0
	
	fsetpos ce_RefNum,ImWidth_Location
	fbinread /F=2 ce_RefNum, ce_ImWidth
	
	fsetpos ce_RefNum,ImHeight_Location
	fbinread /F=2 ce_RefNum, ce_ImHeight
	
	string ImgW_Name=ce_FileName
	Prompt ImgW_Name, "Image wave name:"
	DoPrompt "Enter",ImgW_Name
	
	make /O /N=(ce_ImWidth,ce_ImHeight) $ImgW_Name /WAVE=ImgW
	
	fsetpos ce_RefNum,ImageData_Location
	fbinread /F=2 ce_RefNum,ImgW
	
	Close ce_RefNum
	
	NewImage ImgW
End

Function SLP_LL_DataSetSelect(DataSet_Row)
	variable DataSet_Row
	
	string SelectedDataSetName
	
	//Plot the new image and select the new dataset
	//NVAR N_Datasets=root:Package_SLP:LoadLEEM:N_Datasets
	SVAR CurrentDataset=root:Package_SLP:LoadLEEM:CurrentDataset
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	NVAR DataSet_Sel=root:Package_SLP:LoadLEEM:DataSet_Sel
	
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	string DataSetName=SLP_ImgSetListW[DataSet_Row][1]
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+DataSetName
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"

	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave SLP_ImgParamListSelW=$ImgParamSel_Fname
	
	string LLSel_Recall_Fname=Pkg_Location+":LoadLEEM_Sel_Recall"
	NVAR LoadLEEM_Sel_Recall=$LLSel_Recall_Fname
	
	//Make selection for List0 (Image list)
	ListBox list0,listwave= SLP_ImgParamListW,selRow=LoadLEEM_Sel_Recall,Row=LoadLEEM_Sel_Recall,selWave=SLP_ImgParamListSelW
	LoadLEEM_Sel=LoadLEEM_Sel_Recall
	
	//Make selection for List1 (Dataset list)
	ListBox list1,selRow=DataSet_Row
	CurrentDataset=SLP_ImgSetListW[DataSet_Row][1]
	Dataset_Sel=DataSet_Row
	
	//Plot the image (the first one in the new dataset)
	SLP_LL_PlotImage(SLP_ImgListW[LoadLEEM_Sel_Recall][3],SLP_ImgListW[LoadLEEM_Sel_Recall][2])
	
End

Function ButtonProc_LL_DelDataSet(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			DoAlert 1,"Delete selected dataset(s)?"
			if (V_flag==1)
				NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel
				wave SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
				
				//Change dataset selection if the current one is going to be delected
				if (SLP_ImgSetListSelW[Dataset_Sel][0]==48)
					//Find the first non-selected DataSet from the top	
					variable i=0
					For (i=0;i<dimsize(SLP_ImgSetListSelW,0)&&SLP_ImgSetListSelW[i][0]==48;i+=1)
						DoUpdate
					Endfor
					//i is now the index of the first non-selected DataSet
					
					If (i<dimsize(SLP_ImgSetListSelW,0))
						SLP_LL_DataSetSelect(i)
					Else //All datasets have been selected
						SLP_LoadLEEM_Init()
					Endif
					
				Endif
				SLP_LL_DelDataSetBatch()
			endif
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_LL_DelDataSetBatch()
	//Modified 20170226 by CE
	WAVE /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	WAVE SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
	
	variable i=0
	string DataSetName=""
	string DeleteList=""
	variable Del_error=0
	string Error_txt=""
	
	For (i=0;i<dimsize(SLP_ImgSetListW,0)&&Del_error==0;i+=1)
		if (SLP_ImgSetListSelW[i][0]==48) //If the check box is checked
			
			//Deleting the dataset [CODE:SLP_LL_DelDataSet]
			DataSetName=SLP_ImgSetListW[i][1]
			Del_error=SLP_LL_DelDataSet(DataSetName)
			i-=1 //Go back one row
			
			//Add the index of the dataset to be deleted in the DataSet list
			If (Del_error!=0) //If imageset folder cannot be deleted, generate an error message
				Error_txt="Error deleting dataset: "+DataSetName+"\r Images in the dataset are being used somewhere in the current project"
				DoAlert 0,Error_txt
			EndIf
		Endif
	Endfor
	
End

Function SLP_LL_DelDataSet(DataSetName)
	string DataSetName 
	// - DataSet name as the input parameter and not the row position
	// - Delete data folder, and modify the ListW in Pkg folder
	// - The function returen Error_Flg
	//Modified 20170226 by CE
	
	WAVE /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	WAVE SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
	NVAR N_datasets=root:Package_SLP:LoadLEEM:N_datasets
	
	FindValue /TEXT=DataSetName /TXOP=6 SLP_ImgSetListW
	variable col=floor(V_value/dimsize(SLP_ImgSetListW,0))
	variable row=V_value-col*dimsize(SLP_ImgSetListW,0)
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+DataSetName
	
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	wave /T ImgListW=$ImgList_Fname
	string Img_Location=ImgListW[0][2]
	
	killDataFolder /Z $Img_Location
	variable DeleteImgError_Flg=V_Flag
	if (DeleteImgError_Flg==0) 
		//Only delete package folder if Image folder can be deleted
		killDataFolder /Z $Pkg_Location
		//Remove the row from SLP_ImgSetListW
		DeletePoints row,1, SLP_ImgSetListW
		DeletePoints row,1, SLP_ImgSetListSelW
		//Update the number of DataSets
		N_datasets-=1
	Endif
	Return DeleteImgError_Flg
End

Function ButtonProc_LL_SetScale(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			 Create_SetScale_Panel()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_LoadFullSize(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			 SLP_LoadFullSize()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function ListBoxProc_LL_ImgList(lba) : ListBoxControl
	STRUCT WMListboxAction &lba
	
	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	string LoadLEEM_Sel_Recall_FName="root:Package_SLP:LoadLEEM:"+CurrentDataSet+":LoadLEEM_Sel_Recall"
	NVAR LoadLEEM_Sel_Recall=$LoadLEEM_Sel_Recall_FName
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	
	if (row>=0&&row<dimsize(SLP_ImgParamListW,0))
		String ImageName=SLP_ImgListW[row][3]
		String ImageLocation=SLP_ImgListW[row][2]
		//string Full_ImageName=ImageLocation+":"+ImageName
	
		switch( lba.eventCode )
			case -1: // control being killed
				break
			case 4: // mouse down
				
				LoadLEEM_Sel=row
				LoadLEEM_Sel_Recall=row
				
				SLP_LL_PlotImage(ImageName,ImageLocation)
				
			
				break
				
			case 3: // double click
				LoadLEEM_Sel=row
				LoadLEEM_Sel_Recall=row
				
				SLP_LL_PlotImage(ImageName,ImageLocation)
				SLP_LL_PlotSingleImg()
			
				break
			//case 4: // cell selection
			case 5: // cell selection plus shift key
				break
			case 6: // begin edit
				break
			case 7: // finish edit
				break
			case 13: // checkbox clicked (Igor 6.2 or later)
				break
		endswitch
	
	Else
		ListBox List0, SelRow=LoadLEEM_Sel
	
	endif
	
	return 0
End

Function ButtonProc_LL_ExportSelImg(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			 SLP_LL_ExportSelImg()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_LL_ExportSelImg()
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	wave SLP_ImgParamListSelW=$ImgParamSel_Fname
	wave SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
	
	//Choose folder to save image files
	GetFileFolderInfo /D/Q 
	NewPath /O/Q PathName, S_Path //Create SYMBOLIC path (cannot use normal text for path!)

	//Prepare textwave to convert to .csv file
	make /T/O /N=(1,dimsize(SLP_ImgParamListW,1)) SLP_ImgParamExpW
	wave SLP_ImgParamColDescrptn=root:Package_SLP:LoadLEEM:SLP_ImgParamColDescrptn
	duplicate /T/O SLP_ImgParamColDescrptn, SLP_ImgParamColDescrptn_tmp
	redimension /N=(1,dimsize(SLP_ImgParamColDescrptn,0)) SLP_ImgParamColDescrptn_tmp
	SLP_ImgParamExpW[0][]=SLP_ImgParamColDescrptn_tmp[0][q]
	killwaves SLP_ImgParamColDescrptn_tmp

	//Load selected images
	variable i=0
	variable j=1
	string FileName=""
	string ImgFName=""
	
	For (i=0;i<dimsize(SLP_ImgListW,0);i+=1)
		if (SLP_ImgParamListSelW[i][0]==48)
			ImgFName=SLP_ImgListW[i][2]+SLP_ImgListW[i][3]
			wave ImgW=$ImgFName
			FileName=SLP_ImgListW[i][3]+".TIFF"
			//Filename="test"+num2str(i)
			
			ImageSave /IGOR /T="tiff" /P=PathName ImgW as FileName //(cannot use normal text for path!)
			
			redimension /N=(dimsize(SLP_ImgParamExpW,0)+1,dimsize(SLP_ImgParamExpW,1)) SLP_ImgParamExpW
			SLP_ImgParamExpW[j][]=SLP_ImgParamListW[i][q]
			j+=1
		Endif
	Endfor
	
	//Create .csv file w/ image details
	//edit SLP_ImgParamExpW
	string out_name="Parameter_List_"+CurrentDataSet+".csv"
	Save/G /O /M="\n" /P=PathName SLP_ImgParamExpW as out_name
	killwaves SLP_ImgParamExpW
	
End



Function SLP_LL_PlotSingleImg()
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	wave SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
	
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel
	
	String ImgW_FName=SLP_ImgListW[LoadLEEM_Sel][2]+SLP_ImgListW[LoadLEEM_Sel][3]
	
	wave ImgW=$ImgW_FName
	
	String ImgLabel_L1="Image wave name: "+SLP_ImgListW[LoadLEEM_Sel][3]
	String ImgLabel_L2="(x,y): ("+SLP_ImgParamListW[LoadLEEM_Sel][2]+"mm ,"+SLP_ImgParamListW[LoadLEEM_Sel][3]+"mm), FOV: "+SLP_ImgParamListW[LoadLEEM_Sel][5]
	String ImgLabel_L3="Temperature: "+SLP_ImgParamListW[LoadLEEM_Sel][4]+ "¡C"
	
	NewImage ImgW
	//ModifyGraph margin(bottom)=60
	Legend /A=RB "\Z08"+ImgLabel_L1+"\r"+ImgLabel_L2+"\r"+ImgLabel_L3
End

Function ListBoxProc_LL_DatasetList(lba) : ListBoxControl
	STRUCT WMListboxAction &lba
	
	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	NVAR Dataset_sel=root:Package_SLP:LoadLEEM:Dataset_sel
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	string Sel_Recall_Name="root:Package_SLP:LoadLEEM:"+CurrentDataSet+":LoadLEEM_Sel_Recall"
	NVAR LoadLEEM_Sel_Recall=$Sel_Recall_Name
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	LoadLEEM_Sel_Recall=LoadLEEM_Sel
	
	if (row!=-1&&row<dimsize(SLP_ImgSetListW,0)) //Prevent users from clicking outside the SLP_ImgSetListW's range
	
		switch( lba.eventCode )
			case -1: // control being killed
				break
			case 4: // mouse down
				
				CurrentDataSet=SLP_ImgSetListW[row][1]
				Dataset_Sel=row
	
				string ImageParamListW_FName="root:Package_SLP:LoadLEEM:"+CurrentDataSet+":SLP_ImgParamListW"
				string ImageListW_FName="root:Package_SLP:LoadLEEM:"+CurrentDataSet+":SLP_ImgListW"
				
				Sel_Recall_Name="root:Package_SLP:LoadLEEM:"+CurrentDataSet+":LoadLEEM_Sel_Recall"
				NVAR LoadLEEM_Sel_Recall=$Sel_Recall_Name
				LoadLEEM_Sel=LoadLEEM_Sel_Recall
				
				wave /T SLP_ImgParamListW=$ImageParamListW_FName
				wave /T SLP_ImgListW=$ImageListW_FName
				
				ListBox list0,listWave=SLP_ImgParamListW,selRow=LoadLEEM_Sel,Row=LoadLEEM_Sel
				
				string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
				string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"
				wave SLP_ImgParamListSelW=$ImgParamSel_Fname
				ListBox list0, selWave=SLP_ImgParamListSelW
				
				SLP_LL_PlotImage(SLP_ImgListW[LoadLEEM_Sel][3],SLP_ImgListW[LoadLEEM_Sel][2])
				
				
				break
				
			case 3: // double click
				break
			//case 4: // cell selection
			case 5: // cell selection plus shift key
				break
			case 6: // begin edit
				break
			case 7: // finish edit
				break
			case 13: // checkbox clicked (Igor 6.2 or later)
				break
		endswitch
	else
		Listbox List1, SelRow=Dataset_Sel
	endif
	
	return 0
End

Function SLP_LL_PlotImage(ImageName,ImageLocation)
	string ImageName
	string ImageLocation
	
	SVAR CurrentImageName=root:Package_SLP:LoadLEEM:CurrentImageName
	SVAR LL_ImgColour=root:Package_SLP:LoadLEEM:LL_ImgColour
	//SVAR Image_Location=root:Package_SLP:LoadLEEM:LoadLEEM_ImgLoc
	//Check whether the plot is blank
	variable N_images=itemsinlist(ImageNameList("SLP_LL_01#SLP_LL_01_ImPlot",";"))
	
	string FullImageName=ImageLocation+ImageName
	
	string PlotName="SLP_LL_01#SLP_LL_01_ImPlot"
	
	If (N_images!=0) //If the image plot is not empty
		if (!stringmatch(ImageName,CurrentImageName)) //If the same image is already there - don't do anything
			
			//Accquire the colour setting of the previous image
			string prev_ImgInfo=imageinfo(PlotName,CurrentImageName,0)
			string prev_ImgColour=stringfromlist(1,greplist(prev_ImgInfo,"RECREATION",0,";"),":")
			prev_ImgColour=RemoveEnding(prev_ImgColour) //Remove ';' at the end
			LL_ImgColour=prev_ImgColour //Save the image colour settings
			
			Appendimage /W=$PlotName $FullImageName;delayupdate
			Execute "ModifyImage /W="+PlotName+" "+ImageName +" "+ prev_ImgColour + ";Delayupdate"//Need to use Execute command
			//ModifyImage /W=$PlotName $ImageName ctab= {45,90,Terrain,0};delayupdate
			
			removeimage /W=$PlotName $CurrentImageName //Remove previous image
			
		Endif
	Else
		Appendimage /W=$PlotName $FullImageName;delayupdate
		Execute "ModifyImage /W="+PlotName+" "+ImageName +" "+ LL_ImgColour + ";Delayupdate"//Need to use Execute command
		//ModifyImage /W=$PlotName $ImageName ctab= {45,90,Terrain,0};delayupdate
	Endif
	
	ModifyGraph /W=$PlotName standoff=0
	ModifyGraph /W=$PlotName fSize=7
	SetAxis /W=$PlotName/A/R left
	ModifyGraph /W=$PlotName minor=1
	
	CurrentImageName=ImageName
	
	
	//Display the important parameters
	NVAR  LoadLEEM_sel=root:Package_SLP:LoadLEEM:LoadLEEM_sel
	SVAR  CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	string SLP_ImgParamListW_FName="root:Package_SLP:LoadLEEM:"+CurrentDataSet+":SLP_ImgParamListW"
	Wave /T SLP_ImgParamListW=$SLP_ImgParamListW_FName
	NVAR ce_X=root:Package_SLP:LoadLEEM:ce_X
	NVAR ce_Y=root:Package_SLP:LoadLEEM:ce_Y
	NVAR ce_SampleTemp=root:Package_SLP:LoadLEEM:ce_SampleTemp
	SVAR ce_FOV1=root:Package_SLP:LoadLEEM:ce_FOV1
	SVAR ce_notes=root:Package_SLP:LoadLEEM:ce_notes
	SVAR ce_Date=root:Package_SLP:LoadLEEM:ce_Date

	
	ce_X=str2num(SLP_ImgParamListW[LoadLEEM_sel][2])
	ce_Y=str2num(SLP_ImgParamListW[LoadLEEM_sel][3])
	ce_SampleTemp=str2num(SLP_ImgParamListW[LoadLEEM_sel][4])
	ce_FOV1=SLP_ImgParamListW[LoadLEEM_sel][5]
	ce_Notes=SLP_ImgParamListW[LoadLEEM_sel][13]
	ce_Date=SLP_ImgParamListW[LoadLEEM_sel][14]
End

Function SLP_LL_LoadImg_V2()
	
	NVAR LL_InitFlg=root:Package_SLP:LoadLEEM:LL_InitFlg
	NVAR LL_Resize=root:Package_SLP:LoadLEEM:LL_Resize
	NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel


	SVAR ImgLocation=root:Package_SLP:Util:AutoUpdateFileList:imgLocation
	wave/T W_FileList=root:Package_SLP:Util:AutoUpdateFileList:W_FileList
	wave W_FileList_Sel=root:Package_SLP:Util:AutoUpdateFileList:W_FileList_Sel
	wave M_PreviewedImg=root:Package_SLP:Util:AutoUpdateFileList:M_PreviewedImg
	NVAR ImgSel=root:Package_SLP:Util:AutoUpdateFileList:ImgSel
	
	Wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW

	//Use folder name for the IMAGESET name
	string FolderName=stringfromlist(itemsinlist(ImgLocation,":")-1,ImgLocation,":") 	
	
	variable Resize=LL_Resize
	variable exit_flg=0
	string DataSetName=""
	
	Do //Loop until user put non-duplicated datasetname
		
		//Suggest a dataset name that doesn't match with the existing ones
		DataSetName=FolderName
		DataSetName=SLP_Util_AddNumToDataSet(DataSetName,SLP_ImgSetListW)
		
		//Ask user's inputs for DataSetName
		prompt DataSetName,"Dataset name"
		prompt Resize,"Resizing factor"
		doprompt "Enter parameters", DataSetName,Resize
		
		//Check whether the new dataset name already exists
		wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
		findvalue /TEXT=DataSetName /TXOP=6 SLP_ImgSetListW
		if (V_value==-1)
		
			//START LOADING//
			SLP_LoadLEEM_setup_V3(DataSetName)
			SLP_LoadLEEM_batch_V2(DataSetName,resize)
			
			LL_InitFlg=0 //Init. flag = 0 once the first dataset is loaded
			LL_Resize=Resize //Keep the resize value for next times
			//DoUpdate
			
			//Plot the new image and select the new dataset
			NVAR N_Datasets=root:Package_SLP:LoadLEEM:N_Datasets
			SVAR CurrentDataset=root:Package_SLP:LoadLEEM:CurrentDataset
			NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
			
			string Pkg_Location="root:Package_SLP:LoadLEEM:"+DataSetName
			string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
			string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
			
			wave /T SLP_ImgListW=$ImgList_Fname
			wave /T SLP_ImgParamListW=$ImgParam_Fname
			
			//DoUpdate
			//Make selection for List0 (Image list)
			ListBox list0,win=SLP_LL_01,listwave= SLP_ImgParamListW,selRow=0
			LoadLEEM_Sel=0
			
			//string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
			string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"
			wave SLP_ImgParamListSelW=$ImgParamSel_Fname
			ListBox list0,win=SLP_LL_01, selWave=SLP_ImgParamListSelW
			
			//Make selection for List1 (Dataset list)
			ListBox list1,win=SLP_LL_01,selRow=N_Datasets-1
			CurrentDataset=SLP_ImgSetListW[N_Datasets-1][1]
			Dataset_Sel=N_Datasets-1
			//Plot the image (the first one in the new dataset)
			SLP_LL_PlotImage(SLP_ImgListW[0][3],SLP_ImgListW[0][2])
			
			exit_flg=1
		Else
			doalert 1,"Duplicated dataset name. Do you want to choose new dataset name?"
			if (V_flag==2)
				exit_flg=1
			endif
		Endif
	
	while (exit_flg==0) //Go back to prompt if the user want to use a new name
	
End

Function SLP_LoadLEEM_setup_V3(DataSetName)
	//Create list of images and save the list in the LoadLEEM package folder. Have to do this before SLP_LoadLEEM_batch()
	String DatasetName //Use DataSetName as folder name (2 folders - data and pacakage)
	
	SVAR ImgLocation=root:Package_SLP:Util:AutoUpdateFileList:imgLocation
	//Use Image File Location from SLP_LoadImg_Panel
	NewPath/O SymbImgPath ImgLocation
	
	//Create 2 folders to store data, param
	string CurrentFolder=getdatafolder(1)
	string Data_folder_name=CurrentFolder+DatasetName
	string Pkg_folder_name="root:Package_SLP:LoadLEEM:"+DataSetName
	newdatafolder /O $Data_folder_name
	newdatafolder /O $Pkg_folder_name
	
	//Move to PACKAGE folder
	setdatafolder $Pkg_folder_name
	
	//Create a wave that store raw file locations in the computer (and later to store image wave location in Igor project and the byte locations to load Img param and Img.)
	make /T /O /N=(0,6) SLP_ImgListW=""
	
	NVAR N_images=root:Package_SLP:LoadLEEM:N_images
	wave/T W_FileList=root:Package_SLP:Util:AutoUpdateFileList:W_FileList
	wave W_FileList_Sel=root:Package_SLP:Util:AutoUpdateFileList:W_FileList_Sel
	
	//Check which files to load. Stored them in the SLP_ImgListW (first 2 columns)
	variable i=0
	N_Images=0
	For (i=0;i<dimsize(W_FileList,0);i+=1)
		If (W_FileList_Sel[i][0]) //If the image is selected
			redimension /N=(dimsize(SLP_ImgListW,0)+1,dimsize(SLP_ImgListW,1)) SLP_ImgListW
			SLP_ImgListW[dimsize(SLP_ImgListW,0)-1][0]=ImgLocation
			SLP_ImgListW[dimsize(SLP_ImgListW,0)-1][1]=W_FileList[i][0]
			N_Images+=1
		EndIf
	EndFor
	
	//Create a wave to store image parameters + SelWave (for listbox)
	make /T /O /N=(N_Images,16) SLP_ImgParamListW=""
	make /O /N=(N_Images,16) SLP_ImgParamListSelW=0
	SLP_ImgParamListSelW[][0]=32 //Make first column = check boxes
	SLP_ImgParamListSelW[][13]=2
	
	//Create global variables that are stored in the image set folder
	variable /G LoadLEEM_Sel_Recall
	variable /G SetScale_Flg=0
	
	//Go back to the same place
	setdatafolder $CurrentFolder
	
End

Function SLP_LoadLEEM_batch_V2(DataSetName,resize) //If resize =0 -> no resize
	string DataSetName
	variable resize
	
	NVAR LEEMdata_pointer=root:Package_SLP:LoadLEEM:LEEMdata_pointer
	NVAR LEEMimage_pointer=root:Package_SLP:LoadLEEM:LEEMimage_pointer 
	
	NVAR N_datasets=root:Package_SLP:LoadLEEM:N_datasets
	
	NVAR ce_OBJ=root:Package_SLP:LoadLEEM:ce_OBJ
	NVAR ce_STV=root:Package_SLP:LoadLEEM:ce_STV
	NVAR ce_SampleTemp=root:Package_SLP:LoadLEEM:ce_SampleTemp
	NVAR ce_X=root:Package_SLP:LoadLEEM:ce_X
	NVAR ce_Y=root:Package_SLP:LoadLEEM:ce_Y
	NVAR ce_Exposure=root:Package_SLP:LoadLEEM:ce_Exposure
	SVAR ce_PressureTag1=root:Package_SLP:LoadLEEM:ce_PressureTag1
	NVAR ce_Pressure1=root:Package_SLP:LoadLEEM:ce_Pressure1
	SVAR ce_PressureTag2=root:Package_SLP:LoadLEEM:ce_PressureTag2
	NVAR ce_Pressure2=root:Package_SLP:LoadLEEM:ce_Pressure2
	SVAR ce_FOV1=root:Package_SLP:LoadLEEM:ce_FOV1
	SVAR ce_FOV2=root:Package_SLP:LoadLEEM:ce_FOV2
	
	NVAR N_Images=root:Package_SLP:LoadLEEM:N_Images
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+DataSetName
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	wave SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
	
	//Increase the number of row by 1 and add new image set information
	redimension /N=(dimsize(SLP_ImgSetListW,0)+1,4) SLP_ImgSetListW
	redimension /N=(dimsize(SLP_ImgSetListSelW,0)+1,4) SLP_ImgSetListSelW
	SLP_ImgSetListSelW[dimsize(SLP_ImgSetListSelW,0)-1][0]=32
	
	variable i=0
	string Filename=""
	string ImgName=""
	
	string Current_folder=getdatafolder(1)
	newdatafolder /O $DataSetName
	setdatafolder $DataSetName
	string creation_Date
	string creation_Time
	string creation_Text
	
	//SVAR WNameSuggestion=root:Package_SLP:Util:WNameSuggest:WNameSuggestion
	
	For (i=0;i<dimsize(SLP_ImgListW,0);i+=1)
		FileName=SLP_ImgListW[i][0]+SLP_ImgListW[i][1]
		ImgName=stringfromlist(0,SLP_ImgListW[i][1],".") //Remove the file extension
		//SLP_Util_WNameSuggest(ImgName,0)
		ImgName=SLP_Util_WNameSuggest(ImgName,0,31)
		
		SLP_Load_LEEM_Img(Filename,ImgName)
		
		wave ImageW=$ImgName
		
		//Resize the image wave to save the RAM
		if (resize!=0)
			SLP_Resize_Img_Overwrite(ImgName,resize)
		endif
		
		//Record image wave's name and location
		SLP_ImgListW[i][2]=Current_folder+DataSetName+":"
		SLP_ImgListW[i][3]=ImgName
		SLP_ImgListW[i][4]=num2str(LEEMdata_pointer)
		SLP_ImgListW[i][5]=num2str(LEEMimage_pointer)
		
		//Read from LEEM Data block and write down image parameters
		SLP_get_LEEM_Param(LEEMdata_pointer,LEEMimage_pointer,Filename)
		SLP_ImgParamListW[i][1]=ImgName
		SLP_ImgParamListW[i][2]=num2str(ce_X)
		SLP_ImgParamListW[i][3]=num2str(ce_Y)
		SLP_ImgParamListW[i][4]=num2str(ce_SampleTemp)
		SLP_ImgParamListW[i][5]=ce_FOV1
		SLP_ImgParamListW[i][6]=ce_FOV2
		SLP_ImgParamListW[i][7]=num2str(ce_STV)
		SLP_ImgParamListW[i][8]=num2str(ce_OBJ)
		SLP_ImgParamListW[i][9]=ce_PressureTag1
		SLP_ImgParamListW[i][10]=num2str(ce_Pressure1)
		SLP_ImgParamListW[i][11]=ce_PressureTag2
		SLP_ImgParamListW[i][12]=num2str(ce_Pressure2)
		//Unused slots for extra parameters
		//SLP_ImgParamListW[i][13]=
		GetFileFolderInfo /Q FileName
		creation_Date=secs2date(V_modificationDate,1)
		creation_Time=secs2Time(V_modificationDate,1)
		SLP_ImgParamListW[i][14]=creation_Date+" "+creation_Time
		//SLP_ImgParamListW[i][15]=
				
	Endfor
	
	//Record new list name in the Image Set List wave
	SLP_ImgSetListW[N_DataSets][1]=DataSetName
	SLP_ImgSetListW[N_DataSets][2]=num2str(resize)
	SLP_ImgSetListW[N_DataSets][3]=num2str(N_images)
	N_DataSets+=1
	
	setdatafolder $Current_folder
	//DoUpdate
End

Function ButtonProc_LL_LoadImg(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			//Ask the user to identify a folder on the computer
			SLP_CreateLoadImg()
			
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_FindScreen(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			SLP_Create_FindScreenPanel()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End



Function ButtonProc_LL_done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K SLP_LL_01
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function ButtonProc_LL_Stitch(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
			
			string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
			
			string ScreenMaskW_FName=Pkg_Location+":SLP_ScreenMask"
			
			If (!WaveExists($ScreenMaskW_FName))
				DoAlert 0,"Create screen mask first.."
				SLP_Create_FindScreenPanel()
			Else
				SLP_Create_Stitch_Panel1()
			Endif
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_SelNone(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
			string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
			string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"
			wave SLP_ImgParamListSelW=$ImgParamSel_Fname
			
			SLP_ImgParamListSelW[][0]=32
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_SelAll(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
			string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
			string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"
			wave SLP_ImgParamListSelW=$ImgParamSel_Fname
			
			SLP_ImgParamListSelW[][0]=48
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_LoadLEEM_init()
	string Current_folder=getdatafolder(1)
	newdatafolder /O root:Package_SLP
	newdatafolder /O root:Package_SLP:LoadLEEM
	
	setdatafolder root:Package_SLP:LoadLEEM
	
	variable /G LoadLEEM_Sel=0
	string /G CurrentImageName=""
	string /G LoadLEEM_ImgLoc=""
	variable /G N_Datasets=0
	variable /G N_Images=0
	variable /G Dataset_Sel=0
	variable /G LEEMdata_pointer=0
	variable /G LEEMimage_pointer=0
	string /G CurrentDataSet=""
	variable /G LL_InitFlg=1
	variable /G LL_resize=0.25
	string /G LL_ImgColour="ctab= {*,*,Grays,0}"
	
	
	variable /G ce_OBJ
	variable /G ce_STV
	variable /G ce_SampleTemp
	variable /G ce_X
	variable /G ce_Y
	variable /G ce_Exposure
	string /G ce_PressureTag1
	variable /G ce_Pressure1
	string /G ce_PressureTag2
	variable /G ce_Pressure2
	string /G ce_FOV1
	string /G ce_FOV2
	string /G ce_notes
	string /G ce_Date
	
	//make /T /O /N=(2048,4) SLP_ImgListW_all //Maximum 2048 images in a project <- not used 
	make /T /O /N=(0,4) SLP_ImgSetListW //To store DataSet
	make /O /N=(0,4) SLP_ImgSetListSelW //SelWave for DataSet (for ListBox)
	make /T /O /N=16 SLP_ImgParamColDescrptn
	SLP_ImgParamColDescrptn={"Select","Wave name", "X(mm)", "Y(mm)", "Temp(C)", "FOV1", "FOV2", "STV(eV)", "OBJ(mA)","Pressure1", "(mB)","Pressure2","(mB)","Notes","Date created",""}
	
	make /T /O /N=4 SLP_DatasetColDescrptn
	SLP_DatasetColDescrptn={"Select","Dataset name","Scaling","Images"}
	
	
	setdatafolder $Current_folder
End

Function SLP_LoadLEEM_batch(DataSetName,ImageW_BaseName,resize) //If resize =0 -> no resize
	string DataSetName
	string ImageW_BaseName
	variable resize
	
	NVAR LEEMdata_pointer=root:Package_SLP:LoadLEEM:LEEMdata_pointer
	NVAR LEEMimage_pointer=root:Package_SLP:LoadLEEM:LEEMimage_pointer 
	
	NVAR N_datasets=root:Package_SLP:LoadLEEM:N_datasets
	
	NVAR ce_OBJ=root:Package_SLP:LoadLEEM:ce_OBJ
	NVAR ce_STV=root:Package_SLP:LoadLEEM:ce_STV
	NVAR ce_SampleTemp=root:Package_SLP:LoadLEEM:ce_SampleTemp
	NVAR ce_X=root:Package_SLP:LoadLEEM:ce_X
	NVAR ce_Y=root:Package_SLP:LoadLEEM:ce_Y
	NVAR ce_Exposure=root:Package_SLP:LoadLEEM:ce_Exposure
	SVAR ce_PressureTag1=root:Package_SLP:LoadLEEM:ce_PressureTag1
	NVAR ce_Pressure1=root:Package_SLP:LoadLEEM:ce_Pressure1
	SVAR ce_PressureTag2=root:Package_SLP:LoadLEEM:ce_PressureTag2
	NVAR ce_Pressure2=root:Package_SLP:LoadLEEM:ce_Pressure2
	SVAR ce_FOV1=root:Package_SLP:LoadLEEM:ce_FOV1
	SVAR ce_FOV2=root:Package_SLP:LoadLEEM:ce_FOV2
	
	NVAR N_Images=root:Package_SLP:LoadLEEM:N_Images
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+DataSetName
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	wave SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
	
	redimension /N=(dimsize(SLP_ImgSetListW,0)+1,4) SLP_ImgSetListW
	redimension /N=(dimsize(SLP_ImgSetListSelW,0)+1,4) SLP_ImgSetListSelW
	SLP_ImgSetListSelW[dimsize(SLP_ImgSetListSelW,0)-1][0]=32
	
	variable i=0
	string Filename=""
	string ImgName=""
	
	string Current_folder=getdatafolder(1)
	newdatafolder /O $DataSetName
	setdatafolder $DataSetName
	string creation_Date
	string creation_Time
	string creation_Text
	
	For (i=0;i<dimsize(SLP_ImgListW,0);i+=1)
		FileName=SLP_ImgListW[i][0]+SLP_ImgListW[i][1]
		ImgName=stringfromlist(0,SLP_ImgListW[i][1],".") //Remove the file extension
		
		SLP_Load_LEEM_Img(Filename,ImgName)
		
		wave ImageW=$ImgName
		
		//Resize the image wave to save the RAM
		if (resize!=0)
			SLP_Resize_Img_Overwrite(ImgName,resize)
		endif
		
		//Record image wave's name and location
		SLP_ImgListW[i][2]=Current_folder+DataSetName+":"
		SLP_ImgListW[i][3]=ImgName
		SLP_ImgListW[i][4]=num2str(LEEMdata_pointer)
		SLP_ImgListW[i][5]=num2str(LEEMimage_pointer)
		
		//Read from LEEM Data block and write down image parameters
		SLP_get_LEEM_Param(LEEMdata_pointer,LEEMimage_pointer,Filename)
		SLP_ImgParamListW[i][1]=ImgName
		SLP_ImgParamListW[i][2]=num2str(ce_X)
		SLP_ImgParamListW[i][3]=num2str(ce_Y)
		SLP_ImgParamListW[i][4]=num2str(ce_SampleTemp)
		SLP_ImgParamListW[i][5]=ce_FOV1
		SLP_ImgParamListW[i][6]=ce_FOV2
		SLP_ImgParamListW[i][7]=num2str(ce_STV)
		SLP_ImgParamListW[i][8]=num2str(ce_OBJ)
		SLP_ImgParamListW[i][9]=ce_PressureTag1
		SLP_ImgParamListW[i][10]=num2str(ce_Pressure1)
		SLP_ImgParamListW[i][11]=ce_PressureTag2
		SLP_ImgParamListW[i][12]=num2str(ce_Pressure2)
		//Unused slots for extra parameters
		//SLP_ImgParamListW[i][13]=
		GetFileFolderInfo FileName
		creation_Date=secs2date(V_modificationDate,1)
		creation_Time=secs2Time(V_modificationDate,1)
		SLP_ImgParamListW[i][14]=creation_Date+" "+creation_Time
		//SLP_ImgParamListW[i][15]=
		
		
	Endfor
	
	//Record new list name in the Image Set List wave
	SLP_ImgSetListW[N_DataSets][1]=DataSetName
	SLP_ImgSetListW[N_DataSets][2]=num2str(resize)
	SLP_ImgSetListW[N_DataSets][3]=num2str(N_images)
	N_DataSets+=1
	
	setdatafolder $Current_folder

End

Function SLP_LoadFullSize()
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgListW_FName=Pkg_Location+":SLP_ImgListW"
	string ImgParamListW_FName=Pkg_Location+":SLP_ImgParamListW"
	wave /T ImgListW=$ImgListW_FName
	wave /T ImgParamListW=$ImgParamListW_FName
	string CurrentImage_FName=ImgListW[LoadLEEM_Sel][3]
	string CurrentImage_FLocation=ImgListW[LoadLEEM_Sel][0]+ImgListW[LoadLEEM_Sel][1]

	SLP_Load_LEEM_Img(CurrentImage_FLocation,CurrentImage_FName)
	
	wave ImgW=$CurrentImage_FName
		
	String ImgLabel_L1="Image wave name: "+ImgListW[LoadLEEM_Sel][3]
	String ImgLabel_L2="(x,y): ("+ImgParamListW[LoadLEEM_Sel][2]+"mm ,"+ImgParamListW[LoadLEEM_Sel][3]+"mm), FOV: "+ImgParamListW[LoadLEEM_Sel][5]
	String ImgLabel_L3="Temperature: "+ImgParamListW[LoadLEEM_Sel][4]+ "¡C"
	String Note_String=ImgLabel_L1+"\r"+ImgLabel_L2+"\r"+ImgLabel_L3
	Note ImgW,Note_String
	
	NewImage ImgW
	//ModifyGraph margin(bottom)=60
	Legend /A=RB "\Z08"+Note_String
End








Function SLP_LoadLEEM_setup2(DataSetName,ImgPath,BaseName,Num_start,Num_end)
//Create list of images and save the list in the LoadLEEM package folder. Have to do this before SLP_LoadLEEM_batch()
	
	string DatasetName
	string ImgPath
	string BaseName
	string Num_start
	string Num_end
	
	NewPath/O ImgPathP ImgPath
	
	string CurrentFolder=getdatafolder(1)
	
	string Data_folder_name=CurrentFolder+DatasetName
	string Pkg_folder_name="root:Package_SLP:LoadLEEM:"+DataSetName
	
	newdatafolder /O $Data_folder_name
	newdatafolder /O $Pkg_folder_name
	
	string Filelist= indexedfile(ImgPathP,-1,".DAT")
	
	Filelist=sortlist(Filelist)
	NVAR N_images=root:Package_SLP:LoadLEEM:N_images
	variable i=0
	variable j=0
	variable m=str2num(Num_end)
	string FileName=""
	
	string ImageList=""
	string Num=Num_start
	string srcName=BaseName+Num+".dat"
	
	//Reduce the image list to the specified range
	
	For (i=str2num(Num_start);i<=str2num(Num_end);i+=1)
		sprintf Num,"%06.0f",i//[TODO] - 6 total digit is the LEEM default but should be generalised later
		SrcName=BaseName+Num+".dat" //Search name is created
		
		j=WhichListItem(SrcName,Filelist) //Find the file name that match the search name
		if (j!=-1)
			FileName=stringfromlist(j,Filelist) //Name of the image file
			ImageList=Addlistitem(FileName,ImageList,";",ItemsInList(ImageList)) //Append the new file name to the list
		Endif
		
	Endfor
	
	N_images=itemsinlist(ImageList)
	
	setdatafolder $Pkg_folder_name
	make /T /O /N=(N_images,6) SLP_ImgListW=""
	make /T /O /N=(N_images,16) SLP_ImgParamListW=""
	make /O /N=(N_images,16) SLP_ImgParamListSelW=0
	SLP_ImgParamListSelW[][0]=32
	variable /G LoadLEEM_Sel_Recall
	variable /G SetScale_Flg=0
	
	For (i=0;i<N_images;i+=1)
		SLP_ImgListW[i][0]=ImgPath
		SLP_ImgListW[i][1]=stringfromlist(i,ImageList,";")
		
	Endfor
	
	setdatafolder $CurrentFolder
	
End

Function SLP_LoadLEEM_setup(DataSetName,ImgPath,BaseName,Num_start,Num_end)
//Create list of images and save the list in the LoadLEEM package folder. Have to do this before SLP_LoadLEEM_batch()
	
	string DatasetName
	string ImgPath
	string BaseName
	string Num_start
	string Num_end
	
	NewPath/O ImgPathP ImgPath
	
	string CurrentFolder=getdatafolder(1)
	
	string Data_folder_name=CurrentFolder+DatasetName
	string Pkg_folder_name="root:Package_SLP:LoadLEEM:"+DataSetName
	
	newdatafolder /O $Data_folder_name
	newdatafolder /O $Pkg_folder_name
	
	string Filelist= indexedfile(ImgPathP,-1,".DAT")
	
	Filelist=sortlist(Filelist)
	variable N_images=itemsinlist(Filelist)
	variable i=0
	variable j=str2num(Num_start)
	variable m=str2num(Num_end)
	string FileName=""
	
	string ImageList=""
	string Num=Num_start
	string srcName=BaseName+Num+".dat"
	
	//Reduce the image list to the specified range
	For (i=0;i<N_images&&j<=m;i+=1)
		FileName=stringfromlist(i,Filelist)
		if (stringmatch(FileName,srcName))
			//append filename to the end of the list
			ImageList=Addlistitem(FileName,ImageList,";",ItemsInList(ImageList))
			
			j+=1
			sprintf Num,"%06.0f",j//[TODO] - 6 total digit is the LEEM default but should be generalised later
			SrcName=BaseName+Num+".dat"
		Endif
	Endfor
	
	N_images=itemsinlist(ImageList)
	
	setdatafolder $Pkg_folder_name
	make /T /O /N=(N_images,6) SLP_ImgListW=""
	make /T /O /N=(N_images,16) SLP_ImgParamListW=""
	variable /G LoadLEEM_Sel_Recall
	
	For (i=0;i<N_images;i+=1)
		SLP_ImgListW[i][0]=ImgPath
		SLP_ImgListW[i][1]=stringfromlist(i,ImageList,";")
		
	Endfor
	
	setdatafolder $CurrentFolder

End

Function SLP_Load_LEEM_Img(ce_Filename,ce_ImgName)
	string ce_FileName
	string ce_ImgName
	
	NVAR LEEMdata_pointer=root:Package_SLP:LoadLEEM:LEEMdata_pointer
	NVAR LEEMimage_pointer=root:Package_SLP:LoadLEEM:LEEMimage_pointer
	
	variable ce_RefNum
	open /R ce_RefNum as ce_Filename
	//DoUpdate
	
	variable ce_F_Addr
	variable ce_F_value
	
	variable ce_AttachedRecipeSize=0
	variable ce_AttachedMarkupSize=0
	variable ce_LEEMDataSize=0
	
	variable ce_ImWidth=0
	variable ce_ImHeight=0
	variable ce_ImStLocation=0
	
	//Read AttachedRecipeSize
	ce_F_Addr=46
	fsetpos ce_RefNum,ce_F_Addr
	fbinread /F=2 ce_RefNum, ce_F_value
	
	ce_AttachedRecipeSize=ce_F_value
	
	If (ce_AttachedRecipeSize!=0)
		ce_AttachedRecipeSize=128
	Endif
	
	//print "Attached Recipe Size = "+num2str(ce_F_value)
	
	//Read AttachedMarkupSize
	ce_F_Addr=126+ce_AttachedRecipeSize
	fsetpos ce_RefNum,ce_F_Addr
	fbinread /F=2 ce_RefNum, ce_F_value
	
	ce_AttachedMarkupSize=(floor(ce_F_value/128)+1)*128
	//Print "Attached Markup Size = "+num2str(ce_AttachedMarkupSize)
	
	//Read LEEMDataSize
	ce_F_Addr=126+ce_AttachedRecipeSize+4
	fsetpos ce_RefNum,ce_F_Addr
	fbinread /F=2 ce_RefNum, ce_F_value
	
	ce_LEEMDataSize=ce_F_value
	//Print "LEEM Data Size = "+num2str(ce_LEEMDataSize)
	
	//Read Image Width&Height
	ce_F_Addr=40
	fsetpos ce_RefNum,ce_F_Addr
	fbinread /F=2 ce_RefNum, ce_F_value
	
	ce_ImWidth=ce_F_value
	//Print "Image Width = "+num2str(ce_ImWidth)
	fbinread /F=2 ce_RefNum, ce_F_value
	ce_ImHeight=ce_F_value
	//Print "Image Height = "+num2str(ce_ImHeight)
	
	//Load the image
	
	Make /O/R/N=(ce_ImWidth,ce_ImHeight) $ce_ImgName /WAVE=Img_Wave
	
	ce_ImStLocation=104+ce_AttachedRecipeSize+288+ce_AttachedMarkupSize+ce_LEEMDataSize
	//Print "Image starts at byte "+num2str(ce_ImStLocation)
	fsetpos ce_RefNum,ce_ImStLocation
	Fbinread /F=2 ce_RefNum,Img_Wave
	
	LEEMdata_pointer=104+ce_AttachedRecipeSize+288+ce_AttachedMarkupSize
	LEEMimage_pointer=ce_ImStLocation
	
	Close ce_RefNum
	
End

Function ce_Load_LEEM_DAT(ce_StartAddress,ce_EndAddress,ce_Filename)
	variable ce_StartAddress //=520
	variable ce_EndAddress //=1687
	string ce_Filename
	
	variable ce_addr=ce_StartAddress
	variable ce_file
	string ce_Path
	//newpath ce_Path, "Macintosh HD:Users:ChananEuaruksakul:Dropbox:SLRI:20160823b:test_CE_cu110_000006.dat"
	open /R ce_file as ce_Filename
	
	fsetpos ce_file,ce_addr
	
	string ce_loadString
	string ce_unit_code
	string ce_unit
	variable ce_loadChar
	variable ce_loadInt
	variable ce_loadFloat
	string ce_loadFloatStr
	
	string ce_ElementName
	
	variable i=0
	
	Do
		fbinread /F=1 ce_file, ce_loadInt //Load the ID
		If (ce_loadInt<0)
			ce_loadInt+=128 //Change from signed to unsigned Integer
		endif
		
		//print "ID:"+num2str(ce_loadInt)
		
		if ((ce_loadInt>=0)&&(ce_loadInt<=99))
			//||(ce_loadInt>=128)&&(ce_loadInt<=227))
			FReadLine /T=(num2char(0)) ce_file,ce_loadString
			ce_unit_code=ce_loadString[strlen(ce_loadString)-2]
			ce_ElementName=ce_loadString[0,strlen(ce_loadString)-3]
			fbinread /F=4 ce_file,ce_loadFloat
			sprintf ce_loadFloatStr, "%5.2f", ce_loadFloat
			StrSwitch (ce_unit_code)
				case "1":
					ce_unit="V"
					break
				case "2":
					ce_unit="mA"
					break
			Endswitch
			
			//print ce_ElementName+": "+ce_loadFloatStr+" "+ce_unit

		Elseif (ce_loadInt==100)
			//print "Micrometer X,Y"
			fbinread /F=4 ce_file,ce_loadFloat
			//print ce_loadFloat
			fbinread /F=4 ce_file,ce_loadFloat
			//print ce_loadFloat
			
		Elseif (ce_loadInt==104)
			//print "Exposure"
			fbinread /F=4 ce_file,ce_loadFloat
			//print ce_loadFloat
			fbinread /F=1 ce_file,ce_loadChar
			//print ce_loadChar
			fbinread /F=1 ce_file,ce_loadChar
			//print ce_loadChar
			
		Elseif (ce_loadInt==105)
			//print "Title block"
			Fstatus ce_file
			ce_addr=V_filePos+2
			fsetpos ce_file,ce_addr
		
		
		Elseif ((ce_loadInt==106)||(ce_loadInt==107))
			//print "Pressure"
			FReadLine /T=(num2char(0)) ce_file,ce_loadString
			//print ce_loadString
			FReadLine /T=(num2char(0)) ce_file,ce_loadString
			//print ce_loadString
			fbinread /F=4 ce_file,ce_loadFloat
			//print ce_loadFloat
		
		Elseif (ce_loadInt==110)
			//print "FOV"
			FReadLine /T=(num2char(9)) ce_file,ce_loadString //This - not sure why num2char(9)
			//print "Preset A: "+ce_loadString
			FReadLine /T=(num2char(0)) ce_file,ce_loadString
			//print "Preset B: "+ce_loadString
			fbinread /F=4 ce_file,ce_loadFloat
			//print ce_loadFloat
			
		Elseif (ce_loadInt==114)
			//print "Mirror state"
			Fstatus ce_file
			ce_addr=V_filePos+2
			fsetpos ce_file,ce_addr
			
		Elseif (ce_loadInt==115)
			//print "MCPscr"
			fbinread /F=4 ce_file,ce_loadFloat
			//print ce_loadFloat
		
		Elseif (ce_loadInt==116)
			//print "MCPcp"
			fbinread /F=4 ce_file,ce_loadFloat
			//print ce_loadFloat
		
		Endif
	
		Fstatus ce_file
	While (V_filePos<ce_EndAddress)
	
	close ce_file

End

Function SLP_get_LEEM_Param(ce_StartAddress,ce_EndAddress,ce_Filename)
	variable ce_StartAddress //=520
	variable ce_EndAddress //=1687
	string ce_Filename
	
	//Parameters to be read
	NVAR ce_OBJ=root:Package_SLP:LoadLEEM:ce_OBJ
	NVAR ce_STV=root:Package_SLP:LoadLEEM:ce_STV
	NVAR ce_SampleTemp=root:Package_SLP:LoadLEEM:ce_SampleTemp
	NVAR ce_X=root:Package_SLP:LoadLEEM:ce_X
	NVAR ce_Y=root:Package_SLP:LoadLEEM:ce_Y
	NVAR ce_Exposure=root:Package_SLP:LoadLEEM:ce_Exposure
	SVAR ce_PressureTag1=root:Package_SLP:LoadLEEM:ce_PressureTag1
	NVAR ce_Pressure1=root:Package_SLP:LoadLEEM:ce_Pressure1
	SVAR ce_PressureTag2=root:Package_SLP:LoadLEEM:ce_PressureTag2
	NVAR ce_Pressure2=root:Package_SLP:LoadLEEM:ce_Pressure2
	SVAR ce_FOV1=root:Package_SLP:LoadLEEM:ce_FOV1
	SVAR ce_FOV2=root:Package_SLP:LoadLEEM:ce_FOV2
	
	variable ce_addr=ce_StartAddress
	variable ce_file
	string ce_Path
	//newpath ce_Path, "Macintosh HD:Users:ChananEuaruksakul:Dropbox:SLRI:20160823b:test_CE_cu110_000006.dat"
	open /R ce_file as ce_filename
	
	fsetpos ce_file,ce_addr
	
	string ce_loadString
	string ce_unit_code
	string ce_unit
	variable ce_loadChar
	variable ce_loadInt
	variable ce_loadFloat
	string ce_loadFloatStr
	
	string ce_ElementName
	
	
	variable i=0
	
	Do
		fbinread /F=1 ce_file, ce_loadInt //Read the ID (1 byte)
		
		//Change from signed to unsigned Integer
		//(UView use this to separated 'displayed' and 'no displayed' parameters on screen
		If (ce_loadInt<0)
			ce_loadInt+=128 
		endif
		
		//print "ID:"+num2str(ce_loadInt)
		
		if ((ce_loadInt>=0)&&(ce_loadInt<=99)) //The first 100 ID's are for parameters in LEEM2000
			
			FReadLine /T=(num2char(0)) ce_file,ce_loadString //move the pointer over the Parameter Name string and unit string
			Fstatus ce_file
			
			If (ce_LoadInt==11)
				//Read OBJ
				fbinread /F=4 ce_file,ce_loadFloat
				ce_OBJ=ce_loadFloat
			
			elseif (ce_LoadInt==38)
				//Read STV
				//fbinread /F=2 ce_file,ce_loadChar
				fbinread /F=4 ce_file,ce_loadFloat
				ce_STV=ce_loadFloat
			
			elseif (ce_LoadInt==39)
				//Read Sample Temp.
				//fbinread /F=2 ce_file,ce_loadChar
				fbinread /F=4 ce_file,ce_loadFloat
				ce_SampleTemp=ce_loadFloat
			
			Else //Ignor other 0-99 parameters
				ce_addr=V_filePos+4
				fsetpos ce_file,ce_addr
			
			Endif
			
		Elseif (ce_loadInt==100)
			//print "Micrometer X,Y"
			fbinread /F=4 ce_file,ce_loadFloat
			ce_X=ce_loadFloat
			//print ce_loadFloat
			fbinread /F=4 ce_file,ce_loadFloat
			ce_Y=ce_loadFloat
			//print ce_loadFloat
			
		Elseif (ce_loadInt==104)
			Fstatus ce_file
			ce_addr=V_filePos+6
			fsetpos ce_file,ce_addr
			
		Elseif (ce_loadInt==105)
			Fstatus ce_file
			ce_addr=V_filePos+2
			fsetpos ce_file,ce_addr
		
		Elseif (ce_loadInt==106)
			//READ Pressure1
			FReadLine /T=(num2char(0)) ce_file,ce_loadString //String1
			ce_PressureTag1=ce_loadString
			FReadLine /T=(num2char(0)) ce_file,ce_loadString //String2
			fbinread /F=4 ce_file,ce_loadFloat
			ce_Pressure1=ce_loadFloat
			
		Elseif (ce_loadInt==107)
			//READ Pressure2
			FReadLine /T=(num2char(0)) ce_file,ce_loadString //String1
			ce_PressureTag2=ce_loadString
			FReadLine /T=(num2char(0)) ce_file,ce_loadString //String2
			fbinread /F=4 ce_file,ce_loadFloat
			ce_Pressure2=ce_loadFloat
		
		Elseif (ce_loadInt==110)
			//print "FOV"
			FReadLine /T=(num2char(9)) ce_file,ce_loadString //not sure about num2char(9)
			ce_loadString=RemoveEnding(ce_loadString) //Remove ASCII no. 9 (tab)
			//print "Preset A: "+ce_loadString
			ce_FOV1=ce_loadString
			FReadLine /T=(num2char(0)) ce_file,ce_loadString
			//print "Preset B: "+ce_loadString
			ce_FOV2=ce_loadString
			fbinread /F=4 ce_file,ce_loadFloat
			
			//print ce_loadFloat
			
		Elseif (ce_loadInt==114)
			Fstatus ce_file
			ce_addr=V_filePos+2
			fsetpos ce_file,ce_addr
			
		Elseif (ce_loadInt==115)
			Fstatus ce_file
			ce_addr=V_filePos+4
			fsetpos ce_file,ce_addr
		
		Elseif (ce_loadInt==116)
			Fstatus ce_file
			ce_addr=V_filePos+4
			fsetpos ce_file,ce_addr
			
		Endif
	
		Fstatus ce_file
	While (V_filePos<ce_EndAddress)
	
	variable ce_print_f=0
	if (ce_print_f==1)
		print "OBJ ="+num2str(ce_OBJ)
		print "STV ="+num2str(ce_STV)
		print "Sample temp. ="+num2str(ce_SampleTemp)
		print "X ="+num2str(ce_X)
		print "Y ="+num2str(ce_Y)
		print "FOV1 ="+ce_FOV1
		print "FOV2 ="+ce_FOV2
		print "Pressure tag 1= "+ce_PressureTag1
		print "Pressure1 ="+num2str(ce_Pressure1)
		print "Pressure tag 2= "+ce_PressureTag2
		print "Pressure2 ="+num2str(ce_Pressure2)
		//print "Exposure ="+num2str(ce_OBJ)
	endif
	
	close ce_file

End

Function ce_get_LEEM_Coord(ce_StartAddress,ce_EndAddress,ce_Filename)
	variable ce_StartAddress //=520
	variable ce_EndAddress //=1687
	string ce_Filename
	
	SVAR  ce_X
	SVAR  ce_Y
	SVAR  ce_FOV
	
	variable ce_addr=ce_StartAddress
	variable ce_file
	string ce_Path
	//newpath ce_Path, "Macintosh HD:Users:ChananEuaruksakul:Dropbox:SLRI:20160823b:test_CE_cu110_000006.dat"
	open /R ce_file as ce_filename
	
	fsetpos ce_file,ce_addr
	
	string ce_loadString
	string ce_unit_code
	string ce_unit
	variable ce_loadChar
	variable ce_loadInt
	variable ce_loadFloat
	string ce_loadFloatStr
	
	string ce_ElementName
	
	variable i=0
	
	Do
		fbinread /F=1 ce_file, ce_loadInt //Read the ID (1 byte)
		
		//Change from signed to unsigned Integer
		//(UView use this to separated 'displayed' and 'no displayed' parameters on screen
		If (ce_loadInt<0)
			ce_loadInt+=128 
		endif
		
		//print "ID:"+num2str(ce_loadInt)
		
		
		if ((ce_loadInt>=0)&&(ce_loadInt<=99)) //The first 100 ID's are for lenses
			
			FReadLine /T=(num2char(0)) ce_file,ce_loadString //Skip the Parameter Name string and unit string
			Fstatus ce_file
			ce_addr=V_filePos+4
			fsetpos ce_file,ce_addr
			
		Elseif (ce_loadInt==100)
			//print "Micrometer X,Y"
			fbinread /F=4 ce_file,ce_loadFloat
			ce_X=num2str(ce_loadFloat)
			//print ce_loadFloat
			fbinread /F=4 ce_file,ce_loadFloat
			ce_Y=num2str(ce_loadFloat)
			//print ce_loadFloat
			
		Elseif (ce_loadInt==104)
			Fstatus ce_file
			ce_addr=V_filePos+6
			fsetpos ce_file,ce_addr
			
		Elseif (ce_loadInt==105)
			Fstatus ce_file
			ce_addr=V_filePos+2
			fsetpos ce_file,ce_addr
		
		Elseif ((ce_loadInt==106)||(ce_loadInt==107))
			FReadLine /T=(num2char(0)) ce_file,ce_loadString
			FReadLine /T=(num2char(0)) ce_file,ce_loadString
			fstatus ce_file
			ce_addr=V_filePos+4
			fsetpos ce_file,ce_addr
		
		Elseif (ce_loadInt==110)
			//print "FOV"
			FReadLine /T=(num2char(9)) ce_file,ce_loadString
			//print "Preset A: "+ce_loadString
			ce_FOV=ce_loadString
			FReadLine /T=(num2char(0)) ce_file,ce_loadString
			//print "Preset B: "+ce_loadString
			fbinread /F=4 ce_file,ce_loadFloat
			//print ce_loadFloat
			
		Elseif (ce_loadInt==114)
			Fstatus ce_file
			ce_addr=V_filePos+2
			fsetpos ce_file,ce_addr
			
		Elseif (ce_loadInt==115)
			Fstatus ce_file
			ce_addr=V_filePos+4
			fsetpos ce_file,ce_addr
		
		Elseif (ce_loadInt==116)
			Fstatus ce_file
			ce_addr=V_filePos+4
			fsetpos ce_file,ce_addr
			
		Endif
	
		Fstatus ce_file
	While (V_filePos<ce_EndAddress)
	
	close ce_file

End

Function ce_List_Images2()

	string ce_Filename=""
	getfilefolderinfo/D
	newpath/O ce_Path S_path
	string ce_filelist= indexedfile(ce_Path,-1,".DAT")
	string ce_path_str=S_path
	//print ce_filelist
	
	ce_filelist=sortlist(ce_filelist)
	
	variable i=0
	
	//make /O/T/N=(2048,itemsinlist(ce_filelist)) ce_List_W
	wave /T SLP_LoadLEEM_ImgListW=root:Package_SLP:LoadLEEM:SLP_LoadLEEM_ImgListW
	
	For (i=0;i<itemsinlist(ce_filelist);i+=1)
		SLP_LoadLEEM_ImgListW[i][0]=ce_path_str
		SLP_LoadLEEM_ImgListW[i][1]=stringfromlist(i,ce_filelist)
		SLP_LoadLEEM_ImgListW[i][3]=""
		SLP_LoadLEEM_ImgListW[i][4]=""
	Endfor

End

Function ce_List_Images()

	string /G ce_X=""
	string /G ce_Y=""
	string /G ce_FOV=""
	string ce_Filename=""
	getfilefolderinfo/D
	newpath/O ce_Path S_path
	string ce_filelist= indexedfile(ce_Path,-1,".DAT")
	string ce_path_str=S_path
	//print ce_filelist
	
	ce_filelist=sortlist(ce_filelist)
	
	variable i=0
	
	make /O/T/N=(2048,itemsinlist(ce_filelist)) ce_List_W
	
	For (i=0;i<itemsinlist(ce_filelist);i+=1)
		ce_List_W[i][0]=ce_path_str
		ce_List_W[i][1]=stringfromlist(i,ce_filelist)
		ce_Filename=ce_path_str+stringfromlist(i,ce_filelist)
		ce_get_LEEM_Coord(520,1687,ce_Filename)
		ce_List_W[i][2]=ce_X
		ce_List_W[i][3]=ce_Y
		ce_List_W[i][4]=ce_FOV
	Endfor

End

function SLP_Resize_Img_Overwrite(inputwave,SLP_resizeFactor)
 
	string inputwave						// for input wave
 	variable SLP_resizeFactor
 
	wave input=$inputwave	
	
	string newname=inputwave+"_SZ"	
 
	imageinterpolate/F={SLP_resizeFactor,SLP_resizeFactor}/DEST=$newname bilinear input   // image interpolation
 	
 	wave newImg=$newname
 	
 	duplicate /O newImg, input
 	
 	killwaves $newname
 
end

function SLP_Resize_Img(inputwave,SLP_resizeFactor)
 
	string inputwave						// for input wave
 	variable SLP_resizeFactor
 
	wave input=$inputwave	
	
	string newname=inputwave+"_SZ"	
 
	imageinterpolate/F={SLP_resizeFactor,SLP_resizeFactor}/DEST=$newname bilinear input   // image interpolation
 
end

//From http://www.igorexchange.com/node/2022
function Resize()
 
	string inputwave						// for input wave
 
	string list=wavelist("*",";","DIMS:2")			// only find image stacks
 
	prompt inputwave, "Wave Select", popup list	// prompt for input wave
	doprompt "Resize", inputwave
			if(V_flag==1)
			abort
	endif
 
	wave input=$inputwave	
 
	variable x=dimsize(input,0)				// current size of the x dimension
	variable y=dimsize(input,1)				// current size of the y dimension
 
	variable xnew = x							// variables for the new pixels, set to display the old ones in the prompt
	variable ynew = y
 
	prompt xnew, "new x pixels"			
	prompt ynew, "new y pixels"
	doprompt "new dimensions", xnew, ynew
			if(V_flag==1)
			abort
		endif
 
	string newname=inputwave+"_SZ"			// output wave name
 
	variable nx= (xnew-1)/(x-1)					// calc for rescaling
	variable ny=(ynew-1)/(y-1)
 
 
	imageinterpolate/F={nx,ny}/DEST=$newname bilinear input   // image interpolation
 
 
end

Function ButtonProc_LL_Stitch_Cancel(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K Stitch_Panel_01
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function SLP_Stitch_Init()
	string Current_folder=getdatafolder(1)
	newdatafolder /O root:Package_SLP
	newdatafolder /O root:Package_SLP:Stitch
	newdatafolder /O root:Package_SLP:Stitch:ImgAnalyzeParticles
	
	//Create global variable in Stitch folder
	setdatafolder root:Package_SLP:Stitch
	
	variable /G SLP_LL_SetScale_Sel=0
	
	make /O /T /N=(32,3) SLP_FOV_table //Col. 1= FOV name, Col. 2 = FOV (number in microns), Col. 3 = rotation
	SLP_FOV_table[0][0]= {"100µm","75µm","50µm","25µm","15µm","10µm","7.5µm","5µm","3µm","2µm","LEED/PEAD","disp._pl.","","","","","","","","","","","","","","","","","","","",""}
	SLP_FOV_table[0][1]= {"100","75","50","25","15","10","7.5","5","3","2","XXX","YYY","","","","","","","","","","","","","","","","","","","",""}
	SLP_FOV_table[0][2]={"0","0","x","x","x","x","x","x","x","x","x","x","","","","","","","","","","","","","","","","","","","",""}
	//[TODO] - Check the rotation for each FOV
	
	variable /G SLP_Stitch_XRes=200
	variable /G SLP_Stitch_YRes=200
	variable /G SLP_Stitch_Threshold=50
	variable /G SLP_Stitch_AngleAdj=0 //Adjust the angle between micrometer and image coordinates
	variable /G SLP_Stitch_FOVAdj=1.00 //Adjust the FOV size from the defined value
	string /G SLP_Stitch_ImWName="Stitched_Image"
	//variable /G SLP_St_xmax
	//variable /G SLP_St_ymin
	//variable /G SLP_St_ymax
	
	//Create global variable in ImgAnalyzeParticles folder (For finding screen position)
	setdatafolder root:Package_SLP:Stitch:ImgAnalyzeParticles
	string /G ImgWName
	variable /G min_ScreenSize=1000
	variable /G FindScreenTh=50
	
	variable /G xCenter
	variable /G yCenter
	variable /G xMax
	variable /G xMin
	variable /G yMax
	variable /G yMin
	variable /G pixelSizeX
	variable /G pixelSizeY
	
	variable /G new_xCenter
	variable /G new_yCenter
	variable /G new_xMax
	variable /G new_xMin
	variable /G new_yMax
	variable /G new_yMin
	variable /G new_pixelSizeX
	variable /G new_pixelSizeY
	
	
	setdatafolder $Current_folder

End

Function slp_AddScale_StandAlone(ImageWaveName,FOV,threshold)
	string ImageWaveName
	variable FOV
	variable threshold
	
	wave ImageWave=$ImageWaveName
	
	variable min_ScreenSize=dimsize(ImageWave,0)*dimsize(ImageWave,1)*0.4
	print "Min Screen Size = "+num2str(min_ScreenSize)
	
	ImageThreshold /Q/I/T=(threshold) ImageWave 
	wave slp_ImageThresh=M_ImageThresh
	
	ImageAnalyzeParticles /E/W/Q/M=3 /A=(min_ScreenSize) /F stats, slp_ImageThresh
	
	wave W_xmin
	wave W_xmax
	wave W_ymin
	wave W_ymax
	
	variable xmin=W_xmin[0]//scale
	variable xmax=W_xmax[0]//scale
	variable ymin=W_ymin[0]//scale
	variable ymax=W_ymax[0]//scale
	
	print "xmin = "+num2str(xmin)
	print "xmax = "+num2str(xmax)
	print "ymin = "+num2str(ymin)
	print "ymax = "+num2str(ymax)
	
	//newimage slp_ImageThresh
	
	variable xCenter=(xmin+xmax)/2
	variable yCenter=(ymin+ymax)/2
	
	print "xCenter = "+num2str(xCenter)
	print "yCenter = "+num2str(yCenter)
	
	variable pixelSizeX=FOV/(xmax-xmin)
	variable pixelSizeY=FOV/(ymax-ymin)
	
	setscale /P x,-1*xCenter*pixelSizeX,pixelSizeX,"Micron",ImageWave
	
	setscale /P y,-1*yCenter*pixelSizeY,pixelSizeY,"Micron",ImageWave

End

Function SLP_SetLEEMScale_Pixel(ImageWaveName,Resize)
	string ImageWaveName
	variable Resize
	
	wave ImageWave=$ImageWaveName
	
	setscale /P x,0,1/Resize,"Pixel",ImageWave
	
	setscale /P y,0,1/Resize,"Pixel",ImageWave

End

Function SLP_SetLEEMScale(ImageWaveName,FOV,Resize)
	string ImageWaveName
	variable FOV
	variable Resize
	
	wave ImageWave=$ImageWaveName
	
	NVAR xmin=root:Package_SLP:Stitch:ImgAnalyzeParticles:xmin
	NVAR xmax=root:Package_SLP:Stitch:ImgAnalyzeParticles:xmax
	NVAR ymin=root:Package_SLP:Stitch:ImgAnalyzeParticles:ymin
	NVAR ymax=root:Package_SLP:Stitch:ImgAnalyzeParticles:ymax
	
	//Adjust with the Resize scaling
	variable xmin_s=xmin*Resize
	variable xmax_s=xmax*Resize
	variable ymin_s=ymin*Resize
	variable ymax_s=ymax*Resize
	
	
	variable xCenter_s=(xmin_s+xmax_s)/2
	variable yCenter_s=(ymin_s+ymax_s)/2
	
	variable pixelSizeX=FOV/(xmax_s-xmin_s)
	variable pixelSizeY=FOV/(ymax_s-ymin_s)
	
	setscale /P x,-1*xCenter_s*pixelSizeX,pixelSizeX,"Micron",ImageWave
	
	setscale /P y,-1*yCenter_s*pixelSizeY,pixelSizeY,"Micron",ImageWave

End

Function SLP_SetLEEMScale_absolute(ImageWaveName,FOV,Resize,Micrometer_x,Micrometer_y,Micrometer_angle)
	string ImageWaveName
	variable FOV
	variable Resize
	variable Micrometer_x
	variable Micrometer_y
	variable Micrometer_angle
	
	//[TODO] - check here to see if it match the real movement of the micrometer
	variable Offset_x=(Micrometer_x*cos(Micrometer_angle)-Micrometer_y*sin(Micrometer_angle))*1000*-1
	variable Offset_y=(Micrometer_x*sin(Micrometer_angle)+Micrometer_y*cos(Micrometer_angle))*1000*-1
	//Times 1000 to convert from mm -> um
	
	
	wave ImageWave=$ImageWaveName
	
	NVAR xmin=root:Package_SLP:Stitch:ImgAnalyzeParticles:xmin
	NVAR xmax=root:Package_SLP:Stitch:ImgAnalyzeParticles:xmax
	NVAR ymin=root:Package_SLP:Stitch:ImgAnalyzeParticles:ymin
	NVAR ymax=root:Package_SLP:Stitch:ImgAnalyzeParticles:ymax
	
	//Adjust with the Resize scaling
	variable xmin_s=xmin*Resize
	variable xmax_s=xmax*Resize
	variable ymin_s=ymin*Resize
	variable ymax_s=ymax*Resize
	
	
	variable xCenter_s=(xmin_s+xmax_s)/2
	variable yCenter_s=(ymin_s+ymax_s)/2
	
	variable pixelSizeX=FOV/(xmax_s-xmin_s)
	variable pixelSizeY=FOV/(ymax_s-ymin_s)
	
	setscale /P x,-1*xCenter_s*pixelSizeX+Offset_x,pixelSizeX,"Micron (absolute)",ImageWave
	
	setscale /P y,-1*yCenter_s*pixelSizeY+Offset_y,pixelSizeY,"Micron (absolute)",ImageWave

End

Function SLP_FindScreenPos(ImageWaveFName,FOV,threshold,resize)
	string ImageWaveFName
	variable FOV
	variable threshold
	variable resize
	
	string current_folder=getdatafolder(1)
	setdatafolder root:Package_SLP:Stitch:ImgAnalyzeParticles
	NVAR min_ScreenSize=root:Package_SLP:Stitch:ImgAnalyzeParticles:min_ScreenSize
	NVAR FindScreenTh=root:Package_SLP:Stitch:ImgAnalyzeParticles:FindScreenTh
	NVAR new_xMin=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xMin
	NVAR new_yMin=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_yMin
	NVAR new_xMax=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xMax
	NVAR new_yMax=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_yMax
	NVAR new_xCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xCenter
	NVAR new_yCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_yCenter
	NVAR new_PixelSizeX=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_PixelSizeX
	NVAR new_PixelSizeY=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_PixelSizeY
	
	wave ImageWave=$ImageWaveFName
	min_ScreenSize=dimsize(ImageWave,0)*dimsize(ImageWave,1)*0.4 
	//[NOTE] Minimum screen size should be about 40% of the total no. of pixels (depending on the camera position and recorded pixels). 
	//From current setting (2016.12.09), screen is 55% of the total area
	
	//print "Min Screen Size = "+num2str(min_ScreenSize)
	
	ImageThreshold /Q/I/T=(threshold) ImageWave 
	wave slp_ImageThresh=M_ImageThresh
	
	ImageAnalyzeParticles /E/W/Q/M=3 /A=(min_ScreenSize) /F stats, slp_ImageThresh
	
	wave W_xmin
	wave W_xmax
	wave W_ymin
	wave W_ymax
	
	If (dimsize(W_xmin,0)!=0)
		new_xmin=W_xmin[0]/resize
		new_xmax=W_xmax[0]/resize
		new_ymin=W_ymin[0]/resize
		new_ymax=W_ymax[0]/resize
		new_xCenter=(new_xmin+new_xmax)/2
		new_yCenter=(new_ymin+new_ymax)/2
		new_pixelSizeX=FOV/(new_xmax-new_xmin)
		new_pixelSizeY=FOV/(new_ymax-new_ymin)
	Else
		DoAlert 0,"Threshold value too high!"
	Endif
	
	setdatafolder current_folder
	
End

Function SLP_Save_ImgPos()
	NVAR xMin=root:Package_SLP:Stitch:ImgAnalyzeParticles:xMin
	NVAR yMin=root:Package_SLP:Stitch:ImgAnalyzeParticles:yMin
	NVAR xMax=root:Package_SLP:Stitch:ImgAnalyzeParticles:xMax
	NVAR yMax=root:Package_SLP:Stitch:ImgAnalyzeParticles:yMax
	NVAR xCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:xCenter
	NVAR yCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:yCenter
	NVAR PixelSizeX=root:Package_SLP:Stitch:ImgAnalyzeParticles:PixelSizeX
	NVAR PixelSizeY=root:Package_SLP:Stitch:ImgAnalyzeParticles:PixelSizeY

	NVAR new_xMin=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xMin
	NVAR new_yMin=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_yMin
	NVAR new_xMax=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xMax
	NVAR new_yMax=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_yMax
	NVAR new_xCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xCenter
	NVAR new_yCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_yCenter
	NVAR new_PixelSizeX=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_PixelSizeX
	NVAR new_PixelSizeY=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_PixelSizeY
	
	xMin=new_xMin
	yMin=new_yMin
	xMax=new_xMax
	yMax=new_yMax
	xCenter=new_xCenter
	yCenter=new_yCenter
	PixelSizeX=new_PixelSizeX
	PixelSizeY=new_PixelSizeY

End

Function SLP_Stitch_Images(Resolution_X,Resolution_Y,Stitch_Name,Intensity_Th,FOV_Adj)
	variable Resolution_X
	variable Resolution_Y
	string Stitch_Name
	variable Intensity_Th
	variable FOV_Adj

	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"
	string Mask_FName=Pkg_Location+":SLP_StitchMask"
	
	variable X_min=0
	variable X_max=0
	variable Y_min=0
	variable Y_max=0
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave SLP_ImgParamListSelW=$ImgParamSel_Fname
	wave SLP_Mask=$Mask_FName
	
	variable i=0
	variable FOV_Num=0
	variable FOV_Angle=0
	
	variable Micrometer_x=0
	variable Micrometer_y=0
	string FOV_txt=""
	
	variable X_max_crnt,X_min_crnt,Y_max_crnt,Y_min_crnt
	variable First_Flg=1
	
	//Find the range of the final image
	
	For (i=0;i<dimsize(SLP_ImgListW,0);i+=1)
		if (SLP_ImgParamListSelW[i][0]==48)
			
			FOV_txt=SLP_ImgParamListW[i][5]
			FOV_Num=SLP_convertFOV_str2num(FOV_txt)
			FOV_angle=SLP_convertFOV_str2angle(FOV_txt)
			
			Micrometer_x=str2num(SLP_ImgParamListW[i][2])
			Micrometer_y=str2num(SLP_ImgParamListW[i][3])
			
			if (First_Flg==1) //First selected image - min and max X, Y
				X_max=-1000*(Micrometer_x*cos(FOV_Angle)-Micrometer_y*sin(FOV_Angle))+FOV_Num/2*FOV_Adj
				X_min=-1000*(Micrometer_x*cos(FOV_Angle)-Micrometer_y*sin(FOV_Angle))-FOV_Num/2*FOV_Adj
				Y_max=-1000*(Micrometer_x*sin(FOV_Angle)+Micrometer_y*cos(FOV_Angle))+FOV_Num/2*FOV_Adj
				Y_min=-1000*(Micrometer_x*sin(FOV_Angle)+Micrometer_y*cos(FOV_Angle))-FOV_Num/2*FOV_Adj
				First_Flg=0
			Else //Then compare to the next ones - pick one with the most extreme X,Y
				X_max_crnt=-1000*(Micrometer_x*cos(FOV_Angle)-Micrometer_y*sin(FOV_Angle))+FOV_Num/2*FOV_Adj
				X_min_crnt=-1000*(Micrometer_x*cos(FOV_Angle)-Micrometer_y*sin(FOV_Angle))-FOV_Num/2*FOV_Adj
				Y_max_crnt=-1000*(Micrometer_x*sin(FOV_Angle)+Micrometer_y*cos(FOV_Angle))+FOV_Num/2*FOV_Adj
				Y_min_crnt=-1000*(Micrometer_x*sin(FOV_Angle)+Micrometer_y*cos(FOV_Angle))-FOV_Num/2*FOV_Adj
				
				if (X_max_crnt>X_max)
					X_max=X_max_Crnt
				Endif
				
				if (X_min_crnt<X_min)
					X_min=X_min_Crnt
				Endif
				
				if (Y_max_crnt>Y_max)
					Y_max=Y_max_Crnt
				Endif
				
				if (Y_min_crnt<Y_min)
					Y_min=Y_min_Crnt
				Endif
			Endif
		Endif
	Endfor
	
	//print X_max
	//print X_min
	//print Y_max
	//print Y_min
	
	Make /O /N=(Resolution_X,Resolution_Y) $Stitch_Name /WAVE=Stitched_Image
	Setscale /I x X_min,X_max,"Microns (absolute)",Stitched_Image
	Setscale /I y Y_min,Y_max,"Microns (absolute)",Stitched_Image
	
	Stitched_Image=0
	
	//NewImage Stitched_Image
	
	variable j=0
	variable k=0
	variable x_ImageW=0
	variable y_ImageW=0
	string ImageW_FName=""
	variable PixelValue=0
	
	variable xPt_Stitched_Image=0
	variable yPt_Stitched_Image=0
	
	
	
	For (i=0;i<dimsize(SLP_ImgListW,0);i+=1)
		if (SLP_ImgParamListSelW[i][0]==48)
			FOV_txt=SLP_ImgParamListW[i][5]
			FOV_Num=SLP_convertFOV_str2num(FOV_txt)
			ImageW_FName=SLP_ImgListW[i][2]+SLP_ImgListW[i][3]
			wave Org_ImageW=$ImageW_FName
			
			Duplicate /O Org_ImageW, ImageW
			ImageW*=SLP_Mask
			
			For (j=0;j<dimsize(ImageW,0);j+=1)
				For (k=0;k<dimsize(ImageW,1);k+=1)
					PixelValue=ImageW[j][k]
					x_ImageW=dimoffset(ImageW,0)+j*dimdelta(ImageW,0)*FOV_Adj-FOV_num/2*(1-FOV_Adj)
					y_ImageW=dimoffset(ImageW,1)+k*dimdelta(ImageW,1)*FOV_Adj-FOV_num/2*(1-FOV_Adj)
					
					xPt_Stitched_Image=round((x_ImageW-DimOffset(Stitched_Image,0))/DimDelta(Stitched_Image,0))
					yPt_Stitched_Image=round((y_ImageW-DimOffset(Stitched_Image,1))/DimDelta(Stitched_Image,1))
					
					//Add the pixel value to the final image (only if the pixel is in the range)
					If (xPt_Stitched_Image>=0 && xPt_Stitched_Image<dimsize(Stitched_Image,0) && yPt_Stitched_Image>=0 && yPt_Stitched_Image<dimsize(Stitched_Image,1))
						//Stitched_Image[xPt_Stitched_Image][yPt_Stitched_Image]=(Stitched_Image[xPt_Stitched_Image][yPt_Stitched_Image]+PixelValue)/2
						If (PixelValue>=Intensity_Th)
							Stitched_Image[xPt_Stitched_Image][yPt_Stitched_Image]=PixelValue
						Endif
						
					Endif
					
				Endfor
			Endfor
			
		endif
	endfor
	Killwaves ImageW
End

Function SLP_SetLEEMScale_Batch(SLP_SetScale_mode)
	variable SLP_SetScale_mode //mode 0 = relative scale, mode 1 = absolute scale (offset by mitutoyo)
	variable micrometer_angle // In Deg (not Rad)
	
	//convert to radian
	//micrometer_angle=micrometer_angle*pi/180

	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave SLP_ImgParamListSelW=$ImgParamSel_Fname
	
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	//wave SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW

	variable i=0
	string Img_Fname=""
	string FOV_txt=""
	variable FOV_num=0
	variable Resize=0
	variable FOV_angle=0
	
	variable Micrometer_x
	variable Micrometer_y
	
	For (i=0;i<dimsize(SLP_ImgListW,0);i+=1)
		if (SLP_ImgParamListSelW[i][0]==48)
			Img_Fname=SLP_ImgListW[i][2]+SLP_ImgListW[i][3]
			
			Resize=str2num(SLP_ImgSetListW[Dataset_Sel][2])
			
			FOV_txt=SLP_ImgParamListW[i][5]
			FOV_num=SLP_convertFOV_str2num(FOV_txt)
			FOV_angle=SLP_convertFOV_str2angle(FOV_txt)
			
			Micrometer_x=str2num(SLP_ImgParamListW[i][2])
			Micrometer_y=str2num(SLP_ImgParamListW[i][3])
			
			//Only change scale if FOV is not in LEED or Disp. Pl. modes
			If (numtype(FOV_num)==0)
				if (SLP_SetScale_mode==0)
					slp_SetLEEMScale_Pixel(Img_Fname,Resize)
				Elseif  (SLP_SetScale_mode==1)
					slp_SetLEEMScale(Img_Fname,FOV_num,Resize)
				Elseif (SLP_SetScale_mode==2)
					slp_SetLEEMScale_Absolute(Img_Fname,FOV_num,Resize,Micrometer_x,Micrometer_y,FOV_angle*pi/180)
				Endif
			Endif
			
		endif
	Endfor

End

Function SLP_convertFOV_str2num(FOV_txt)
	string FOV_txt
	
	wave /T SLP_FOV_table=root:Package_SLP:Stitch:SLP_FOV_table
	
	FindValue /TEXT=FOV_txt SLP_FOV_table
	
	variable FOV_num=str2num(SLP_FOV_table[V_value][1])
	
	return FOV_num

End

Function SLP_convertFOV_str2angle(FOV_txt)
	string FOV_txt
	
	wave /T SLP_FOV_table=root:Package_SLP:Stitch:SLP_FOV_table
	
	FindValue /TEXT=FOV_txt SLP_FOV_table
	
	variable FOV_num=str2num(SLP_FOV_table[V_value][2])
	
	return FOV_num

End

Function SLP_create_Stitch1()
	
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	string ImgParamSel_Fname=Pkg_Location+":SLP_ImgParamListSelW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave SLP_ImgParamListSelW=$ImgParamSel_Fname

	variable i=0
	
	Display
	
	string Img_Fname=""
	
	For (i=0;i<dimsize(SLP_ImgListW,0);i+=1)
		if (SLP_ImgParamListSelW[i][0]==48)
			Img_Fname=SLP_ImgListW[i][2]+SLP_ImgListW[i][3]
			
			appendImage $Img_Fname
			
		Endif
	Endfor

End

Function Create_SetScale_Panel() : Panel

	NVAR SLP_LL_SetScale_Sel=root:Package_SLP:Stitch:SLP_LL_SetScale_Sel
	SLP_LL_SetScale_Sel=0
	
	PauseUpdate; Silent 1		// building window...
	DoWindow /K SLP_LL_SetScale
	NewPanel /W=(420,145,670,280) /N=SLP_LL_SetScale
	//ShowTools/A
	SetDrawLayer UserBack
	DrawText 45,35,"Change axis scaling of\r selected image(s) to"
	CheckBox check0,pos={80,40},size={80,15},title="Pixel number",value= 1,mode=1, proc=CheckProc_LL_SetScale_Check0
	CheckBox check1,pos={80,60},size={80,15},title="Relative scale",value= 0,mode=1, proc=CheckProc_LL_SetScale_Check1
	CheckBox check2,pos={80,80},size={80,15},title="Absolute scale",value= 0,mode=1, proc=CheckProc_LL_SetScale_Check2
	Button button0,pos={15,100},size={100,20},title="Change scale", proc=ButtonProc_LL_SetScale_Set
	Button button1,pos={135,100},size={100,20},title="Cancel", proc=ButtonProc_LL_SetScale_Cancel
	
End

Function CheckProc_LL_SetScale_Check0(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	NVAR SLP_LL_SetScale_Sel=root:Package_SLP:Stitch:SLP_LL_SetScale_Sel

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			CheckBox check1, value=0
			CheckBox check2, value=0
			SLP_LL_SetScale_Sel=0			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc_LL_SetScale_Check1(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	NVAR SLP_LL_SetScale_Sel=root:Package_SLP:Stitch:SLP_LL_SetScale_Sel

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			CheckBox check0, value=0
			CheckBox check2, value=0	
			SLP_LL_SetScale_Sel=1		
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc_LL_SetScale_Check2(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	NVAR SLP_LL_SetScale_Sel=root:Package_SLP:Stitch:SLP_LL_SetScale_Sel
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			CheckBox check0, value=0
			CheckBox check1, value=0
			SLP_LL_SetScale_Sel=2		
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function ButtonProc_LL_SetScale_Cancel(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K SLP_LL_SetScale
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_SetScale_Set(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	NVAR SLP_LL_SetScale_Sel=root:Package_SLP:Stitch:SLP_LL_SetScale_Sel
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K SLP_LL_SetScale
			
			SLP_SetLEEMScale_Batch(SLP_LL_SetScale_Sel) //need angle here [TODO]
			
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_DrawROI(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	NVAR SLP_LL_SetScale_Sel=root:Package_SLP:Stitch:SLP_LL_SetScale_Sel
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			//Dowindow /F /W=Stitch_Panel_01 Stitch_Mask_PLOT //DoWindows cannot understand subWindow syntax!
			SetActiveSubwindow Stitch_Panel_01#Stitch_Mask_Plot
			showtools /A rect
			TitleBox title0 title="Press cmd-t to exit the ROI draw mode, then press 'Create mask'",disable=2,pos= {10,220},frame=0
			SetDrawLayer ProgFront
			//SetDrawEnv linefgc= (65535,65535,0),fillpat= 0,xcoord= top,ycoord= left, save
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_CreateStitchMask(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	NVAR SLP_LL_SetScale_Sel=root:Package_SLP:Stitch:SLP_LL_SetScale_Sel
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SetActiveSubwindow Stitch_Panel_01#Stitch_Mask_Plot
			ImageGenerateROIMask /E=0 /I=1 SLP_DispStitchMask
			TitleBox title0 disable=1
			
			SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
			string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet		
			string ScreenMaskW_FName=Pkg_Location+":SLP_ScreenMask"
			string StitchMaskW_FName=Pkg_Location+":SLP_StitchMask"
			string DispStitchMaskW_FName=Pkg_Location+":SLP_DispStitchMask"
			wave ScreenMask=$ScreenMaskW_FName
			wave StitchMask=$StitchMaskW_FName
			wave DispStitchMask=$DispStitchMaskW_FName
			//duplicate /O ScreenMask, $StitchMaskW_FName /WAVE=StitchMask
			
			If(Exists("M_ROIMask"))
				Wave M_ROIMask
				string new_M_ROIMask_FName=Pkg_Location+":M_ROIMask"
				duplicate /O M_ROIMask, $new_M_ROIMask_FName
				StitchMask=M_ROIMask*StitchMask
				DispStitchMask=StitchMask*DispStitchMask
				killwaves M_ROIMask
			Endif
			DrawAction delete
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_Reset_StitchMask()
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	SVAR CurrentImageName=root:Package_SLP:LoadLEEM:CurrentImageName
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet		
	string ScreenMaskW_FName=Pkg_Location+":SLP_ScreenMask"
	string StitchMaskW_FName=Pkg_Location+":SLP_StitchMask"
	string DispStitchMaskW_FName=Pkg_Location+":SLP_DispStitchMask"
	
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	string ImgListW_FName=Pkg_Location+":SLP_ImgListW"
	wave /T ImgListW=$ImgListW_FName
	string CurrentImage_FName=ImgListW[LoadLEEM_Sel][2]+ImgListW[LoadLEEM_Sel][3]
	
	wave ScreenMask=$ScreenMaskW_FName
	wave StitchMask=$StitchMaskW_FName
	wave DispStitchMask=$DispStitchMaskW_FName
	wave CrntImgW=$CurrentImage_FName
	StitchMask=ScreenMask
	DispStitchMask=StitchMask*CrntImgW
End

Function SLP_Create_Stitch_Panel1()
	Dowindow /K Stitch_Panel_01
	PauseUpdate; Silent 1		// building window...
	NewPanel /W=(355,225,840,475) /N=Stitch_Panel_01
	SetDrawLayer UserBack
	//DrawRect 17,29,196,191
	
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	SVAR CurrentImageName=root:Package_SLP:LoadLEEM:CurrentImageName
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet		
	string ScreenMaskW_FName=Pkg_Location+":SLP_ScreenMask"
	string StitchMaskW_FName=Pkg_Location+":SLP_StitchMask"
	
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	string ImgListW_FName=Pkg_Location+":SLP_ImgListW"
	wave /T ImgListW=$ImgListW_FName
	string CurrentImage_FName=ImgListW[LoadLEEM_Sel][2]+ImgListW[LoadLEEM_Sel][3]
	
	string DispStitchMask_FName=Pkg_Location+":SLP_DispStitchMask"
	wave ScreenMask=$ScreenMaskW_FName
	if (!waveexists($StitchMaskW_FName))
		duplicate /O ScreenMask, $StitchMaskW_FName /WAVE=StitchMask
		duplicate /O ScreenMask, M_ROIMask
		M_ROIMask=1
	Else
		wave StitchMask=$StitchMaskW_FName
	EndIf
	//NewImage $CurrentImage_FName
	duplicate /O $CurrentImage_FName,$DispStitchMask_FName /WAVE=DispStitchMask
	DispStitchMask=DispStitchMask*StitchMask
	Display /HOST=Stitch_Panel_01 /W=(15,30,210,190) /N=Stitch_Mask_Plot
	AppendImage /W=Stitch_Panel_01#Stitch_Mask_Plot $DispStitchMask_FName
	ModifyGraph margin=6,tick=3,noLabel=2, standoff=0
	SetAxis /A/R left
	string ImageName=stringfromlist(0,ImageNameList("Stitch_Panel_01#Stitch_Mask_Plot",";"))
	ModifyImage $ImageName  ctab= {*,*,Terrain,0}
	
	DrawText 11,26,"Stitch selected images"
	DrawText 17,26,"Mask"
	
	Button button0,pos={340,220},size={50,20},title="Stitch",proc=ButtonProc_LL_Stitch_Run
	Button button1,pos={400,220},size={50,20},title="Cancel",proc=ButtonProc_LL_Stitch_Cancel
	Button button2,pos={15,195},size={80,20},title="Draw ROI",proc=ButtonProc_LL_DrawROI
	Button button3,pos={100,195},size={100,20},title="Create mask",proc=ButtonProc_LL_CreateStitchMask
	Button button4,pos={210,195},size={150,20},title="Reset to screen mask",proc=ButtonProc_ResetStitchMask
	
	SetVariable setvar0,pos={230,130},size={150,15},title="Angle adjustment", value=root:Package_SLP:Stitch:SLP_Stitch_AngleAdj
	SetVariable setvar1,pos={230,150},size={150,15},title="FOV adjustment" ,value=root:Package_SLP:Stitch:SLP_Stitch_FOVAdj
	SetVariable setvar2,pos={230,80},size={100,15},title="X resolution" ,value=root:Package_SLP:Stitch:SLP_Stitch_XRes
	SetVariable setvar2,limits={-inf,inf,0}
	SetVariable setvar3,pos={350,80},size={100,15},title="Y resolution" ,value=root:Package_SLP:Stitch:SLP_Stitch_YRes
	SetVariable setvar3,limits={-inf,inf,0}
	SetVariable setvar4,pos={230,110},size={150,15},title="Threshold value", value=root:Package_SLP:Stitch:SLP_Stitch_Threshold
	SetVariable setvar5,pos={230,30},size={250,15},title="Image wave name", value=root:Package_SLP:Stitch:SLP_Stitch_ImWName
	
	CheckBox check0,pos={230,170},size={88,15},title="Realtime update",value= 0
	CheckBox check1,pos={390,50},size={60,15},title="Overwrite",value= 0
	
		
	
End

Function ButtonProc_ResetStitchMask(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_Reset_StitchMask()			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_Stitch_Run(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	NVAR SLP_Stitch_XRes=root:Package_SLP:Stitch:SLP_Stitch_XRes
	NVAR SLP_Stitch_YRes=root:Package_SLP:Stitch:SLP_Stitch_YRes
	NVAR SLP_Stitch_Threshold=root:Package_SLP:Stitch:SLP_Stitch_Threshold
	SVAR SLP_Stitch_ImWName=root:Package_SLP:Stitch:SLP_Stitch_ImWName
	NVAR SLP_Stitch_FOVAdj=root:Package_SLP:Stitch:SLP_Stitch_FOVAdj
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_Stitch_Images(SLP_Stitch_XRes,SLP_Stitch_YRes,SLP_Stitch_ImWName,SLP_Stitch_Threshold,SLP_Stitch_FOVAdj)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function SLP_Create_FindScreenPanel() : Panel
	
	SVAR ImgWName=root:Package_SLP:Stitch:ImgAnalyzeParticles:ImgWName
	NVAR min_ScreenSize=root:Package_SLP:Stitch:ImgAnalyzeParticles:min_ScreenSize
	NVAR FindScreenTh=root:Package_SLP:Stitch:ImgAnalyzeParticles:FindScreenTh
	NVAR xMin=root:Package_SLP:Stitch:ImgAnalyzeParticles:xMin
	NVAR yMin=root:Package_SLP:Stitch:ImgAnalyzeParticles:yMin
	NVAR xMax=root:Package_SLP:Stitch:ImgAnalyzeParticles:xMax
	NVAR yMax=root:Package_SLP:Stitch:ImgAnalyzeParticles:yMax
	NVAR xCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:xCenter
	NVAR yCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:yCenter
	NVAR PixelSizeX=root:Package_SLP:Stitch:ImgAnalyzeParticles:PixelSizeX
	NVAR PixelSizeY=root:Package_SLP:Stitch:ImgAnalyzeParticles:PixelSizeY
	
	NVAR new_xCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xCenter
	NVAR new_yCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_yCenter
	
	Dowindow /K Find_Screen_Panel_01
	PauseUpdate; Silent 1		// building window...
	NewPanel /W=(275,171,885,419) /N=Find_Screen_Panel_01
	//ShowTools/A
	SetDrawLayer UserBack
	DrawText 480,60,"\Z10Saved screen position"
	DrawText 360,60,"\Z10New screen position"
	SetDrawEnv fsize= 14
	DrawText 9,25,"Find screen position"
	DrawText 16,45,"Threshold"
	DrawText 184,45,"Screen area"
	
	SetVariable SetVar_ImgWName,pos={200,5},size={300,15},title="Image wave name", value=ImgWName,disable=2
	SetVariable setvar0,pos={12,197},size={155,15},title="Threshold", value=FindScreenTh, limits={0,inf,1},proc=SetVarProc_ChangeTh
	SetVariable setvar1,pos={173,196},size={182,15},title="Min screen size (pixels)", value=min_ScreenSize, limits={0,inf,0},disable=2,ValueColor=(0,0,0)
	Button button0,pos={135,220},size={170,20},title="Change screen position",proc=ButtonProc_LL_SaveImgPos
	Button button1,pos={310,220},size={200,20},title="Create screen mask",proc=ButtonProc_CreateScreenMask
	Button button2,pos={520,220},size={60,20},title="Done",proc=ButtonProc_LL_FindScreen_Done
	SetVariable setvar2,pos={500,66},size={83,15},noedit=1,title="X center"
	SetVariable setvar2,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:xCenter
	SetVariable setvar3,pos={500,84},size={83,15},noedit=1,title="Y center"
	SetVariable setvar3,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:yCenter
	SetVariable setvar4,pos={500,104},size={83,15},noedit=1,title="X min"
	SetVariable setvar4,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:xmin
	SetVariable setvar5,pos={500,122},size={83,15},noedit=1,title="Y min"
	SetVariable setvar5,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:ymin
	SetVariable setvar6,pos={500,146},size={83,15},noedit=1,title="X max"
	SetVariable setvar6,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:xmax
	SetVariable setvar7,pos={500,164},size={83,15},noedit=1,title="Y max"
	SetVariable setvar7,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:ymax
	SetVariable setvar8,pos={370,66},size={83,15},noedit=0,title="X center",proc=SetVarProc_New_xyCenter
	SetVariable setvar8,limits={-inf,inf,1},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xCenter
	SetVariable setvar9,pos={370,84},size={83,15},noedit=0,title="Y center",proc=SetVarProc_New_xyCenter
	SetVariable setvar9,limits={-inf,inf,1},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:new_yCenter
	SetVariable setvar05,pos={370,104},size={83,15},noedit=1,title="X min"
	SetVariable setvar05,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xmin
	SetVariable setvar06,pos={370,122},size={83,15},noedit=1,title="Y min"
	SetVariable setvar06,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:new_ymin
	SetVariable setvar07,pos={370,146},size={83,15},noedit=1,title="X max"
	SetVariable setvar07,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xmax
	SetVariable setvar08,pos={370,164},size={83,15},noedit=1,title="Y max"
	SetVariable setvar08,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:new_ymax
	
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	wave SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
	
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel
	
	string ImageWaveFName=SLP_ImgListW[LoadLEEM_Sel][2]+SLP_ImgListW[LoadLEEM_Sel][3]
	ImgWName=SLP_ImgListW[LoadLEEM_Sel][3]
	variable resize=str2num(SLP_ImgSetListW[Dataset_Sel][2])
	variable FOV=SLP_convertFOV_str2num(SLP_ImgParamListW[LoadLEEM_Sel][5])
	
	slp_FindScreenPos(ImageWaveFName,FOV,FindScreenTh,resize)
	
	wave M_ImageThresh=root:Package_SLP:Stitch:ImgAnalyzeParticles:M_ImageThresh
	
	Display /HOST=Find_Screen_Panel_01 /N=FindScreen_ImgTh /W=(10,55,170,180) 
	Appendimage /W=Find_Screen_Panel_01#FindScreen_ImgTh M_ImageThresh
	ModifyGraph margin=6,tick=3,noLabel=2, standoff=0
	SetAxis /A/R left
	
	
	Display /HOST=Find_Screen_Panel_01 /N=FindScreen_Img /W=(180,55,340,180) 
	Appendimage /W=Find_Screen_Panel_01#FindScreen_Img $ImageWaveFName
	Appendtograph /W=Find_Screen_Panel_01#FindScreen_Img root:Package_SLP:Stitch:ImgAnalyzeParticles:W_BoundaryY vs root:Package_SLP:Stitch:ImgAnalyzeParticles:W_BoundaryX
	ModifyGraph margin=6,tick=3,noLabel=2, standoff=0
	SetAxis /A/R left
	
	SLP_FindScreen_DrawC()
	
End

Function SLP_FindScreen_DrawC()
	NVAR new_xCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_xCenter
	NVAR new_yCenter=root:Package_SLP:Stitch:ImgAnalyzeParticles:new_yCenter
	
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	
	string ImageWaveFName=SLP_ImgListW[LoadLEEM_Sel][2]+SLP_ImgListW[LoadLEEM_Sel][3]
	wave ImgWave=$ImageWaveFName
	
	variable Range_X=abs( dimoffset(ImgWave,0)+dimdelta(ImgWave,0)*(dimsize(ImgWave,0)-1))
	variable Range_Y= abs(dimoffset(ImgWave,1)+dimdelta(ImgWave,1)*(dimsize(ImgWave,1)-1))
	
	//print Range_X
	//print Range_Y
	
	if (stringmatch(Waveunits(ImgWave,0),"")||stringmatch(Waveunits(ImgWave,0),"Pixel"))
		
		Setdrawlayer /W=Find_Screen_Panel_01#FindScreen_Img UserFront	
		DrawAction /W=Find_Screen_Panel_01#FindScreen_Img delete
		SetDrawEnv /W=Find_Screen_Panel_01#FindScreen_Img xcoord=rel,ycoord=rel,lineFgc=(65535,0,0)
		Drawline /W=Find_Screen_Panel_01#FindScreen_Img abs(new_xCenter/Range_X),0,abs(new_xCenter/Range_X),1
		SetDrawEnv /W=Find_Screen_Panel_01#FindScreen_Img xcoord=rel, ycoord=rel,lineFgc=(65535,0,0)
		Drawline /W=Find_Screen_Panel_01#FindScreen_Img 0,abs(new_yCenter/Range_Y),1,abs(new_yCenter/Range_Y)
		
	Endif
End

Function SLP_FindScreen_ChangeTh()
	
	SVAR ImgWName=root:Package_SLP:Stitch:ImgAnalyzeParticles:ImgWName
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	NVAR min_ScreenSize=root:Package_SLP:Stitch:ImgAnalyzeParticles:min_ScreenSize
	NVAR FindScreenTh=root:Package_SLP:Stitch:ImgAnalyzeParticles:FindScreenTh
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	
	wave /T SLP_ImgListW=$ImgList_Fname
	wave /T SLP_ImgParamListW=$ImgParam_Fname
	wave /T SLP_ImgSetListW=root:Package_SLP:LoadLEEM:SLP_ImgSetListW
	wave SLP_ImgSetListSelW=root:Package_SLP:LoadLEEM:SLP_ImgSetListSelW
	
	NVAR LoadLEEM_Sel=root:Package_SLP:LoadLEEM:LoadLEEM_Sel
	NVAR Dataset_Sel=root:Package_SLP:LoadLEEM:Dataset_Sel
	
	string ImageWaveFName=SLP_ImgListW[LoadLEEM_Sel][2]+SLP_ImgListW[LoadLEEM_Sel][3]
	ImgWName=SLP_ImgListW[LoadLEEM_Sel][3]
	variable resize=str2num(SLP_ImgSetListW[Dataset_Sel][2])
	variable FOV=SLP_convertFOV_str2num(SLP_ImgParamListW[LoadLEEM_Sel][5])
	
	slp_FindScreenPos(ImageWaveFName,FOV,FindScreenTh,resize)
	
	
End

Function SLP_Create_ScreenMask()
	wave M_Particle=root:Package_SLP:Stitch:ImgAnalyzeParticles:M_Particle
	
	SVAR ImgWName=root:Package_SLP:Stitch:ImgAnalyzeParticles:ImgWName
	SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
	NVAR min_ScreenSize=root:Package_SLP:Stitch:ImgAnalyzeParticles:min_ScreenSize
	NVAR FindScreenTh=root:Package_SLP:Stitch:ImgAnalyzeParticles:FindScreenTh
	
	string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
	string ImgList_Fname=Pkg_Location+":SLP_ImgListW"
	string ImgParam_Fname=Pkg_Location+":SLP_ImgParamListW"
	
	string ScreenMaskWaveFName=Pkg_Location+":SLP_ScreenMask"
	
	duplicate /O M_Particle,$ScreenMaskWaveFName /WAVE=ScreenMaskW
	
	//Change from 64/16 (values used in ImageAnalyzeParticle function of Igor) to 0/1 (0 = outside the screen, 1 = inside the screen)
	ScreenMaskW-=64
	ScreenMaskW/=208

End

Function ButtonProc_CreateScreenMask(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_Create_ScreenMask()
						
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_FindScreen_Done(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Dowindow /K Find_Screen_Panel_01
						
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LL_SaveImgPos(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_Save_ImgPos()
						
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_ImgNotes(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			NVAR LoadLEEM_sel=root:Package_SLP:LoadLEEM:LoadLEEM_sel
			SVAR CurrentDataSet=root:Package_SLP:LoadLEEM:CurrentDataSet
			string Pkg_Location="root:Package_SLP:LoadLEEM:"+CurrentDataSet
			string ImgParamList_Fname=Pkg_Location+":SLP_ImgParamListW"
			wave /T SLP_ImgParamListW=$ImgParamList_Fname
			SLP_ImgParamListW[LoadLEEM_sel][13]=sval
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_ChangeTh(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			SLP_FindScreen_ChangeTh()
			SLP_FindScreen_DrawC()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_New_xyCenter(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			SLP_FindScreen_DrawC()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


// ver. ce20161230b
//	- Add BG loading and processing using BG

// ver. ce20161223a
//	- Recipe items allow parameter changes (where applied)

//ver. ce20161222a
//	- Add Processed data functionality. Can plot the processed data

//ver. ce20161220e
//	- Cosmetic change
//	- Small bug fixed - ROI_sel_List global string missing

//ver. ce20161220d
//	- Option to copy data and plot to a new window ([Note] X-wave is not copied. Also the wave names are exactly the same as originals - wave name limitation of Igor)


//ver. ce20161220c
//	- Multiple scans to be displayed in the 3rd graph column too.

//ver. ce20161220b
//	- Multiple scans can be displayed together in the 2nd graph column
//	- Gradiant applied (still quite bad)

//ver. ce20161219c
// - Check the validity of ROI selections. Change selection to 1 if user input wrong number
// - Select all ROI by default

//ver. ce20161219b
// - With user's interface (not fully finished)
//		- Display selected scans
//		- User can select which ROI(s) to display

//Ver. ce20161217a
// - Auto-normalize the NEXAFS w/ I0 when loading.

//Ver. ce20161216a
// - Load batch with auto-checking for new scans





Function SLP_NEX_init()

	string Current_folder=getdatafolder(1)
	newdatafolder /O root:NEXAFS //To store raw data
	newdatafolder /O root:Package_SLP
	newdatafolder /O root:Package_SLP:NEXAFS //To store global variables, waves
	setdatafolder root:Package_SLP:NEXAFS
	
	variable /G NEX_Scan_Sel=0
	variable /G NEX_BG_Sel=0
	make /T /O /N=(0,64) SLP_NEX_ScanListW //To store names and locations of files and waves
	
	//To store scan name for panel display (includes check box status)
	make /T /O /N=(0,16) SLP_NEX_ScanDisplayListW
	make /O /N=(0,16) SLP_NEX_ScanDisplaySelListW
	make /T /O /N=(16) SLP_NEX_ScanDisplayTitleW={"Scans","ROIs","Sel ROI","Plot1","Plot2","Fit","x","x","x","x","x","x","x","x","x","x"}
	
	make /T /O /N=(0,32) SLP_NEX_ScanParamListW //To store scan parameters
	
	//BG
	make /T /O /N=(1,8) SLP_NEX_BGListW //To store Backgrounds
	SLP_NEX_BGListW[0][0]="None"
	make /T /O /N=8 SLP_NEX_BGListColTitleW={"Name","Start","End","ROIs","Selected","File location","Wave location","Wave name"}
	
	//Recipe
	make /T /O /N=(16,2) SLP_NEX_DefaultRecipeW //Default normalization recipes
	SLP_NEX_DefaultRecipeW[p][0]={"Name:","Shift energy scale","Divide with BG","Normalise pre-edge to one"}
	SLP_NEX_DefaultRecipeW[p][1]={"Standard recipe","0","","5"}
	
	make /T /O /N=(16,2) SLP_NEX_AllRecipeItemsW="" //all items
	SLP_NEX_AllRecipeItemsW[p][0]={"Normalise by I\B0","Normalize pre-edge to one","Subtract pre-edge to zero","Normalise BG by I\B0","Normalise BG pre-edge to one","Subtract with BG","Normalise post-edge to one","Shift energy scale","Shift BG energy scale","Divide with BG"}
	SLP_NEX_AllRecipeItemsW[p][1]={"","5","5","","5","","5","0","0"}
	make /T /O /N=(16,2) SLP_NEX_SelRecipeItemsW ="" //Selected items (in Recipe mod panel)
	make /T /O /N=(16,2) SLP_NEX_UnselRecipeItemsW ="" //Unselected items (in Recipe mod panel)
	
	make /O/N=(16,2) SLP_NEX_RecipeSelW
	SLP_NEX_RecipeSelW[p][0]=0
	SLP_NEX_RecipeSelW[p][1]=2
	
	make /O /N=(3,3) SLP_NEX_PlotMatrix //For plotting
	
	variable /G NEX_InitFlg=1
	string /G NEX_ScanList=""
	string /G ROI_sel_txt=""
	string /G ROI_sel_List=""
	
	//Folder
	newDataFolder Backgrounds
	setdatafolder root:Package_SLP:NEXAFS:Backgrounds
		//Create dummy waves for "None" background
	Make /O /N=1 None_hv=0
	Make /O /N=1 None_I0=0
	Make /O /N=1 None_ROI1=0
	
	setdatafolder $Current_folder
	
End

Function SLP_NEX_CreatePanel() : Panel
	DoWindow /K SLP_NEX_Panel_01
	PauseUpdate; Silent 1		// building window...
	NewPanel /W=(170,70,1150,670) /N=SLP_NEX_Panel_01
	
	//Check if it is the first time that the program is run
	If (!DataFolderExists("root:Package_SLP:NEXAFS"))
		SLP_NEX_init()
	Endif
	NVAR NEX_InitFlg=root:Package_SLP:NEXAFS:NEX_InitFlg
	
	wave /T SLP_NEX_ScanDisplayListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanDisplayListW
	wave SLP_NEX_ScanDisplaySelListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanDisplaySelListW
	wave /T SLP_NEX_ScanDisplayTitleW=root:Package_SLP:NEXAFS:SLP_NEX_ScanDisplayTitleW
	wave /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	wave /T SLP_NEX_ScanParamListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanParamListW
	wave /T SLP_NEX_BGListW=root:Package_SLP:NEXAFS:SLP_NEX_BGListW
	wave /T SLP_NEX_DefaultRecipeW=root:Package_SLP:NEXAFS:SLP_NEX_DefaultRecipeW
	wave /T SLP_NEX_BGListColTitleW=root:Package_SLP:NEXAFS:SLP_NEX_BGListColTitleW
	wave SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	wave SLP_NEX_RecipeSelW=root:Package_SLP:NEXAFS:SLP_NEX_RecipeSelW
	
	SetDrawLayer UserBack
	SetDrawEnv fsize=16
	
	variable Matrix_Left=240
	variable Matrix_xSize=740
	variable Matrix_Top=80
	variable Matrix_ySize=500
	variable ChkBox_Xoffset=180
	variable ChkBox_Yoffset=-17
	variable Graph_FrameWidth=20
	
	DrawText 13,28,"SLRI LEEM PEEM NEXAFS Panel"
	DrawText 14,51,"Scans"
	DrawText 5,331,"Backgrounds"
	DrawText 12,478,"Recipes"
		
	DrawText Matrix_left+Matrix_xSize*0/3,Matrix_top+Matrix_ySize*0/3-20,"\Z16Selected scan"
	DrawText Matrix_left+Matrix_xSize*1/3,Matrix_top+Matrix_ySize*0/3-20,"\Z16Plot1"
	DrawText Matrix_left+Matrix_xSize*2/3,Matrix_top+Matrix_ySize*0/3-20,"\Z16Plot2"
	
	ListBox list0,pos={5,75},size={220,230}, listWave=SLP_NEX_ScanDisplayListW,selWave=SLP_NEX_ScanDisplaySelListW
	ListBox list0,widths={150,30,35,30,30,25,25,25,25},userColumnResize=1,titleWave=SLP_NEX_ScanDisplayTitleW
	ListBox list0,proc=ListBoxProc_NEX_ScanList
	ListBox list0,mode= 2,selRow= 0
	ListBox list1,pos={5,335},size={220,115}, listWave=SLP_NEX_BGListW,widths={100,30,30,30,30,300,50,50},mode=2,userColumnResize=1,titleWave=SLP_NEX_BGListColTitleW
	ListBox list1,proc=ListBoxProc_NEX_BGList
	ListBox list2,pos={5,485},size={220,100}, selWave=SLP_NEX_RecipeSelW
	ListBox list2,widths={150,30},userColumnResize=1,proc=ListBoxProc_Recipe
	
	Button Done,pos={833,565},size={50,20},title="Done",proc=ButtonProc_NEX_done
	Button button1,pos={103,37},size={96,16},title="Load scans..",fSize=10, proc=ButtonProc_NEX_LoadScans
	Button button2,pos={360,565},size={91,21},title="Fitting..",fSize=10
	Button Plot_Sel,pos={235,565},size={120,21},fsize=10,title="Plot selected graph..",proc=ButtonProc_NEX_PlotSel
	Button Modify_recipe,pos={60,465},size={60,15},title="Modify..",fSize=10, proc=ButtonProc_NEX_ModRecipe
	Button Reset_recipe,pos={120,465},size={100,15},title="Reset to default",fSize=10,proc=ButtonProc_NEX_Recipe_LoadDef
	Button button4,pos={97,316},size={104,16},title="Load background..",fSize=10,proc =ButtonProc_NEX_LoadBg
	Button button5,pos={619,12},size={68,20},title="Browse.."
	Button button6,pos={107,57},size={89,16},title="New ROI..",fSize=10
	Button button7,pos={7,55},size={97,16},title="Display images..",fSize=10
	
	//SetVariable setvar_Plot_SelScan,pos={233,38},size={223,15},title="Plot1 name:",limits={-inf,inf,0}
	//SetVariable setvar_Plot1_Name,pos={479,37},size={215,15},title="Plot1 name:",limits={-inf,inf,0}
	//SetVariable setvar_Plot2_Name,pos={705,34},size={229,15},title="Plot2 name:",limits={-inf,inf,0}
	SetVariable setvar_MonitoredFolder,pos={262,12},size={349,15},title="Monitored folder:",limits={-inf,inf,0}
	
	DrawText Matrix_left+Matrix_xSize*0/3,Matrix_top+Matrix_ySize*0/3,"Raw data"
	DrawText Matrix_left+Matrix_xSize*0/3,Matrix_top+Matrix_ySize*1/3,"I\\B0\\M normalised"
	DrawText Matrix_left+Matrix_xSize*0/3,Matrix_top+Matrix_ySize*2/3,"Normalised by recipe"
	DrawText Matrix_left+Matrix_xSize*1/3,Matrix_top+Matrix_ySize*0/3,"Raw data"
	DrawText Matrix_left+Matrix_xSize*1/3,Matrix_top+Matrix_ySize*1/3,"I\\B0\\M normalised"
	DrawText Matrix_left+Matrix_xSize*1/3,Matrix_top+Matrix_ySize*2/3,"Normalised by recipe"
	DrawText Matrix_left+Matrix_xSize*2/3,Matrix_top+Matrix_ySize*0/3,"Raw data"
	DrawText Matrix_left+Matrix_xSize*2/3,Matrix_top+Matrix_ySize*1/3,"I\\B0\\M normalised"
	DrawText Matrix_left+Matrix_xSize*2/3,Matrix_top+Matrix_ySize*2/3,"Normalised by recipe"
		
	CheckBox check00,pos={Matrix_left+Matrix_xSize*0/3+ChkBox_xoffset,Matrix_top+Matrix_ySize*0/3+ChkBox_Yoffset},size={35,15},title="Plot",value=SLP_NEX_PlotMatrix[0][0],proc=CheckProc00
	CheckBox check10,pos={Matrix_left+Matrix_xSize*0/3+ChkBox_xoffset,Matrix_top+Matrix_ySize*1/3+ChkBox_Yoffset},size={35,15},title="Plot",value= SLP_NEX_PlotMatrix[1][0],proc=CheckProc10
	CheckBox check20,pos={Matrix_left+Matrix_xSize*0/3+ChkBox_xoffset,Matrix_top+Matrix_ySize*2/3+ChkBox_Yoffset},size={35,15},title="Plot",value= SLP_NEX_PlotMatrix[2][0],proc=CheckProc20
	CheckBox check01,pos={Matrix_left+Matrix_xSize*1/3+ChkBox_xoffset,Matrix_top+Matrix_ySize*0/3+ChkBox_Yoffset},size={35,15},title="Plot",value= SLP_NEX_PlotMatrix[0][1],proc=CheckProc01
	CheckBox check11,pos={Matrix_left+Matrix_xSize*1/3+ChkBox_xoffset,Matrix_top+Matrix_ySize*1/3+ChkBox_Yoffset},size={35,15},title="Plot",value= SLP_NEX_PlotMatrix[1][1],proc=CheckProc11
	CheckBox check21,pos={Matrix_left+Matrix_xSize*1/3+ChkBox_xoffset,Matrix_top+Matrix_ySize*2/3+ChkBox_Yoffset},size={35,15},title="Plot",value= SLP_NEX_PlotMatrix[2][1],proc=CheckProc21
	CheckBox check02,pos={Matrix_left+Matrix_xSize*2/3+ChkBox_xoffset,Matrix_top+Matrix_ySize*0/3+ChkBox_Yoffset},size={35,15},title="Plot",value= SLP_NEX_PlotMatrix[0][2],proc=CheckProc02
	CheckBox check12,pos={Matrix_left+Matrix_xSize*2/3+ChkBox_xoffset,Matrix_top+Matrix_ySize*1/3+ChkBox_Yoffset},size={35,15},title="Plot",value= SLP_NEX_PlotMatrix[1][2],proc=CheckProc12
	CheckBox check22,pos={Matrix_left+Matrix_xSize*2/3+ChkBox_xoffset,Matrix_top+Matrix_ySize*2/3+ChkBox_Yoffset},size={35,15},title="Plot",value= SLP_NEX_PlotMatrix[2][2],proc=CheckProc22
	
	Display/W=(Matrix_left+Matrix_xSize*0/3,Matrix_top+Matrix_ySize*0/3,Matrix_left+Matrix_xSize*1/3-Graph_FrameWidth,Matrix_top+Matrix_ySize*1/3-Graph_FrameWidth)/HOST=SLP_NEX_Panel_01 /N=SLP_NEX_Graph00	
	Display/W=(Matrix_left+Matrix_xSize*0/3,Matrix_top+Matrix_ySize*1/3,Matrix_left+Matrix_xSize*1/3-Graph_FrameWidth,Matrix_top+Matrix_ySize*2/3-Graph_FrameWidth)/HOST=SLP_NEX_Panel_01 /N=SLP_NEX_Graph10
	Display/W=(Matrix_left+Matrix_xSize*0/3,Matrix_top+Matrix_ySize*2/3,Matrix_left+Matrix_xSize*1/3-Graph_FrameWidth,Matrix_top+Matrix_ySize*3/3-Graph_FrameWidth)/HOST=SLP_NEX_Panel_01 /N=SLP_NEX_Graph20
	
	Display/W=(Matrix_left+Matrix_xSize*1/3,Matrix_top+Matrix_ySize*0/3,Matrix_left+Matrix_xSize*2/3-Graph_FrameWidth,Matrix_top+Matrix_ySize*1/3-Graph_FrameWidth)/HOST=SLP_NEX_Panel_01 /N=SLP_NEX_Graph01	
	Display/W=(Matrix_left+Matrix_xSize*1/3,Matrix_top+Matrix_ySize*1/3,Matrix_left+Matrix_xSize*2/3-Graph_FrameWidth,Matrix_top+Matrix_ySize*2/3-Graph_FrameWidth)/HOST=SLP_NEX_Panel_01 /N=SLP_NEX_Graph11
	Display/W=(Matrix_left+Matrix_xSize*1/3,Matrix_top+Matrix_ySize*2/3,Matrix_left+Matrix_xSize*2/3-Graph_FrameWidth,Matrix_top+Matrix_ySize*3/3-Graph_FrameWidth)/HOST=SLP_NEX_Panel_01 /N=SLP_NEX_Graph21

	Display/W=(Matrix_left+Matrix_xSize*2/3,Matrix_top+Matrix_ySize*0/3,Matrix_left+Matrix_xSize*3/3-Graph_FrameWidth,Matrix_top+Matrix_ySize*1/3-Graph_FrameWidth)/HOST=SLP_NEX_Panel_01 /N=SLP_NEX_Graph02	
	Display/W=(Matrix_left+Matrix_xSize*2/3,Matrix_top+Matrix_ySize*1/3,Matrix_left+Matrix_xSize*3/3-Graph_FrameWidth,Matrix_top+Matrix_ySize*2/3-Graph_FrameWidth)/HOST=SLP_NEX_Panel_01 /N=SLP_NEX_Graph12
	Display/W=(Matrix_left+Matrix_xSize*2/3,Matrix_top+Matrix_ySize*2/3,Matrix_left+Matrix_xSize*3/3-Graph_FrameWidth,Matrix_top+Matrix_ySize*3/3-Graph_FrameWidth)/HOST=SLP_NEX_Panel_01 /N=SLP_NEX_Graph22
	
	//Plot and recall data selection if some data has already been loaded before
	If (NEX_InitFlg==0)
		NVAR NEX_Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel
		SLP_NEX_PlotScan(NEX_Scan_Sel)
		ListBox List0, selRow=NEX_Scan_Sel,Row=NEX_Scan_Sel
		SLP_NEX_PlotScanP1()
		string BG_Name=SLP_NEX_ScanParamListW[NEX_Scan_Sel][2]
		variable BG_Sel=SLP_NEX_FindBGPos(BG_Name)
		ListBox List1, SelRow=BG_Sel
	Endif
	
End

Function ButtonProc_NEX_LoadBg(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			GetFileFolderInfo /Q
			string BG_W_FName=S_path
			
			string BgBaseName=stringfromlist(itemsinlist(BG_W_FName,":")-1,BG_W_FName,":")
			variable ROI_sel=1
			
			Prompt BgBaseName,"Name of the background"
			Prompt ROI_sel, "ROI"
			Doprompt "Enter parameters", BgBaseName,ROI_Sel
			
			SLP_NEX_LoadBG(BG_W_FName,BgBaseName,ROI_sel)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_NEX_LoadBG(FileFName,BgBaseName,ROI_sel)
	string FileFName,BgBaseName
	variable ROI_sel
	
	wave /T SLP_NEX_BGListW=root:Package_SLP:NEXAFS:SLP_NEX_BGListW
	NVAR NEX_BG_Sel=root:Package_SLP:NEXAFS:NEX_BG_Sel
	
	string CrntDataFolder=getDatafolder(1)
	
	string BGLocation="root:Package_SLP:NEXAFS:Backgrounds"
	
	SetDataFolder $BGLocation
	
	//Load .txt file into 2D matrix
	LoadWave/G/M/D/N=$BgBaseName FileFName
	//Find the name of the wave (first block - for the first scan)
	string BgWaveName=stringfromlist(0,S_waveNames)
	
	Wave Bg_W=$BgWaveName
	
	//Update ScanList
		//Add 1 row at the end with Redimension
	variable N_Bg=dimsize(SLP_NEX_BGListW,0)
	Redimension /N=(N_Bg+1,dimsize(SLP_NEX_BGListW,1))SLP_NEX_BGListW
		//append details in the last row
	SLP_NEX_BGListW[N_Bg][0]=BgBaseName
	SLP_NEX_BGListW[N_Bg][5]=FileFName
	SLP_NEX_BGListW[N_Bg][6]=BGLocation
	SLP_NEX_BGListW[N_Bg][7]=BgWaveName
	
	variable N_ROIs=dimsize(BG_W,1)-3
	SLP_NEX_BGListW[N_Bg][3]=num2str(N_ROIs) //No. of ROIs
	
	//ROIs selection (select 1 by default)
	If (ROI_sel>N_ROIs||ROI_sel<1)
		SLP_NEX_BGListW[N_Bg][4]="1" 
	Else
		SLP_NEX_BGListW[N_Bg][4]=num2str(ROI_Sel)
	Endif
	
	//SLP_NEX_SplitColumn(WaveLocation,ScanWaveName,dimsize(SLP_NEX_ScanParamListW,0)-1)
	
	variable i=0
	string New_BgW_Name=""
	string Suffix=""
	
	For (i=0;i<dimsize(Bg_W,1);i+=1)
		If (i==0)
			Suffix="_hv"
		ElseIf (i==1)
			Suffix="_Ie"
		ElseIf (i==2)
			Suffix="_I0"
		Elseif (i>2)
			Suffix="_ROI"+num2str(i-2)
		Endif
		New_BgW_Name=BgBaseName+Suffix
		Duplicate /O /R=[][i] Bg_W,$New_BgW_Name /Wave=New_BgW
		Redimension /N=(dimsize(New_BgW,0)) New_BgW
		
		If (i==0)
			SLP_NEX_BGListW[N_Bg][1]=num2str(New_BgW[0])
			SLP_NEX_BGListW[N_Bg][2]=num2str(New_BgW[dimsize(New_BgW,0)-1])
		Endif
		
		If (i==2)
			SetScale /I x str2num(SLP_NEX_BGListW[N_Bg][1]),str2num(SLP_NEX_BGListW[N_Bg][2]),New_BgW
		Endif
		
		If (i>2)
			SetScale /I x str2num(SLP_NEX_BGListW[N_Bg][1]),str2num(SLP_NEX_BGListW[N_Bg][2]),New_BgW
		Endif
		
	EndFor
	killwaves Bg_W
	SetDataFolder $CrntDataFolder
End

Function SLP_NEX_CreateModRecipePanel() : Panel
	
	NVAR NEX_Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel
	wave /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	wave /T SLP_NEX_DefaultRecipeW=root:Package_SLP:NEXAFS:SLP_NEX_DefaultRecipeW
	wave /T SLP_NEX_AllRecipeItemsW=root:Package_SLP:NEXAFS:SLP_NEX_AllRecipeItemsW
	wave /T SLP_NEX_SelRecipeItemsW=root:Package_SLP:NEXAFS:SLP_NEX_SelRecipeItemsW
	wave /T SLP_NEX_UnselRecipeItemsW=root:Package_SLP:NEXAFS:SLP_NEX_UnselRecipeItemsW
	
	String W_Location=SLP_NEX_ScanListW[NEX_Scan_Sel][2]
	String ScanW_Name=SLP_NEX_ScanListW[NEX_Scan_Sel][3]
	String ScanW_FName=W_Location+":"+ScanW_Name
	String Recipe_FName=W_Location+":"+ScanW_Name+"_rcp"
	
	Wave /T RecipeW=$Recipe_FName //Wave reference for scan recipe (each recipe for each scan)
	Wave SLP_NEX_RecipeSelW=root:Package_SLP:NEXAFS:SLP_NEX_RecipeSelW
	
	SLP_NEX_SelRecipeItemsW=RecipeW //Copy recipe wave to selected-items wave
	SLP_NEX_UnselRecipeItemsW=""
	//Create wave of Unselected recipe items
	variable i=0
	variable j=0
	string Src_Txt=""
	
	For (i=0;i<dimsize(SLP_NEX_AllRecipeItemsW,0);i+=1)
		Src_Txt=SLP_NEX_AllRecipeItemsW[i][0]
		FindValue /TEXT=Src_Txt SLP_NEX_SelRecipeItemsW
		 //All items - selected items = unselected items
		If (V_Value==-1)
			SLP_NEX_UnselRecipeItemsW[j][0]=Src_Txt
			SLP_NEX_UnselRecipeItemsW[j][1]=""
			j+=1
		Endif
	EndFor
	//
	
	DoWindow /K Modify_Recipe_Panel
	PauseUpdate; Silent 1		// building window...
	NewPanel /W=(166,69,833,438) /N=Modify_Recipe_Panel

	SetDrawLayer UserBack
	SetDrawEnv fsize= 14
	DrawText 16,26,"Modify recipe"
	DrawText 16,46,"Action list"
	
	ListBox list_ActionList,pos={17,47},size={246,262},ListWave=SLP_NEX_UnselRecipeItemsW
	ListBox list_ActionList,mode=2,userColumnResize=1,widths={150,50}
	
	ListBox list_Recipe,pos={342,46},size={309,264},ListWave=SLP_NEX_SelRecipeItemsW
	ListBox list_Recipe,mode=2,selwave=SLP_NEX_RecipeSelW,userColumnResize=1,widths={150,50}
	
	Button B_Cancel,pos={601,341},size={50,20},title="Cancel", proc=ButtonProc_NEX_Recipe_done
	Button B_SaveRecipe,pos={319,341},size={120,20},title="Save recipe",proc=ButtonProc_NEX_Recipe_Save
	Button B_Insert,pos={277,86},size={50,20},title=">>",proc=ButtonProc_NEX_Recipe_Add
	Button B_Remove,pos={277,110},size={50,20},title="<<",proc=ButtonProc_NEX_Recipe_Remove
	Button B_MoveUp,pos={339,313},size={150,20},fSize=10,title="Move selected item up",proc=ButtonProc_NEX_Recipe_MoveUp
	Button B_MoveDown,pos={496,314},size={150,20},fSize=10,title="Move selected item down",proc=ButtonProc_NEX_Recipe_MoveDown
	Button B_SetDefault,pos={445,340},size={150,20},title="Set as default recipe",proc=ButtonProc_NEX_Recipe_SaveDef
	
	SetVariable setvar_RecipeName,pos={344,23},size={300,19},title="Recipe name: ",fSize=12,limits={-inf,inf,0}
	
End

Function SLP_NEX_Recipe_CreateSelWave(current_RecipeW_FName)
	string current_RecipeW_FName
	wave /T Current_RecipeW=$current_RecipeW_FName
	wave SLP_NEX_RecipeSelW=root:Package_SLP:NEXAFS:SLP_NEX_RecipeSelW
	
	variable i=0
	string Item_txt=""
	For (i=0;i<16;i+=1)
		Item_txt=Current_RecipeW[i][0]
		If (whichlistitem(Item_txt, "Normalise by I\B0;Subtract with BG;Normalise BG by I\B0;Divide with BG")!=-1||stringmatch(Item_txt,""))
			SLP_NEX_RecipeSelW[i][1]=0 //non-editable (no parameter required)
		Else
			SLP_NEX_RecipeSelW[i][1]=2 //editable cell 
		Endif
	EndFor
End

Function ButtonProc_NEX_Recipe_Save(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	NVAR NEX_Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel
	wave /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	wave /T SLP_NEX_SelRecipeItemsW=root:Package_SLP:NEXAFS:SLP_NEX_SelRecipeItemsW
	
	String W_Location=SLP_NEX_ScanListW[NEX_Scan_Sel][2]
	String ScanW_Name=SLP_NEX_ScanListW[NEX_Scan_Sel][3]
	String ScanW_FName=W_Location+":"+ScanW_Name
	String Recipe_FName=W_Location+":"+ScanW_Name+"_rcp"
	Wave /T RecipeW=$Recipe_FName //Wave reference for scan recipe (each recipe for each scan)
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			RecipeW=SLP_NEX_SelRecipeItemsW
			DoWindow /K Modify_Recipe_Panel
			SLP_NEX_ProcessScan(NEX_Scan_Sel)
			SLP_NEX_Recipe_CreateSelWave(Recipe_FName)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_Recipe_SaveDef(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	NVAR NEX_Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel
	wave /T SLP_NEX_SelRecipeItemsW=root:Package_SLP:NEXAFS:SLP_NEX_SelRecipeItemsW
	wave /T SLP_NEX_DefaultRecipeW=root:Package_SLP:NEXAFS:SLP_NEX_DefaultRecipeW
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoAlert 1,"Overwrite current default recipe?"
			If (V_Flag==1)
				SLP_NEX_DefaultRecipeW=SLP_NEX_SelRecipeItemsW
				//DoWindow /K Modify_Recipe_Panel
			Endif
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_Recipe_LoadDef(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	

	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			NVAR NEX_Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel
			wave /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
			wave /T SLP_NEX_DefaultRecipeW=root:Package_SLP:NEXAFS:SLP_NEX_DefaultRecipeW
			
			String W_Location=SLP_NEX_ScanListW[NEX_Scan_Sel][2]
			String ScanW_Name=SLP_NEX_ScanListW[NEX_Scan_Sel][3]
			String ScanW_FName=W_Location+":"+ScanW_Name
			String Recipe_FName=W_Location+":"+ScanW_Name+"_rcp"
			Wave /T RecipeW=$Recipe_FName //Wave reference for scan recipe (each recipe for each scan)
			RecipeW=SLP_NEX_DefaultRecipeW
			SLP_NEX_Recipe_CreateSelWave("root:Package_SLP:NEXAFS:SLP_NEX_DefaultRecipeW")
			SLP_NEX_ProcessScan(NEX_Scan_Sel)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_NEX_ModRcp(ModRcp_Action)
	string ModRcp_Action
	
	NVAR NEX_Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel
	wave /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	wave /T SLP_NEX_DefaultRecipeW=root:Package_SLP:NEXAFS:SLP_NEX_DefaultRecipeW
	wave /T SLP_NEX_AllRecipeItemsW=root:Package_SLP:NEXAFS:SLP_NEX_AllRecipeItemsW
	wave /T SLP_NEX_SelRecipeItemsW=root:Package_SLP:NEXAFS:SLP_NEX_SelRecipeItemsW
	wave /T SLP_NEX_UnselRecipeItemsW=root:Package_SLP:NEXAFS:SLP_NEX_UnselRecipeItemsW
	
	String W_Location=SLP_NEX_ScanListW[NEX_Scan_Sel][2]
	String ScanW_Name=SLP_NEX_ScanListW[NEX_Scan_Sel][3]
	String ScanW_FName=W_Location+":"+ScanW_Name
	String Recipe_FName=W_Location+":"+ScanW_Name+"_rcp"
	Wave /T RecipeW=$Recipe_FName //Wave reference for scan recipe (each recipe for each scan)
	
	Wave SLP_NEX_RecipeSelW=root:Package_SLP:NEXAFS:SLP_NEX_RecipeSelW
	
	variable Left_Sel=0
	variable Right_Sel=0
	string Swap_Str
	
	ControlInfo /W=Modify_Recipe_Panel list_ActionList
	Left_Sel=V_Value
	ControlInfo /W=Modify_Recipe_Panel list_Recipe
	Right_Sel=V_Value
	
	//variable N_Unsel_actions=0
	//variable N_Rcp_actions=0
	
	//Find no. of items in each list
	
	
	StrSwitch (ModRcp_Action)
		
		case "Add":
			InsertPoints Right_Sel+1,1,SLP_NEX_SelRecipeItemsW
			SLP_NEX_SelRecipeItemsW[Right_Sel+1][0]=SLP_NEX_UnselRecipeItemsW[Left_Sel][0]
			SLP_NEX_SelRecipeItemsW[Right_Sel+1][1]=SLP_NEX_UnselRecipeItemsW[Left_Sel][1]
			DeletePoints 16,1,SLP_NEX_SelRecipeItemsW
			DeletePoints Left_Sel,1,SLP_NEX_UnselRecipeItemsW
			InsertPoints 15,1,SLP_NEX_UnselRecipeItemsW
			ListBox list_Recipe,SelRow=Right_Sel+1
			Break
			
		case "Remove":
			InsertPoints Left_Sel+1,1,SLP_NEX_UnselRecipeItemsW
			SLP_NEX_UnselRecipeItemsW[Left_Sel+1][0]=SLP_NEX_SelRecipeItemsW[Right_Sel][0]
			SLP_NEX_UnselRecipeItemsW[Left_Sel+1][1]=SLP_NEX_SelRecipeItemsW[Right_Sel][1]
			DeletePoints 16,1,SLP_NEX_UnselRecipeItemsW
			DeletePoints Right_Sel,1,SLP_NEX_SelRecipeItemsW
			InsertPoints 15,1,SLP_NEX_SelRecipeItemsW
			ListBox list_ActionList,SelRow=Left_Sel+1
			Break
			
		case "MoveUp":
			Swap_Str=SLP_NEX_SelRecipeItemsW[Right_Sel-1][0]
			SLP_NEX_SelRecipeItemsW[Right_Sel-1][0]=SLP_NEX_SelRecipeItemsW[Right_Sel][0]
			SLP_NEX_SelRecipeItemsW[Right_Sel][0]=Swap_Str
			
			Swap_Str=SLP_NEX_SelRecipeItemsW[Right_Sel-1][1]
			SLP_NEX_SelRecipeItemsW[Right_Sel-1][1]=SLP_NEX_SelRecipeItemsW[Right_Sel][1]
			SLP_NEX_SelRecipeItemsW[Right_Sel][1]=Swap_Str
			
			ListBox list_Recipe,SelRow=Right_Sel-1
			Break
		
		case "MoveDown":
			Swap_Str=SLP_NEX_SelRecipeItemsW[Right_Sel+1][0]
			SLP_NEX_SelRecipeItemsW[Right_Sel+1][0]=SLP_NEX_SelRecipeItemsW[Right_Sel][0]
			SLP_NEX_SelRecipeItemsW[Right_Sel][0]=Swap_Str
			
			Swap_Str=SLP_NEX_SelRecipeItemsW[Right_Sel+1][1]
			SLP_NEX_SelRecipeItemsW[Right_Sel+1][1]=SLP_NEX_SelRecipeItemsW[Right_Sel][1]
			SLP_NEX_SelRecipeItemsW[Right_Sel][1]=Swap_Str
			
			ListBox list_Recipe,SelRow=Right_Sel+1
			
			Break
			
	EndSwitch
	
	SLP_NEX_Recipe_CreateSelWave("root:Package_SLP:NEXAFS:SLP_NEX_SelRecipeItemsW")
End

Function SLP_NEX_ProcessScan(Scan_Sel)
	variable Scan_Sel
	
	Wave /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	Wave /T SLP_NEX_ScanDisplayListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanDisplayListW
	
	variable N_ROIs=str2num(SLP_NEX_ScanDisplayListW[Scan_Sel][1])
	
	String W_Location=SLP_NEX_ScanListW[Scan_Sel][2]
	String ScanW_Name=SLP_NEX_ScanListW[Scan_Sel][3]
	String ScanW_FName=W_Location+":"+ScanW_Name
	String Recipe_FName=W_Location+":"+ScanW_Name+"_rcp"
	String ProcScan_xWFName=ScanW_FName+"_hvp"
	String Izero_WFName=ScanW_FName+"_I0"
	String BG_WFName=ScanW_FName+"_Bg"
	String BGI0_WFName=ScanW_FName+"_BgI0"
	
	wave /T Recipe_W=$Recipe_FName
	wave Proc_xW=$ProcScan_xWFName
	wave Izero_W=$Izero_WFName
	wave BG_W=$BG_WFName
	wave BGI0_W=$BGI0_WFName
	
	variable i=1
	variable j=1//j=0 is the Name of the recipe
	
	String ProcScan_WFName=""
	String Scan_WFName=""
	String Prochv_WFName=""
	String hv_WFName=""
	
	For (i=1;i<=N_ROIs;i+=1)
		ProcScan_WFName=ScanW_FName+"_ROI"+num2str(i)+"_prc"
		Prochv_WFName=ScanW_FName+"_hvp"
		Scan_WFName=ScanW_FName+"_ROI"+num2str(i)
		hv_WFName=ScanW_FName+"_hv"
		wave Proc_W=$ProcScan_WFName
		wave Prochv_W=$Prochv_WFName
		wave Scan_W=$Scan_WFName
		wave hv_W=$hv_WFName
		//Reset proc_W
		Proc_W=Scan_W
		//Reset Prochv_W
		Prochv_W=hv_W
		//Reset BG
		SLP_NEX_UpdateBG()
		//Then start processing
		Do
			StrSwitch(Recipe_W[j][0])
				Case "Normalise by I\B0":
					Proc_W/=Izero_W
					Break
					
				Case "Normalise pre-edge to one":
					SLP_NEX_Proc_NormPreEdge(ProcScan_WFName,str2num(Recipe_W[j][1]))
					Break
					
				Case "Normalise post-edge to one":
					SLP_NEX_Proc_NormPostEdge(ProcScan_WFName,str2num(Recipe_W[j][1]))
					Break
				
				Case "Subtract pre-edge to zero"	:
					SLP_NEX_Proc_SubtractPreEdge(ProcScan_WFName,str2num(Recipe_W[j][1]))
					Break
					
				Case "Shift energy scale": //This should be done before processing with BG
					SLP_NEX_Proc_ShiftEnergy(Prochv_WFName,str2num(Recipe_W[j][1]))
					SLP_NEX_UpdateBG() //BG needs to be shifted as well
					Break
				
				Case "Normalise BG by I\B0":
					BG_W/=BGI0_W
					Break
					
				Case "Normalise BG pre-edge to one":
					SLP_NEX_Proc_NormPreEdge(BGI0_WFName,str2num(Recipe_W[j][1]))
					Break
					
				Case "Subtract with BG":
					Proc_W-=BG_W
					Break
					
				Case "Divide with BG":
					Proc_W/=BG_W
					Break
		
			EndSwitch
			j+=1
		While (!stringmatch(Recipe_W[j][0],""))
		j=1 //Reset j
	EndFor

End

Function SLP_NEX_Proc_ShiftEnergy(xW_FName,Shift_amount)
	String xW_FName //Full wave name
	variable Shift_amount //how much is the shift in eV
	
	wave Processed_xWave=$xW_FName
	
	Processed_xWave+=Shift_amount
End

Function SLP_NEX_Proc_NormPreEdge(W_FName,Nrm_Point)
	String W_FName //Full wave name
	variable Nrm_Point //how far from the beginning of the scan to normallise 
	
	wave Processed_Wave=$W_FName
	
	variable Nrm_value=Processed_Wave[Nrm_Point]
	
	Processed_Wave/=Nrm_value
End

Function SLP_NEX_Proc_SubtractPreEdge(W_FName,Nrm_Point)
	String W_FName //Full wave name
	variable Nrm_Point //how far from the beginning of the scan to normallise 
	
	wave Processed_Wave=$W_FName
	
	variable Nrm_value=Processed_Wave[Nrm_Point]
	
	Processed_Wave-=Nrm_value
End

Function SLP_NEX_Proc_NormPostEdge(W_FName,Nrm_Point)
	String W_FName //Full wave name
	variable Nrm_Point //how far from the end of the scan to normallise 
	
	wave Processed_Wave=$W_FName
	
	variable Nrm_value=Processed_Wave[dimsize(Processed_Wave,0)-1-Nrm_Point]
	
	Processed_Wave/=Nrm_value
End

Function SLP_NEX_intrpt_ROIs(ROI_InputStr)
	string ROI_InputStr
	
	//Global string to pass the result to other functions
	SVAR ROI_sel_List=root:Package_SLP:NEXAFS:ROI_Sel_List
	
	string Output_txt=""
	variable i=0
	variable j=0
	string new_txt=""
	string intermediate_txt=""
	string Start_txt=""
	String End_txt=""
	
	variable N_Items=ItemsInList(ROI_InputStr,",")
	For (i=0;i<N_Items;i+=1)
		intermediate_txt=stringFromList(i,ROI_InputStr,",")
		If (GrepString(intermediate_txt,"-"))
			Start_txt=StringFromList(0,intermediate_txt,"-")
			End_txt=StringFromList(1,intermediate_txt,"-")
			For (j=str2num(Start_txt);j<=str2num(End_txt);j+=1)
				New_txt=num2str(j)
				Output_txt=AddListItem(new_txt,Output_txt,";",inf)
			EndFor
		Else
			New_txt=intermediate_txt
			Output_txt=AddListItem(new_txt,Output_txt,";",inf)
		Endif
	
	Endfor

	ROI_sel_List=Output_txt

End

Function SLP_NEX_PlotScanP1()
	
	WAVE /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	WAVE /T SLP_NEX_ScanDisplayListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanDisplayListW
	WAVE SLP_NEX_ScanDisplaySelListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanDisplaySelListW
	
	//Remove existing traces in the graph first
	string TraceList_01=TraceNameList("SLP_NEX_Panel_01#SLP_NEX_Graph01",";",1)
	string TraceList_11=TraceNameList("SLP_NEX_Panel_01#SLP_NEX_Graph11",";",1)
	string TraceList_21=TraceNameList("SLP_NEX_Panel_01#SLP_NEX_Graph21",";",1)
	string TraceList_02=TraceNameList("SLP_NEX_Panel_01#SLP_NEX_Graph02",";",1)
	string TraceList_12=TraceNameList("SLP_NEX_Panel_01#SLP_NEX_Graph12",";",1)
	string TraceList_22=TraceNameList("SLP_NEX_Panel_01#SLP_NEX_Graph22",";",1)
	variable N_traces_01=itemsinlist(TraceList_01)
	variable N_traces_11=itemsinlist(TraceList_11)
	variable N_traces_21=itemsinlist(TraceList_21)
	variable N_traces_02=itemsinlist(TraceList_02)
	variable N_traces_12=itemsinlist(TraceList_12)
	variable N_traces_22=itemsinlist(TraceList_22)

	string traceName=""
	variable i=0
	
	//Remove previous traces
	//Graph01
	If (N_traces_01!=0)
		For (i=0;i<N_traces_01;i+=1)
			traceName=stringFromList(i,TraceList_01)
			RemoveFromGraph /W=SLP_NEX_Panel_01#SLP_NEX_Graph01 $traceName
		Endfor
	Endif
	//Graph11
	If (N_traces_11!=0)
		For (i=0;i<N_traces_11;i+=1)
			traceName=stringFromList(i,TraceList_11)
			RemoveFromGraph /W=SLP_NEX_Panel_01#SLP_NEX_Graph11 $traceName
		Endfor
	Endif
	//Graph21
	If (N_traces_21!=0)
		For (i=0;i<N_traces_21;i+=1)
			traceName=stringFromList(i,TraceList_21)
			RemoveFromGraph /W=SLP_NEX_Panel_01#SLP_NEX_Graph21 $traceName
		Endfor
	Endif
	//Graph02
	If (N_traces_02!=0)
		For (i=0;i<N_traces_02;i+=1)
			traceName=stringFromList(i,TraceList_02)
			RemoveFromGraph /W=SLP_NEX_Panel_01#SLP_NEX_Graph02 $traceName
		Endfor
	Endif
	//Graph12
	If (N_traces_12!=0)
		For (i=0;i<N_traces_12;i+=1)
			traceName=stringFromList(i,TraceList_12)
			RemoveFromGraph /W=SLP_NEX_Panel_01#SLP_NEX_Graph12 $traceName
		Endfor
	Endif
	//Graph22
	If (N_traces_22!=0)
		For (i=0;i<N_traces_22;i+=1)
			traceName=stringFromList(i,TraceList_22)
			//print TraceList_22
			RemoveFromGraph /W=SLP_NEX_Panel_01#SLP_NEX_Graph22 $traceName
		Endfor
	Endif
	
	//Prepare to plot
	variable N_ROIs=0
	string ROI_sel_txt=""
	SVAR ROI_sel_List=root:Package_SLP:NEXAFS:ROI_Sel_List
	string ScanW_hv_FName=""
	string ScanW_hvp_FName=""
	string ScanW_ROI_FName=""
	string ScanW_ROInrm_FName=""
	string ScanW_ROIprc_FName=""
	variable ROI_Sel=0
	
	//Plot selected wave
	variable a=0
	For (a=0;a<dimsize(SLP_NEX_ScanDisplayListW,0);a+=1)
		//Plot1
		if (SLP_NEX_ScanDisplaySelListW[a][3]==48)
		
			N_ROIs=str2num(SLP_NEX_ScanDisplayListW[a][1])
			ROI_sel_txt=SLP_NEX_ScanDisplayListW[a][2]
			
			//Interprete user's ROI selection and save to ROI_sel_list global string
			SLP_NEX_intrpt_ROIs(ROI_sel_txt)
			
			//Start Plotting
			ScanW_hv_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][4]
			ScanW_hvp_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][4]+"p"
			
			For (i=0;i<itemsinlist(ROI_sel_List,";");i+=1)
				ROI_Sel=str2num(stringFromList(i,ROI_sel_List))
				ScanW_ROI_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][6+ROI_sel]
				ScanW_ROInrm_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][6+ROI_sel]+"_nrm"
				ScanW_ROIprc_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][6+ROI_sel]+"_prc"
			
				Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph01 $ScanW_ROI_FName vs $ScanW_hv_FName
				SLP_NEX_FormatNEX("SLP_NEX_Panel_01#SLP_NEX_Graph01",2)
				
				Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph11  $ScanW_ROInrm_FName vs $ScanW_hv_FName
				SLP_NEX_FormatNEX("SLP_NEX_Panel_01#SLP_NEX_Graph11",3)
				
				Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph21  $ScanW_ROIprc_FName vs $ScanW_hvp_FName
				SLP_NEX_FormatNEX("SLP_NEX_Panel_01#SLP_NEX_Graph21",3)
			EndFor
		Endif	
		//Plot2
		if (SLP_NEX_ScanDisplaySelListW[a][4]==48)
		
			N_ROIs=str2num(SLP_NEX_ScanDisplayListW[a][1])
			ROI_sel_txt=SLP_NEX_ScanDisplayListW[a][2]
			
			//Interprete user's ROI selection and save to ROI_sel_list global string
			SLP_NEX_intrpt_ROIs(ROI_sel_txt)
			
			//Start Plotting
			ScanW_hv_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][4]
			ScanW_hvp_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][4]+"p"
			
			For (i=0;i<itemsinlist(ROI_sel_List,";");i+=1)
				ROI_Sel=str2num(stringFromList(i,ROI_sel_List))
				ScanW_ROI_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][6+ROI_sel]
				ScanW_ROInrm_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][6+ROI_sel]+"_nrm"
				ScanW_ROIprc_FName=SLP_NEX_ScanListW[a][2]+":"+SLP_NEX_ScanListW[a][6+ROI_sel]+"_prc"
			
				Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph02 $ScanW_ROI_FName vs $ScanW_hv_FName
				SLP_NEX_FormatNEX("SLP_NEX_Panel_01#SLP_NEX_Graph02",2)
				
				Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph12  $ScanW_ROInrm_FName vs $ScanW_hv_FName
				SLP_NEX_FormatNEX("SLP_NEX_Panel_01#SLP_NEX_Graph12",3)
				
				Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph22  $ScanW_ROIprc_FName vs $ScanW_hvp_FName
				SLP_NEX_FormatNEX("SLP_NEX_Panel_01#SLP_NEX_Graph22",3)
			EndFor
		Endif
	
	Endfor
End

Function SLP_NEX_CopynPlotSelected()
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	variable i=0
	variable j=0
	string GraphName=""
	variable PlotOption=0
	
	For (i=0;i<3;i+=1)
		For (j=0;j<3;j+=1)
			If (SLP_NEX_PlotMatrix[i][j]==1) //If 'Plot' is selected
				GraphName="SLP_NEX_Panel_01#SLP_NEX_Graph"+num2str(i)+num2str(j)
				If (i==0&&j==0)
					SLP_NEX_CopynPlot(GraphName,0)
				Elseif (i==1&&j==0)
					SLP_NEX_CopynPlot(GraphName,1)
				Elseif (i==0)
					SLP_NEX_CopynPlot(GraphName,2)
				Elseif (i==1||i==2)
					SLP_NEX_CopynPlot(GraphName,3)
				Endif
			Endif
		EndFor
	EndFor

End

Function SLP_NEX_CopynPlot(GraphName,Plot_Option) //[Note]*X-wave is not copied*
	string GraphName
	variable Plot_Option
	
	string TraceList=TraceNameList(GraphName,";",1)
	variable N_traces=itemsinlist(TraceList,";")
	string TraceName=""
	string NewWaveName=""
	string NewxWaveName=""
	variable i=0
	
	Display
	
	For (i=0;i<N_traces;i+=1)
			TraceName=stringFromList(i,TraceList)
			Wave TraceW=TraceNameToWaveRef(GraphName,TraceName)
			Wave xWave=XWaveRefFromTrace(GraphName,TraceName)
			NewWaveName=TraceName//+"_y"
			//NewxWaveName=TraceName+"_x"
			Duplicate /O TraceW,$NewWaveName /WAVE=NewWave
			//Duplicate /O xWave,$NewxWaveName /WAVE=NewxWave
			
			If (i==0&&Plot_Option==0)
				Appendtograph /R=Right NewWave vs xWave
			Else
				Appendtograph NewWave vs xWave
			Endif
	EndFor
	
	SLP_NEX_FormatNEX("",Plot_Option)
	Legend
	ModifyGraph noLabel=0,margin=0,minor=1

End

Function SLP_NEX_PlotScan(Scan_Sel)
	variable Scan_Sel
	
	WAVE /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	WAVE /T SLP_NEX_ScanDisplayListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanDisplayListW
	
	variable N_ROIs=str2num(SLP_NEX_ScanDisplayListW[Scan_Sel][1])
	string ROI_sel_txt=SLP_NEX_ScanDisplayListW[Scan_Sel][2]
	
	//Interprete user's ROI selection and save to ROI_sel_list global string
	SVAR ROI_sel_List=root:Package_SLP:NEXAFS:ROI_Sel_List
	SLP_NEX_intrpt_ROIs(ROI_sel_txt)
		//Check for validity of ROI selection
	variable last_ROI=str2num(stringfromlist(itemsinlist(ROI_Sel_List,";")-1,ROI_Sel_List))
	If (last_ROI>N_ROIs||numtype(last_ROI)==2)//Check if the index of the last ROI is more than the number of ROIs, or if the interpretation doesn't make sense (NaN)
		ROI_Sel_List="1;"
		DoAlert 0,"Wrong ROI selection"
		SLP_NEX_ScanDisplayListW[Scan_Sel][2]="1"
	Endif
	
	//Remove existing traces in the graph first
	string TraceList_00=TraceNameList("SLP_NEX_Panel_01#SLP_NEX_Graph00",";",1)
	string TraceList_10=TraceNameList("SLP_NEX_Panel_01#SLP_NEX_Graph10",";",1)
	string TraceList_20=TraceNameList("SLP_NEX_Panel_01#SLP_NEX_Graph20",";",1)
	variable N_traces_00=itemsinlist(TraceList_00)
	variable N_traces_10=itemsinlist(TraceList_10)
	variable N_traces_20=itemsinlist(TraceList_20)
	
		
	string traceName=""
	
	variable i=0
	
	//Remove previous traces
	//Graph00
	If (N_traces_00!=0)
		For (i=0;i<N_traces_00;i+=1)
			traceName=stringFromList(i,TraceList_00)
			RemoveFromGraph /W=SLP_NEX_Panel_01#SLP_NEX_Graph00 $traceName
		Endfor
	Endif
	//Graph10
	If (N_traces_10!=0)
		For (i=0;i<N_traces_10;i+=1)
			traceName=stringFromList(i,TraceList_10)
			RemoveFromGraph /W=SLP_NEX_Panel_01#SLP_NEX_Graph10 $traceName
		Endfor
	Endif
	//Graph20
	If (N_traces_20!=0)
		For (i=0;i<N_traces_20;i+=1)
			traceName=stringFromList(i,TraceList_20)
			RemoveFromGraph /W=SLP_NEX_Panel_01#SLP_NEX_Graph20 $traceName
		Endfor
	Endif
	
	//Start Plotting
	
	string ScanW_hv_FName=SLP_NEX_ScanListW[Scan_Sel][2]+":"+SLP_NEX_ScanListW[Scan_Sel][4]
	string ScanW_hvp_FName=SLP_NEX_ScanListW[Scan_Sel][2]+":"+SLP_NEX_ScanListW[Scan_Sel][4]+"p"
	string ScanW_Ie_FName=SLP_NEX_ScanListW[Scan_Sel][2]+":"+SLP_NEX_ScanListW[Scan_Sel][5]
	string ScanW_I0_FName=SLP_NEX_ScanListW[Scan_Sel][2]+":"+SLP_NEX_ScanListW[Scan_Sel][6]
	
	
	Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph00  /R=right $ScanW_I0_FName vs $ScanW_hv_FName
	
	string ScanW_ROI_FName=""
	string ScanW_ROInrm_FName=""
	string ScanW_ROIprc_FName=""
	variable ROI_Sel=0
	
	For (i=0;i<itemsinlist(ROI_sel_List,";");i+=1)
		ROI_Sel=str2num(stringFromList(i,ROI_sel_List))
		ScanW_ROI_FName=SLP_NEX_ScanListW[Scan_Sel][2]+":"+SLP_NEX_ScanListW[Scan_Sel][6+ROI_sel]
		ScanW_ROInrm_FName=SLP_NEX_ScanListW[Scan_Sel][2]+":"+SLP_NEX_ScanListW[Scan_Sel][6+ROI_sel]+"_nrm"
		ScanW_ROIprc_FName=SLP_NEX_ScanListW[Scan_Sel][2]+":"+SLP_NEX_ScanListW[Scan_Sel][6+ROI_sel]+"_prc"
	
		Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph00 $ScanW_ROI_FName vs $ScanW_hv_FName
		SLP_NEX_FormatNEX("SLP_NEX_Panel_01#SLP_NEX_Graph00",0)
		
		Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph10  $ScanW_ROInrm_FName vs $ScanW_hv_FName
		SLP_NEX_FormatNEX("SLP_NEX_Panel_01#SLP_NEX_Graph10",1)
		
		Appendtograph /W=SLP_NEX_Panel_01#SLP_NEX_Graph20  $ScanW_ROIprc_FName vs $ScanW_hvp_FName
		SLP_NEX_FormatNEX("SLP_NEX_Panel_01#SLP_NEX_Graph20",1)
	
	EndFor
	
	//Update Recipe ListBox
	string ScanW_Rcp_FName=SLP_NEX_ScanListW[Scan_Sel][2]+":"+SLP_NEX_ScanListW[Scan_Sel][3]+"_rcp"
	wave Recipe_W=$ScanW_Rcp_FName
	ListBox List2 ListWave=Recipe_W
	SLP_NEX_Recipe_CreateSelWave(ScanW_Rcp_FName)
	
End

Function SLP_NEX_FormatNEX(GraphName,Option)
	string GraphName
	variable option

	ModifyGraph /W=$GraphName tick=2,mirror(bottom)=1,noLabel=1,standoff=0;DelayUpdate
	ModifyGraph /W=$GraphName noLabel(bottom)=0
	Label /W=$GraphName bottom "\Z08Photon energy (eV)"
	ModifyGraph /W=$GraphName margin(left)=23,margin(bottom)=28,margin(right)=23
	
	string TraceList=TraceNameList(GraphName,";",1)
	variable N_traces=itemsinlist(TraceList,";")
	string TraceName1=""
	string TraceName2=""
	variable i=0
	variable Grad_offset=30000
	
	If (Option==0)
		Label /W=$GraphName left "\Z08PEEM intensity";DelayUpdate
		Label /W=$GraphName right "\Z08I\B0\Z08 from gold mesh";DelayUpdate
				
		TraceName1=StringFromList(0,TraceList)
		TraceName2=StringFromList(1,TraceList)
		
		ModifyGraph /W=$GraphName lstyle($TraceName1)=2, rgb($TraceName1)=(0,0,0)
	Elseif (option==1)
		Label /W=$GraphName left "\Z08Normalised intensity";DelayUpdate
		ModifyGraph /W=$GraphName mirror(left)=1
	Elseif (option==2)
		Label /W=$GraphName left "\Z08PEEM intensity";DelayUpdate
		ModifyGraph /W=$GraphName mirror(left)=1
		//Apply gradient
		For (i=0;i<N_traces;i+=1)
			TraceName1=stringFromList(i,TraceList)
			ModifyGraph /W=$GraphName rgb($TraceName1)=(Grad_Offset+(65535-Grad_Offset)*(i/N_traces),20000,20000)
		EndFor
	Elseif (option==3)
		Label /W=$GraphName left "\Z08Normalised intensity";DelayUpdate
		ModifyGraph /W=$GraphName mirror(left)=1
		//Apply gradient
		For (i=0;i<N_traces;i+=1)
			TraceName1=stringFromList(i,TraceList)
			ModifyGraph /W=$GraphName rgb($TraceName1)=(Grad_Offset+(65535-Grad_Offset)*(i/N_traces),20000,20000)
		EndFor
	Endif
	
End

Function SLP_NEX_UpdateBG()

	NVAR Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel
	WAVE /T SLP_NEX_ScanParamListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanParamListW
	WAVE /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	WAVE /T SLP_NEX_BGListW=root:Package_SLP:NEXAFS:SLP_NEX_BGListW
	
	String W_Location=SLP_NEX_ScanListW[Scan_Sel][2]
	String ScanW_Name=SLP_NEX_ScanListW[Scan_Sel][3]
	String ScanW_FName=W_Location+":"+ScanW_Name
	String BG_FName=W_Location+":"+ScanW_Name+"_bg"
	String BGI0_FName=W_Location+":"+ScanW_Name+"_bgI0"
	String hvp_FName=W_Location+":"+ScanW_Name+"_hvp"
	string Org_BG_Name=SLP_NEX_ScanParamListW[Scan_Sel][2]
	string Org_BG_FName="root:Package_SLP:NEXAFS:Backgrounds:"+Org_BG_Name+"_ROI1"
	string Org_BGI0_FName="root:Package_SLP:NEXAFS:Backgrounds:"+Org_BG_Name+"_I0"
	
	wave BG_W=$BG_FName
	wave BGI0_W=$BGI0_FName
	wave Org_BG_W=$Org_BG_FName
	wave Org_BGI0_W=$Org_BGI0_FName
	wave hvp_W=$hvp_FName //processed hv wave (could be shifted or have different eV step than the orginal BG wave)
	
	variable i=0
	variable crnt_hv=0
	
	variable BG_sel=SLP_NEX_FindBGPos(Org_BG_Name)
	
	variable OrgBG_hvMin=str2num(SLP_NEX_BGListW[BG_sel][1])
	variable OrgBG_hvMax=str2num(SLP_NEX_BGListW[BG_sel][2])
	
	For (i=0;i<dimsize(hvp_W,0);i+=1)
		crnt_hv=hvp_W[i]
		If (crnt_hv>=OrgBG_hvMin&&crnt_hv<=OrgBG_hvMax)
			BG_W[i]=Org_BG_W(crnt_hv) //find interpolated value (use () )
			BGI0_W[i]=Org_BGI0_W(crnt_hv)
		Else
			BG_W[i]=0
			BGI0_W[i]=1
		Endif
	EndFor

End

Function ListBoxProc_Recipe(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	NVAR NEX_Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel

	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
		case 5: // cell selection plus shift key
			break
		case 6: // begin edit
			break
		case 7: // finish edit
			SLP_NEX_ProcessScan(NEX_Scan_Sel)
			break
		case 13: // checkbox clicked (Igor 6.2 or later)
			break
	endswitch

	return 0
End


Function ListBoxProc_NEX_BGList(lba) : ListBoxControl
	STRUCT WMListboxAction &lba
	
	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	WAVE /T SLP_NEX_ScanParamListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanParamListW
	WAVE /T SLP_NEX_BGListW=root:Package_SLP:NEXAFS:SLP_NEX_BGListW
	NVAR NEX_Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel
	string BG_Selection
	
	if (row!=-1&&row<dimsize(SLP_NEX_BGListW,0)) //Prevent users from clicking outside the ListW's range
	
		switch( lba.eventCode )
			case -1: // control being killed
				break
			case 4: // mouse down
				
				BG_Selection=SLP_NEX_BGListW[row][0]
				
				//Update selection to Scan Param List
				SLP_NEX_ScanParamListW[NEX_Scan_Sel][2]=BG_Selection
				
				//Update BG wave
				SLP_NEX_UpdateBG()
				
				//Process scan
				SLP_NEX_ProcessScan(NEX_Scan_Sel)
	
				break
				
			case 3: // double click
				break
			//case 4: // cell selection
			case 5: // cell selection plus shift key
				break
			case 6: // begin edit
				break
			case 7: // finish edit			
				break
			case 13: // checkbox clicked (Igor 6.2 or later)
				
				break
		endswitch
	else
		Listbox List0, SelRow=0
		//NEX_Scan_Sel=0
	endif
	
	return 0
End

Function SLP_NEX_FindBGPos(BG_Name)
	string BG_Name
	
	Wave /T SLP_NEX_BGListW=root:Package_SLP:NEXAFS:SLP_NEX_BGListW
	
	FindValue /TEXT=BG_Name SLP_NEX_BGListW
	variable col=floor(V_value/dimsize(SLP_NEX_BGListW,0))
	variable row=V_value-col*dimsize(SLP_NEX_BGListW,0)
	Return row
End

Function ListBoxProc_NEX_ScanList(lba) : ListBoxControl
	STRUCT WMListboxAction &lba
	
	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	WAVE /T SLP_NEX_ScanParamListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanParamListW
	
	WAVE /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	SVAR ROI_Sel_List=root:Package_SLP:NEXAFS:ROI_Sel_List
	NVAR NEX_Scan_Sel=root:Package_SLP:NEXAFS:NEX_Scan_Sel
	
	if (row!=-1&&row<dimsize(SLP_NEX_ScanListW,0)) //Prevent users from clicking outside the ListW's range
	
		switch( lba.eventCode )
			case -1: // control being killed
				break
			case 4: // mouse down
				
				SLP_NEX_PlotScan(row)
				//Update selection to global variable
				
				NEX_Scan_Sel=row
				
				//Show selected BG
				string BG_Name=SLP_NEX_ScanParamListW[row][2]
				variable BG_Sel=SLP_NEX_FindBGPos(BG_Name)
				ListBox List1 SelRow=BG_Sel
	
				break
				
			case 3: // double click
				break
			//case 4: // cell selection
			case 5: // cell selection plus shift key
				break
			case 6: // begin edit
				break
			case 7: // finish edit
				SLP_NEX_PlotScan(row)
			
				break
			case 13: // checkbox clicked (Igor 6.2 or later)
				SLP_NEX_PlotScanP1()
				
				break
		endswitch
	else
		Listbox List0, SelRow=0
		//NEX_Scan_Sel=0
	endif
	
	return 0
End

Function ButtonProc_NEX_LoadScans(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_NEX_LoadSingle("")
			
			NVAR NEX_InitFlg=root:Package_SLP:NEXAFS:NEX_InitFlg
			NEX_InitFlg=0
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_ModRecipe(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_NEX_CreateModRecipePanel()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K SLP_NEX_Panel_01
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_Recipe_done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K Modify_Recipe_Panel
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_Recipe_Add(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_NEX_ModRcp("Add")
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_Recipe_Remove(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_NEX_ModRcp("Remove")
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_Recipe_MoveUp(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_NEX_ModRcp("MoveUp")
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_Recipe_MoveDown(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_NEX_ModRcp("MoveDown")
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_NEX_PlotSel(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_NEX_CopynPlotSelected()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_NEX_LoadScan(FileLocation,FileName,ScanName)
	string FileLocation,FileName,ScanName
	
	string Current_folder=getdatafolder(1)
	//Create a subfolder to store the waves
	string WaveLocation="root:NEXAFS:"+ScanName
	newdatafolder /O $WaveLocation
	setdatafolder $WaveLocation
	
	string FileLocation_FName=FileLocation+":"+FileName
	
	string WaveBaseName=ScanName+"_"
	
	//Load .txt file into 2D matrix
	LoadWave/G/M/D/N=$WaveBaseName FileLocation_FName
	//Find the name of the wave (first block - for the first scan)
	string ScanWaveName=stringfromlist(0,S_waveNames)
	
	Wave ScanWave=$ScanWaveName
	
	wave /T SLP_NEX_ScanDisplayListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanDisplayListW
	wave SLP_NEX_ScanDisplaySelListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanDisplaySelListW
	
	wave /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	wave /T SLP_NEX_ScanParamListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanParamListW
	wave /T SLP_NEX_BGListW=root:Package_SLP:NEXAFS:SLP_NEX_BGListW
	wave /T SLP_NEX_DefaultRecipeW=root:Package_SLP:NEXAFS:SLP_NEX_DefaultRecipeW
	
	//Update ScanList
		//Add 1 row at the end with Redimension
	variable N_Scans=dimsize(SLP_NEX_ScanListW,0)
	Redimension /N=(N_Scans+1,dimsize(SLP_NEX_ScanListW,1))SLP_NEX_ScanListW
		//append details in the last row
	SLP_NEX_ScanListW[N_Scans][0]=FileLocation
	SLP_NEX_ScanListW[N_Scans][1]=FileName
	SLP_NEX_ScanListW[N_Scans][2]=WaveLocation
	SLP_NEX_ScanListW[N_Scans][3]=ScanWaveName
	
	//Update ScanDisplayList
	Redimension /N=(N_Scans+1,dimsize(SLP_NEX_ScanDisplayListW,1))SLP_NEX_ScanDisplayListW
	SLP_NEX_ScanDisplayListW[N_Scans][0]=ScanWaveName
	
	variable N_ROIs=dimsize(ScanWave,1)-3
	SLP_NEX_ScanDisplayListW[N_Scans][1]=num2str(N_ROIs) //No. of ROIs
	
	//ROIs selection (select all by default)
	If (N_ROIs==1)
		SLP_NEX_ScanDisplayListW[N_Scans][2]="1" 
	Else
		SLP_NEX_ScanDisplayListW[N_Scans][2]="1-"+num2str(N_ROIs)
	Endif
	
	Redimension /N=(N_Scans+1,dimsize(SLP_NEX_ScanDisplayListW,1))SLP_NEX_ScanDisplaySelListW
	SLP_NEX_ScanDisplaySelListW[N_Scans][0]=0
	SLP_NEX_ScanDisplaySelListW[N_Scans][1]=0
	SLP_NEX_ScanDisplaySelListW[N_Scans][2]=2
	SLP_NEX_ScanDisplaySelListW[N_Scans][3]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][4]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][5]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][6]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][7]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][8]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][9]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][10]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][11]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][12]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][13]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][14]=32
	SLP_NEX_ScanDisplaySelListW[N_Scans][15]=32
	
	
	//Update ScanParamList
	Redimension /N=(dimsize(SLP_NEX_ScanParamListW,0)+1,dimsize(SLP_NEX_ScanParamListW,1))SLP_NEX_ScanParamListW
	SLP_NEX_ScanParamListW[(dimsize(SLP_NEX_ScanParamListW,0)-1)][0]=ScanWaveName //Name
	SLP_NEX_ScanParamListW[(dimsize(SLP_NEX_ScanParamListW,0)-1)][1]=num2str(dimsize(ScanWave,1)-3) //Number of ROI
	SLP_NEX_ScanParamListW[(dimsize(SLP_NEX_ScanParamListW,0)-1)][2]="None" //Name of BG
	
	SLP_NEX_SplitColumn(WaveLocation,ScanWaveName,dimsize(SLP_NEX_ScanParamListW,0)-1)
	
	setdatafolder $Current_folder
End

Function SLP_NEX_SplitColumn(WaveLocation,ScanW_Name,ScanListPos)
	string WaveLocation,ScanW_Name
	variable ScanListPos
	
	WAVE /T SLP_NEX_ScanListW=root:Package_SLP:NEXAFS:SLP_NEX_ScanListW
	
	string Current_folder=getdatafolder(1)
	setDataFolder $WaveLocation
	
	string ScanW_FName=WaveLocation+":"+ScanW_Name
	Wave ScanW=$ScanW_FName
	wave SLP_NEX_DefaultRecipeW=root:Package_SLP:NEXAFS:SLP_NEX_DefaultRecipeW
	
	variable i=0
	string New_ScanW_Name=""
	string Suffix=""
	string I0_WName=""
	string nrm_WName=""
	string prc_WName=""
	string phv_WName=""
	string BG_WName=""
	string BGI0_WName=""
	string Rcp_WName=""
	
	//Create recipe (copying from default recipe)
	Rcp_WName=ScanW_Name+"_rcp" //Recipe W
	Duplicate /O SLP_NEX_DefaultRecipeW, $Rcp_WName /Wave=Rcp_W //Recipe copied from Default
	
	For (i=0;i<dimsize(ScanW,1);i+=1)
		If (i==0)
			Suffix="_hv"
		ElseIf (i==1)
			Suffix="_Ie"
		ElseIf (i==2)
			Suffix="_I0"
		Elseif (i>2)
			Suffix="_ROI"+num2str(i-2)
		Endif
		New_ScanW_Name=ScanW_FName+Suffix
		Duplicate /O /R=[][i] ScanW,$New_ScanW_Name /Wave=New_ScanW
		Redimension /N=(dimsize(New_ScanW,0)) New_ScanW
		//Update the ScanList
		SLP_NEX_ScanListW[ScanListPos][i+4]=ScanW_Name+Suffix
		
		//Create Normalized NEXAFS spectrum for each ROI (divided by I0)
		if (i==0)
			phv_WName=ScanW_Name+"_hvp" //Processed energy scale (for shifting the x scale)
			Duplicate /O /R=[][i] New_ScanW,$phv_WName /Wave=hvp_ScanW
			
			BG_WName=ScanW_Name+"_bg" //Background W
			Duplicate /O New_ScanW, $BG_WName /Wave=Bg_ScanW //Background
			Bg_ScanW=0 //Set BG to zero (keep only the dimensions of the wave)
			BGI0_WName=ScanW_Name+"_bgI0" //Background W
			Duplicate /O New_ScanW, $BGI0_WName /Wave=BgI0_ScanW //Background
			BgI0_ScanW=1 //Set BG to zero (keep only the dimensions of the wave)
			
		Endif
		If (i>2)
			I0_WName=ScanW_Name+"_I0" 
			Nrm_WName=ScanW_Name+Suffix+"_nrm" //I0 normed W
			Prc_WName=ScanW_Name+Suffix+"_prc" //Processed W
			
			Wave I0_W=$I0_WName
			Duplicate /O New_ScanW, $Nrm_WName /Wave=Nrm_ScanW //I0 normallized scan
			Nrm_ScanW/=I0_W
			Duplicate /O New_ScanW, $Prc_WName /Wave=Prc_ScanW //Just copy for processing later
			
		Endif
		
	EndFor
	
	
	
	SLP_NEX_ProcessScan(dimsize(SLP_NEX_ScanListW,0)-1)
	
	setdatafolder $Current_folder
End

Function SLP_NEX_LoadSingle(FileFPath)
	string FileFPath //Path to the NEXAFS data *w/o ":" at the end! If the location is "", then it will ask to choose a folder.
		
	//If "", then ask to choose the .txt file.
	If (stringmatch(FileFPath,""))
		GetFileFolderInfo /Q
		FileFPath=S_Path
	EndIf
	
	String FileName=stringfromlist(itemsinlist(S_Path,":")-1,S_Path,":")
	String RemoveString=":"+FileName
	String FileLocation=RemoveEnding(S_Path,RemoveString)
	
	String New_WaveName="NEX_"+StringFromList(0,FileName,".")
	
	Do
	
	New_WaveName=SLP_Util_WNameSuggest(New_WaveName,0,15)
	Prompt New_WaveName,"Scan name"
	DoPrompt "Enter scan name",New_WaveName
	
	While (SLP_Util_WNameCheck(New_WaveName,15)!=0)
	
	SLP_NEX_LoadScan(FileLocation,FileName,New_WaveName)
	
End

Function SLP_NEX_LoadBatch(NEX_Folder_Location)
	string NEX_Folder_Location //Path to the NEXAFS data *w/o ":" at the end! If the location is "", then it will ask to choose a folder.
	
	SVAR NEX_ScanList=root:Package_SLP:NEXAFS:NEX_ScanList
	
	//If "", then ask to choose a folder.
	If (stringmatch(NEX_Folder_Location,""))
		GetFileFolderInfo /D /Q
		NEX_Folder_Location=S_Path
	Endif
	
	NewPath /Q /O SLP_NEX_PathName, NEX_Folder_Location
	
	string Current_ScanList=indexedDir(SLP_NEX_PathName,-1,0)
	string NewScan_List=""
	
	//Compare to see new scans
	variable i=0
	For (i=0;i<itemsinlist(Current_ScanList);i+=1)
		If(whichListItem(stringfromlist(i,Current_ScanList),NEX_ScanList)==-1) //Item not found on the previous list
			NewScan_List=Addlistitem(stringfromlist(i,Current_ScanList),NewScan_List,";",inf)
		Endif
	Endfor
	
	//Update to NEX_ScanList
	NEX_ScanList=Current_ScanList
	
	Print NewScan_List
	
	//Load new scans
	i=0
	string New_WaveLocation=""
	string New_FileName=""
	string New_FileFName=""
	string New_WaveName=""
	
	For (i=0;i<itemsinlist(NewScan_List);i+=1)
		New_WaveLocation=NEX_Folder_Location+stringfromList(i,NewScan_List) //[NOTE] got to be careful with +":"+
		New_FileName=stringfromList(i,NewScan_List)+"_Data.txt"
		New_FileFName= New_WaveLocation+":"+New_FileName
		New_WaveName="NEX_"+stringfromList(i,NewScan_List)
		
		//Check whether the .txt file exist. If so, then load the scan
		GetFileFolderInfo /Z=1 /Q New_FileFName
		If (V_flag==0)
			SLP_NEX_LoadScan(New_WaveLocation,New_FileName,New_WaveName)
		Endif
	Endfor
	
End



Function CheckProc00(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_NEX_PlotMatrix[0][0]=checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc10(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_NEX_PlotMatrix[1][0]=checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc20(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_NEX_PlotMatrix[2][0]=checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc01(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_NEX_PlotMatrix[0][1]=checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc11(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_NEX_PlotMatrix[1][1]=checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc21(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_NEX_PlotMatrix[2][1]=checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc02(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_NEX_PlotMatrix[0][2]=checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc12(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_NEX_PlotMatrix[1][2]=checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc22(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	
	WAVE SLP_NEX_PlotMatrix=root:Package_SLP:NEXAFS:SLP_NEX_PlotMatrix
	
	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_NEX_PlotMatrix[2][2]=checked
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_DXPS_init()

	string Current_folder=getdatafolder(1)
	NewDataFolder /O  root:Package_SLP
	NewDataFolder /O  root:Package_SLP:DispXPS
	
	SetDataFolder root:Package_SLP:DispXPS
	
	variable /G Threshold=25
	variable /G MinSize=500
	variable /G Offset=20
	variable /G LPLength=10
	variable /G LPWidth=5
	variable /G NLines=15
	variable /G DispFactor=0.0435
	variable /G CenterPointX=150
	variable /G CenterPointY= 150	
	
	Make /O/T/N=(5,3) SLP_DXPS_XPSParamW
	SLP_DXPS_XPSParamW[0][0]="STV begin"
	SLP_DXPS_XPSParamW[1][0]="STV end"
	SLP_DXPS_XPSParamW[2][0]="STV step"
	SLP_DXPS_XPSParamW[3][0]="hv"
	SLP_DXPS_XPSParamW[4][0]="Analyser WF"
	SLP_DXPS_XPSParamW[][2]="eV"
	Make /O/N=(5,3) SLP_DXPS_XPSParamSelW
	SLP_DXPS_XPSParamSelW[][1]=2
	SLP_DXPS_XPSParamSelW[1][1]=0
	
	Make /O/T/N=(0,64) SLP_DXPS_ScanListW
	SetDimLabel 1,0,ScanName,SLP_DXPS_ScanListW
	SetDimLabel 1,1,DataFolder,SLP_DXPS_ScanListW
	SetDimLabel 1,2,RawDataDir,SLP_DXPS_ScanListW
	SetDimLabel 1,3,DateModified,SLP_DXPS_ScanListW
	SetDimLabel 1,4,DateCreate,SLP_DXPS_ScanListW
	SetDimLabel 1,5,Threshold,SLP_DXPS_ScanListW
	SetDimLabel 1,6,MinSize,SLP_DXPS_ScanListW
	SetDimLabel 1,7,Offset,SLP_DXPS_ScanListW
	SetDimLabel 1,8,LPLength,SLP_DXPS_ScanListW
	SetDimLabel 1,9,LPWidth,SLP_DXPS_ScanListW
	SetDimLabel 1,10,NLines,SLP_DXPS_ScanListW
	SetDimLabel 1,11,DispFactor,SLP_DXPS_ScanListW
	SetDimLabel 1,12,CenterPointX,SLP_DXPS_ScanListW
	SetDimLabel 1,13,CenterPointY,SLP_DXPS_ScanListW
	SetDimLabel 1,14,STV_Start,SLP_DXPS_ScanListW
	SetDimLabel 1,15,STV_End,SLP_DXPS_ScanListW
	SetDimLabel 1,16,STV_Step,SLP_DXPS_ScanListW
	SetDimLabel 1,17,hv,SLP_DXPS_ScanListW
	SetDimLabel 1,18,AnalyserWF,SLP_DXPS_ScanListW
	SetDimLabel 1,19,x1,SLP_DXPS_ScanListW
	SetDimLabel 1,20,y1,SLP_DXPS_ScanListW
	SetDimLabel 1,21,x2,SLP_DXPS_ScanListW
	SetDimLabel 1,22,y2,SLP_DXPS_ScanListW
	SetDimLabel 1,23,Scan_Notes,SLP_DXPS_ScanListW
	SetDimLabel 1,24,CopiedDispL_Flg,SLP_DXPS_ScanListW
	SetDimLabel 1,25,RawDataDel_Flg,SLP_DXPS_ScanListW
	SetDimLabel 1,26,BE_Flg,SLP_DXPS_ScanListW
	SetDimLabel 1,27,PkAsgn_Flg,SLP_DXPS_ScanListW
	SetDimLabel 1,28,CursorPos,SLP_DXPS_ScanListW
	
	Make /O/T/N=(0,16) SLP_DXPS_ScanListDisplayW
	Make /O/N=(0,16) SLP_DXPS_ScanListDisplaySelW
	SLP_DXPS_ScanListDisplaySelW[][0]=32
	SetDimLabel 1,0,Sel,SLP_DXPS_ScanListDisplayW
	SetDimLabel 1,1,Scan_Name,SLP_DXPS_ScanListDisplayW
	SetDimLabel 1,2,Scan_Notes,SLP_DXPS_ScanListDisplayW
	
	Make /O/N=(5,5) SLP_DXPS_DummyImg1
	Make /O/N=(5,5) SLP_DXPS_DummyImg2
	Make /O/N=(5,5) SLP_DXPS_DummyImg3
	Make /O/N=(5) SLP_DXPS_DummySpectrum
	
	Setdatafolder $Current_folder
End

Function SLP_DXPS_DispPeakAssign(CursorHook_Flg)
	variable CursorHook_Flg
	variable BE_Window=1 //eV
	
	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW	
	String VolName=SLP_DXPS_ScanListW[SelRow][0]
	
	Variable BE_Flg=str2num(SLP_DXPS_ScanListW[SelRow][26])
	Variable PeakAssign_Flg=str2num(SLP_DXPS_ScanListW[SelRow][27])
	Variable BE_Pos=str2num(SLP_DXPS_ScanListW[SelRow][28])
	Variable X_Pos=0
	
	variable STV_Begin=str2num(SLP_DXPS_ScanListW[SelRow][14])
	variable STV_End=str2num(SLP_DXPS_ScanListW[SelRow][15])
	variable hv=str2num(SLP_DXPS_ScanListW[SelRow][17])
	variable aWF=str2num(SLP_DXPS_ScanListW[SelRow][18])
	Variable MidBE=hv-aWF-(STV_Begin+STV_End)/2
	
	Variable KE_Pos=0
	
	If (PeakAssign_Flg)
		String TraceName=""
		//Check whether the x-scale is BE or KE
		If (BE_Flg) //BE is used
			TraceName=VolName+"_CmbndBE"
		Else //KE is used - change KE to BE
			TraceName=VolName+"_Cmbnd"
		Endif
		
		If (Numtype(BE_Pos)==2) //checked whether cursor position has been recorded
			SLP_DXPS_ScanListW[SelRow][28]=num2str(MidBE)
		EndIf

		If (!CursorHook_Flg) //If not used in cursor hook = change the cursor to the position
			If (BE_Flg==1)
				X_Pos=str2num(SLP_DXPS_ScanListW[SelRow][28])
			else
				X_Pos=hv-aWF-str2num(SLP_DXPS_ScanListW[SelRow][28])
			EndIf
			Cursor /W=SLP_DispXPS_Panel_01#DX_MergedSpectra A $TraceName X_Pos
		Endif

		X_Pos=xcsr(A,"SLP_DispXPS_Panel_01#DX_MergedSpectra")
		
		If (BE_Flg==1) //BE is used
			BE_Pos=X_Pos
			KE_Pos=hv-X_Pos-aWF
		Else //KE is used - change KE to BE
			BE_Pos=hv-X_Pos-aWF //convert to BE before looking up the BE table
			KE_Pos=X_Pos
		Endif
		
		SLP_DXPS_ScanListW[SelRow][28]=num2str(BE_Pos)
		TextBox /C/W=SLP_DispXPS_Panel_01#DX_MergedSpectra /N=PeakAssignment1  SLP_Util_FindElement(BE_Pos,BE_Window)
		TextBox /A=LT /C/W=SLP_DispXPS_Panel_01#DX_MergedSpectra /N=PeakAssignment2  SLP_Util_FindAuger(KE_Pos,BE_Window)
		
	Else
		Cursor /K/W=SLP_DispXPS_Panel_01#DX_MergedSpectra A
		TextBox/K/W=SLP_DispXPS_Panel_01#DX_MergedSpectra /N=PeakAssignment1	
		TextBox/K/W=SLP_DispXPS_Panel_01#DX_MergedSpectra /N=PeakAssignment2			
	EndIf

End

Function SLP_DXPS_CreatePanel1() : Panel
	
	//Initialize DXPS procedures if it is the first time that this panel is used
	If (!DataFolderExists("root:Package_SLP:DispXPS" ))
		SLP_DXPS_init()
	Endif
	
	//Util INIT (if not done so)
	if (!DataFolderExists("root:Package_SLP:Util"))
		SLP_Util_Init()
	Endif

	DoWindow /K SLP_DispXPS_Panel_01
	PauseUpdate; Silent 1		// building window...
	
	//String PkgLocation="root:Package_SLP:DispXPS:"
	
	NewPanel /W=(73,75,898,675) /N=SLP_DispXPS_Panel_01
	
	SetDrawLayer UserBack
	SetDrawEnv fsize= 14
	DrawText 9,25,"Dispersive XPS data extraction"
	DrawText 16,45,"Threshold"
	DrawText 184,45,"Dispersive line"
	DrawText 100,99,"variable /G"
	DrawText 4,203,"Shifted individual spectra"
	DrawText 7,407,"Merged spectrum"
	DrawText 352,47,"2D unshifted spectra"
	DrawText 530,360,"Disp. XPS scan list"
	DrawText 524,44,"Dispersive line creation"
	DrawText 528,203,"Energy correction"
	DrawText 652,203,"XPS parameters"
	
	SetVariable SetVar_Threshold,pos={524,49},size={100,15},title="Threshold",proc=SetVarProc_DXPS_FindDispLine
	SetVariable SetVar_Threshold,value= root:Package_SLP:DispXPS:Threshold
	SetVariable SetVar_MinSize,pos={524,69},size={100,15},title="Min. Size",proc=SetVarProc_DXPS_FindDispLine
	SetVariable SetVar_MinSize,value= root:Package_SLP:DispXPS:MinSize
	SetVariable SetVar_Offset,pos={524,89},size={100,15},title="Offset",proc=SetVarProc_DXPS_PLine
	SetVariable SetVar_Offset,value= root:Package_SLP:DispXPS:Offset
	SetVariable SetVar_LPLength,pos={644,69},size={100,15},title="LP Length",proc=SetVarProc_DXPS_PLine
	SetVariable SetVar_LPLength,value= root:Package_SLP:DispXPS:LPLength
	SetVariable SetVar_LPWidth,pos={644,89},size={100,15},title="LP Width",proc=SetVarProc_DXPS_LPWidth
	SetVariable SetVar_LPWidth,value= root:Package_SLP:DispXPS:LPWidth
	SetVariable SetVar_NLines,pos={644,49},size={100,15},title="No. of Lines",proc=SetVarProc_DXPS_PLine
	SetVariable SetVar_NLines,value= root:Package_SLP:DispXPS:NLines
	SetVariable SetVar_DispFactor,pos={530,207},size={120,15},title="Disp. Factor",proc=SetVarProc_DXPS_EnCorrection
	SetVariable SetVar_DispFactor,value= root:Package_SLP:DispXPS:DispFactor,limits={0.001,10,0.0005}
	SetVariable SetVar_CenterPointX,pos={530,227},size={120,15},title="X\\B0",proc=SetVarProc_DXPS_EnCorrection
	SetVariable SetVar_CenterPointX,value= root:Package_SLP:DispXPS:CenterPointX
	SetVariable SetVar_CenterPointY,pos={530,247},size={120,15},title="Y\\B0",proc=SetVarProc_DXPS_EnCorrection
	SetVariable SetVar_CenterPointY,value= root:Package_SLP:DispXPS:CenterPointY
	
	
	ListBox List_ScansList,pos={530,369},size={274,180},mode=2,proc=ListBoxProc_ScanList
	ListBox List_ScansList,ListWave=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplayW
	ListBox List_ScansList,SelWave=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplaySelW
	ListBox List_ScansList,widths={20,70,250,0,0,0,0,0,0,0,0,0,0,0,0,0}
	
	ListBox List_XPSParam,pos={652,205},size={155,109},ListWave=root:Package_SLP:DispXPS:SLP_DXPS_XPSParamW
	ListBox List_XPSParam,widths={45,25,20},proc=ListBoxProc_DXPS_XPSParam
	ListBox List_XPSParam,SelWave=root:Package_SLP:DispXPS:SLP_DXPS_XPSParamSelW
	
	Button button1,pos={415,390},size={89,16},title="Plot",proc=ButtonProc_DXPS_ExpCmbnSpectrm
	Button button1,fSize=10
	Button Button_Done,pos={750,574},size={59,16},title="Done",proc=ButtonProc_DXPS_Done
	Button Button_Done,fSize=10
	Button Button_Correct1stInt,pos={265,186},size={117,16},title="Correct 1st intensity..",proc=ButtonProc_DXPS_Correct1stInt
	Button Button_Correct1stInt,fSize=10
	Button Button_SelAll,pos={530,551},size={82,20},title="Select all",proc=ButtonProc_DXPS_SelAll
	Button Button_SelAll,fSize=10
	Button Button_SelNone,pos={617,551},size={82,20},title="Select none",proc=ButtonProc_DXPS_SelNone
	Button Button_SelNone,fSize=10
	Button button6,pos={530,573},size={97,20},title="Delete selected..",proc=ButtonProc_DXPS_DelDataSet
	Button button6,fSize=10
	Button Button_Restore,pos={640,340},size={80,20},title="Restore data..",proc=ButtonProc_DXPS_RestoreRawData
	Button Button_Restore,fSize=10
	Button Button_LoadScan,pos={730,340},size={80,20},title="Load scan..",proc=ButtonProc_DXPS_LoadScan
	Button Button_LoadScan,fSize=10
	Button button8,pos={415,187},size={89,16},title="Plot"
	Button button8,fSize=10
	Button Button_DelRawData,pos={705,551},size={97,20},title="Remove raw data",proc=ButtonProc_DXPS_DelRawData
	Button Button_DelRawData,fSize=10
	
	CheckBox CheckBox_PeakID,pos={210,390},size={105,16},fSize=10,title="Peak assignments",proc=CheckProc_DXPS_PkAsgn
	CheckBox CheckBox_BE,pos={158,390},size={105,16},fSize=10,title="B.E.",proc=CheckProc_DXPS_BE
	
	//Button button0,pos={210,390},size={105,16},title="Peak identification.."
	//Button button0,fSize=10
	//Button button01,pos={158,390},size={50,16},title="BE/KE"
	//Button button01,fSize=10

	Button button07,pos={317,390},size={97,16},title="Fit.."
	Button button07,fSize=10
	Button button08,pos={635,573},size={110,20},title="Export selected to 2D",proc=ButtonProc_DXPS_Export2D
	Button button08,fSize=10
	Button Button_CopyDispL,pos={525,114},size={150,16},title="Copy dispersive line from..",proc=ButtonProc_DXPS_CopyDispL
	Button Button_CopyDispL,fSize=10
	Button Button_EditDispL ,pos={680,114},title="Manually edit disp. line",size={130,16},proc=ButtonProc_DXPS_EditDispL
	Button Button_EditDispL,fSize=10
	Button Button_CreateSpectra,pos={525,134}, size={270,16}, title="Create spectra",proc=ButtonProc_DXPS_CreateSpectra
	Button Button_CreateSpectra,fSize=10
	
	Wave SLP_DXPS_DummyImg1=root:Package_SLP:DispXPS:SLP_DXPS_DummyImg1
	Wave SLP_DXPS_DummyImg2=root:Package_SLP:DispXPS:SLP_DXPS_DummyImg2
	Wave SLP_DXPS_DummyImg3=root:Package_SLP:DispXPS:SLP_DXPS_DummyImg3
	Wave SLP_DXPS_DummySpectrum=root:Package_SLP:DispXPS:SLP_DXPS_DummySpectrum
	
	Display /W=(10,55,170,180)/HOST=SLP_DispXPS_Panel_01 /N=DX_ThImg 
	Appendimage SLP_DXPS_DummyImg1
	ModifyGraph tick=3,noLabel=2,standoff=0,margin=5
	
	Display /W=(180,55,340,180)/HOST=SLP_DispXPS_Panel_01 /N=DX_DispLineImg 
	Appendimage SLP_DXPS_DummyImg2
	ModifyGraph tick=3,noLabel=2,standoff=0,margin=5
	
	Display /W=(350,55,510,180)/HOST=SLP_DispXPS_Panel_01 /N=DX_2DSpectra 
	Appendimage SLP_DXPS_DummyImg3
	ModifyGraph tick=3,noLabel=2,standoff=0,margin=5
	ModifyImage SLP_DXPS_DummyImg3 ctab= {*,*,Rainbow,0}
	
	Display/W=(5,206,504,384)/HOST=SLP_DispXPS_Panel_01 /N=DX_ShiftedSpectra SLP_DXPS_DummySpectrum
	Modifygraph mirror=1,tick=2,minor=1
	Label bottom "Start voltage (eV)"

	Display/W=(6,410,504,589)/HOST=SLP_DispXPS_Panel_01 /N=DX_MergedSpectra SLP_DXPS_DummySpectrum
	Modifygraph mirror=1,tick=2,minor=1
	Label bottom "Start voltage (eV)"
	
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	If (!stringmatch(SLP_DXPS_ScanListW[0][0],""))
		SLP_DXPS_DisplaySelectedData(SLP_DXPS_ScanListW[0][0])
		//Display 1st scan if there is already one
	EndIf
	
	//Create hook
	setwindow SLP_DispXPS_Panel_01,hook(PkAsgn)=SLP_DXPS_CursorHook
	
	//Colorize
	modifypanel /W=SLP_DispXPS_Panel_01 cbRGB=(40000,50000,60000)
	Modifygraph /W=SLP_DispXPS_Panel_01#DX_THIMG wbRGB=(37500,47500,60000)
	Modifygraph /W=SLP_DispXPS_Panel_01#DX_DispLineImg wbRGB=(37500,47500,60000)
	Modifygraph /W=SLP_DispXPS_Panel_01#DX_2DSpectra wbRGB=(37500,47500,60000)
	Modifygraph /W=SLP_DispXPS_Panel_01#DX_ShiftedSpectra wbRGB=(37500,47500,60000)
	Modifygraph /W=SLP_DispXPS_Panel_01#DX_MergedSpectra wbRGB=(37500,47500,60000)
	
End

Function SLP_DXPS_CursorHook(s) //HOOK FUNCTION to see spectrum at different (x,y) by moving a cursor

	STRUCT WMWinHookStruct &s

	Variable hookResult = 0

		switch(s.eventCode)
			case 7:				// Activate
				GetWindow SLP_DispXPS_Panel_01 activeSW
				String activeSubwindow = S_value
				
				//Hook for Display peak assignment
				if (CmpStr(activeSubwindow,"SLP_DispXPS_Panel_01#DX_MergedSpectra") == 0&&!stringmatch("",CsrInfo(A,"SLP_DispXPS_Panel_01#DX_MergedSpectra")))
					SLP_DXPS_DispPeakAssign(1) //use '1' for CursorHook
				Endif
				
				break
		endswitch

	return hookResult		// 0 if nothing done, else 1
End

Function SLP_DXPS_DelScan(VolName)
	String VolName
	
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	wave /T SLP_DXPS_ScanListDisplayW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplayW
	wave SLP_DXPS_ScanListDisplaySelW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplaySelW
	
	FindValue /TEXT=VolName /TXOP=6 SLP_DXPS_ScanListW
	variable col=floor(V_value/dimsize(SLP_DXPS_ScanListW,0))
	variable DataRow=V_value-col*dimsize(SLP_DXPS_ScanListW,0)
	
	String DataFolder_FName=SLP_DXPS_ScanListW[DataRow][1]
	
	//killDataFolder /Z $DataFolder_FName
	killDataFolder $DataFolder_FName
	variable DeleteFolderError_Flg=V_Flag
	
	if (DeleteFolderError_Flg==0) 
		//Only update ScanListW if Image folder can be deleted
		DeletePoints DataRow,1, SLP_DXPS_ScanListW
		DeletePoints DataRow,1, SLP_DXPS_ScanListDisplayW
		DeletePoints DataRow,1, SLP_DXPS_ScanListDisplaySelW
	Endif
	Return DeleteFolderError_Flg
End

Function SLP_DXPS_DelScanBatch()
	
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	wave /T SLP_DXPS_ScanListDisplayW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplayW
	wave SLP_DXPS_ScanListDisplaySelW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplaySelW
	
	variable i=0
	String VolName=""
	variable DelError=0
	String ErrorTxt=""
	String WarnTxt=""
	
	For (i=0;i<dimsize(SLP_DXPS_ScanListDisplaySelW,0);i+=1)
		If (SLP_DXPS_ScanListDisplaySelW[i][0]==48)
			VolName=SLP_DXPS_ScanListW[i][0]
			WarnTxt="Delete scan: "+VolName+" ?"
			DoAlert 1,WarnTxt
			
			If (V_flag==1) //If user clicks 'Yes'			
				DelError=SLP_DXPS_DelScan(VolName)
				i-=1 //Go back one row
			EndIf
			
			If (DelError)
				ErrorTxt="Error deleting scan: "+VolName+"\r wave(s) in the dataset are being used somewhere in the current project"
				DoAlert 0,ErrorTxt
			Endif
			DoUpdate
		Endif
	EndFor
End

Function ButtonProc_DXPS_DelDataSet(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			wave SLP_DXPS_ScanListDisplaySelW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplaySelW
			
			//Find the current selected row
		  	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			
			
			//Change dataset selection if the current one is going to be delected
			if (SLP_DXPS_ScanListDisplaySelW[SelRow][0]==48)
				//Find the first non-selected DataSet from the top	
				variable i=0
				For (i=0;i<dimsize(SLP_DXPS_ScanListDisplaySelW,0)&&SLP_DXPS_ScanListDisplaySelW[i][0]==48;i+=1)
					DoUpdate
				Endfor
				//i is now the index of the first non-selected DataSet
				
				If (i<dimsize(SLP_DXPS_ScanListDisplaySelW,0))
					ListBox List_ScansList SelRow=i
					SLP_DXPS_DisplaySelectedData(SLP_DXPS_ScanListW[i][0])
				Else //All datasets have been selected
					SLP_DXPS_init()
				Endif
					
				
			endif
			
			SLP_DXPS_DelScanBatch()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_DXPS_EditDispLine()
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	//Find the current selected row
  	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	
	string DataFolder=SLP_DXPS_ScanListW[SelRow][1]
	string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
	string ImgVol_IntgW_FName= ImgVolW_FName+"_Intg"
	string DispLine_XWave_FName=ImgVolW_FName+"_DispLX"
	string DispLine_YWave_FName=ImgVolW_FName+"_DispLY"
	
	Wave ImgVol_IntgW=$ImgVol_IntgW_FName
	Wave DispLine_XWave=$DispLine_XWave_FName
	Wave DispLine_YWave=$DispLine_YWave_FName
	
	DoWindow /K Edit_DispL
	Display /N=Edit_DispL 
	AppendImage ImgVol_IntgW
	string ImgList=ImageNameList("Edit_DispL",";")
	string ImgName=stringFromList(0,ImgList)
	ModifyImage $ImgName ctab= {*,*,YellowHot,1}
	AppendToGraph /W=Edit_DispL DispLine_YWave vs DispLine_XWave
	ModifyGraph /W=Edit_DispL lsize=3,rgb=(32768,54615,65535),WbRGB=(60000,60000,60000)
	Modifygraph /W=Edit_DispL margin(left)=30,margin(right)=30,mirror=1,fsize=8
	Modifygraph /W=Edit_DispL margin(top)=40,margin(bottom)=40,width=300,height=280,minor=1,standoff=0
	//ModifyGraph /W=Edit_DispL width=0,height=0
	
	Button Button_EdtDispL_EditDispL,pos={40,5},size={120,16},title="Edit dispersive line",fsize=10,proc=ButtonProc_EdtDispL_EditDispL
	Button Button_EdtDispL_Undo,pos={180,5},size={50,16},title="Undo",fsize=10,proc=ButtonProc_EdtDispL_Undo
	Button Button_EdtDispL_Save,pos={240,5},size={50,16},title="Save",fsize=10,proc=ButtonProc_EdtDispL_Save
	Button Button_EdtDispL_Cancel,pos={300,5},size={50,16},title="Cancel",fsize=10,proc=ButtonProc_EdtDispL_Cancel
End

Function ButtonProc_EdtDispL_EditDispL(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			//Find the current selected row
		  	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			
			string DataFolder=SLP_DXPS_ScanListW[SelRow][1]
			string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
			string DispLine_YWave_FName=ImgVolW_FName+"_DispLY"
			Wave DispLine_YWave=$DispLine_YWave_FName
			
			string TraceList=TraceNameList("Edit_DispL",";",1)
			string TraceName=stringFromList(0,TraceList)
			
			GraphWaveEdit /NI $TraceName
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_EdtDispL_Undo(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			//Find the current selected row
		  	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			
			string DataFolder=SLP_DXPS_ScanListW[SelRow][1]
			string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
			string DispLine_XWave_FName=ImgVolW_FName+"_DispLX"
			string DispLine_YWave_FName=ImgVolW_FName+"_DispLY"
	
			Wave DispLine_XWave=$DispLine_XWave_FName
			Wave DispLine_YWave=$DispLine_YWave_FName
			
			//Save new Disp. line coord. to ScanListW
			DispLine_XWave[0]=str2num(SLP_DXPS_ScanListW[SelRow][19])
			DispLine_YWave[0]=str2num(SLP_DXPS_ScanListW[SelRow][20])
			DispLine_XWave[1]=str2num(SLP_DXPS_ScanListW[SelRow][21])
			DispLine_YWave[1]=str2num(SLP_DXPS_ScanListW[SelRow][22])
			
			GraphNormal

			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_EdtDispL_Save(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			//Find the current selected row
		  	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			
			string ImgVolW_Name=SLP_DXPS_ScanListW[SelRow][0]
			string DataFolder=SLP_DXPS_ScanListW[SelRow][1]
			string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
			string DispLine_XWave_FName=ImgVolW_FName+"_DispLX"
			string DispLine_YWave_FName=ImgVolW_FName+"_DispLY"
	
			Wave DispLine_XWave=$DispLine_XWave_FName
			Wave DispLine_YWave=$DispLine_YWave_FName
			
			//Save new Disp. line coord. to ScanListW
			SLP_DXPS_ScanListW[SelRow][19]=num2str(DispLine_XWave[0])
			SLP_DXPS_ScanListW[SelRow][20]=num2str(DispLine_YWave[0])
			SLP_DXPS_ScanListW[SelRow][21]=num2str(DispLine_XWave[1])
			SLP_DXPS_ScanListW[SelRow][22]=num2str(DispLine_YWave[1])
			
			//Change colour of the Th, MinSize controls to indicate that the Disp.L has been manually edited
			SetVariable  SetVar_Threshold valueColor=(39321,39321,39321),win=SLP_DispXPS_Panel_01
  			SetVariable SetVar_MinSize valueColor=(39321,39321,39321),win=SLP_DispXPS_Panel_01
			SLP_DXPS_ScanListW[SelRow][24]="y"
			
			//Run find P. Lines
			NVAR Offset=root:Package_SLP:DispXPS:Offset
			NVAR LPLength=root:Package_SLP:DispXPS:LPLength
			NVAR NLines=root:Package_SLP:DispXPS:NLines
			SLP_DXPS_CreateMultiPLines(ImgVolW_Name,Offset,LPLength,NLines)
			
			GraphNormal
			DoWindow/K Edit_DispL
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_EdtDispL_Cancel(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// click code here
			Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			//Find the current selected row
		  	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			
			string DataFolder=SLP_DXPS_ScanListW[SelRow][1]
			string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
			string DispLine_XWave_FName=ImgVolW_FName+"_DispLX"
			string DispLine_YWave_FName=ImgVolW_FName+"_DispLY"
	
			Wave DispLine_XWave=$DispLine_XWave_FName
			Wave DispLine_YWave=$DispLine_YWave_FName
			
			//Save new Disp. line coord. to ScanListW
			DispLine_XWave[0]=str2num(SLP_DXPS_ScanListW[SelRow][19])
			DispLine_YWave[0]=str2num(SLP_DXPS_ScanListW[SelRow][20])
			DispLine_XWave[1]=str2num(SLP_DXPS_ScanListW[SelRow][21])
			DispLine_YWave[1]=str2num(SLP_DXPS_ScanListW[SelRow][22])
			
			GraphNormal
			DoWindow/K Edit_DispL
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function /S SLP_DXPS_CreateNotes(ScanName)
	String ScanName
	
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	
	Variable DataRow=SLP_DXPS_FindDataRow(ScanName)
	
	String DXPS_Notes=""
	DXPS_Notes+="\rExtraction parameters"
	DXPS_Notes+="\rScan name: "+SLP_DXPS_ScanListW[DataRow][0]
	DXPS_Notes+="\rData folder: "+SLP_DXPS_ScanListW[DataRow][1]
	DXPS_Notes+="\rRaw data directory: "+SLP_DXPS_ScanListW[DataRow][2]
	DXPS_Notes+="\rDate modified: "+SLP_DXPS_ScanListW[DataRow][3]
	DXPS_Notes+="\rDate create: "+SLP_DXPS_ScanListW[DataRow][4]
	DXPS_Notes+="\rThreshold: "+SLP_DXPS_ScanListW[DataRow][5]
	DXPS_Notes+="\rMin. size: "+SLP_DXPS_ScanListW[DataRow][6]
	DXPS_Notes+="\rOffset: "+SLP_DXPS_ScanListW[DataRow][7]
	DXPS_Notes+="\rLPLength: "+SLP_DXPS_ScanListW[DataRow][8]
	DXPS_Notes+="\rLPWidth: "+SLP_DXPS_ScanListW[DataRow][9]
	DXPS_Notes+="\rNo. of LP lines: "+SLP_DXPS_ScanListW[DataRow][10]
	DXPS_Notes+="\rDispersion factor: "+SLP_DXPS_ScanListW[DataRow][11]
	DXPS_Notes+="\rx0: "+SLP_DXPS_ScanListW[DataRow][12]
	DXPS_Notes+="\ry0: "+SLP_DXPS_ScanListW[DataRow][13]
	DXPS_Notes+="\rSTV start: "+SLP_DXPS_ScanListW[DataRow][14]
	DXPS_Notes+="\rSTV end: "+SLP_DXPS_ScanListW[DataRow][15]
	DXPS_Notes+="\rSTV step: "+SLP_DXPS_ScanListW[DataRow][16]
	DXPS_Notes+="\rhv: "+SLP_DXPS_ScanListW[DataRow][17]
	DXPS_Notes+="\rAnalyser WF: "+SLP_DXPS_ScanListW[DataRow][18]
	DXPS_Notes+="\rDisp. line x1: "+SLP_DXPS_ScanListW[DataRow][19]
	DXPS_Notes+="\rDisp. line y1: "+SLP_DXPS_ScanListW[DataRow][20]
	DXPS_Notes+="\rDisp. line x2: "+SLP_DXPS_ScanListW[DataRow][21]
	DXPS_Notes+="\rDisp. line y2: "+SLP_DXPS_ScanListW[DataRow][22]
	DXPS_Notes+="\rScan notes: "+SLP_DXPS_ScanListW[DataRow][23]
	//DXPS_Notes+="\r"

	Return DXPS_Notes
End

Function SLP_DXPS_DisplaySelectedData(VolName)
	String VolName
	Variable DataRow=SLP_DXPS_FindDataRow(VolName)
	
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	Wave /T SLP_DXPS_XPSParamW=root:Package_SLP:DispXPS:SLP_DXPS_XPSParamW
	Variable i=0 //For indexing
	String TraceList=""
	String TraceName=""
	
	//Update all the global variables and shared wave (XPS param)
	NVAR Threshold=root:Package_SLP:DispXPS:Threshold
	NVAR MinSize=root:Package_SLP:DispXPS:MinSize
	NVAR Offset=root:Package_SLP:DispXPS:Offset
	NVAR LPLength=root:Package_SLP:DispXPS:LPLength
	NVAR LPWidth=root:Package_SLP:DispXPS:LPWidth
	NVAR NLines=root:Package_SLP:DispXPS:NLines
	NVAR DispFactor=root:Package_SLP:DispXPS:DispFactor
	NVAR CenterPointX=root:Package_SLP:DispXPS:CenterPointX
	NVAR  CenterPointY= root:Package_SLP:DispXPS:CenterPointY
	Threshold=str2num(SLP_DXPS_ScanListW[DataRow][5])
	MinSize=str2num(SLP_DXPS_ScanListW[DataRow][6])
	Offset=str2num(SLP_DXPS_ScanListW[DataRow][7])
	LPLength=str2num(SLP_DXPS_ScanListW[DataRow][8])
	LPWidth=str2num(SLP_DXPS_ScanListW[DataRow][9])
	NLines=str2num(SLP_DXPS_ScanListW[DataRow][10])
	DispFactor=str2num(SLP_DXPS_ScanListW[DataRow][11])
	CenterPointX=str2num(SLP_DXPS_ScanListW[DataRow][12])
	CenterPointY=str2num(SLP_DXPS_ScanListW[DataRow][13])
	
	SLP_DXPS_XPSParamW[0][1]=SLP_DXPS_ScanListW[DataRow][14]
	SLP_DXPS_XPSParamW[1][1]=SLP_DXPS_ScanListW[DataRow][15]
	SLP_DXPS_XPSParamW[2][1]=SLP_DXPS_ScanListW[DataRow][16]
	SLP_DXPS_XPSParamW[3][1]=SLP_DXPS_ScanListW[DataRow][17]
	SLP_DXPS_XPSParamW[4][1]=SLP_DXPS_ScanListW[DataRow][18]
	
	//STRINGs FOR MAKING WAVE REFERENCEs
	string DataFolder=SLP_DXPS_ScanListW[DataRow][1]
	string ImgVolW_FName=SLP_DXPS_ScanListW[DataRow][1]+SLP_DXPS_ScanListW[DataRow][0]
	string ImgVol_ThW_FName= ImgVolW_FName+"_Th"
	string ImgVol_IntgW_FName= ImgVolW_FName+"_Intg"
	string BoundX_W_FName=ImgVolW_FName+"_BX"
	string BoundY_W_FName=ImgVolW_FName+"_BY"
	string DispLine_XWave_FName=ImgVolW_FName+"_DispLX"
	string DispLine_YWave_FName=ImgVolW_FName+"_DispLY"
	string PLineCoord_FName=ImgVolW_FName+"_PLCoord"
	string SpectraW_FName=ImgVolW_FName+"_Spectra"
	string CombinedSpectrmW_FName=ImgVolW_FName+"_Cmbnd"
	string DataCountsSpectraW_FName=ImgVolW_FName+"_DataCts"
	string Indv_SpectrumW_FName=SpectraW_FName+num2str(i)
	string CombinedSpectrmBEW_FName=ImgVolW_FName+"_CmbndBE"
			
	Wave SLP_DXPS_DummyImg1=root:Package_SLP:DispXPS:SLP_DXPS_DummyImg1
	Wave SLP_DXPS_DummyImg2=root:Package_SLP:DispXPS:SLP_DXPS_DummyImg2
	Wave SLP_DXPS_DummyImg3=root:Package_SLP:DispXPS:SLP_DXPS_DummyImg3
	Wave SLP_DXPS_DummySpectrum=root:Package_SLP:DispXPS:SLP_DXPS_DummySpectrum
	
	//Display#1: Img. Threshold
	If (Exists(ImgVol_ThW_FName))
		Wave ImgVol_ThW=$ImgVol_ThW_FName
		Duplicate /O ImgVol_ThW,SLP_DXPS_DummyImg1
	Else
		SLP_DXPS_DummyImg1=0
	EndIf
	
	//Display#2 Disp. line and P-lines
	//Remove all previous trace
	TraceList=TraceNameList("SLP_DispXPS_Panel_01#DX_DispLineImg",";",1)
	TraceName=""
	For (i=0;i<ItemsInList(TraceList,";");i+=1)
		TraceName=stringFromList(i,TraceList,";")
		RemoveFromGraph /W=SLP_DispXPS_Panel_01#DX_DispLineImg $TraceName
	EndFor
	
	Wave ImgVol_IntgW=$ImgVol_IntgW_FName
	
	Duplicate /O ImgVol_IntgW,root:Package_SLP:DispXPS:SLP_DXPS_DummyImg2

	If (Exists(DispLine_XWave_FName)&&Exists(BoundX_W_FName))
		Wave BoundX_W=$BoundX_W_FName
		Wave BoundY_W=$BoundY_W_FName
		Wave DispLine_XWave=$DispLine_XWave_FName
		Wave DispLine_YWave=$DispLine_YWave_FName
		Appendtograph /W=SLP_DispXPS_Panel_01#DX_DispLineImg BoundY_W vs BoundX_W
		ModifyGraph /W=SLP_DispXPS_Panel_01#DX_DispLineImg rgb=(0,43690,65535)	
		Appendtograph /W=SLP_DispXPS_Panel_01#DX_DispLineImg DispLine_YWave vs DispLine_XWave
	EndIf
	
	If (Exists(PLineCoord_FName))
		Wave PLineCoord=$PLineCoord_FName
		//Multi P-lines
		setdrawlayer /W=SLP_DispXPS_Panel_01#DX_DispLineImg UserFront
		DrawAction /W=SLP_DispXPS_Panel_01#DX_DispLineImg delete
		For (i=0;i<NLines;i+=1)
			//Draw on the plot
			SetDrawEnv  /W=SLP_DispXPS_Panel_01#DX_DispLineImg xcoord=bottom,ycoord=left,lineFgc=(0,65535,0)
			DrawLine /W=SLP_DispXPS_Panel_01#DX_DispLineImg PLineCoord[i][2],PLineCoord[i][3],PLineCoord[i][4],PLineCoord[i][5]
			//Doupdate	
		Endfor
	Endif
	
	//Display#3 2D unshifted extracted spectra
	If (Exists(SpectraW_FName))
		Wave SpectraW=$SpectraW_FName
		Duplicate /O SpectraW,root:Package_SLP:DispXPS:SLP_DXPS_DummyImg3
		string ImageName=stringfromlist(0,ImageNameList("SLP_DispXPS_Panel_01#2DSpectra", ";" ))
		ModifyImage /W=SLP_DispXPS_Panel_01#DX_2DSpectra $ImageName ctab= {*,*,Rainbow,0}
	Else
		SLP_DXPS_DummyImg3=0
	Endif
	
	//Display#4 Shifted indv. spectra
	TraceList=TraceNameList("SLP_DispXPS_Panel_01#DX_ShiftedSpectra",";",1) 
	If (Exists(Indv_SpectrumW_FName))
		For (i=0;i<NLines;i+=1)
			Indv_SpectrumW_FName=SpectraW_FName+num2str(i)
			Wave Indv_SpectrumW=$Indv_SpectrumW_FName
			Appendtograph /W=SLP_DispXPS_Panel_01#DX_ShiftedSpectra Indv_SpectrumW
		EndFor
		SLP_Util_RemoveTraces("SLP_DispXPS_Panel_01#DX_ShiftedSpectra",TraceList) //Need to remove traces before using MakeRedGradient procedure
		SLP_Util_MakeRedGradient("SLP_DispXPS_Panel_01#DX_ShiftedSpectra")
	Else
		Appendtograph /W=SLP_DispXPS_Panel_01#DX_ShiftedSpectra SLP_DXPS_DummySpectrum
		SLP_Util_RemoveTraces("SLP_DispXPS_Panel_01#DX_ShiftedSpectra",TraceList)
	EndIf
	
	//Display#5 Combined spectrum
	If (stringmatch(SLP_DXPS_ScanListW[DataRow][26],"1"))
		If (Exists(CombinedSpectrmBEW_FName))
			SLP_Util_AddnRmTraces("SLP_DispXPS_Panel_01#DX_MergedSpectra",CombinedSpectrmBEW_FName,0)
			SetAxis /W=SLP_DispXPS_Panel_01#DX_MergedSpectra /A/R bottom
			Label /W=SLP_DispXPS_Panel_01#DX_MergedSpectra bottom "Binding energy (eV)"
		Endif
	Elseif (stringmatch(SLP_DXPS_ScanListW[DataRow][26],"0"))
		If (Exists(CombinedSpectrmW_FName))
			SLP_Util_AddnRmTraces("SLP_DispXPS_Panel_01#DX_MergedSpectra",CombinedSpectrmW_FName,0)
			SetAxis /W=SLP_DispXPS_Panel_01#DX_MergedSpectra /A bottom
			Label /W=SLP_DispXPS_Panel_01#DX_MergedSpectra bottom "Start voltage (eV)"
		EndIf
	EndIf
	
	SLP_DXPS_DispPeakAssign(0)
	
	ModifyGraph /W=SLP_DispXPS_Panel_01#DX_MergedSpectra lsize=2,rgb=(1,34817,52428)
	CheckBox  CheckBox_BE ,win=SLP_DispXPS_Panel_01,value=str2num(SLP_DXPS_ScanListW[DataRow][26])
	CheckBox  CheckBox_PeakID ,win=SLP_DispXPS_Panel_01,value=str2num(SLP_DXPS_ScanListW[DataRow][27])
	
End

Function SLP_DXPS_CreateBESpectrum()
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	Wave /T SLP_DXPS_XPSParamW=root:Package_SLP:DispXPS:SLP_DXPS_XPSParamW
	
	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
	string CombinedSpectraW_FName=ImgVolW_FName+"_Cmbnd"
	string CombinedSpectraBEW_FName=ImgVolW_FName+"_CmbndBE"
	
	variable aWF=0
	
	If (stringmatch(SLP_DXPS_ScanListW[SelRow][18],""))
			Prompt aWF,"Analyzer workfunction (eV):"
			DoPrompt "Enter missing parameter",aWF
			SLP_DXPS_ScanListW[SelRow][18]=num2str(aWF)
			SLP_DXPS_XPSParamW[4][1]=num2str(aWF)
	Endif
	
	duplicate /O $CombinedSpectraW_FName,$CombinedSpectraBEW_FName
	wave CombinedSpectraW=$CombinedSpectraW_FName
	Wave CombinedSpectraBEW=$CombinedSpectraBEW_FName
	
	SetFormula CombinedSpectraW,CombinedSpectraBEW_FName
	
	Variable STV_Start=str2num(SLP_DXPS_ScanListW[SelRow][14])
	Variable STV_End=str2num(SLP_DXPS_ScanListW[SelRow][15])
	Variable STV_Step=str2num(SLP_DXPS_ScanListW[SelRow][16])
	Variable hv=str2num(SLP_DXPS_ScanListW[SelRow][17])
	aWF=str2num(SLP_DXPS_ScanListW[SelRow][18])
	
	Setscale /P x,hv-STV_Start-aWF,-1*STV_Step,CombinedSpectraBEW
	
End

Function ListBoxProc_DXPS_XPSParam(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	wave /T SLP_DXPS_XPSParamW=root:Package_SLP:DispXPS:SLP_DXPS_XPSParamW
	
	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value

	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
		case 5: // cell selection plus shift key
			break
		case 6: // begin edit
			break
		case 7: // finish edit
			SLP_DXPS_ScanListW[SelRow][14]=SLP_DXPS_XPSParamW[0][1]
			SLP_DXPS_ScanListW[SelRow][15]=SLP_DXPS_XPSParamW[1][1]
			SLP_DXPS_ScanListW[SelRow][16]=SLP_DXPS_XPSParamW[2][1]
			SLP_DXPS_ScanListW[SelRow][17]=SLP_DXPS_XPSParamW[3][1]
			SLP_DXPS_ScanListW[SelRow][18]=SLP_DXPS_XPSParamW[4][1]
			SLP_DXPS_CreateBESpectrum()
			
			break
		case 13: // checkbox clicked (Igor 6.2 or later)
			break
	endswitch

	return 0
End


Function ListBoxProc_ScanList(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	wave /T SLP_DXPS_ScanListDisplayW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplayW
	
	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
			If (row!=-1&&row<dimsize(SLP_DXPS_ScanListW,0))
				String VolName=SLP_DXPS_ScanListW[row][0]
				SLP_DXPS_DisplaySelectedData(VolName)
				
				//Remove 'Copied disp. line' flag if the user has edited the Th. or MinSize
				string CopiedDispL_Flg=SLP_DXPS_ScanListW[row][24]
				If (StringMatch(CopiedDispL_Flg,"y"))
					SetVariable SetVar_Threshold valueColor=(39321,39321,39321),win=SLP_DispXPS_Panel_01
					SetVariable SetVar_MinSize valueColor=(39321,39321,39321),win=SLP_DispXPS_Panel_01
				Else
					SetVariable SetVar_Threshold valueColor=(0,0,0),win=SLP_DispXPS_Panel_01
					SetVariable SetVar_MinSize valueColor=(0,0,0),win=SLP_DispXPS_Panel_01
				EndIf
				
				//Disable Dispersive Line Creation section if the raw data has been removed
				String RawDataDel_Flg=SLP_DXPS_ScanListW[row][25]
				If (StringMatch(RawDataDel_Flg,"y"))
					SLP_DXPS_TgglControls("Disable")
				Else
					SLP_DXPS_TgglControls("Enable")
				EndIf
			EndIf
		case 5: // cell selection plus shift key
			break
		case 6: // begin edit
			break
		case 7: // finish edit
			//Copy scan notes to the ScanListW
			SLP_DXPS_ScanListW[][23]=SLP_DXPS_ScanListDisplayW[p][2]
		
			break
		case 13: // checkbox clicked (Igor 6.2 or later)
			break
	endswitch

	return 0
End

Function SLP_DXPS_ExpCmbnSpectrm()

	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	
	string ScanName=SLP_DXPS_ScanListW[SelRow][0]
	string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
	string CombinedSpectraW_FName=ImgVolW_FName+"_Cmbnd"
	String CombinedSpectrmBEW_FName=ImgVolW_FName+"_CmbndBE"
	Wave CombinedSpectraW=$CombinedSpectraW_FName
	Wave CombinedSpectrmBEW=$CombinedSpectrmBEW_FName
	String Exp_CmbndSpectrmName=""
	Variable Exit_Flag=0
	
	If (Stringmatch(SLP_DXPS_ScanListW[SelRow][26],"0")) //K.E. plot
		Exp_CmbndSpectrmName=ScanName+"_Cmbnd"
		Prompt Exp_CmbndSpectrmName,"Enter name for the exported spectrum"
		DoPrompt "Wave name",Exp_CmbndSpectrmName
		
		If (Exists(Exp_CmbndSpectrmName))
			DoAlert 2,"Wave '"+Exp_CmbndSpectrmName+"' already exists. Overwrite the wave?"
			If (V_Flag==2) //No
				Do
					Prompt Exp_CmbndSpectrmName,"Choose a new wave name"
					DoPrompt "Duplicate wave name. Enter a new name",Exp_CmbndSpectrmName
					If(V_Flag) //If cancel is clicked
						Return 0
					EndIf
				While(Exists(Exp_CmbndSpectrmName)) //Loop until the user give non-duplicated wave name, or click cancel
			ElseIf (V_Flag==3) //Cancel
				Exit_Flag=1
			Endif
		Endif
		
		If (Exit_Flag==0)
			//Export the spectrum wave from the data folder to the 'current' (i.e. user's) folder
			Duplicate /O CombinedSpectraW,$Exp_CmbndSpectrmName /WAVE=Exp_CmbndSpectrm
			Note Exp_CmbndSpectrm,SLP_DXPS_CreateNotes(ScanName)
			Display Exp_CmbndSpectrm
			Modifygraph mirror=1,tick=2,minor=1
			Legend
			Label bottom "Start voltage (eV)"
			Label left "Intensity (a.u.)"
			Modifygraph LSize=2,rgb=(1,34817,52428)
		Endif
	
	ElseIf (Stringmatch(SLP_DXPS_ScanListW[SelRow][26],"1")) //B.E. plot
		Exp_CmbndSpectrmName=ScanName+"_CmbndBE"
		Prompt Exp_CmbndSpectrmName,"Enter name for the exported spectrum"
		DoPrompt "Wave name",Exp_CmbndSpectrmName
		
		If (Exists(Exp_CmbndSpectrmName))
			DoAlert 2,"Wave '"+Exp_CmbndSpectrmName+"' already exists. Overwrite the wave?"
			If (V_Flag==2) //No
				Do
					Prompt Exp_CmbndSpectrmName,"Choose a new wave name"
					DoPrompt "Duplicate wave name. Enter a new name",Exp_CmbndSpectrmName
					If(V_Flag) //If cancel is clicked
						Return 0
					EndIf
				While(Exists(Exp_CmbndSpectrmName)) //Loop until the user give non-duplicated wave name, or click cancel
			ElseIf (V_Flag==3) //Cancel
				Exit_Flag=1
			Endif
		Endif
		
		If (Exit_Flag==0)
			//Export the spectrum wave from the data folder to the 'current' (i.e. user's) folder
			Duplicate /O CombinedSpectrmBEW,$Exp_CmbndSpectrmName /WAVE=Exp_CmbndSpectrm
			Note Exp_CmbndSpectrm,SLP_DXPS_CreateNotes(ScanName)
			Display Exp_CmbndSpectrm
			Modifygraph mirror=1,tick=2,minor=1
			Legend
			Label bottom "Binding energy (eV)"
			Label left "Intensity (a.u.)"
			Modifygraph LSize=2,rgb=(52428,1,1)
			Setaxis /A/R bottom
		EndIf
		
	Endif
End

Function SetVarProc_DXPS_FindDispLine(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva
	
	NVAR Threshold=root:Package_SLP:DispXPS:Threshold
	NVAR MinSize=root:Package_SLP:DispXPS:MinSize
	NVAR Offset=root:Package_SLP:DispXPS:Offset
	NVAR LPLength=root:Package_SLP:DispXPS:LPLength
	NVAR NLines=root:Package_SLP:DispXPS:NLines

	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	string SelScan=SLP_DXPS_ScanListW[SelRow][0]
	variable FindDispLine_Err=0

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			//String sval = sva.sval
			
			SLP_DXPS_SetTh(SelScan,Threshold)
			FindDispLine_Err=SLP_DXPS_FindDispLine(SelScan,MinSize)
			If (FindDispLine_Err==0) //Only continue if [CODE:SLP_DXPS_FindDispLine] works ok
				SLP_DXPS_CreateMultiPLines(SelScan,Offset,LPLength,NLines)
			EndIF
			//Update to the ScanListW
			SLP_DXPS_ScanListW[SelRow][5]=num2str(Threshold)
			SLP_DXPS_ScanListW[SelRow][6]=num2str(MinSize)
			
			//Remove 'Copied disp. line' flag if the user has edited the Th. or MinSize
			SLP_DXPS_ScanListW[SelRow][24]=""							
			SetVariable SetVar_Threshold valueColor=(0,0,0),win=SLP_DispXPS_Panel_01
			SetVariable SetVar_MinSize valueColor=(0,0,0),win=SLP_DispXPS_Panel_01
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_DXPS_PLine(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva
	
	//NVAR Threshold=root:Package_SLP:DispXPS:Threshold
	//NVAR MinSize=root:Package_SLP:DispXPS:MinSize
	NVAR Offset=root:Package_SLP:DispXPS:Offset
	NVAR LPLength=root:Package_SLP:DispXPS:LPLength
	NVAR LPWidth=root:Package_SLP:DispXPS:LPWidth
	NVAR NLines=root:Package_SLP:DispXPS:NLines
	NVAR DispFactor=root:Package_SLP:DispXPS:DispFactor
	NVAR CenterPointX=root:Package_SLP:DispXPS:CenterPointX
	NVAR  CenterPointY= root:Package_SLP:DispXPS:CenterPointY
	
	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	string SelScan=SLP_DXPS_ScanListW[SelRow][0]

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			//String sval = sva.sval
			SLP_DXPS_CreateMultiPLines(SelScan,Offset,LPLength,NLines)
			//Update to the ScanListW
			SLP_DXPS_ScanListW[SelRow][7]=num2str(Offset)
			SLP_DXPS_ScanListW[SelRow][8]=num2str(LPLength)
			SLP_DXPS_ScanListW[SelRow][10]=num2str(NLines)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_DXPS_LPWidth(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva
	
	//NVAR Threshold=root:Package_SLP:DispXPS:Threshold
	//NVAR MinSize=root:Package_SLP:DispXPS:MinSize
	//NVAR Offset=root:Package_SLP:DispXPS:Offset
	//NVAR LPLength=root:Package_SLP:DispXPS:LPLength
	NVAR LPWidth=root:Package_SLP:DispXPS:LPWidth
	//NVAR NLines=root:Package_SLP:DispXPS:NLines
	NVAR DispFactor=root:Package_SLP:DispXPS:DispFactor
	NVAR CenterPointX=root:Package_SLP:DispXPS:CenterPointX
	NVAR  CenterPointY= root:Package_SLP:DispXPS:CenterPointY
	
	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	string SelScan=SLP_DXPS_ScanListW[SelRow][0]

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			//String sval = sva.sval
			SLP_DXPS_CreateSpectra(SelScan,LPWidth)
			SLP_DXPS_MergeSpectra(SelScan,CenterPointX,CenterPointY,DispFactor)
			//Update to the ScanListW
			SLP_DXPS_ScanListW[SelRow][9]=num2str(LPWidth)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_DXPS_CreateSpectra(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	//NVAR Threshold=root:Package_SLP:DispXPS:Threshold
	//NVAR MinSize=root:Package_SLP:DispXPS:MinSize
	NVAR Offset=root:Package_SLP:DispXPS:Offset
	NVAR LPLength=root:Package_SLP:DispXPS:LPLength
	NVAR LPWidth=root:Package_SLP:DispXPS:LPWidth
	NVAR NLines=root:Package_SLP:DispXPS:NLines
	NVAR DispFactor=root:Package_SLP:DispXPS:DispFactor
	NVAR CenterPointX=root:Package_SLP:DispXPS:CenterPointX
	NVAR  CenterPointY= root:Package_SLP:DispXPS:CenterPointY
	
	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	string SelScan=SLP_DXPS_ScanListW[SelRow][0]
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_DXPS_CreateSpectra(SelScan,LPWidth)
			SLP_DXPS_MergeSpectra(SelScan,CenterPointX,CenterPointY,DispFactor)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_DXPS_Correct1stInt(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	//NVAR Threshold=root:Package_SLP:DispXPS:Threshold
	//NVAR MinSize=root:Package_SLP:DispXPS:MinSize
	NVAR Offset=root:Package_SLP:DispXPS:Offset
	NVAR LPLength=root:Package_SLP:DispXPS:LPLength
	NVAR LPWidth=root:Package_SLP:DispXPS:LPWidth
	NVAR NLines=root:Package_SLP:DispXPS:NLines
	NVAR DispFactor=root:Package_SLP:DispXPS:DispFactor
	NVAR CenterPointX=root:Package_SLP:DispXPS:CenterPointX
	NVAR  CenterPointY= root:Package_SLP:DispXPS:CenterPointY
	
	
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
			Wave ImgVolW=$ImgVolW_FName 
			
			string SelScan=SLP_DXPS_ScanListW[SelRow][0]
			//Warn the user
			DoAlert 1,"The 1st image frame will be overwritten with the second frame. Continue?"
			If (V_Flag==1) //If the user clicks 'Yes'
				//Copy the second frame and overwrite it to the 1st frame (which has unusually high intensity sometimes)
				ImgVolW[][][0]=ImgVolW[p][q][1]
				
				SLP_DXPS_CreateSpectra(SelScan,LPWidth)
				SLP_DXPS_MergeSpectra(SelScan,CenterPointX,CenterPointY,DispFactor)
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_DXPS_EnCorrection(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva
	
	//NVAR Threshold=root:Package_SLP:DispXPS:Threshold
	//NVAR MinSize=root:Package_SLP:DispXPS:MinSize
	//NVAR Offset=root:Package_SLP:DispXPS:Offset
	//NVAR LPLength=root:Package_SLP:DispXPS:LPLength
	//NVAR LPWidth=root:Package_SLP:DispXPS:LPWidth
	//NVAR NLines=root:Package_SLP:DispXPS:NLines
	NVAR DispFactor=root:Package_SLP:DispXPS:DispFactor
	NVAR CenterPointX=root:Package_SLP:DispXPS:CenterPointX
	NVAR  CenterPointY= root:Package_SLP:DispXPS:CenterPointY
	
	ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	string SelScan=SLP_DXPS_ScanListW[SelRow][0]

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			//String sval = sva.sval
			
			SLP_DXPS_MergeSpectra(SelScan,CenterPointX,CenterPointY,DispFactor)
			//Update to the ScanListW
			SLP_DXPS_ScanListW[SelRow][11]=num2str(DispFactor)
			SLP_DXPS_ScanListW[SelRow][12]=num2str(CenterPointX)
			SLP_DXPS_ScanListW[SelRow][13]=num2str(CenterPointY)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_DXPS_SetTh(VolName,Threshold)
	string VolName
	variable Threshold
	
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	 //Find the row of the chosen Scan
	FindValue /TEXT=VolName /TXOP=6 SLP_DXPS_ScanListW
	variable Col=floor(V_value/dimsize(SLP_DXPS_ScanListW,0))
	variable DataRow=V_value-col*dimsize(SLP_DXPS_ScanListW,0)
	string ImgVolW_FName=SLP_DXPS_ScanListW[DataRow][1]+SLP_DXPS_ScanListW[DataRow][0]
	string ImgVol_IntgW_FName= ImgVolW_FName+"_Intg"
	string ImgVol_ThW_FName= ImgVolW_FName+"_Th"
	
	Wave ImgVolW=$ImgVolW_FName
	Wave ImgVol_IntgW=$ImgVol_IntgW_FName
	
	
	Duplicate /O ImgVol_IntgW,$ImgVol_ThW_FName /WAVE=ImgVol_ThW
	
	ImageThreshold/Q/O/I/T=(Threshold) ImgVol_ThW
	
	Duplicate /O ImgVol_ThW,root:Package_SLP:DispXPS:SLP_DXPS_DummyImg1
End

Function SLP_DXPS_FindDataRow(VolName)
	String VolName
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	 //Find the row of the chosen Scan
	FindValue /TEXT=VolName /TXOP=6 SLP_DXPS_ScanListW
	variable Col=floor(V_value/dimsize(SLP_DXPS_ScanListW,0))
	variable DataRow=V_value-col*dimsize(SLP_DXPS_ScanListW,0)
	
	Return DataRow
End

Function SLP_DXPS_FindDispLine(VolName,MinSize)
	string VolName
	variable MinSize
	
	variable FindDispLine_Err=0
	
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	 //Find the row of the chosen Scan
	FindValue /TEXT=VolName /TXOP=6 SLP_DXPS_ScanListW
	variable Col=floor(V_value/dimsize(SLP_DXPS_ScanListW,0))
	variable DataRow=V_value-col*dimsize(SLP_DXPS_ScanListW,0)
	string ImgVolW_FName=SLP_DXPS_ScanListW[DataRow][1]+SLP_DXPS_ScanListW[DataRow][0]
	string ImgVol_IntgW_FName= ImgVolW_FName+"_Intg"
	string ImgVol_ThW_FName= ImgVolW_FName+"_Th"
	
	Wave ImgVol_IntgW=$ImgVol_IntgW_FName
	Wave ImgVol_ThW=$ImgVol_ThW_FName
	
	//Move to the data folder
	string CurrentFolder=GetDataFolder(1)
	setDataFolder SLP_DXPS_ScanListW[DataRow][1]
	
	ImageAnalyzeParticles /E/W/Q/EBPC/M=3/A=(MinSize)/F stats, ImgVol_ThW
	If (V_NumParticles!=1)
		DoAlert 0,"Try adjusting Threshold Value or Min. Size"
		FindDispLine_Err=1
	Else
		string W_BoundaryX_FName=SLP_DXPS_ScanListW[DataRow][1]+"W_BoundaryX"
		string W_BoundaryY_FName=SLP_DXPS_ScanListW[DataRow][1]+"W_BoundaryY"
		string BoundX_W_Name=ImgVolW_FName+"_BX"
		string BoundY_W_Name=ImgVolW_FName+"_BY"
		
		duplicate /O $W_BoundaryX_FName,$BoundX_W_Name /WAVE=BX_W
		duplicate /O $W_BoundaryY_FName,$BoundY_W_Name /WAVE=BY_W
		killwaves $W_BoundaryX_FName
		killwaves $W_BoundaryY_FName
		
		//Create DispLine wave with the same number of row as the boundary wave (BY_W)
		//Duplicate /O BY_W,DispLine
		
		//Fit a straight line to the boundary wave
		CurveFit /Q/M=2/W=0 line, BY_W/X=BX_W/D
		
		//Make wave reference for the fit result -> add "Fit_" to the front of the wave name..
		string DispLine_Wave_Name="Fit_"+stringfromlist(itemsinlist(BoundY_W_Name,":")-1,BoundY_W_Name,":")
		string DispLine_XWave_Name=ImgVolW_FName+"_DispLX"
		string DispLine_YWave_Name=ImgVolW_FName+"_DispLY"
		Wave DispLine_Wave=$DispLine_Wave_Name
		
		//Create new X and Y waves from the fit result
		make /O /N=2 $DispLine_XWave_Name /WAVE=DispLine_X_Wave
		make /O /N=2 $DispLine_YWave_Name /WAVE=DispLine_Y_Wave
		DispLine_X_Wave[0]=dimoffset(DispLine_Wave,0)
		DispLine_X_Wave[1]=dimoffset(DispLine_Wave,0)+dimdelta(DispLine_Wave,0)
		DispLine_Y_Wave[0]=DispLine_Wave[0]
		DispLine_Y_Wave[1]=DispLine_Wave[1]
		
		//Update to ScanListW
		SLP_DXPS_ScanListW[DataRow][19]=num2str(DispLine_X_Wave[0]) //x1
		SLP_DXPS_ScanListW[DataRow][20]=num2str(DispLine_Y_Wave[0]) //y1
		SLP_DXPS_ScanListW[DataRow][21]=num2str(DispLine_X_Wave[1]) //x2
		SLP_DXPS_ScanListW[DataRow][22]=num2str(DispLine_Y_Wave[1]) //y2
	
		Duplicate /O ImgVol_IntgW,root:Package_SLP:DispXPS:SLP_DXPS_DummyImg2
		
		//Remove all previous trace
		string TraceList=TraceNameList("SLP_DispXPS_Panel_01#DX_DispLineImg",";",1)
		string TraceName=""
		variable i=0
		For (i=0;i<ItemsInList(TraceList,";");i+=1)
			TraceName=stringFromList(i,TraceList,";")
			RemoveFromGraph /W=SLP_DispXPS_Panel_01#DX_DispLineImg $TraceName
		EndFor
		
		Appendtograph /W=SLP_DispXPS_Panel_01#DX_DispLineImg BY_W vs BX_W
		ModifyGraph /W=SLP_DispXPS_Panel_01#DX_DispLineImg rgb=(0,43690,65535)
		Appendtograph /W=SLP_DispXPS_Panel_01#DX_DispLineImg DispLine_Y_Wave vs DispLine_X_Wave
	EndIf
	
	//Go back to the previous folder
	SetDataFolder CurrentFolder
	
	Return FindDispLine_Err
End

Function SLP_DXPS_CreateMultiPLines(VolName,Offset,LPLength,NLines)
	string VolName
	variable Offset,LPLength,NLines
	
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	 //Find the row of the chosen Scan
	FindValue /TEXT=VolName /TXOP=6 SLP_DXPS_ScanListW
	variable Col=floor(V_value/dimsize(SLP_DXPS_ScanListW,0))
	variable DataRow=V_value-col*dimsize(SLP_DXPS_ScanListW,0)
	string ImgVolW_FName=SLP_DXPS_ScanListW[DataRow][1]+SLP_DXPS_ScanListW[DataRow][0]
	
	string DispLine_XWave_FName=ImgVolW_FName+"_DispLX"
	string DispLine_YWave_FName=ImgVolW_FName+"_DispLY"
	string PLineCoord_FName=ImgVolW_FName+"_PLCoord"
	
	Wave DispLine_XWave=$DispLine_XWave_FName
	Wave DispLine_YWave=$DispLine_YWave_FName
	
	//Move to the data folder
	string CurrentFolder=GetDataFolder(1)
	setDataFolder SLP_DXPS_ScanListW[DataRow][1]
	
	wave DispLine_Y=$DispLine_YWave_FName
	wave DispLine_X=$DispLine_XWave_FName
	
	variable x0=DispLine_X[0]
	variable y0=DispLine_Y[0]
	variable x1=DispLine_X[1]
	variable y1=DispLine_Y[1]
	
	make /O /N=(NLines,6) $PLineCoord_FName /WAVE=PLineCoord
	PLineCoord=0
	variable Alpha=atan((y1-y0)/(x1-x0))
	
	setdrawlayer /W=SLP_DispXPS_Panel_01#DX_DispLineImg UserFront
	DrawAction /W=SLP_DispXPS_Panel_01#DX_DispLineImg delete
		
	variable i
	
	For (i=0;i<NLines;i+=1)
		//Create Perpendicular lines
		PLineCoord[i][0]=x0+Offset*cos(Alpha)+i*(x1-x0-2*Offset*cos(Alpha))/(NLines-1)
		PLineCoord[i][1]=y0+Offset*sin(Alpha)+i*(y1-y0-2*Offset*sin(Alpha))/(NLines-1)
		
		PLineCoord[i][2]=PLineCoord[i][0]+LPLength*sin(Alpha)
		PLineCoord[i][3]=PLineCoord[i][1]-LPLength*cos(Alpha)
		
		PLineCoord[i][4]=PLineCoord[i][0]-LPLength*sin(Alpha)
		PLineCoord[i][5]=PLineCoord[i][1]+LPLength*cos(Alpha)
		
		//Draw on the plot
		SetDrawEnv  /W=SLP_DispXPS_Panel_01#DX_DispLineImg xcoord=bottom,ycoord=left,lineFgc=(0,65535,0)
		DrawLine /W=SLP_DispXPS_Panel_01#DX_DispLineImg PLineCoord[i][2],PLineCoord[i][3],PLineCoord[i][4],PLineCoord[i][5]
		//Doupdate	
	Endfor
	
	//Go back to the previous folder
	SetDataFolder CurrentFolder
End

Function SLP_DXPS_CreateSpectra(VolName,LPWidth)
	String VolName
	variable LPWidth
	
	
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	 //Find the row of the chosen Scan
	FindValue /TEXT=VolName /TXOP=6 SLP_DXPS_ScanListW
	variable Col=floor(V_value/dimsize(SLP_DXPS_ScanListW,0))
	variable DataRow=V_value-col*dimsize(SLP_DXPS_ScanListW,0)
	string ImgVolW_FName=SLP_DXPS_ScanListW[DataRow][1]+SLP_DXPS_ScanListW[DataRow][0]
	string PLineCoord_FName=ImgVolW_FName+"_PLCoord"
	string Spectra_W_Name=ImgVolW_FName+"_Spectra"
	
	Wave ImgVolW=$ImgVolW_FName
	Wave PLineCoord=$PLineCoord_FName
	
	//Move to the data folder
	string CurrentFolder=GetDataFolder(1)
	setDataFolder SLP_DXPS_ScanListW[DataRow][1]
		
	variable i,j
	variable N_steps=dimsize(ImgVolW,2)
	variable N_pLines=dimsize(PLineCoord,0)
	
	Make /O/N=(N_steps,N_pLines) $Spectra_W_Name /WAVE=Spectra_W
	Make /O/N=2 CDL_pLX
	Make /O/N=2 CDL_pLY
		
	For (i=0;i<N_steps;i+=1)
		For (j=0;j<N_pLines;j+=1)
			CDL_pLX[0]=PLineCoord[j][2]
			CDL_pLY[0]=PLineCoord[j][3]
			CDL_pLX[1]=PLineCoord[j][4]
			CDL_pLY[1]=PLineCoord[j][5]
			ImageLineProfile/SC /P=(i) srcWave=ImgVolW, xWave=CDL_pLX, yWave=CDL_pLY, width=LPWidth
			wave W_ImageLineProfile
			
			//Replace NaN with zero
			MatrixOp /O W_ImageLineProfile=replace(W_ImageLineProfile,NaN,0)
			
			Spectra_W[i][j]=Sum(W_ImageLineProfile)/dimsize(W_ImageLineProfile,0)	
		EndFor
		
	EndFor
	variable cetemp=dimdelta(ImgVolW,2)
	setscale /P x,dimoffset(ImgVolW,2),dimdelta(ImgVolW,2),Spectra_W
	
	Duplicate /O Spectra_W,root:Package_SLP:DispXPS:SLP_DXPS_DummyImg3
	string ImageName=stringfromlist(0,ImageNameList("SLP_DispXPS_Panel_01#2DSpectra", ";" ))
	ModifyImage /W=SLP_DispXPS_Panel_01#DX_2DSpectra $ImageName ctab= {*,*,Rainbow,0}

	//Go back to the previous folder
	SetDataFolder CurrentFolder
End

Function SLP_DXPS_Convert4PCA(MapVolW_FName)
	String MapVolW_FName
	
	Wave MapVolW=$MapVolW_FName
	String TableW_FName=MapVolW_FName+"_Tabl"
	String PixelLocW_FName=MapVolW_FName+"_Loc"
	
	variable i=0
	variable j=0
	variable k=0
	variable N_Params=dimsize(MapVolW,2)
	Make /O/N=(0,N_Params) $TableW_FName /Wave=TableW
	Make /O/N=(0,2) $PixelLocW_FName /Wave=PixelLocW
	
	For (j=0;j<dimsize(MapVolW,1);j+=1)
		For (i=0;i<dimsize(MapVolW,0);i+=1)
			If (!Numtype(MapVolW[i][j]))
				//Add 1 row
				redimension /N=(dimsize(TableW,0)+1,dimsize(TableW,1)) TableW
				redimension /N=(dimsize(PixelLocW,0)+1,dimsize(PixelLocW,1)) PixelLocW
				TableW[k][]=MapVolW[i][j][q]
				PixelLocW[k][0]=i
				PixelLocW[k][1]=j
				k+=1
			EndIf
		EndFor
	EndFor

End

Function SLP_DXPS_MergeSpectra(VolName,x0,y0,DispFactor)
	String VolName
	variable x0,y0,DispFactor
	//(x0,y0) is the coordinate of where zero KE spot (e-gun spot at STV=0V in Disp. Plane mode) is. 
	
	wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	 //Find the row of the chosen Scan
	FindValue /TEXT=VolName /TXOP=6 SLP_DXPS_ScanListW
	variable Col=floor(V_value/dimsize(SLP_DXPS_ScanListW,0))
	variable DataRow=V_value-col*dimsize(SLP_DXPS_ScanListW,0)
	string ImgVolW_FName=SLP_DXPS_ScanListW[DataRow][1]+SLP_DXPS_ScanListW[DataRow][0]
	string SpectraW_FName=ImgVolW_FName+"_Spectra"
	string PLineCoord_FName=ImgVolW_FName+"_PLCoord"
	string CombinedSpectrumW_FName=ImgVolW_FName+"_Cmbnd"
	string CombinedSpectrumBEW_FName=ImgVolW_FName+"_CmbndBE"
	string DataCountsSpectraW_FName=ImgVolW_FName+"_DataCts"
	string IndvSptrmW_FName=""
		
	//Wave ImgVolW=$ImgVolW_FName
	Wave SpectraW=$SpectraW_FName
	Wave PLineCoord=$PLineCoord_FName
	
	variable N_Spectra=dimsize(SpectraW,1)
	variable N_Steps=dimsize(SpectraW,0)
	
	variable org_offset=str2num(SLP_DXPS_ScanListW[DataRow][14])
	variable org_delta=str2num(SLP_DXPS_ScanListW[DataRow][16])
	
	//variable org_offset=dimoffset(ImgVolW,2)
	//variable org_delta=dimdelta(ImgVolW,2)
	variable new_offset=0
	
	//Move to the data folder
	string CurrentFolder=GetDataFolder(1)
	setDataFolder SLP_DXPS_ScanListW[DataRow][1]
	
	//Create the Combined spectrum wave & data count wave (for averaging)
	Make /O /N=(N_Steps) $CombinedSpectrumW_FName /WAVE=CombinedSpectrmW
	Make /O /N=(N_Steps) $DataCountsSpectraW_FName /WAVE=DataCountsSpectrmW
	SetScale /P x,org_offset,org_delta,CombinedSpectrmW
	SetScale /P x,org_offset,org_delta,DataCountsSpectrmW
	CombinedSpectrmW=0
	DataCountsSpectrmW=0
	
	variable i=0
	variable j=0
	variable x1=0
	variable y1=0
	variable x2=0
	variable y2=0
	variable d=0
	
	string Indv_SpectrumW_FName=""
	variable STV_st=str2num(SLP_DXPS_ScanListW[DataRow][14])
	variable STV_step=str2num(SLP_DXPS_ScanListW[DataRow][16])
	
	variable Grad_Offset=30000
	variable Cmbnd_Spctrm_pos=0
	variable Shftd_IndvSptrm_MinX
	variable Shftd_IndvSptrm_MaxX
	
	string TraceList1=TraceNameList("SLP_DispXPS_Panel_01#DX_ShiftedSpectra",";",1) 
	string TraceList2=TraceNameList("SLP_DispXPS_Panel_01#DX_MergedSpectra",";",1)
	//List of previously showntraces to be removed at the end
	
	For (i=0;i<N_Spectra;i+=1)
		Indv_SpectrumW_FName=SpectraW_FName+num2str(i)
		duplicate /O /r=[][i] SpectraW,$Indv_SpectrumW_FName /WAVE=Indv_SpectrumW
		redimension /N=-1 Indv_SpectrumW //Change from 2D (column wave) to normal 1D (row wave)
		
		//Prepare variables for dE calculation
		x1=PLineCoord[i][2]
		y1=PLineCoord[i][3]
		x2=PLineCoord[i][4]
		y2=PLineCoord[i][5]
		//Find perpendicular distance from (x0,y0) [CODE: SLP_CDL_FindDvector]
		d=SLP_CDL_FindDvector(x0,y0,x1,y1,x2,y2)
		new_Offset=Org_Offset+DispFactor*d
		//Shift each spectrum 
		Setscale /P x,new_Offset,org_delta,Indv_SpectrumW
		//Plotting
		Appendtograph /W=SLP_DispXPS_Panel_01#DX_ShiftedSpectra Indv_SpectrumW
		
		Shftd_IndvSptrm_MinX=Dimoffset(Indv_SpectrumW,0)
		Shftd_IndvSptrm_MaxX=Dimoffset(Indv_SpectrumW,0)+(DimSize(Indv_SpectrumW,0)-1)*DimDelta(Indv_SpectrumW,0)
		
		For (j=0;j<N_Steps;j+=1)
			Cmbnd_Spctrm_pos=pnt2x(CombinedSpectrmW,j)
			If ((Cmbnd_Spctrm_pos>=Shftd_IndvSptrm_MinX)&&(Cmbnd_Spctrm_pos<=Shftd_IndvSptrm_MaxX))
				CombinedSpectrmW[j]=CombinedSpectrmW[j]+Indv_SpectrumW(Cmbnd_Spctrm_pos)
				DataCountsSpectrmW[j]+=1
			EndIf
		
		EndFor
		//DoUpdate
	EndFor
	
	CombinedSpectrmW/=DataCountsSpectrmW
	
	ModifyGraph/Z /W='SLP_DispXPS_Panel_01'#'DX_ShiftedSpectra' tick=2,mirror=1,minor=1
	ModifyGraph/Z /W='SLP_DispXPS_Panel_01'#'DX_MergedSpectra' tick=2,mirror=1,minor=1
	Label/Z/W='SLP_DispXPS_Panel_01'#'DX_ShiftedSpectra' left "Intensity (a.u.)"
	Label/Z/W='SLP_DispXPS_Panel_01'#'DX_MergedSpectra' left "Intensity (a.u.)"
	Label/Z/W='SLP_DispXPS_Panel_01'#'DX_ShiftedSpectra' bottom "Start voltage (eV)"
	
	Variable BE_Flg=str2num(SLP_DXPS_ScanListW[DataRow][26])
	If (BE_Flg)
		SLP_DXPS_CreateBESpectrum()
		Appendtograph /W=SLP_DispXPS_Panel_01#DX_MergedSpectra $CombinedSpectrumBEW_FName
		Label/Z/W='SLP_DispXPS_Panel_01'#'DX_MergedSpectra' bottom "Binding energy (eV)"
		Setaxis /W='SLP_DispXPS_Panel_01'#'DX_MergedSpectra' /A/R bottom
	Else
		Appendtograph /W=SLP_DispXPS_Panel_01#DX_MergedSpectra CombinedSpectrmW
		Label/Z/W='SLP_DispXPS_Panel_01'#'DX_MergedSpectra' bottom "Start voltage (eV)"
	Endif
	
	//Remove all previous trace
	SLP_Util_RemoveTraces("SLP_DispXPS_Panel_01#DX_ShiftedSpectra",TraceList1)
	SLP_Util_RemoveTraces("SLP_DispXPS_Panel_01#DX_MergedSpectra",TraceList2)
	
	//Set traces' colours
	SLP_Util_MakeRedGradient("SLP_DispXPS_Panel_01#DX_ShiftedSpectra")
	ModifyGraph /W=SLP_DispXPS_Panel_01#DX_MergedSpectra lsize=2,rgb=(1,34817,52428)
	
	//Go back to the previous folder
	SetDataFolder CurrentFolder
End

Function SLP_Util_MakeRedGradient(SLP_GraphName)
	string SLP_GraphName
	
	variable Grad_Offset=30000
	
	string TraceList=""
	string TraceName=""
	variable i=0
	
	TraceList=TraceNameList(SLP_GraphName,";",1)
	variable N_Traces=itemsinlist(TraceList,";")
	
	For (i=0;i<N_Traces;i+=1)
		TraceName=stringFromList(ItemsinList(TraceList)-1,TraceList,";")
		TraceName=stringFromList(i,TraceList)
		ModifyGraph /W=$SLP_GraphName rgb($TraceName)=(Grad_Offset+(65535-Grad_Offset)*(i/N_Traces),20000,20000)
	EndFor
End

Function SLP_Util_RemoveAllImages(SLP_GraphName)
	String SLP_GraphName
	
	string ImgList=""
	string ImgName=""
	variable i=0
	
	ImgList=ImageNameList(SLP_GraphName,";")
	If (!stringmatch(ImgList,""))
		ImgName=""
		For (i=0;i<ItemsInList(ImgList,";");i+=1)
			ImgName=stringFromList(i,ImgList,";")
			RemoveImage/W=$SLP_GraphName $ImgName
		EndFor
	EndIf
End

Function SLP_Util_RemoveAllTraces(SLP_GraphName)
	String SLP_GraphName
	
	string TraceList=""
	string TraceName=""
	variable i=0
	
	TraceList=TraceNameList(SLP_GraphName,";",1)
	If (!stringmatch(TraceList,""))
		TraceName=""
		For (i=0;i<ItemsInList(TraceList,";");i+=1)
			TraceName=stringFromList(i,TraceList,";")
			RemoveFromGraph /W=$SLP_GraphName $TraceName
		EndFor
	EndIf
End

Function SLP_Util_RemoveTraces(SLP_GraphName,TraceList)
	String SLP_GraphName
	string TraceList
	
	string TraceName=""
	variable i=0
	
	If (!stringmatch(TraceList,""))
		TraceName=""
		For (i=0;i<ItemsInList(TraceList,";");i+=1)
			TraceName=stringFromList(i,TraceList,";")
			RemoveFromGraph /W=$SLP_GraphName $TraceName
		EndFor
	EndIf
End

Function SLP_Util_NormalizeMultiWaves(W_FName_List,Nrm_pt)
	//** List items separated by ',' **
	String W_FName_List //List can be made by selecting waves in Data Browser and Ctrl-C
	Variable Nrm_pt //Normalization point
	
	String W_FName=""
	Variable i=0
	Variable NrmVal=0
	Variable N_Waves=itemsinlist(W_FName_List,",")
	
	For (i=0;i<N_Waves;i+=1)
		W_FName=stringfromlist(i,W_FName_List,",")
		Wave DataW=$W_FName
		NrmVal=DataW(Nrm_pt)
		Duplicate /O DataW $W_FName+"_nrm" /Wave=Nrm_DataW
		Nrm_DataW/=NrmVal
	EndFor

End

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
	
	Variable i=0
	Variable k1=1
	
	If (dimdelta(nrmXPSW,0)<0) //For waves with negative dE
		//Create 'Backward' wave (delta = positive) otherwise the 'integrate' function wouldn't work
		Duplicate /O nrmXPSW $BkWardXPSW_FName /Wave=BkWardXPSW
		BkWardXPSW[]=nrmXPSW[N_steps-p]-nrmXPSW(E_Low) //Remove flate BG (pre-peak should be zero)
		Variable BE_Min=dimoffset(nrmXPSW,0)+dimdelta(nrmXPSW,0)*(dimsize(nrmXPSW,0)-1)
		Variable BE_Step=-1*dimdelta(nrmXPSW,0)
		setscale /P x,BE_Min,BE_Step,BkWardXPSW
		
		//Shirley BG (backwarded version - to be killed later)
		Duplicate /O BkWardXPSW root:Package_SLP:Util:ShirleyBGW_BkWard /Wave=ShirleyBGW_BkWard 
		ShirleyBGW_BkWard=0 //Initialize Shirley BG = 0
		Duplicate /O BkWardXPSW $nSBGW_FName /Wave=nSBGW

		//Iteration to create Shirley BG (use Shirley's algorithm)
		i=0
		k1=1
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
	
	ElseIf (dimdelta(nrmXPSW,0)>0) //For normal waves
		
		//Shirley BG (backwarded version - to be killed later)
		Duplicate /O nrmXPSW $ShirleyBGW_FName /Wave=ShirleyBGW
		ShirleyBGW=0 //Initialize Shirley BG = 0

		Duplicate /O nrmXPSW $nSBGW_FName /Wave=nSBGW
		//nSBGW-=nrmXPSW(E_Low) //Remove flat BG first
		
		//Iteration to create Shirley BG (use Shirley's algorithm)
		i=0
		k1=1
		For (i=0;i<Iteration;i+=1)	
			nSBGW=nrmXPSW-nrmXPSW(E_low)-ShirleyBGW
			integrate /METH=1 nSBGW /D=ShirleyBGW
			//Scale Shirley BG so that it crosses the DATA WAVE at E_high
			k1=(nrmXPSW(E_High)-nrmXPSW(E_Low))/ShirleyBGW(E_High)
			ShirleyBGW*=k1
		EndFor
		
		ShirleyBGW+=nrmXPSW(E_Low) //Add the pre-peak BG to the Shirley BG
		nSBGW=nrmXPSW-ShirleyBGW
	
	EndIf
	
	//Display data
	If (Display_Flg)
		String TraceList=""
		String TraceName=""
		
		Display ShirleyBGW
		ModifyGraph mode=7;DelayUpdate
		ModifyGraph rgb=(65535,49151,49151) , hbFill=2 //Filled
		Modifygraph mirror=1, minor=1, tick=2
		Legend
		//Setaxis /A/R bottom
		
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

Function ButtonProc_DXPS_LoadScan(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			GetFileFolderInfo /D/Q
			NewPath /O DataPath,S_Path
			Variable Duplicate_Flag=0
			wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			wave /T SLP_DXPS_ScanListDisplayW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplayW
			wave SLP_DXPS_ScanListDisplaySelW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplaySelW
			wave /T SLP_DXPS_XPSParamW=root:Package_SLP:DispXPS:SLP_DXPS_XPSParamW
			
			String ScanNote="<Enter note here (optional)>"
			Variable hv=str2num(SLP_DXPS_XPSParamW[3][1]) //suggested value = previously used one
			
			If (V_Flag!=-1) //User select a folder
				//1st suggested name = folder name
				String VolName=StringFromList(ItemsInList(S_Path,":")-1,S_Path,":")
				VolName=SLP_Util_WNameSuggest(VolName,0,20)
				variable zStart
				variable zStep
				variable V_Flag1
				
				//Automatic search for parameter from the text file
				string FileList1=indexedfile(DataPath,-1,".txt")
				//If .txt file is found..
				If (Strlen(FileList1)) 
					String ParamFile_Name=stringfromlist(0,indexedfile(DataPath,-1,".txt"),";")
					String ParamFile_FName=S_Path+ParamFile_Name
					string ParamList=SLP_Util_ExtScanParam(File_FName=ParamFile_FName)
					zStart=str2num(stringfromlist(1,stringfromlist(0,grepList(ParamList,"STV Start")),":"))
					zStep=str2num(stringfromlist(1,stringfromlist(0,grepList(ParamList,"STV Step")),":"))
				EndIf
				
				//Prompt for Wavename and other parameters
				Do
					Prompt VolName, "Wave name"
					prompt zStart, "Start voltage begin"
					prompt zStep, "Start voltage step"
					prompt hv, "Photon energy (hv)"
					prompt ScanNote, "Note"
					DoPrompt "Enter parameters", VolName,zStart,zStep,hv,ScanNote
					V_Flag1=V_Flag //Need to copy V_Flag from DoPrompt to V_Flag1 before it is overwritten by DoAlert
					
					//Prevent user from using non-standard wave names
					If (SLP_Util_WNameCheck(VolName,20)&&!V_Flag1)
						DoAlert 0,"Scan name must be\r- No special characters\r- Starts with an alphabet\r- Less than 20 chars."
						//Limit to 20 characters because the procedure will create processed data waves with description tags (_xxx) added to the ScanName.
					Endif
					
					FindValue /TXOP=2 /TEXT=VolName SLP_DXPS_ScanListW
					If (V_Value==-1) //Not duplicate
						Duplicate_Flag=0
					Else
						Duplicate_Flag=1
					Endif
					
					If (Duplicate_Flag)
						DoAlert 0,"Duplicate scan name"
					Endif
				While (Duplicate_Flag||(SLP_Util_WNameCheck(VolName,20)&&!V_Flag1)) //Loope until user makes a good name or click Cancel
				
				If (!V_Flag1) //User click continue
					
					string CurrentFolder=GetDataFolder(1)
					string PkgFolder_FName="root:Package_SLP:DispXPS:"+VolName
					NewDataFolder /O $PkgFolder_FName //Location in Pkg Folder to store scan parameters
					NewDataFolder /O $VolName
					SetDataFolder $VolName //Save raw data here
					
					//Load series of images to a 3d volume [CODE:SLP_Util_LoadMultImg2Vol]
					SLP_Util_LoadMultImg2Vol(S_Path,VolName,zStart,zStep)
					
					string NewImgVolW_FName=CurrentFolder+VolName+":"+VolName 
					Wave NewImgVolW=$NewImgVolW_FName
					
					//Initialize dispersive line (vertical line in the middle)
					String DispLX_W_FName=NewImgVolW_FName+"_DispLX"
					String DispLY_W_FName=NewImgVolW_FName+"_DispLY"
					
					Make /O/N=2 $DispLX_W_FName /WAVE=DispLX
					Make /O/N=2 $DispLY_W_FName /WAVE=DispLY
					DispLX=Dimsize(NewImgVolW,0)/2
					DispLY={Dimsize(NewImgVolW,1),0} //**Direction matters here!** -start from bottom to top-
					
					
					//Find no. of step
					variable N_Steps=dimsize(NewImgVolW,2)
					
					variable N_Scans=Dimsize(SLP_DXPS_ScanListW,0)
					redimension /N=(dimsize(SLP_DXPS_ScanListW,0)+1,dimsize(SLP_DXPS_ScanListW,1)) SLP_DXPS_ScanListW
					redimension /N=(dimsize(SLP_DXPS_ScanListDisplayW,0)+1,dimsize(SLP_DXPS_ScanListDisplayW,1)) SLP_DXPS_ScanListDisplayW
					redimension /N=(dimsize(SLP_DXPS_ScanListDisplaySelW,0)+1,dimsize(SLP_DXPS_ScanListDisplaySelW,1)) SLP_DXPS_ScanListDisplaySelW
					
					NVAR Threshold=root:Package_SLP:DispXPS:Threshold
					NVAR MinSize=root:Package_SLP:DispXPS:MinSize
					NVAR Offset=root:Package_SLP:DispXPS:Offset
					NVAR LPLength=root:Package_SLP:DispXPS:LPLength
					NVAR LPWidth=root:Package_SLP:DispXPS:LPWidth
					NVAR NLines=root:Package_SLP:DispXPS:NLines
					
					NVAR DispFactor=root:Package_SLP:DispXPS:DispFactor
					NVAR CenterPointX=root:Package_SLP:DispXPS:CenterPointX
					NVAR CenterPointY=root:Package_SLP:DispXPS:CenterPointY
					
					
		
					SLP_DXPS_ScanListW[N_Scans][0]=VolName //Name of the scan (= wave name)
					SLP_DXPS_ScanListW[N_Scans][1]=CurrentFolder+VolName+":" //Where the Raw file is saved
					SLP_DXPS_ScanListW[N_Scans][2]=S_Path //The raw data directory on the computer
					SLP_DXPS_ScanListW[N_Scans][3]=secs2date(V_modificationDate,2)+" "+secs2time(V_modificationDate,2)
					SLP_DXPS_ScanListW[N_Scans][4]=secs2date(V_creationDate,2)+" "+secs2time(V_creationDate,2)
					SLP_DXPS_ScanListW[N_Scans][5]=num2str(Threshold)
					SLP_DXPS_ScanListW[N_Scans][6]=num2str(MinSize)
					SLP_DXPS_ScanListW[N_Scans][7]=num2str(Offset)
					SLP_DXPS_ScanListW[N_Scans][8]=num2str(LPLength)
					SLP_DXPS_ScanListW[N_Scans][9]=num2str(LPWidth)
					SLP_DXPS_ScanListW[N_Scans][10]=num2str(NLines)
					SLP_DXPS_ScanListW[N_Scans][11]=num2str(DispFactor)
					SLP_DXPS_ScanListW[N_Scans][12]=num2str(CenterPointX)
					SLP_DXPS_ScanListW[N_Scans][13]=num2str(CenterPointY)
					SLP_DXPS_ScanListW[N_Scans][14]=num2str(zStart)
					SLP_DXPS_ScanListW[N_Scans][15]=num2str(zStart+(N_steps-1)*zStep)
					SLP_DXPS_ScanListW[N_Scans][16]=num2str(zStep)
					SLP_DXPS_ScanListW[N_Scans][17]=num2str(hv)
					SLP_DXPS_ScanListW[N_Scans][18]=SLP_DXPS_XPSParamW[4][1]
					SLP_DXPS_ScanListW[N_Scans][26]="0"
					SLP_DXPS_ScanListW[N_Scans][27]="0"
					
					SLP_DXPS_ScanListDisplayW[N_Scans][1]=VolName
					SLP_DXPS_ScanListDisplayW[N_Scans][2]=ScanNote
					SLP_DXPS_ScanListDisplaySelW[N_Scans][0]=32
					SLP_DXPS_ScanListDisplaySelW[N_Scans][2]=2
					
					SLP_DXPS_XPSParamW[0][1]=num2str(zStart)
					SLP_DXPS_XPSParamW[1][1]=num2str(zStart+(N_steps-1)*zStep)
					SLP_DXPS_XPSParamW[2][1]=num2str(zStep)
					
					ListBox List_ScansList, SelRow=N_Scans
					SLP_DXPS_DisplaySelectedData(VolName)
					SLP_Util_RemoveAllTraces("SLP_DispXPS_Panel_01#DX_MERGEDSPECTRA")
					
					SetDataFolder CurrentFolder
				EndIf
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc_DXPS_PkAsgn(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			
			Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			Wave /T SLP_DXPS_XPSParamW=root:Package_SLP:DispXPS:SLP_DXPS_XPSParamW
			
			ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			string VolName=SLP_DXPS_ScanListW[SelRow][0]
			string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
			string CombinedSpectraW_FName=ImgVolW_FName+"_Cmbnd"
			string CombinedSpectraBEW_FName=ImgVolW_FName+"_CmbndBE"
			
			SLP_DXPS_ScanListW[SelRow][27]=num2str(checked)
			
			//ADD CODE HERE
			SLP_DXPS_DispPeakAssign(0)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function CheckProc_DXPS_BE(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			
			Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			Wave /T SLP_DXPS_XPSParamW=root:Package_SLP:DispXPS:SLP_DXPS_XPSParamW
			
			ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			string VolName=SLP_DXPS_ScanListW[SelRow][0]
			string ImgVolW_FName=SLP_DXPS_ScanListW[SelRow][1]+SLP_DXPS_ScanListW[SelRow][0]
			string CombinedSpectraW_FName=ImgVolW_FName+"_Cmbnd"
			string CombinedSpectraBEW_FName=ImgVolW_FName+"_CmbndBE"
			
			SLP_DXPS_ScanListW[SelRow][26]=num2str(checked)
			
			SLP_DXPS_CreateBESpectrum()
			SLP_DXPS_DisplaySelectedData(VolName)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End



Function ButtonProc_DXPS_CopyDispL(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW 
			
			//Target scan (currently selected scan) (to copy to)
  			ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			String TgtScanName=SLP_DXPS_ScanListW[SelRow][0]
			
			//Source scan (to copy from)
			String ScanList=""
			variable i=0
			variable N_Scans=dimsize(SLP_DXPS_ScanListW,0)
			String SrcScanName=""
			//Create a list string which contains all the scans
			For (i=0;i<N_Scans;i+=1)
				If (!Stringmatch(TgtScanName,SLP_DXPS_ScanListW[i][0]))
					ScanList+=SLP_DXPS_ScanListW[i][0]+";"
				EndIf
			EndFor
			//Ask user to select the src. scan
			Prompt SrcScanName,"Scan",popup,ScanList
  			DoPrompt "Choose a scan to copy the dispersive line from",SrcScanName
  			If (V_Flag==0) //If user clicks 'Continue'
	  			SLP_DXPS_CopyDispL(SrcScanName,TgtScanName)
	  			SLP_DXPS_DisplaySelectedData(TgtScanName)
	  			
	  			SetVariable  SetVar_Threshold valueColor=(39321,39321,39321),win=SLP_DispXPS_Panel_01
	  			SetVariable SetVar_MinSize valueColor=(39321,39321,39321),win=SLP_DispXPS_Panel_01
	  			SLP_DXPS_ScanListW[SelRow][24]="y"
  			EndIf
  			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_DXPS_CopyDispL(SrcScanName,TgtScanName)
	String SrcScanName,TgtScanName
	
	variable SrcRow=SLP_DXPS_FindDataRow(SrcScanName)
	variable TgtRow=SLP_DXPS_FindDataRow(TgtScanName)
	
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	
	//Copy Disp.line
	string SrcDispLine_XWave_FName=SLP_DXPS_ScanListW[SrcRow][1]+SLP_DXPS_ScanListW[SrcRow][0]+"_DispLX"
	string SrcDispLine_YWave_FName=SLP_DXPS_ScanListW[SrcRow][1]+SLP_DXPS_ScanListW[SrcRow][0]+"_DispLY"
	string TgtDispLine_XWave_FName=SLP_DXPS_ScanListW[TgtRow][1]+SLP_DXPS_ScanListW[TgtRow][0]+"_DispLX"
	string TgtDispLine_YWave_FName=SLP_DXPS_ScanListW[TgtRow][1]+SLP_DXPS_ScanListW[TgtRow][0]+"_DispLY"
	Duplicate /O $SrcDispLine_XWave_FName,$TgtDispLine_XWave_FName
	Duplicate /O $SrcDispLine_YWave_FName,$TgtDispLine_YWave_FName
	SLP_DXPS_ScanListW[TgtRow][19]=SLP_DXPS_ScanListW[SrcRow][19] //x1
	SLP_DXPS_ScanListW[TgtRow][20]=SLP_DXPS_ScanListW[SrcRow][20] //y1
	SLP_DXPS_ScanListW[TgtRow][21]=SLP_DXPS_ScanListW[SrcRow][21] //x2
	SLP_DXPS_ScanListW[TgtRow][22]=SLP_DXPS_ScanListW[SrcRow][22] //y2
	
	//Copy P. lines param.
	SLP_DXPS_ScanListW[TgtRow][7]=SLP_DXPS_ScanListW[SrcRow][7] //Offset
	SLP_DXPS_ScanListW[TgtRow][10]=SLP_DXPS_ScanListW[SrcRow][10] //N_Lines
	SLP_DXPS_ScanListW[TgtRow][8]=SLP_DXPS_ScanListW[SrcRow][8]//LPLength
	SLP_DXPS_ScanListW[TgtRow][9]=SLP_DXPS_ScanListW[SrcRow][9]//LPWidth
	
	NVAR Offset=root:Package_SLP:DispXPS:Offset
	NVAR LPLength=root:Package_SLP:DispXPS:LPLength
	NVAR LPWidth=root:Package_SLP:DispXPS:LPWidth
	NVAR NLines=root:Package_SLP:DispXPS:NLines
	
	Offset=str2num(SLP_DXPS_ScanListW[TgtRow][7])
	LPLength=str2num(SLP_DXPS_ScanListW[TgtRow][8])
	LPWidth=str2num(SLP_DXPS_ScanListW[TgtRow][9])
	NLines=str2num(SLP_DXPS_ScanListW[TgtRow][10])
	SLP_DXPS_CreateMultiPLines(TgtScanName,Offset,LPLength,NLines)

End

Function /S SLP_DXPS_GenListFromChk()
	//Return a string that lists the checked items in the ScanList listbox.
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	Wave SLP_DXPS_ScanListDisplaySelW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplaySelW
	
	String Chked_ScanList=""
	variable N_Scans=dimsize(SLP_DXPS_ScanListDisplaySelW,0)
	
	variable i=0
	For (i=0;i<N_Scans;i+=1)
		If (SLP_DXPS_ScanListDisplaySelW[i][0]==48)
			Chked_ScanList+=SLP_DXPS_ScanListW[i][0]+";"
		EndIf
	EndFor
	
	Return Chked_ScanList
End

Function SLP_DXPS_ExportSelected()
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	Wave SLP_DXPS_ScanListDisplaySelW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplaySelW
	Variable N_Scans=dimsize(SLP_DXPS_ScanListW,0)
	
	String CmbndW_FName=""
	String WaveFName_List=""
	String WaveFName=""
	String NrmWaveFName=""
	Variable NrmCnst=1
	
	Variable Energy_min=-1000000
	Variable Energy_max=1000000
	Variable Energy_step=1
	Variable Norm_Energy=0
	String Exprted2DW_Name="Exported_2DWave"
	
	Variable i=0
	
	//Auto-detect the parameters (from wave x-scale)
	For (i=0;i<N_Scans;i+=1)
		If (SLP_DXPS_ScanListDisplaySelW[i][0]==48)
			WaveFName=SLP_DXPS_ScanListW[i][1]+SLP_DXPS_ScanListW[i][0]+"_CmbndBE"
			Wave CmbndW=$WaveFName
			If (Dimoffset(CmbndW,0)<Energy_max)
				Energy_max=Dimoffset(CmbndW,0)
			EndIf
			If (Dimoffset(CmbndW,0)+DimDelta(CmbndW,0)*(DimSize(CmbndW,0)-1)>Energy_min)
				Energy_min=Dimoffset(CmbndW,0)+DimDelta(CmbndW,0)*(DimSize(CmbndW,0)-1)
			EndIf
		EndIf
	EndFor
	Energy_step=abs(DimDelta(CmbndW,0))
	Norm_Energy=Energy_min+1
	
	Prompt Energy_max,"Maximum energy"
	Prompt Energy_min,"Minimum energy"
	Prompt Energy_Step,"Energy step"
	Prompt Norm_Energy,"Energy for normalization"
	Prompt Exprted2DW_Name, "Exported 2D wave name"
	DoPrompt "Enter parameters",Energy_Max,Energy_Min,Energy_Step,Norm_Energy,Exprted2DW_Name
	
	For (i=0;i<N_Scans;i+=1)
		If (SLP_DXPS_ScanListDisplaySelW[i][0]==48)
			WaveFName=SLP_DXPS_ScanListW[i][1]+SLP_DXPS_ScanListW[i][0]+"_CmbndBE"
			NrmWaveFName=SLP_DXPS_ScanListW[i][1]+SLP_DXPS_ScanListW[i][0]+"_CmbndBE_nrm"
			
			If (Exists(WaveFName))
				Duplicate /O $WaveFName,$NrmWaveFName /Wave=NrmWave
				NrmCnst=NrmWave(Norm_Energy)
				NrmWave/=NrmCnst
				WaveFName_List+=SLP_DXPS_ScanListW[i][1]+SLP_DXPS_ScanListW[i][0]+"_CmbndBE_nrm,"
			EndIf
			
		EndIf
	EndFor
	
	SLP_Util_Make2DWave(Energy_min,Energy_max,Energy_Step,WaveFName_List,Exprted2DW_Name)
	
	NewImage $Exprted2DW_Name
	ModifyGraph height=100 
	ModifyGraph height=0 //Back to resizable
	String ImageName=StringFromlist(0,ImageNameList("",";"))
	ModifyImage $ImageName ctab={*,*,Rainbow,0}
	Setaxis /A/R top

End

Function SLP_DXPS_RestoreRawData(ScanName)
	String ScanName
	
	String CurrentFolder=GetDataFolder(1)
	
	Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
	
	variable DataRow=SLP_DXPS_FindDataRow(ScanName) //[CODE:SLP_DXPS_FindDataRow]
	
	//string ImgW_FName=SLP_DXPS_ScanListW[DataRow][1]+SLP_DXPS_ScanListW[DataRow][0]
	string RawDataPath=SLP_DXPS_ScanListW[DataRow][2]
	string DataFolder_FName=SLP_DXPS_ScanListW[DataRow][1]
	SetDataFolder $DataFolder_FName
	
	variable zStart=str2num(SLP_DXPS_ScanListW[DataRow][14])
	variable zStep=str2num(SLP_DXPS_ScanListW[DataRow][16])
	
	//Check if the raw data is stil there
	NewPath SLP_DataPathTmp, RawDataPath
	PathInfo SLP_DataPathTmp
	RawDataPath=S_Path
	SLP_DXPS_ScanListW[DataRow][2]=RawDataPath
	KillPath SLP_DataPathTmp
	
	//Load series of images to a 3d volume [CODE:SLP_Util_LoadMultImg2Vol]
	SLP_Util_LoadMultImg2Vol(RawDataPath,ScanName,zStart,zStep)
			
	//Go back 
	SetDataFolder $CurrentFolder
End

Function ButtonProc_DXPS_RestoreRawData(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			DoAlert 1,"The image data will be restored from the recorded location. This may increases the project file size significantly. Continue?"
			If (V_Flag==1)
				Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
				//Make a list of the checked items [CODE:SLP_DXPS_GenListFromChk]
				string Chked_ScanList=SLP_DXPS_GenListFromChk()
				string ScanName=""
				variable DataRow=0
				
				variable i=0
				For (i=0;i<itemsinList(Chked_ScanList,";");i+=1)
					ScanName=stringfromList(i,Chked_ScanList)
					
					SLP_DXPS_RestoreRawData(ScanName)
					
					DataRow=SLP_DXPS_FindDataRow(ScanName) //[CODE:SLP_DXPS_FindDataRow]
					
					//Update the RawDataDel_Flg in the WaveList
					SLP_DXPS_ScanListW[DataRow][25]=""
					
				EndFor
				
				//Toggle the Dispersive Line Creation controls
				ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
				variable SelRow=V_Value
				If (!stringmatch(SLP_DXPS_ScanListW[SelRow][25],"y"))
					SLP_DXPS_TgglControls("Enable")
				EndIf
				
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_DXPS_DelRawData(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave /T SLP_DXPS_ScanListW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListW
			DoAlert 1,"The image data will be removed from the checked item(s) to reduce this project file size. You can no longer extract spectra but can still correct the energy. Continue?"
			If (V_Flag==1)
				//Make a list of the checked items [CODE:SLP_DXPS_GenListFromChk]
				string Chked_ScanList=SLP_DXPS_GenListFromChk()
				variable i=0
				string ScanName=""
				string ImgW_FName=""
				variable DataRow=0
				For (i=0;i<itemsinList(Chked_ScanList,";");i+=1)
					ScanName=stringfromList(i,Chked_ScanList)
					DataRow=SLP_DXPS_FindDataRow(ScanName)
					//Delete the raw data
					ImgW_FName=SLP_DXPS_ScanListW[DataRow][1]+SLP_DXPS_ScanListW[DataRow][0]
					Killwaves $ImgW_FName
					//Update the RawDataDel_Flg in the WaveList
					SLP_DXPS_ScanListW[DataRow][25]="y"
				EndFor
			Endif
			
			ControlInfo /W=SLP_DispXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			If (stringmatch(SLP_DXPS_ScanListW[SelRow][25],"y"))
				SLP_DXPS_TgglControls("Disable")
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_DXPS_TgglControls(Tggl)
	string Tggl //Can be either "Enable" or "Disable"
	
	If (Stringmatch(Tggl,"Enable"))
		SetVariable SetVar_Threshold,win=SLP_DispXPS_Panel_01,disable=0
		SetVariable SetVar_MinSize,win=SLP_DispXPS_Panel_01,disable=0
		SetVariable SetVar_Offset,win=SLP_DispXPS_Panel_01,disable=0
		SetVariable SetVar_LPLength,win=SLP_DispXPS_Panel_01,disable=0
		SetVariable SetVar_LPWidth,win=SLP_DispXPS_Panel_01,disable=0
		SetVariable SetVar_NLines,win=SLP_DispXPS_Panel_01,disable=0
		Button Button_CreateSpectra,win=SLP_DispXPS_Panel_01,disable=0,title="Create spectra",fColor=(65535,65535,65535)
		Button Button_CopyDispL,win=SLP_DispXPS_Panel_01,disable=0
		Button Button_Correct1stInt,win=SLP_DispXPS_Panel_01,disable=0
		Button Button_EditDispL,win=SLP_DispXPS_Panel_01,disable=0
		//Button Button_Restore,win=SLP_DispXPS_Panel_01,disable=2
	Elseif (StringMatch(Tggl,"Disable"))
		SetVariable SetVar_Threshold,win=SLP_DispXPS_Panel_01,disable=2
		SetVariable SetVar_MinSize,win=SLP_DispXPS_Panel_01,disable=2
		SetVariable SetVar_Offset,win=SLP_DispXPS_Panel_01,disable=2
		SetVariable SetVar_LPLength,win=SLP_DispXPS_Panel_01,disable=2
		SetVariable SetVar_LPWidth,win=SLP_DispXPS_Panel_01,disable=2
		SetVariable SetVar_NLines,win=SLP_DispXPS_Panel_01,disable=2
		Button Button_CreateSpectra,win=SLP_DispXPS_Panel_01,disable=2,title="Raw data was removed",fColor=(65535,0,0)
		Button Button_CopyDispL,win=SLP_DispXPS_Panel_01,disable=2
		Button Button_Correct1stInt,win=SLP_DispXPS_Panel_01,disable=2
		Button Button_EditDispL,win=SLP_DispXPS_Panel_01,disable=2
		//Button Button_Restore,win=SLP_DispXPS_Panel_01,disable=0
	EndIf

End

Function ButtonProc_DXPS_SelAll(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave SLP_DXPS_ScanListDisplaySelW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplaySelW
			SLP_DXPS_ScanListDisplaySelW[][0]=48
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_DXPS_SelNone(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave SLP_DXPS_ScanListDisplaySelW=root:Package_SLP:DispXPS:SLP_DXPS_ScanListDisplaySelW
			SLP_DXPS_ScanListDisplaySelW[][0]=32
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End



Function ButtonProc_DXPS_ExpCmbnSpectrm(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_DXPS_ExpCmbnSpectrm()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_DXPS_EditDispL(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_DXPS_EditDispLine()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_DXPS_Done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K SLP_DispXPS_Panel_01
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End



Function ButtonProc_DXPS_Export2D(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_DXPS_ExportSelected()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_Util_LoadElmitecOldDAT(ce_Filename,ce_ImgName)
	//Only works for old .DAT files that don't contain header info (img data always starts from byte 392)
	//Ask users to choose file if FileName is ""
	string ce_FileName
	string ce_ImgName
	
	If (Stringmatch(ce_Filename,""))
		GetFileFolderInfo /Q
		ce_FileName=S_path
	Endif
	
	variable ce_RefNum
	open /R ce_RefNum as ce_Filename
	//DoUpdate
	
	variable ce_F_Addr
	variable ce_F_value
	
	variable ce_AttachedRecipeSize=0
	variable ce_AttachedMarkupSize=0
	variable ce_LEEMDataSize=0
	
	variable ce_ImWidth=0
	variable ce_ImHeight=0
	variable ce_ImStLocation=0
	
	//Read Image Width&Height
	ce_F_Addr=40 //byte no. 40 where the img width&height are stored
	fsetpos ce_RefNum,ce_F_Addr
	fbinread /F=2 ce_RefNum, ce_F_value
	ce_ImWidth=ce_F_value
	fbinread /F=2 ce_RefNum, ce_F_value
	ce_ImHeight=ce_F_value
	
	//Load the image
	Make /O/R/N=(ce_ImWidth,ce_ImHeight) $ce_ImgName /WAVE=Img_Wave
	//Create an image wave of the specified width and height
	
	ce_ImStLocation=392 //This is where the image data starts (for old .dat files that don't contain any other header info)
	
	fsetpos ce_RefNum,ce_ImStLocation
	Fbinread /F=2 ce_RefNum,Img_Wave

	Close ce_RefNum
End

Function SLP_Util_LoadMultImg2Vol(ImageFolder,VolName,zStart,zStep)
	string ImageFolder,VolName
	variable zStart,zStep
	
	newpath /Q/O SLP_ImagePath ImageFolder
	
	//To make it compatible with both .tif or .TIFF
	string filelist_tif=indexedfile(SLP_ImagePath,-1,".tif")
	string filelist_TIFF=indexedfile(SLP_ImagePath,-1,".TIFF")
	string filelist
	
	If (itemsinlist(filelist_tif)!=0)
		filelist=filelist_tif
	Else
		filelist=filelist_TIFF
	Endif
		
	filelist=sortlist(filelist)
	
	variable i=0
	variable N_images=itemsinlist(filelist)
	
	//Load the first image to check for the size
	imageload /Q/T=tiff /P=SLP_ImagePath stringfromlist(0,filelist)
	string ImageWaveName=stringfromlist(0,S_WaveNames)
	Wave SLP_ImgWave=$ImageWaveName
	string SLP_IntgName=VolName+"_Intg"
	
	make /O /N=(dimsize(SLP_ImgWave,0),dimsize(SLP_ImgWave,1),N_images) $VolName /WAVE=SLP_ImgVolume
	make /O /N=(dimsize(SLP_ImgWave,0),dimsize(SLP_ImgWave,1)) $SLP_IntgName /WAVE=SLP_ImgIntegrate
	SLP_ImgIntegrate=0
	killwaves SLP_ImgWave
	
	Printf "Loading "+VolName+".."
	
	for (i=0;i<itemsinlist(filelist);i+=1)
		
		imageload /Q/T=tiff /P=SLP_ImagePath stringfromlist(i,filelist)
		ImageWaveName=stringfromlist(0,S_WaveNames)
		Wave SLP_ImgWave=$ImageWaveName
		
		SLP_ImgVolume[][][i]=SLP_ImgWave[p][q]
		SLP_ImgIntegrate[][]+=SLP_ImgWave[p][q]
		
		killwaves SLP_ImgWave
		
		if ((i/50)-floor(i/50)==0)
			Printf "."
		EndIf
	
	Endfor
	
	SLP_ImgIntegrate/=i //Average the intensity
	
	SetScale /P z,zStart,zStep,SLP_ImgVolume
	
	Print "Done"
	
End





Function SLP_IXPS_init()
	string Current_folder=getdatafolder(1)
	NewDataFolder /O  root:Package_SLP
	NewDataFolder /O  root:Package_SLP:ImgXPS
	
	SetDataFolder root:Package_SLP:ImgXPS
	
	Variable /G FrameNum=0
	Variable /G ExtProgress=0
	Variable /G CorrAdj_x1=0
	Variable /G CorrAdj_y1=0
	Variable /G CorrAdj_mag1=1
	Variable /G CorrAdj_Size1=1
	Variable /G CorrAdj_Rot1=0
	Variable /G CorrAdj_x2=0
	Variable /G CorrAdj_y2=0
	Variable /G CorrAdj_mag2=1
	Variable /G CorrAdj_Size2=1
	Variable /G CorrAdj_Rot2=0
	Variable /G ColorMin=0
	Variable /G ColorMax=0
	Variable /G Threshold=50
	Variable /G LLim=-inf
	Variable /G ULim=inf
	Variable /G Iso_a1=0
	Variable /G Iso_b1=0
	Variable /G Iso_a2=0
	Variable /G Iso_b2=0
	Variable /G Iso_C=0
	Variable /G zProfBin=5
	
	String /G SelSubWindow="SLP_ImgXPS_Panel_01#IX_ResultMap1"
	
	Make /O/T/N=(5,3) SLP_IXPS_XPSParamW
	SLP_IXPS_XPSParamW[0][0]="STV begin"
	SLP_IXPS_XPSParamW[1][0]="STV end"
	SLP_IXPS_XPSParamW[2][0]="STV step"
	SLP_IXPS_XPSParamW[3][0]="hv"
	SLP_IXPS_XPSParamW[4][0]="Analyser WF"
	SLP_IXPS_XPSParamW[][2]="eV"
	
	Make /O/N=(5,3) SLP_IXPS_XPSParamSelW
	SLP_IXPS_XPSParamSelW[][1]=2
	SLP_IXPS_XPSParamSelW[1][1]=0
	
	Make /T/O/N=(4,0) SLP_IXPS_FitParamW
	Make /O/N=(4,0) SLP_IXPS_FitParamSelW
	//SetDimLabel 1,0,ParName,SLP_IXPS_FitParamW
	//SetDimLabel 1,1,SaveResult,SLP_IXPS_FitParamW
	//SetDimLabel 1,2,Map1,SLP_IXPS_FitParamW
	//SetDimLabel 1,3,Map2,SLP_IXPS_FitParamW
	
	Make /O/N=(0,16) SLP_IXPS_ScanListDisplaySelW
	SLP_IXPS_ScanListDisplaySelW[][0]=32
	Make /O/T/N=(0,16) SLP_IXPS_ScanListDisplayW
	SetDimLabel 1,0,Sel,SLP_IXPS_ScanListDisplayW
	SetDimLabel 1,1,ScanName,SLP_IXPS_ScanListDisplayW
	SetDimLabel 1,2,Notes,SLP_IXPS_ScanListDisplayW
	
	Make /O/T/N=(0,64) SLP_IXPS_ScanListW
	SetDimLabel 1,0,ScanName,SLP_IXPS_ScanListW
	SetDimLabel 1,1,DataFolder,SLP_IXPS_ScanListW
	SetDimLabel 1,2,RawDataLoc,SLP_IXPS_ScanListW
	SetDimLabel 1,3,DateModified,SLP_IXPS_ScanListW
	SetDimLabel 1,4,DateCreate,SLP_IXPS_ScanListW
	SetDimLabel 1,5,SelFrame,SLP_IXPS_ScanListW
	SetDimLabel 1,6,MinInt,SLP_IXPS_ScanListW
	SetDimLabel 1,7,MaxInt,SLP_IXPS_ScanListW
	SetDimLabel 1,8,FitFunction,SLP_IXPS_ScanListW//Not used anymore
	SetDimLabel 1,9,FitMskLLim,SLP_IXPS_ScanListW
	SetDimLabel 1,10,FitMskULim,SLP_IXPS_ScanListW
	SetDimLabel 1,11,STV_St,SLP_IXPS_ScanListW
	SetDimLabel 1,12,STV_End,SLP_IXPS_ScanListW
	SetDimLabel 1,13,STV_Step,SLP_IXPS_ScanListW
	SetDimLabel 1,14,hv,SLP_IXPS_ScanListW
	SetDimLabel 1,15,AnalyserWF,SLP_IXPS_ScanListW
	SetDimLabel 1,16,ExtBin,SLP_IXPS_ScanListW//Bin used in extraction (//used to be MinColour11)
	SetDimLabel 1,17,MaxColour11,SLP_IXPS_ScanListW//Not used anymore
	SetDimLabel 1,18,CorrDLLim,SLP_IXPS_ScanListW//For Corr
	SetDimLabel 1,19,CorrDULim,SLP_IXPS_ScanListW//For Corr
	SetDimLabel 1,20,CMapDLLim,SLP_IXPS_ScanListW//For CMap
	SetDimLabel 1,21,CMapDULim,SLP_IXPS_ScanListW//For CMap
	SetDimLabel 1,22,ParamSel1,SLP_IXPS_ScanListW//Parameter1 selection
	SetDimLabel 1,23,ParamSel2,SLP_IXPS_ScanListW//Parameter2 selection
	SetDimLabel 1,24,ParamSel3,SLP_IXPS_ScanListW//Parameter3 selection
	SetDimLabel 1,25,ParamSel4,SLP_IXPS_ScanListW//Parameter4 selection
	SetDimLabel 1,26,ParamSel5,SLP_IXPS_ScanListW//Parameter5 selection
	SetDimLabel 1,27,ParamSel6,SLP_IXPS_ScanListW//Parameter6 selection
	SetDimLabel 1,28,xMin,SLP_IXPS_ScanListW //Screen position
	SetDimLabel 1,29,xMax,SLP_IXPS_ScanListW //Screen position
	SetDimLabel 1,30,yMin,SLP_IXPS_ScanListW //Screen position
	SetDimLabel 1,31,yMax,SLP_IXPS_ScanListW //Screen position
	SetDimLabel 1,32,FOV,SLP_IXPS_ScanListW //FOV
	SetDimLabel 1,33,CorrW1,SLP_IXPS_ScanListW //Image wave FName for map1 correction
	SetDimLabel 1,34,CorrW2,SLP_IXPS_ScanListW //Not used anymore
	SetDimLabel 1,35,CorrAdj_x1,SLP_IXPS_ScanListW //Map correction parameters
	SetDimLabel 1,36,CorrAdj_y1,SLP_IXPS_ScanListW//Map correction parameters
	SetDimLabel 1,37,CorrAdj_mag1,SLP_IXPS_ScanListW//Map correction parameters
	SetDimLabel 1,38,CorrAdj_Size1,SLP_IXPS_ScanListW//Map correction parameters
	SetDimLabel 1,39,CorrAdj_Rot1,SLP_IXPS_ScanListW//Map correction parameters
	SetDimLabel 1,40,PeakAsgn_Flg,SLP_IXPS_ScanListW//Flag for peak assignment
	SetDimLabel 1,41,PeakAsgn_pos,SLP_IXPS_ScanListW//position (points) for peak assignment
	SetDimLabel 1,42,CursorP,SLP_IXPS_ScanListW//saved cursor position (p)
	SetDimLabel 1,43,CursorQ,SLP_IXPS_ScanListW//saved cursor position (q)
	SetDimLabel 1,44,BE_Display_Flg,SLP_IXPS_ScanListW //Display BE instead of KE (STV) in the x-axis of z-prof window
	SetDimLabel 1,45,RawDataRemoved_Flg,SLP_IXPS_ScanListW //Raw data has been removed (y/n)?
	SetDimLabel 1,46,Notes,SLP_IXPS_ScanListW //Notes
	SetDimLabel 1,47,SelectedSubWindow,SLP_IXPS_ScanListW //Sub window selection
	SetDimLabel 1,48,FitMode,SLP_IXPS_ScanListW //FitMode
	SetDimLabel 1,49,Iso_a1,SLP_IXPS_ScanListW
	SetDimLabel 1,50,Iso_b1,SLP_IXPS_ScanListW
	SetDimLabel 1,51,Iso_a2,SLP_IXPS_ScanListW
	SetDimLabel 1,52,Iso_b2,SLP_IXPS_ScanListW
	SetDimLabel 1,53,Iso_C,SLP_IXPS_ScanListW
	
	Make /O/N=(5,5) SLP_IXPS_DummyImg1
	Make /O/N=(5,5) SLP_IXPS_DummyImg2
	Make /O/N=(5,5) SLP_IXPS_DummyImg3
	Make /O/N=(5) SLP_IXPS_DummySpectrum
	
	Setdatafolder $Current_folder
	
	SLP_Util_Init()
End

Function SLP_IXPS_CreatePanel1() : Panel

	//Initialize IXPS procedures if it is the first time that this panel is used
	If (!DataFolderExists("root:Package_SLP:ImgXPS" ))
		SLP_IXPS_init()
	Endif
	
	NVAR FrameNum=root:Package_SLP:ImgXPS:FrameNum
	NVAR ExtProgress=root:Package_SLP:ImgXPS:ExtProgress
	NVAR CorrAdj_x1=root:Package_SLP:ImgXPS:CorrAdj_x1
	NVAR CorrAdj_y1=root:Package_SLP:ImgXPS:CorrAdj_y1
	NVAR CorrAdj_mag1=root:Package_SLP:ImgXPS:CorrAdj_mag1
	NVAR CorrAdj_Size1=root:Package_SLP:ImgXPS:CorrAdj_Size1
	NVAR CorrAdj_Rot1=root:Package_SLP:ImgXPS:CorrAdj_Rot1
	NVAR CorrAdj_x2=root:Package_SLP:ImgXPS:CorrAdj_x2
	NVAR CorrAdj_y2=root:Package_SLP:ImgXPS:CorrAdj_y2
	NVAR CorrAdj_mag2=root:Package_SLP:ImgXPS:CorrAdj_mag2
	NVAR CorrAdj_Size2=root:Package_SLP:ImgXPS:CorrAdj_Size2
	NVAR CorrAdj_Rot2=root:Package_SLP:ImgXPS:CorrAdj_Rot2
	NVAR ColorMin=root:Package_SLP:ImgXPS:ColorMin
	NVAR ColorMax=root:Package_SLP:ImgXPS:ColorMax
	NVAR Threshold=root:Package_SLP:ImgXPS:Threshold
	NVAR LLim=root:Package_SLP:ImgXPS:LLim
	NVAR ULim=root:Package_SLP:ImgXPS:ULim
	NVAR Iso_a1=root:Package_SLP:ImgXPS:Iso_a1
	NVAR Iso_b1=root:Package_SLP:ImgXPS:Iso_b1
	NVAR Iso_a2=root:Package_SLP:ImgXPS:Iso_a2
	NVAR Iso_b2=root:Package_SLP:ImgXPS:Iso_b2
	NVAR Iso_C=root:Package_SLP:ImgXPS:Iso_C
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	Wave /T SLP_IXPS_ScanListDisplayW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplayW
	Wave SLP_IXPS_ScanListDisplaySelW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplaySelW
	Wave /T SLP_IXPS_XPSParamW=root:Package_SLP:ImgXPS:SLP_IXPS_XPSParamW
	Wave SLP_IXPS_XPSParamSelW=root:Package_SLP:ImgXPS:SLP_IXPS_XPSParamSelW
	Wave /T SLP_IXPS_FitParamW=root:Package_SLP:ImgXPS:SLP_IXPS_FitParamW
	Wave SLP_IXPS_FitParamSelW=root:Package_SLP:ImgXPS:SLP_IXPS_FitParamSelW
	
	DoWindow /K SLP_ImgXPS_Panel_01
	PauseUpdate; Silent 1		// building window...

	Variable Ctrl_xPos0=10

	Variable Img_xPos=480
	Variable Img_yPos=20
	Variable Img_xSize=130
	Variable Img_ySize=100
	Variable Img_xOffset=10
	Variable Img_yOffset=20
	Variable Img_TitleOffset=15
	
	Variable Img_xPos1=Img_xPos+0*(Img_xSize+Img_xOffset)
	Variable Img_xPos2=Img_xPos+1*(Img_xSize+Img_xOffset)
	Variable Img_xPos3=Img_xPos+2*(Img_xSize+Img_xOffset)
	Variable Img_yPos1=Img_yPos+0*(Img_ySize+Img_yOffset)
	Variable Img_yPos2=Img_yPos+1*(Img_ySize+Img_yOffset)
	Variable Img_yPos3=Img_yPos+2*(Img_ySize+Img_yOffset)
	Variable Img_yPos4=Img_yPos+3*(Img_ySize+Img_yOffset)

	NewPanel /W=(200,70,1100,770) /N=SLP_ImgXPS_Panel_01
	
	SetDrawLayer UserBack
	
	SetDrawEnv fsize= 14;DrawText Ctrl_xPos0,29,"Imaging XPS data extraction"
	SetDrawEnv fsize= 10;DrawText Ctrl_xPos0,50,"Rawdata"
	SetDrawEnv fsize= 10;DrawText 475,565,"XPS parameters"
	SetDrawEnv fsize= 10;DrawText 620,487,"Histogram"
	SetDrawEnv fsize= 10;DrawText 620,645,"Min"
	SetDrawEnv fsize= 10;DrawText 620,660,"Max"
	SetDrawEnv fsize= 10;DrawText 11,501,"Curve fittings"
	
	SetDrawEnv fsize= 10;DrawText Img_xPos1,Img_yPos4-6,"Adjust correction1"
	SetDrawEnv fsize= 10;DrawText Img_xPos2,Img_yPos4-6,"Adjust correction2"
	
	SetDrawEnv fsize= 10;DrawText 235,25,"Scan list"
	
	SetVariable SetVar_FrameNum,pos={Ctrl_xPos0+60,35},size={120,16},title="Frame no.",fsize=10,variable=FrameNum,proc=SetVarProc_IXPS_ImgFrame
	Slider Slider_ImgVolFrame,pos={Ctrl_xPos0,55},size={216,13},limits={0,2,1},value= 0,side= 0,vert= 0,ticks= 0,proc=SliderProc_IXPS_ImgFrame,variable=FrameNum

	Display/W=(Ctrl_xPos0,70,220,230)/HOST=SLP_ImgXPS_Panel_01  /N=IX_ImgW 
	AppendImage /W=SLP_ImgXPS_Panel_01#IX_ImgW root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1
	ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_ImgW tick=3,noLabel=2,standoff=0,margin=5
	
	Button Button_CreateMask,pos={Ctrl_xPos0,230},size={110,16},title="Create screen mask",fSize=10,proc=ButtonProc_IXPS_CreateScrnMask
	SetVariable SetVar_Threshold pos={Ctrl_xPos0+115,230},size={90,16},fsize=10,title="Threshold:",value=Threshold,limits={0,inf,1}

	Button Button_ChooseScrnMsk,pos={Ctrl_xPos0,245},size={190,16},title="Copy screen mask from..",fSize=10,proc=ButtonProc_IXPS_CopyScrn

	Button button_DrawROI,pos={Ctrl_xPos0,260},size={110,16},proc=ButtonProc_IXPS_ScrnMskDraw,title="Draw ROI Manually"
	Button button_DrawROI,fSize=10
	
	Button Button_CreateROI,pos={Ctrl_xPos0+115,260},size={40,16},proc=ButtonProc_IXPS_ScrnMskCreate,title="Create"
	Button Button_CreateROI,fSize=10

	//z-profile trace
	  CheckBox Check_zProfile,pos={201,250},size={72,15},title="See z-profile",value= 0,proc=CheckProc_IXPS_zProfile

	//POPUP for fit function//

	PopupMenu Popup_FitType,pos={16,275},size={230,16},bodyWidth=180,title="Fit mode:",proc=PopMenuProc_FitSel
	PopupMenu Popup_FitType,mode=1,value= #"\"Secondary yield cut-off;LEEM cut-off;1GLA;2GLAs;3GLAs;4GLAs\"",fsize=12
	
	CheckBox CheckBox_FastExt,pos={390,260},size={64,16},fsize=10,title="Fast mode"
	Button Button_ExtMap1,pos={280,275},size={180,20},title="Extract..",fSize=12,proc=ButtonProc_IXPS_Ext1

	ListBox List_FitParam,pos={Ctrl_xPos0,297},size={450,186},ListWave=SLP_IXPS_FitParamW,SelWave=SLP_IXPS_FitParamSelW
	ListBox List_FitParam widths={22, 22, 75, 40,40, 27,36, 36,20, 20, 40,40, 1, 1, 1},userColumnResize=1,proc=ListBoxProc_IXPS_ParamList
	//Column: Ext-K-Param-Value-Guess-Hold-LLim-ULim-Disp-Corr-DLLim-DULim
	
	//SetVariable SetVar_FittingMask,pos={98, 490},size={176,15},title="Fitting mask",limits={-inf,inf,0}
	SetVariable SetVar_LLim,pos={90, 490},size={70,15},title="LLim",limits={-inf,inf,0.1},variable=LLim,proc=SetVarProc_IXPS_FitLim
	SetVariable SetVar_ULim,pos={160, 490},size={70,15},title="ULim",limits={-inf,inf,0.1},variable=ULim,proc=SetVarProc_IXPS_FitLim
	
	Button Button_ExportzProf,pos={260,490},size={90,16},title="Export z-profile",fSize=10,proc=ButtonProc_IXPS_ExportZProf
	CheckBox CheckBox_BE,pos={360,490},size={90,16},title="B.E. for x-axis",fSize=10,proc=CheckProc_IXPS_BE
	
	Button Button_AutoRange pos={770,470},size={66,16},fsize=10,title="Auto range"
	Button Button_PlotHist pos={835,470},size={40,16},fsize=10,title="Plot"

	SetVariable SetVar_ExtProgress,pos={10,670},size={100,16},title="Message log:",fsize=10,variable=ExtProgress
	SetVariable SetVar_ExtProgress noedit=1,limits={-inf,inf,0},format="%d"
	
	Display/W=(Ctrl_xPos0,510,Ctrl_xPos0+450,660)/HOST=SLP_ImgXPS_Panel_01 /N=IX_FittingWin
	
	////////////////////////////////////////////////////////

	//XPS Param
	ListBox List_XPSParam,pos={475,565},size={130,80},ListWave=SLP_IXPS_XPSParamW,SelWave=SLP_IXPS_XPSParamSelW
	ListBox List_XPSParam,proc=ListBoxProc_IXPS_XPSParam
	
	//Hisogram
	Display/W=(615,490,880,625)/HOST=SLP_ImgXPS_Panel_01 /N=IX_Histogram
	
	Slider Slider_ImgVolMinInt,pos={640,630},size={145,16},variable=ColorMin,proc=SliderProc_IXPS_CScale
	Slider Slider_ImgVolMinInt,limits={0,2,1},side= 2,vert= 0,ticks= 0
	Slider Slider_ImgVolMaxInt,pos={640,650},size={145,16},variable=ColorMax,proc=SliderProc_IXPS_CScale
	Slider Slider_ImgVolMaxInt,limits={0,2,1},side= 2,vert= 0,ticks= 0
	
	SetVariable SetVar_MinInt,pos={790,630},size={40,16},fsize=8,variable=ColorMin,proc=SetVarProc_CScale,title=" ",limits={-inf,inf,0.02},format="%.3f"//,noedit=1
	SetVariable SetVar_MaxInt,pos={790,650},size={40,16},fsize=8,variable=ColorMax,proc=SetVarProc_CScale,title=" ",limits={-inf,inf,0.02},format="%.3f"//,noedit=1
	
	///////////////////////////////////////////////////////
	
	CheckBox CheckBox_SelImg1,pos={Img_xPos1,Img_yPos1-Img_TitleOffset},size={100,14},fsize=9,title="Param1",mode=1,proc=CheckProc_IXPS_SelImage
	CheckBox CheckBox_SelImg2,pos={Img_xPos2,Img_yPos1-Img_TitleOffset},size={100,14},fsize=9,title="Param2",mode=1,proc=CheckProc_IXPS_SelImage
	CheckBox CheckBox_SelImg3,pos={Img_xPos3,Img_yPos1-Img_TitleOffset},size={100,14},fsize=9,title="Param3",mode=1,proc=CheckProc_IXPS_SelImage
	CheckBox CheckBox_SelImg4,pos={Img_xPos1,Img_yPos2-Img_TitleOffset},size={100,14},fsize=9,title="Param4",mode=1,proc=CheckProc_IXPS_SelImage
	CheckBox CheckBox_SelImg5,pos={Img_xPos2,Img_yPos2-Img_TitleOffset},size={100,14},fsize=9,title="Param5",mode=1,proc=CheckProc_IXPS_SelImage
	CheckBox CheckBox_SelImg6,pos={Img_xPos3,Img_yPos2-Img_TitleOffset},size={100,14},fsize=9,title="Param6",mode=1,proc=CheckProc_IXPS_SelImage

	CheckBox CheckBox_SelImgCorr,pos={Img_xPos1,Img_yPos3-Img_TitleOffset},size={100,14},fsize=9,title="Correction",mode=1,proc=CheckProc_IXPS_SelImage
	CheckBox CheckBox_SelImgCMap,pos={Img_xPos2,Img_yPos3-Img_TitleOffset},size={100,14},fsize=9,title="Corrected map",mode=1,proc=CheckProc_IXPS_SelImage
	
	Button Button_LoadScan,pos={390,10},size={70,16},title="Load scan..",fSize=10,proc=ButtonProc_IXPS_LoadScan

	ListBox List_ScansList,pos={230,30},size={225,180},mode=2,proc=ListBoxProc_IXPS_ScanList
	ListBox List_ScansList,ListWave=SLP_IXPS_ScanListDisplayW,SelWave=SLP_IXPS_ScanListDisplaySelW
	ListBox List_ScansList,userColumnResize=1,widths={20,70,250,0,0,0,0,0,0,0,0,0,0,0,0,0}
	
	
	Button Button_SelAll,pos={230,215},size={60,16},title="Select all",fSize=10,proc=ButtonProc_IXPS_SelAll
	Button Button_SelNone,pos={290,215},size={70,16},title="Select none",fSize=10,proc=ButtonProc_IXPS_SelNone
	Button Button_DelScan,pos={370,215},size={80,16},title="Delete scan(s)",fSize=10,proc=ButtonProc_IXPS_DelDataSet
	Button Button_RmRaw,pos={230,230},size={100,16},title="Remove raw data",fSize=10,proc=ButtonProc_IXPS_DelRawData
	Button Button_ResRaw,pos={331,230},size={100,16},title="Restore raw data",fSize=10,proc=ButtonProc_IXPS_RestoreRawData
	Button Button_Done,pos={828,645},size={50,16},title="Done",fSize=10,proc=ButtonProc_IXPS_Done
	
	Button Button_CopyParam title="Copy values from..",pos={280,260},size={105,16},fSize=10,proc=ButtonProc_IXPS_CopyFitCoef
	
	////////////////////////////////////////////////////
	
	SetVariable SetVar_CorrAdj_x1,pos={Img_xPos1+0,Img_yPos4},size={60,16},title="x:",variable=CorrAdj_x1,limits={-inf,inf,1},proc=SetVarProc_IXPS_CorrectMap1
	SetVariable SetVar_CorrAdj_y1,pos={Img_xPos1+65,Img_yPos4},size={60,16},title="y:",variable=CorrAdj_y1,limits={-inf,inf,1},proc=SetVarProc_IXPS_CorrectMap1
	SetVariable SetVar_CorrAdj_mag1,pos={Img_xPos1+0,Img_yPos4+20},size={60,16},title="Int:",variable=CorrAdj_mag1,limits={0,inf,0.02},proc=SetVarProc_IXPS_CorrectMap1
	SetVariable SetVar_CorrAdj_size1,pos={Img_xPos1+65,Img_yPos4+20},size={60,16},title="Size:",variable=CorrAdj_Size1,limits={0,inf,0.02},proc=SetVarProc_IXPS_CorrectMap1
	SetVariable SetVar_CorrAdj_rot1,pos={Img_xPos1+0,Img_yPos4+40},size={100,16},title="Rotation:",variable=CorrAdj_Rot1,limits={-180,180,1},proc=SetVarProc_IXPS_CorrectMap1
	
	variable Isochrome_yPos=Img_yPos4+60
	
	Button Button_AutoCorr,pos={Img_xPos1+5,Isochrome_yPos+0},size={120,16},proc=ButtonProc_IXPS_AutoCorr,title="Auto create correction"
	Button Button_AutoCorr,fSize=9
	SetVariable SetVar_Iso_a1,pos={Img_xPos1+0,Isochrome_yPos+20},size={120,16},title="a1:",variable=Iso_a1,limits={-inf,inf,1e-4},proc=SetVarProc_IXPS_Isochrome
	SetVariable SetVar_Iso_b1,pos={Img_xPos1+0,Isochrome_yPos+40},size={120,16},title="b1:",variable=Iso_b1,limits={-inf,inf,1e-4},proc=SetVarProc_IXPS_Isochrome
	SetVariable SetVar_Iso_a2,pos={Img_xPos1+0,Isochrome_yPos+60},size={120,16},title="a2:",variable=Iso_a2,limits={-inf,inf,1e-4},proc=SetVarProc_IXPS_Isochrome
	SetVariable SetVar_Iso_b2,pos={Img_xPos1+0,Isochrome_yPos+80},size={120,16},title="b2:",variable=Iso_b2,limits={-inf,inf,1e-4},proc=SetVarProc_IXPS_Isochrome
	SetVariable SetVar_Iso_C,pos={Img_xPos1+0,Isochrome_yPos+100},size={120,16},title="C:",variable=Iso_C,limits={-inf,inf,1e-1},proc=SetVarProc_IXPS_Isochrome
	
	///////////////////////////////////////////////////
	
	Button Button_PlotUMap1,pos={Img_xPos1+90,Img_yPos1-16},size={40,16},title="Plot",fSize=9,proc=ButtonProc_IXPS_PlotImg
	Button Button_PlotUMap2,pos={Img_xPos2+90,Img_yPos1-16},size={40,16},title="Plot",fSize=9,proc=ButtonProc_IXPS_PlotImg
	Button Button_PlotUMap3,pos={Img_xPos3+90,Img_yPos1-16},size={40,16},title="Plot",fSize=9,proc=ButtonProc_IXPS_PlotImg
	Button Button_PlotUMap4,pos={Img_xPos1+90,Img_yPos2-16},size={40,16},title="Plot",fSize=9,proc=ButtonProc_IXPS_PlotImg
	Button Button_PlotUMap5,pos={Img_xPos2+90,Img_yPos2-16},size={40,16},title="Plot",fSize=9,proc=ButtonProc_IXPS_PlotImg
	Button Button_PlotUMap6,pos={Img_xPos3+90,Img_yPos2-16},size={40,16},title="Plot",fSize=9,proc=ButtonProc_IXPS_PlotImg

	Button Button_ChooseCor1,pos={Img_xPos1+80,Img_yPos3-16},size={50,16},title="Choose",fSize=9,proc=ButtonProc_IXPS_ChooseCor1W
	Button Button_PlotCMap1,pos={Img_xPos2+90,Img_yPos3-16},size={40,16},title="Plot",fSize=9,proc=ButtonProc_IXPS_PlotImg

	Display/W=(Img_xPos1,Img_yPos1,Img_xPos1+Img_xSize,Img_yPos1+Img_ySize)/HOST=SLP_ImgXPS_Panel_01 /N=IX_RawExt1
	AppendImage /W=SLP_ImgXPS_Panel_01#IX_RawExt1 root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1
	ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_RawExt1 tick=3,noLabel=2,standoff=0,margin=5
	
	Display/W=(Img_xPos2,Img_yPos1,Img_xPos2+Img_xSize,Img_yPos1+Img_ySize)/HOST=SLP_ImgXPS_Panel_01 /N=IX_RawExt2
	AppendImage /W=SLP_ImgXPS_Panel_01#IX_RawExt2 root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1
	ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_RawExt2 tick=3,noLabel=2,standoff=0,margin=5
		
	Display/W=(Img_xPos3,Img_yPos1,Img_xPos3+Img_xSize,Img_yPos1+Img_ySize)/HOST=SLP_ImgXPS_Panel_01 /N=IX_RawExt3
	AppendImage /W=SLP_ImgXPS_Panel_01#IX_RawExt3 root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1
	ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_RawExt3 tick=3,noLabel=2,standoff=0,margin=5
	
	Display/W=(Img_xPos1,Img_yPos2,Img_xPos1+Img_xSize,Img_yPos2+Img_ySize)/HOST=SLP_ImgXPS_Panel_01 /N=IX_RawExt4
	AppendImage /W=SLP_ImgXPS_Panel_01#IX_RawExt4 root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1
	ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_RawExt4 tick=3,noLabel=2,standoff=0,margin=5
	
	Display/W=(Img_xPos2,Img_yPos2,Img_xPos2+Img_xSize,Img_yPos2+Img_ySize)/HOST=SLP_ImgXPS_Panel_01 /N=IX_RawExt5
	AppendImage /W=SLP_ImgXPS_Panel_01#IX_RawExt5 root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1
	ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_RawExt5 tick=3,noLabel=2,standoff=0,margin=5
		
	Display/W=(Img_xPos3,Img_yPos2,Img_xPos3+Img_xSize,Img_yPos2+Img_ySize)/HOST=SLP_ImgXPS_Panel_01 /N=IX_RawExt6
	AppendImage /W=SLP_ImgXPS_Panel_01#IX_RawExt6 root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1
	ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_RawExt6 tick=3,noLabel=2,standoff=0,margin=5

	Display/W=(Img_xPos1,Img_yPos3,Img_xPos1+Img_xSize,Img_yPos3+Img_ySize)/HOST=SLP_ImgXPS_Panel_01 /N=IX_Correction1
	AppendImage /W=SLP_ImgXPS_Panel_01#IX_Correction1 root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1
	ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_Correction1 tick=3,noLabel=2,standoff=0,margin=5

	Display/W=(Img_xPos2,Img_yPos3,Img_xPos2+Img_xSize*2,Img_yPos3+Img_ySize*2)/HOST=SLP_ImgXPS_Panel_01 /N=IX_ResultMap1
	AppendImage /W=SLP_ImgXPS_Panel_01#IX_ResultMap1 root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1
	ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_ResultMap1 tick=3,noLabel=2,standoff=0,margin=5
	
	CheckBox CheckBox_PeakAssign1,pos={364,673},size={104,15},title="Peak assignments"
	CheckBox CheckBox_PeakAssign1,fSize=10,value= 1,proc=CheckProc_IXPS_DispPeakAssign
	
	If (DimSize(SLP_IXPS_ScanListW,0)) //If there is already loaded data, display the first one
		SLP_IXPS_DisplaySelectedData(SLP_IXPS_ScanListW[0][0])
	EndIf
	
	//AssignHookFunction (SLP_IXPS_CursorHook)
	setwindow SLP_ImgXPS_Panel_01,hook(zProfileUpdate)=SLP_IXPS_CursorHook//,hookevents=4
	
	//Colorize
	modifypanel /W=SLP_ImgXPS_Panel_01 cbRGB=(30000,50000,35000)
	Modifygraph /W=SLP_ImgXPS_Panel_01#IX_RAWEXT1 wbRGB=(17500,40000,32000)
	Modifygraph /W=SLP_ImgXPS_Panel_01#IX_RAWEXT2 wbRGB=(17500,40000,32000)
	Modifygraph /W=SLP_ImgXPS_Panel_01#IX_RAWEXT3 wbRGB=(17500,40000,32000)
	Modifygraph /W=SLP_ImgXPS_Panel_01#IX_RAWEXT4 wbRGB=(17500,40000,32000)
	Modifygraph /W=SLP_ImgXPS_Panel_01#IX_RAWEXT5 wbRGB=(17500,40000,32000)
	Modifygraph /W=SLP_ImgXPS_Panel_01#IX_RAWEXT6 wbRGB=(17500,40000,32000)
	Modifygraph /W=SLP_ImgXPS_Panel_01#IX_CORRECTION1 wbRGB=(17500,40000,32000)
	Modifygraph /W=SLP_ImgXPS_Panel_01#IX_RESULTMAP1 wbRGB=(17500,40000,32000)
	
	
End

Function CheckProc_IXPS_DispPeakAssign(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SLP_IXPS_DispPeakAssign(0)
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			SLP_IXPS_ScanListW[SelRow][40]=num2str(checked)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_DispPeakAssign(CursorHook_Flg)
	variable CursorHook_Flg
	variable BE_Window=2 //eV
	
	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	ControlInfo /W=SLP_ImgXPS_Panel_01 CheckBox_BE
	Variable BE_Flg=V_Value
	ControlInfo /W=SLP_ImgXPS_Panel_01 CheckBox_PeakAssign1
	Variable  PeakAssign_Flg=V_Value
	Variable BE_Pos=0
	Variable X_Pos=0
	
	Wave /T SLP_IXPS_XPSParamW=root:Package_SLP:ImgXPS:SLP_IXPS_XPSParamW
	variable STV_Begin=str2num(SLP_IXPS_XPSParamW[0][1])
	variable STV_End=str2num(SLP_IXPS_XPSParamW[1][1])
	variable hv=str2num(SLP_IXPS_XPSParamW[3][1])
	variable aWF=str2num(SLP_IXPS_XPSParamW[4][1])
	Variable MidBE=hv-aWF-(STV_Begin+STV_End)/2
	
	If (PeakAssign_Flg)
		Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW		
		String VolName=SLP_IXPS_ScanListW[SelRow][0]
		
		String TraceName=""
		//Check whether the x-scale is BE or KE
		If (BE_Flg) //BE is used
			TraceName=VolName+"_zProflBE"
		Else //KE is used - change KE to BE
			TraceName=VolName+"_zProfl"
		Endif
		
		If (Numtype(BE_Pos)==2) //checked whether cursor position has been recorded
			SLP_IXPS_ScanListW[SelRow][41]=num2str(MidBE)
		EndIf

		If (!CursorHook_Flg) //If not used in cursor hook = change the cursor to the position
			If (BE_Flg==1)
				X_Pos=str2num(SLP_IXPS_ScanListW[SelRow][41])
			else
				X_Pos=hv-aWF-str2num(SLP_IXPS_ScanListW[SelRow][41])
			EndIf
			Cursor /W=SLP_ImgXPS_Panel_01#IX_FITTINGWIN A $TraceName X_Pos
		Endif

		X_Pos=xcsr(A,"SLP_ImgXPS_Panel_01#IX_FITTINGWIN")
		Variable KE_Pos=0
		
		If (BE_Flg==1) //BE is used
			BE_Pos=X_Pos
			KE_Pos=hv-X_Pos-aWF
		Else //KE is used - change KE to BE
			BE_Pos=hv-X_Pos-aWF //convert to BE before looking up the BE table
			KE_Pos=X_Pos
		Endif
		
		SLP_IXPS_ScanListW[SelRow][41]=num2str(BE_Pos)
		TextBox /C/W=SLP_ImgXPS_Panel_01#IX_FITTINGWIN /N=PeakAssignment1  SLP_Util_FindElement(BE_Pos,BE_Window)
		TextBox /A=LT /C/W=SLP_ImgXPS_Panel_01#IX_FITTINGWIN /N=PeakAssignment2  SLP_Util_FindAuger(KE_Pos,BE_Window)
	Else
		Cursor /K/W=SLP_ImgXPS_Panel_01#IX_FITTINGWIN A
		TextBox/K/W=SLP_ImgXPS_Panel_01#IX_FITTINGWIN /N=PeakAssignment1	
		TextBox/K/W=SLP_ImgXPS_Panel_01#IX_FITTINGWIN /N=PeakAssignment2			
	EndIf

End



Function ButtonProc_IXPS_AutoCorr(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String VolName=SLP_IXPS_ScanListW[SelRow][0] 
			
			SLP_IXPS_GenIsoChrom(VolName)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_IXPS_Isochrome(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			NVAR Iso_a1=root:Package_SLP:ImgXPS:Iso_a1
			NVAR Iso_b1=root:Package_SLP:ImgXPS:Iso_b1
			NVAR Iso_a2=root:Package_SLP:ImgXPS:Iso_a2
			NVAR Iso_b2=root:Package_SLP:ImgXPS:Iso_b2
			NVAR Iso_C=root:Package_SLP:ImgXPS:Iso_C
			
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			Variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String VolName=SLP_IXPS_ScanListW[SelRow][0]
			String ImgVolW_FName=SLP_IXPS_ScanListW[SelRow][1]+SLP_IXPS_ScanListW[SelRow][0]
			String Corr1_FName=ImgVolW_FName+"_Corr1"
			Wave Corr1=$Corr1_FName
			
			SLP_IXPS_ScanListW[SelRow][49]=num2str(Iso_a1)
			SLP_IXPS_ScanListW[SelRow][50]=num2str(Iso_b1)
			SLP_IXPS_ScanListW[SelRow][51]=num2str(Iso_a2)
			SLP_IXPS_ScanListW[SelRow][52]=num2str(Iso_b2)
			SLP_IXPS_ScanListW[SelRow][53]=num2str(Iso_C)
			
			//SLP_IXPS_GenIsoChrom(VolName)
			Corr1=Iso_a1*x^2+Iso_b1*x+Iso_C+Iso_a2*y^2+Iso_b2*y
			
			SLP_IXPS_CorrectMap()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_CorrectMap()
	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
	Variable SelRow=V_Value
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	String VolName=SLP_IXPS_ScanListW[SelRow][0]
	NVAR CorrAdj_x1=root:Package_SLP:ImgXPS:CorrAdj_x1
	NVAR CorrAdj_y1=root:Package_SLP:ImgXPS:CorrAdj_y1
	NVAR CorrAdj_mag1=root:Package_SLP:ImgXPS:CorrAdj_mag1
	NVAR CorrAdj_Size1=root:Package_SLP:ImgXPS:CorrAdj_Size1
	NVAR CorrAdj_Rot1=root:Package_SLP:ImgXPS:CorrAdj_Rot1
	
 	SLP_IXPS_Correct2(VolName,CorrAdj_x1,CorrAdj_y1,CorrAdj_mag1,CorrAdj_Size1,CorrAdj_Rot1)
End

Function SLP_IXPS_GenIsoChrom(VolName)
	string VolName
	
	Variable DataRow=SLP_IXPS_FindDataRow(VolName)
	wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	string ImgVolW_FName=SLP_IXPS_ScanListW[DataRow][1]+SLP_IXPS_ScanListW[DataRow][0]
	String ImgIntgW_FName=ImgVolW_FName+"_Intg"
	String BxW_FName=ImgVolW_FName+"_BX"
	String ByW_FName=ImgVolW_FName+"_BY"
	String UnprocMap1_FName=ImgVolW_FName+"_Umap1"
	String UnprocMap1H_FName=ImgVolW_FName+"_Umap1H"
	String Corr1_FName=ImgVolW_FName+"_Corr1"
	String Corr1H_FName=ImgVolW_FName+"_Corr1H"
	String CMap1_FName=ImgVolW_FName+"_CMap1"
	String CMap1H_FName=ImgVolW_FName+"_CMap1H"
	String MapVolW_FName=ImgVolW_FName+"_MapVol"
	
	NVAR Iso_a1=root:Package_SLP:ImgXPS:Iso_a1
	NVAR Iso_b1=root:Package_SLP:ImgXPS:Iso_b1
	NVAR Iso_a2=root:Package_SLP:ImgXPS:Iso_a2
	NVAR Iso_b2=root:Package_SLP:ImgXPS:Iso_b2
	NVAR Iso_C=root:Package_SLP:ImgXPS:Iso_C

	
	Wave UnprocMap1=$UnprocMap1_FName
	duplicate /O $UnprocMap1_FName,$Corr1_FName /Wave=Corr1

	make /O/N=5 twoDParabolic_CoefW
	twoDParabolic_CoefW=1
	
	FuncFitMD/NTHR=0/TBOX=768 TwoD_Parabolic twoDParabolic_CoefW UnprocMap1  /D 
	
	Iso_a1=twoDParabolic_CoefW[0]
	Iso_b1=twoDParabolic_CoefW[1]
	Iso_C=twoDParabolic_CoefW[2]
	Iso_a2=twoDParabolic_CoefW[3]
	Iso_b2=twoDParabolic_CoefW[4]
	
	SLP_IXPS_ScanListW[DataRow][49]=num2str(Iso_a1)
	SLP_IXPS_ScanListW[DataRow][50]=num2str(Iso_b1)
	SLP_IXPS_ScanListW[DataRow][51]=num2str(Iso_a2)
	SLP_IXPS_ScanListW[DataRow][52]=num2str(Iso_b2)
	SLP_IXPS_ScanListW[DataRow][53]=num2str(Iso_C)
	
	killwaves twoDParabolic_CoefW
	
	Corr1=Iso_a1*x^2+Iso_b1*x+Iso_C+Iso_a2*y^2+Iso_b2*y
	
	
End

Function TwoD_Parabolic(w,x,y) : FitFunc
	Wave w
	Variable x
	Variable y

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(x,y) = a1*x^2+b1*x+C+a2*y^2+b2*y+C
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 2
	//CurveFitDialog/ x
	//CurveFitDialog/ y
	//CurveFitDialog/ Coefficients 5
	//CurveFitDialog/ w[0] = a1
	//CurveFitDialog/ w[1] = b1
	//CurveFitDialog/ w[2] = C
	//CurveFitDialog/ w[3] = a2
	//CurveFitDialog/ w[4] = b2

	return w[0]*x^2+w[1]*x+w[2]+w[3]*y^2+w[4]*y+w[2]
End

Function CheckProc_IXPS_SelImage(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow
			
			strswitch (cba.ctrlName) //Name of the image (note the use of WMCheckBoxAction STRUCT)
				case "CheckBox_SelImg1":
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt1"
					break
				case "CheckBox_SelImg2":
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt2"
					break
				case "CheckBox_SelImg3":
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt3"
					break
				case "CheckBox_SelImg4":
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt4"
					break
				case "CheckBox_SelImg5":
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt5"
					break
				case "CheckBox_SelImg6":
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt6"
					break
				case "CheckBox_SelImgCorr":
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_Correction1"
					break
				case "CheckBox_SelImgCMap":
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_ResultMap1"
					break
			endswitch
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			//Waves and wave refs.
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			
			SLP_IXPS_ScanListW[SelRow][47]=SelSubWindow
			
			SLP_IXPS_SelectImage(SelSubWindow)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function CheckProc_IXPS_SelImage_Old2(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			variable gRadioVal
			SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow
			
			strswitch (cba.ctrlName) //Name of the image (note the use of WMCheckBoxAction STRUCT)
				case "CheckBox_SelImg1":
					gRadioVal= 1
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt1"
					
					break
				case "CheckBox_SelImg2":
					gRadioVal= 2
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt2"
					
					break
				case "CheckBox_SelImg3":
					gRadioVal= 3
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt3"
					
					break
				case "CheckBox_SelImg4":
					gRadioVal= 4
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt4"
					
					break
				case "CheckBox_SelImg5":
					gRadioVal= 5
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt5"
					break
				case "CheckBox_SelImg6":
					gRadioVal= 6
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt6"
					break
					
				case "CheckBox_SelImgCorr":
					gRadioVal= 7
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_Correction1"
					
					break
				case "CheckBox_SelImgCMap":
					gRadioVal= 8
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_ResultMap1"
					
					break
			endswitch
			
			CheckBox CheckBox_SelImg1,value= (gRadioVal==1)
			CheckBox CheckBox_SelImg2,value= (gRadioVal==2)
			CheckBox CheckBox_SelImg3,value= (gRadioVal==3)
			CheckBox CheckBox_SelImg4,value= (gRadioVal==4)
			CheckBox CheckBox_SelImg5,value= (gRadioVal==5)
			CheckBox CheckBox_SelImg6,value= (gRadioVal==6)
			CheckBox CheckBox_SelImgCorr,value= (gRadioVal==7)
			CheckBox CheckBox_SelImgCMap,value= (gRadioVal==8)
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			//Waves and wave refs.
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			
			SLP_IXPS_ScanListW[SelRow][47]=SelSubWindow
			
			SLP_IXPS_SelectImage(SelSubWindow)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_IXPS_SelAll(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			wave SLP_IXPS_ScanListDisplaySelW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplaySelW
			
			SLP_IXPS_ScanListDisplaySelW[][0]=48
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_IXPS_SelNone(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			wave SLP_IXPS_ScanListDisplaySelW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplaySelW
			
			SLP_IXPS_ScanListDisplaySelW[][0]=32
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_ClearDisplay()
	SLP_Util_RemoveAllImages("SLP_ImgXPS_Panel_01#IX_RawExt1")
	SLP_Util_RemoveAllImages("SLP_ImgXPS_Panel_01#IX_RawExt2")
	SLP_Util_RemoveAllImages("SLP_ImgXPS_Panel_01#IX_RawExt3")
	SLP_Util_RemoveAllImages("SLP_ImgXPS_Panel_01#IX_RawExt4")
	SLP_Util_RemoveAllImages("SLP_ImgXPS_Panel_01#IX_RawExt5")
	SLP_Util_RemoveAllImages("SLP_ImgXPS_Panel_01#IX_RawExt6")
	SLP_Util_RemoveAllImages("SLP_ImgXPS_Panel_01#IX_Correction1")
	SLP_Util_RemoveAllImages("SLP_ImgXPS_Panel_01#IX_ResultMap1")
	SLP_Util_RemoveAllImages("SLP_ImgXPS_Panel_01#IX_IMGW")
	
	SLP_Util_RemoveAllTraces("SLP_ImgXPS_Panel_01#IX_IMGW")
	SLP_Util_RemoveAllTraces("SLP_ImgXPS_Panel_01#IX_FITTINGWIN")
	SLP_Util_RemoveAllTraces("SLP_ImgXPS_Panel_01#IX_HISTOGRAM")

	ListBox List_FitParam Win=SLP_ImgXPS_Panel_01,ListWave=root:Package_SLP:ImgXPS:SLP_IXPS_FitParamW
End

Function SLP_IXPS_DelScan(VolName)
	String VolName
	
	wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	wave /T SLP_IXPS_ScanListDisplayW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplayW
	wave SLP_IXPS_ScanListDisplaySelW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplaySelW
	
	FindValue /TEXT=VolName /TXOP=6 SLP_IXPS_ScanListW
	variable col=floor(V_value/dimsize(SLP_IXPS_ScanListW,0))
	variable DataRow=V_value-col*dimsize(SLP_IXPS_ScanListW,0)
	
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	
	killDataFolder /Z $DataFolder_FName
	variable DeleteImgError_Flg=V_Flag
	
	if (DeleteImgError_Flg==0) 
		//Only update ScanListW if Image folder can be deleted
		DeletePoints DataRow,1, SLP_IXPS_ScanListW
		DeletePoints DataRow,1, SLP_IXPS_ScanListDisplayW
		DeletePoints DataRow,1, SLP_IXPS_ScanListDisplaySelW
	Endif
	Return DeleteImgError_Flg
End

Function SLP_IXPS_DelScanBatch()
	
	wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	wave /T SLP_IXPS_ScanListDisplayW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplayW
	wave SLP_IXPS_ScanListDisplaySelW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplaySelW
	
	variable i=0
	String VolName=""
	variable DelError=0
	String ErrorTxt=""
	String WarnTxt=""
	variable WSIze=dimsize(SLP_IXPS_ScanListDisplaySelW,0)
	
	For (i=0;i<dimsize(SLP_IXPS_ScanListDisplaySelW,0);i+=1)
		If (SLP_IXPS_ScanListDisplaySelW[i][0]==48)
			VolName=SLP_IXPS_ScanListW[i][0]
			WarnTxt="Delete scan: "+VolName+" ?"
			DoAlert 1,WarnTxt
			
			If (V_flag==1) //If user clicks 'Yes'			
				DelError=SLP_IXPS_DelScan(VolName)
				i-=1 //Go back one row
			EndIf
			
			If (DelError)
				ErrorTxt="Error deleting scan: "+VolName+"\r wave(s) in the dataset are being used somewhere in the current project"
				DoAlert 0,ErrorTxt
			Endif
			DoUpdate
		Endif
	EndFor
End

Function ButtonProc_IXPS_DelDataSet(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			wave SLP_IXPS_ScanListDisplaySelW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplaySelW
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			
			
			//Change dataset selection if the current one is going to be delected
			if (SLP_IXPS_ScanListDisplaySelW[SelRow][0]==48)
				//Find the first non-selected DataSet from the top	
				variable i=0
				For (i=0;i<dimsize(SLP_IXPS_ScanListDisplaySelW,0)&&SLP_IXPS_ScanListDisplaySelW[i][0]==48;i+=1)
					DoUpdate
				Endfor
				//i is now the index of the first non-selected DataSet
				
				If (i<dimsize(SLP_IXPS_ScanListDisplaySelW,0))
					ListBox List_ScansList SelRow=i
					SLP_IXPS_DisplaySelectedData(SLP_IXPS_ScanListW[i][0])
					SLP_IXPS_DelScanBatch()
				Else //All datasets have been selected
					SLP_IXPS_ClearDisplay()
					SLP_IXPS_DelScanBatch()
					SLP_IXPS_init()
				Endif
					
			endif
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_SelectImage(ImgWinName)
	String ImgWinName
	
	NVAR ColorMin=root:Package_SLP:ImgXPS:ColorMin
	NVAR ColorMax=root:Package_SLP:ImgXPS:ColorMax
	
	//Find the current selected row
  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	//Waves and wave refs.
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
	String UMap1W_FName=ImgVolW_FName+"_UMap1"
	String Corr1W_FName=ImgVolW_FName+"_Corr1"
	String CMap1W_FName=ImgVolW_FName+"_CMap1"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String MapVolW_FName=ImgVolW_FName+"_MapVol"
	String ImageHistW_FName=ImgVolW_FName+"_Hist"
	String ImgVol_ScrnW_FName=ImgVolW_FName+"_Scrn"
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	Wave ImgVol_ScrnW=$ImgVol_ScrnW_FName
	
	Make /O/N=(2,2) LPFImgW
	
	If (Exists(MapVolW_FName))
		Wave MapVolW=$MapVolW_FName
	EndIf
	
	If (Exists(UMap1W_FName))
		Wave UMap1W=$UMap1W_FName
	Endif
	
	If (Exists(Corr1W_FName))
		Wave Corr1W=$Corr1W_FName
	Endif
	
	If (Exists(CMap1W_FName))
		Wave CMap1W=$CMap1W_FName
	EndIf
	
	String SelParamName=""
	Variable SelParamRow=-1
	Variable SelParamCol=0
	
	CheckBox CheckBox_SelImg1,value=0
	CheckBox CheckBox_SelImg2,value=0
	CheckBox CheckBox_SelImg3,value=0
	CheckBox CheckBox_SelImg4,value=0
	CheckBox CheckBox_SelImg5,value=0
	CheckBox CheckBox_SelImg6,value=0
	CheckBox CheckBox_SelImgCorr,value=0
	CheckBox CheckBox_SelImgCMap,value=0
	
	strswitch (ImgWinName) //Name of the image (note the use of WMCheckBoxAction STRUCT)
		case "SLP_ImgXPS_Panel_01#IX_RawExt1":
			SelParamName=SLP_IXPS_ScanListW[SelRow][22]
			CheckBox CheckBox_SelImg1,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt2":
			SelParamName=SLP_IXPS_ScanListW[SelRow][23]
			CheckBox CheckBox_SelImg2,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt3":
			SelParamName=SLP_IXPS_ScanListW[SelRow][24]
			CheckBox CheckBox_SelImg3,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt4":
			SelParamName=SLP_IXPS_ScanListW[SelRow][25]
			CheckBox CheckBox_SelImg4,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt5":
			SelParamName=SLP_IXPS_ScanListW[SelRow][26]
			CheckBox CheckBox_SelImg5,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt6":
			SelParamName=SLP_IXPS_ScanListW[SelRow][27]
			CheckBox CheckBox_SelImg6,value=1
			break	
		case "SLP_ImgXPS_Panel_01#IX_Correction1":
			SelParamName="Corr1"
			CheckBox CheckBox_SelImgCorr,value=1
			ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][18])
			ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][19])
			Duplicate /O Corr1W,LPFImgW
			
			break
		case "SLP_ImgXPS_Panel_01#IX_ResultMap1":
			SelParamName="CMap1"
			CheckBox CheckBox_SelImgCMap,value=1
			ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][20])
			ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][21])
			Duplicate /O CMap1W,LPFImgW
			
			break
	endswitch

	//If parameter map is selected
	If (!stringmatch("",SelParamName)&&!stringmatch("Corr1",SelParamName)&&!stringmatch("CMap1",SelParamName))
		FindValue /S=(dimsize(FitCoefDisplayW,0)*2) /TEXT=SelParamName/TXOP=4 /Z FitCoefDisplayW
		SelParamCol=floor(V_value/dimsize(FitCoefDisplayW,0))
		SelParamRow=V_value-SelParamCol*dimsize(FitCoefDisplayW,0)
		
		ColorMin=str2num(FitCoefDisplayW[SelParamRow][10])
		ColorMax=str2num(FitCoefDisplayW[SelParamRow][11])	
		
		variable SelExtVolPlane=0
		variable i=0
		For (i=0;i<SelParamRow;i+=1)
			If (FitCoefDisplaySelW[i][0]==48)
				SelExtVolPlane+=1
			EndIf
		EndFor
		Duplicate /O /R=[][][SelExtVolPlane] MapVolW,LPFImgW
		Redimension /N=(dimsize(LPFImgW,0),dimsize(LPFImgW,1),0) LPFImgW //Reduce dimension from 3D to 2D
	EndIf
		
	//MatrixOp  /O  LPFImgW = Replace(LPFImgW,NaN,0)
	MatrixFilter /P=1/N=3 median LPFImgW //Remove noise before creating histogram
	MatrixFilter /P=2/N=5 avg LPFImgW
	ImageHistogram LPFImgW
	Wave W_ImageHist
	duplicate /O W_ImageHist,$ImageHistW_FName /Wave=ImageHistW
	WaveStats /Q LPFImgW
	
	If (numtype(ColorMin)==2||numtype(ColorMax)==2)
		ColorMin=V_avg-2*V_sdev
		ColorMax=V_avg+2*V_sdev	
		If (SelParamRow>=0)
			FitCoefDisplayW[SelParamRow][10]=num2str(ColorMin)
			FitCoefDisplayW[SelParamRow][11]=num2str(ColorMax)
		EndIf
	Endif
	
	If (stringmatch("Corr1",SelParamName))
		SLP_IXPS_ScanListW[SelRow][18]=num2str(ColorMin)
		SLP_IXPS_ScanListW[SelRow][19]=num2str(ColorMax)
	Endif
	If (stringmatch("CMap1",SelParamName))
		SLP_IXPS_ScanListW[SelRow][20]=num2str(ColorMin)
		SLP_IXPS_ScanListW[SelRow][21]=num2str(ColorMax)
	Endif
	
	//Slider Slider_ImgVolMinInt,value=ColorMin
	//Slider Slider_ImgVolMaxInt,value=ColorMax
	Slider Slider_ImgVolMinInt,limits={V_avg-10*V_sdev,V_avg+10*V_sdev,V_sdev/2000}
	Slider Slider_ImgVolMaxInt,limits={V_avg-10*V_sdev,V_avg+10*V_sdev,V_sdev/2000}
		
	If (Exists(ImageHistW_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Histogram",ImageHistW_FName,0)
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mirror=1,minor=1,tick(left)=0,tick(bottom)=2
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram  margin(bottom)=20,margin(left)=3,margin(top)=3,margin(right)=3
		ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mode=5,hbFill=2,rgb=(1,34817,52428)
		TextBox /W=SLP_ImgXPS_Panel_01#IX_Histogram /C/N=ParamName SelParamName
	EndIf
	 
	//Killwaves LPFImgW
	Killwaves W_ImageHist
End

Function SLP_Util_AutoImgInt(GraphNameStr)
	String GraphNameStr
	
	String ImgNameListStr=ImageNameList(GraphNameStr,";")
	String ImgNameStr=StringFromList(0,ImgNameListStr) //1st image name
	
	Wave ImgW=ImageNameToWaveRef(GraphNameStr,ImgNameStr)
	
	Duplicate /O ImgW,ImgW_Tmp
	
	MatrixFilter median ImgW_Tmp //Remove speckle noise
	
	WaveStats /Q ImgW_Tmp
	
	ModifyImage /W=$GraphNameStr $ImgNameStr,ctab={V_avg-1.0*V_sdev,V_avg+1.0*V_sdev,,0}
End

Function SLP_Util_FindZRange(ImgW_FName,MskW_FName)
	String ImgW_FName,MskW_FName //Img and MskW must have identical sizes
	
	Wave ImgW=$ImgW_FName
	Wave MskW=$MskW_FName
	
	variable i,j
	variable MaxInt=ImgW[0][0]
	variable MinInt=ImgW[0][0]
	
	For (i=0;i<dimsize(ImgW,0);i+=1)
		For (j=0;j<dimsize(ImgW,1);j+=1)
			If (MskW[i][j])
				If (ImgW[i][j]>MaxInt)
					MaxInt=ImgW[i][j]
				EndIf
				If (ImgW[i][j]<MinInt)
					MinInt=ImgW[i][j]
				EndIf
			EndIF
		EndFor
	EndFor
	Print "Max z ="+num2str(MaxInt)
	Print "Min z ="+num2str(MinInt)
End

Function SLP_Util_RemoveOverLimZ(ImgW_FName,zMin,zMax)
	String ImgW_FName
	Variable zMin,zMax
	
	Wave ImgW=$ImgW_FName
	
	variable i,j
	
	
	For (i=0;i<dimsize(ImgW,0);i+=1)
		For (j=0;j<dimsize(ImgW,1);j+=1)
			If (ImgW[i][j]>zMax)
				ImgW[i][j]=zMax
			EndIf
			If (ImgW[i][j]<zMin)
				ImgW[i][j]=zMin
			EndIf
		EndFor
	EndFor
End

Function SLP_Util_ImgBG2NaN(ImgW_FName,BG_Th)
	//If any pixel has value < BG_Th => Change the pixel value to NaN 
	//(Helpful for doing ImgW stat (WaveStats) w/o counting the BG area
	String ImgW_FName 
	Variable BG_Th
	
	Wave ImgW=$ImgW_FName
	
	variable i,j
	
	For (i=0;i<dimsize(ImgW,0);i+=1)
		For (j=0;j<dimsize(ImgW,1);j+=1)
		
			If (ImgW[i][j]<BG_Th)
				ImgW[i][j]=NaN
			EndIF
		EndFor
	EndFor
End



Function ListBoxProc_IXPS_ParamList(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	variable SelRow
	String VolName
	
	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
			
		case 5: // cell selection plus shift key
			break
		case 6: // begin edit
			break
		case 7: // finish edit
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			VolName=SLP_IXPS_ScanListW[SelRow][0]
			
			ControlInfo /W=SLP_ImgXPS_Panel_01 Popup_FitType
			String FitName=S_Value
			
			SLP_IXPS_MakeGuessCurve(VolName,FitName)
			SLP_IXPS_DisplaySelectedData(VolName)
			
			break
		case 13: // checkbox clicked (Igor 6.2 or later)
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			VolName=SLP_IXPS_ScanListW[SelRow][0]
			SLP_IXPS_DispChk(VolName)
			variable Bin=str2num(SLP_IXPS_ScanListW[SelRow][16])
			
			SLP_IXPS_CreateUMap(VolName,Bin)
			
			SLP_IXPS_DisplaySelectedData(VolName)
			
			//Use SelectImage function to auto adjust the intensity
			SLP_IXPS_SelectImage("SLP_ImgXPS_Panel_01#IX_RawExt1")
			SLP_IXPS_SelectImage("SLP_ImgXPS_Panel_01#IX_RawExt2")
			SLP_IXPS_SelectImage("SLP_ImgXPS_Panel_01#IX_RawExt3")
			SLP_IXPS_SelectImage("SLP_ImgXPS_Panel_01#IX_RawExt4")
			SLP_IXPS_SelectImage("SLP_ImgXPS_Panel_01#IX_RawExt5")
			SLP_IXPS_SelectImage("SLP_ImgXPS_Panel_01#IX_RawExt6")
			SLP_IXPS_SelectImage("SLP_ImgXPS_Panel_01#IX_Correction1")
			SLP_IXPS_SelectImage("SLP_ImgXPS_Panel_01#IX_ResultMap1")
			
			SLP_IXPS_DisplaySelectedData(VolName)
			
			break
	endswitch

	return 0
End

Function SLP_IXPS_DispChk(VolName)
	String VolName
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String MapVolW_FName=ImgVolW_FName+"_MapVol"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS" 
	
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName 
	
	variable i=0
	variable j=0
	variable k=0
	variable Err_Flg=0
	
	For (i=0;i<dimsize(FitCoefDisplaySelW,0);i+=1)
		If (FitCoefDisplaySelW[i][8]==48)
			j+=1
		EndIf
		If (FitCoefDisplaySelW[i][9]==48)
			k+=1
		EndIf
		If (FitCoefDisplaySelW[i][0]==32&&(FitCoefDisplaySelW[i][8]==48||FitCoefDisplaySelW[i][9]==48))
			DoAlert 0,"Parameter(s) must be selected for extraction in order to be displayed or corrected"
		EndIF
	EndFor

	If (j>6)
		Err_Flg=1
		DoAlert 0,"Maximum of 6 parameters can be displayed"
	Else
		Err_Flg=0
	EndIf
	
	If (k>1)
		Err_Flg=1
		DoAlert 0,"Maximum of 1 parameter can be corrected"
	Else
		Err_Flg=0||Err_Flg //=1 anyway if already select >6 for display
	EndIf
	
	return Err_Flg
End

Function ListBoxProc_IXPS_ScanList(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	wave /T SLP_IXPS_ScanListDisplayW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplayW
	
	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
			If (row!=-1&&row<dimsize(SLP_IXPS_ScanListW,0))
				String VolName=SLP_IXPS_ScanListW[row][0]
				SLP_IXPS_DisplaySelectedData(VolName)
				
			EndIf
		case 5: // cell selection plus shift key
			break
		case 6: // begin edit
			break
		case 7: // finish edit
			//Copy scan notes to the ScanListW
			SLP_IXPS_ScanListW[][46]=SLP_IXPS_ScanListDisplayW[p][2]
		
			break
		case 13: // checkbox clicked (Igor 6.2 or later)
			break
	endswitch

	return 0
End

Function /S SLP_IXPS_GenListFromChk()
	//Return a string that lists the checked items in the ScanList listbox.
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	Wave SLP_IXPS_ScanListDisplaySelW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplaySelW
	
	String Chked_ScanList=""
	variable N_Scans=dimsize(SLP_IXPS_ScanListDisplaySelW,0)
	
	variable i=0
	For (i=0;i<N_Scans;i+=1)
		If (SLP_IXPS_ScanListDisplaySelW[i][0]==48)
			Chked_ScanList+=SLP_IXPS_ScanListW[i][0]+";"
		EndIf
	EndFor
	
	Return Chked_ScanList
End

Function ButtonProc_IXPS_RestoreRawData(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			DoAlert 1,"The image data will be restored from the recorded location. This may increases the project file size significantly. Continue?"
			If (V_Flag==1)
				Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
				//Make a list of the checked items [CODE:SLP_IXPS_GenListFromChk]
				string Chked_ScanList=SLP_IXPS_GenListFromChk()
				string ScanName=""
				variable DataRow=0
				
				//Toggle the Dispersive Line Creation controls
				ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
				variable SelRow=V_Value
				
				variable i=0
				For (i=0;i<itemsinList(Chked_ScanList,";");i+=1)
					ScanName=stringfromList(i,Chked_ScanList)
					
					SLP_IXPS_RestoreRawData(ScanName)
					
					DataRow=SLP_IXPS_FindDataRow(ScanName) //[CODE:SLP_IXPS_FindDataRow]
					
					//Update the RawDataDel_Flg in the WaveList
					SLP_IXPS_ScanListW[DataRow][45]=""
				
					If (SelRow==DataRow)
						SLP_IXPS_TgglControls("Enable")
						SLP_IXPS_DisplaySelectedData(ScanName)
					EndIf
					
				EndFor
				
				
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_RestoreRawData(ScanName)
	String ScanName
	
	String CurrentFolder=GetDataFolder(1)
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	
	variable DataRow=SLP_IXPS_FindDataRow(ScanName) //[CODE:SLP_IXPS_FindDataRow]
	
	//string ImgW_FName=SLP_IXPS_ScanListW[DataRow][1]+SLP_IXPS_ScanListW[DataRow][0]
	string RawDataPath=SLP_IXPS_ScanListW[DataRow][2]
	string DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	SetDataFolder $DataFolder_FName
	
	variable zStart=str2num(SLP_IXPS_ScanListW[DataRow][11])
	variable zStep=str2num(SLP_IXPS_ScanListW[DataRow][13])
	
	//Check if the raw data is stil there
	NewPath SLP_DataPathTmp, RawDataPath
	PathInfo SLP_DataPathTmp
	RawDataPath=S_Path
	SLP_IXPS_ScanListW[DataRow][2]=RawDataPath
	KillPath SLP_DataPathTmp
	
	//Load series of images to a 3d volume [CODE:SLP_Util_LoadMultImg2Vol]
	SLP_Util_LoadMultImg2Vol(RawDataPath,ScanName,zStart,zStep)
			
	//Go back 
	SetDataFolder $CurrentFolder
End

Function ButtonProc_IXPS_DelRawData(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			DoAlert 1,"The image volume will be removed from the checked item(s) to reduce this project file size. You can no longer extract to create maps but can still correct the mapping. Continue?"
			If (V_Flag==1)
				//Make a list of the checked items [CODE:SLP_IXPS_GenListFromChk]
				string Chked_ScanList=SLP_IXPS_GenListFromChk()
				variable i=0
				string ScanName=""
				string ImgW_FName=""
				
				//Get the selected row
				ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
				variable SelRow=V_Value
				
				variable DataRow=0
				
				For (i=0;i<itemsinList(Chked_ScanList,";");i+=1)
					ScanName=stringfromList(i,Chked_ScanList)
					DataRow=SLP_IXPS_FindDataRow(ScanName)
					
					//Update the RawDataDel_Flg in the WaveList
					SLP_IXPS_ScanListW[DataRow][45]="y"
					
					If (DataRow==SelRow) //If the current scan is on displayed
						SLP_IXPS_DisplaySelectedData(ScanName) //Update the display
						SLP_IXPS_TgglControls("Disable")
					EndIf
					
					//Delete the raw data
					ImgW_FName=SLP_IXPS_ScanListW[DataRow][1]+SLP_IXPS_ScanListW[DataRow][0]
					If (Exists(ImgW_FName))
						Killwaves $ImgW_FName
					EndIf
					
				EndFor
			Endif
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_TgglControls(Tggl)
	string Tggl //Can be either "Enable" or "Disable"
	
	If (Stringmatch(Tggl,"Enable"))
		SetVariable SetVar_FrameNum,win=SLP_ImgXPS_Panel_01,disable=0
		Slider Slider_ImgVolFrame,win=SLP_ImgXPS_Panel_01,disable=0
		Button Button_ExtMap1,win=SLP_ImgXPS_Panel_01,disable=0,title="Extract..",fColor=(65535,65535,65535)
		PopUpMenu Popup_FitType,disable=0	
	Elseif (StringMatch(Tggl,"Disable"))
		SetVariable SetVar_FrameNum,win=SLP_ImgXPS_Panel_01,disable=2
		Slider Slider_ImgVolFrame,win=SLP_ImgXPS_Panel_01,disable=2
		Button Button_ExtMap1,win=SLP_ImgXPS_Panel_01,disable=2,title="Raw data was removed",fColor=(65535,0,0)
		PopUpMenu Popup_FitType,disable=2
	EndIf

End


Function SLP_IXPS_SetXYScale(WaveFName,FOV,xMin,xMax,yMin,yMax,Bin)
	string WaveFName
	variable FOV //(microns)
	variable xMin,xMax,yMin,yMax //In pixels before binning. Values gotten from 'find screen position' 
	variable Bin
	
	Wave ImgW=$WaveFName
	
	variable xCenter=(xMin+xMax)/2/Bin
	variable yCenter=(yMin+yMax)/2/Bin
	
	variable pixelSizeX=FOV*Bin/(xMax-xMin)
	variable pixelSizeY=FOV*Bin/(yMax-yMin)
	
	setscale /P x,-1*xCenter*pixelSizeX,pixelSizeX,"Micron",ImgW
	setscale /P y,-1*yCenter*pixelSizeY,pixelSizeY,"Micron",ImgW
End

Function SLP_IXPS_CreateScreenMask(VolName,Threshold,MinSize)
	String VolName
	Variable Threshold
	Variable MinSize
	
	String Current_Folder=GetDataFolder(1)
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ImgVol_IntgW_FName=ImgVolW_FName+"_Intg"
	String ImgVol_ThW_FName=ImgVolW_FName+"_Th"
	String ImgVol_ScrnW_FName=ImgVolW_FName+"_Scrn"
	string W_BoundaryX_FName=SLP_IXPS_ScanListW[DataRow][1]+"W_BoundaryX" //From ImageAnalyzeParticles
	string W_BoundaryY_FName=SLP_IXPS_ScanListW[DataRow][1]+"W_BoundaryY"//From ImageAnalyzeParticles
	string BoundX_W_Name=ImgVolW_FName+"_BX"
	string BoundY_W_Name=ImgVolW_FName+"_BY"
	
	SetDataFolder $DataFolder_FName
	
	Duplicate /O $ImgVol_IntgW_FName,$ImgVol_ThW_FName /WAVE=ImgVol_ThW
	
	ImageThreshold/Q/O/I/T=(Threshold) ImgVol_ThW
	
	ImageAnalyzeParticles /E/W/Q/EBPC/M=3/A=(MinSize)/F stats, ImgVol_ThW
	
	//Screen position
	Wave W_xmin
	Wave W_xmax
	Wave W_ymin
	Wave W_ymax
	
	If (Dimsize(W_xmin,0)) //If the screen is found
	
		SLP_IXPS_ScanListW[DataRow][28]=num2str(W_xmin[0])
		SLP_IXPS_ScanListW[DataRow][29]=num2str(W_xmax[0])
		SLP_IXPS_ScanListW[DataRow][30]=num2str(W_ymin[0])
		SLP_IXPS_ScanListW[DataRow][31]=num2str(W_ymax[0])
	
	Endif
	
	Wave M_Particle
	
	Duplicate/O M_Particle,$ImgVol_ScrnW_FName /WAVE=ScreenMaskW
	//Change from 64/16 (values used in ImageAnalyzeParticle function of Igor) to 0/1 (0 = outside the screen, 1 = inside the screen)
	ScreenMaskW-=64
	ScreenMaskW/=208
	
	duplicate /O $W_BoundaryX_FName,$BoundX_W_Name /WAVE=BX_W
	duplicate /O $W_BoundaryY_FName,$BoundY_W_Name /WAVE=BY_W
	
	
	
	Setdatafolder $Current_folder

End

Function SLP_Util_ExtractZProfile(ImgVolW_FName,Vol_x,Vol_y,Bin)
	string ImgVolW_FName
	variable Vol_x,Vol_y
	variable Bin
	
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfWTmp_FName=ImgVolW_FName+"_zProflTmp"
	
	Wave ImgVolW=$ImgVolW_FName
		
	make /O /N=(dimsize(ImgVolW,2)) $ZProfW_FName /Wave=ZProfW
	make /O /N=(dimsize(ImgVolW,2)) $ZProfWTmp_FName /Wave=ZProfW_tmp

	ZProfW=0
	
	variable i
	variable j
	variable k=0
	
	For (i=round(Vol_x-Bin/2);i<round(Vol_x+Bin/2);i+=1)
		For (j=round(Vol_y-Bin/2);j<round(Vol_y+Bin/2);j+=1)
			if (i>=0&&j>=0)
				ZProfW_tmp[]=ImgVolW[i][j][p]
				ZProfW+=ZProfW_tmp
				k+=1
			Endif
		EndFor
	EndFor
	
	KillWaves ZProfW_tmp
	ZProfW/=k //Average the intensity
	
	variable ImgVolW_zStart=dimoffset(ImgVolW,2)
	variable ImgVolW_zStep=dimDelta(ImgVolW,2)
	
	setscale /P x,ImgVolW_zStart,ImgVolW_zStep,ZProfW
End

Function CheckProc_IXPS_zProfile(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW		
			String VolName=SLP_IXPS_ScanListW[SelRow][0]
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			String ImgIntgW_FName=ImgVolW_FName+"_Intg"
			Wave ImgIntgW=$ImgIntgW_FName
			
			If (checked==1)
				If (!Stringmatch("y",SLP_IXPS_ScanListW[SelRow][45]))
					Cursor /I/W=SLP_ImgXPS_Panel_01#IX_IMGW/C=(65525,0,0) A $VolName round(DimSize(ImgIntgW,0)/2),round(DimSize(ImgIntgW,1)/2)		
					//setwindow SLP_ImgXPS_Panel_01,hook(zProfileUpdate)=SLP_IXPS_UpdateZProfile//,hookevents=4
					//Ask for binning (need to use local variable - igor limit)
					NVAR zProfBin=root:Package_SLP:ImgXPS:zProfBin
					variable zProfBin_Local=zProfBin
					Prompt zProfBin_Local,"Binning for z-profile plot"
					DoPrompt "Enter parameter",zProfBin_Local
					zProfBin=zProfBin_Local
				EndIf
			Else
				Cursor /K/W=SLP_ImgXPS_Panel_01#IX_IMGW A
				//setwindow SLP_ImgXPS_Panel_01,hook=$""
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function SLP_IXPS_CursorHook(s) //HOOK FUNCTION to see spectrum at different (x,y) by moving a cursor

	STRUCT WMWinHookStruct &s

	Variable hookResult = 0

		switch(s.eventCode)
			case 7:				// Activate
				GetWindow SLP_ImgXPS_Panel_01 activeSW
				String activeSubwindow = S_value
				
				//Hook for Z-profile update
				// If the Image Vol display is selected and there is cursor C on it.
				if (CmpStr(activeSubwindow,"SLP_ImgXPS_Panel_01#IX_IMGW") == 0&&!stringmatch("",CsrInfo(A,"SLP_ImgXPS_Panel_01#IX_IMGW")))
					SLP_IXPS_UpdateZProfile()
				Endif
				//Hook for Display peak assignment
				if (CmpStr(activeSubwindow,"SLP_ImgXPS_Panel_01#IX_FITTINGWIN") == 0&&!stringmatch("",CsrInfo(A,"SLP_ImgXPS_Panel_01#IX_FITTINGWIN")))
					SLP_IXPS_DispPeakAssign(1) //use '1' for CursorHook
				Endif
				
				break
		endswitch

	return hookResult		// 0 if nothing done, else 1
End

Function SLP_IXPS_UpdateZProfile()
	NVAR zProfBin=root:Package_SLP:ImgXPS:zProfBin
	//SetActiveSubwindow SLP_ImgXPS_Panel_01#IX_IMGW
	// Handle activate
	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW		
	String VolName=SLP_IXPS_ScanListW[SelRow][0]
						
	variable vol_X=pcsr(A,"SLP_ImgXPS_Panel_01#IX_IMGW")
	variable vol_Y=qcsr(A,"SLP_ImgXPS_Panel_01#IX_IMGW")
	SLP_IXPS_ScanListW[SelRow][42]=num2str(vol_X)
	SLP_IXPS_ScanListW[SelRow][43]=num2str(vol_Y)
	SLP_IXPS_ExtractZProfile(VolName,Vol_x,Vol_y,zProfBin)
End


Function SLP_IXPS_ExtractZProfile(VolName,Vol_x,Vol_y,Bin)
	string VolName
	variable Vol_x,Vol_y
	variable Bin
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	
	String Current_Folder=GetDataFolder(1)
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfWTmp_FName=ImgVolW_FName+"_zProfl_tmp"
	
	Wave ImgVolW=$ImgVolW_FName
	
	SetDataFolder $DataFolder_FName
	
	make /O /N=(dimsize(ImgVolW,2)) $ZProfW_FName /Wave=ZProfW
	make /O /N=(dimsize(ImgVolW,2)) $ZProfWTmp_FName /Wave=ZProfW_tmp

	ZProfW=0
	
	variable i
	variable j
	variable k=0
	
	For (i=round(Vol_x-Bin/2);i<round(Vol_x+Bin/2);i+=1)
		For (j=round(Vol_y-Bin/2);j<round(Vol_y+Bin/2);j+=1)
			if (i>=0&&j>=0)
				ZProfW_tmp[]=ImgVolW[i][j][p]
				ZProfW+=ZProfW_tmp
				k+=1
			Endif
		EndFor
	EndFor
	
	KillWaves ZProfW_tmp
	ZProfW/=k //Average the intensity
	
	variable stv_st=dimoffset(ImgVolW,2)
	variable stv_step=dimDelta(ImgVolW,2)
	
	setscale /P x,stv_st,stv_step,ZProfW
	
	SetDataFolder $Current_Folder
End

Function CheckProc_IXPS_BE(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			
			wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			SLP_IXPS_ScanListW[SelRow][44]=num2str(checked)
			
			SLP_IXPS_BE_Convert()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ListBoxProc_IXPS_XPSParam(lba) : ListBoxControl
	STRUCT WMListboxAction &lba

	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	wave /T SLP_IXPS_XPSParamW=root:Package_SLP:ImgXPS:SLP_IXPS_XPSParamW
	
	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
	variable SelRow=V_Value

	switch( lba.eventCode )
		case -1: // control being killed
			break
		case 1: // mouse down
			break
		case 3: // double click
			break
		case 4: // cell selection
		case 5: // cell selection plus shift key
			break
		case 6: // begin edit
			break
		case 7: // finish edit
			SLP_IXPS_ScanListW[SelRow][11]=SLP_IXPS_XPSParamW[0][1]
			SLP_IXPS_ScanListW[SelRow][12]=SLP_IXPS_XPSParamW[1][1]
			SLP_IXPS_ScanListW[SelRow][13]=SLP_IXPS_XPSParamW[2][1]
			SLP_IXPS_ScanListW[SelRow][14]=SLP_IXPS_XPSParamW[3][1]
			SLP_IXPS_ScanListW[SelRow][15]=SLP_IXPS_XPSParamW[4][1]
			
			SLP_IXPS_BE_Convert()
			
			break
		case 13: // checkbox clicked (Igor 6.2 or later)
			break
	endswitch

	return 0
End

Function SLP_IXPS_BE_Convert()
		wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
		ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
		variable SelRow=V_Value
		
		variable STV_Start,STV_End
		variable STV_Step
		variable hv
		variable aWF
		
		//Check if the hv and Analyser WF have been entered:
		If (stringmatch(SLP_IXPS_ScanListW[SelRow][14],""))
			hv=0
			Prompt hv,"Photon energy (eV):"
			DoPrompt "Enter missing parameter",hv
			SLP_IXPS_ScanListW[SelRow][14]=num2str(hv)
		Endif
		If (stringmatch(SLP_IXPS_ScanListW[SelRow][15],""))
			aWF=0
			Prompt aWF,"Analyzer workfunction (eV):"
			DoPrompt "Enter missing parameter",aWF
			SLP_IXPS_ScanListW[SelRow][15]=num2str(aWF)
		Endif
		
		String VolName=SLP_IXPS_ScanListW[SelRow][0]
		//SLP_IXPS_DisplaySelectedData(VolName)
		
		String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
		String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
		String ZProfW_FName=ImgVolW_FName+"_zProfl"
		String ZProfMskW_FName=ImgVolW_FName+"_zPMsk" 
		String zProfFitW_FName=SLP_IXPS_ScanListW[SelRow][1]+"Fit_"+SLP_IXPS_ScanListW[SelRow][0]+"_zProfl"
		
		String ZProfBEW_FName=ImgVolW_FName+"_zProflBE"
		String ZProfMskBEW_FName=ImgVolW_FName+"_zPMskBE" 
		String zProfFitBEW_FName=zProfFitW_FName+"BE"
		
		Wave ZProfW=$ZProfW_FName
		Wave ZProfMskW=$ZProfMskW_FName
		Wave zProfFitW=$zProfFitW_FName
		
		Duplicate /O $ZProfW_FName,$ZProfBEW_FName /Wave=ZProfBEW
		Duplicate /O $ZProfMskW_FName,$ZProfMskBEW_FName /Wave=ZProfMskBEW
		Duplicate /O $zProfFitW_FName,$zProfFitBEW_FName /Wave=ZProfFitBEW
		
		//Use wave **dependencies** (:= doesn' work! - use 'SetFormula' instead)
		//SetFormula ZProfBEW, "ZProfW" <- doesn't work (no update) need FName
		//ZProfBEW:=ZProfW <- doesn't compile
		//NOT ELEGANT
		//string DependencyCmd
		//DependencyCmd="SetFormula "+ZProfBEW_FName+", \"" +ZProfW_FName+"\""
		
		//*The second term (original wave) has to be a STRING (not wave)*
		SetFormula ZProfBEW,ZProfW_FName
		SetFormula ZProfMskBEW,ZProfMskW_FName
		SetFormula ZProfFitBEW,zProfFitW_FName
		
		STV_Start=str2num(SLP_IXPS_ScanListW[SelRow][11])
		STV_End=str2num(SLP_IXPS_ScanListW[SelRow][12])
		STV_Step=str2num(SLP_IXPS_ScanListW[SelRow][13])
		hv=str2num(SLP_IXPS_ScanListW[SelRow][14])
		aWF=str2num(SLP_IXPS_ScanListW[SelRow][15])
		
		NVAR LLim=root:Package_SLP:ImgXPS:LLim
		NVAR ULim=root:Package_SLP:ImgXPS:ULim
		
		Setscale /P x,hv-STV_Start-aWF,-1*STV_Step,ZProfBEW
		Setscale /P x,hv-STV_Start-aWF,-1*STV_Step,ZProfMskBEW
		Setscale /I x,hv-LLim-aWF,hv-ULim-aWF,ZProfFitBEW  //[BUG] Fix here!
		//[Note] Fit wave doesn't have the same number of point && doesn't start and end at the same x (it has the same size as fit mask)
		
		SLP_IXPS_DisplaySelectedData(VolName)
End

Function SLP_ERF(w,x) : FitFunc
	Wave w
	Variable x

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(x) = A* erfc((x-x0)/Width)+C
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ x
	//CurveFitDialog/ Coefficients 4
	//CurveFitDialog/ w[0] = A
	//CurveFitDialog/ w[1] = C
	//CurveFitDialog/ w[2] = x0
	//CurveFitDialog/ w[3] = Width

	return w[0]* erf((x-w[2])/w[3])+w[1]
End

Function SLP_IXPS_Extract1GLA(VolName,LLim,ULim)
	string VolName
	variable LLim,ULim
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String FitCoefConstraintsW_FName=ImgVolW_FName+"_FCoefC"
	String FitZProfW_FName=DataFolder_FName+"fit_"+VolName+"_zProfl"

	Wave ImgVolW=$ImgVolW_FName
	Wave ZProfW=$ZProfW_FName
	Duplicate /O ZProfW,$ZProfMskW_FName /WAVE=ZProfMskW
	
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	
	Make /O/D/N=2 BG_Coef
	Make /O/D/N=5 GLA1_coef
	String HoldStr_BG=""
	String HoldStr_GLA1=""
	
	BG_Coef[0] = str2num(FitCoefDisplayW[0][4]);HoldStr_BG[0]=num2str((FitCoefDisplaySelW[0][5]-32)/16)
	BG_Coef[1] = str2num(FitCoefDisplayW[1][4]);HoldStr_BG[1]=num2str((FitCoefDisplaySelW[1][5]-32)/16)
	GLA1_coef[0] = str2num(FitCoefDisplayW[2][4]);HoldStr_GLA1[0]=num2str((FitCoefDisplaySelW[2][5]-32)/16)
	GLA1_coef[1] = str2num(FitCoefDisplayW[3][4]);HoldStr_GLA1[1]=num2str((FitCoefDisplaySelW[3][5]-32)/16)
	GLA1_coef[2] = str2num(FitCoefDisplayW[4][4]);HoldStr_GLA1[2]=num2str((FitCoefDisplaySelW[4][5]-32)/16)
	GLA1_coef[3] = str2num(FitCoefDisplayW[5][4]);HoldStr_GLA1[3]=num2str((FitCoefDisplaySelW[5][5]-32)/16)
	GLA1_coef[4] = str2num(FitCoefDisplayW[6][4]);HoldStr_GLA1[4]=num2str((FitCoefDisplaySelW[6][5]-32)/16)
	
	Wave ZProfMskW=$ZProfMskW_FName
	ZProfMskW=0
	ZProfMskW[round(x2pnt(ZProfMskW,LLim)),round(x2pnt(ZProfMskW,ULim))]=1
	
	ControlInfo /W=SLP_ImgXPS_Panel_01 CheckBox_FastExt
	
	If (V_Value==0)
		FuncFit /Q/W=2/NTHR=0/TBOX=768  {{SLP_StrightLine,BG_Coef,HOLD=HoldStr_BG},{SLP_InvGLA_FitFunc,GLA1_coef,HOLD=HoldStr_GLA1}}  ZProfW  /D=$FitZProfW_FName /M=ZProfMskW /C=$FitCoefConstraintsW_FName 
	Elseif (V_Value==1) //Fast mode
		FuncFit /N=1/Q/W=2/NTHR=0/TBOX=768  {{SLP_StrightLine,BG_Coef,HOLD=HoldStr_BG},{SLP_InvGLA_FitFunc,GLA1_coef,HOLD=HoldStr_GLA1}}  ZProfW  /D=$FitZProfW_FName /M=ZProfMskW /C=$FitCoefConstraintsW_FName
		// /N=1 = fast mode (no display for fit steps)
		DoUpdate
	Endif
	
	FitCoefDisplayW[0][3]=num2str(BG_Coef[0])
	FitCoefDisplayW[1][3]=num2str(BG_Coef[1])
	FitCoefDisplayW[2][3]=num2str(GLA1_coef[0])
	FitCoefDisplayW[3][3]=num2str(GLA1_coef[1])
	FitCoefDisplayW[4][3]=num2str(GLA1_coef[2])
	FitCoefDisplayW[5][3]=num2str(GLA1_coef[3])
	FitCoefDisplayW[6][3]=num2str(GLA1_coef[4])
	
	//Return GLA1_coef[1] 		
	
End

Function SLP_IXPS_Extract2GLAs(VolName,LLim,ULim)
	string VolName
	variable LLim,ULim
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]	
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String FitCoefConstraintsW_FName=ImgVolW_FName+"_FCoefC"
	String FitZProfW_FName=DataFolder_FName+"fit_"+VolName+"_zProfl"
	
	Wave ImgVolW=$ImgVolW_FName
	Wave ZProfW=$ZProfW_FName
	Duplicate /O ZProfW,$ZProfMskW_FName /WAVE=ZProfMskW
	
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	Wave FitZProfW=$FitZProfW_FName
	FitZProfW=NaN
	
	Make /O/D/N=2 BG_Coef
	Make /O/D/N=5 GLA1_coef
	Make /O/D/N=5 GLA2_coef
	
	String HoldStr_BG=""
	String HoldStr_GLA1=""
	String HoldStr_GLA2=""
	
	BG_Coef[0] = str2num(FitCoefDisplayW[0][4]);HoldStr_BG[0]=num2str((FitCoefDisplaySelW[0][5]-32)/16)
	BG_Coef[1] = str2num(FitCoefDisplayW[1][4]);HoldStr_BG[1]=num2str((FitCoefDisplaySelW[1][5]-32)/16)
	GLA1_coef[0] = str2num(FitCoefDisplayW[2][4]);HoldStr_GLA1[0]=num2str((FitCoefDisplaySelW[2][5]-32)/16)
	GLA1_coef[1] = str2num(FitCoefDisplayW[3][4]);HoldStr_GLA1[1]=num2str((FitCoefDisplaySelW[3][5]-32)/16)
	GLA1_coef[2] = str2num(FitCoefDisplayW[4][4]);HoldStr_GLA1[2]=num2str((FitCoefDisplaySelW[4][5]-32)/16)
	GLA1_coef[3] = str2num(FitCoefDisplayW[5][4]);HoldStr_GLA1[3]=num2str((FitCoefDisplaySelW[5][5]-32)/16)
	GLA1_coef[4] = str2num(FitCoefDisplayW[6][4]);HoldStr_GLA1[4]=num2str((FitCoefDisplaySelW[6][5]-32)/16)
	GLA2_coef[0] = str2num(FitCoefDisplayW[7][4]);HoldStr_GLA2[0]=num2str((FitCoefDisplaySelW[7][5]-32)/16)
	GLA2_coef[1] = str2num(FitCoefDisplayW[8][4]);HoldStr_GLA2[1]=num2str((FitCoefDisplaySelW[8][5]-32)/16)
	GLA2_coef[2] = str2num(FitCoefDisplayW[9][4]);HoldStr_GLA2[2]=num2str((FitCoefDisplaySelW[9][5]-32)/16)
	GLA2_coef[3] = str2num(FitCoefDisplayW[10][4]);HoldStr_GLA2[3]=num2str((FitCoefDisplaySelW[10][5]-32)/16)
	GLA2_coef[4] = str2num(FitCoefDisplayW[11][4]);HoldStr_GLA2[4]=num2str((FitCoefDisplaySelW[11][5]-32)/16)
	
	Wave ZProfMskW=$ZProfMskW_FName
	ZProfMskW=0
	ZProfMskW[round(x2pnt(ZProfMskW,LLim)),round(x2pnt(ZProfMskW,ULim))]=1
	
	ControlInfo /W=SLP_ImgXPS_Panel_01 CheckBox_FastExt
	
	If (V_Value==0)
		FuncFit /X/Q/W=2/NTHR=0/TBOX=768 {{SLP_StrightLine,BG_Coef,HOLD=HoldStr_BG},{SLP_InvGLA_FitFunc,GLA1_coef,HOLD=HoldStr_GLA1},{SLP_InvGLA_FitFunc,GLA2_coef,HOLD=HoldStr_GLA2}}  ZProfW  /D=$FitZProfW_FName /M=ZProfMskW /C=$FitCoefConstraintsW_FName
	Elseif (V_Value==1) //Fast mode
		FuncFit /N=1/X/Q/W=2/NTHR=0/TBOX=768 {{SLP_StrightLine,BG_Coef,HOLD=HoldStr_BG},{SLP_InvGLA_FitFunc,GLA1_coef,HOLD=HoldStr_GLA1},{SLP_InvGLA_FitFunc,GLA2_coef,HOLD=HoldStr_GLA2}}  ZProfW  /D=$FitZProfW_FName /M=ZProfMskW /C=$FitCoefConstraintsW_FName
		// /N=1 = fast mode (no display for fit steps)
		DoUpdate
	Endif
	
	FitCoefDisplayW[0][3]=num2str(BG_Coef[0])
	FitCoefDisplayW[1][3]=num2str(BG_Coef[1])
	FitCoefDisplayW[2][3]=num2str(GLA1_coef[0])
	FitCoefDisplayW[3][3]=num2str(GLA1_coef[1])
	FitCoefDisplayW[4][3]=num2str(GLA1_coef[2])
	FitCoefDisplayW[5][3]=num2str(GLA1_coef[3])
	FitCoefDisplayW[6][3]=num2str(GLA1_coef[4])
	FitCoefDisplayW[7][3]=num2str(GLA2_coef[0])
	FitCoefDisplayW[8][3]=num2str(GLA2_coef[1])
	FitCoefDisplayW[9][3]=num2str(GLA2_coef[2])
	FitCoefDisplayW[10][3]=num2str(GLA2_coef[3])
	FitCoefDisplayW[11][3]=num2str(GLA2_coef[4])
	
	//Return GLA1_coef[1] 		
	
End

Function SLP_IXPS_Extract3GLAs(VolName,LLim,ULim)
	string VolName
	variable LLim,ULim
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String FitCoefConstraintsW_FName=ImgVolW_FName+"_FCoefC"
	String FitZProfW_FName=DataFolder_FName+"fit_"+VolName+"_zProfl"

	Wave ImgVolW=$ImgVolW_FName
	Wave ZProfW=$ZProfW_FName
	Duplicate /O ZProfW,$ZProfMskW_FName /WAVE=ZProfMskW
	
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	
	Make /O/D/N=2 BG_Coef
	Make /O/D/N=5 GLA1_coef
	Make /O/D/N=5 GLA2_coef
	Make /O/D/N=5 GLA3_coef
	
	String HoldStr_BG=""
	String HoldStr_GLA1=""
	String HoldStr_GLA2=""
	String HoldStr_GLA3=""
	
	BG_Coef[0] = str2num(FitCoefDisplayW[0][4]);HoldStr_BG[0]=num2str((FitCoefDisplaySelW[0][5]-32)/16)
	BG_Coef[1] = str2num(FitCoefDisplayW[1][4]);HoldStr_BG[1]=num2str((FitCoefDisplaySelW[1][5]-32)/16)
	GLA1_coef[0] = str2num(FitCoefDisplayW[2][4]);HoldStr_GLA1[0]=num2str((FitCoefDisplaySelW[2][5]-32)/16)
	GLA1_coef[1] = str2num(FitCoefDisplayW[3][4]);HoldStr_GLA1[1]=num2str((FitCoefDisplaySelW[3][5]-32)/16)
	GLA1_coef[2] = str2num(FitCoefDisplayW[4][4]);HoldStr_GLA1[2]=num2str((FitCoefDisplaySelW[4][5]-32)/16)
	GLA1_coef[3] = str2num(FitCoefDisplayW[5][4]);HoldStr_GLA1[3]=num2str((FitCoefDisplaySelW[5][5]-32)/16)
	GLA1_coef[4] = str2num(FitCoefDisplayW[6][4]);HoldStr_GLA1[4]=num2str((FitCoefDisplaySelW[6][5]-32)/16)
	GLA2_coef[0] = str2num(FitCoefDisplayW[7][4]);HoldStr_GLA2[0]=num2str((FitCoefDisplaySelW[7][5]-32)/16)
	GLA2_coef[1] = str2num(FitCoefDisplayW[8][4]);HoldStr_GLA2[1]=num2str((FitCoefDisplaySelW[8][5]-32)/16)
	GLA2_coef[2] = str2num(FitCoefDisplayW[9][4]);HoldStr_GLA2[2]=num2str((FitCoefDisplaySelW[9][5]-32)/16)
	GLA2_coef[3] = str2num(FitCoefDisplayW[10][4]);HoldStr_GLA2[3]=num2str((FitCoefDisplaySelW[10][5]-32)/16)
	GLA2_coef[4] = str2num(FitCoefDisplayW[11][4]);HoldStr_GLA2[4]=num2str((FitCoefDisplaySelW[11][5]-32)/16)
	GLA3_coef[0] = str2num(FitCoefDisplayW[12][4]);HoldStr_GLA3[0]=num2str((FitCoefDisplaySelW[12][5]-32)/16)
	GLA3_coef[1] = str2num(FitCoefDisplayW[13][4]);HoldStr_GLA3[1]=num2str((FitCoefDisplaySelW[13][5]-32)/16)
	GLA3_coef[2] = str2num(FitCoefDisplayW[14][4]);HoldStr_GLA3[2]=num2str((FitCoefDisplaySelW[14][5]-32)/16)
	GLA3_coef[3] = str2num(FitCoefDisplayW[15][4]);HoldStr_GLA3[3]=num2str((FitCoefDisplaySelW[15][5]-32)/16)
	GLA3_coef[4] = str2num(FitCoefDisplayW[16][4]);HoldStr_GLA3[4]=num2str((FitCoefDisplaySelW[16][5]-32)/16)
	
	Wave ZProfMskW=$ZProfMskW_FName
	ZProfMskW=0
	ZProfMskW[round(x2pnt(ZProfMskW,LLim)),round(x2pnt(ZProfMskW,ULim))]=1
	
	ControlInfo /W=SLP_ImgXPS_Panel_01 CheckBox_FastExt
	
	If (V_Value==0)
		FuncFit /Q/W=2/NTHR=0/TBOX=768 {{SLP_StrightLine,BG_Coef,HOLD=HoldStr_BG},{SLP_InvGLA_FitFunc,GLA1_coef,HOLD=HoldStr_GLA1},{SLP_InvGLA_FitFunc,GLA2_coef,HOLD=HoldStr_GLA2},{SLP_InvGLA_FitFunc,GLA3_coef,HOLD=HoldStr_GLA3}}  ZProfW  /D=$FitZProfW_FName /M=ZProfMskW /C=$FitCoefConstraintsW_FName
	Elseif (V_Value==1) //Fast mode
		FuncFit /N=1/Q/W=2/NTHR=0/TBOX=768 {{SLP_StrightLine,BG_Coef,HOLD=HoldStr_BG},{SLP_InvGLA_FitFunc,GLA1_coef,HOLD=HoldStr_GLA1},{SLP_InvGLA_FitFunc,GLA2_coef,HOLD=HoldStr_GLA2},{SLP_InvGLA_FitFunc,GLA3_coef,HOLD=HoldStr_GLA3}}  ZProfW  /D=$FitZProfW_FName /M=ZProfMskW /C=$FitCoefConstraintsW_FName
		// /N=1 = fast mode (no display for fit steps)
		DoUpdate
	Endif
	
	FitCoefDisplayW[0][3]=num2str(BG_Coef[0])
	FitCoefDisplayW[1][3]=num2str(BG_Coef[1])
	FitCoefDisplayW[2][3]=num2str(GLA1_coef[0])
	FitCoefDisplayW[3][3]=num2str(GLA1_coef[1])
	FitCoefDisplayW[4][3]=num2str(GLA1_coef[2])
	FitCoefDisplayW[5][3]=num2str(GLA1_coef[3])
	FitCoefDisplayW[6][3]=num2str(GLA1_coef[4])
	FitCoefDisplayW[7][3]=num2str(GLA2_coef[0])
	FitCoefDisplayW[8][3]=num2str(GLA2_coef[1])
	FitCoefDisplayW[9][3]=num2str(GLA2_coef[2])
	FitCoefDisplayW[10][3]=num2str(GLA2_coef[3])
	FitCoefDisplayW[11][3]=num2str(GLA2_coef[4])
	FitCoefDisplayW[12][3]=num2str(GLA3_coef[0])
	FitCoefDisplayW[13][3]=num2str(GLA3_coef[1])
	FitCoefDisplayW[14][3]=num2str(GLA3_coef[2])
	FitCoefDisplayW[15][3]=num2str(GLA3_coef[3])
	FitCoefDisplayW[16][3]=num2str(GLA3_coef[4])
	
	//Return GLA1_coef[1] 		
	
End

Function SLP_IXPS_Extract4GLAs(VolName,LLim,ULim)
	string VolName
	variable LLim,ULim
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String FitCoefConstraintsW_FName=ImgVolW_FName+"_FCoefC"
	String FitZProfW_FName=DataFolder_FName+"fit_"+VolName+"_zProfl"

	Wave ImgVolW=$ImgVolW_FName
	Wave ZProfW=$ZProfW_FName
	Duplicate /O ZProfW,$ZProfMskW_FName /WAVE=ZProfMskW
	
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	
	Make /O/D/N=2 BG_Coef
	Make /O/D/N=5 GLA1_coef
	Make /O/D/N=5 GLA2_coef
	Make /O/D/N=5 GLA3_coef
	Make /O/D/N=5 GLA4_coef
	
	String HoldStr_BG=""
	String HoldStr_GLA1=""
	String HoldStr_GLA2=""
	String HoldStr_GLA3=""
	String HoldStr_GLA4=""
	
	BG_Coef[0] = str2num(FitCoefDisplayW[0][4]);HoldStr_BG[0]=num2str((FitCoefDisplaySelW[0][5]-32)/16)
	BG_Coef[1] = str2num(FitCoefDisplayW[1][4]);HoldStr_BG[1]=num2str((FitCoefDisplaySelW[1][5]-32)/16)
	GLA1_coef[0] = str2num(FitCoefDisplayW[2][4]);HoldStr_GLA1[0]=num2str((FitCoefDisplaySelW[2][5]-32)/16)
	GLA1_coef[1] = str2num(FitCoefDisplayW[3][4]);HoldStr_GLA1[1]=num2str((FitCoefDisplaySelW[3][5]-32)/16)
	GLA1_coef[2] = str2num(FitCoefDisplayW[4][4]);HoldStr_GLA1[2]=num2str((FitCoefDisplaySelW[4][5]-32)/16)
	GLA1_coef[3] = str2num(FitCoefDisplayW[5][4]);HoldStr_GLA1[3]=num2str((FitCoefDisplaySelW[5][5]-32)/16)
	GLA1_coef[4] = str2num(FitCoefDisplayW[6][4]);HoldStr_GLA1[4]=num2str((FitCoefDisplaySelW[6][5]-32)/16)
	GLA2_coef[0] = str2num(FitCoefDisplayW[7][4]);HoldStr_GLA2[0]=num2str((FitCoefDisplaySelW[7][5]-32)/16)
	GLA2_coef[1] = str2num(FitCoefDisplayW[8][4]);HoldStr_GLA2[1]=num2str((FitCoefDisplaySelW[8][5]-32)/16)
	GLA2_coef[2] = str2num(FitCoefDisplayW[9][4]);HoldStr_GLA2[2]=num2str((FitCoefDisplaySelW[9][5]-32)/16)
	GLA2_coef[3] = str2num(FitCoefDisplayW[10][4]);HoldStr_GLA2[3]=num2str((FitCoefDisplaySelW[10][5]-32)/16)
	GLA2_coef[4] = str2num(FitCoefDisplayW[11][4]);HoldStr_GLA2[4]=num2str((FitCoefDisplaySelW[11][5]-32)/16)
	GLA3_coef[0] = str2num(FitCoefDisplayW[12][4]);HoldStr_GLA3[0]=num2str((FitCoefDisplaySelW[12][5]-32)/16)
	GLA3_coef[1] = str2num(FitCoefDisplayW[13][4]);HoldStr_GLA3[1]=num2str((FitCoefDisplaySelW[13][5]-32)/16)
	GLA3_coef[2] = str2num(FitCoefDisplayW[14][4]);HoldStr_GLA3[2]=num2str((FitCoefDisplaySelW[14][5]-32)/16)
	GLA3_coef[3] = str2num(FitCoefDisplayW[15][4]);HoldStr_GLA3[3]=num2str((FitCoefDisplaySelW[15][5]-32)/16)
	GLA3_coef[4] = str2num(FitCoefDisplayW[16][4]);HoldStr_GLA3[4]=num2str((FitCoefDisplaySelW[16][5]-32)/16)
	GLA4_coef[0] = str2num(FitCoefDisplayW[17][4]);HoldStr_GLA3[0]=num2str((FitCoefDisplaySelW[17][5]-32)/16)
	GLA4_coef[1] = str2num(FitCoefDisplayW[18][4]);HoldStr_GLA3[1]=num2str((FitCoefDisplaySelW[18][5]-32)/16)
	GLA4_coef[2] = str2num(FitCoefDisplayW[19][4]);HoldStr_GLA3[2]=num2str((FitCoefDisplaySelW[19][5]-32)/16)
	GLA4_coef[3] = str2num(FitCoefDisplayW[20][4]);HoldStr_GLA3[3]=num2str((FitCoefDisplaySelW[20][5]-32)/16)
	GLA4_coef[4] = str2num(FitCoefDisplayW[21][4]);HoldStr_GLA3[4]=num2str((FitCoefDisplaySelW[21][5]-32)/16)
	
	Wave ZProfMskW=$ZProfMskW_FName
	ZProfMskW=0
	ZProfMskW[round(x2pnt(ZProfMskW,LLim)),round(x2pnt(ZProfMskW,ULim))]=1
	
	ControlInfo /W=SLP_ImgXPS_Panel_01 CheckBox_FastExt
	
	If (V_Value==0)
		FuncFit /Q/W=2/NTHR=0/TBOX=768 {{SLP_StrightLine,BG_Coef,HOLD=HoldStr_BG},{SLP_InvGLA_FitFunc,GLA1_coef,HOLD=HoldStr_GLA1},{SLP_InvGLA_FitFunc,GLA2_coef,HOLD=HoldStr_GLA2},{SLP_InvGLA_FitFunc,GLA3_coef,HOLD=HoldStr_GLA3},{SLP_InvGLA_FitFunc,GLA4_coef,HOLD=HoldStr_GLA4}}  ZProfW  /D=$FitZProfW_FName /M=ZProfMskW /C=$FitCoefConstraintsW_FName
	Elseif (V_Value==1) //Fast mode
		FuncFit /N=1/Q/W=2/NTHR=0/TBOX=768 {{SLP_StrightLine,BG_Coef,HOLD=HoldStr_BG},{SLP_InvGLA_FitFunc,GLA1_coef,HOLD=HoldStr_GLA1},{SLP_InvGLA_FitFunc,GLA2_coef,HOLD=HoldStr_GLA2},{SLP_InvGLA_FitFunc,GLA3_coef,HOLD=HoldStr_GLA3},{SLP_InvGLA_FitFunc,GLA4_coef,HOLD=HoldStr_GLA4}}  ZProfW  /D=$FitZProfW_FName /M=ZProfMskW /C=$FitCoefConstraintsW_FName
		// /N=1 = fast mode (no display for fit steps)
		DoUpdate
	Endif
	
	FitCoefDisplayW[0][3]=num2str(BG_Coef[0])
	FitCoefDisplayW[1][3]=num2str(BG_Coef[1])
	FitCoefDisplayW[2][3]=num2str(GLA1_coef[0])
	FitCoefDisplayW[3][3]=num2str(GLA1_coef[1])
	FitCoefDisplayW[4][3]=num2str(GLA1_coef[2])
	FitCoefDisplayW[5][3]=num2str(GLA1_coef[3])
	FitCoefDisplayW[6][3]=num2str(GLA1_coef[4])
	FitCoefDisplayW[7][3]=num2str(GLA2_coef[0])
	FitCoefDisplayW[8][3]=num2str(GLA2_coef[1])
	FitCoefDisplayW[9][3]=num2str(GLA2_coef[2])
	FitCoefDisplayW[10][3]=num2str(GLA2_coef[3])
	FitCoefDisplayW[11][3]=num2str(GLA2_coef[4])
	FitCoefDisplayW[12][3]=num2str(GLA3_coef[0])
	FitCoefDisplayW[13][3]=num2str(GLA3_coef[1])
	FitCoefDisplayW[14][3]=num2str(GLA3_coef[2])
	FitCoefDisplayW[15][3]=num2str(GLA3_coef[3])
	FitCoefDisplayW[16][3]=num2str(GLA3_coef[4])
	FitCoefDisplayW[17][3]=num2str(GLA4_coef[0])
	FitCoefDisplayW[18][3]=num2str(GLA4_coef[1])
	FitCoefDisplayW[19][3]=num2str(GLA4_coef[2])
	FitCoefDisplayW[20][3]=num2str(GLA4_coef[3])
	FitCoefDisplayW[21][3]=num2str(GLA4_coef[4])
	
	//Return GLA1_coef[1] 		
	
End

Function SLP_IXPS_ExtractPeakPos(VolName,LLim,ULim)
	string VolName
	variable LLim,ULim
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	
	Wave ImgVolW=$ImgVolW_FName
	Wave ZProfW=$ZProfW_FName
	Duplicate /O ZProfW,$ZProfMskW_FName /WAVE=ZProfMskW
	
	//Create Coef. wave
	//Make /O/D/N=10 $FitCoefW_FName /WAVE=FitCoefW
	
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	
	Make /O/D/N=2 BG_Coef
	Make /O/D/N=5 GLA1_coef
	Make /O/D/N=5 GLA2_coef
	BG_Coef[0] = str2num(FitCoefDisplayW[0][4])
	BG_Coef[1] = str2num(FitCoefDisplayW[1][4])
	GLA1_coef[0] = str2num(FitCoefDisplayW[2][4])
	GLA1_coef[1] = str2num(FitCoefDisplayW[3][4])
	GLA1_coef[2] = str2num(FitCoefDisplayW[4][4])
	GLA1_coef[3] = str2num(FitCoefDisplayW[5][4])
	GLA1_coef[4] = str2num(FitCoefDisplayW[6][4])
	GLA2_coef[0] = str2num(FitCoefDisplayW[7][4])
	GLA2_coef[1] = str2num(FitCoefDisplayW[8][4])
	GLA2_coef[2] = str2num(FitCoefDisplayW[9][4])
	GLA2_coef[3] = str2num(FitCoefDisplayW[10][4])
	GLA2_coef[4] = str2num(FitCoefDisplayW[11][4])
	
	Wave ZProfMskW=$ZProfMskW_FName
	ZProfMskW=0
	ZProfMskW[round(x2pnt(ZProfMskW,Llim)),round(x2pnt(ZProfMskW,ULim))]=1
	
	FuncFit /Q/NTHR=0/TBOX=768 {{line,BG_Coef},{SLP_GLA_FitFunc,GLA1_coef},{SLP_GLA_FitFunc,GLA2_coef}}  ZProfW  /D /M=ZProfMskW //C=Constraint_W
	
	FitCoefDisplayW[0][3]=num2str(BG_Coef[0])
	FitCoefDisplayW[1][3]=num2str(BG_Coef[1])
	FitCoefDisplayW[2][3]=num2str(GLA1_coef[0])
	FitCoefDisplayW[3][3]=num2str(GLA1_coef[1])
	FitCoefDisplayW[4][3]=num2str(GLA1_coef[2])
	FitCoefDisplayW[5][3]=num2str(GLA1_coef[3])
	FitCoefDisplayW[6][3]=num2str(GLA1_coef[4])
	FitCoefDisplayW[7][3]=num2str(GLA2_coef[0])
	FitCoefDisplayW[8][3]=num2str(GLA2_coef[1])
	FitCoefDisplayW[9][3]=num2str(GLA2_coef[2])
	FitCoefDisplayW[10][3]=num2str(GLA2_coef[3])
	FitCoefDisplayW[11][3]=num2str(GLA2_coef[4])
	
	
	Return GLA1_coef[1] 		
	
End

Function PopMenuProc_FitSel(pa) : PopupMenuControl
	STRUCT WMPopupAction &pa

	switch( pa.eventCode )
		case 2: // mouse up
			Variable popNum = pa.popNum
			String popStr = pa.popStr
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String VolName=SLP_IXPS_ScanListW[SelRow][0]
			
			SLP_IXPS_FitInit(VolName,popStr)
			
			//Update in the ScanListW
			SLP_IXPS_ScanListW[SelRow][48]=num2str(popNum)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_FitConstraints(VolName)
	String VolName
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String FitCoefConstraintsW_FName=ImgVolW_FName+"_FCoefC"
	
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	
	variable i=0
	String Constraint_txt=""
	Make /O/T/N=0 $FitCoefConstraintsW_FName /WAVE=FitCoefConstraintsW
	
	For (i=0;i<dimsize(FitCoefDisplayW,0);i+=1)
		If (!StringMatch(FitCoefDisplayW[i][6],""))
			Constraint_txt="K"+num2str(i)+">"+FitCoefDisplayW[i][6]
			redimension /N=(dimsize(FitCoefConstraintsW,0)+1) FitCoefConstraintsW
			FitCoefConstraintsW[dimsize(FitCoefConstraintsW,0)-1]=Constraint_txt
		EndIf
		
		If (!StringMatch(FitCoefDisplayW[i][7],""))
			Constraint_txt="K"+num2str(i)+"<"+FitCoefDisplayW[i][7]
			redimension /N=(dimsize(FitCoefConstraintsW,0)+1) FitCoefConstraintsW
			FitCoefConstraintsW[dimsize(FitCoefConstraintsW,0)-1]=Constraint_txt
		EndIf
	EndFor

End

Function SLP_IXPS_FitInit(VolName,FitName)
	String VolName
	String FitName
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String FitZProfW_FName=DataFolder_FName+"fit_"+VolName+"_zProfl"
	
	//Create Fit wave
	
	Make /T/O/N=(256,16) $FitCoefDisplayW_FName /WAVE=FitCoefDisplayW
	Make /O/N=(256,16) $FitCoefDisplaySelW_FName /WAVE=FitCoefDisplaySelW
	duplicate  /O $ZProfW_FName,$FitZProfW_FName /Wave=FitZProfW
	FitZProfW=0
	//Size is 256 rows x 16 columns for any kinds of fit
	//Reset the param waves
	FitCoefDisplayW=""
	FitCoefDisplaySelW=0
	
	SetDimLabel 1,0,Ex,FitCoefDisplayW
	SetDimLabel 1,1,K,FitCoefDisplayW
	SetDimLabel 1,2,Param,FitCoefDisplayW
	SetDimLabel 1,3,Value,FitCoefDisplayW
	SetDimLabel 1,4,Guess,FitCoefDisplayW
	SetDimLabel 1,5,Hold,FitCoefDisplayW
	SetDimLabel 1,6,LLim,FitCoefDisplayW
	SetDimLabel 1,7,ULim,FitCoefDisplayW
	SetDimLabel 1,8,Disp,FitCoefDisplayW
	SetDimLabel 1,9,Corr,FitCoefDisplayW
	SetDimLabel 1,10,DLLim,FitCoefDisplayW
	SetDimLabel 1,11,DULim,FitCoefDisplayW
	
	FitCoefDisplaySelW[][0]=48 //Items to be saved (Default = check all)
	FitCoefDisplaySelW[][2]=0 //Param (K0,K1,K2,...)
	FitCoefDisplaySelW[][3]=0 //Value
	FitCoefDisplaySelW[][4]=2 //Guess
	FitCoefDisplaySelW[][5]=32 //ChkBox3 for 'Hold'
	FitCoefDisplaySelW[][6]=2 //LLim
	FitCoefDisplaySelW[][7]=2 //ULim
	FitCoefDisplaySelW[][8]=32 //ChkBox for Display (limit to 6, only if the first Chkbox is checked)
	FitCoefDisplaySelW[][9]=32 //ChkBox for Correction (limit to 1, only if the first Chkbox is checked)
	FitCoefDisplaySelW[][10]=2 //DLLim (Intensity lower limit for image)
	FitCoefDisplaySelW[][11]=2 //DULim (Intensity upper limit for image)
	
	strswitch(FitName)	// string switch
		Case "Secondary yield cut-off":		// execute if case matches expression
			FitCoefDisplayW[0][1]="K0";FitCoefDisplayW[0][2]="Height";FitCoefDisplaySelW[0][4,7]=0;FitCoefDisplayW[0][6]="0";FitCoefDisplayW[0][7]="5000"
			FitCoefDisplayW[1][1]="K1";FitCoefDisplayW[1][2]="Offset";FitCoefDisplaySelW[1][4,7]=0;FitCoefDisplayW[1][6]="0";FitCoefDisplayW[1][7]="5000"
			FitCoefDisplayW[2][1]="K2";FitCoefDisplayW[2][2]="Cutoff";FitCoefDisplaySelW[2][4,7]=0//Use algorithm instead
			FitCoefDisplayW[3][1]="K3";FitCoefDisplayW[3][2]="Width";FitCoefDisplayW[3][4]="0.5";FitCoefDisplayW[3][6]="0.05";FitCoefDisplayW[3][7]="5"
			FitCoefDisplaySelW[4,255][0,15]=0//Clear all unused cells
			FitCoefDisplaySelW[2][0]=48 //Select Cutoff (most used one)
			Break
		Case "LEEM cut-off":		// execute if case matches expression
			FitCoefDisplayW[0][1]="K0";FitCoefDisplayW[0][2]="RawMin";FitCoefDisplaySelW[0][4,7]=0
			FitCoefDisplayW[1][1]="K1";FitCoefDisplayW[1][2]="FirstDiffMin";FitCoefDisplaySelW[1][4,7]=0
			FitCoefDisplayW[2][1]="K2";FitCoefDisplayW[2][2]="SecondDiffMin";FitCoefDisplaySelW[2][4,7]=0
			FitCoefDisplayW[3][1]="K3";FitCoefDisplayW[3][2]="SecondDiffMax";FitCoefDisplaySelW[3][4,7]=0
			FitCoefDisplaySelW[4,255][0,15]=0//Clear all unused cells
			FitCoefDisplaySelW[2][0]=48 //Select Cutoff (most used one)
			Break
		Case "1GLA":			
			//Linear BG
			FitCoefDisplayW[0][1]="K0";FitCoefDisplayW[0][2]="Line offset";FitCoefDisplayW[0][4]="0"
			FitCoefDisplayW[1][1]="K1";FitCoefDisplayW[1][2]="Line slope";FitCoefDisplayW[1][4]="0"
			//Peak1
			FitCoefDisplayW[2][1]="K2";FitCoefDisplayW[2][2]="p1_int";FitCoefDisplayW[2][4]="0";FitCoefDisplayW[2][6]="0"
			FitCoefDisplayW[3][1]="K3";FitCoefDisplayW[3][2]="p1_pos";FitCoefDisplayW[3][4]="0";
			FitCoefDisplayW[4][1]="K4";FitCoefDisplayW[4][2]="p1_fwhm";FitCoefDisplayW[4][4]="1";FitCoefDisplayW[4][6]="0.1";FitCoefDisplayW[4][7]="3"
			FitCoefDisplayW[5][1]="K5";FitCoefDisplayW[5][2]="p1_mix";FitCoefDisplayW[5][4]="0.5";FitCoefDisplayW[5][6]="0.001";FitCoefDisplayW[5][7]="0.999"
			FitCoefDisplayW[6][1]="K6";FitCoefDisplayW[6][2]="p1_as";FitCoefDisplayW[6][4]="0.5";FitCoefDisplayW[6][6]="0.001";FitCoefDisplayW[6][7]="0.999"
			//The rest are calculated from fit params and can be used for mapping (cannot do guess or set constraints)
			FitCoefDisplayW[7][2]="p1_area";FitCoefDisplaySelW[7][4,7]=0
			FitCoefDisplayW[8][2]="custom1";FitCoefDisplayW[8][4]="<Formula>";FitCoefDisplaySelW[8][4]=2;FitCoefDisplaySelW[8][5,7]=0
			FitCoefDisplayW[9][2]="custom2";FitCoefDisplayW[9][4]="<Formula>";FitCoefDisplaySelW[9][4]=2;FitCoefDisplaySelW[9][5,7]=0
			FitCoefDisplaySelW[10,255][0,15]=0//Clear all unused cells
			FitCoefDisplaySelW[3][0]=48 //Select p1_pos (most used one)
			Break
		Case "2GLAs":			
			//Linear BG
			FitCoefDisplayW[0][1]="K0";FitCoefDisplayW[0][2]="Line offset";FitCoefDisplayW[0][4]="0"
			FitCoefDisplayW[1][1]="K1";FitCoefDisplayW[1][2]="Line slope";FitCoefDisplayW[1][4]="0"
			//Peak1
			FitCoefDisplayW[2][1]="K2";FitCoefDisplayW[2][2]="p1_int";FitCoefDisplayW[2][4]="0";FitCoefDisplayW[2][6]="0"
			FitCoefDisplayW[3][1]="K3";FitCoefDisplayW[3][2]="p1_pos";FitCoefDisplayW[3][4]="0";
			FitCoefDisplayW[4][1]="K4";FitCoefDisplayW[4][2]="p1_fwhm";FitCoefDisplayW[4][4]="1";FitCoefDisplayW[4][6]="0.1";FitCoefDisplayW[4][7]="3"
			FitCoefDisplayW[5][1]="K5";FitCoefDisplayW[5][2]="p1_mix";FitCoefDisplayW[5][4]="0.5";FitCoefDisplayW[5][6]="0.001";FitCoefDisplayW[5][7]="0.999"
			FitCoefDisplayW[6][1]="K6";FitCoefDisplayW[6][2]="p1_as";FitCoefDisplayW[6][4]="0.5";FitCoefDisplayW[6][6]="0.001";FitCoefDisplayW[6][7]="0.999"
			//Peak2
			FitCoefDisplayW[7][1]="K7";FitCoefDisplayW[7][2]="p2_int";FitCoefDisplayW[7][4]="0";FitCoefDisplayW[7][6]="0"
			FitCoefDisplayW[8][1]="K8";FitCoefDisplayW[8][2]="p2_pos";FitCoefDisplayW[8][4]="0"
			FitCoefDisplayW[9][1]="K9";FitCoefDisplayW[9][2]="p2_fwhm";FitCoefDisplayW[9][4]="1";FitCoefDisplayW[9][6]="0.1";FitCoefDisplayW[9][7]="3"
			FitCoefDisplayW[10][1]="K10";FitCoefDisplayW[10][2]="p2_mix";FitCoefDisplayW[10][4]="0.5";FitCoefDisplayW[10][6]="0.001";FitCoefDisplayW[10][7]="0.999"
			FitCoefDisplayW[11][1]="K11";FitCoefDisplayW[11][2]="p2_as";FitCoefDisplayW[11][4]="0.5";FitCoefDisplayW[11][6]="0.001";FitCoefDisplayW[11][7]="0.999"
			//The rest are calculated from fit params and can be used for mapping (cannot do guess or set constraints)
			FitCoefDisplayW[12][2]="p1_area";FitCoefDisplaySelW[12][4,7]=0
			FitCoefDisplayW[13][2]="p2_area";FitCoefDisplaySelW[13][4,7]=0
			FitCoefDisplayW[14][2]="custom1";FitCoefDisplayW[14][4]="<Formula>";FitCoefDisplaySelW[14][4]=2;FitCoefDisplaySelW[14][5,7]=0
			FitCoefDisplayW[15][2]="custom2";FitCoefDisplayW[15][4]="<Formula>";FitCoefDisplaySelW[15][4]=2;FitCoefDisplaySelW[15][5,7]=0
			FitCoefDisplaySelW[16,255][0,15]=0//Clear all unused cells
			FitCoefDisplaySelW[3][0]=48 //Select p1_pos (most used one)
			Break
		Case "3GLAs":			
			//Linear BG
			FitCoefDisplayW[0][1]="K0";FitCoefDisplayW[0][2]="Line offset";FitCoefDisplayW[0][4]="0"
			FitCoefDisplayW[1][1]="K1";FitCoefDisplayW[1][2]="Line slope";FitCoefDisplayW[1][4]="0"
			//Peak1
			FitCoefDisplayW[2][1]="K2";FitCoefDisplayW[2][2]="p1_int";FitCoefDisplayW[2][4]="0";FitCoefDisplayW[2][6]="0"
			FitCoefDisplayW[3][1]="K3";FitCoefDisplayW[3][2]="p1_pos";FitCoefDisplayW[3][4]="0";
			FitCoefDisplayW[4][1]="K4";FitCoefDisplayW[4][2]="p1_fwhm";FitCoefDisplayW[4][4]="1";FitCoefDisplayW[4][6]="0.1";FitCoefDisplayW[4][7]="3"
			FitCoefDisplayW[5][1]="K5";FitCoefDisplayW[5][2]="p1_mix";FitCoefDisplayW[5][4]="0.5";FitCoefDisplayW[5][6]="0.001";FitCoefDisplayW[5][7]="0.999"
			FitCoefDisplayW[6][1]="K6";FitCoefDisplayW[6][2]="p1_as";FitCoefDisplayW[6][4]="0.5";FitCoefDisplayW[6][6]="0.001";FitCoefDisplayW[6][7]="0.999"
			//Peak2
			FitCoefDisplayW[7][1]="K7";FitCoefDisplayW[7][2]="p2_int";FitCoefDisplayW[7][4]="0";FitCoefDisplayW[7][6]="0"
			FitCoefDisplayW[8][1]="K8";FitCoefDisplayW[8][2]="p2_pos";FitCoefDisplayW[8][4]="0"
			FitCoefDisplayW[9][1]="K9";FitCoefDisplayW[9][2]="p2_fwhm";FitCoefDisplayW[9][4]="1";FitCoefDisplayW[9][6]="0.1";FitCoefDisplayW[9][7]="3"
			FitCoefDisplayW[10][1]="K10";FitCoefDisplayW[10][2]="p2_mix";FitCoefDisplayW[10][4]="0.5";FitCoefDisplayW[10][6]="0.001";FitCoefDisplayW[10][7]="0.999"
			FitCoefDisplayW[11][1]="K11";FitCoefDisplayW[11][2]="p2_as";FitCoefDisplayW[11][4]="0.5";FitCoefDisplayW[11][6]="0.001";FitCoefDisplayW[11][7]="0.999"
			//Peak3
			FitCoefDisplayW[12][1]="K12";FitCoefDisplayW[12][2]="p3_int";FitCoefDisplayW[12][4]="0";FitCoefDisplayW[12][6]="0"
			FitCoefDisplayW[13][1]="K13";FitCoefDisplayW[13][2]="p3_pos";FitCoefDisplayW[13][4]="0"
			FitCoefDisplayW[14][1]="K14";FitCoefDisplayW[14][2]="p3_fwhm";FitCoefDisplayW[14][4]="1";FitCoefDisplayW[14][6]="0.1";FitCoefDisplayW[14][7]="3"
			FitCoefDisplayW[15][1]="K15";FitCoefDisplayW[15][2]="p3_mix";FitCoefDisplayW[15][4]="0.5";FitCoefDisplayW[15][6]="0.001";FitCoefDisplayW[15][7]="0.999"
			FitCoefDisplayW[16][1]="K16";FitCoefDisplayW[16][2]="p3_as";FitCoefDisplayW[16][4]="0.5";FitCoefDisplayW[16][6]="0.001";FitCoefDisplayW[16][7]="0.999"
			//The rest are calculated from fit params and can be used for mapping (cannot do guess or set constraints)
			FitCoefDisplayW[17][2]="p1_area";FitCoefDisplaySelW[17][4,7]=0
			FitCoefDisplayW[18][2]="p2_area";FitCoefDisplaySelW[18][4,7]=0
			FitCoefDisplayW[19][2]="p3_area";FitCoefDisplaySelW[19][4,7]=0
			FitCoefDisplayW[20][2]="custom1";FitCoefDisplayW[20][4]="<Formula>";FitCoefDisplaySelW[20][4]=2;FitCoefDisplaySelW[20][5,7]=0
			FitCoefDisplayW[21][2]="custom2";FitCoefDisplayW[21][4]="<Formula>";FitCoefDisplaySelW[21][4]=2;FitCoefDisplaySelW[21][5,7]=0
			FitCoefDisplaySelW[22,255][0,15]=0//Clear all unused cells
			FitCoefDisplaySelW[3][0]=48 //Select p1_pos (most used one)
			Break
		Case "4GLAs":			
			//Linear BG
			FitCoefDisplayW[0][1]="K0";FitCoefDisplayW[0][2]="Line offset";FitCoefDisplayW[0][4]="0"
			FitCoefDisplayW[1][1]="K1";FitCoefDisplayW[1][2]="Line slope";FitCoefDisplayW[1][4]="0"
			//Peak1
			FitCoefDisplayW[2][1]="K2";FitCoefDisplayW[2][2]="p1_int";FitCoefDisplayW[2][4]="0";FitCoefDisplayW[2][6]="0"
			FitCoefDisplayW[3][1]="K3";FitCoefDisplayW[3][2]="p1_pos";FitCoefDisplayW[3][4]="0";
			FitCoefDisplayW[4][1]="K4";FitCoefDisplayW[4][2]="p1_fwhm";FitCoefDisplayW[4][4]="1";FitCoefDisplayW[4][6]="0.1";FitCoefDisplayW[4][7]="3"
			FitCoefDisplayW[5][1]="K5";FitCoefDisplayW[5][2]="p1_mix";FitCoefDisplayW[5][4]="0.5";FitCoefDisplayW[5][6]="0.001";FitCoefDisplayW[5][7]="0.999"
			FitCoefDisplayW[6][1]="K6";FitCoefDisplayW[6][2]="p1_as";FitCoefDisplayW[6][4]="0.5";FitCoefDisplayW[6][6]="0.001";FitCoefDisplayW[6][7]="0.999"
			//Peak2
			FitCoefDisplayW[7][1]="K7";FitCoefDisplayW[7][2]="p2_int";FitCoefDisplayW[7][4]="0";FitCoefDisplayW[7][6]="0"
			FitCoefDisplayW[8][1]="K8";FitCoefDisplayW[8][2]="p2_pos";FitCoefDisplayW[8][4]="0"
			FitCoefDisplayW[9][1]="K9";FitCoefDisplayW[9][2]="p2_fwhm";FitCoefDisplayW[9][4]="1";FitCoefDisplayW[9][6]="0.1";FitCoefDisplayW[9][7]="3"
			FitCoefDisplayW[10][1]="K10";FitCoefDisplayW[10][2]="p2_mix";FitCoefDisplayW[10][4]="0.5";FitCoefDisplayW[10][6]="0.001";FitCoefDisplayW[10][7]="0.999"
			FitCoefDisplayW[11][1]="K11";FitCoefDisplayW[11][2]="p2_as";FitCoefDisplayW[11][4]="0.5";FitCoefDisplayW[11][6]="0.001";FitCoefDisplayW[11][7]="0.999"
			//Peak3
			FitCoefDisplayW[12][1]="K12";FitCoefDisplayW[12][2]="p3_int";FitCoefDisplayW[12][4]="0";FitCoefDisplayW[12][6]="0"
			FitCoefDisplayW[13][1]="K13";FitCoefDisplayW[13][2]="p3_pos";FitCoefDisplayW[13][4]="0"
			FitCoefDisplayW[14][1]="K14";FitCoefDisplayW[14][2]="p3_fwhm";FitCoefDisplayW[14][4]="1";FitCoefDisplayW[14][6]="0.1";FitCoefDisplayW[14][7]="3"
			FitCoefDisplayW[15][1]="K15";FitCoefDisplayW[15][2]="p3_mix";FitCoefDisplayW[15][4]="0.5";FitCoefDisplayW[15][6]="0.001";FitCoefDisplayW[15][7]="0.999"
			FitCoefDisplayW[16][1]="K16";FitCoefDisplayW[16][2]="p3_as";FitCoefDisplayW[16][4]="0.5";FitCoefDisplayW[16][6]="0.001";FitCoefDisplayW[16][7]="0.999"
			//Peak4
			FitCoefDisplayW[17][1]="K17";FitCoefDisplayW[17][2]="p4_int";FitCoefDisplayW[17][4]="0";FitCoefDisplayW[17][6]="0"
			FitCoefDisplayW[18][1]="K18";FitCoefDisplayW[18][2]="p4_pos";FitCoefDisplayW[18][4]="0"
			FitCoefDisplayW[19][1]="K19";FitCoefDisplayW[19][2]="p4_fwhm";FitCoefDisplayW[19][4]="1";FitCoefDisplayW[19][6]="0.1";FitCoefDisplayW[19][7]="3"
			FitCoefDisplayW[20][1]="K20";FitCoefDisplayW[20][2]="p4_mix";FitCoefDisplayW[20][4]="0.5";FitCoefDisplayW[20][6]="0.001";FitCoefDisplayW[20][7]="0.999"
			FitCoefDisplayW[21][1]="K21";FitCoefDisplayW[21][2]="p4_as";FitCoefDisplayW[21][4]="0.5";FitCoefDisplayW[21][6]="0.001";FitCoefDisplayW[21][7]="0.999"
			//The rest are calculated from fit params and can be used for mapping (cannot do guess or set constraints)
			FitCoefDisplayW[22][2]="p1_area";FitCoefDisplaySelW[22][4,7]=0
			FitCoefDisplayW[23][2]="p2_area";FitCoefDisplaySelW[23][4,7]=0
			FitCoefDisplayW[24][2]="p3_area";FitCoefDisplaySelW[24][4,7]=0
			FitCoefDisplayW[25][2]="p4_area";FitCoefDisplaySelW[25][4,7]=0
			FitCoefDisplayW[26][2]="custom1";FitCoefDisplayW[26][4]="<Formula>";FitCoefDisplaySelW[26][4]=2;FitCoefDisplaySelW[26][5,7]=0
			FitCoefDisplayW[27][2]="custom2";FitCoefDisplayW[27][4]="<Formula>";FitCoefDisplaySelW[27][4]=2;FitCoefDisplaySelW[27][5,7]=0
			FitCoefDisplaySelW[28,255][0,15]=0//Clear all unused cells
			FitCoefDisplaySelW[3][0]=48 //Select p1_pos (most used one)
			Break
	EndSwitch
	
	SLP_IXPS_MakeGuessCurve(VolName,FitName)
	
End

Function SLP_IXPS_DisplaySelectedData(VolName)
	String VolName
	Variable DataRow=SLP_IXPS_FindDataRow(VolName)
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	Wave /T SLP_IXPS_XPSParamW=root:Package_SLP:ImgXPS:SLP_IXPS_XPSParamW
	String ImgVolW_FName=SLP_IXPS_ScanListW[DataRow][1]+SLP_IXPS_ScanListW[DataRow][0]
	String ImgIntgW_FName=ImgVolW_FName+"_Intg"
	String BxW_FName=ImgVolW_FName+"_BX"
	String ByW_FName=ImgVolW_FName+"_BY"
	String UnprocMap1_FName=ImgVolW_FName+"_Umap1"
	String UnprocMap1H_FName=ImgVolW_FName+"_Umap1H"
	String Corr1_FName=ImgVolW_FName+"_Corr1"
	String Corr1H_FName=ImgVolW_FName+"_Corr1H"
	String CMap1_FName=ImgVolW_FName+"_CMap1"
	String CMap1H_FName=ImgVolW_FName+"_CMap1H"
	String  zProflW_FName=ImgVolW_FName+"_zProfl"
	String  zPMskW_FName=ImgVolW_FName+"_zPMsk"
	String zProflFitW_FName=SLP_IXPS_ScanListW[DataRow][1]+"Fit_"+SLP_IXPS_ScanListW[DataRow][0]+"_zProfl"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String MapVolW_FName=ImgVolW_FName+"_MapVol"
	String ZProfBEW_FName=ImgVolW_FName+"_zProflBE"
	String ZProfMskBEW_FName=ImgVolW_FName+"_zPMskBE" 
	String zProflFitBEW_FName=zProflFitW_FName+"BE"
	
	String TraceName

	NVAR FrameNum=root:Package_SLP:ImgXPS:FrameNum
	SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow
	NVAR CorrAdj_x1=root:Package_SLP:ImgXPS:CorrAdj_x1
	NVAR CorrAdj_y1=root:Package_SLP:ImgXPS:CorrAdj_y1
	NVAR CorrAdj_mag1=root:Package_SLP:ImgXPS:CorrAdj_mag1
	NVAR CorrAdj_Size1=root:Package_SLP:ImgXPS:CorrAdj_Size1
	NVAR CorrAdj_Rot1=root:Package_SLP:ImgXPS:CorrAdj_Rot1
	NVAR CorrAdj_x2=root:Package_SLP:ImgXPS:CorrAdj_x2
	NVAR CorrAdj_y2=root:Package_SLP:ImgXPS:CorrAdj_y2
	NVAR CorrAdj_mag2=root:Package_SLP:ImgXPS:CorrAdj_mag2
	NVAR CorrAdj_Size2=root:Package_SLP:ImgXPS:CorrAdj_Size2
	NVAR CorrAdj_Rot2=root:Package_SLP:ImgXPS:CorrAdj_Rot2
	NVAR LLim=root:Package_SLP:ImgXPS:LLim
	NVAR ULim=root:Package_SLP:ImgXPS:ULim
	NVAR Iso_a1=root:Package_SLP:ImgXPS:Iso_a1
	NVAR Iso_b1=root:Package_SLP:ImgXPS:Iso_b1
	NVAR Iso_a2=root:Package_SLP:ImgXPS:Iso_a2
	NVAR Iso_b2=root:Package_SLP:ImgXPS:Iso_b2
	NVAR Iso_C=root:Package_SLP:ImgXPS:Iso_C
	
	FrameNum=str2num(SLP_IXPS_ScanListW[DataRow][5])
	
	LLim=str2num(SLP_IXPS_ScanListW[DataRow][9])
	ULim=str2num(SLP_IXPS_ScanListW[DataRow][10])
	
	SelSubWindow=SLP_IXPS_ScanListW[DataRow][47]
	CorrAdj_x1=str2num(SLP_IXPS_ScanListW[DataRow][35])
	CorrAdj_y1=str2num(SLP_IXPS_ScanListW[DataRow][36])
	CorrAdj_mag1=str2num(SLP_IXPS_ScanListW[DataRow][37])
	CorrAdj_Size1=str2num(SLP_IXPS_ScanListW[DataRow][38])
	CorrAdj_Rot1=str2num(SLP_IXPS_ScanListW[DataRow][39])
	CorrAdj_x2=str2num(SLP_IXPS_ScanListW[DataRow][40])
	CorrAdj_y2=str2num(SLP_IXPS_ScanListW[DataRow][41])
	CorrAdj_mag2=str2num(SLP_IXPS_ScanListW[DataRow][42])
	CorrAdj_Size2=str2num(SLP_IXPS_ScanListW[DataRow][43])
	CorrAdj_Rot2=str2num(SLP_IXPS_ScanListW[DataRow][44])
	
	If(!StringMatch("y",SLP_IXPS_ScanListW[DataRow][45])) //Raw data has not been removed
		Wave ImgVolW=$ImgVolW_FName
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ImgW",ImgVolW_FName,1)
		String VolImgName=stringFromList(0,imageNameList("SLP_ImgXPS_Panel_01#IX_ImgW",";"))
		modifyImage /W=SLP_ImgXPS_Panel_01#IX_ImgW $VolImgName,ctab={str2num(SLP_IXPS_ScanListW[DataRow][6]),str2num(SLP_IXPS_ScanListW[DataRow][7]),,0}
		modifyImage /W=SLP_ImgXPS_Panel_01#IX_ImgW $VolImgName,plane=(str2num(SLP_IXPS_ScanListW[DataRow][5])
		//modifyImage /W=SLP_ImgXPS_Panel_01#IX_ImgW $VolImgName,
		
		//Set slider limit
		Slider Slider_ImgVolFrame limits={0,dimsize(ImgVolW,2)-1,1}
		SLP_IXPS_TgglControls("Enable")
	Else //Raw data removed
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ImgW",ImgIntgW_FName,1)
		SLP_IXPS_TgglControls("Disable")
	EndIf
	
	SLP_Util_RemoveAllTraces("SLP_ImgXPS_Panel_01#IX_ImgW")
	If (Exists(BxW_FName))
		appendtograph /W=SLP_ImgXPS_Panel_01#IX_ImgW $ByW_FName vs $BxW_FName
	EndIf
	
	//zProfile plot
	//If KE (STV) is used for x-scale (default)
	If (!str2num(SLP_IXPS_ScanListW[DataRow][44])) 
		If (Exists(zProflW_FName))
			//Put new traces in the Fitting window
			SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_FittingWin",zProflW_FName,0)
			Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin mode=3,marker=5,rgb=(1,34817,52428)
			AppendToGraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin /R=right $zPMskW_FName
			TraceName=StringFromList(1,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
			Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin lStyle($TraceName)=2,rgb($TraceName)=(0,0,0)
		Endif
		If (Exists(zProflFitW_FName))
			AppendToGraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin $zProflFitW_FName
			TraceName=StringFromList(2,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
			Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin lSize($TraceName)=2,rgb($TraceName)=(65535,0,0)
		Endif
		Setaxis /W=SLP_ImgXPS_Panel_01#IX_FittingWin /A bottom
		Label /W=SLP_ImgXPS_Panel_01#IX_FittingWin bottom "Start voltage (eV)"
	Else //BE for x-scale
		If (Exists(ZProfBEW_FName))
			//Put new traces in the Fitting window
			SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_FittingWin",ZProfBEW_FName,0)
			Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin mode=3,marker=5,rgb=(1,34817,52428)
			AppendToGraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin /R=right $ZProfMskBEW_FName
			TraceName=StringFromList(1,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
			Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin lStyle($TraceName)=2,rgb($TraceName)=(0,0,0)
		Endif
		If (Exists(zProflFitBEW_FName))
			AppendToGraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin $zProflFitBEW_FName
			TraceName=StringFromList(2,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
			Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin lSize($TraceName)=2,rgb($TraceName)=(65535,0,0)
		Endif
		Setaxis /W=SLP_ImgXPS_Panel_01#IX_FittingWin /A/R bottom
		Label /W=SLP_ImgXPS_Panel_01#IX_FittingWin bottom "Binding energy (eV)"
	EndIf
	Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin minor=1,tick=2
	
	//Clear existing images & reset titles
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt1","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt2","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt3","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt4","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt5","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt6","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)	
		CheckBox CheckBox_SelImg1 ,win=SLP_ImgXPS_Panel_01, title="Param1"
		CheckBox CheckBox_SelImg2 ,win=SLP_ImgXPS_Panel_01, title="Param2"
		CheckBox CheckBox_SelImg3 ,win=SLP_ImgXPS_Panel_01, title="Param3"
		CheckBox CheckBox_SelImg4 ,win=SLP_ImgXPS_Panel_01, title="Param4"
		CheckBox CheckBox_SelImg5 ,win=SLP_ImgXPS_Panel_01, title="Param5"
		CheckBox CheckBox_SelImg6 ,win=SLP_ImgXPS_Panel_01, title="Param6"
		SLP_IXPS_ScanListW[DataRow][22,27]=""
		
	If (Exists(MapVolW_FName))
		Wave MapVolW=$MapVolW_FName
		Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
		Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
		//IX_RawExt1
		variable i=0
		variable j=1
		variable k=0
		variable m=22 //Column 22 of ScanListW (to store displayed parameter map 1-6 in col. 22-27)
		string DisplayName=""
		string ChkBoxName=""
		string ImgName=""

		For (i=0;j<=6&&i<dimsize(FitCoefDisplaySelW,0);i+=1)
			
			If (FitCoefDisplaySelW[i][8]==48)
				DisplayName="SLP_ImgXPS_Panel_01#IX_RawExt"+num2str(j)
				ChkBoxName="CheckBox_SelImg"+num2str(j)
				SLP_Util_AddnRmTraces(DisplayName,MapVolW_FName,1)
				ImgName=stringFromList(0,ImageNameList(DisplayName,";"),";")
				ModifyImage /W=$DisplayName $ImgName,plane=k,ctab={*,*,rainbow,0}
				
				If (!stringmatch(FitCoefDisplayW[i][10],"")&&!stringmatch(FitCoefDisplayW[i][11],""))
					ModifyImage /W=$DisplayName $ImgName ,ctab={str2num(FitCoefDisplayW[i][10]),str2num(FitCoefDisplayW[i][11]),rainbow,0}
				EndIf
				
				CheckBox $ChkBoxName ,win=SLP_ImgXPS_Panel_01, title=FitCoefDisplayW[i][2]
				SLP_IXPS_ScanListW[DataRow][m+j-1] =FitCoefDisplayW[i][2]//Update selected param. to ScanListW
				
				j+=1
			Endif
			
			If (FitCoefDisplaySelW[i][0]==48)
				k+=1
			Endif
			
		EndFor
	
	EndIf
	
	String ImageName=""
	
	If (Exists(Corr1_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Correction1",Corr1_FName,1)
		ImageName=StringFromList(0,ImageNameList("SLP_ImgXPS_Panel_01#IX_Correction1",";"))
		ModifyImage /W=SLP_ImgXPS_Panel_01#IX_Correction1 $ImageName ctab={str2num(SLP_IXPS_ScanListW[DataRow][18]),str2num(SLP_IXPS_ScanListW[DataRow][19]),Rainbow,0}//[TODO]
	Else
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Correction1","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
	Endif
	
	If (Exists(CMap1_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ResultMap1",Cmap1_FName,1)
		ImageName=StringFromList(0,ImageNameList("SLP_ImgXPS_Panel_01#IX_ResultMap1",";"))
		ModifyImage /W=SLP_ImgXPS_Panel_01#IX_ResultMap1 $ImageName ctab={str2num(SLP_IXPS_ScanListW[DataRow][20]),str2num(SLP_IXPS_ScanListW[DataRow][21]),Rainbow,0}//[TODO]
	Else
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ResultMap1","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
	Endif
	
	//Selected subWindow (img window)
	CheckBox CheckBox_SelImg1,value=0
	CheckBox CheckBox_SelImg2,value=0
	CheckBox CheckBox_SelImg3,value=0
	CheckBox CheckBox_SelImg4,value=0
	CheckBox CheckBox_SelImg5,value=0
	CheckBox CheckBox_SelImg6,value=0
	CheckBox CheckBox_SelImgCorr,value=0
	CheckBox CheckBox_SelImgCMap,value=0
	
	Variable ColorMin,ColorMax
	String HistogramW_FName=""
	
	SLP_IXPS_SelectImage(SelSubWindow)
	
	
	If (Exists(HistogramW_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Histogram",HistogramW_FName,0)
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mirror=1,minor=1,tick(left)=3,tick(bottom)=2
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram  margin(bottom)=20,margin(left)=3,margin(top)=3,margin(right)=3
		ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mode=5,hbFill=2,rgb=(1,34817,52428)
	EndIf
	
	If (Exists(FitCoefDisplayW_FName))
		ListBox List_FitParam,ListWave=$FitCoefDisplayW_FName,SelWave=$FitCoefDisplaySelW_FName
	Else
		ListBox List_FitParam,ListWave=root:Package_SLP:ImgXPS:SLP_IXPS_FitParamW,SelWave=root:Package_SLP:ImgXPS:SLP_IXPS_FitParamSelW
	EndIF
	//Popup menu update
	PopupMenu Popup_FitType win=SLP_ImgXPS_Panel_01,mode=str2num(SLP_IXPS_ScanListW[DataRow][48])
	
	//Isochromaticity function
	Iso_a1=str2num(SLP_IXPS_ScanListW[DataRow][49])
	Iso_b1=str2num(SLP_IXPS_ScanListW[DataRow][50])
	Iso_a2=str2num(SLP_IXPS_ScanListW[DataRow][51])
	Iso_b2=str2num(SLP_IXPS_ScanListW[DataRow][52])
	Iso_C=str2num(SLP_IXPS_ScanListW[DataRow][53])
	
	//z-profile cursor
	controlinfo /W=SLP_ImgXPS_Panel_01 Check_zProfile
	If (stringmatch(SLP_IXPS_ScanListW[DataRow][45],"")&&V_Value==1) //If the raw data exists and the z-profile is checked
		If (stringmatch(SLP_IXPS_ScanListW[DataRow][42],""))
			variable default_CursorX=round(DimSize($ImgVolW_FName,0)/2)
			variable default_CursorY=round(DimSize($ImgVolW_FName,1)/2)
			Cursor /I/W=SLP_ImgXPS_Panel_01#IX_IMGW/C=(65525,0,0) A $VolImgName default_CursorX,default_CursorY
			SLP_IXPS_ScanListW[DataRow][42]=num2str(default_CursorX)
			SLP_IXPS_ScanListW[DataRow][43]=num2str(default_CursorY)
		Else
			Cursor /I/W=SLP_ImgXPS_Panel_01#IX_IMGW/C=(65525,0,0) A $VolImgName str2num(SLP_IXPS_ScanListW[DataRow][42]),str2num(SLP_IXPS_ScanListW[DataRow][43])
		Endif
	Endif
	
	//Update xps param table
	SLP_IXPS_XPSParamW[0][1]=SLP_IXPS_ScanListW[DataRow][11]
	SLP_IXPS_XPSParamW[1][1]=SLP_IXPS_ScanListW[DataRow][12]
	SLP_IXPS_XPSParamW[2][1]=SLP_IXPS_ScanListW[DataRow][13]
	SLP_IXPS_XPSParamW[3][1]=SLP_IXPS_ScanListW[DataRow][14]
	SLP_IXPS_XPSParamW[4][1]=SLP_IXPS_ScanListW[DataRow][15]
	
	//Update disp. BE selection
	CheckBox CheckBox_BE win=SLP_ImgXPS_Panel_01,value=str2num(SLP_IXPS_ScanListW[DataRow][44])
	
	//Update Displ. Peak Assignment selection
	CheckBox CheckBox_PeakAssign1 win=SLP_ImgXPS_Panel_01,value=str2num(SLP_IXPS_ScanListW[DataRow][40])
	SLP_IXPS_DispPeakAssign(0)
End

Function ButtonProc_IXPS_ExportZProf(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			wave /T SLP_IXPS_XPSParamW=root:Package_SLP:ImgXPS:SLP_IXPS_XPSParamW
			string ImgVolW_FName=SLP_IXPS_ScanListW[SelRow][1]+SLP_IXPS_ScanListW[SelRow][0]
			string VolName=SLP_IXPS_ScanListW[SelRow][0]
			
			String zProflW_FName=ImgVolW_FName+"_zProfl"
			String zPMskW_FName=ImgVolW_FName+"_zPMsk"
			String zProflFitW_FName=SLP_IXPS_ScanListW[SelRow][1]+"Fit_"+SLP_IXPS_ScanListW[SelRow][0]+"_zProfl"
			
			String ZProfBEW_FName=ImgVolW_FName+"_zProflBE"
			String ZProfMskBEW_FName=ImgVolW_FName+"_zPMskBE" 
			String zProflFitBEW_FName=zProflFitW_FName+"BE"
			
			String zProflW_Name=VolName+"_zProfl"
			String zPMskW_Name=VolName+"_zPMsk"
			String zProflFitW_Name="Fit_"+VolName+"_zProfl"
			
			String ZProfBEW_Name=VolName+"_zProflBE"
			String ZProfMskBEW_Name=VolName+"_zPMskBE" 
			String zProflFitBEW_Name="Fit_"+VolName+"_zProflBE"
			
			String TraceName=""
			//If KE (STV) is used for x-scale (default)
			If (!str2num(SLP_IXPS_ScanListW[SelRow][44])) 
				Duplicate /O $zProflW_FName,$zProflW_Name /WAVE=zProflW
				Duplicate /O $zPMskW_FName,$zPMskW_Name /WAVE=zPMskW
				Duplicate /O $zProflFitW_FName,$zProflFitW_Name /WAVE=zProflFitW
				Display zProflW
				Appendtograph zProflFitW
				appendtograph /R=right zPMskW
				Setaxis /A bottom
				Label bottom "Start voltage (eV)"
			Else
				Duplicate /O $zProfBEW_FName,$zProfBEW_Name /WAVE=zProfBEW
				Duplicate /O $ZProfMskBEW_FName,$ZProfMskBEW_Name /WAVE=ZProfMskBEW
				Duplicate /O $zProflFitBEW_FName,$zProflFitBEW_Name /WAVE=zProflFitBEW
				Display zProfBEW
				appendtograph  zProflFitBEW
				Appendtograph /R=right ZProfMskBEW
				Setaxis /A/R bottom
				Label bottom "Binding energy (eV)"
			Endif
			TraceName=StringFromList(0,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
			Modifygraph mode($TraceName)=3,marker($TraceName)=5,rgb($TraceName)=(1,34817,52428)
			TraceName=StringFromList(1,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
			Modifygraph lStyle($TraceName)=2,rgb($TraceName)=(0,0,0)
			TraceName=StringFromList(2,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
			
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function /S SLP_IXPS_FindLayer(PlotName)
	String PlotName
	
	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName


	Variable PlotNum
	StrSwitch(PlotName)
		Case "IX_RawEXT1":
			PlotNum=1
			Break
		Case "IX_RawEXT2":
			PlotNum=2
			Break
		Case "IX_RawEXT3":
			PlotNum=3
			Break
		Case "IX_RawEXT4":
			PlotNum=4
			Break
		Case "IX_RawEXT5":
			PlotNum=5
			Break
		Case "IX_RawEXT6":
			PlotNum=6
			Break
	EndSwitch
	
	Variable i=0 //Index
	Variable j=0 //Plot number
	Variable k=0 //Layer (plane) number 
	
	For (i=0;i<dimsize(FitCoefDisplaySelW,0);i+=1)
		If (FitCoefDisplaySelW[i][8]==48)
			j+=1
		Endif
		If (j==PlotNum)
			Break
		Endif
		If (FitCoefDisplaySelW[i][0]==48)
			k+=1
		EndIf
	EndFor
	
	Return num2str(k)+";"+num2str(i)
End

Function CheckProc_IXPS_SelImage_old(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			//print cba.checked
			//print cba.ctrlName
			
			NVAR ColorMin=root:Package_SLP:ImgXPS:ColorMin
			NVAR ColorMax=root:Package_SLP:ImgXPS:ColorMax
			SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			//Waves and wave refs.
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			String UMap1W_FName=ImgVolW_FName+"_UMap1"
			String Corr1W_FName=ImgVolW_FName+"_Corr1"
			String CMap1W_FName=ImgVolW_FName+"_CMap1"
			If (Exists(UMap1W_FName))
				Wave UMap1W=$UMap1W_FName
			Endif
			
			If (Exists(Corr1W_FName))
				Wave Corr1W=$Corr1W_FName
			Endif
			
			If (Exists(CMap1W_FName))
				Wave CMap1W=$CMap1W_FName
			EndIf
			
			String HistogramW_FName
			
			//Trick from man page of CheckBox
			Variable  gRadioVal
			strswitch (cba.ctrlName) //Name of the image (note the use of WMCheckBoxAction STRUCT)
				case "CheckBox_SelImg1":
					gRadioVal= 1
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt1"
					
					//WaveStats /Q UMap1W
					//HistogramW_FName=ImgVolW_FName+"_UMap1H"
					break
				case "CheckBox_SelImg2":
					gRadioVal= 2
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt2"
					
					break
				case "CheckBox_SelImg3":
					gRadioVal= 3
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt3"
					
					break
				case "CheckBox_SelImg4":
					gRadioVal= 4
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt4"
					
					break
				case "CheckBox_SelImg5":
					gRadioVal= 5
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt5"
					
					break
				case "CheckBox_SelImg6":
					gRadioVal= 6
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt6"
					
					break
				case "CheckBox_SelImgCorr":
					gRadioVal= 7
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_Correction1"
					
					break
				case "CheckBox_SelImgCMap":
					gRadioVal= 8
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_ResultMap1"
					
					break
			endswitch
			
			SLP_IXPS_ScanListW[SelRow][47]=SelSubWindow
			
			CheckBox CheckBox_SelImg1,value= (gRadioVal==1)
			CheckBox CheckBox_SelImg2,value= (gRadioVal==2)
			CheckBox CheckBox_SelImg3,value= (gRadioVal==3)
			CheckBox CheckBox_SelImg4,value= (gRadioVal==4)
			CheckBox CheckBox_SelImg5,value= (gRadioVal==5)
			CheckBox CheckBox_SelImg6,value= (gRadioVal==6)
			CheckBox CheckBox_SelImgCorr,value= (gRadioVal==7)
			CheckBox CheckBox_SelImgCMap,value= (gRadioVal==8)
			
			If (Exists(HistogramW_FName))
				SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Histogram",HistogramW_FName,0)
				Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mirror=1,minor=1,tick(left)=0,tick(bottom)=2
				Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram  margin(bottom)=20,margin(left)=3,margin(top)=3,margin(right)=3
				ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mode=5,hbFill=2,rgb=(1,34817,52428)
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_CreateUMap(VolName,Bin)
	String VolName
	Variable Bin
	
	//Find the current selected row
  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
	String UMap1W_FName=ImgVolW_FName+"_UMap1"
	String Corr1W_FName=ImgVolW_FName+"_Corr1"
	String CMap1W_FName=ImgVolW_FName+"_CMap1"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String MapVolW_FName=ImgVolW_FName+"_MapVol"
	
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	
	Variable i=0
	Variable j=0
	Variable k=0
	
	If (Exists(MapVolW_FName))
		For (i=0;i<dimsize(FitCoefDisplaySelW,0)&&j<1;i+=1)
			If (FitCoefDisplaySelW[i][9]==48)
				Duplicate /O /R=[][][k] $MapVolW_FName,$UMap1W_FName /WAVE=UMap1W
				Redimension /N=(dimsize(UMap1W,0),dimsize(UMap1W,1)) UMap1W //Convert 3D to 2D wave
				j+=1
			Endif
			If (FitCoefDisplaySelW[i][0]==48)
				k+=1
			EndIf		
		EndFor
	EndIf
	
	//Set x-y scale for the newly created map
	variable FOV=str2num(SLP_IXPS_ScanListW[SelRow][32])
	variable xMin=str2num(SLP_IXPS_ScanListW[SelRow][28])
	variable xMax=str2num(SLP_IXPS_ScanListW[SelRow][29])
	variable yMin=str2num(SLP_IXPS_ScanListW[SelRow][30])
	variable yMax=str2num(SLP_IXPS_ScanListW[SelRow][31])
	SLP_IXPS_SetXYScale(UMap1W_FName,FOV,xMin,xMax,yMin,yMax,Bin)
	
	//If (!Exists(Corr1W_FName))
		Duplicate /O $UMap1W_FName,$Corr1W_FName /WAVE=Corr1W
		Corr1W=0
	//Endif
	//If (!Exists(CMap1W_FName))
		Duplicate /O $UMap1W_FName,$CMap1W_FName
	//Endif
End

Function /S SLP_Util_ImgAutoScale(ImgW_FName,plane)
	String ImgW_FName
	Variable plane
	
	Wave ImgW=$ImgW_FName
	
	If (dimsize(ImgW,2)>1)
		ImageHistogram /P=(plane) ImgW
	Else
		ImageHistogram ImgW
	EndIf
	
	Wave W_ImageHist
	CurveFit /N/Q/NTHR=0 gauss  W_ImageHist /D 
	Wave W_coef
	
	Variable DLLim=W_coef[2]-0.5*W_coef[3]
	Variable DULim=W_coef[2]+0.5*W_coef[3]
	
	killwaves W_ImageHist
	killwaves W_coef
	
	Return num2str(DLLim)+";"+num2str(DULim)

End

Function SLP_IXPS_CreateParamMap(VolName,bin,FittingName,LLim,ULim)
	String VolName
	Variable bin
	String FittingName
	Variable LLim,ULim
	
	NVAR ExtProgress=root:Package_SLP:ImgXPS:ExtProgress
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	
	//String Current_Folder=GetDataFolder(1)
	//SetDataFolder $DataFolder_FName

	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ScrnMskW_FName=ImgVolW_FName+"_Scrn"
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String UnprocMap1_FName=ImgVolW_FName+"_Umap1"
	String MapVolW_FName=ImgVolW_FName+"_MapVol"
	String UnprocMap1H_FName=ImgVolW_FName+"_Umap1H"//Histogram
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS" 
	
	Wave ImgVolW=$ImgVolW_FName
	Wave ScrnMskW=$ScrnMskW_FName
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	
	variable N_Params=0
	string ExtCmd=""
	variable SVPoint=21
	
	variable i=0
	variable j=0
	variable k=0
	
	//Create a volume wave to contain the extraction result
	strswitch(FittingName)	
		case "Secondary yield cut-off":
			N_Params=4
			break
		case "LEEM cut-off":
			Prompt SVPoint,"No. of points for smoothing (odd interger):"
			DoPrompt "Smoothing option",SVPoint
			N_Params=4
			break
		case "1GLA":
			N_Params=10
			break
		case "2GLAs":
			N_Params=16
			//ExtCmd="SLP_IXPS_Extract2GLAs(VolName,LLim,ULim)"
			break
		case "3GLAs":
			N_Params=22
			break
		case "4GLAs":
			N_Params=28
			break
	EndSwitch
	
	Make /O/N=(Ceil(dimsize(ImgVolW,0)/Bin),Ceil(dimsize(ImgVolW,1)/Bin),N_Params) $MapVolW_FName /Wave=MapVolW
	MapVolW=NaN //Set BG to NAN
	Variable FOV=str2num(SLP_IXPS_ScanListW[DataRow][32])
	Variable xMin=str2num(SLP_IXPS_ScanListW[DataRow][28])
	Variable xMax=str2num(SLP_IXPS_ScanListW[DataRow][29])
	Variable yMin=str2num(SLP_IXPS_ScanListW[DataRow][30])
	Variable yMax=str2num(SLP_IXPS_ScanListW[DataRow][31]) 
	SLP_IXPS_SetXYScale(MapVolW_FName,FOV,xMin,xMax,yMin,yMax,Bin) //[FUNC]SLP_IXPS_SetXYScale
	
	ExtProgress=0
	variable N_points=sum(ScrnMskW)/Bin^2
	
	FindValue /V=48 FitCoefDisplaySelW
	Variable MapParamSel1=V_Value
	
	SLP_IXPS_FitConstraints(VolName) //[FUNC]SLP_IXPS_FitConstraints
	
	For (i=0;i<dimsize(ImgVolW,0);i+=Bin)
		For (j=0;j<dimsize(ImgVolW,1);j+=Bin)
			If (ScrnMskW[i][j])
				SLP_IXPS_ExtractZProfile(VolName,i,j,Bin)
				
				Strswitch(FittingName)	// string switch
					case "Secondary yield cut-off":
						SLP_IXPS_ExtCutoff(VolName) //[FUNC]SLP_IXPS_ExtCutoff
						break
					case "LEEM cut-off":
						SLP_IXPS_LEEMCutOff(VolName,SVPoint) //[FUNC]SLP_IXPS_LEEMCutOff
						break
					case "1GLA":
						SLP_IXPS_Extract1GLA(VolName,LLim,ULim) //[FUNC]SLP_IXPS_Extract1GLA
						break
					case "2GLAs":
						SLP_IXPS_Extract2GLAs(VolName,LLim,ULim) //[FUNC]SLP_IXPS_Extract2GLAs
						break
					case "3GLAs":
						SLP_IXPS_Extract3GLAs(VolName,LLim,ULim) //[FUNC]SLP_IXPS_Extract3GLAs
						break
					case "4GLAs":
						SLP_IXPS_Extract4GLAs(VolName,LLim,ULim) //[FUNC]SLP_IXPS_Extract4GLAs
						break
				EndSwitch
				
				MapVolW[i/Bin][j/Bin][]=str2num(FitCoefDisplayW[r][3])
					
				k+=1
				ExtProgress=k/N_points*100
			EndIf
		EndFor
	EndFor	
	
	//SetDataFolder $Current_Folder
End

Function SLP_IXPS_MakeGuessCurve(VolName,FitName)
	string VolName,FitName
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String FitZProfW_FName=DataFolder_FName+"fit_"+VolName+"_zProfl"
	
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitZProfW=$FitZProfW_FName
	variable Line_Offset, Line_Slope
	variable p1_int,p1_pos,p1_fwhm,p1_mix,p1_as
	variable p2_int,p2_pos,p2_fwhm,p2_mix,p2_as
	variable p3_int,p3_pos,p3_fwhm,p3_mix,p3_as
	variable p4_int,p4_pos,p4_fwhm,p4_mix,p4_as
	
	strswitch(FitName)	// string switch
		Case "Secondary yield cut-off":		// execute if case matches expression
			FitZProfW=1*Erf((x-0)/str2num(FitCoefDisplayW[3][4]))
			Break
		Case "1GLA":			
			 Line_Offset=str2num(FitCoefDisplayW[0][4])
			 Line_Slope=str2num(FitCoefDisplayW[1][4])
			 P1_int=str2num(FitCoefDisplayW[2][4])
			 P1_pos=str2num(FitCoefDisplayW[3][4])
			 p1_fwhm=str2num(FitCoefDisplayW[4][4])
			 p1_mix=str2num(FitCoefDisplayW[5][4])
			 p1_as=str2num(FitCoefDisplayW[6][4])
			FitZProfW=Line_Offset+x*Line_Slope+SLP_InvGLA_Func(p1_int,p1_pos,p1_fwhm,p1_mix,p1_as,x)
			Break	
		Case "2GLAs":			
			 Line_Offset=str2num(FitCoefDisplayW[0][4])
			 Line_Slope=str2num(FitCoefDisplayW[1][4])
			 P1_int=str2num(FitCoefDisplayW[2][4])
			 P1_pos=str2num(FitCoefDisplayW[3][4])
			 p1_fwhm=str2num(FitCoefDisplayW[4][4])
			 p1_mix=str2num(FitCoefDisplayW[5][4])
			 p1_as=str2num(FitCoefDisplayW[6][4])
			 p2_int=str2num(FitCoefDisplayW[7][4])
			 p2_pos=str2num(FitCoefDisplayW[8][4])
			 p2_fwhm=str2num(FitCoefDisplayW[9][4])
			 p2_mix=str2num(FitCoefDisplayW[10][4])
			 p2_as=str2num(FitCoefDisplayW[11][4])
			FitZProfW=Line_Offset+x*Line_Slope+SLP_InvGLA_Func(p1_int,p1_pos,p1_fwhm,p1_mix,p1_as,x)+SLP_InvGLA_Func(p2_int,p2_pos,p2_fwhm,p2_mix,p2_as,x)
			Break
		Case "3GLAs":			
			 Line_Offset=str2num(FitCoefDisplayW[0][4])
			 Line_Slope=str2num(FitCoefDisplayW[1][4])
			 P1_int=str2num(FitCoefDisplayW[2][4])
			 P1_pos=str2num(FitCoefDisplayW[3][4])
			 p1_fwhm=str2num(FitCoefDisplayW[4][4])
			 p1_mix=str2num(FitCoefDisplayW[5][4])
			 p1_as=str2num(FitCoefDisplayW[6][4])
			 p2_int=str2num(FitCoefDisplayW[7][4])
			 p2_pos=str2num(FitCoefDisplayW[8][4])
			 p2_fwhm=str2num(FitCoefDisplayW[9][4])
			 p2_mix=str2num(FitCoefDisplayW[10][4])
			 p2_as=str2num(FitCoefDisplayW[11][4])
			 p3_int=str2num(FitCoefDisplayW[12][4])
			 p3_pos=str2num(FitCoefDisplayW[13][4])
			 p3_fwhm=str2num(FitCoefDisplayW[14][4])
			 p3_mix=str2num(FitCoefDisplayW[15][4])
			 p3_as=str2num(FitCoefDisplayW[16][4])
			FitZProfW=Line_Offset+x*Line_Slope+SLP_InvGLA_Func(p1_int,p1_pos,p1_fwhm,p1_mix,p1_as,x)+SLP_InvGLA_Func(p2_int,p2_pos,p2_fwhm,p2_mix,p2_as,x)+SLP_InvGLA_Func(p3_int,p3_pos,p3_fwhm,p3_mix,p3_as,x)
			Break
		Case "4GLAs":			
			 Line_Offset=str2num(FitCoefDisplayW[0][4])
			 Line_Slope=str2num(FitCoefDisplayW[1][4])
			 P1_int=str2num(FitCoefDisplayW[2][4])
			 P1_pos=str2num(FitCoefDisplayW[3][4])
			 p1_fwhm=str2num(FitCoefDisplayW[4][4])
			 p1_mix=str2num(FitCoefDisplayW[5][4])
			 p1_as=str2num(FitCoefDisplayW[6][4])
			 p2_int=str2num(FitCoefDisplayW[7][4])
			 p2_pos=str2num(FitCoefDisplayW[8][4])
			 p2_fwhm=str2num(FitCoefDisplayW[9][4])
			 p2_mix=str2num(FitCoefDisplayW[10][4])
			 p2_as=str2num(FitCoefDisplayW[11][4])
			 p3_int=str2num(FitCoefDisplayW[12][4])
			 p3_pos=str2num(FitCoefDisplayW[13][4])
			 p3_fwhm=str2num(FitCoefDisplayW[14][4])
			 p3_mix=str2num(FitCoefDisplayW[15][4])
			 p3_as=str2num(FitCoefDisplayW[16][4])
			 p4_int=str2num(FitCoefDisplayW[17][4])
			 p4_pos=str2num(FitCoefDisplayW[18][4])
			 p4_fwhm=str2num(FitCoefDisplayW[19][4])
			 p4_mix=str2num(FitCoefDisplayW[20][4])
			 p4_as=str2num(FitCoefDisplayW[21][4])
			FitZProfW=Line_Offset+x*Line_Slope+SLP_InvGLA_Func(p1_int,p1_pos,p1_fwhm,p1_mix,p1_as,x)+SLP_InvGLA_Func(p2_int,p2_pos,p2_fwhm,p2_mix,p2_as,x)+SLP_InvGLA_Func(p3_int,p3_pos,p3_fwhm,p3_mix,p3_as,x)+SLP_InvGLA_Func(p4_int,p4_pos,p4_fwhm,p4_mix,p4_as,x)
			Break
	
	EndSwitch

End

Function SLP_IXPS_ExtCutoff(VolName)
	String VolName	
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	
	String Current_Folder=GetDataFolder(1)
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String FitCoefConstraintsW_FName=ImgVolW_FName+"_FCoefC"
	String FitZProfW_FName=DataFolder_FName+"fit_"+VolName+"_zProfl"

	Wave ImgVolW=$ImgVolW_FName
	Wave ZProfW=$ZProfW_FName
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	Wave FitZProfW=$FitZProfW_FName
	FitZProfW=NaN
	
	Duplicate /O ZProfW,$ZProfMskW_FName /WAVE=ZProfMskW
	
	//Create Coef. wave
	Make /O/D/N=4 $FitCoefW_FName /WAVE=FitCoefW
	
	//Use algorithm to guess the starting values
	wavestats /Q ZProfW
	//Guess the coefs.
	
	Variable pk_height=V_max
	Variable pk_offset=V_min
	Variable cutoff_width=str2num(FitCoefDisplayW[3][4])
	Variable cutoff_pos=V_maxloc-cutoff_width/2
	
	//AUTOMATIC mask creation
	//For cut-off fitting - create a step function with 1 from stv_st to peak position of the secondary yield
	ZProfMskW=0;ZProfMskW[0,round(x2pnt(ZProfW,V_maxloc))]=1
	
	FitCoefW[0]={pk_height,pk_offset,cutoff_pos,cutoff_width}
	
	ControlInfo /W=SLP_ImgXPS_Panel_01 CheckBox_FastExt
	
	If (V_Value==0)
		FuncFit /W=2/Q/NTHR=0/TBOX=768 SLP_ERF FitCoefW  ZProfW /M=ZProfMskW /D=$FitZProfW_FName /C=$FitCoefConstraintsW_FName
	ElseIf (V_Value==1) //Fast mode
		FuncFit /N=1/W=2/Q/NTHR=0/TBOX=768 SLP_ERF FitCoefW  ZProfW /M=ZProfMskW /D=$FitZProfW_FName /C=$FitCoefConstraintsW_FName
		DoUpdate
	Endif
	
	//Put the fit result in col. 3 of FitCoefDisplayW
	FitCoefDisplayW[0,3][3]=num2str(FitCoefW[p])
	
	SetDataFolder $Current_Folder
	
	//return FitCoefW[2] //Return x0 (cut-off position)
End

Function ButtonProc_IXPS_ScrnMskDraw(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			//Clear the screen mask (red x-y wave from Particle Analysis)
			String TraceName=stringfromlist(0,TraceNameList("SLP_ImgXPS_Panel_01#IX_ImgW",";",3),";")
			If (itemsinlist(TraceNameList("SLP_ImgXPS_Panel_01#IX_ImgW",";",3))!=0)
				RemoveFromGraph /W=SLP_ImgXPS_Panel_01#IX_ImgW $TraceName
			EndIf
			
			SetActiveSubwindow SLP_ImgXPS_Panel_01#IX_ImgW
			DrawAction delete
			SetDrawEnv fillpat= 0,linefgc=(65535,0,0)
			showtools /A oval
			SetDrawLayer ProgFront
			TitleBox title_ScrnMskDraw title="Press cmd-t to exit the ROI draw mode, then press 'Create mask'",disable=2,pos= {100,0},frame=0
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End			

Function ButtonProc_IXPS_ScrnMskCreate(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SetActiveSubwindow SLP_ImgXPS_Panel_01#IX_ImgW
			
			String ImageVolName=stringfromlist(0,ImageNameList("SLP_ImgXPS_Panel_01#IX_ImgW",";"),";")
			ImageGenerateROIMask /E=0 /I=1 $ImageVolName
			TitleBox title_ScrnMskDraw disable=1
			
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			String ScrnMskW_FName=ImgVolW_FName+"_Scrn"
			Wave ScrnMskW=$ScrnMskW_FName
			ScrnMskW=1 //Reset the screen mask
			
			If(Exists("M_ROIMask"))
				Wave M_ROIMask
				ScrnMskW=M_ROIMask*ScrnMskW
				killwaves M_ROIMask
			Endif
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function SLP_IXPS_LEEMCutOff(VolName,SVPoint)
	String VolName	
	Variable SVPoint
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	
	String Current_Folder=GetDataFolder(1)
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String ZProfD1W_FName=ImgVolW_FName+"_zPD1" //1st order diff.
	String ZProfD1SmW_FName=ImgVolW_FName+"_zPD1Sm" //1st order diff.	 + smoothed
	String ZProfD2W_FName=ImgVolW_FName+"_zPD2" //2st order diff.
	
	Wave ImgVolW=$ImgVolW_FName
	Wave ZProfW=$ZProfW_FName
	Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	
	Duplicate /O ZProfW,$ZProfMskW_FName /WAVE=ZProfMskW
	
	//Create Coef. wave
	Make /O/D/N=4 $FitCoefW_FName /WAVE=FitCoefW
	
	//Use algorithm to guess the starting values
	wavestats /Q ZProfW
	
	FitCoefW[0]=V_minloc
	
	Differentiate ZProfW/D=$ZProfD1W_FName;DelayUpdate
	Wave W_DIF1=$ZProfD1W_FName
	Duplicate /O W_DIF1,$ZProfD1SmW_FName /Wave=W_D1Sm
	Smooth/S=2 SVPoint,W_D1Sm
	Smooth/S=2 SVPoint,W_D1Sm
	Differentiate W_D1Sm /D=$ZProfD2W_FName
	Wave W_DIF2=$ZProfD2W_FName
	
	wavestats /Q W_D1Sm
	FitCoefW[1]=V_minloc
	
	wavestats /Q W_DIF2
	FitCoefW[2]=V_minloc
	FitCoefW[3]=V_maxloc
	
	//Put the fit result in col. 3 of FitCoefDisplayW
	FitCoefDisplayW[0,3][3]=num2str(FitCoefW[p])
	
	ControlInfo /W=SLP_ImgXPS_Panel_01 CheckBox_FastExt
	
	If (V_Value==0) //If not in 'Fast Mode' = display results during the extraction
		
		If (whichlistitem("W_DIF1",TraceNameList("SLP_ImgXPS_Panel_01#IX_FITTINGWIN",";",1))==-1)
			Appendtograph /W=SLP_ImgXPS_Panel_01#IX_FITTINGWIN /R=right W_DIF1 /TN=W_DIF1
			Appendtograph /W=SLP_ImgXPS_Panel_01#IX_FITTINGWIN /R=right  W_D1Sm /TN= W_D1Sm
			Appendtograph /W=SLP_ImgXPS_Panel_01#IX_FITTINGWIN /R=right  W_DIF2  /TN=W_DIF2
			Modifygraph rgb(W_DIF1)=(60000,0,60000)
			Modifygraph rgb(W_D1Sm)=(0,60000,0)
			Modifygraph rgb(W_DIF2)=(0,0,60000)
		Endif
		
		DoUpdate
	Endif
	
	SetDataFolder $Current_Folder
	
	//return FitCoefW[2] //Return x0 (cut-off position)
End


Function SLP_IXPS_CreateCutoffMap(VolName,bin)
	String VolName
	variable bin
	
	NVAR ExtProgress=root:Package_SLP:ImgXPS:ExtProgress
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	
	String Current_Folder=GetDataFolder(1)
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String ScrnMskW_FName=ImgVolW_FName+"_Scrn"
	String ZProfW_FName=ImgVolW_FName+"_zProfl"
	String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
	String FitCoefW_FName=ImgVolW_FName+"_FCoef"
	String UnprocMap1_FName=ImgVolW_FName+"_Umap1"
	String UnprocMap1H_FName=ImgVolW_FName+"_Umap1H"//Histogram
	
	SetDataFolder $DataFolder_FName
	
	Wave ImgVolW=$ImgVolW_FName
	Wave ScrnMskW=$ScrnMskW_FName
	Make /O/N=(Ceil(dimsize(ImgVolW,0)/Bin),Ceil(dimsize(ImgVolW,1)/Bin)) $UnprocMap1_FName /Wave=UnprocMap1
	UnprocMap1=NaN //Set BG to NAN
	
	variable i=0
	variable j=0
	variable k=0
	ExtProgress=0
	variable N_points=sum(ScrnMskW)/Bin^2
	
	For (i=0;i<dimsize(ImgVolW,0);i+=Bin)
		For (j=0;j<dimsize(ImgVolW,1);j+=Bin)
			If (ScrnMskW[i][j])
				SLP_IXPS_ExtractZProfile(VolName,i,j,Bin)
				UnprocMap1[i/Bin][j/Bin]=SLP_IXPS_ExtCutoff(VolName)
				k+=1
				ExtProgress=k/N_points*100
				//print "Extracting "+num2str(ExtProgress)+" %"
			//Else
				//UnprocMap1[i/Bin][j/Bin]=UnProcMap1_BG //Set background to -5.1 eV (0.1eV smaller than min. STV)
			EndIf
		EndFor
	EndFor
	
	Make /O $UnprocMap1H_FName /WAVE=UnprocMap1H
	Histogram /B=4 UnprocMap1,UnprocMap1H
	
	SetDataFolder $Current_Folder
End

Function SLP_ColorScalePanel()
	DoWindow /K SLP_ColorScalePanel
	NewPanel /W=(200,300,500,420) /N=SLP_ColorScalePanel

	Button Button_Done,pos={240,30},size={50,20}, Fsize=10,title="Done",proc=ButtonProc_ColorScale_done

	variable MinValue=-2
	variable MaxValue=2
	variable /G SetValue_Min
	variable /G SetValue_Max
	
	DrawText 5,20,"\Z12Adjust colour scale"
	DrawText 5,40,"Min:"
	DrawText 5,90,"Max:"
	
	Slider Slider_MinValue,pos={35,25},size={200,30}, title="Min value",vert=0,limits={MinValue,MaxValue,0.01},proc=SliderProc_Min,ticks=20,value=MinValue
	Slider Slider_MaxValue,pos={35,75},size={200,30}, title="Max value",vert=0,limits={MinValue,MaxValue,0.01},proc=SliderProc_Max,ticks=20,value=MaxValue
	
	//ModifyImage /W=Cutoff $ImageName ctab= {SetValue_Min,SetValue_Max,Rainbow,0}
End

Function ButtonProc_IXPS_CreateScrnMask(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			//Find the current selected row
			
			//clear screen mask drawing
			SetActiveSubwindow SLP_ImgXPS_Panel_01#IX_ImgW
			DrawAction delete
			
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String ScanName=SLP_IXPS_ScanListW[SelRow][0]
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			string BoundX_W_FName=ImgVolW_FName+"_BX"
			string BoundY_W_FName=ImgVolW_FName+"_BY"
			
			NVAR Threshold=root:Package_SLP:ImgXPS:Threshold
			
			SLP_IXPS_CreateScreenMask(ScanName,Threshold,500)
			Wave BX=$BoundX_W_FName
			Wave BY=$BoundY_W_FName
			
			SLP_Util_RemoveAllTraces("SLP_ImgXPS_Panel_01#IX_ImgW")
			Appendtograph /W=SLP_ImgXPS_Panel_01#IX_ImgW BY vs BX
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_IXPS_ChooseCor1W(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			String SelectedWaveFName=""
			Execute "CreateBrowser prompt=\"Select image wave to be used for value correction\", showWaves=1, showVars=0, showStrs=0" 
			//Old style. in Igor7 no need to use Execute
			SVAR S_BrowserList=S_BrowserList
			NVAR V_Flag=V_Flag
			if(V_Flag!=0)
				SelectedWaveFName=stringfromlist(0,S_BrowserList)
			endif
					  	
			SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Correction1",S_BrowserList,1)
			SLP_IXPS_LoadCorrectionW1(SelectedWaveFName)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_LoadCorrectionW1(Original_Corr1WFName)
	String Original_Corr1WFName
	
	//Can't put this in the ButtonProc because of conflict with CreateBrowser command in ButtonProc_IXPS_ChooseCor1W
	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
	Variable SelRow=V_Value
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	SLP_IXPS_ScanListW[SelRow][33]=Original_Corr1WFName
	String VolName=SLP_IXPS_ScanListW[SelRow][0]
	String ImgVolW_FName=SLP_IXPS_ScanListW[SelRow][1]+SLP_IXPS_ScanListW[SelRow][0]
	String Umap1W_FName=ImgVolW_FName+"_Umap1"
	String Corr1W_FName=ImgVolW_FName+"_Corr1"
	String Corr1HW_FName=ImgVolW_FName+"_Corr1H"
	String Cmap1W_FName=ImgVolW_FName+"_Cmap1"
	
	Wave Original_Corr1W=$Original_Corr1WFName
	
	Duplicate /O Original_Corr1W,$Corr1W_FName /WAVE=Corr1W
	
	Make /O $Corr1HW_FName /WAVE=Corr1HW
	Histogram /B=4 Corr1W,Corr1HW
	
	SLP_IXPS_Correct1(VolName,0,0,1) //[TODO] - This must use the dx,dy, mag param. from WList
	
	//Automatically find the min and max of the color scale
	String DLimTxt=""
	DLimTxt=SLP_Util_ImgAutoScale(Corr1W_FName,0)
	SLP_IXPS_ScanListW[SelRow][18]=stringFromList(0,DLimTxt,";")
	SLP_IXPS_ScanListW[SelRow][19]=stringFromList(1,DLimTxt,";")
	DLimTxt=SLP_Util_ImgAutoScale(Cmap1W_FName,0)
	SLP_IXPS_ScanListW[SelRow][20]=stringFromList(0,DLimTxt,";")
	SLP_IXPS_ScanListW[SelRow][21]=stringFromList(1,DLimTxt,";")
	
	//Update the display
	SLP_IXPS_DisplaySelectedData(VolName)

End

Function SLP_IXPS_Correct1(VolName,x_offset,y_offset,int_scale)
	String VolName
	variable x_offset,y_offset //(in microns)
	variable int_scale //correct shift amplitude
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String UMap1W_FName=ImgVolW_FName+"_UMap1"
	String Corr1W_FName=ImgVolW_FName+"_Corr1"
	String CMap1W_FName=ImgVolW_FName+"_CMap1"
	String CMap1HW_FName=ImgVolW_FName+"_CMap1H"
	
	Wave UMap1W=$UMap1W_FName
	Wave Corr1W=$Corr1W_FName

	variable i,j
	
	Duplicate /O UMap1W,$CMap1W_FName /Wave=CMap1W
	
	Variable x_pos=0
	variable y_pos=0
	
	Variable Corr1WMinX=dimoffset(Corr1W,0)
	Variable Corr1WMaxX=dimoffset(Corr1W,0)+dimdelta(Corr1W,0)*(dimsize(Corr1W,0)-1)
	Variable Corr1WMinY=dimoffset(Corr1W,1)
	Variable Corr1WMaxY=dimoffset(Corr1W,1)+dimdelta(Corr1W,1)*(dimsize(Corr1W,1)-1)
	
	For (i=0;i<dimsize(CMap1W,0);i+=1)
		For (j=0;j<dimsize(CMap1W,1);j+=1)
			x_pos=DimOffset(CMap1W, 0) + i *DimDelta(CMap1W,0)
			y_pos=DimOffset(CMap1W, 1) + j *DimDelta(CMap1W,1)
			
			If(x_pos-x_offset>=Corr1WMinX&&x_pos-x_offset<=Corr1WMaxX&&y_pos-y_offset>=Corr1WMinY&&y_pos-y_offset<=Corr1WMaxY)
				CMap1W[i][j]+=Corr1W(x_pos-x_offset)(y_pos-y_offset)*int_Scale
			Else
				CMap1W[i][j]=NaN
			Endif
			//DoUpdate
		EndFor
	EndFor
	
	Make /O $CMap1HW_FName /WAVE=CMap1HW
	Histogram /B=4 CMap1W,CMap1HW
	
End

Function SLP_IXPS_Correct2(VolName,x_offset,y_offset,int_scale,Corr_Size,Corr_Rot)
	String VolName
	variable x_offset,y_offset //(in microns)
	variable int_scale //correct shift amplitude
	variable Corr_Size //Size of the correction
	variable Corr_Rot //Rotation
	
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	variable DataRow=SLP_IXPS_FindDataRow(VolName)
	String DataFolder_FName=SLP_IXPS_ScanListW[DataRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[DataRow][0]
	String UMap1W_FName=ImgVolW_FName+"_UMap1"
	String Corr1W_FName=ImgVolW_FName+"_Corr1"
	String CMap1W_FName=ImgVolW_FName+"_CMap1"
	String CMap1HW_FName=ImgVolW_FName+"_CMap1H"
	
	Wave UMap1W=$UMap1W_FName
	Wave Corr1W=$Corr1W_FName

	variable i,j
	
	Duplicate /O UMap1W,$CMap1W_FName /Wave=CMap1W
	
	Variable x_pos=0
	variable y_pos=0
	
	Variable Corr1WMinX=dimoffset(Corr1W,0)
	Variable Corr1WMaxX=dimoffset(Corr1W,0)+dimdelta(Corr1W,0)*(dimsize(Corr1W,0)-1)
	Variable Corr1WMinY=dimoffset(Corr1W,1)
	Variable Corr1WMaxY=dimoffset(Corr1W,1)+dimdelta(Corr1W,1)*(dimsize(Corr1W,1)-1)
	
	Variable NewX=0
	Variable NewY=0
	
	For (i=0;i<dimsize(CMap1W,0);i+=1)
		For (j=0;j<dimsize(CMap1W,1);j+=1)
			x_pos=DimOffset(CMap1W, 0) + i *DimDelta(CMap1W,0)
			y_pos=DimOffset(CMap1W, 1) + j *DimDelta(CMap1W,1)
			
			NewX=(x_pos*cos(Corr_Rot*pi/180)-y_pos*sin(Corr_Rot*pi/180)-x_offset)*Corr_Size
			NewY=(x_pos*sin(Corr_Rot*pi/180)+y_pos*cos(Corr_Rot*pi/180)-y_offset)*Corr_Size
			
			If(NewX>=Corr1WMinX&&NewX<=Corr1WMaxX&&NewY>=Corr1WMinY&&NewY<=Corr1WMaxY)
				//CMap1W[i][j]+=Corr1W(x_pos-x_offset)(y_pos-y_offset)*int_Scale
				CMap1W[i][j]-=Corr1W(NewX)(NewY)*int_Scale
			Else
				CMap1W[i][j]=NaN
			Endif
			//DoUpdate
		EndFor
	EndFor
	
	Make /O $CMap1HW_FName /WAVE=CMap1HW
	Histogram /B=4 CMap1W,CMap1HW
	
End

Function CheckProc_SelImage(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			//print cba.checked
			//print cba.ctrlName
			
			NVAR ColorMin=root:Package_SLP:ImgXPS:ColorMin
			NVAR ColorMax=root:Package_SLP:ImgXPS:ColorMax
			SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			//Waves and wave refs.
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			String UMap1W_FName=ImgVolW_FName+"_UMap1"
			String Corr1W_FName=ImgVolW_FName+"_Corr1"
			String CMap1W_FName=ImgVolW_FName+"_CMap1"
			//String UMap2W_FName=ImgVolW_FName+"_UMap2"
			//String Corr2W_FName=ImgVolW_FName+"_Corr2"
			//String CMap2W_FName=ImgVolW_FName+"_CMap2"
			If (Exists(UMap1W_FName))
				Wave UMap1W=$UMap1W_FName
			Endif
			
			If (Exists(Corr1W_FName))
				Wave Corr1W=$Corr1W_FName
			Endif
			
			If (Exists(CMap1W_FName))
				Wave CMap1W=$CMap1W_FName
			EndIf
			//Wave UMap2W=$UMap2W_FName
			//Wave Corr2W=$Corr2W_FName
			//Wave CMap2W=$CMap2W_FName
			
			String HistogramW_FName
			
			//Trick from man page of CheckBox
			Variable  gRadioVal
			strswitch (cba.ctrlName) //Name of the image (note the use of WMCheckBoxAction STRUCT)
				case "CheckBox_SelImg11":
					gRadioVal= 1
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt1"
					ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][16])
					ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][17])
					WaveStats /Q UMap1W
					HistogramW_FName=ImgVolW_FName+"_UMap1H"
					break
				case "CheckBox_SelImg12":
					gRadioVal= 2
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_Correction1"
					ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][18])
					ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][19])
					WaveStats /Q Corr1W
					HistogramW_FName=ImgVolW_FName+"_Corr1H"
					break
				case "CheckBox_SelImg13":
					gRadioVal= 3
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_ResultMap1"
					ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][20])
					ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][21])
					WaveStats /Q CMap1W
					HistogramW_FName=ImgVolW_FName+"_CMap1H"
					break
				case "CheckBox_SelImg21":
					gRadioVal= 4
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt2"
					ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][22])
					ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][23])
					WaveStats /Q UMap1W
					HistogramW_FName=ImgVolW_FName+"_UMap1H"
					//Future code - to use UMap2
					break
				case "CheckBox_SelImg22":
					gRadioVal= 5
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_Correction2"
					ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][24])
					ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][25])
					WaveStats /Q Corr1W
					HistogramW_FName=ImgVolW_FName+"_Corr1H"
					//Future code - to use Corr2
					break
				case "CheckBox_SelImg23":
					gRadioVal= 6
					SelSubWindow="SLP_ImgXPS_Panel_01#IX_ResultMap2"
					ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][26])
					ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][27])
					WaveStats /Q CMap1W
					HistogramW_FName=ImgVolW_FName+"_CMap1H"
					//Future code - to use CMap2
					break
			endswitch
			
			SLP_IXPS_ScanListW[SelRow][47]=SelSubWindow
			
			//SET Slider limits by min and max value
			//Slider Slider_ImgVolMinInt,limits={V_min,V_max,(V_max-V_min)/200}
			//Slider Slider_ImgVolMaxInt,limits={V_min,V_max,(V_max-V_min)/200}
			//SET Slider limits by Avg +- SD values 
			Slider Slider_ImgVolMinInt,limits={V_avg-3*V_sdev,V_avg+3*V_sdev,6*V_Sdev/200}
			Slider Slider_ImgVolMaxInt,limits={V_avg-3*V_sdev,V_avg+3*V_sdev,6*V_Sdev/200}

			
			CheckBox CheckBox_SelImg11,value= (gRadioVal==1)
			CheckBox CheckBox_SelImg12,value= (gRadioVal==2)
			CheckBox CheckBox_SelImg13,value= (gRadioVal==3)
			CheckBox CheckBox_SelImg21,value= (gRadioVal==4)
			CheckBox CheckBox_SelImg22,value= (gRadioVal==5)
			CheckBox CheckBox_SelImg23,value= (gRadioVal==6)
			
			If (Exists(HistogramW_FName))
				SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Histogram",HistogramW_FName,0)
				Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mirror=1,minor=1,tick(left)=0,tick(bottom)=2
				Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram  margin(bottom)=20,margin(left)=3,margin(top)=3,margin(right)=3
				ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mode=5,hbFill=2,rgb=(1,34817,52428)
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function ButtonProc_IXPS_CopyFitCoef(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW 

			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			String TgtScanName=SLP_IXPS_ScanListW[SelRow][0]
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			//String FitCoefW_FName=ImgVolW_FName+"_FCoef"
			String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
			String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
			String FitCoefConstraintsW_FName=ImgVolW_FName+"_FCoefC"
						
  					
			//Source scan (to copy from)
			String ScanList=""
			variable i=0
			variable N_Scans=dimsize(SLP_IXPS_ScanListW,0)
			String SrcScanName=""
			String TgtFitMode=SLP_IXPS_ScanListW[SelRow][48]
			String SrcFitMode=""
			//Create a list string which contains all the scans
			For (i=0;i<N_Scans;i+=1)
				SrcFitMode=SLP_IXPS_ScanListW[i][48]
				If (!Stringmatch(TgtScanName,SLP_IXPS_ScanListW[i][0])&&StringMatch(TgtFitMode,SrcFitMode))
					ScanList+=SLP_IXPS_ScanListW[i][0]+";"
				EndIf
			EndFor
			//Ask user to select the src. scan
			Prompt SrcScanName,"Scan",popup,ScanList
  			DoPrompt "Choose a scan to copy the dispersive line from",SrcScanName
  			If (V_Flag==0) //If user clicks 'Continue'
	  			Variable SrcDataRow=SLP_IXPS_FindDataRow(SrcScanName)
	  			String SrcImgVolW_FName=SLP_IXPS_ScanListW[SrcDataRow][1]+SLP_IXPS_ScanListW[SrcDataRow][0]
	  			//String SrcFitCoefW_FName=SrcImgVolW_FName+"_FCoef"
				String SrcFitCoefDisplayW_FName=SrcImgVolW_FName+"_FCoefD"
				String SrcFitCoefDisplaySelW_FName=SrcImgVolW_FName+"_FCoefDS"
				String SrcFitCoefConstraintsW_FName=SrcImgVolW_FName+"_FCoefC"
	  			
				//Duplicate /O $SrcFitCoefW_FName,$FitCoefW_FName
	  			Duplicate /O/T $SrcFitCoefDisplayW_FName,$FitCoefDisplayW_FName
	  			Duplicate /O $SrcFitCoefDisplaySelW_FName,$FitCoefDisplaySelW_FName
	  			Duplicate /O/T $SrcFitCoefConstraintsW_FName,$FitCoefConstraintsW_FName
	  			
	  			SLP_IXPS_DisplaySelectedData(TgtScanName)
  			EndIf
  			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_IXPS_CopyScrn(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW 

			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			String TgtScanName=SLP_IXPS_ScanListW[SelRow][0]
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			String ScrnMskW_FName=ImgVolW_FName+"_Scrn"
			String BxW_FName=ImgVolW_FName+"_BX"
			String ByW_FName=ImgVolW_FName+"_BY"
						
  					
			//Source scan (to copy from)
			String ScanList=""
			variable i=0
			variable N_Scans=dimsize(SLP_IXPS_ScanListW,0)
			String SrcScanName=""
			//Create a list string which contains all the scans
			For (i=0;i<N_Scans;i+=1)
				If (!Stringmatch(TgtScanName,SLP_IXPS_ScanListW[i][0]))
					ScanList+=SLP_IXPS_ScanListW[i][0]+";"
				EndIf
			EndFor
			//Ask user to select the src. scan
			Prompt SrcScanName,"Scan",popup,ScanList
  			DoPrompt "Choose a scan to copy the dispersive line from",SrcScanName
  			If (V_Flag==0) //If user clicks 'Continue'
	  			Variable SrcDataRow=SLP_IXPS_FindDataRow(SrcScanName)
	  			String SrcImgVolW_FName=SLP_IXPS_ScanListW[SrcDataRow][1]+SLP_IXPS_ScanListW[SrcDataRow][0]
	  			String SrcScrnMskW_FName=SrcImgVolW_FName+"_Scrn"
				String SrcBxW_FName=SrcImgVolW_FName+"_BX"
				String SrcByW_FName=SrcImgVolW_FName+"_BY"
	  			
				Duplicate /O $SrcScrnMskW_FName,$ScrnMskW_FName
				Duplicate /O $SrcBxW_FName,$BxW_FName
				Duplicate /O $SrcByW_FName,$ByW_FName
	  			
	  			SLP_IXPS_DisplaySelectedData(TgtScanName)
  			EndIf
  			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_IXPS_CorrectColor13(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			NVAR ColorMin=root:Package_SLP:ImgXPS:ColorMin
			NVAR ColorMax=root:Package_SLP:ImgXPS:ColorMax
			SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow
			SelSubWindow="SLP_ImgXPS_Panel_01#IX_ResultMap1"
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			String CMap1W_FName=ImgVolW_FName+"_CMap1"
			Wave CMap1W=$CMap1W_FName
			
			ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][20])
			ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][21])
			
			WaveStats /Q CMap1W
			Slider Slider_ImgVolMinInt,limits={V_min,V_max,(V_max-V_min)/200}
			Slider Slider_ImgVolMaxInt,limits={V_min,V_max,(V_max-V_min)/200}
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End



Function ButtonProc_IXPS_Done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K SLP_ImgXPS_Panel_01
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_IXPS_PlotImg(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			Variable ColorMin
			Variable ColorMax
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String ImgVol_Name=SLP_IXPS_ScanListW[SelRow][0]
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			String ImgVolW_Name=SLP_IXPS_ScanListW[SelRow][0]
			String UMap1W_FName=ImgVolW_FName+"_UMap1"
			String CMap1W_FName=ImgVolW_FName+"_CMap1"
			String UMap2W_FName=ImgVolW_FName+"_UMap2"
			String CMap2W_FName=ImgVolW_FName+"_CMap2"
			String UMap1W_Name=ImgVolW_Name+"_UMap1"
			String CMap1W_Name=ImgVolW_Name+"_CMap1"
			String MapVolW_FName=ImgVolW_FName+"_MapVol"
			String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
			String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
			
			Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
			
			String ExpImgName=""
			
			String SelPlaneTxt="0;0"
			variable SelPlane=0
			variable SelIndex=0
			
			strswitch(ba.CtrlName)	// string switch
				case "Button_PlotUMap1":		
					SelPlaneTxt=SLP_IXPS_FindLayer("IX_RawExt1")
					ExpImgName=ImgVol_Name+"_"+SLP_IXPS_ScanListW[SelRow][22]
					break
				case "Button_PlotUMap2":		
					SelPlaneTxt=SLP_IXPS_FindLayer("IX_RawExt2")
					ExpImgName=ImgVol_Name+"_"+SLP_IXPS_ScanListW[SelRow][23]
					break
				case "Button_PlotUMap3":		
					SelPlaneTxt=SLP_IXPS_FindLayer("IX_RawExt3")
					ExpImgName=ImgVol_Name+"_"+SLP_IXPS_ScanListW[SelRow][24]
					break
				case "Button_PlotUMap4":		
					SelPlaneTxt=SLP_IXPS_FindLayer("IX_RawExt4")
					ExpImgName=ImgVol_Name+"_"+SLP_IXPS_ScanListW[SelRow][25]
					break
				case "Button_PlotUMap5":		
					SelPlaneTxt=SLP_IXPS_FindLayer("IX_RawExt5")
					ExpImgName=ImgVol_Name+"_"+SLP_IXPS_ScanListW[SelRow][26]
					break
				case "Button_PlotUMap6":		
					SelPlaneTxt=SLP_IXPS_FindLayer("IX_RawExt6")
					ExpImgName=ImgVol_Name+"_"+SLP_IXPS_ScanListW[SelRow][26]
					break
				
				case "Button_PlotCMap1":		
					ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][20])
					ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][21])
					ExpImgName=CMap1W_Name
					//
					break
				
			endswitch
			
			SelPlane=str2num(stringfromlist(0,SelPlaneTxt,";"))
			SelIndex=str2num(stringfromlist(1,SelPlaneTxt,";"))
			String ExpImgName_New=ExpImgName
			If (Exists(ExpImgName))
				Prompt ExpImgName_New,"New image wave name"
				DoPrompt "Duplicate image wave name. Please enter new name:",ExpImgName_New
			Endif
			
			If (Stringmatch(ExpImgName,CMap1W_Name))
				duplicate /O $CMap1W_FName,$ExpImgName_New /WAVE=NewImgW
				ColorMin=str2num(SLP_IXPS_ScanListW[SelRow][20])
				ColorMax=str2num(SLP_IXPS_ScanListW[SelRow][21])
			Else
				Duplicate /O/R=[][][SelPlane] $MapVolW_FName,$ExpImgName_New /WAVE=NewImgW
				redimension /N=(dimsize(NewImgW,0),dimsize(NewImgW,1)) NewImgW //Change from 3D to 2D
				ColorMin=str2num(FitCoefDisplayW[SelIndex][10])
				ColorMax=str2num(FitCoefDisplayW[SelIndex][11])
			
			Endif
			
			NewImage NewImgW
			String ImgName=StringFromList(0,ImageNameList("",";"))
			ModifyImage $ImgName ctab= {ColorMin,ColorMax,rainbow,0}
			ModifyGraph margin(Right)=40
			ColorScale /A=RT
			SetAxis /A left
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_IXPS_Ext1(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			NVAR LLim=root:Package_SLP:ImgXPS:LLim
			NVAR ULim=root:Package_SLP:ImgXPS:ULim
			
			Variable Bin=10
			Prompt Bin,"Binning"
			DoPrompt "Choose binning for the data extraction",Bin
			
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			Variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String VolName=SLP_IXPS_ScanListW[SelRow][0]
			
			//SLP_IXPS_CreateCutoffMap(VolName,Bin)
			controlinfo /W=SLP_ImgXPS_Panel_01 Popup_FitType
			SLP_IXPS_CreateParamMap(VolName,bin,S_Value,LLim,ULim) //[FUNC]SLP_IXPS_CreateParamMap
			
			//Set x-y scale for the newly created map
			String ImgVolW_FName=SLP_IXPS_ScanListW[SelRow][1]+SLP_IXPS_ScanListW[SelRow][0]
			String UMap1W_FName=ImgVolW_FName+"_UMap1" //UMap=uncorrected map
			Wave UMap1W=$UMap1W_FName
			variable FOV=str2num(SLP_IXPS_ScanListW[SelRow][32])
			variable xMin=str2num(SLP_IXPS_ScanListW[SelRow][28])
			variable xMax=str2num(SLP_IXPS_ScanListW[SelRow][29])
			variable yMin=str2num(SLP_IXPS_ScanListW[SelRow][30])
			variable yMax=str2num(SLP_IXPS_ScanListW[SelRow][31])
			SLP_IXPS_SetXYScale(UMap1W_FName,FOV,xMin,xMax,yMin,yMax,Bin) //[FUNC]SLP_IXPS_SetXYScale
			
			//Update to ScanListW (Binning)
			SLP_IXPS_ScanListW[SelRow][16]=num2str(Bin)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SliderProc_IXPS_ImgFrame(sa) : SliderControl
	STRUCT WMSliderAction &sa

	switch( sa.eventCode )
		case -1: // control being killed
			break
		default:
			if( sa.eventCode & 1 ) // value set
				Variable curval = sa.curval
				
				//Find the current selected row
  				ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
				variable SelRow=V_Value
				Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW	
				//Find the image name (should be the same as ImgVol name) [TODO: proper use = Image name..]
				String CurrentImgeName=SLP_IXPS_ScanListW[SelRow][0]
				
				modifyimage /W=SLP_ImgXPS_Panel_01#IX_ImgW $CurrentImgeName plane=(curval)
					
				SLP_IXPS_ScanListW[SelRow][5]=num2str(curval)
			endif
			break
	endswitch

	return 0
End

Function SetVarProc_IXPS_CorrectMap1(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			Variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String VolName=SLP_IXPS_ScanListW[SelRow][0]
			NVAR CorrAdj_x1=root:Package_SLP:ImgXPS:CorrAdj_x1
			NVAR CorrAdj_y1=root:Package_SLP:ImgXPS:CorrAdj_y1
			NVAR CorrAdj_mag1=root:Package_SLP:ImgXPS:CorrAdj_mag1
			NVAR CorrAdj_Size1=root:Package_SLP:ImgXPS:CorrAdj_Size1
			NVAR CorrAdj_Rot1=root:Package_SLP:ImgXPS:CorrAdj_Rot1
			
	

 			SLP_IXPS_Correct2(VolName,CorrAdj_x1,CorrAdj_y1,CorrAdj_mag1,CorrAdj_Size1,CorrAdj_Rot1)
			SLP_IXPS_ScanListW[SelRow][35]=num2str(CorrAdj_x1)
			SLP_IXPS_ScanListW[SelRow][36]=num2str(CorrAdj_y1)
			SLP_IXPS_ScanListW[SelRow][37]=num2str(CorrAdj_mag1)
			SLP_IXPS_ScanListW[SelRow][38]=num2str(CorrAdj_Size1)
			SLP_IXPS_ScanListW[SelRow][39]=num2str(CorrAdj_Rot1)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_IXPS_FitLim(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			NVAR LLim=root:Package_SLP:ImgXPS:LLim
			NVAR ULim=root:Package_SLP:ImgXPS:ULim
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
			String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
			String ZProfW_FName=ImgVolW_FName+"_zProfl"
			String ZProfMskW_FName=ImgVolW_FName+"_zPMsk"
			Wave ZProfW=$ZProfW_FName
			Wave ZProfMskW=$ZProfMskW_FName
			ZProfMskW=0
			
			If (LLim<dimoffset(ZProfW,0))
				LLim=dimoffset(ZProfW,0)
			Endif
			
			If (ULim>dimoffset(ZProfW,0)+dimdelta(ZProfW,0)*(dimsize(ZprofW,0)-1))
				ULim=dimoffset(ZProfW,0)+dimdelta(ZProfW,0)*(dimsize(ZprofW,0)-1)
			Endif
			
			ZProfMskW[round(x2pnt(ZProfMskW,Llim)),round(x2pnt(ZProfMskW,ULim))]=1
			
			//Update to ScanListW
			SLP_IXPS_ScanListW[SelRow][9]=num2str(LLim)
			SLP_IXPS_ScanListW[SelRow][10]=num2str(ULim)
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_IXPS_ImgFrame(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			//Find the current selected row
  				ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
				variable SelRow=V_Value
				Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW	
				//Find the image name (should be the same as ImgVol name) [TODO: proper use = Image name..]
				String CurrentImgeName=SLP_IXPS_ScanListW[SelRow][0]
				
				modifyimage /W=SLP_ImgXPS_Panel_01#IX_ImgW $CurrentImgeName plane=(dval)
				SLP_IXPS_ScanListW[SelRow][5]=num2str(dval)
			break
			
			
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function /T SLP_Util_ExtScanParam([File_FName])
	//Extract parameter list and return a string with each line separated by ";"
	//Example when used: print SLP_Util_ExtScanParam(File_FName="experimental_data:ID2734:IXPS01:IXPS01.txt") 
	string File_FName
	
	variable SLP_RefNum
	
	If (ParamIsDefault(File_FName)) //If no file_Fname is given
		//If no filename input
		Open /D/R SLP_RefNum //This shows a dialog but doesn't actually change RefNum
		Open /R SLP_RefNum as S_fileName
		print S_FileName
	Else 
		Open /R SLP_RefNum as File_FName
	Endif
	
	variable i=0 //i= line number
	variable MaxLine=20
	string Line_Str=""
	string ParamListStr=""
	
	For (i=0;i<=MaxLine;i+=1)
		FReadLine SLP_RefNum,Line_Str
		If (strlen(Line_Str)!=0)
			ParamListStr+=Line_Str[0,strlen(Line_Str)-2]+";"
		Endif
	EndFor
	//print ParamListStr
	Close SLP_RefNum
	
	Return ParamListStr
End

Function ButtonProc_IXPS_LoadScan(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			//Ask for folder location
			GetFileFolderInfo /D/Q/Z=2 //[Note] /Z=2 prevent dialog when user click 'Cancel'
			NewPath DataPath,S_Path
			wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			
			If (V_Flag!=-1) //IF user select a folder
		
				variable zStart
				variable zStep
				variable FOV
				variable V_Flag1
				variable V_Flag2
				NVAR Threshold=root:Package_SLP:ImgXPS:Threshold
				
				//Auto assign VolName to the folder name
				String VolName=StringFromList(ItemsInList(S_Path,":")-1,S_Path,":") //Suggested name = (data-containing) folder name
				VolName=SLP_Util_WNameSuggest(VolName,0,20) //[FUNC]SLP_Util_WNameSuggest
				
				//Automatic search for parameter from the text file
				string FileList1=indexedfile(DataPath,-1,".txt")
				//If .txt file is found..
				If (Strlen(FileList1)) 
					String ParamFile_Name=stringfromlist(0,indexedfile(DataPath,-1,".txt"),";")
					String ParamFile_FName=S_Path+ParamFile_Name
					string ParamList=SLP_Util_ExtScanParam(File_FName=ParamFile_FName)
					zStart=str2num(stringfromlist(1,stringfromlist(0,grepList(ParamList,"STV Start")),":"))
					zStep=str2num(stringfromlist(1,stringfromlist(0,grepList(ParamList,"STV Step")),":"))
				EndIf
						
				//Prompt for Wavename and other parameters
				Do
					Prompt VolName, "Wave name"
					prompt zStart, "Start voltage begin (eV)"
					prompt zStep, "Start voltage step (eV)"
					prompt FOV,"Field of view (microns)"
					DoPrompt "Enter parameters", VolName,zStart,zStep,FOV
					V_Flag1=V_Flag //Need to copy V_Flag from DoPrompt to V_Flag1 before it is overwritten by DoAlert
					V_Flag2=0
					
					FindValue /TEXT=VolName SLP_IXPS_ScanListW
					
					If (V_Value==-1)
						//Prevent user from using non-standard wave names
						If (SLP_Util_WNameCheck(VolName,20)&&!V_Flag1) //[FUNC]SLP_Util_WNameCheck
							DoAlert 0,"Scan name must be\r- No special characters\r- Starts with an alphabet\r- Less than 20 chars."
							//Limit to 20 characters because the procedure will create processed data waves with description tags (_xxx) added to the ScanName.
						Endif
					Else
						DoAlert 0,"Duplicated scan name"
						V_Flag2=1
					Endif
					
					//Check if the data folder is already exist or not
					If (datafolderexists(VolName))
						DoAlert 0,"Duplicate data folder name. Please choose a new scan name"
					Endif
					
				While (((SLP_Util_WNameCheck(VolName,20)||V_Flag2)&&!V_Flag1)||datafolderexists(VolName)) //Loope until user makes a good name or click Cancel
				//[FUNC]SLP_Util_WNameCheck
				
				If (!V_Flag1) //User click continue
					
					string CurrentFolder=GetDataFolder(1)
					//string PkgFolder_FName="root:Package_SLP:ImgXPS:"+VolName
					//NewDataFolder $PkgFolder_FName //Location in Pkg Folder to store scan parameters
					NewDataFolder $VolName
					SetDataFolder $VolName //Save raw data here
					
					//Load series of images to a 3d volume [CODE:SLP_Util_LoadMultImg2Vol]
					SLP_Util_LoadMultImg2Vol(S_Path,VolName,zStart,zStep)
					
					string NewImgVolW_FName=CurrentFolder+VolName+":"+VolName 
					Wave NewImgVolW=$NewImgVolW_FName
					
					//Find no. of step
					variable N_Steps=dimsize(NewImgVolW,2)
					
					wave /T SLP_IXPS_ScanListDisplayW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplayW
					wave SLP_IXPS_ScanListDisplaySelW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListDisplaySelW
					
					variable N_Scans=Dimsize(SLP_IXPS_ScanListW,0)
					redimension /N=(dimsize(SLP_IXPS_ScanListW,0)+1,dimsize(SLP_IXPS_ScanListW,1)) SLP_IXPS_ScanListW
					redimension /N=(dimsize(SLP_IXPS_ScanListDisplayW,0)+1,dimsize(SLP_IXPS_ScanListDisplayW,1)) SLP_IXPS_ScanListDisplayW
					redimension /N=(dimsize(SLP_IXPS_ScanListDisplaySelW,0)+1,dimsize(SLP_IXPS_ScanListDisplaySelW,1)) SLP_IXPS_ScanListDisplaySelW
					
					wave /T SLP_IXPS_XPSParamW=root:Package_SLP:ImgXPS:SLP_IXPS_XPSParamW
					//Create zProfile wave
					String ZProfW_FName=NewImgVolW_FName+"_zProfl"
					String ZProfMskW_FName=NewImgVolW_FName+"_zPMsk"
					
					Make /O $ZProfW_FName /WAVE=ZProfW
					//Make /O $ZProfMskW_FName
					
					WaveStats /Q NewImgVolW
					variable IntMin=V_avg-V_sdev*2
					variable IntMax=V_avg+V_sdev*2
					
					//Update parameters to ScanListW
					SLP_IXPS_ScanListW[N_Scans][0]=VolName //Name of the scan (= wave name)
					SLP_IXPS_ScanListW[N_Scans][1]=CurrentFolder+VolName+":" //Where the Raw file is saved
					SLP_IXPS_ScanListW[N_Scans][2]=S_Path //The raw data directory on the computer
					SLP_IXPS_ScanListW[N_Scans][3]=secs2date(V_modificationDate,2)+" "+secs2time(V_modificationDate,2)
					SLP_IXPS_ScanListW[N_Scans][4]=secs2date(V_creationDate,2)+" "+secs2time(V_creationDate,2)
					
					SLP_IXPS_ScanListW[N_Scans][6]=num2str(IntMin)//For auto. ctab setting
					SLP_IXPS_ScanListW[N_Scans][7]=num2str(IntMax)//For auto. ctab setting
					
					SLP_IXPS_ScanListW[N_Scans][9]="-inf"
					SLP_IXPS_ScanListW[N_Scans][10]="inf"
					
					SLP_IXPS_ScanListW[N_Scans][11]=num2str(zStart)
					SLP_IXPS_ScanListW[N_Scans][12]=num2str(zStart+(N_steps-1)*zStep)
					SLP_IXPS_ScanListW[N_Scans][13]=num2str(zStep)
					
					SLP_IXPS_ScanListW[N_Scans][35]="0"
					SLP_IXPS_ScanListW[N_Scans][36]="0"
					SLP_IXPS_ScanListW[N_Scans][37]="1"
					SLP_IXPS_ScanListW[N_Scans][38]="1"
					SLP_IXPS_ScanListW[N_Scans][39]="0"
					SLP_IXPS_ScanListW[N_Scans][40]="0"
					SLP_IXPS_ScanListW[N_Scans][44]="0"
					
					SLP_IXPS_ScanListW[N_Scans][32]=num2str(FOV)
					
					SLP_IXPS_ScanListDisplayW[N_Scans][1]=VolName
					SLP_IXPS_ScanListDisplaySelW[N_Scans][0]=32
					SLP_IXPS_ScanListDisplaySelW[N_Scans][2]=2
					
					SLP_IXPS_XPSParamW[0][1]=num2str(zStart)
					SLP_IXPS_XPSParamW[1][1]=num2str(zStart+(N_steps-1)*zStep)
					SLP_IXPS_XPSParamW[2][1]=num2str(zStep)
					
					//Make selection in the ScanList
					ListBox List_ScansList, SelRow=dimsize(SLP_IXPS_ScanListW,0)-1
					
					//Create a z-profile in the center
					SLP_IXPS_ExtractZProfile(VolName,round(dimsize(NewImgVolW,0)/2),round(dimsize(NewImgVolW,1)/2),30) //[FUNC]SLP_IXPS_ExtractZProfile
					
					//Create a Mask Wave
					duplicate /O $ZProfW_FName,$ZProfMskW_FName /WAVE=ZProfMskW
					//Auto set the Fit LLim and ULim with the scan range
					NVAR LLim=root:Package_SLP:ImgXPS:LLim
					NVAR ULim=root:Package_SLP:ImgXPS:ULim
					LLim=dimoffset(ZProfW,0)
					ULim=dimoffset(ZProfW,0)+dimdelta(ZProfW,0)*(dimsize(ZprofW,0)-1)
					ZProfMskW=0
					ZProfMskW[round(x2pnt(ZProfMskW,Llim)),round(x2pnt(ZProfMskW,ULim))]=1
					
					SLP_IXPS_ScanListW[N_Scans][9]=Num2str(LLim)
					SLP_IXPS_ScanListW[N_Scans][10]=Num2str(ULim)		
					
					//Make selection of the Fit Mode
					SLP_IXPS_FitInit(VolName,"Secondary yield cut-off") //[FUNC]SLP_IXPS_FitInit
					PopupMenu Popup_FitType ,win=SLP_ImgXPS_Panel_01,mode=1
					SLP_IXPS_ScanListW[N_Scans][48]="1"
					
					//Create screen mask
					SLP_IXPS_CreateScreenMask(VolName,Threshold,1000) //[FUNC]SLP_IXPS_CreateScreenMask
					
					//Display the new image volume
					SLP_IXPS_DisplaySelectedData(NewImgVolW_FName) //[FUNC]SLP_IXPS_DisplaySelectedData
					
					//Create UMap1 (dummy)
					string UMap1W_FName=NewImgVolW_FName+"_UMap1"
					duplicate /O root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1,$UMap1W_FName
					
					//Selected frame number = 0
					NVAR FrameNum=root:Package_SLP:ImgXPS:FrameNum
					FrameNum=0
									
					SetDataFolder CurrentFolder
								
				EndIf
				
				Killpath DataPath
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_DisplaySelectedDataOld(VolName)
	String VolName
	Variable DataRow=SLP_IXPS_FindDataRow(VolName)
	wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	string ImgVolW_FName=SLP_IXPS_ScanListW[DataRow][1]+SLP_IXPS_ScanListW[DataRow][0]
	String ImgIntgW_FName=ImgVolW_FName+"_Intg"
	String UnprocMap1_FName=ImgVolW_FName+"_Umap1"
	String UnprocMap1H_FName=ImgVolW_FName+"_Umap1H"
	String Corr1_FName=ImgVolW_FName+"_Corr1"
	String Corr1H_FName=ImgVolW_FName+"_Corr1H"
	String CMap1_FName=ImgVolW_FName+"_CMap1"
	String CMap1H_FName=ImgVolW_FName+"_CMap1H"
	String  zProflW_FName=ImgVolW_FName+"_zProfl"
	String  zPMskW_FName=ImgVolW_FName+"_zPMsk"
	String zProflFitW_FName=SLP_IXPS_ScanListW[DataRow][1]+"Fit_"+SLP_IXPS_ScanListW[DataRow][0]+"_zProfl"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"

	NVAR FrameNum=root:Package_SLP:ImgXPS:FrameNum
	SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow
	NVAR CorrAdj_x1=root:Package_SLP:ImgXPS:CorrAdj_x1
	NVAR CorrAdj_y1=root:Package_SLP:ImgXPS:CorrAdj_y1
	NVAR CorrAdj_mag1=root:Package_SLP:ImgXPS:CorrAdj_mag1
	NVAR CorrAdj_Size1=root:Package_SLP:ImgXPS:CorrAdj_Size1
	NVAR CorrAdj_Rot1=root:Package_SLP:ImgXPS:CorrAdj_Rot1
	NVAR CorrAdj_x2=root:Package_SLP:ImgXPS:CorrAdj_x2
	NVAR CorrAdj_y2=root:Package_SLP:ImgXPS:CorrAdj_y2
	NVAR CorrAdj_mag2=root:Package_SLP:ImgXPS:CorrAdj_mag2
	NVAR CorrAdj_Size2=root:Package_SLP:ImgXPS:CorrAdj_Size2
	NVAR CorrAdj_Rot2=root:Package_SLP:ImgXPS:CorrAdj_Rot2
	
	FrameNum=str2num(SLP_IXPS_ScanListW[DataRow][5])
	SelSubWindow=SLP_IXPS_ScanListW[DataRow][47]
	CorrAdj_x1=str2num(SLP_IXPS_ScanListW[DataRow][35])
	CorrAdj_y1=str2num(SLP_IXPS_ScanListW[DataRow][36])
	CorrAdj_mag1=str2num(SLP_IXPS_ScanListW[DataRow][37])
	CorrAdj_Size1=str2num(SLP_IXPS_ScanListW[DataRow][38])
	CorrAdj_Rot1=str2num(SLP_IXPS_ScanListW[DataRow][39])
	CorrAdj_x2=str2num(SLP_IXPS_ScanListW[DataRow][40])
	CorrAdj_y2=str2num(SLP_IXPS_ScanListW[DataRow][41])
	CorrAdj_mag2=str2num(SLP_IXPS_ScanListW[DataRow][42])
	CorrAdj_Size2=str2num(SLP_IXPS_ScanListW[DataRow][43])
	CorrAdj_Rot2=str2num(SLP_IXPS_ScanListW[DataRow][44])
	
	If(!StringMatch("y",SLP_IXPS_ScanListW[DataRow][45]))
	//If(Exists(ImgVolW_FName))
		Wave ImgVolW=$ImgVolW_FName
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ImgW",ImgVolW_FName,1)
		String VolImgName=stringFromList(0,imageNameList("SLP_ImgXPS_Panel_01#IX_ImgW",";"))
		modifyImage /W=SLP_ImgXPS_Panel_01#IX_ImgW $VolImgName,ctab={str2num(SLP_IXPS_ScanListW[DataRow][6]),str2num(SLP_IXPS_ScanListW[DataRow][7]),,0}
		modifyImage /W=SLP_ImgXPS_Panel_01#IX_ImgW $VolImgName,plane=(str2num(SLP_IXPS_ScanListW[DataRow][5])
		//modifyImage /W=SLP_ImgXPS_Panel_01#IX_ImgW $VolImgName,
		
		//Set slider limit
		Slider Slider_ImgVolFrame limits={0,dimsize(ImgVolW,2)-1,1}
		
		
	Else
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ImgW",ImgIntgW_FName,1)
	EndIf
	
	If (Exists(zProflW_FName))
		//Put new traces in the Fitting window
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_FittingWin",zProflW_FName,0)
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin mode=3,marker=5,rgb=(1,34817,52428)
		AppendToGraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin /R=right $zPMskW_FName
		String TraceName=StringFromList(1,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin lStyle($TraceName)=2,rgb($TraceName)=(0,0,0)
	Endif
	If (Exists(zProflFitW_FName))
		AppendToGraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin $zProflFitW_FName
		TraceName=StringFromList(2,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin lSize($TraceName)=2,rgb($TraceName)=(65535,0,0)
	Endif
	
	String ImageName=""
	
	If (Exists(UnprocMap1_FName))
		Wave UnprocMap1=$UnprocMap1_FName
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt1",UnprocMap1_FName,1)
		ImageName=StringFromList(0,ImageNameList("SLP_ImgXPS_Panel_01#IX_RawExt1",";"))
		ModifyImage /W=SLP_ImgXPS_Panel_01#IX_RawExt1 $ImageName ctab={str2num(SLP_IXPS_ScanListW[DataRow][16]),str2num(SLP_IXPS_ScanListW[DataRow][17]),Rainbow,0} //[TODO]
	Endif
	
	If (Exists(Corr1_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Correction1",Corr1_FName,1)
		ImageName=StringFromList(0,ImageNameList("SLP_ImgXPS_Panel_01#IX_Correction1",";"))
		ModifyImage /W=SLP_ImgXPS_Panel_01#IX_Correction1 $ImageName ctab={str2num(SLP_IXPS_ScanListW[DataRow][18]),str2num(SLP_IXPS_ScanListW[DataRow][19]),Rainbow,0}//[TODO]
	Endif
	
	If (Exists(CMap1_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ResultMap1",Cmap1_FName,1)
		ImageName=StringFromList(0,ImageNameList("SLP_ImgXPS_Panel_01#IX_ResultMap1",";"))
		ModifyImage /W=SLP_ImgXPS_Panel_01#IX_ResultMap1 $ImageName ctab={str2num(SLP_IXPS_ScanListW[DataRow][20]),str2num(SLP_IXPS_ScanListW[DataRow][21]),Rainbow,0}//[TODO]
	Endif
	
	//Disable Dispersive Line Creation section if the raw data has been removed
	String RawDataDel_Flg=SLP_IXPS_ScanListW[DataRow][45]
	If (StringMatch(RawDataDel_Flg,"y"))
		SLP_IXPS_TgglControls("Disable")
	Else
		SLP_IXPS_TgglControls("Enable")
	EndIf
	
	//Selected subWindow (img window)
	CheckBox CheckBox_SelImg11,value=0
	CheckBox CheckBox_SelImg12,value=0
	CheckBox CheckBox_SelImg13,value=0
	CheckBox CheckBox_SelImg21,value=0
	CheckBox CheckBox_SelImg22,value=0
	CheckBox CheckBox_SelImg23,value=0
	
	Variable ColorMin,ColorMax
	String HistogramW_FName=""
	strswitch(SelSubWindow)	// string switch
		case "SLP_ImgXPS_Panel_01#IX_RawExt1":		
			CheckBox CheckBox_SelImg11,value=1
			ColorMin=str2num(SLP_IXPS_ScanListW[DataRow][16])
			ColorMax=str2num(SLP_IXPS_ScanListW[DataRow][17])
			HistogramW_FName=ImgVolW_FName+"_UMap1H"
			If (Exists(UnprocMap1_FName))
				Wave UnprocMap1=$UnprocMap1_FName
				WaveStats /Q UnprocMap1
			Endif
			break	
		case "SLP_ImgXPS_Panel_01#IX_Correction1":		
			CheckBox CheckBox_SelImg12,value=1
			ColorMin=str2num(SLP_IXPS_ScanListW[DataRow][18])
			ColorMax=str2num(SLP_IXPS_ScanListW[DataRow][19])
			HistogramW_FName=ImgVolW_FName+"_Corr1H"
			If (Exists(Corr1_FName))
				Wave Corr1=$Corr1_FName
				WaveStats /Q Corr1
			Endif
			break
		case "SLP_ImgXPS_Panel_01#IX_ResultMap1":		
			CheckBox CheckBox_SelImg13,value=1
			ColorMin=str2num(SLP_IXPS_ScanListW[DataRow][20])
			ColorMax=str2num(SLP_IXPS_ScanListW[DataRow][21])
			HistogramW_FName=ImgVolW_FName+"_CMap1H"
			If (Exists(CMap1_FName))
				Wave CMap1=$CMap1_FName
				WaveStats /Q CMap1
			Endif
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt2":		
			CheckBox CheckBox_SelImg21,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_Correction2":		
			CheckBox CheckBox_SelImg22,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_ResultMap2":		
			CheckBox CheckBox_SelImg23,value=1
			break			
	endswitch
	
	If (Exists(HistogramW_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Histogram",HistogramW_FName,0)
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mirror=1,minor=1,tick(left)=3,tick(bottom)=2
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram  margin(bottom)=20,margin(left)=3,margin(top)=3,margin(right)=3
		ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mode=5,hbFill=2,rgb=(1,34817,52428)
		Slider Slider_ImgVolMinInt,limits={V_avg-3*V_sdev,V_avg+3*V_sdev,6*V_Sdev/200}
		Slider Slider_ImgVolMaxInt,limits={V_avg-3*V_sdev,V_avg+3*V_sdev,6*V_Sdev/200}
	EndIf
	
	If (Exists(FitCoefDisplayW_FName))
		ListBox List_FitParam,ListWave=$FitCoefDisplayW_FName,SelWave=$FitCoefDisplaySelW_FName
	Else
		ListBox List_FitParam,ListWave=root:Package_SLP:ImgXPS:SLP_IXPS_FitParamW,SelWave=root:Package_SLP:ImgXPS:SLP_IXPS_FitParamSelW
	EndIF
	
	//Popup menu update
	PopupMenu Popup_FitType win=SLP_ImgXPS_Panel_01,mode=str2num(SLP_IXPS_ScanListW[DataRow][48])
	
End

Function SliderProc_IXPS_CScale(sa) : SliderControl
	STRUCT WMSliderAction &sa
	
	switch( sa.eventCode )
		case -1: // control being killed
			break
		default:
			if( sa.eventCode & 1 ) // value set
				
				Variable curval = sa.curval
				
				NVAR ColorMin=root:Package_SLP:ImgXPS:ColorMin
				NVAR ColorMax=root:Package_SLP:ImgXPS:ColorMax
				SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow 
				
				//Find the current selected row
			  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
				variable SelRow=V_Value
				Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
				String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
				String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
				String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
				Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
				
				Variable SelParamPos=-1
				String SelParamName=""
				Variable SelParamCol=0
				Variable SelParamRow=-1
				
				strswitch(SelSubWindow)	// string switch
					case "SLP_ImgXPS_Panel_01#IX_RawExt1":
						SelParamPos=22
						break	
					case "SLP_ImgXPS_Panel_01#IX_RawExt2":
						SelParamPos=23
						break	
					case "SLP_ImgXPS_Panel_01#IX_RawExt3":
						SelParamPos=24
						break
					case "SLP_ImgXPS_Panel_01#IX_RawExt4":
						SelParamPos=25
						break
					case "SLP_ImgXPS_Panel_01#IX_RawExt5":
						SelParamPos=26
						break
					case "SLP_ImgXPS_Panel_01#IX_RawExt6":		
						SelParamPos=27
						break
					case "SLP_ImgXPS_Panel_01#IX_Correction1":		
						SLP_IXPS_ScanListW[SelRow][18]=num2str(ColorMin)
						SLP_IXPS_ScanListW[SelRow][19]=num2str(ColorMax)
						break
					case "SLP_ImgXPS_Panel_01#IX_ResultMap1":		
						SLP_IXPS_ScanListW[SelRow][20]=num2str(ColorMin)
						SLP_IXPS_ScanListW[SelRow][21]=num2str(ColorMax)
						break
				endswitch
				
				If (SelParamPos!=-1)
					SelParamName=SLP_IXPS_ScanListW[SelRow][SelParamPos]
					FindValue /S=(dimsize(FitCoefDisplayW,0)*2) /TEXT=SelParamName/TXOP=4 /Z FitCoefDisplayW
					SelParamCol=floor(V_value/dimsize(FitCoefDisplayW,0))
					SelParamRow=V_value-SelParamCol*dimsize(FitCoefDisplayW,0)
					FitCoefDisplayW[SelParamRow][10]=num2str(ColorMin)
					FitCoefDisplayW[SelParamRow][11]=num2str(ColorMax)
				EndIf
				
				string ImageName=stringfromlist(0,ImageNameList(SelSubWindow, ";" ))
				ModifyImage /W=$SelSubWindow $ImageName ctab= {ColorMin,ColorMax,,0}
			EndIf
			break
	endswitch

	return 0
End


Function SLP_Util_AddnRmTraces(SLP_GraphName,NewWFNameList,Option)
	String SLP_GraphName,NewWFNameList //NameList must use ";" to separate WName
	Variable Option
	 //0=Remove all existing trace(s) and add a new one,
	 //1=For images instead of traces
	 //2=Plot y_wave vs x_wave (in pair)
	
	string TraceName=""
	string TraceName_X=""
	string TraceName_Y=""
	string TraceList=""
	variable i=0
	
	If (Option==0)
		TraceList=TraceNameList(SLP_GraphName,";",1)
		For (i=0;i<itemsinlist(NewWFNameList,";");i+=1)
			TraceName=stringFromList(i,NewWFNameList,";")
			Appendtograph /W=$SLP_GraphName $TraceName
		EndFor
		For (i=0;i<itemsinlist(TraceList,";");i+=1)
			TraceName=stringFromList(i,TraceList,";")
			RemoveFromGraph /W=$SLP_GraphName $TraceName
		EndFor
	Elseif (Option==1)
		TraceList=ImageNameList(SLP_GraphName,";")
		For (i=0;i<itemsinlist(NewWFNameList,";");i+=1)
			TraceName=stringFromList(i,NewWFNameList,";")
			AppendImage /W=$SLP_GraphName /G=1 $TraceName
		EndFor
		For (i=0;i<itemsinlist(TraceList,";");i+=1)
			TraceName=stringFromList(i,TraceList,";")
			RemoveImage /W=$SLP_GraphName $TraceName
		EndFor
	ElseIf (Option==2)
		TraceList=TraceNameList(SLP_GraphName,";",1)
		For (i=0;i<itemsinlist(NewWFNameList,";");i+=2)
			TraceName_X=stringFromList(i,NewWFNameList,";")
			TraceName_Y=stringFromList(i+1,NewWFNameList,";")
			Appendtograph /W=$SLP_GraphName $TraceName_Y vs $TraceName_X
		EndFor
		For (i=0;i<itemsinlist(TraceList,";");i+=1)
			TraceName=stringFromList(i,TraceList,";")
			RemoveFromGraph /W=$SLP_GraphName $TraceName
		EndFor
	EndIf
End
	

Function SLP_IXPS_FindDataRow(VolName)
	String VolName
	wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	 //Find the row of the chosen Scan
	FindValue /TEXT=VolName /TXOP=6 SLP_IXPS_ScanListW
	variable Col=floor(V_value/dimsize(SLP_IXPS_ScanListW,0))
	variable DataRow=V_value-col*dimsize(SLP_IXPS_ScanListW,0)
	
	Return DataRow
End


Function SLP_Util_Init()
	string Current_folder=getdatafolder(1)
	NewDataFolder /O root:Package_SLP
	NewDataFolder /O root:Package_SLP:Util
	NewDataFolder /O root:Package_SLP:Util:FindElement
	NewDataFolder /O root:Package_SLP:Util:FindAuger
	NewDataFolder /O root:Package_SLP:Util:WNameSuggest
	NewDataFolder /O root:Package_SLP:Util:AutoUpdateFileList
	
	SetDataFolder root:Package_SLP:Util:FindElement
	make /T/O/N=(0,4) SLP_ResultElements_textW
	
	SetDataFolder root:Package_SLP:Util:FindAuger
	make /T/O/N=(0,4) SLP_ResultAuger_textW

	SetDataFolder root:Package_SLP:Util:WNameSuggest
	string /G WNameSuggestion=""
	
	SetDataFolder root:Package_SLP:Util:AutoUpdateFileList
	make /O/T/N=(0,8) root:Package_SLP:Util:AutoUpdateFileList:W_FileList /WAVE=W_FolderList
	make /O/N=(0,8) root:Package_SLP:Util:AutoUpdateFileList:W_FileList_Sel /WAVE=W_FolderList_Sel
	make /O/N=(150,150) root:Package_SLP:Util:AutoUpdateFileList:M_PreviewedImg
	string /G ImgLocation
	string /G imgExtension=".dat"
	variable /G ImgLoadPreview=0
	variable /G ImgSel=0
	
	
	setdatafolder $Current_folder
End


Function /S SLP_Util_AddNumToDataSet(InputName,DataSetListW)
	//The datasetList wave has to contain names of the datasets in any column
	string InputName
	wave /T DataSetListW
	
	string SuggestedName=InputName
	variable i=1
	string last_char=""
	
	FindValue /TEXT=SuggestedName /TXOP=6 DataSetListW
	If (V_Value!=-1)
		SuggestedName+="_"+num2str(i)
		FindValue /TEXT=SuggestedName /TXOP=6 DataSetListW
		If (V_Value!=-1)
			Do
				SuggestedName=RemoveEnding(SuggestedName)
				If (i<11)
					SuggestedName+=num2str(i)
				Else
					SuggestedName=RemoveEnding(SuggestedName)
					SuggestedName+=num2str(i) //Don't care if there are more than 99 datasets
				Endif
				i+=1	
				FindValue /TEXT=SuggestedName /TXOP=6 DataSetListW
			While (V_Value!=-1)
		Endif
	EndIf
	Return SuggestedName
End

Function SLP_CreateLoadImg() : Panel
	DoWindow /K SLP_LoadImg_Panel_01
	PauseUpdate; Silent 1		// building window...
	
	SVAR ImgLocation=root:Package_SLP:Util:AutoUpdateFileList:imgLocation
	SVAR ImgExtension=root:Package_SLP:Util:AutoUpdateFileList:imgExtension
	NVAR ImgLoadPreview=root:Package_SLP:Util:AutoUpdateFileList:ImgLoadPreview
	
	variable L_edge=50
	variable T_edge=50
	variable L_Margin=10
	
	NewPanel /W=(L_edge,T_edge,290,650) /N=SLP_LoadImg_Panel_01	
	SetDrawLayer UserBack

	SetVariable RawData_Location,pos={L_Margin,5},size={220,15},title="Data location"
	SetVariable RawData_Location,limits={-inf,inf,0},value=imgLocation
	
	Button Refresh,pos={L_Margin,50},size={68,20},fsize=10,title="Refresh",proc=ButtonProc_LoadImg_Refresh
	Button Load,pos={90,50},size={75,20},fsize=10,title="\K(1,16019,65535)Load",proc=ButtonProc_LoadImg_Load
	Button Done,pos={170,50},size={50,20},fsize=10,title="Done",proc=ButtonProc_LoadImg_done
	Button Browse,pos={L_Margin,25},size={68,20},fsize=10,title="Browse..",proc=ButtonProc_LoadImg_Browse
	SetVariable FileType,pos={85,27},size={120,15},title="File type"
	SetVariable FileType,limits={-inf,inf,0},value=ImgExtension
	
	ListBox list0,pos={L_Margin,75},size={219,326},proc=ListBoxProc_LL_FileList
	ListBox list0,listWave=root:Package_SLP:Util:AutoUpdateFileList:W_FileList
	ListBox list0,selWave=root:Package_SLP:Util:AutoUpdateFileList:W_FileList_sel
	ListBox list0,userColumnResize=1,mode= 3,fsize=8,widths={150,75,75,0,0,0,0,0} //Show only filename and modification date
	
	//SetDrawEnv fsize= 8;DelayUpdate
	DrawText L_Margin,415,"\Z08Hold 'Shift' key to select multiple images"
	
	CheckBox Preview,pos={L_Margin,425},size={54,15},title="Preview ",value=ImgLoadPreview,proc=CheckProc_LL_Preview
		
	Display /HOST=SLP_LoadImg_Panel_01 /N=ImgPlot_01 /W=(L_Margin,440,230,590)
	
	ModifyGraph frameStyle=1
End



Function ListBoxProc_LL_FileList(lba) : ListBoxControl
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
			
			If (row>=0)
				NVAR ImgLoadPreview=root:Package_SLP:Util:AutoUpdateFileList:ImgLoadPreview 
				NVAR ImgSel=root:Package_SLP:Util:AutoUpdateFileList:ImgSel
				ImgSel=row
				SVAR ImgLocation=root:Package_SLP:Util:AutoUpdateFileList:imgLocation
				wave/T W_FileList=root:Package_SLP:Util:AutoUpdateFileList:W_FileList
				wave W_FileList_Sel=root:Package_SLP:Util:AutoUpdateFileList:W_FileList_Sel
				wave M_PreviewedImg=root:Package_SLP:Util:AutoUpdateFileList:M_PreviewedImg
			
				String CurrentImageName=stringfromlist(0,ImageNameList("SLP_LoadImg_Panel_01#ImgPlot_01",";"))
				String FileFLocation=ImgLocation+W_FileList[row][0]
				
				If (ImgLoadPreview)
					If (!Stringmatch(CurrentImageName,""))
						removeimage /W=SLP_LoadImg_Panel_01#ImgPlot_01 $CurrentImageName
					Endif
					SLP_Load_LEEM_Img(FileFLocation,"root:Package_SLP:Util:AutoUpdateFileList:M_PreviewedImg")
					Appendimage /W=SLP_LoadImg_Panel_01#ImgPlot_01 M_PreviewedImg
					ModifyGraph /W=SLP_LoadImg_Panel_01#ImgPlot_01 tick=3,noLabel=2,margin=1
				EndIf
			Endif
			
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


Function CheckProc_LL_Preview(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba

	switch( cba.eventCode )
		case 2: // mouse up
			Variable checked = cba.checked
			
			NVAR ImgLoadPreview=root:Package_SLP:Util:AutoUpdateFileList:ImgLoadPreview
			ImgLoadPreview=checked
			
			NVAR ImgSel=root:Package_SLP:Util:AutoUpdateFileList:ImgSel
			
			SVAR ImgLocation=root:Package_SLP:Util:AutoUpdateFileList:imgLocation
			wave/T W_FileList=root:Package_SLP:Util:AutoUpdateFileList:W_FileList
			wave W_FileList_Sel=root:Package_SLP:Util:AutoUpdateFileList:W_FileList_Sel
			wave M_PreviewedImg=root:Package_SLP:Util:AutoUpdateFileList:M_PreviewedImg
		
			String CurrentImageName=stringfromlist(0,ImageNameList("SLP_LoadImg_Panel_01#ImgPlot_01",";"))
			String FileFLocation=ImgLocation+W_FileList[ImgSel][0]
			
			If (!Stringmatch(CurrentImageName,""))
					removeimage /W=SLP_LoadImg_Panel_01#ImgPlot_01 $CurrentImageName
			Endif
			
			If (ImgLoadPreview)
				SLP_Load_LEEM_Img(FileFLocation,"root:Package_SLP:Util:AutoUpdateFileList:M_PreviewedImg")
				Appendimage /W=SLP_LoadImg_Panel_01#ImgPlot_01 M_PreviewedImg
				ModifyGraph /W=SLP_LoadImg_Panel_01#ImgPlot_01 tick=3,noLabel=2,margin=1
			EndIf
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function ButtonProc_LoadImg_Done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K SLP_LoadImg_Panel_01
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LoadImg_Load(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_LL_LoadImg_V2()
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LoadImg_Browse(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			GetFileFolderInfo /D/Q
			SVAR ImgLocation=root:Package_SLP:Util:AutoUpdateFileList:imgLocation
			SVAR imgExtension=root:Package_SLP:Util:AutoUpdateFileList:imgExtension
			ImgLocation=S_Path
			SLP_Util_FileList(ImgLocation,ImgExtension)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_LoadImg_Refresh(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SVAR ImgLocation=root:Package_SLP:Util:AutoUpdateFileList:imgLocation
			SVAR imgExtension=root:Package_SLP:Util:AutoUpdateFileList:imgExtension
			SLP_Util_FileList(ImgLocation,ImgExtension)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function SLP_Util_UpdateFolder(RawDataPath)
	string RawDataPath
	
	//If "", then ask to choose a folder.
	If (stringmatch(RawDataPath,""))
		GetFileFolderInfo /D /Q
		RawDataPath=S_Path
	Endif
	
	NewPath /Q /O SLP_symbPath, RawDataPath
	
	string FolderList=indexedDir(SLP_symbPath,-1,0)
	//print FolderList
	
	FolderList=sortlist(FolderList,";",16) //Option '16' is 'case-insensitive alphanumeric sort that sorts wave0 and wave9 before wave10.'
	
	make /O/T/N=(itemsinlist(FolderList,";"),8) root:Package_SLP:Util:AutoUpdateFileList:W_FolderList /WAVE=W_FolderList
	setDimLabel 1,0,FolderName,W_FolderList
	setDimLabel 1,1,DateCreated,W_FolderList
	setDimLabel 1,2,DateModified,W_FolderList
	setDimLabel 1,3,DateCreated_secs,W_FolderList
	setDimLabel 1,4,DateModified_secs,W_FolderList

	W_FolderList=""
	variable i=0
	For (i=0;i<itemsinlist(FolderList,";");i+=1)
		W_FolderList[i][0]=stringfromlist(i,FolderList,";")
		GetFileFolderInfo /P=SLP_symbPath /Q W_FolderList[i][0]
		W_FolderList[i][1]=secs2date(V_creationDate,2)+" "+secs2time(V_creationDate,3)
		W_FolderList[i][2]=secs2date(V_modificationDate,2)+" "+secs2time(V_modificationDate,3)
		W_FolderList[i][3]=num2str(V_creationDate)
		W_FolderList[i][4]=num2str(V_modificationDate)
	EndFor
End

Function SLP_Util_Create_FileListPanel() :Panel

End

Function SLP_Util_FileList(RawDataPath,Extension)
	string RawDataPath,Extension
	
	//If "", then ask to choose a folder.
	If (stringmatch(RawDataPath,""))
		GetFileFolderInfo /D /Q
		RawDataPath=S_Path
	Endif
	
	NewPath /Q /O SLP_symbPath, RawDataPath
	
	string FileList=indexedFile(SLP_symbPath,-1,Extension)
	
	FileList=sortlist(FileList,";",16) //Option '16' is 'case-insensitive alphanumeric sort that sorts wave0 and wave9 before wave10.'
	
	
	make /O/T/N=(itemsinlist(FileList,";"),8) root:Package_SLP:Util:AutoUpdateFileList:W_FileList /WAVE=W_FileList
	W_FileList=""
	setDimLabel 1,0,FileName,W_FileList
	setDimLabel 1,1,DateModified,W_FileList
	setDimLabel 1,2,DateCreated,W_FileList
	
	variable i=0
	For (i=0;i<itemsinlist(FileList,";");i+=1)
		W_FileList[i][0]=stringfromlist(i,FileList,";")
		GetFileFolderInfo /P=SLP_symbPath /Q W_FileList[i][0]
		W_FileList[i][1]=secs2date(V_modificationDate,0)+" "+secs2time(V_modificationDate,2)
		W_FileList[i][2]=secs2date(V_creationDate,0)+" "+secs2time(V_creationDate,2)
	EndFor
	
	make /O/N=(dimsize(W_FileList,0),dimsize(W_FileList,1)) root:Package_SLP:Util:AutoUpdateFileList:W_FileList_Sel /WAVE=W_FileList_Sel
	W_FileList_Sel=0
End

Function /T SLP_Util_FindElement(PeakPos,FindRange) //PeakPos in B.E.
	variable PeakPos,FindRange
	string OutputTxt=""
	variable Table_Exists_Flg=0
	
	If (Exists("SLP_BE_W"))
		wave /T SLP_BE_W
		Table_Exists_Flg=1
	Else
		DoAlert 1,"No BE data. Find the BE wave?"
		If (V_Flag==1)
			LoadWave
			wave /T SLP_BE_W
			Table_Exists_Flg=1
		EndIf
	Endif
		
	If (Table_Exists_Flg)
		duplicate /T/O/r=[][3] SLP_BE_W SingleBE_txtW
		redimension /N=-1 SingleBE_txtW
		make /O/N=(dimsize(SingleBE_txtW,0)) SingleBE_numW
		SingleBE_numW=str2num(SingleBE_txtW)
		make /T/O/N=(0,4) root:Package_SLP:Util:FindElement:SLP_ResultElements_textW /WAVE=SLP_ResultElements_textW
		
		variable findStep=0.1 //0.1 eV resolution in the XDB database
		FindLevel /Q SingleBE_numW,PeakPos-FindRange
		
		variable i=0 //Index for the Result wave
		variable CurrentPos=0 //Index for the Binding Energy values
		
		For (CurrentPos=ceil(V_LevelX);SingleBE_numW[CurrentPos]<=PeakPos+FindRange;CurrentPos+=1)
			//redimension SLP_ResultElements_textW
			redimension /N=(dimsize(SLP_ResultElements_textW,0)+1,dimsize(SLP_ResultElements_textW,1)) SLP_ResultElements_textW
			SLP_ResultElements_textW[i][]=SLP_BE_W[CurrentPos][q]
			OutputTxt=OutPutTxt+SLP_ResultElements_textW[i][1]+SLP_ResultElements_textW[i][2]+"["+SLP_ResultElements_textW[i][3]+"eV];\r"
			i+=1
		EndFor
		
		killwaves SingleBE_txtW
		killwaves SingleBE_numW
	
	Endif
	
	Return OutputTxt
End

Function /T SLP_Util_FindAuger(PeakPos,FindRange) //PeakPos in K.E.
	variable PeakPos,FindRange
	String OutputTxt=""
	variable Table_Exists_Flg=0

	If (Exists("SLP_Auger_W"))
		wave /T SLP_Auger_W
		Table_Exists_Flg=1
	Else
		DoAlert 1,"No Auger data. Find the Auger binary wave?"
		If (V_Flag==1)
			LoadWave
			wave /T SLP_Auger_W
			Table_Exists_Flg=1
		EndIf
	Endif
	
	If (Table_Exists_Flg)
		duplicate /T/O/r=[][2] SLP_Auger_W SingleAES_txtW
		redimension /N=-1 SingleAES_txtW
		make /O/N=(dimsize(SingleAES_txtW,0)) SingleAES_numW
		SingleAES_numW=str2num(SingleAES_txtW)
		make /T/O/N=(0,4) root:Package_SLP:Util:FindAuger:SLP_ResultAuger_textW /WAVE=SLP_ResultAuger_textW
		
		variable findStep=0.1 //0.1 eV resolution in the XDB database
		FindLevel /Q SingleAES_numW,PeakPos-FindRange
		
		variable i=0 //Index for the Result wave
		variable CurrentPos=0 //Index for the Binding Energy values
		
		For (CurrentPos=ceil(V_LevelX);SingleAES_numW[CurrentPos]<=PeakPos+FindRange;CurrentPos+=1)
			//redimension SLP_ResultElements_textW
			redimension /N=(dimsize(SLP_ResultAuger_textW,0)+1,dimsize(SLP_ResultAuger_textW,1)) SLP_ResultAuger_textW
			SLP_ResultAuger_textW[i][]=SLP_Auger_W[CurrentPos][q]
			OutputTxt=OutPutTxt+SLP_ResultAuger_textW[i][0]+" "+SLP_ResultAuger_textW[i][1]+"["+SLP_ResultAuger_textW[i][2]+"eV];\r"
			i+=1
		EndFor
		
		killwaves SingleAES_txtW
		killwaves SingleAES_numW
	Endif
	
	Return OutputTxt
End

function SLP_Util_Split2D(TwoDW_FName)
//Split 2D wave (e.g. TRXPS scan) into 1D waves
	String TwoDW_FName
	Wave TwoDW=$TwoDW_FName
	
	variable N_Scans=dimsize(TwoDW,1)
	
	variable i=0
	String Index_txt=""
	String NewW_FName=""
	
	For (i=0;i<N_Scans;i+=1)
		sprintf Index_txt,"%03d",i
		NewW_FName=TwoDW_FName+"_"+Index_txt
		duplicate /O/r=[ ][i] TwoDW $NewW_FName /WAVE=NewW
		redimension /N=-1 NewW
	EndFor
End

Function SLP_Util_FitMultiGLAs(DataW_FName,N_Peaks,CoefGuessM_FName,ConstraintW_FName)//,LibraryW_FName)
	String DataW_FName
	Variable N_Peaks
	String CoefGuessM_FName
	String ConstraintW_FName
	//String LibraryW_FName
	
	Wave DataW=$DataW_FName
	Wave CoefGuessM=$CoefGuessM_FName
	Wave ConstraintW=$ConstraintW_FName
	
	String ComponentW_FName=""
	String Constraint_txt=""
	String HoldStr=""
	String PAreaW_FName=DataW_FName+"_PArea"
	Make /O/N=(N_peaks) $PAreaW_FName /WAVE=PAreaW
	
	Make /O/N=(N_peaks,5) GLA_coef_M
	GLA_coef_M=0
	
	Make /T/O/N=0 FitConstraintW
	
	Variable i=0
	Variable j=0
	Variable k=0
	Variable m=0
	String CoefList=""
	String CoefW_Name=""
	String Index_str=""
	//String Fit_str="FuncFit /Q/W=2/NTHR=0/TBOX=768 {"
	//String Fit_str="FuncFit /Q/W=2/NTHR=0 {"
	String Fit_str="FuncFit /W=2/NTHR=0 {"

	For (i=0;i<N_Peaks;i+=1)
		sprintf Index_str,"%02d",i
		CoefW_Name="CoefW_"+Index_str
		Make /O/N=5 $CoefW_Name /Wave=CoefW
		CoefW[]=CoefGuessM[i][p]
		
		//Hold String
		HoldStr=num2str(ConstraintW[0][2][i])+num2str(ConstraintW[1][2][i])+num2str(ConstraintW[2][2][i])+num2str(ConstraintW[3][2][i])+num2str(ConstraintW[4][2][i])

		Fit_str+="{SLP_GLA_FitFunc,"+CoefW_Name+",HOLD=\""+HoldStr+"\"},"		
		
		//Constraints
		For (j=0;j<5;j+=1) //Parameters: Int,Pos,FWHM,Mix,As
			If (!Numtype(ConstraintW[j][0][i]) && !(ConstraintW[j][2][i])) //If HOLD, don't put constraint!
				Constraint_txt="K"+num2str(k)+">="+num2str(ConstraintW[j][0])
				redimension /N=(dimsize(FitConstraintW,0)+1,dimsize(FitConstraintW,1)) FitConstraintW
				FitConstraintW[m]=Constraint_txt
				m+=1
			EndIf
			If (!Numtype(ConstraintW[j][1][i]) && !(ConstraintW[j][2][i])) //If HOLD, don't put constraint!
				Constraint_txt="K"+num2str(k)+"<="+num2str(ConstraintW[j][1])
				redimension /N=(dimsize(FitConstraintW,0)+1,dimsize(FitConstraintW,1)) FitConstraintW
				FitConstraintW[m]=Constraint_txt
				m+=1
			EndIf
			k+=1
		EndFor
		
	EndFor
	Fit_str=RemoveEnding(Fit_str)
	Fit_str+="} "+DataW_FName+" /D"+" /C=FitConstraintW"
	
	DoUpdate
	
//FuncFit /Q/W=2/NTHR=0/TBOX=768 {{SLP_StrightLine,BG_Coef,HOLD=HoldStr_BG},{SLP_InvGLA_FitFunc,GLA1_coef,HOLD=HoldStr_GLA1},{SLP_InvGLA_FitFunc,GLA2_coef,HOLD=HoldStr_GLA2},{SLP_InvGLA_FitFunc,GLA3_coef,HOLD=HoldStr_GLA3}}  ZProfW  /D=$FitZProfW_FName /M=ZProfMskW /C=$FitCoefConstraintsW_FName
	Print Fit_str
	Execute Fit_str
	
	For (i=0;i<N_Peaks;i+=1)
		sprintf Index_str,"%02d",i
		CoefW_Name="CoefW_"+Index_str
		wave CoefW=$CoefW_Name
		ComponentW_FName=DataW_FName+"_"+index_str
		duplicate /O DataW,$ComponentW_FName /Wave=ComponentW
		
		ComponentW=SLP_GLA_Func(CoefW[0],CoefW[1],CoefW[2],CoefW[3],CoefW[4],x)
		
		//appendtograph ComponentW
		
		PAreaW[i]=area(ComponentW)
	
	EndFor
	

End

Function SLP_Util_Make2DWave(xStart,xEnd,xStep,OneDWaveList,ResultW_Name)
	variable xStart,xEnd,xStep
	string OneDWaveList,ResultW_Name
	
	variable N_Step=abs(xStart-xEnd)/xStep+1
	variable N_Wave=itemsinlist(OneDWaveList,",")
	
	make /O/N=(N_Step,N_Wave) $ResultW_Name /Wave=ResultW
	
	variable i,j
	
	String OneDWaveName
	
	For (i=0;i<N_Wave;i+=1)
		OneDWaveName=stringfromlist(i,OneDWaveList,",")
		Wave OneDWave=$OneDWaveName
		
		For (j=0;j<N_Step;j+=1)
			
			ResultW[j][i]=OneDWave(xStart+j*xStep)
		EndFor
		
	EndFor
	
	SetScale /P x,xStart,xStep,ResultW

End

Function /S SLP_Util_WNameSuggest(WName,Alert_Flg,length_Limit)
	//The function correct the non-standard wave names to standard ones.
	//Alert_Flg=1 => Warn with a pop-up message when error occurs
	//The function return a string containing the suggested name.
	//The suggested name is also stored in a global variable in the package folder
	//Error checking done by [CODE: SLP_Util_WNameCheck] 
	string WName
	variable Alert_Flg
	variable length_Limit
	
	SVAR WNameSuggestion=root:Package_SLP:Util:WNameSuggest:WNameSuggestion
	
	variable Error_Code=SLP_Util_WNameCheck(WName,length_Limit)
	string Error_Code_Bin=""
	string Error_Message=""
	
	SPrintf  Error_Code_Bin,"%03b",Error_Code //Convert to binary string
	//print Error_Code_Bin
	//Bit0 = Length error, bit1 = First character error, bit2 = Special character error
	string Suggested_WName=WName
	
	If (stringmatch(Error_Code_Bin[1],"1"))
		Suggested_WName[0]="W_"
		//Print "Start with non-alphabet character"
		Error_Message+="- Start with non-alphabet character\r"
	EndIF
	
	variable i=0
	variable CharNum=0
	variable SpecialCharError_Flg=0
	
	If (stringmatch(Error_Code_Bin[2],"1"))
		Error_Message+="- Use special character(s)\r"
		//Check for the wrong characters and remove them (incl. blank space)
		For (i=0;i<strlen(Suggested_WName);i+=1)
			CharNum=char2num(Suggested_WName[i])
			SpecialCharError_Flg=!((CharNum>=65&&CharNum<=90)||(CharNum>=97&&CharNum<=122)||(CharNum>=48&&CharNum<=57)||(CharNum==95))
			If (SpecialCharError_Flg)
				Suggested_WName=Suggested_WName[0,i-1]+Suggested_WName[i+1,strlen(Suggested_WName)] //Remove the wrong character
				i-=1 //Reduce index by 1 (since the character has been removed)
			Endif
		EndFor
	EndIf
	
	If (stringmatch(Error_Code_Bin[0],"1"))
		Suggested_WName=Suggested_WName[0,30]
		Error_Message+="- Wave name too long.\r"
	EndIF
	
	//Print "Suggested wave name: "+Suggested_WName
	
	If (!stringmatch(Error_Message,"")&&Alert_Flg)
		//Error_Message="Wave name alert:\r"+Error_Message+"Original wave name: "+WName+"\r"+"Suggested wave name: "+Suggested_WName
		Error_Message="Wave name alert:\r"+Error_Message+"Suggested wave name: "+Suggested_WName
		DoAlert /T="Wave name alert" 0,Error_Message
	Endif
	
	WNameSuggestion=Suggested_WName
	
	Return Suggested_WName
End

Function SLP_Util_WNameCheck(WName,length_Limit)
	string WName
	variable length_Limit //For usage flexibility - sometimes subsequent procedures may add a tag to the user's input WaveName text, making it even longer.
	
	//THE IGOR (standard) WAVE NAME MUST FOLLOW:
		//31-character limit
		//Must start with alphabetic characters
		//May contain numeric and underscore
		//Must not contain other special characters or space
		//Case insensitive
	//(Avoid 'liberal' name)
	
	//Check the number of characters (must be <=31)
	variable NameLengthErr_Flg=0
	variable WName_length=strlen(WName)
	If (WName_length>length_Limit)
		NameLengthErr_Flg=1
	Endif
	
	variable i=0
	//Check whether the first character is an alphabet
	variable CharNum=char2num(WName[0])
	variable FirstCharError_Flg=0
	FirstCharError_Flg=!((CharNum>=65&&CharNum<=90)||(CharNum>=97&&CharNum<=122))

	//Check whether there are any special characters or space
	variable SpecialCharError_Flg=0
	For (i=0;i<WName_length;i+=1)
		CharNum=char2num(WName[i])
		SpecialCharError_Flg=!((CharNum>=65&&CharNum<=90)||(CharNum>=97&&CharNum<=122)||(CharNum>=48&&CharNum<=57)||(CharNum==95))
		If (SpecialCharError_Flg)
			Break
		Endif
	EndFor
	//Print "Name length error: "+num2str(NameLengthErr_Flg)
	//Print "First character error "+num2str(FirstCharError_Flg)
	//Print "Special character error"+num2str(SpecialCharError_Flg)
	
	return 2^2*NameLengthErr_Flg+2^1*FirstCharError_Flg+2^0*SpecialCharError_Flg
	//The return code has bit0 = Length error, bit1 = First character error, bit2 = Special character error
End

///From other sources//

Function MDsort(w,keycol, [reversed])
//Sort 2d wave items by selected column
//Copied from http://www.igorexchange.com/node/599
	Wave w
	variable keycol, reversed
 
	variable type
 
	type = Wavetype(w)
 
	make/Y=(type)/free/n=(dimsize(w,0)) key
	make/free/n=(dimsize(w,0)) valindex
 
	if(type == 0)
		Wave/t indirectSource = w
		Wave/t output = key
		output[] = indirectSource[p][keycol]
	else
		Wave indirectSource2 = w
		multithread key[] = indirectSource2[p][keycol]
 	endif
 
	valindex=p
 	if(reversed)
 		sort/a/r key,key,valindex
 	else
		sort/a key,key,valindex
 	endif
 
	if(type == 0)
		duplicate/free indirectSource, M_newtoInsert
		Wave/t output = M_newtoInsert
	 	output[][] = indirectSource[valindex[p]][q]
	 	indirectSource = output
	else
		duplicate/free indirectSource2, M_newtoInsert
	 	multithread M_newtoinsert[][] = indirectSource2[valindex[p]][q]
		multithread indirectSource2 = M_newtoinsert
 	endif 
End

///Probably not used////






Function SLP_InitProgram()
	string slp_Current_folder=getdatafolder(1)
	newdatafolder /O root:Package_SLP
	newdatafolder /O root:Package_SLP:Saved
	
	//SET folder to Package_SLP
	
	setdatafolder root:Package_SLP
	variable /G Init_XPS_flg=1
	variable /G DataSetListWaveSel=0
	string /G CurrentImageName=""
	string /G CurrentLPName=""
	string /G Image_Location=""
	string /G SLP_ImageName=""
	string /G Image_Location=""
	variable /G SLP_LPWidth=10
	make /O/T root:Package_SLP:SLP_DataSetListWave 
	make /O/T root:Package_SLP:SLP_LPListWave
	make /O root:Package_SLP:SLP_xWave
	make /O root:Package_SLP:SLP_yWave
	make /O root:Package_SLP:SLP_W_Int_vs_Time
	
	variable /G LP_ext_flg=0
	variable /G Overwrite_flg=0
	variable /G Recall_Dataset_Sel
	
	variable N_Params=6 //Number of scan parameters
	
	make /O/N=(N_Params,3) /T root:Package_SLP:SLP_XPS_ScanParam /Wave=SLP_XPS_ScanParam
	make /O/N=(N_Params,3) root:Package_SLP:SLP_XPS_ScanParamSel /Wave=SLP_XPS_ScanParamSel

	make /O/T/N=(128,5) root:Package_SLP:SLP_SavedDataSets
	variable /G N_SavedDatasets
	string /G List_SavedDataSets

	setdatafolder $slp_Current_folder
	
	SLP_XPS_ScanParam[0][0]="Start Voltage begin"
	SLP_XPS_ScanParam[1][0]="Start Voltage end"
	SLP_XPS_ScanParam[2][0]="Start Voltage step"
	SLP_XPS_ScanParam[3][0]="Photon energy"
	SLP_XPS_ScanParam[4][0]="Analyser workfunction"
	SLP_XPS_ScanParam[5][0]="Energy dispersion"
	
	SLP_XPS_ScanParam[0][2]="eV"
	SLP_XPS_ScanParam[1][2]="eV"
	SLP_XPS_ScanParam[2][2]="eV"
	SLP_XPS_ScanParam[3][2]="eV"
	SLP_XPS_ScanParam[4][2]="eV"
	SLP_XPS_ScanParam[5][2]="eV/pt"
	
	
	//Set SelWave (editable = 2, middle column)
	variable i=0
	For (i=0;i<N_Params;i+=1)
		SLP_XPS_ScanParamSel[i][0]=0
		SLP_XPS_ScanParamSel[i][1]=2
		SLP_XPS_ScanParamSel[i][2]=0
	Endfor
	
End

Function SLP_SaveDataSet(DataSetName)
	string DataSetName
	
	NVAR LP_ext_flg=root:Package_SLP:LP_ext_flg
	NVAR N_SavedDataSets=root:Package_SLP:N_SavedDataSets
	SVAR List_SavedDataSets=root:Package_SLP:List_SavedDataSets
	SVAR Image_Location=root:Package_SLP:Image_Location
	Wave /T SLP_DataSetListWave=root:Package_SLP:SLP_DataSetListWave
	Wave /T SLP_LPListWave=root:Package_SLP:SLP_LPListWave
	Wave /T SLP_XPS_ScanParam=root:Package_SLP:SLP_XPS_ScanParam
	Wave /T SLP_SavedDataSets=root:Package_SLP:SLP_SavedDataSets
	Wave SLP_W_Int_vs_Time=root:Package_SLP:SLP_W_Int_vs_Time
	NVAR Overwrite_flg=root:Package_SLP:Overwrite_flg
	Wave SLP_xWave=root:Package_SLP:SLP_xWave
	Wave SLP_yWave=root:Package_SLP:SLP_yWave
	
	string slp_Current_folder=getdatafolder(1)
	
	//Check if the input dataset name already exists
	if (whichlistitem(DataSetName,List_SavedDataSets)!=-1)
		 //Ask if user wants to overwrite 
		 SLP_Dataset_save_dialog()	 
		
		 //If not -> exit the function
		 if (Overwrite_flg==0)
		 	return 0
		 Endif
	Endif 
	
	//Create a folder to save dataset
	string new_folder_name="root:Package_SLP:Saved:"+DataSetName
	newdatafolder /O $new_folder_name
	setdatafolder $new_folder_name
	
	duplicate /T/O SLP_DataSetListWave SLP_DataSetListWave_S
	duplicate /T/O SLP_LPListWave SLP_LPListWave_S
	duplicate /T/O SLP_XPS_ScanParam SLP_XPS_ScanParam_S
	duplicate /O SLP_W_Int_vs_Time SLP_W_Int_vs_Time_S
	duplicate /O SLP_xWave SLP_xWave_S
	duplicate /O SLP_yWave SLP_yWave_S
	
	setdatafolder $slp_Current_folder
	
	//Add new item the saved dataset list if it is a new one
	if (Overwrite_flg==0)
		SLP_SavedDataSets[N_SavedDataSets][0]=DataSetName
		SLP_SavedDataSets[N_SavedDataSets][1]=num2str(LP_ext_flg)
		SLP_SavedDataSets[N_SavedDataSets][2]=Image_Location
		
		N_SavedDataSets+=1
		
		//Make a list for datasets
		List_SavedDataSets=AddListItem(DataSetName,List_SavedDataSets,";",999)
			
	Endif
	
	//change the selection to the new one
	PopupMenu PopupMenu_Dataset, value=#"root:Package_SLP:List_SavedDataSets", mode=1+whichlistitem(DataSetName,List_SavedDataSets)		//itemsinlist(List_SavedDataSets)

	//Reset the Overwrite Flag
	Overwrite_flg=0
End

Function SLP_LoadNEXAFS() //slp_filepath)
	//string slp_filepath
	variable refnum
	open /R refnum
	print S_Filename
	
	grep /Q/LIST/E="ROI" S_Filename
	print S_Value
	
 	Loadwave /O/G/D/N=SLP_NEXAFS_data /E=1/K=0/V={"\t,",",",0,1} /L={0,0,0,0,0} S_Path+S_Filename
	//Note: use /G for general text loading /L={0,0,0,0,0,0} for automatic removal of header and footer by Igor.
	
	//print itemsinlist(S_waveNames)
	
	variable slp_NROI= itemsinlist(S_waveNames)-3
	print "No. of ROI(s): "+num2str(slp_NROI)
	
	//string slp_filepath=getdatafolder(1)
	
	//loaddata 
	close refnum


End

function SLP_create_DispXPS_01()
	
	NVAR slp_LPwidth=root:Package_SLP:SLP_LPWidth
	variable /G slp_hv=419 //photon energy (eV)
	variable /G slp_stv=100 //start voltage (eV)
	variable /G slp_Energy_max=20
	variable /G slp_Energy_min=2
	
	wave /T SLP_DataSetListWave=root:Package_SLP:SLP_DataSetListWave
	wave /T SLP_LPListWave=root:Package_SLP:SLP_LPListWave
	wave SLP_xWave=root:Package_SLP:SLP_xWave
	wave SLP_yWave=root:Package_SLP:SLP_yWave
	NVAR DataSetListWaveSel=root:Package_SLP:DataSetListWaveSel
	SVAR CurrentImageName=root:Package_SLP:CurrentImageName
	SVAR List_SavedDataSets=root:Package_SLP:List_SavedDataSets
	SVAR SLP_ImageName=root:Package_SLP:SLP_ImageName
	NVAR Init_XPS_flg=root:Package_SLP:Init_XPS_flg
	NVAR LP_ext_flg=root:Package_SLP:LP_ext_flg
	
	WAVE SLP_W_Int_vs_Time=root:Package_SLP:SLP_W_Int_vs_Time
	
	DataSetListWaveSel=0
	CurrentImageName=SLP_DataSetListWave[DataSetListWaveSel]
	
	DoWindow/K SLP_DispXPS_01
	Newpanel /W=(200,100,1200,700)/N=SLP_DispXPS_01
	
	TitleBox Title_DispXPS_01 title="\Z14SLRI LEEM PEEM Dispersive XPS Data Extraction",pos={5,5},fSize=11, fstyle=1, frame=0
	
	TitleBox Title_DispXPS_02 title="\Z10Draw profile..",pos={5,255},fSize=11, fstyle=1, frame=0
	
	//BUTTONs
	//Done
	Button button_Done title="Done",pos={700,560}, proc=ButtonProc_Done_SLP_DispXPS_01
	
	Button button_Draw title="Draw",pos={10,270}, size={90,20}, proc=ButtonProc_Draw_SLP_DispXPS_01
	Button button_Edit title="Edit",pos={110,270}, size={90,20}, proc=ButtonProc_Edit_SLP_DispXPS_01
	//Button button_Finish title="Finish",pos={10,330},size={200,20}, proc=ButtonProc_Fin_SLP_DispXPS_01
	Button button_PlotLineProfile title="Plot line profile",pos={10,300},size={190,20}, proc=ButtonProc_Plot_SLP_DispXPS_01
	
	Button button_Load title="Load image series...", pos={10,25}, size={150,20}, proc=ButtonProc_Load_SLP_DispXPS_01
	//Button button_Load title="Extract line profiles", pos={10,25}, size={150,20}, proc=ButtonProc_ExtLP_SLP_DispXPS_01
	
	Button button_save title="Save dataset...", pos={170,25}, size={110,20}, proc=ButtonProc_Save_Dataset
	Button button_recall title="Recall dataset", pos={400,25}, size={120,20},proc=ButtonProc_Recall_Dataset
	Button button_delete title="Delete dateset", pos={530,25}, size={120,20}
	
	Button button_Plot_Ivt title="Plot intensity vs. frame..", pos={660,25}, size={180,20}, proc=ButtonProc_Plot_Ivt
	
	//Pop-up Menu
	
	PopupMenu PopupMenu_Dataset, value=#"root:Package_SLP:List_SavedDataSets", pos={290,25}, proc=PopMenuProc
	
	//SETVAR
	SetVariable setvar_LPWidth title="Line profile width",pos={40,330},size={100,20}, bodywidth=50, limits={0,inf,1}, value=slp_LPwidth,proc=SetVarProc_LPWidth_SLP_dXPS2
	
	//DISPLAY AREA
	Display /HOST=SLP_DispXPS_01 /N=Image_SLP_DispXPS_01 /W=(220,50,620,430)
	
	Display /HOST=SLP_DispXPS_01 /N=Image_SLP_DispXPS_02 /W=(220,450,620,590)
	//ModifyGraph /W=SLP_DispXPS_01#Image_SLP_DispXPS_02 margin(left)=32,margin(bottom)=28,margin(right)=5,margin(top)=5
	
	Display /HOST=SLP_DispXPS_01 /N=Image_SLP_DispXPS_03 /W=(640,50,980,250)
	appendtograph /W=SLP_DispXPS_01#Image_SLP_DispXPS_03 SLP_W_Int_vs_Time
	SLP_Format_XPS(slp_GraphName="SLP_DispXPS_01#Image_SLP_DispXPS_03")
	
	//LIST of waves
	//LISTBOX
	wave /T SLP_DataSetListWave=root:Package_SLP:SLP_DataSetListWave 
	ListBox List_Spectra listWave=SLP_DataSetListWave, size={200,200}, pos={5,50}, frame=2,mode=2,proc=ListBoxProc_Img_List
	
	wave /T SLP_XPS_ScanParam=root:Package_SLP:SLP_XPS_ScanParam
	wave /T SLP_XPS_ScanParamSel=root:Package_SLP:SLP_XPS_ScanParamSel
	ListBox List_XPSParam listWave=SLP_XPS_ScanParam, selWave=SLP_XPS_ScanParamSel,editstyle=1,mode=0,widths={110,40,30}, size={200,200}, pos={640,260}, frame=2,mode=2//,proc=ListBoxProc_Img_List
	
	//Showing data
	slp_imageName=SLP_DataSetListWave[0]
	
	//If the program was restarted within Igor, check whether the old data already exist
	if (Init_XPS_flg!=1)
		
		SLP_PLotImage(slp_ImageName)
		//Appendimage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $slp_imageName
		//ModifyImage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $slp_imageName ctab= {*,*,Terrain,0}
		ModifyGraph /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 minor=1,fSize=7,lblRot=0,tkLblRot(left)=90,btLen=4,stLen=2
		SetAxis/W=SLP_DispXPS_01#Image_SLP_DispXPS_01 /A/R left
		
		if (LP_ext_flg==1)
			SLP_Plot_LP(SLP_LPListWave[0])
			appendtograph /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 SLP_yWave vs SLP_xWave
		Endif
		
	Else
		//Init_XPS_flg=0
	Endif
	
		
	CurrentImageName=slp_imageName
	
End

Function PopMenuProc(pa) : PopupMenuControl
	STRUCT WMPopupAction &pa
	NVAR Recall_Dataset_Sel=root:Package_SLP:Recall_Dataset_Sel

	switch( pa.eventCode )
		case 2: // mouse up
			Variable popNum = pa.popNum
			String popStr = pa.popStr
			
			Recall_Dataset_Sel=pa.popNum-1
			
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_Recall_Dataset(Dataset_folder_name)
	string Dataset_folder_name
	
	
	
	string slp_Current_folder=getdatafolder(1)
	setdatafolder root:Package_SLP
	
	string Dataset_folder_path="root:Package_SLP:Saved:"+Dataset_folder_name
	string Dataset_full_path1=Dataset_folder_path+":SLP_DataSetListWave_S"
	string Dataset_full_path2=Dataset_folder_path+":SLP_LPListWave_S"
	string Dataset_full_path3=Dataset_folder_path+":SLP_XPS_ScanParam_S"
	string Dataset_full_path4=Dataset_folder_path+":SLP_W_Int_vs_Time_S"
	string Dataset_full_path5=Dataset_folder_path+":SLP_xWave_S"
	string Dataset_full_path6=Dataset_folder_path+":SLP_yWave_S"
	Duplicate /O/T $Dataset_full_path1, SLP_DataSetListWave
	Duplicate /O $Dataset_full_path2, SLP_LPListWave
	Duplicate /O/T $Dataset_full_path3, SLP_XPS_ScanParam
	Duplicate /O $Dataset_full_path4, SLP_W_Int_vs_Time
	Duplicate /O $Dataset_full_path5 SLP_xWave
	Duplicate /O $Dataset_full_path6 SLP_yWave
	
	setdatafolder $slp_Current_folder
	
	//Select the first item in the listbox
	
	ListBox List_Spectra selrow=0
	
End


Function ButtonProc_Recall_Dataset(ba) : ButtonControl
	STRUCT WMButtonAction &ba	
	
	SVAR List_SavedDataSets=root:Package_SLP:List_SavedDataSets
	NVAR Recall_Dataset_Sel=root:Package_SLP:Recall_Dataset_Sel
	WAVE /T SLP_DataSetListWave=root:Package_SLP:SLP_DataSetListWave
	WAVE /T SLP_SavedDataSets=root:Package_SLP:SLP_SavedDataSets
	Wave /T SLP_LPListWave=root:Package_SLP:SLP_LPListWave
	NVAR LP_ext_flg=root:Package_SLP:LP_ext_flg
	Wave SLP_xWave=root:Package_SLP:SLP_xWave
	Wave SLP_yWave=root:Package_SLP:SLP_yWave
	
	SVAR Image_Location=root:Package_SLP:Image_Location
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			if (LP_ext_flg==1)
				removefromgraph /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 SLP_yWave
			Endif
			
			string Dataset_folder_name=stringfromlist(Recall_Dataset_Sel,List_SavedDataSets)
			LP_ext_flg=str2num(SLP_SavedDataSets[Recall_Dataset_Sel][1])
			SLP_Recall_Dataset(Dataset_folder_name)
			
			Image_Location=SLP_SavedDataSets[Recall_Dataset_Sel][2]
			
			SLP_PlotImage(SLP_DataSetListWave[0])
			
			if (LP_ext_flg==1)
				//[NOTE] putting back the line
				appendtograph  /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 SLP_yWave vs SLP_xWave
				//Plot the line profile
				SLP_Plot_LP(SLP_LPListWave[0])
			Endif
			
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function ButtonProc_Save_Dataset(ba) : ButtonControl
	STRUCT WMButtonAction &ba	
	
	SVAR List_SavedDataSets=root:Package_SLP:List_SavedDataSets
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			string SLP_Dataset_name=""
			prompt SLP_Dataset_name,"Dataset name"
			doprompt "", SLP_Dataset_name
			
			SLP_SaveDataSet(SLP_Dataset_name)
			
			// a weird way of igor to use the list menu..
			//String quote = "\""
			//String list
			//if (CmpStr(IgorInfo(2),"Windows") == 0)
			//	list = quote + List_SavedDataSets + quote
			//else
			//	list = quote + List_SavedDataSets+ quote
			//endif
			//PopupMenu PopupMenu_Dataset, value=#list
			
			
			
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function ButtonProc_Plot_Ivt(ba) : ButtonControl
	STRUCT WMButtonAction &ba	
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			string ivt_Trace_Name=""
			prompt ivt_Trace_Name,"Intensity vs. time trace Name"
			doprompt "", ivt_Trace_Name
			
			wave SLP_W_Int_vs_Time=root:Package_SLP:SLP_W_Int_vs_Time
			duplicate /O SLP_W_Int_vs_Time $ivt_Trace_Name /WAVE=ivt_Plot
			Display ivt_Plot
			SLP_Format_XPS()
			legend
			
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function ButtonProc_Draw_SLP_DispXPS_01(ba) : ButtonControl
	STRUCT WMButtonAction &ba	
	
	//Wave SLP_xWave=root:Package_SLP:SLP_xWave
	//Wave SLP_yWave=root:Package_SLP:SLP_yWave
	
	//string xWave_nme="root:Package_SLP:SLP_xWave"
	//string yWave_nme="root:Package_SLP:SLP_yWave"
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			//Draw the line
			//wave slp_ywave=root:Package_SLP:slp_ywave
			//wave slp_xwave=root:Package_SLP:slp_xwave
			
			//graphwavedraw /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 /O SLP_yWave_tmp,SLP_xWave_tmp
			//duplicate SLP_xWave_tmp, $xWave_nme
			//duplicate SLP_yWave_tmp, $yWave_nme
			//killwaves SLP_xWave_tmp,SLP_yWave_tmp
			string slp_Current_folder=getdatafolder(1)
			setdatafolder root:Package_SLP
			graphwavedraw /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 /O SLP_yWave,SLP_xWave
			setdatafolder $slp_Current_folder
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function ButtonProc_Edit_SLP_DispXPS_01(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			//Draw the line
			//wave ce_ywave
			//graphwaveedit /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 ce_ywave
			
			string slp_Current_folder=getdatafolder(1)
			setdatafolder root:Package_SLP
			graphwaveedit /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 SLP_yWave
			setdatafolder $slp_Current_folder
			
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function ButtonProc_Fin_SLP_DispXPS_01(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	wave SLP_W_Int_vs_Time=root:Package_SLP:SLP_W_Int_vs_Time
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			//Draw the line
			
			graphnormal /W=SLP_DispXPS_01#Image_SLP_DispXPS_01
			SLP_Int_vs_Time()
			
			//Check whether the trace is already there
			variable slp_Trace_exist=itemsinlist(tracenamelist("SLP_DispXPS_01#Image_SLP_DispXPS_03",";",1))
			//Add the Int_vs_time wave if the plot is blank
			If (!slp_Trace_exist)
				appendtograph /W=SLP_DispXPS_01#Image_SLP_DispXPS_03 SLP_W_Int_vs_Time
				 SLP_Format_XPS(slp_GraphName="SLP_DispXPS_01#Image_SLP_DispXPS_03")
			Endif
			
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function ButtonProc_Plot_SLP_DispXPS_01(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	SVAR slp_imageName=root:Package_SLP:SLP_ImageName
	NVAR slp_LPwidth=root:Package_SLP:SLP_LPWidth
	wave SLP_xWave=root:Package_SLP:slp_xwave
	wave SLP_yWave=root:Package_SLP:slp_ywave
	wave /T SLP_LPListWave=root:Package_SLP:SLP_LPListWave
	NVAR DataSetListWaveSel=root:Package_SLP:DataSetListWaveSel
	NVAR LP_ext_flg=root:Package_SLP:LP_ext_flg
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			//Draw the line
			
			SLP_create_LP_all()
			LP_ext_flg=1
			
			string SLP_LP_nme=""
			SLP_LP_nme=SLP_LPListWave[DataSetListWaveSel]
			//Appendtograph /W=SLP_DispXPS_01#Image_SLP_DispXPS_02 $SLP_LP_nme
			SLP_Plot_LP(SLP_LP_nme)
			
			
			SLP_Int_vs_Time()
			
			graphnormal /W=SLP_DispXPS_01#Image_SLP_DispXPS_01
			
			//wave LP_Image=$slp_imageName
			//ImageLineProfile/SC srcWave=LP_Image, xWave=ce_xwave, yWave=ce_ywave, width=slp_LPwidth
			//wave W_ImageLineProfile
			//Appendtograph /W=SLP_DispXPS_01#Image_SLP_DispXPS_02 W_ImageLineProfile
			
			
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function SLP_create_LP_all()
	SVAR slp_imageName=root:Package_SLP:SLP_ImageName
	NVAR slp_LPwidth=root:Package_SLP:SLP_LPWidth
	SVAR Image_Location=root:Package_SLP:Image_Location
	wave SLP_xWave=root:Package_SLP:slp_xwave
	wave SLP_yWave=root:Package_SLP:slp_ywave
	wave /T SLP_DataSetListWave=root:Package_SLP:SLP_DataSetListWave
	wave /T SLP_LPListwave=root:Package_SLP:SLP_LPListWave
	NVAR DataSetListWaveSel=root:Package_SLP:DataSetListWaveSel
	SVAR CurrentImageName=root:Package_SLP:CurrentImageName
	string slp_LP_nme=""
	string SLP_LP_FullName=""
	string SLP_Image_FullName=""
	
	
	variable i=0
	For (i=0;i<dimsize(SLP_DataSetListWave,0);i+=1)
			slp_imageName=SLP_DataSetListWave[i]
			
			slp_LP_nme="LP_"+slp_imageName
			SLP_LP_FullName=Image_Location+":"+slp_LP_nme
			SLP_Image_FullName=Image_Location+":"+slp_imageName
			
			SLP_LPListwave[i]=slp_LP_nme
			wave LP_Image=$SLP_Image_FullName
			ImageLineProfile/SC srcWave=LP_Image, xWave=SLP_xwave, yWave=SLP_ywave, width=slp_LPwidth
			wave W_ImageLineProfile
			duplicate /O W_ImageLineProfile, $SLP_LP_FullName
	
	Endfor
	
	
	NVAR LP_ext_flg=root:Package_SLP:LP_ext_flg
	LP_ext_flg=1
End

Function ButtonProc_Done_SLP_DispXPS_01(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K SLP_DispXPS_01
			
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function ButtonProc_Load_SLP_DispXPS_01(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	NVAR Init_XPS_flg=root:Package_SLP:Init_XPS_flg
	WAVE /T SLP_DataSetListWave=root:Package_SLP:SLP_DataSetListWave
	NVAR DataSetListWaveSel=root:Package_SLP:DataSetListWaveSel
	NVAR LP_ext_flg=root:Package_SLP:LP_ext_flg
	SVAR SLP_ImageName=root:Package_SLP:SLP_ImageName
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_Load_mult_Img()
			
			Init_XPS_flg=0
			DataSetListWaveSel=0
			LP_ext_flg=0
			
			ListBox List_Spectra selrow=0
			
			SLP_ImageName=SLP_DataSetListWave[DataSetListWaveSel]
			
			SLP_PlotImage(slp_imageName)
			
			//Appendimage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $slp_imageName
			//ModifyImage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $slp_imageName ctab= {*,*,Terrain,0}
			//ModifyGraph /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 minor=1,fSize=7,lblRot=0,tkLblRot(left)=90,btLen=4,stLen=2
			//SetAxis/W=SLP_DispXPS_01#Image_SLP_DispXPS_01 /A/R left
			
			
			
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function SetVarProc_LPWidth_SLP_dXPS(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva
	NVAR slp_LPwidth=root:Package_SLP:SLP_LPWidth
	SVAR slp_imageName=root:Package_SLP:SLP_ImageName
	wave SLP_xWave=root:Package_SLP:slp_xwave
	wave SLP_yWave=root:Package_SLP:slp_ywave
	

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			//String sval = sva.sval
			wave LP_Image=$slp_imageName
			ImageLineProfile/SC srcWave=LP_Image, xWave=SLP_xwave, yWave=SLP_ywave, width=slp_LPwidth
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc_LPWidth_SLP_dXPS2(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva
	NVAR slp_LPwidth=root:Package_SLP:slp_LPwidth
	SVAR slp_imageName=root:Package_SLP:slp_ImageName
	wave SLP_xWave=root:Package_SLP:slp_xwave
	wave SLP_yWave=root:Package_SLP:slp_ywave
	

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			//String sval = sva.sval
			wave LP_Image=$slp_imageName
			//ImageLineProfile/SC srcWave=LP_Image, xWave=SLP_xwave, yWave=SLP_ywave, width=slp_LPwidth
			
			SLP_create_LP_all()
			
			SLP_Int_vs_Time()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End



Function SLP_Load_mult_Img()
	
	string slp_basename
	SVAR Image_Location=root:Package_SLP:Image_Location
	
	//Ask the user to identify a folder on the computer
	getfilefolderinfo/D
	
	newpath/O ce_ImagePath S_path
	
	slp_basename=StringFromList(Itemsinlist(S_path,":")-1, S_path ,":")
	
	wave /T SLP_XPS_ScanParam=root:Package_SLP:SLP_XPS_ScanParam
	variable SLP_hv=str2num(SLP_XPS_ScanParam[3][1])
	variable SLP_wf=str2num(SLP_XPS_ScanParam[4][1])
	variable SLP_STV_st=str2num(SLP_XPS_ScanParam[0][1])
	variable SLP_STV_step=str2num(SLP_XPS_ScanParam[2][1])
	
	prompt slp_basename,"Base name of the image waves"
	prompt SLP_hv,"Photon energy (eV)"
	prompt SLP_STV_st,"Start Voltage begin (eV)"
	prompt SLP_STV_step,"Start Voltage step (eV)"
	doprompt "Enter parameters:", slp_basename, SLP_hv,SLP_STV_st,SLP_STV_step
	
	SLP_XPS_ScanParam[3][1]=num2str(SLP_hv)
	SLP_XPS_ScanParam[4][1]=num2str(SLP_wf)
	SLP_XPS_ScanParam[0][1]=num2str(SLP_STV_st)
	SLP_XPS_ScanParam[2][1]=num2str(SLP_STV_step)
	
	
	
	string ImageWaveBaseName="SLP_"+slp_basename
	//ImageWaveBaseName="I06_"+ImageWaveName
	
	string filelist=indexedfile(ce_ImagePath,-1,".tif")
	filelist=sortlist(filelist)
	//print filelist
	
	variable i=0
	string ImageWaveName=""
	string ImageWaveNameTemp=""
	string image_No=""
	variable N_images=itemsinlist(filelist)
	
	make /O /T /N=(N_images) root:Package_SLP:SLP_DataSetListWave /WAVE=SLP_DataSetListWave
	make /O /T /N=(N_images) root:Package_SLP:SLP_LPListWave
	
	string slp_Current_folder=getdatafolder(1)
	
	//SET folder to Package_SLP
	
	NewDataFolder /O $slp_basename
	
	Image_Location=slp_Current_folder+slp_basename
	
	setdatafolder $Image_Location
	
	for (i=0;i<itemsinlist(filelist);i+=1)
		If (i<10)
			image_No="000"+num2str(i)
		Elseif (i<100)
			image_No="00"+num2str(i)
		Elseif (i<1000)
			image_No="0"+num2str(i)
		Endif
		
		imageload /T=tiff /P=ce_ImagePath stringfromlist(i,filelist)
		ImageWaveName=ImageWaveBaseName+"_"+image_No
		//Print S_WaveNames
		//Print ImageWaveName
		
		//Store wave names in SLP_DataSetListWave in the package folder
		SLP_DataSetListWave[i]=ImageWaveName
		
		
		ImageWaveNameTemp=stringfromlist(0,S_WaveNames)
		wave ce_imageload_temp=$ImageWaveNameTemp
		Duplicate /O ce_imageload_temp, $ImageWaveName
		killwaves ce_imageload_temp
		
	Endfor

	setdatafolder slp_Current_folder
End

Function SLP_PlotImage(ImageName)
	string ImageName
	SVAR CurrentImageName=root:Package_SLP:CurrentImageName
	SVAR Image_Location=root:Package_SLP:Image_Location
	//Check whether the plot is blank
	variable N_images=itemsinlist(ImageNameList("SLP_DispXPS_01#Image_SLP_DispXPS_01",";"))
	
	string FullImageName=Image_Location+":"+ImageName
	
	If (N_images!=0)
	
		Appendimage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $FullImageName;delayupdate
		ModifyImage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $ImageName ctab= {45,90,Terrain,0};delayupdate
		removeimage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $CurrentImageName
	Else
		Appendimage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $FullImageName;delayupdate
		ModifyImage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $ImageName ctab= {45,90,Terrain,0};delayupdate
	Endif
	
	CurrentImageName=ImageName

End

Function SLP_PLot_LP(TraceName)
	string TraceName
	SVAR CurrentLPName=root:Package_SLP:CurrentLPName
	NVAR LP_ext_flg=root:Package_SLP:LP_ext_flg
	SVAR Image_Location=root:Package_SLP:Image_Location
	
	//Check whether the plot is blank
	variable N_traces=itemsinlist(TraceNameList("SLP_DispXPS_01#Image_SLP_DispXPS_02",";",1))
	string FullLPName=""
	
	If (LP_ext_flg==1)
		FullLPName=Image_Location+":"+TraceName
		If (N_traces!=0)	
			Appendtograph /W=SLP_DispXPS_01#Image_SLP_DispXPS_02 $FullLPName;delayupdate
			removefromgraph /W=SLP_DispXPS_01#Image_SLP_DispXPS_02 $CurrentLPName
		Else
			Appendtograph /W=SLP_DispXPS_01#Image_SLP_DispXPS_02 $FullLPName;delayupdate
		Endif
	Endif
	
	CurrentLPName=TraceName
	
End

Function ListBoxProc_Img_List(lba) : ListBoxControl
	STRUCT WMListboxAction &lba
	
	Variable row = lba.row
	Variable col = lba.col
	WAVE/T/Z listWave = lba.listWave
	WAVE/Z selWave = lba.selWave
	
	
	wave /T SLP_DataSetListWave=root:Package_SLP:SLP_DataSetListWave
	wave /T SLP_LPListWave=root:Package_SLP:SLP_LPListWave
	NVAR DataSetListWaveSel=root:Package_SLP:DataSetListWaveSel //i.e. previous row selection
	SVAR CurrentImageName=root:Package_SLP:CurrentImageName
	SVAR CurrentLPName=root:Package_SLP:CurrentLPName
	SVAR Image_Location=root:Package_SLP:Image_Location
	NVAR LP_ext_flg=root:Package_SLP:LP_ext_flg
	if (row!=-1)
		string slp_imagename=SLP_DataSetListWave[row]
		string slp_LP_nme=SLP_LPListWave[row]
		string slp_prev_LP_nme=SLP_LPListWave[DataSetListWaveSel]
		string slp_Full_ImageName=Image_Location+":"+slp_imagename
		string slp_Full_LP_nme=Image_Location+":"+slp_LP_nme
	
		switch( lba.eventCode )
			case -1: // control being killed
				break
			case 4: // mouse down
				
				SLP_PlotImage(SLP_DataSetListWave[row])
				
				//Appendimage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $slp_imageName;delayupdate
				//ModifyImage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $slp_imageName ctab= {45,90,Terrain,0};delayupdate
				//removeimage /W=SLP_DispXPS_01#Image_SLP_DispXPS_01 $CurrentImageName
				
				if (LP_ext_flg==1)
					
					SLP_Plot_LP(SLP_LPListWave[row])
					
					//Appendtograph /W=SLP_DispXPS_01#Image_SLP_DispXPS_02 $slp_Full_LP_nme
					//removefromgraph /W=SLP_DispXPS_01#Image_SLP_DispXPS_02 $slp_prev_LP_nme
					//CurrentLPName=slp_LP_nme
				Endif
				
				//Update indices to the new row
				DataSetListWaveSel=row
				CurrentImageName=slp_imageName
				
				
	
			
				break
				
			case 3: // double click
				break
			//case 4: // cell selection
			case 5: // cell selection plus shift key
				break
			case 6: // begin edit
				break
			case 7: // finish edit
				break
			case 13: // checkbox clicked (Igor 6.2 or later)
				break
		endswitch
	
	endif
	
	return 0
End



Function ButtonProc_ExtLP_SLP_DispXPS_01(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	wave SLP_W_Int_vs_Time=root:Package_SLP:SLP_W_Int_vs_Time
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			
			SLP_create_LP_all()
			
			
			graphnormal /W=SLP_DispXPS_01#Image_SLP_DispXPS_01
			SLP_Int_vs_Time()
			
			
			//Check whether the trace is already there
			//variable slp_Trace_exist=itemsinlist(tracenamelist("SLP_DispXPS_01#Image_SLP_DispXPS_03",";",1))
			//Add the Int_vs_time wave if the plot is blank
			//If (!slp_Trace_exist)
			//	appendtograph /W=SLP_DispXPS_01#Image_SLP_DispXPS_03 SLP_W_Int_vs_Time
			//	 SLP_Format_XPS(slp_GraphName="SLP_DispXPS_01#Image_SLP_DispXPS_03")
			//Endif
			
			
			break
		case -1: // control being killed
			break
	endswitch
	
	return 0
End

Function SLP_Int_vs_Time()
	wave /T SLP_LPListWave=root:Package_SLP:SLP_LPListWave
	wave /T SLP_XPS_ScanParam=root:Package_SLP:SLP_XPS_ScanParam
	variable N_LPwaves=dimsize(SLP_LPListWave,0)
	variable i=0
	
	SVAR Image_Location=root:Package_SLP:Image_Location
	
	make /O /N=(N_LPwaves) root:Package_SLP:SLP_W_Int_vs_Time /WAVE=SLP_W_Int_vs_Time
	
	SLP_W_Int_vs_Time=0
	
	String LP_nme=""
	String LP_Full_nme=""
	variable Sum_tmp=0
	
	For (i=0;i<N_LPwaves;i+=1)
		LP_nme=SLP_LPListWave[i]
		LP_Full_nme=Image_Location+":"+LP_nme
		wave LP_tmp=$LP_Full_nme
		Sum_tmp=sum(LP_tmp)
		SLP_W_Int_vs_Time[i]=Sum_tmp
	
	Endfor
	//display SLP_W_Int_vs_Time
	
	//SET SCALE by using XPS parameters
	variable SLP_hv=str2num(SLP_XPS_ScanParam[3][1])
	variable SLP_wf=str2num(SLP_XPS_ScanParam[4][1])
	variable SLP_STV_st=str2num(SLP_XPS_ScanParam[0][1])
	variable SLP_STV_step=str2num(SLP_XPS_ScanParam[2][1])
	
	setscale /P x (SLP_hv-SLP_STV_st),(SLP_STV_step*-1),"", SLP_W_Int_vs_Time
	

End

Function SLP_Format_XPS([slp_GraphName]) //To use the optional arguments -> SLP_Format_XPS(slp_GraphName="GraphX")
	string slp_GraphName
	//print exists(slp_GraphName)
	
	if (!ParamIsDefault(slp_GraphName)) //ParamIsDefault checks whether user use the optional arguments)
		setaxis  /W=$slp_GraphName /A/R bottom
		ModifyGraph /W=$slp_GraphName  tick=2,mirror=1
		Label  /W=$slp_GraphName bottom "Binding energy"
		Label  /W=$slp_GraphName left "Intensity (a.u.)"
		Legend
	Else
		setaxis  /A/R bottom
		ModifyGraph  tick=2,mirror=1
		Label  bottom "Binding energy"
		Label  left "Intensity (a.u.)"
		//Legend
	Endif

End

Function SLP_Dataset_save_dialog()
	NewPanel /W=(50,50,250,140) /N=SLP_Save_dialog
	DrawText 40,30,"Dataset already exists"
	Button button1,pos={10,45},size={80,25},title="Overwrite",proc = Save_dialog_kill1
	Button button2,pos={100,45},size={80,25},title="Cancel",proc = Save_dialog_kill2
	PauseForUser SLP_Save_dialog
End
Function Save_dialog_kill1(ctrlName) : ButtonControl
	String ctrlName
	NVAR Overwrite_flg=root:Package_SLP:Overwrite_flg
	Overwrite_flg=1
	KillWindow SLP_Save_dialog
End
Function Save_dialog_kill2(ctrlName) : ButtonControl
	String ctrlName
	NVAR Overwrite_flg=root:Package_SLP:Overwrite_flg
	Overwrite_flg=0
	KillWindow SLP_Save_dialog
End


//////////////////// ////////////////// //////////////////////////////
/////////////////// // WF EXTRACTION // //////////////////////////////
////////////////// ////////////////// //////////////////////////////

Function SLP_Load_MultImg2Vol()
	
	//Ask the user to identify a folder on the computer
	getfilefolderinfo/D
	newpath/O ce_ImagePath S_path
	
	string SLP_VolName=StringFromList(Itemsinlist(S_path,":")-1, S_path ,":")
	variable SLP_hv
	variable SLP_wf
	variable SLP_STV_st
	variable SLP_STV_step
	
	prompt SLP_VolName,"Name of the volume"
	prompt SLP_hv,"Photon energy (eV)"
	prompt SLP_STV_st,"Start Voltage begin (eV)"
	prompt SLP_STV_step,"Start Voltage step (eV)"
	doprompt "Enter parameters:", SLP_VolName, SLP_hv,SLP_STV_st,SLP_STV_step
	
	
	string filelist=indexedfile(ce_ImagePath,-1,".tif")
	filelist=sortlist(filelist)
	
	variable i=0
	variable N_images=itemsinlist(filelist)
	
	imageload /T=tiff /P=ce_ImagePath stringfromlist(0,filelist)
	string ImageWaveName=stringfromlist(0,S_WaveNames)
	Wave SLP_ImgWave=$ImageWaveName
	string SLP_IntgName=SLP_VolName+"_Intg"
	
	make /O /N=(dimsize(SLP_ImgWave,0),dimsize(SLP_ImgWave,1),N_images) $SLP_VolName /WAVE=SLP_ImgVolume
	
	make /O /N=(dimsize(SLP_ImgWave,0),dimsize(SLP_ImgWave,1)) $SLP_IntgName /WAVE=SLP_ImgIntegrate
	SLP_ImgIntegrate=0
	
	for (i=0;i<itemsinlist(filelist);i+=1)
		
		imageload /T=tiff /P=ce_ImagePath stringfromlist(i,filelist)
		ImageWaveName=stringfromlist(0,S_WaveNames)
		Wave SLP_ImgWave=$ImageWaveName
		
		SLP_ImgVolume[][][i]=SLP_ImgWave[p][q]
		SLP_ImgIntegrate[][]+=SLP_ImgWave[p][q]
		
		killwaves SLP_ImgWave
		
	Endfor
	
	SLP_ImgIntegrate/=i //Average the intensity
	
	SetScale /P z,SLP_STV_st,SLP_STV_step,SLP_ImgVolume
	
End

Function SLP_Extract_ZProfile(Vol_WaveName,Vol_x,Vol_y,Width,stv_st,stv_step)
	string Vol_WaveName
	variable Vol_x,Vol_y
	variable Width
	variable stv_st
	variable stv_step
	
	WAVE Vol_Wave=$Vol_WaveName
	
	make /O /N=(dimsize(Vol_Wave,2)) ZProfile_Wave
	make /O /N=(dimsize(Vol_Wave,2)) ZProfile_Wave_tmp

	
	ZProfile_Wave=0
	
	variable i
	variable j
	variable k=0
	
	For (i=round(Vol_x-Width/2);i<round(Vol_x+Width/2);i+=1)
		For (j=round(Vol_y-Width/2);j<round(Vol_y+Width/2);j+=1)
			if (i>=0&&j>=0)
				ZProfile_Wave_tmp[]=Vol_Wave[i][j][p]
				ZProfile_Wave+=ZProfile_Wave_tmp
				k+=1
			Endif
		EndFor
	EndFor
	
	ZProfile_Wave/=k //Average the intensity
	
	//Set scale for 31.01.2017 data [TODO]
	//setscale /P x,93,-0.05,ZProfile_Wave
	
	//Set scale for WF31 (27.01.2017, ID2019-3)
	//setscale /P x,-1.5,0.05,ZProfile_Wave
	
	//Set scale for WF07 (26.01.2017, ID2019-3)
	setscale /P x,stv_st,stv_step,ZProfile_Wave
	
	//Display ZProfile_Wave
End



Function SLP_Extract_PeakPos(Vol_WaveName,stv_st,stv_step)
	string Vol_WaveName
	variable stv_st,stv_step
	
	variable i=0
	variable j=0
	variable dX=0
	
	variable Scale=5

	WAVE Vol_Wave=$Vol_WaveName
	Wave Bin44_Mask
	Make /O/N=(floor(dimsize(Vol_Wave,0)/Scale),floor(dimsize(Vol_Wave,1)/Scale)) Result_Wave
	
	For (i=0;i<dimsize(Vol_Wave,0);i+=Scale)
		For (j=0;j<dimsize(Vol_Wave,1);j+=Scale)
			If (Bin44_Mask[i][j])
				SLP_Extract_ZProfile(Vol_WaveName,i,j,10,stv_st,stv_step)
				//Wave ZProfile_Wave
				dX=SLP_2GLAs_Fit("ZProfile_Wave")
				Result_Wave[i/scale][j/scale]=dX
			Else
				Result_Wave[i/scale][j/scale]=0
			Endif
		EndFor
	EndFor
	
	NewImage Result_Wave

End

Function SLP_Extract_PeakPos2(Vol_WaveName,Scale,ScrnMask_WName,stv_st,stv_step)
	string Vol_WaveName
	variable Scale
	string ScrnMask_WName
	variable stv_st
	variable stv_step
	
	variable i=0
	variable j=0
	variable dX=0
	
	WAVE Vol_Wave=$Vol_WaveName
	Wave ScrnMask_Wave=$ScrnMask_WName
	SLP_Extract_ZProfile(Vol_WaveName,0,0,1,stv_st,stv_step)
	Wave ZProfile_Wave
	duplicate /O ZProfile_Wave,ZProfile_Mask_Wave
	
	Make /O/N=(floor(dimsize(Vol_Wave,0)/Scale),floor(dimsize(Vol_Wave,1)/Scale)) Result_Wave
	Result_Wave=0
	
	NewImage /N=Cutoff Result_Wave
	ModifyGraph width=400,height=300,margin(right)=100
	string ImageName=stringfromlist(0,ImageNameList("Cutoff", ";" ))
	ModifyImage /W=Cutoff $ImageName ctab= {dimoffset(ZProfile_Wave,0),dimoffset(ZProfile_Wave,0)+dimdelta(ZProfile_Wave,0)*dimsize(ZProfile_Wave,0),Rainbow,0}
	ColorScale/C/N=text0/X=-20.00/Y=5.00
	
	variable ZProfile_PeakPos=0
	
	For (i=0;i<dimsize(Vol_Wave,0);i+=Scale)
		For (j=0;j<dimsize(Vol_Wave,1);j+=Scale)
			If (ScrnMask_Wave[i][j])
				SLP_Extract_ZProfile(Vol_WaveName,i,j,10,stv_st,stv_step)
				
				//Wave ZProfile_Wave
				dX=SLP_2GLAs_Fit("ZProfile_Wave")
				Result_Wave[i/scale][j/scale]=dX
			Else
				Result_Wave[i/scale][j/scale]=0
			Endif
		EndFor
	EndFor
	
End

Function SLP_Extract_CutOff(Vol_WaveName,Scale,ScrnMask_WName,stv_st,stv_step)
	string Vol_WaveName
	variable Scale
	string ScrnMask_WName
	variable stv_st
	variable stv_step
	
	variable i=0
	variable j=0
	variable dX=0
	
	WAVE Vol_Wave=$Vol_WaveName
	Wave ScrnMask_Wave=$ScrnMask_WName
	SLP_Extract_ZProfile(Vol_WaveName,0,0,1,stv_st,stv_step)
	Wave ZProfile_Wave
	duplicate /O ZProfile_Wave,ZProfile_Mask_Wave
	
	Make /O/N=(floor(dimsize(Vol_Wave,0)/Scale),floor(dimsize(Vol_Wave,1)/Scale)) Result_Wave
	Result_Wave=0
	
	NewImage /N=Cutoff Result_Wave
	ModifyGraph width=400,height=300,margin(right)=100
	string ImageName=stringfromlist(0,ImageNameList("Cutoff", ";" ))
	ModifyImage /W=Cutoff $ImageName ctab= {dimoffset(ZProfile_Wave,0),dimoffset(ZProfile_Wave,0)+dimdelta(ZProfile_Wave,0)*dimsize(ZProfile_Wave,0),Rainbow,0}
	ColorScale/C/N=text0/X=-20.00/Y=5.00
	
	variable ZProfile_PeakPos=0
	
	For (i=0;i<dimsize(Vol_Wave,0);i+=Scale)
		For (j=0;j<dimsize(Vol_Wave,1);j+=Scale)
			If (ScrnMask_Wave[i][j])
				SLP_Extract_ZProfile(Vol_WaveName,i,j,10,stv_st,stv_step)
				
				//Update ZProfile Mask
				wavestats /Q ZProfile_Wave
				ZProfile_PeakPos=x2pnt(ZProfile_Wave,V_maxloc)
				ZProfile_Mask_Wave=0;ZProfile_Mask_Wave[0,ZProfile_PeakPos]=1
				
				//Wave ZProfile_Wave
				dX=SLP_ERFC_Fit("ZProfile_Wave")
				Result_Wave[i/scale][j/scale]=dX
			Else
				Result_Wave[i/scale][j/scale]=0
			Endif
		EndFor
	EndFor
	
End

Function ColorScalePanel()
	DoWindow /K SLP_ColorScalePanel
	NewPanel /W=(200,300,500,420) /N=SLP_ColorScalePanel

	Button Button_Done,pos={240,30},size={50,20}, Fsize=10,title="Done",proc=ButtonProc_ColorScale_done

	Wave ZProfile_Wave
	variable MinValue=dimoffset(ZProfile_Wave,0)
	variable MaxValue=dimoffset(ZProfile_Wave,0)+dimdelta(ZProfile_Wave,0)*dimsize(ZProfile_Wave,0)
	variable /G SetValue_Min
	variable /G SetValue_Max
	
	DrawText 5,20,"\Z12Adjust colour scale"
	DrawText 5,40,"Min:"
	DrawText 5,90,"Max:"
	
	Slider Slider_MinValue,pos={35,25},size={200,30}, title="Min value",vert=0,limits={MinValue,MaxValue,0.01},proc=SliderProc_Min,ticks=20,value=MinValue
	Slider Slider_MaxValue,pos={35,75},size={200,30}, title="Max value",vert=0,limits={MinValue,MaxValue,0.01},proc=SliderProc_Max,ticks=20,value=MaxValue
	
	//ModifyImage /W=Cutoff $ImageName ctab= {SetValue_Min,SetValue_Max,Rainbow,0}
End

Function ButtonProc_ColorScale_done(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K SLP_ColorScalePanel
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SliderProc_Min(sa) : SliderControl
	STRUCT WMSliderAction &sa
	
	NVAR SetValue_Min
	NVAR SetValue_Max
	
	switch( sa.eventCode )
		case -1: // control being killed
			break
		default:
			if( sa.eventCode & 1 ) // value set
				Variable curval = sa.curval
				SetValue_Min=curval
				string ImageName=stringfromlist(0,ImageNameList("Cutoff", ";" ))
				ModifyImage /W=Cutoff $ImageName ctab= {SetValue_Min,SetValue_Max,Rainbow,0}
			endif
			break
	endswitch

	return 0
End

Function SliderProc_Max(sa) : SliderControl
	STRUCT WMSliderAction &sa
	
	NVAR SetValue_Min
	NVAR SetValue_Max
	
	switch( sa.eventCode )
		case -1: // control being killed
			break
		default:
			if( sa.eventCode & 1 ) // value set
				Variable curval = sa.curval
				SetValue_Max=curval
				string ImageName=stringfromlist(0,ImageNameList("Cutoff", ";" ))
				ModifyImage /W=Cutoff $ImageName ctab= {SetValue_Min,SetValue_Max,Rainbow,0}
			endif
			break
	endswitch

	return 0
End

Function SLP_ERFC_Fit(WF_WaveName)
	string WF_WaveName
	
	WAVE WF_Wave=$WF_WaveName
	WAVE ZProfile_Mask_Wave
	Wave ZProfile_Wave

	Make/D/N=4/O W_coef
	
	//Automatic guess of the cutoff position 
	variable Guess_Cutoff_pos=0
	wavestats /Q ZProfile_Wave
	Guess_Cutoff_pos=V_maxloc-0.25
	
	W_coef[0] = {40,60,-0.25,0.2}
	FuncFit /Q/NTHR=0/TBOX=768 ce_ERFC W_coef  WF_Wave /M=ZProfile_Mask_Wave /D 
	
	//Print "dx = "+ num2str(W_Coef[2])
	return W_Coef[2]
End

Function SLP_2GLAs_Fit(WF_WaveName)
	string WF_WaveName
	
	WAVE WF_Wave=$WF_WaveName
	
	Make /O/D/N=2 BG_Coef
	Make /O/D/N=5 GLA1_coef
	Make /O/D/N=5 GLA2_coef
	BG_Coef[0] = {28,0.28}
	GLA1_coef[0] = {2,78,0.9,0.9,0.9}
	GLA2_coef[0] = {1,81.5,0.9,0.9,0.9}
	Wave Mask_Wave
	Wave /T Constraint_W
	
	//FuncFit /Q/NTHR=0/TBOX=768 {{line,BG_Coef},{SLP_GLA_FitFunc,GLA1_coef},{SLP_GLA_FitFunc,GLA2_coef}}  WF_Wave  /D /M=Mask_Wave //C=Constraint_W
	FuncFit /Q/NTHR=0/TBOX=768 {{line,BG_Coef},{SLP_GLA_FitFunc,GLA1_coef},{SLP_GLA_FitFunc,GLA2_coef}}  WF_Wave  /D /M=Mask_Wave /C=Constraint_W
	
	//print "Peak position = "+num2str(GLA1_coef[1])
	
	return GLA1_coef[1]
End

Function ce_ERFC(w,x) : FitFunc
	Wave w
	Variable x

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(x) = A* erfc((x-x0)/Width)+C
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ x
	//CurveFitDialog/ Coefficients 4
	//CurveFitDialog/ w[0] = A
	//CurveFitDialog/ w[1] = C
	//CurveFitDialog/ w[2] = x0
	//CurveFitDialog/ w[3] = Width

	return w[0]* erfc((x-w[2])/w[3])+w[1]
End

Function SLP_StrightLine(w,x) : FitFunc
	Wave w
	Variable x

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(x) = a*x+C
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ x
	//CurveFitDialog/ Coefficients 2
	//CurveFitDialog/ w[0] = C
	//CurveFitDialog/ w[1] = a

	return w[1]*x+w[0]
End

Function SLP_InvGLA_Func(int,pos,fwhm,mix,as,E)
	//For fitting K.E. (assymtry on the low x side)
	//Based on Andrey S. GLA function
	Variable int,pos,fwhm,mix,as// 5 coefficients: int,pos,fwhm,mix,as
	Variable E //To be used as independent variable
	Variable X, peak, peak_as
	
// peak
	X = E - pos
	peak = exp( -2.772589 * (1-mix) * ( X/ fwhm )^2  ) / (4 * mix * ( X / fwhm)^2  +  1 )
// asymm. peak
//
// exponential asymmetry:	
	if (X < 0) //Inverse//
		peak_as = peak * (peak + (1 - peak) * exp(as*(abs(X)) / fwhm) )
	else
		peak_as = peak
	endif
	
	//Add intensity scaling before returing the value
	return peak_as*int
End



Function SLP_GLA_Func(int,pos,fwhm,mix,as,E)
	//Based on Andrey S. GLA function
	Variable int,pos,fwhm,mix,as// 5 coefficients: int,pos,fwhm,mix,as
	Variable E //To be used as independent variable
	Variable X, peak, peak_as
	
// peak
	X = E - pos
	peak = exp( -2.772589 * (1-mix) * ( X/ fwhm )^2  ) / (4 * mix * ( X / fwhm)^2  +  1 )
// asymm. peak
//
// exponential asymmetry:	
	if (X > 0)
		peak_as = peak * (peak + (1 - peak) * exp(as*X / fwhm) )
	else
		peak_as = peak
	endif
	
	//Add intensity scaling before returing the value
	return peak_as*int
End

Function SLP_GLA_FitFunc(w,E) : FitFunc
	Wave w
	Variable E

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(E) = SLP_GLA_Func(int,pos,fwhm,mix,as,E)
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ E
	//CurveFitDialog/ Coefficients 5
	//CurveFitDialog/ w[0] = int
	//CurveFitDialog/ w[1] = pos
	//CurveFitDialog/ w[2] = fwhm
	//CurveFitDialog/ w[3] = mix
	//CurveFitDialog/ w[4] = as

	return SLP_GLA_Func(w[0],w[1],w[2],w[3],w[4],E)
End

Function SLP_InvGLA_FitFunc(w,E) : FitFunc
	Wave w
	Variable E

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(E) = SLP_GLA_Func(int,pos,fwhm,mix,as,E)
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ E
	//CurveFitDialog/ Coefficients 5
	//CurveFitDialog/ w[0] = int
	//CurveFitDialog/ w[1] = pos
	//CurveFitDialog/ w[2] = fwhm
	//CurveFitDialog/ w[3] = mix
	//CurveFitDialog/ w[4] = as

	return SLP_InvGLA_Func(w[0],w[1],w[2],w[3],w[4],E)
End

Function SLP_Func_ErfStep(int,pos,width,atten,level,E)
	//Based on Andrey S. GLA function
	Variable int,pos,width,atten,level,E
	Variable ErfStep
	
	ErfStep=(int/2)*erf((E-pos)/width)*exp(1/(E*atten))+level+int/2
	
	return ErfStep
End

Function ErfStep(w,x) : FitFunc
	Wave w
	Variable x

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(x) = SLP_Func_ErfStep(int,pos,width,atten,level,x)
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ x
	//CurveFitDialog/ Coefficients 5
	//CurveFitDialog/ w[0] = int
	//CurveFitDialog/ w[1] = pos
	//CurveFitDialog/ w[2] = width
	//CurveFitDialog/ w[3] = atten
	//CurveFitDialog/ w[4] = level

	return SLP_Func_ErfStep(w[0],w[1],w[2],w[3],w[4],x)
End

function WF_Resize()
 
		string inputwave						// for input wave
 
	string list=wavelist("*",";","DIMS:2")			// only find image stacks
 
	prompt inputwave, "Wave Select", popup list	// prompt for input wave
	doprompt "Resize", inputwave
			if(V_flag==1)
			abort
		endif
 
	wave input=$inputwave	
 
	variable x=dimsize(input,0)				// current size of the x dimension
	variable y=dimsize(input,1)				// current size of the y dimension
 
	variable xnew = x							// variables for the new pixels, set to display the old ones in the prompt
	variable ynew = y
 
	prompt xnew, "new x pixels"			
	prompt ynew, "new y pixels"
	doprompt "new dimensions", xnew, ynew
			if(V_flag==1)
			abort
		endif
 
	string newname=inputwave+"_SZ"			// output wave name
 
	variable nx= (xnew-1)/(x-1)					// calc for rescaling
	variable ny=(ynew-1)/(y-1)
 
 
	imageinterpolate/F={nx,ny}/DEST=$newname bilinear input   // image interpolation
 
 
end


//////////////////////////////////////////////////////
/////////////DISP XPS EXTRACTION (stand alone)///////////
/////////////////////////////////////////////////////

//#pragma rtGlobals=3		// Use modern global access method and strict wave access.

//Ver. ce20170214a - Can extract XPS spectrum automatically

//Todos:
//	- User's interface
//	- Folder organisation
//		- Indv. PLineCoord wave for each scan
//	- Default parameters
//	- Raw data deleting
//		- Raw data location records
//	- Universal image position
//		- The dispersie line should be inside the screen
//		- Use screen mask
//		- Absolute position (real MCP size)

Function SLP_Create_FindDispersiveLine() : Panel
	
	Dowindow /K Find_DispLine_Panel_01
	PauseUpdate; Silent 1		// building window...
	NewPanel /W=(275,100,1100,700) /N=Find_DispLine_Panel_01
	
	variable P_PosX=530
	variable P_PosY=30
	Variable P_ColSize=100
	Variable P_RowSize=20
	variable P_GapSize=20
	
	
	//ShowTools/A
	SetDrawLayer UserBack
	//DrawText 480,60,"\Z10Saved screen position"
	//DrawText 360,60,"\Z10New screen position"
	SetDrawEnv fsize= 14
	DrawText 9,25,"Find dispersive line"
	DrawText 16,45,"Threshold"
	DrawText 184,45,"Screen area"
	
	Button button1,pos={310,220},size={200,20},title="Create lines",proc=ButtonProc_CDL_Create
	Button button2,pos={520,220},size={60,20},title="Cancel",proc=ButtonProc_CDL_Cancel	
	
	//SLP_DispXPS_Extract
	//(Vol_WaveName,Threshold,MinSize,Offset,LP_Length,LP_Width,N_Lines,Disp_Factor, 
	//CenterPoint_X, CenterPoint_Y,STV_st,STV_step)
	
	SetVariable SetVar_Threshold,pos={P_PosX+0*(P_ColSize+P_GapSize),P_PosY+0*(P_RoWSize)},size={P_ColSize,P_RowSize},title="Threshold",value= root:Package_SLP:DispXPS:Threshold
	SetVariable SetVar_MinSize,pos={P_PosX+0*(P_ColSize+P_GapSize),P_PosY+1*(P_RoWSize)},size={P_ColSize,P_RowSize},title="Min. Size",value= root:Package_SLP:DispXPS:MinSize
	SetVariable SetVar_Offset,pos={P_PosX+0*(P_ColSize+P_GapSize),P_PosY+2*(P_RoWSize)},size={P_ColSize,P_RowSize},title="Offset",value= root:Package_SLP:DispXPS:Offset
	SetVariable SetVar_LPLength,pos={P_PosX+0*(P_ColSize+P_GapSize),P_PosY+3*(P_RoWSize)},size={P_ColSize,P_RowSize},title="LP Length",value= root:Package_SLP:DispXPS:LPLength
	SetVariable SetVar_LPWidth,pos={P_PosX+0*(P_ColSize+P_GapSize),P_PosY+4*(P_RoWSize)},size={P_ColSize,P_RowSize},title="LP Width",value= root:Package_SLP:DispXPS:LPWidth
	SetVariable SetVar_NLines,pos={P_PosX+1*(P_ColSize+P_GapSize),P_PosY+0*(P_RoWSize)},size={P_ColSize,P_RowSize},title="No. of Lines",value= root:Package_SLP:DispXPS:NLines
	SetVariable SetVar_DispFactor,pos={P_PosX+1*(P_ColSize+P_GapSize),P_PosY+1*(P_RoWSize)},size={P_ColSize,P_RowSize},title="Disp. Factor",value= root:Package_SLP:DispXPS:DispFactor
	SetVariable SetVar_CenterPointX,pos={P_PosX+1*(P_ColSize+P_GapSize),P_PosY+2*(P_RoWSize)},size={P_ColSize,P_RowSize},title="X\B0",value= root:Package_SLP:DispXPS:CenterPointX
	SetVariable SetVar_CenterPointY,pos={P_PosX+1*(P_ColSize+P_GapSize),P_PosY+3*(P_RoWSize)},size={P_ColSize,P_RowSize},title="Y\B0",value= root:Package_SLP:DispXPS:CenterPointY

	
	//	SetVariable SetVar_Offset,limits={-inf,inf,0},noedit=0
	//SetVariable SetVar_NLines,pos={550,84},size={150,15},noedit=1,title="No. of p. lines"
	//SetVariable SetVar_NLines,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:yCenter
	//SetVariable SetVar_LWidth,pos={550,104},size={150,15},noedit=1,title="P. line width"
	//SetVariable SetVar_LWidth,limits={-inf,inf,0},value= root:Package_SLP:Stitch:ImgAnalyzeParticles:xmin
		
	Display /HOST=Find_DispLine_Panel_01 /N=DispL_Th /W=(10,55,170,180) 
	//Appendimage /W=Find_DispLine_Panel_01#DispL_Th root:WF38_0098_Bin
	//ModifyGraph margin=6,tick=3,noLabel=2, standoff=0
	//SetAxis /A/R left
	
	Display /HOST=Find_DispLine_Panel_01 /N=DispL_Img /W=(180,55,340,180) 
	//Appendimage /W=Find_DispLine_Panel_01#DispL_Img root:WF38_0098
	//Appendtograph /W=Find_DispLine_Panel_01#DispL_Img root:WF38_0098_Bin_WMUF:Particles:W_BoundaryY vs root:WF38_0098_Bin_WMUF:Particles:W_BoundaryX
	//ModifyGraph margin=6,tick=3,noLabel=2, standoff=0
	//ModifyImage WF38_0098 ctab= {*,*,Rainbow,1}
	//SetAxis /A/R left
	//SLP_CreateMultiPLines(20,10,15)
	
	Display /HOST=Find_DispLine_Panel_01 /N=DispL_Line /W=(350,55,510,180) 
	//Appendtograph root:fit_W_BoundaryY
	//ModifyGraph rgb(fit_W_BoundaryY)=(3,52428,1)
	//Appendtograph /W=Find_DispLine_Panel_01#DispL_Line root:WF38_0098_Bin_WMUF:Particles:W_BoundaryY vs root:WF38_0098_Bin_WMUF:Particles:W_BoundaryX
	//SetAxis /A/R left
	//Modifygraph margin=6,mirror=1,tick=2,minor=1
End

Function ButtonProc_CDL_Cancel(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			DoWindow/K Find_DispLine_Panel_01
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_DispXPS_Extract(Vol_WaveName,Threshold,MinSize,Offset,LP_Length,LP_Width,N_Lines,Disp_Factor, CenterPoint_X, CenterPoint_Y,STV_st,STV_step)
	string Vol_WaveName
	variable Threshold,MinSize,Offset,LP_Length,LP_Width,N_Lines
	variable Disp_Factor
	variable CenterPoint_X, CenterPoint_Y
	variable STV_st,STV_step
	
	string Th_WaveName=Vol_WaveName+"_Th"
	string Intg_WaveName=Vol_WaveName+"_Intg"
	string Spectra_WaveName=Vol_WaveName+"_Spectra"
	
	//SLP_Load_MultImg2Vol()
	
	SLP_FindDispLine(Intg_WaveName,Threshold,MinSize,Offset,LP_Length,N_Lines)
	SLP_CDL_CreateSpectra(Vol_WaveName,LP_Width)
	SLP_CDL_PlotSpctr(Spectra_WaveName,STV_st,STV_step)
	SLP_CDL_MergeSpctr(Spectra_WaveName,CenterPoint_X,CenterPoint_Y,Disp_Factor)


End


Function SLP_CDL_FindDVector(x0,y0,x1,y1,x2,y2)
	variable x0,y0,x1,y1,x2,y2
	
	variable L_abs=sqrt((x1-x2)^2+(y1-y2)^2)
	//print "L_abs = "+num2str(L_abs)
	variable L1_abs=((x1-x2)*(x0-x2)+(y1-y2)*(y0-y2))/L_abs
	//print "L1_abs = "+num2str(L1_abs)
	variable x3=x2+(L1_abs/L_abs)*(x1-x2)
	variable y3=y2+(L1_abs/L_abs)*(y1-y2)
	//print "x3 = "+num2str(x3)+", y3 = "+num2str(y3)
	//SLP_DrawArrow(x0,y0,x3,y3,"Green")
	
	variable d=sqrt((x3-x0)^2+(y3-y0)^2)
	
	If ((y3-y0)<0)
		d*=(-1)
	Endif
	
	return d
	
End

Function SLP_DrawArrow(x1,y1,x2,y2,color)
	variable x1,y1,x2,y2
	string color
	//This only work for Image Plot (with X-axis at the 'top' position). Otherwise, for normal graph -> set xcoord=bottom
	
	strswitch(Color)	// string switch
		case "Red":		// execute if case matches expression
			SetDrawEnv lineFgc=(65535,0,0)
			break						// exit from switch
		case "Green":		// execute if case matches expression
			SetDrawEnv lineFgc=(0,65535,0)
			break
		case "Blue":		// execute if case matches expression
			SetDrawEnv lineFgc=(0,0,65535)
			break
		default:							// optional default expression executed
			SetDrawEnv lineFgc=(0,0,0)					// when no case matches
	endswitch
	SetDrawEnv  xcoord=top,ycoord=left,arrow=1
	DrawLine x1,y1,x2,y2
	Doupdate


End

Function SLP_CDL_MergeSpctr(Sptra_W_Name,x0,y0,Disp_Factor)
	String Sptra_W_Name
	variable x0,y0,Disp_Factor 
	//(x0,y0) is the coordinate of where zero KE spot (e-gun spot at STV=0V in Disp. Plane mode) is. 
	
	wave Spectra_Wave=$Sptra_W_Name
	
	variable N_Spectra=dimsize(Spectra_Wave,1)
	
	//variable Dispersion = (Last_En-First_En)/N_Spectra
	
	wave PLineCoord //[TODO]
	variable x1,y1,x2,y2
	variable d
	
	string IndvSptrm_Wave_Name=""
	string Shftd_IndvSptrm_Wave_name=""
	
	variable i=0
	variable j=0
	variable org_offset=dimoffset(Spectra_Wave,0)
	variable org_delta=dimdelta(Spectra_Wave,0)
	variable new_offset=0
	variable N_steps=dimsize(Spectra_Wave,0)
	
	string Combined_Spectra_WName=Sptra_W_Name+"_Cmbnd"
	string DataCounts_Spectra_WName=Sptra_W_Name+"_DataCts"
	IndvSptrm_Wave_Name=Sptra_W_Name+"0"
	Wave IndvSptrm_W=$IndvSptrm_Wave_Name
	Duplicate /O IndvSptrm_W,$Combined_Spectra_WName /WAVE=Cmbnd_Spctrm_W
	Duplicate /O IndvSptrm_W,$DataCounts_Spectra_WName /WAVE=DataCts_Spctrm_W
	Cmbnd_Spctrm_W=0
	DataCts_Spctrm_W=0
	
	Display
	string TraceList=""
	string TraceName=""
	variable Grad_Offset=30000
	variable Cmbnd_Spctrm_pos=0
	variable Shftd_IndvSptrm_MinX
	variable Shftd_IndvSptrm_MaxX
	
	For (i=0;i<N_Spectra;i+=1)
		IndvSptrm_Wave_Name=Sptra_W_Name+num2str(i)
		Shftd_IndvSptrm_Wave_name=Sptra_W_Name+num2str(i)+"_Shftd"
		Wave IndvSptrm_W=$IndvSptrm_Wave_Name
		Duplicate /O IndvSptrm_W,$Shftd_IndvSptrm_Wave_name /Wave=Shftd_IndvSptrm_W
		
		//new_Offset=Org_Offset+Dispersion*(N_spectra/2-i)
		x1=PLineCoord[i][2]
		y1=PLineCoord[i][3]
		x2=PLineCoord[i][4]
		y2=PLineCoord[i][5]
		d=SLP_CDL_FindDvector(x0,y0,x1,y1,x2,y2)
		new_Offset=Org_Offset+Disp_Factor*d
		
		///print "d = "+num2str(d)
		//print "Offset = "+num2str(Disp_Factor*d)
		
		Setscale /P x,new_Offset,org_delta,Shftd_IndvSptrm_W
		
		Appendtograph Shftd_IndvSptrm_W
		
		TraceList=TraceNameList("",";",1)
		TraceName=stringFromList(ItemsinList(TraceList)-1,TraceList,";")
		TraceName=stringFromList(i,TraceList)
		ModifyGraph rgb($TraceName)=(Grad_Offset+(65535-Grad_Offset)*(i/N_Spectra),20000,20000)
		
		//Shftd_IndvSptrm_MinX=pnt2x(Shftd_IndvSptrm_W,0)
		//Shftd_IndvSptrm_MaxX=pnt2x(Shftd_IndvSptrm_W,dimsize(Shftd_IndvSptrm_W,0))
		Shftd_IndvSptrm_MinX=Dimoffset(Shftd_IndvSptrm_W,0)
		Shftd_IndvSptrm_MaxX=Dimoffset(Shftd_IndvSptrm_W,0)+(DimSize(Shftd_IndvSptrm_W,0)-1)*DimDelta(Shftd_IndvSptrm_W,0)
		
		For (j=0;j<N_Steps;j+=1)
			Cmbnd_Spctrm_pos=pnt2x(Cmbnd_Spctrm_W,j)
			If ((Cmbnd_Spctrm_pos>=Shftd_IndvSptrm_MinX)&&(Cmbnd_Spctrm_pos<=Shftd_IndvSptrm_MaxX))
				Cmbnd_Spctrm_W[j]=Cmbnd_Spctrm_W[j]+Shftd_IndvSptrm_W(Cmbnd_Spctrm_pos)
				DataCts_Spctrm_W[j]+=1
			EndIf
		
		EndFor
		DoUpdate
	EndFor
	
	Cmbnd_Spctrm_W/=DataCts_Spctrm_W
	Display Cmbnd_Spctrm_W
End

Function SLP_CDL_PlotSpctr(Sptra_W_Name,STV_st,STV_step)
	string Sptra_W_Name
	variable STV_st,STV_step
	
	Wave Sptra_Wave=$Sptra_W_Name
	
	variable i
	
	display
	string Spectra_Name
	string TraceList
	string TraceName
	variable Grad_Offset=30000
	variable BG_Offset=0
	variable Peak_value=1
	
	For (i=0;i<dimsize(Sptra_Wave,1);i+=1)
		Spectra_Name=Sptra_W_Name+num2str(i)
		duplicate /O /r=[][i] Sptra_Wave,$Spectra_Name /WAVE=Indv_Spectra
		redimension /N=-1 Indv_Spectra //Change from 2D (column wave) to normal 1D (row wave)
		setscale /P x,STV_st,STV_step,Indv_Spectra
		//Remove BG and Normalize [TODO]
		//BG_Offset=Indv_Spectra[0]
		//Indv_Spectra-=BG_Offset
		//Peak_value=WaveMax(Indv_Spectra)
		//Indv_Spectra/=Peak_Value
		//
		appendtograph Indv_Spectra
		
		//Applied gradient
		TraceList=TraceNameList("",";",1)
		TraceName=stringFromList(ItemsinList(TraceList)-1,TraceList,";")
		TraceName=stringFromList(i,TraceList)
		ModifyGraph rgb($TraceName)=(Grad_Offset+(65535-Grad_Offset)*(i/dimsize(Sptra_Wave,1)),20000,20000)
	EndFor
	
	Label bottom "Start voltage (V)"
	modifygraph mirror=1,tick=2,minor=1

End

Function SLP_CDL_CreateSpectra(Vol_W_Name,LP_Width)
	string Vol_W_Name
	variable LP_Width
	
	Wave Vol_Wave=$Vol_W_Name
	Wave PLineCoord //[Todo] Change name to individual PLineCoord for each scan
	
	variable i,j
	variable N_steps=dimsize(Vol_Wave,2)
	variable N_pLines=dimsize(PLineCoord,0)
	
	string Spectra_W_Name=Vol_W_Name+"_Spectra"
	Make /O/N=(N_steps,N_pLines) $Spectra_W_Name /WAVE=Spectra_W
	Make /O/N=2 CDL_pLX
	Make /O/N=2 CDL_pLY
	
	//appendtograph /T=top CDL_pLY vs CDL_pLX
	
	For (i=0;i<N_steps;i+=1)
		For (j=0;j<N_pLines;j+=1)
			CDL_pLX[0]=PLineCoord[j][2]
			CDL_pLY[0]=PLineCoord[j][3]
			CDL_pLX[1]=PLineCoord[j][4]
			CDL_pLY[1]=PLineCoord[j][5]
			ImageLineProfile/SC /P=(i) srcWave=Vol_Wave, xWave=CDL_pLX, yWave=CDL_pLY, width=LP_width
			wave W_ImageLineProfile
			
			//Replace NaN with zero
			MatrixOp /O W_ImageLineProfile=replace(W_ImageLineProfile,NaN,0)
			
			Spectra_W[i][j]=Sum(W_ImageLineProfile)/dimsize(W_ImageLineProfile,0)
			//DoUpdate
		
		EndFor
		
	EndFor
	variable cetemp=dimdelta(Vol_Wave,2)
	setscale /P x,dimoffset(Vol_Wave,2),dimdelta(Vol_Wave,2),Spectra_W
	
	//KillWindow Spectra
	If (FindListItem("Spectra",WInList("*",";","WIN:1"))==-1)
		NewImage /N=Spectra Spectra_W
	Endif
	ModifyGraph width=400,height=300
	DoUpdate
	ModifyGraph width=0,height=0
	string ImageName=stringfromlist(0,ImageNameList("Spectra", ";" ))
	ModifyImage /W=Spectra $ImageName ctab= {*,*,Rainbow,0}
	
End

Function SLP_FindDispLine(Img_W_Name,Threshold,MinSize,Offset,Width,N_Lines)
	string Img_W_Name
	variable Threshold,MinSize,Offset,Width,N_Lines
	
	Wave Img_W=$Img_W_Name
	string Th_Img_W_Name=Img_W_Name+"_Th"
	
	
	Duplicate /O Img_W,$Th_Img_W_Name /WAVE=Th_Image_W
	
	ImageThreshold/Q/O/I/T=(Threshold) Th_Image_W
	
	ImageAnalyzeParticles /E/W/Q/EBPC/M=3/A=(MinSize)/F stats, Th_Image_W
	
	string W_BoundaryX_FName="W_BoundaryX"
	string W_BoundaryY_FName="W_BoundaryY"
	string BoundX_W_Name=Img_W_Name+"_BX"
	string BoundY_W_Name=Img_W_Name+"_BY"
	
	duplicate /O $W_BoundaryX_FName,$BoundX_W_Name /WAVE=BX_W
	duplicate /O $W_BoundaryY_FName,$BoundY_W_Name /WAVE=BY_W
	
	Duplicate /O BY_W,DispLine
	CurveFit /Q/M=2/W=0 line, BY_W/X=BX_W/D
	
	string DispLine_Wave_Name="Fit_"+BoundY_W_Name
	string DispLine_XWave_Name=Img_W_Name+"_DispLX"
	string DispLine_YWave_Name=Img_W_Name+"_DispLY"
	Wave DispLine_Wave=$DispLine_Wave_Name
	
	make /O /N=2 $DispLine_XWave_Name /WAVE=DispLine_X_Wave
	make /O /N=2 $DispLine_YWave_Name /WAVE=DispLine_Y_Wave
	
	DispLine_X_Wave[0]=dimoffset(DispLine_Wave,0)
	DispLine_X_Wave[1]=dimoffset(DispLine_Wave,0)+dimdelta(DispLine_Wave,0)
	DispLine_Y_Wave[0]=DispLine_Wave[0]
	DispLine_Y_Wave[1]=DispLine_Wave[1]
	
	//KillWaves DispLine_Wave
	
	NewImage Img_W
	Appendtograph /T=top BY_W vs BX_W
	ModifyGraph rgb=(0,43690,65535)
	Appendtograph /T=top DispLine_Y_Wave vs DispLine_X_Wave
	
	SLP_CreateMultiPLines(DispLine_XWave_Name,DispLine_YWave_Name,Width,N_Lines,Offset)

End

Function SLP_CreateMultiPLines(DispLine_XWave_Name,DispLine_YWave_Name,LSize,N_Lines,L_Offset)
	string DispLine_XWave_Name
	string DispLine_YWave_Name
	variable LSize
	variable N_Lines
	variable L_Offset
	
	wave MainLine_Y=$DispLine_YWave_Name
	wave MainLine_X=$DispLine_XWave_Name
	
	variable y0=MainLine_Y[0]
	variable y1=MainLine_Y[1]
	variable x0=MainLine_X[0]
	variable x1=MainLine_X[1]
	
	make /O /N=(N_Lines,6) PLineCoord
	PLineCoord=0
	variable Alpha=atan((y1-y0)/(x1-x0))
	
	setdrawlayer UserFront
	DrawAction delete
		
	
	variable i
	
	For (i=0;i<N_Lines;i+=1)
		PLineCoord[i][0]=x0+L_Offset*cos(Alpha)+i*(x1-x0-2*L_Offset*cos(Alpha))/(N_Lines-1)
		PLineCoord[i][1]=y0+L_Offset*sin(Alpha)+i*(y1-y0-2*L_Offset*sin(Alpha))/(N_Lines-1)
		
		PLineCoord[i][2]=PLineCoord[i][0]+Lsize*sin(Alpha)
		PLineCoord[i][3]=PLineCoord[i][1]-Lsize*cos(Alpha)
		
		PLineCoord[i][4]=PLineCoord[i][0]-Lsize*sin(Alpha)
		PLineCoord[i][5]=PLineCoord[i][1]+Lsize*cos(Alpha)
		
		SetDrawEnv  xcoord=top,ycoord=left,lineFgc=(0,65535,0)
		DrawLine PLineCoord[i][2],PLineCoord[i][3],PLineCoord[i][4],PLineCoord[i][5]
		Doupdate
		//Doalert 1,"Line number"+num2str(i)
	
	Endfor
	
	
	
	
End


Function SLP_CreatePerpendLines(LSize)
	variable LSize
	
	wave MainLine_Y
	wave MainLine_X
	
	variable y0=MainLine_Y[0]
	variable y1=MainLine_Y[1]
	variable x0=MainLine_X[0]
	variable x1=MainLine_X[1]
	
	variable MainLine_L=sqrt((y1-y0)^2+(x1-x0)^2)
	
	variable y2=y0-LSize*(x1-x0)/MainLine_L/2
	variable x2=x0+LSize*(y1-y0)/MainLine_L/2
	variable y3=y0+LSize*(x1-x0)/MainLine_L/2
	variable x3=x0-LSize*(y1-y0)/MainLine_L/2
	
	Make /O/N=2 PLine_Y
	Make /O/N=2 PLine_X
	
	PLine_Y={y2,y3}
	PLine_X={x2,x3}
	
	//Appendtograph /T=top PLine_Y vs PLine_X
End

//GH

Function GH_GetColor(num_now, num_start, num_end)
variable num_now, num_start, num_end

variable num_del, num_del_now
variable red, blue, green
wave colors=W_XPSManip_colors


num_del = num_end - num_start
num_del_now = num_now - num_start

if (num_del == 0)
	red = 65535
	green = 0
	blue = 0
else
// Rainbow colours: red - yellow - green - cyan - blue
	if(num_del_now  < 0.25*num_del)
		red = 65535
		green =   min(65535 * 4 * (num_del_now  / num_del), 65535)
		blue = 0
	else
		if (num_del_now < 0.50*num_del)
			red =   max( 65535 * (2 - 4*(num_del_now  / num_del) ), 0)
			green = 65535
			blue = 0
		else
			if (num_del_now < 0.75*num_del)
				red = 0
				green = 65535
				blue =   max(65535 * (-2 + 4*(num_del_now  / num_del) ), 0)
			else
				if (num_del_now < num_del)		
					red = 0
					green =   max( 65535 * (4  - 4*(num_del_now  / num_del) ), 0)
					blue = 65535
				else
					red = 0
					green = 0
					blue = 65535
				endif
			endif
		endif
	endif
endif
		
colors[0] = round(red)
colors[1] = round(green)
colors[2] = round(blue)

End

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// MakeRainbow
// Get colour in a rainbow colour scheme spanned between num_start and num_end
////////////////////////////////////////////////////////////////////////////////
Macro MakeRainbow()

String wave_list, wave_name
variable num_now, num_end

wave_list =TraceNameList("",";",1)

// Find number of traces
num_end = 0
do
	wave_name = StringFromList(num_end, wave_list)
	num_end += 1
	print num_end, wave_name
while ( !Stringmatch(wave_name,"") )
num_end -= 2
// print num_end

num_now = 0
do
	wave_name = StringFromList(num_now, wave_list)
	GH_GetColor( num_now, 0, num_end)
//	print num_now, root:XPS:W_XPSManip_colors[0], root:XPS:W_XPSManip_colors[1], root:XPS:W_XPSManip_colors[2]
	ModifyGraph rgb($wave_name)=(W_XPSManip_colors[0], W_XPSManip_colors[1], W_XPSManip_colors[2])
	
	num_now += 1
while (num_now <= num_end)


EndMacro

/////////NOT USED ANYMORE///////////

Function SLP_Dispersion_Calc(x0,y0,x1,y1,x2,y2)
	//Find distance between point (x0,y0) and line defined by (x1,y1) to (x2,y2)
	variable x0,y0 //Reference point
	variable x1,y1,x2,y2 //Referred to the line in question
	//variable Disp_Factor
	
	variable Alpha
	Alpha=atan((y0-y1)/(x0-x1))-atan((y2-y1)/(x2-x1))
	//print "Alpha = "+num2str( Alpha*180/pi) +" Deg."
	variable D1=sqrt((y0-y1)^2+(x0-x1)^2)
	variable d=D1*sin(Alpha)
	
	//Add 'sign' to the distance [TO CHECK]
	//if (alpha<(pi/2))
	//	d*=(-1)
	//Endif
	print "alpha = "+num2str(alpha*180/pi)
	return d

End



Function SLP_Util_AutoImgInt_Old(GraphNameStr)
	String GraphNameStr
	
	String ImgNameListStr=ImageNameList(GraphNameStr,";")
	String ImgNameStr=StringFromList(0,ImgNameListStr) //1st image name
	
	Wave ImgW=ImageNameToWaveRef(GraphNameStr,ImgNameStr)
	
	WaveStats /Q ImgW
	
	ModifyImage /W=$GraphNameStr $ImgNameStr,ctab={V_avg-1.0*V_sdev,V_avg+1.0*V_sdev,,0}

End


Function SLP_IXPS_SelectImage_old(ImgWinName)
	String ImgWinName
	
	//print cba.checked
	//print cba.ctrlName
	
	NVAR ColorMin=root:Package_SLP:ImgXPS:ColorMin
	NVAR ColorMax=root:Package_SLP:ImgXPS:ColorMax
	SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow
	
	//Find the current selected row
  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
	variable SelRow=V_Value
	//Waves and wave refs.
	Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	String DataFolder_FName=SLP_IXPS_ScanListW[SelRow][1]
	String ImgVolW_FName=DataFolder_FName+SLP_IXPS_ScanListW[SelRow][0]
	String UMap1W_FName=ImgVolW_FName+"_UMap1"
	String Corr1W_FName=ImgVolW_FName+"_Corr1"
	String CMap1W_FName=ImgVolW_FName+"_CMap1"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String MapVolW_FName=ImgVolW_FName+"_MapVol"
	String ImageHistW_FName=ImgVolW_FName+"_Hist"
	Wave FitCoefDisplayW=$FitCoefDisplayW_FName
	Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
	
	If (Exists(MapVolW_FName))
		Wave MapVolW=$MapVolW_FName
	EndIf
	
	If (Exists(UMap1W_FName))
		Wave UMap1W=$UMap1W_FName
	Endif
	
	If (Exists(Corr1W_FName))
		Wave Corr1W=$Corr1W_FName
	Endif
	
	If (Exists(CMap1W_FName))
		Wave CMap1W=$CMap1W_FName
	EndIf
	
	//Trick from man page of CheckBox
	Variable  gRadioVal
	String SelParamName=""
	Variable SelParamRow=0
	Variable SelParamCol=0
	
	strswitch (ImgWinName) //Name of the image (note the use of WMCheckBoxAction STRUCT)
		case "CheckBox_SelImg1":
			gRadioVal= 1
			SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt1"
			SelParamName=SLP_IXPS_ScanListW[SelRow][22]
			
			break
		case "CheckBox_SelImg2":
			gRadioVal= 2
			SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt2"
			SelParamName=SLP_IXPS_ScanListW[SelRow][23]
			
			break
		case "CheckBox_SelImg3":
			gRadioVal= 3
			SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt3"
			SelParamName=SLP_IXPS_ScanListW[SelRow][24]
			
			break
		case "CheckBox_SelImg4":
			gRadioVal= 4
			SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt4"
			SelParamName=SLP_IXPS_ScanListW[SelRow][25]
			
			break
		case "CheckBox_SelImg5":
			gRadioVal= 5
			SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt5"
			SelParamName=SLP_IXPS_ScanListW[SelRow][26]
			break
		case "CheckBox_SelImg6":
			gRadioVal= 6
			SelSubWindow="SLP_ImgXPS_Panel_01#IX_RawExt6"
			SelParamName=SLP_IXPS_ScanListW[SelRow][27]
			break
			
		case "CheckBox_SelImgCorr":
			gRadioVal= 7
			SelSubWindow="SLP_ImgXPS_Panel_01#IX_Correction1"
			SelParamName="Corr1"
			
			break
		case "CheckBox_SelImgCMap":
			gRadioVal= 8
			SelSubWindow="SLP_ImgXPS_Panel_01#IX_ResultMap1"
			SelParamName="CMap1"
			
			break
	endswitch
	
	If (Stringmatch(SelParamName,"Corr1"))
		ImageHistogram Corr1W
		Wave W_ImageHist
		duplicate /O W_ImageHist,$ImageHistW_FName /Wave=ImageHistW
		Killwaves W_ImageHist
	ElseIf (Stringmatch(SelParamName,"CMap1"))
		ImageHistogram CMap1W
		Wave W_ImageHist
		duplicate /O W_ImageHist,$ImageHistW_FName /Wave=ImageHistW
		Killwaves W_ImageHist
	ElseIf (!stringmatch("",SelParamName))
		FindValue /S=(dimsize(FitCoefDisplayW,0)*2) /TEXT=SelParamName/TXOP=4 /Z FitCoefDisplayW
		SelParamCol=floor(V_value/dimsize(FitCoefDisplayW,0))
		SelParamRow=V_value-SelParamCol*dimsize(FitCoefDisplayW,0)
		variable SelExtVolPlane=0
		variable i=0
		For (i=0;i<SelParamRow;i+=1)
			If (FitCoefDisplaySelW[i][0]==48)
				SelExtVolPlane+=1
			EndIf
		EndFor
		ImageHistogram /P=(SelExtVolPlane) MapVolW
		Wave W_ImageHist
		duplicate /O W_ImageHist,$ImageHistW_FName /Wave=ImageHistW
		Killwaves W_ImageHist
	EndIf
			
	SLP_IXPS_ScanListW[SelRow][47]=SelSubWindow
	
	CheckBox CheckBox_SelImg1,value= (gRadioVal==1)
	CheckBox CheckBox_SelImg2,value= (gRadioVal==2)
	CheckBox CheckBox_SelImg3,value= (gRadioVal==3)
	CheckBox CheckBox_SelImg4,value= (gRadioVal==4)
	CheckBox CheckBox_SelImg5,value= (gRadioVal==5)
	CheckBox CheckBox_SelImg6,value= (gRadioVal==6)
	CheckBox CheckBox_SelImgCorr,value= (gRadioVal==7)
	CheckBox CheckBox_SelImgCMap,value= (gRadioVal==8)
	
	If (Exists(ImageHistW_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Histogram",ImageHistW_FName,0)
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mirror=1,minor=1,tick(left)=0,tick(bottom)=2
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram  margin(bottom)=20,margin(left)=3,margin(top)=3,margin(right)=3
		ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mode=5,hbFill=2,rgb=(1,34817,52428)
	EndIf
			
End	

Function SetVarProc_CScale(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			
			NVAR ColorMin=root:Package_SLP:ImgXPS:ColorMin
			NVAR ColorMax=root:Package_SLP:ImgXPS:ColorMax
			SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow 
			
			//Find the current selected row
		  	ControlInfo /W=SLP_ImgXPS_Panel_01 List_ScansList
			variable SelRow=V_Value
			Wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
			
			strswitch(SelSubWindow)	// string switch
				case "SLP_ImgXPS_Panel_01#IX_RawExt1":		
					SLP_IXPS_ScanListW[SelRow][16]=num2str(ColorMin)
					SLP_IXPS_ScanListW[SelRow][17]=num2str(ColorMax)
					break	
				case "SLP_ImgXPS_Panel_01#IX_Correction1":		
					SLP_IXPS_ScanListW[SelRow][18]=num2str(ColorMin)
					SLP_IXPS_ScanListW[SelRow][19]=num2str(ColorMax)
					break
				case "SLP_ImgXPS_Panel_01#IX_ResultMap1":		
					SLP_IXPS_ScanListW[SelRow][20]=num2str(ColorMin)
					SLP_IXPS_ScanListW[SelRow][21]=num2str(ColorMax)
					break
				case "SLP_ImgXPS_Panel_01#IX_RawExt2":		
					SLP_IXPS_ScanListW[SelRow][22]=num2str(ColorMin)
					SLP_IXPS_ScanListW[SelRow][23]=num2str(ColorMax)
					break
				case "SLP_ImgXPS_Panel_01#IX_Correction2":		
					SLP_IXPS_ScanListW[SelRow][24]=num2str(ColorMin)
					SLP_IXPS_ScanListW[SelRow][25]=num2str(ColorMax)
					break
				case "SLP_ImgXPS_Panel_01#IX_ResultMap2":		
					SLP_IXPS_ScanListW[SelRow][26]=num2str(ColorMin)
					SLP_IXPS_ScanListW[SelRow][27]=num2str(ColorMax)
					break			
			endswitch
			
			string ImageName=stringfromlist(0,ImageNameList(SelSubWindow, ";" ))
			ModifyImage /W=$SelSubWindow $ImageName ctab= {ColorMin,ColorMax,,0}
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_IXPS_DisplaySelectedData_O2(VolName)
	String VolName
	Variable DataRow=SLP_IXPS_FindDataRow(VolName)
	wave /T SLP_IXPS_ScanListW=root:Package_SLP:ImgXPS:SLP_IXPS_ScanListW
	string ImgVolW_FName=SLP_IXPS_ScanListW[DataRow][1]+SLP_IXPS_ScanListW[DataRow][0]
	String ImgIntgW_FName=ImgVolW_FName+"_Intg"
	String BxW_FName=ImgVolW_FName+"_BX"
	String ByW_FName=ImgVolW_FName+"_BY"
	String UnprocMap1_FName=ImgVolW_FName+"_Umap1"
	String UnprocMap1H_FName=ImgVolW_FName+"_Umap1H"
	String Corr1_FName=ImgVolW_FName+"_Corr1"
	String Corr1H_FName=ImgVolW_FName+"_Corr1H"
	String CMap1_FName=ImgVolW_FName+"_CMap1"
	String CMap1H_FName=ImgVolW_FName+"_CMap1H"
	String  zProflW_FName=ImgVolW_FName+"_zProfl"
	String  zPMskW_FName=ImgVolW_FName+"_zPMsk"
	String zProflFitW_FName=SLP_IXPS_ScanListW[DataRow][1]+"Fit_"+SLP_IXPS_ScanListW[DataRow][0]+"_zProfl"
	String FitCoefDisplayW_FName=ImgVolW_FName+"_FCoefD"
	String FitCoefDisplaySelW_FName=ImgVolW_FName+"_FCoefDS"
	String MapVolW_FName=ImgVolW_FName+"_MapVol"

	NVAR FrameNum=root:Package_SLP:ImgXPS:FrameNum
	SVAR SelSubWindow=root:Package_SLP:ImgXPS:SelSubWindow
	NVAR CorrAdj_x1=root:Package_SLP:ImgXPS:CorrAdj_x1
	NVAR CorrAdj_y1=root:Package_SLP:ImgXPS:CorrAdj_y1
	NVAR CorrAdj_mag1=root:Package_SLP:ImgXPS:CorrAdj_mag1
	NVAR CorrAdj_Size1=root:Package_SLP:ImgXPS:CorrAdj_Size1
	NVAR CorrAdj_Rot1=root:Package_SLP:ImgXPS:CorrAdj_Rot1
	NVAR CorrAdj_x2=root:Package_SLP:ImgXPS:CorrAdj_x2
	NVAR CorrAdj_y2=root:Package_SLP:ImgXPS:CorrAdj_y2
	NVAR CorrAdj_mag2=root:Package_SLP:ImgXPS:CorrAdj_mag2
	NVAR CorrAdj_Size2=root:Package_SLP:ImgXPS:CorrAdj_Size2
	NVAR CorrAdj_Rot2=root:Package_SLP:ImgXPS:CorrAdj_Rot2
	
	FrameNum=str2num(SLP_IXPS_ScanListW[DataRow][5])
	SelSubWindow=SLP_IXPS_ScanListW[DataRow][47]
	CorrAdj_x1=str2num(SLP_IXPS_ScanListW[DataRow][35])
	CorrAdj_y1=str2num(SLP_IXPS_ScanListW[DataRow][36])
	CorrAdj_mag1=str2num(SLP_IXPS_ScanListW[DataRow][37])
	CorrAdj_Size1=str2num(SLP_IXPS_ScanListW[DataRow][38])
	CorrAdj_Rot1=str2num(SLP_IXPS_ScanListW[DataRow][39])
	CorrAdj_x2=str2num(SLP_IXPS_ScanListW[DataRow][40])
	CorrAdj_y2=str2num(SLP_IXPS_ScanListW[DataRow][41])
	CorrAdj_mag2=str2num(SLP_IXPS_ScanListW[DataRow][42])
	CorrAdj_Size2=str2num(SLP_IXPS_ScanListW[DataRow][43])
	CorrAdj_Rot2=str2num(SLP_IXPS_ScanListW[DataRow][44])
	
	If(!StringMatch("y",SLP_IXPS_ScanListW[DataRow][45])) //Raw data has not been removed
		Wave ImgVolW=$ImgVolW_FName
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ImgW",ImgVolW_FName,1)
		String VolImgName=stringFromList(0,imageNameList("SLP_ImgXPS_Panel_01#IX_ImgW",";"))
		modifyImage /W=SLP_ImgXPS_Panel_01#IX_ImgW $VolImgName,ctab={str2num(SLP_IXPS_ScanListW[DataRow][6]),str2num(SLP_IXPS_ScanListW[DataRow][7]),,0}
		modifyImage /W=SLP_ImgXPS_Panel_01#IX_ImgW $VolImgName,plane=(str2num(SLP_IXPS_ScanListW[DataRow][5])
		//modifyImage /W=SLP_ImgXPS_Panel_01#IX_ImgW $VolImgName,
		
		//Set slider limit
		Slider Slider_ImgVolFrame limits={0,dimsize(ImgVolW,2)-1,1}
		SLP_IXPS_TgglControls("Enable")
	Else //Raw data removed
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ImgW",ImgIntgW_FName,1)
		SLP_IXPS_TgglControls("Disable")
	EndIf
	
	SLP_Util_RemoveAllTraces("SLP_ImgXPS_Panel_01#IX_ImgW")
	If (Exists(BxW_FName))
		appendtograph /W=SLP_ImgXPS_Panel_01#IX_ImgW $ByW_FName vs $BxW_FName
	EndIf
	
	If (Exists(zProflW_FName))
		//Put new traces in the Fitting window
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_FittingWin",zProflW_FName,0)
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin mode=3,marker=5,rgb=(1,34817,52428)
		AppendToGraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin /R=right $zPMskW_FName
		String TraceName=StringFromList(1,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin lStyle($TraceName)=2,rgb($TraceName)=(0,0,0)
	Endif
	If (Exists(zProflFitW_FName))
		AppendToGraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin $zProflFitW_FName
		TraceName=StringFromList(2,TraceNameList("SLP_ImgXPS_Panel_01#IX_FittingWin",";",1))
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_FittingWin lSize($TraceName)=2,rgb($TraceName)=(65535,0,0)
	Endif
	
	//Clear existing images & reset titles
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt1","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt2","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt3","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt4","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt5","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_RawExt6","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)	
		CheckBox CheckBox_SelImg1 ,win=SLP_ImgXPS_Panel_01, title="Param1"
		CheckBox CheckBox_SelImg2 ,win=SLP_ImgXPS_Panel_01, title="Param2"
		CheckBox CheckBox_SelImg3 ,win=SLP_ImgXPS_Panel_01, title="Param3"
		CheckBox CheckBox_SelImg4 ,win=SLP_ImgXPS_Panel_01, title="Param4"
		CheckBox CheckBox_SelImg5 ,win=SLP_ImgXPS_Panel_01, title="Param5"
		CheckBox CheckBox_SelImg6 ,win=SLP_ImgXPS_Panel_01, title="Param6"
		SLP_IXPS_ScanListW[DataRow][22,27]=""
		
	If (Exists(MapVolW_FName))
		Wave MapVolW=$MapVolW_FName
		Wave /T FitCoefDisplayW=$FitCoefDisplayW_FName
		Wave FitCoefDisplaySelW=$FitCoefDisplaySelW_FName
		//IX_RawExt1
		variable i=0
		variable j=1
		variable k=0
		variable m=22 //Column 22 of ScanListW (to store displayed parameter map 1-6 in col. 22-27)
		string DisplayName=""
		string ChkBoxName=""
		string ImgName=""

		For (i=0;j<=6&&i<dimsize(FitCoefDisplaySelW,0);i+=1)
			
			If (FitCoefDisplaySelW[i][8]==48)
				DisplayName="SLP_ImgXPS_Panel_01#IX_RawExt"+num2str(j)
				ChkBoxName="CheckBox_SelImg"+num2str(j)
				SLP_Util_AddnRmTraces(DisplayName,MapVolW_FName,1)
				ImgName=stringFromList(0,ImageNameList(DisplayName,";"),";")
				ModifyImage /W=$DisplayName $ImgName,plane=k,ctab={*,*,rainbow,0}
				
				If (!stringmatch(FitCoefDisplayW[i][10],"")&&!stringmatch(FitCoefDisplayW[i][11],""))
					ModifyImage /W=$DisplayName $ImgName ,ctab={str2num(FitCoefDisplayW[i][10]),str2num(FitCoefDisplayW[i][11]),rainbow,0}
				EndIf
				
				CheckBox $ChkBoxName ,win=SLP_ImgXPS_Panel_01, title=FitCoefDisplayW[i][2]
				SLP_IXPS_ScanListW[DataRow][m+j-1] =FitCoefDisplayW[i][2]//Update selected param. to ScanListW
				
				j+=1
			Endif
			
			If (FitCoefDisplaySelW[i][0]==48)
				k+=1
			Endif
			
		EndFor
	
	EndIf
	
	String ImageName=""
	
	If (Exists(Corr1_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Correction1",Corr1_FName,1)
		ImageName=StringFromList(0,ImageNameList("SLP_ImgXPS_Panel_01#IX_Correction1",";"))
		ModifyImage /W=SLP_ImgXPS_Panel_01#IX_Correction1 $ImageName ctab={str2num(SLP_IXPS_ScanListW[DataRow][18]),str2num(SLP_IXPS_ScanListW[DataRow][19]),Rainbow,0}//[TODO]
	Else
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Correction1","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
	Endif
	
	If (Exists(CMap1_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ResultMap1",Cmap1_FName,1)
		ImageName=StringFromList(0,ImageNameList("SLP_ImgXPS_Panel_01#IX_ResultMap1",";"))
		ModifyImage /W=SLP_ImgXPS_Panel_01#IX_ResultMap1 $ImageName ctab={str2num(SLP_IXPS_ScanListW[DataRow][20]),str2num(SLP_IXPS_ScanListW[DataRow][21]),Rainbow,0}//[TODO]
	Else
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_ResultMap1","root:Package_SLP:ImgXPS:SLP_IXPS_DummyImg1",1)
	Endif
	
	//Selected subWindow (img window)
	CheckBox CheckBox_SelImg1,value=0
	CheckBox CheckBox_SelImg2,value=0
	CheckBox CheckBox_SelImg3,value=0
	CheckBox CheckBox_SelImg4,value=0
	CheckBox CheckBox_SelImg5,value=0
	CheckBox CheckBox_SelImg6,value=0
	CheckBox CheckBox_SelImgCorr,value=0
	CheckBox CheckBox_SelImgCMap,value=0
	
	Variable ColorMin,ColorMax
	String HistogramW_FName=""
	strswitch(SelSubWindow)	// string switch
		case "SLP_ImgXPS_Panel_01#IX_RawExt1":		
			CheckBox CheckBox_SelImg1,value=1
			ColorMin=str2num(SLP_IXPS_ScanListW[DataRow][16])
			ColorMax=str2num(SLP_IXPS_ScanListW[DataRow][17])
			HistogramW_FName=ImgVolW_FName+"_UMap1H"
			If (Exists(UnprocMap1_FName))
				Wave UnprocMap1=$UnprocMap1_FName
				WaveStats /Q UnprocMap1
			Endif
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt2":		
			CheckBox CheckBox_SelImg2,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt3":		
			CheckBox CheckBox_SelImg3,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt4":		
			CheckBox CheckBox_SelImg4,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt5":		
			CheckBox CheckBox_SelImg5,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_RawExt6":		
			CheckBox CheckBox_SelImg6,value=1
			break
		case "SLP_ImgXPS_Panel_01#IX_Correction1":		
			CheckBox CheckBox_SelImgCorr,value=1
			ColorMin=str2num(SLP_IXPS_ScanListW[DataRow][18])
			ColorMax=str2num(SLP_IXPS_ScanListW[DataRow][19])
			HistogramW_FName=ImgVolW_FName+"_Corr1H"
			If (Exists(Corr1_FName))
				Wave Corr1=$Corr1_FName
				WaveStats /Q Corr1
			Endif
			break
		case "SLP_ImgXPS_Panel_01#IX_ResultMap1":		
			CheckBox CheckBox_SelImgCMap,value=1
			ColorMin=str2num(SLP_IXPS_ScanListW[DataRow][20])
			ColorMax=str2num(SLP_IXPS_ScanListW[DataRow][21])
			HistogramW_FName=ImgVolW_FName+"_CMap1H"
			If (Exists(CMap1_FName))
				Wave CMap1=$CMap1_FName
				WaveStats /Q CMap1
			Endif
			break
			
	endswitch
	
	If (Exists(HistogramW_FName))
		SLP_Util_AddnRmTraces("SLP_ImgXPS_Panel_01#IX_Histogram",HistogramW_FName,0)
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mirror=1,minor=1,tick(left)=3,tick(bottom)=2
		Modifygraph /W=SLP_ImgXPS_Panel_01#IX_Histogram  margin(bottom)=20,margin(left)=3,margin(top)=3,margin(right)=3
		ModifyGraph /W=SLP_ImgXPS_Panel_01#IX_Histogram mode=5,hbFill=2,rgb=(1,34817,52428)
		Slider Slider_ImgVolMinInt,limits={V_avg-3*V_sdev,V_avg+3*V_sdev,6*V_Sdev/200}
		Slider Slider_ImgVolMaxInt,limits={V_avg-3*V_sdev,V_avg+3*V_sdev,6*V_Sdev/200}
	EndIf
	
	If (Exists(FitCoefDisplayW_FName))
		ListBox List_FitParam,ListWave=$FitCoefDisplayW_FName,SelWave=$FitCoefDisplaySelW_FName
	Else
		ListBox List_FitParam,ListWave=root:Package_SLP:ImgXPS:SLP_IXPS_FitParamW,SelWave=root:Package_SLP:ImgXPS:SLP_IXPS_FitParamSelW
	EndIF
	//Popup menu update
	PopupMenu Popup_FitType win=SLP_ImgXPS_Panel_01,mode=str2num(SLP_IXPS_ScanListW[DataRow][48])
	
End

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
	DrawText 6,55,"Original image"
	SetDrawEnv /W=SLP_DLA_Panel_01 fSize=11,TextRGB=(0,0,0)
	DrawText 225,55,"Threshold image"
	SetDrawEnv /W=SLP_DLA_Panel_01 fSize=11,TextRGB=(0,0,0)
	DrawText 6,255,"Voronoi construction"
	
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
	SetVariable setvar_GssBeta,value= root:Package_SLP:DLA:GuessBeta,limits={0.001,inf,0.2}
	SetVariable setvar_GssA,pos={500,305},size={65,12},title="A:",proc=SetVarProc_DLA_GssBeta
	SetVariable setvar_GssA,value= root:Package_SLP:DLA:GuessA
	
	ListBox ListBox_ImageList,pos={430,370},size={380,195},listwave=SLP_DLA_ImgListDisplayW,selWave=SLP_DLA_ImgListDisplaySelW
	ListBox ListBox_ImageList, widths={100,30,120,1,1,1,1,1,1,1,1,1,1,1,1,1,1},userColumnResize=1,mode=2,proc=ListBoxProc_DLA_ImgList
	ListBox ListBox_ImageList, SelRow=SelRow
	
	Button Button_FindIsl,pos={430,120},size={140,16},title="Find islands",fSize=10
	Button Button_EditIslPos,pos={430,140},size={140,16},title="Edit island positions"
	Button Button_EditIslPos,fSize=10
	Button Button_FindScrn,pos={430,160},size={140,16},title="Find screen",fSize=10
	
	Button Button_FindISD,pos={430,260},size={140,20},title="Find island size distribution"
	Button Button_FindISD,fSize=10,proc=ButtonProc_DLA_FindISD

	Button Button_BetaFit,pos={430,340},size={140,16},title="Beta function fitting",fsize=10,proc=ButtonProc_DLA_BetaFit
	
	Button Button_LoadImg,pos={440,570},size={100,16},title="Load image..",fSize=10,proc=ButtonProc_DLA_ChooseImgW
	Button Button_DelImg,pos={550,570},size={100,16},title="Delete image..",fSize=10,proc=ButtonProc_DLA_DelImage
	Button Button_Done,pos={750,570},size={50,16},title="Done",fSize=10,proc=ButtonProc_DLA_Done

	Button Button_PlotOrg,pos={180,40},size={40,16},title="Plot",fSize=10,proc=ButtonProc_DLA_Plot
	Button Button_PlotTh,pos={380,40},size={40,16},title="Plot",fSize=10,proc=ButtonProc_DLA_Plot
	Button Button_PlotVor,pos={380,240},size={40,16},title="Plot",fSize=10,proc=ButtonProc_DLA_Plot
	Button Button_PlotIVArea,pos={775,3},size={40,16},title="Plot",fSize=10,proc=ButtonProc_DLA_Plot
	Button Button_PlotISD,pos={775,185},size={40,16},title="Plot",fSize=10,proc=ButtonProc_DLA_Plot
	
	If (dimsize(SLP_DLA_ImgListW,0)>0)
		SLP_DLA_DisplaySelectedImg()
	EndIf
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
	NVAR HistBin=root:Package_SLP:DLA:HistBin
	NVAR GuessBeta=root:Package_SLP:DLA:GuessBeta
	NVAR GuessA=root:Package_SLP:DLA:GuessA
	
	xAdj=str2num(SLP_DLA_ImgListW[SelRow][4])
	yAdj=str2num(SLP_DLA_ImgListW[SelRow][5])
	intAdj=str2num(SLP_DLA_ImgListW[SelRow][6])
	imgTh=str2num(SLP_DLA_ImgListW[SelRow][7])
	MinSize=str2num(SLP_DLA_ImgListW[SelRow][8])
	xMin=str2num(SLP_DLA_ImgListW[SelRow][9])
	xMax=str2num(SLP_DLA_ImgListW[SelRow][10])
	yMin=str2num(SLP_DLA_ImgListW[SelRow][11])
	yMax=str2num(SLP_DLA_ImgListW[SelRow][12])
	HistBin=str2num(SLP_DLA_ImgListW[SelRow][13])
	GuessBeta=str2num(SLP_DLA_ImgListW[SelRow][14])
	GuessA=str2num(SLP_DLA_ImgListW[SelRow][15])
	
	SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_IMAGE1",ImgW_FName,1)
	
	If (Exists(IntNrmImgW_Name))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_IMAGE2",IntNrmImgW_Name,1)
	Else
		SLP_Util_RemoveAllImages("SLP_DLA_Panel_01#DLA_IMAGE2")
	Endif
	
	If (Exists(ThImgW_Name))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_IMAGE3",ThImgW_Name,1)
	Else
		SLP_Util_RemoveAllImages("SLP_DLA_Panel_01#DLA_IMAGE3")
	Endif
	
	If (Exists(ESpotXW_Name))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_IMAGE2",ESpotXW_Name+";"+ESpotYW_Name,2)
		Modifygraph /W=SLP_DLA_Panel_01#DLA_IMAGE2 mode=3,marker=19,msize=2
	Else
		SLP_Util_RemoveAllImages("SLP_DLA_Panel_01#DLA_IMAGE2")
		SLP_Util_RemoveAllTraces("SLP_DLA_Panel_01#DLA_IMAGE2")
	EndIf
	
	variable Img_xMin=dimoffset(ImgW,0)
	variable Img_xMax=dimoffset(ImgW,0)+dimdelta(ImgW,0)*(dimsize(ImgW,0)-1)
	variable Img_yMin=dimoffset(ImgW,1)
	variable Img_yMax=dimoffset(ImgW,1)+dimdelta(ImgW,1)*(dimsize(ImgW,1)-1)
	
	If (Exists(VEdgesYW_Name))
		Appendtograph /W=SLP_DLA_Panel_01#DLA_IMAGE2 $VEdgesYW_Name vs $VEdgesXW_Name
		SetAxis /W=SLP_DLA_Panel_01#DLA_IMAGE2 bottom,Img_xMin,Img_xMax
		SetAxis /R/W=SLP_DLA_Panel_01#DLA_IMAGE2 left,Img_yMin,Img_yMax
	Endif
	
	if (Exists(VoronoiAreaW_FName)&&Exists(IslandAreaW_FName))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_PLOT1",VoronoiAreaW_FName+";"+IslandAreaW_FName,2)
		Modifygraph /W=SLP_DLA_Panel_01#DLA_PLOT1 mode=3,mirror=1,minor=1,tick=2
		Label /W=SLP_DLA_Panel_01#DLA_PLOT1 bottom "Voronoi area"
		Label /W=SLP_DLA_Panel_01#DLA_PLOT1 left "Island area"
		SetAxis /W=SLP_DLA_Panel_01#DLA_PLOT1 bottom,0,*
		SetAxis /W=SLP_DLA_Panel_01#DLA_PLOT1 left,0,*
	Else
		SLP_Util_RemoveAllTraces("SLP_DLA_Panel_01#DLA_PLOT1")
	Endif
	
	If (Exists(NrmAreaHW_FName))
		SLP_Util_AddnRmTraces("SLP_DLA_Panel_01#DLA_PLOT2",NrmAreaHW_FName,0)
		Modifygraph /W=SLP_DLA_Panel_01#DLA_PLOT2 mode=5,mirror=1,minor=1,tick=2,hbFill=4
		Label /W=SLP_DLA_Panel_01#DLA_PLOT2 bottom "Normalized island area"
		Label /W=SLP_DLA_Panel_01#DLA_PLOT2 left "Counts"
	Else
		SLP_Util_RemoveAllTraces("SLP_DLA_Panel_01#DLA_PLOT2")
	Endif
	
	If (Exists(BetaCurve_FName))
		Appendtograph /W=SLP_DLA_Panel_01#DLA_PLOT2 $BetaCurve_FName
	Endif
End

Function ButtonProc_DLA_DelImage(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SLP_DLA_DelImage()
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SLP_DLA_DelImage()
	
	ControlInfo /W=SLP_DLA_Panel_01 ListBox_ImageList
	variable SelRow=V_Value
	Wave /T SLP_DLA_ImgListW=root:Package_SLP:DLA:SLP_DLA_ImgListW 
	Wave /T SLP_DLA_ImgListDisplayW=root:Package_SLP:DLA:SLP_DLA_ImgListDisplayW 
	Wave SLP_DLA_ImgListDisplaySelW=root:Package_SLP:DLA:SLP_DLA_ImgListDisplaySelW 
	String ImgName=SLP_DLA_ImgListW[SelRow][0]
	String PromptStr="Are you sure that you want to delete: "+ImgName
	
	Doalert 1,PromptStr
	If (V_flag==1)
		If (SelRow<dimsize(SLP_DLA_ImgListW,0))
			ListBox ListBox_ImageList, SelRow=SelRow+1 //Select the next one
			SLP_DLA_DisplaySelectedImg()
		Elseif (SelRow==dimsize(SLP_DLA_ImgListW,0)) //If the last image is to be deleted
			ListBox ListBox_ImageList, SelRow=0 //Select the first row
			SLP_DLA_DisplaySelectedImg()
		Endif
		
		String DataFolder_FName=SLP_DLA_ImgListW[SelRow][1]
		killDataFolder /Z $DataFolder_FName
		variable DeleteImgError_Flg=V_Flag
		
		if (DeleteImgError_Flg==0) 
			//Only update ScanListW if Image folder can be deleted
			DeletePoints SelRow,1, SLP_DLA_ImgListW
			DeletePoints SelRow,1, SLP_DLA_ImgListDisplayW
			DeletePoints SelRow,1, SLP_DLA_ImgListDisplaySelW
		Endif
	Endif
	
	ListBox ListBox_ImageList, SelRow=SelRow
	
	Return DeleteImgError_Flg
End

Function ButtonProc_DLA_Plot(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
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
			variable Img_xMin=dimoffset(ImgW,0)
			variable Img_xMax=dimoffset(ImgW,0)+dimdelta(ImgW,0)*(dimsize(ImgW,0)-1)
			variable Img_yMin=dimoffset(ImgW,1)
			variable Img_yMax=dimoffset(ImgW,1)+dimdelta(ImgW,1)*(dimsize(ImgW,1)-1)
										
			StrSwitch(ba.CtrlName)	// string switch
				case "Button_PlotOrg":
					Display		
					AppendImage $ImgW_FName
					break
				case "Button_PlotTh":	
					Display	
					AppendImage $ThImgW_Name
					break
				case "Button_PlotVor":	
					Display	
					AppendImage $IntNrmImgW_Name
					Appendtograph $ESpotYW_Name vs $ESpotXW_Name
					Modifygraph mode=3,marker=19,msize=2 
					Appendtograph $VEdgesYW_Name vs $VEdgesXW_Name
					SetAxis bottom,Img_xMin,Img_xMax
					SetAxis left,Img_yMin,Img_yMax
					break
				case "Button_PlotIVArea":	
					Display	
					Appendtograph $IslandAreaW_FName vs $VoronoiAreaW_FName
					Modifygraph mode=3,mirror=1,minor=1,tick=2
					Label bottom "Voronoi area"
					Label left "Island area"
					SetAxis bottom,0,*
					SetAxis left,0,*
					break
				case "Button_PlotISD":	
					Display	
					Appendtograph $NrmAreaHW_FName
					Modifygraph mode=5,mirror=1,minor=1,tick=2,hbFill=4
					Label bottom "Normalized island area"
					Label left "Counts"
					Appendtograph $BetaCurve_FName
					break
			endswitch
			
			break
		case -1: // control being killed
			break
	endswitch

	return 0
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
	
	wave W_ImageObjArea
	duplicate /O W_ImageObjArea,$IslandAreaW_FName 
	
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

