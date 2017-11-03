//Maya ASCII 2016 scene
//Name: AGDEV_models.ma
//Last modified: Thu, Nov 02, 2017 11:28:09 AM
//Codeset: 950
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "3ECA5905-45E1-AD60-F599-CEA8E0221E07";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4140654270816189 41.519998275406117 73.551263369956217 ;
	setAttr ".r" -type "double3" -27.338352956103854 2162.599999997854 -9.9494756703782224e-017 ;
	setAttr ".rp" -type "double3" -1.1102230246251565e-016 3.3306690738754696e-016 1.7763568394002505e-015 ;
	setAttr ".rpt" -type "double3" 1.0933165673585218e-015 4.5801585565771401e-016 -4.7713046324791867e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A0D40931-477B-F7E4-E8FD-019809716917";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 80.090408448633411;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "9DE760B1-40D5-754F-4BE8-E28342DB605D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.51099765430536581 100.1 0.83436335742048029 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "24CB13A0-43EA-BE2B-FBF9-5FAE669187AF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30.695772096034148;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B7E8DBB7-47C1-2DCE-6790-D6B4C37E91F7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.9408241488739932 2.5140186864864105 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1C2FB7F3-481B-4348-5BA1-15A06708C628";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 39.04701368496837;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "3532710A-4111-C294-D207-6C99AA27EE69";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C3C1EF91-4FCB-325B-3573-1A804CA742BA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 35.120336133393906;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "960E6C86-418F-6EC1-02B8-F08B0238F6A5";
	setAttr ".t" -type "double3" -12 0 -12 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "189B56E9-4A5B-93E1-F223-D4A87927B688";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 1.5 0.5 0.5 1.5 0.5 -0.5 2.5 0.5 0.5 2.5 0.5
		 -0.5 2.5 -0.5 0.5 2.5 -0.5 -0.5 1.5 -0.5 0.5 1.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2";
	rename -uid "C3DB14E8-4CA3-49D4-5266-8FB1B2504429";
	setAttr ".t" -type "double3" -12 0 -12 ;
	setAttr ".rp" -type "double3" 0 0.75 0 ;
	setAttr ".sp" -type "double3" 0 0.75 0 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "51A37BF8-4390-E152-1CE9-80872F8E1B4F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.25 0.5 0 0.25 -0.5 1.5 0.25 0.5 1.5 0.25
		 -0.5 1.5 -0.25 0.5 1.5 -0.25 -0.5 0 -0.25 0.5 0 -0.25;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	rename -uid "1B411CC0-4979-0BC1-CE05-D58E409102F4";
	setAttr ".t" -type "double3" -12 0 -12 ;
	setAttr ".rp" -type "double3" 0.75 1.25 0.5 ;
	setAttr ".sp" -type "double3" 0.75 1.25 0.5 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "D2691D1A-49CD-EA69-38F8-64879DD6E8CC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0.5 1 -0.25 1 1 -0.25 0.5 1 1.25 1 1 1.25
		 0.5 1.5 1.25 1 1.5 1.25 0.5 1.5 -0.25 1 1.5 -0.25;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "8B4977AA-4611-E6D9-C0E9-2B9BDCF829D7";
	setAttr ".t" -type "double3" -12 0 -12 ;
	setAttr ".rp" -type "double3" -0.75 1.25 0.5 ;
	setAttr ".sp" -type "double3" -0.75 1.25 0.5 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "156A9A91-4510-3123-15D5-63BE1F6EAA5B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 1.5 -0.75 -1 1.5 -0.75 
		-0.5 0.5 0.75 -1 0.5 0.75 -0.5 1 1.75 -1 1 1.75 -0.5 2 0.25 -1 2 0.25;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	rename -uid "CC1EB59B-40C2-C598-F1F2-45B93AB1F5A0";
	setAttr ".t" -type "double3" -12 0 -12 ;
	setAttr ".rp" -type "double3" -0.25 -0.75 0 ;
	setAttr ".sp" -type "double3" -0.25 -0.75 0 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "46168EA7-4B3A-2AC5-1617-1D9F2C6F3F23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1.5 0.25 0 -1.5 0.25 -0.5 0 0.25 0 0 0.25
		 -0.5 0 -0.25 0 0 -0.25 -0.5 -1.5 -0.25 0 -1.5 -0.25;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "B05F3EB0-45FF-E868-5030-EA9FFBC47CF8";
	setAttr ".t" -type "double3" -12 0 -12 ;
	setAttr ".rp" -type "double3" 0.25 -0.75 0 ;
	setAttr ".sp" -type "double3" 0.25 -0.75 0 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "E2C94853-4A92-D908-2997-EA9F70566112";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 -1 -0.25 0 -1 -0.25 0.5 
		-0.5 -0.25 0 -0.5 -0.25 0.5 -0.5 0.25 0 -0.5 0.25 0.5 -1 0.25 0 -1 0.25;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "7B03CFC9-4600-4894-2647-81AA4C62F432";
	setAttr ".t" -type "double3" -12 0 12 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "F1E4F8A6-4886-8B5F-A9F2-4C98F00F8BA5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37499997578561306 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 35 ".uvst[0].uvsp[0:34]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.055627655 0.375 0.055627655 0.125 0.055627659
		 0.375 0.6943723 0.625 0.6943723 0.875 0.055627659 0.625 0.089669377 0.375 0.089669377
		 0.125 0.089669377 0.375 0.66033053 0.625 0.66033053 0.875 0.089669377 0.49770731
		 0.25 0.49770731 0.5 0.49770731 0.66033053 0.49770731 0.6943723 0.49770731 0.75 0.49770731
		 0 0.49770731 1 0.49770731 0.055627655 0.49770731 0.089669377;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.37445876 0 -0.33251759 
		-0.37445876 0 -0.33251759 0.15295388 -0.19744189 -0.33251759 -0.16308847 -0.19744189 
		-0.33251759 0.15295388 -0.19744189 0.30876634 -0.16308847 -0.19744189 0.30876634 
		0.37445876 0 0.30876634 -0.37445876 0 0.30876634 -0.37445876 -0.080126524 -0.33251759 
		0.37445876 -0.080126524 -0.33251759 0.37445876 -0.080126524 0.30876634 -0.37445876 
		-0.080126524 0.30876634 -0.29275867 -0.068083413 -0.33251759 0.28595033 -0.068083413 
		-0.33251759 0.28595033 -0.068083413 0.30876634 -0.29275867 -0.068083413 0.30876634 
		-1.3322676e-015 -0.19744189 -0.33251759 -1.3322676e-015 -0.19744189 0.30876634 -8.8817842e-016 
		-0.068083413 0.30876634 -8.8817842e-016 -0.080126524 0.30876634 -8.8817842e-016 0 
		0.30876634 -8.8817842e-016 0 -0.33251759 -8.8817842e-016 -0.080126524 -0.33251759 
		-8.8817842e-016 -0.068083413 -0.33251759;
	setAttr -s 24 ".vt[0:23]"  -0.5 1.5 0.5 0.5 1.5 0.5 -0.5 2.5 0.5 0.5 2.5 0.5
		 -0.5 2.5 -0.5 0.5 2.5 -0.5 -0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.72251058 0.5 -0.5 1.72251058 0.5
		 -0.5 1.72251058 -0.5 0.5 1.72251058 -0.5 0.5 1.85867739 0.5 -0.5 1.85867739 0.5 -0.5 1.85867739 -0.5
		 0.5 1.85867739 -0.5 -0.0091707706 2.5 0.5 -0.0091707706 2.5 -0.5 -0.0091707706 1.85867739 -0.5
		 -0.0091707706 1.72251058 -0.5 -0.0091707706 1.5 -0.5 -0.0091707706 1.5 0.5 -0.0091707706 1.72251058 0.5
		 -0.0091707706 1.85867739 0.5;
	setAttr -s 44 ".ed[0:43]"  0 21 0 2 16 0 4 17 0 6 20 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 14 0 5 15 0 6 0 0 7 1 0 8 12 0 9 13 0 8 22 1 10 6 0 9 10 1 11 7 0 10 19 1
		 11 8 1 12 3 0 13 2 0 12 23 1 14 10 0 13 14 1 15 11 0 14 18 1 15 12 1 16 3 0 17 5 0
		 16 17 1 18 15 1 17 18 1 19 11 1 18 19 1 20 7 0 19 20 1 21 1 0 20 21 1 22 9 1 21 22 1
		 23 13 1 22 23 1 23 16 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 40 39 -5
		mu 0 4 0 31 33 15
		f 4 1 30 -3 -7
		mu 0 4 2 26 27 4
		f 4 18 36 -4 -16
		mu 0 4 17 29 30 6
		f 4 3 38 -1 -11
		mu 0 4 6 30 32 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -40 42 41 -14
		mu 0 4 15 33 34 21
		f 4 -17 13 24 23
		mu 0 4 16 15 21 22
		f 4 26 34 -19 -24
		mu 0 4 23 28 29 17
		f 4 -20 -26 27 -13
		mu 0 4 14 19 25 20
		f 4 -42 43 -2 -22
		mu 0 4 21 34 26 2
		f 4 -25 21 6 8
		mu 0 4 22 21 2 13
		f 4 2 32 -27 -9
		mu 0 4 4 27 28 23
		f 4 -28 -10 -8 -21
		mu 0 4 20 25 11 3
		f 4 28 7 -30 -31
		mu 0 4 26 3 5 27
		f 4 -33 29 9 -32
		mu 0 4 28 27 5 24
		f 4 -35 31 25 -34
		mu 0 4 29 28 24 18
		f 4 -37 33 17 -36
		mu 0 4 30 29 18 7
		f 4 -39 35 11 -38
		mu 0 4 32 30 7 9
		f 4 -41 37 5 14
		mu 0 4 33 31 1 14
		f 4 -43 -15 12 22
		mu 0 4 34 33 14 20
		f 4 -44 -23 20 -29
		mu 0 4 26 34 20 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	rename -uid "A03C6478-4A73-77C2-CF09-B08B41DE95F1";
	setAttr ".t" -type "double3" -12 0 12 ;
	setAttr ".rp" -type "double3" 0 0.75 0 ;
	setAttr ".sp" -type "double3" 0 0.75 0 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "3C275678-4B8D-CC61-A9CC-81BF283A8AE0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.17711896 0.375 0.17711896 0.125 0.17711896
		 0.375 0.57288104 0.625 0.57288104 0.875 0.17711896 0.625 0.13974367 0.375 0.13974367
		 0.125 0.13974367 0.375 0.61025631 0.625 0.61025631 0.875 0.13974367 0.625 0.11497584
		 0.375 0.11497584 0.125 0.11497584 0.375 0.63502419 0.625 0.63502419 0.875 0.11497584
		 0.50007975 0 0.50007975 1 0.50007975 0.11497584 0.50007975 0.13974367 0.50007975
		 0.17711896 0.50007975 0.25 0.50007975 0.5 0.50007975 0.57288104 0.50007975 0.61025631
		 0.50007975 0.63502419 0.50007975 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  -0.026521556 0 0 0.020889208 
		0 0 0.089220263 0 -0.049525343 -0.088044278 0 -0.049525343 0.089220263 0 0.045023039 
		-0.088044278 0 0.045023039 -0.026521556 0 0 0.020889208 0 0 0.088972613 -0.040850051 
		0.1125576 -0.080988273 -0.040850051 0.1125576 -0.080988273 -0.040850051 -0.1170599 
		0.088972613 -0.040850051 -0.1170599 -0.18336104 -0.21105857 -0.063032255 0.1777287 
		-0.21105857 -0.063032255 0.1777287 -0.21105857 0.045023039 -0.18336104 -0.21105857 
		0.045023039 -0.18336104 -0.36765042 -0.063032255 0.1777287 -0.36765042 -0.063032255 
		0.1777287 -0.36765042 0.045023039 -0.18336104 -0.36765042 0.045023039 0 -0.22467527 
		0 0 -0.36765042 -0.063032255 0 -0.21105857 -0.063032255 0 -0.040850051 0.1125576 
		0 0 -0.049525343 0 0 0.045023039 0 -0.040850051 -0.1170599 0 -0.21105857 0.045023039 
		0 -0.36765042 0.045023039 0 -0.22467527 0;
	setAttr -s 30 ".vt[0:29]"  -0.5 0 0.25 0.5 0 0.25 -0.5 1.5 0.25 0.5 1.5 0.25
		 -0.5 1.5 -0.25 0.5 1.5 -0.25 -0.5 0 -0.25 0.5 0 -0.25 0.5 1.062713742 0.25 -0.5 1.062713742 0.25
		 -0.5 1.062713742 -0.25 0.5 1.062713742 -0.25 0.5 0.838462 0.25 -0.5 0.838462 0.25
		 -0.5 0.838462 -0.25 0.5 0.838462 -0.25 0.5 0.68985504 0.25 -0.5 0.68985504 0.25 -0.5 0.68985504 -0.25
		 0.5 0.68985504 -0.25 0.00031906366 0 0.25 0.00031906366 0.68985504 0.25 0.00031906366 0.838462 0.25
		 0.00031906366 1.062713742 0.25 0.00031906366 1.5 0.25 0.00031906366 1.5 -0.25 0.00031906366 1.062713742 -0.25
		 0.00031906366 0.838462 -0.25 0.00031906366 0.68985504 -0.25 0.00031906366 0 -0.25;
	setAttr -s 56 ".ed[0:55]"  0 20 0 2 24 0 4 25 0 6 29 0 0 17 0 1 16 0
		 2 4 0 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 23 1 10 14 0 9 10 1 11 15 0 10 26 1
		 11 8 1 12 8 0 13 9 0 12 22 1 14 18 0 13 14 1 15 19 0 14 27 1 15 12 1 16 12 0 17 13 0
		 16 21 1 18 6 0 17 18 1 19 7 0 18 28 1 19 16 1 20 1 0 21 17 1 20 21 1 22 13 1 21 22 1
		 23 9 1 22 23 1 24 3 0 23 24 1 25 5 0 24 25 1 26 11 1 25 26 1 27 15 1 26 27 1 28 19 1
		 27 28 1 29 7 0 28 29 1 29 20 1;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 0 38 37 -5
		mu 0 4 0 32 34 27
		f 4 1 46 -3 -7
		mu 0 4 2 37 38 4
		f 4 34 54 -4 -32
		mu 0 4 29 41 42 6
		f 4 3 55 -1 -11
		mu 0 4 6 42 33 8
		f 4 -12 -34 35 -6
		mu 0 4 1 10 31 26
		f 4 10 4 32 31
		mu 0 4 12 0 27 28
		f 4 -42 44 -2 -14
		mu 0 4 15 36 37 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 48 -19 -9
		mu 0 4 4 38 39 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3
		f 4 -40 42 41 -22
		mu 0 4 21 35 36 15
		f 4 -25 21 16 15
		mu 0 4 22 21 15 16
		f 4 18 50 -27 -16
		mu 0 4 17 39 40 23
		f 4 -28 -18 19 -21
		mu 0 4 20 25 19 14
		f 4 -38 40 39 -30
		mu 0 4 27 34 35 21
		f 4 -33 29 24 23
		mu 0 4 28 27 21 22
		f 4 26 52 -35 -24
		mu 0 4 23 40 41 29
		f 4 -36 -26 27 -29
		mu 0 4 26 31 25 20
		f 4 36 5 30 -39
		mu 0 4 32 1 26 34
		f 4 -41 -31 28 22
		mu 0 4 35 34 26 20
		f 4 -43 -23 20 14
		mu 0 4 36 35 20 14
		f 4 -45 -15 12 -44
		mu 0 4 37 36 14 3
		f 4 -47 43 7 -46
		mu 0 4 38 37 3 5
		f 4 -49 45 9 -48
		mu 0 4 39 38 5 18
		f 4 -51 47 17 -50
		mu 0 4 40 39 18 24
		f 4 -53 49 25 -52
		mu 0 4 41 40 24 30
		f 4 -55 51 33 -54
		mu 0 4 42 41 30 7
		f 4 -56 53 11 -37
		mu 0 4 33 42 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	rename -uid "F9087409-4BD3-94FF-83F3-48834DE74913";
	setAttr ".t" -type "double3" -12 0 12 ;
	setAttr ".rp" -type "double3" 0.7 1.25 0.5 ;
	setAttr ".sp" -type "double3" 0.7 1.25 0.5 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "4B3FC892-4E4A-88CC-4BA7-339957EA717A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.57264727 0.875 0.17735274 0.125 0.17735274
		 0.375 0.57264727 0.375 0.17735274 0.625 0.17735274 0.375 0.14814205 0.125 0.14814205
		 0.375 0.60185796 0.625 0.60185796 0.875 0.14814205 0.625 0.14814205 0.375 0.093738496
		 0.125 0.093738496 0.375 0.6562615 0.625 0.6562615 0.875 0.093738496 0.625 0.093738496
		 0.625 0.68219912 0.875 0.067800939 0.125 0.067800939 0.375 0.68219912 0.375 0.067800939
		 0.625 0.067800939 0.625 0.52446342 0.875 0.22553657 0.125 0.22553657 0.375 0.52446342
		 0.375 0.22553658 0.625 0.22553658;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  0.62565547 1.013506889 -0.098297536 0.79031318 1.013506889 -0.098297521
		 0.58972591 1.094548345 1.4255898 0.82624274 1.094548345 1.4255898 0.58972591 1.34692168 1.4255898
		 0.82624274 1.34692168 1.4255898 0.62565547 1.43246543 -0.098297536 0.79031318 1.43246543 -0.098297521
		 0.91407049 1.43246543 0.81411642 0.50988251 1.43246543 0.81411642 0.50988251 1.013506889 0.81411642
		 0.91407049 1.013506889 0.81411642 0.62964761 1.14857602 0.6388523 0.62964761 1.30640101 0.6388523
		 0.78632104 1.30640113 0.6388523 0.78632104 1.14857602 0.6388523 0.62964761 1.14857602 0.31243098
		 0.62964761 1.30640101 0.31243098 0.78632104 1.30640101 0.31243098 0.78632104 1.14857602 0.31243098
		 0.93003917 1.43246543 0.11289177 0.48193735 1.43246543 0.11289177 0.48193735 1.013506889 0.11289179
		 0.93003917 1.013506889 0.11289179 0.91407043 1.43246531 1.21968067 0.50988251 1.43246531 1.21968067
		 0.50988251 1.013506889 1.21968067 0.91407043 1.013506889 1.21968067;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 0 6 7 0 0 22 0 1 23 0 2 4 0
		 3 5 0 4 25 0 5 24 0 6 0 0 7 1 0 8 14 0 9 13 0 8 9 1 10 26 0 9 10 1 11 27 0 10 11 1
		 11 8 1 12 10 0 13 17 0 12 13 1 14 18 0 13 14 1 15 11 0 14 15 1 15 12 1 16 12 0 17 21 0
		 16 17 1 18 20 0 17 18 1 19 15 0 18 19 1 19 16 1 20 7 0 21 6 0 20 21 1 22 16 0 21 22 1
		 23 19 0 22 23 1 23 20 1 24 8 0 25 9 0 24 25 1 26 2 0 25 26 1 27 3 0 26 27 1 27 24 1;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 50 49 -2 -48
		mu 0 4 42 43 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 46 -9
		mu 0 4 4 5 38 41
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 51 -10 -8 -50
		mu 0 4 43 39 11 3
		f 4 48 47 6 8
		mu 0 4 40 42 2 13
		f 4 32 31 38 -30
		mu 0 4 28 29 32 35
		f 4 40 39 30 29
		mu 0 4 34 36 26 27
		f 4 42 41 35 -40
		mu 0 4 36 37 31 26
		f 4 43 -32 34 -42
		mu 0 4 37 33 30 31
		f 4 -23 20 -17 13
		mu 0 4 21 20 18 16
		f 4 -15 12 -25 -14
		mu 0 4 17 14 23 22
		f 4 -27 -13 -20 -26
		mu 0 4 25 24 15 19
		f 4 -28 25 -19 -21
		mu 0 4 20 25 19 18
		f 4 -31 28 22 21
		mu 0 4 27 26 20 21
		f 4 24 23 -33 -22
		mu 0 4 22 23 29 28
		f 4 -35 -24 26 -34
		mu 0 4 31 30 24 25
		f 4 -36 33 27 -29
		mu 0 4 26 31 25 20
		f 4 -39 36 -4 -38
		mu 0 4 35 32 7 6
		f 4 10 4 -41 37
		mu 0 4 12 0 36 34
		f 4 0 5 -43 -5
		mu 0 4 0 1 37 36
		f 4 -12 -37 -44 -6
		mu 0 4 1 10 33 37
		f 4 -47 44 14 -46
		mu 0 4 41 38 14 17
		f 4 16 15 -49 45
		mu 0 4 16 18 42 40
		f 4 18 17 -51 -16
		mu 0 4 18 19 43 42
		f 4 19 -45 -52 -18
		mu 0 4 19 15 39 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12";
	rename -uid "7B7CDF79-4BD6-1693-41DE-8D8557E37866";
	setAttr ".t" -type "double3" -12 0 12 ;
	setAttr ".rp" -type "double3" 0.25 -0.75 0 ;
	setAttr ".sp" -type "double3" 0.25 -0.75 0 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "D7F5F146-44FF-0428-ACE7-2A8BC088F8BF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3749999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.043739457 0.375 0.043739457 0.125 0.043739453
		 0.375 0.70626056 0.625 0.70626056 0.875 0.043739453 0.625 0.1150081 0.375 0.1150081
		 0.125 0.1150081 0.375 0.63499188 0.625 0.63499188 0.875 0.1150081 0.625 0.16507453
		 0.375 0.16507453 0.125 0.16507454 0.375 0.58492541 0.625 0.58492541 0.875 0.16507454;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0.1716633 0 0 -0.095812067 
		0 0 0.1716633 0 -0.20260358 -0.095812067 0 -0.20260358 0.1716633 0 0.12606451 -0.095812067 
		0 0.12606451 0.1716633 0 0 -0.095812067 0 0 -0.15027879 -0.13056681 -0.25212872 0.22613002 
		-0.13056681 -0.25212872 0.22613002 -0.13056681 0.14407369 -0.15027879 -0.13056681 
		0.14407369 -0.15027879 -0.14857607 -0.25212878 0.22613002 -0.14857607 -0.25212878 
		0.22613002 -0.14857607 0.14407369 -0.15027879 -0.14857607 0.14407369 -0.014111973 
		0 -0.076539166 0.089963213 0 -0.076539166 0.089963213 0 0.027013823 -0.014111973 
		0 0.027013823;
	setAttr -s 20 ".vt[0:19]"  0 -1.5 0.25 0.5 -1.5 0.25 0 0 0.25 0.5 0 0.25
		 0 0 -0.25 0.5 0 -0.25 0 -1.5 -0.25 0.5 -1.5 -0.25 0.5 -1.23756325 0.25 0 -1.23756325 0.25
		 0 -1.23756325 -0.25 0.5 -1.23756325 -0.25 0.5 -0.80995136 0.25 0 -0.80995136 0.25
		 0 -0.80995136 -0.25 0.5 -0.80995136 -0.25 0.5 -0.50955272 0.25 0 -0.50955272 0.25
		 0 -0.50955272 -0.25 0.5 -0.50955272 -0.25;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 18 0 5 19 0 6 0 0 7 1 0 8 12 0 9 13 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1
		 11 8 1 12 16 0 13 17 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1 16 3 0 17 2 0
		 16 17 1 18 14 0 17 18 1 19 15 0 18 19 1 19 16 1;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 22 -14
		mu 0 4 15 14 20 21
		f 4 -17 13 24 23
		mu 0 4 16 15 21 22
		f 4 26 25 -19 -24
		mu 0 4 23 24 18 17
		f 4 -20 -26 27 -13
		mu 0 4 14 19 25 20
		f 4 -23 20 30 -22
		mu 0 4 21 20 26 27
		f 4 -25 21 32 31
		mu 0 4 22 21 27 28
		f 4 34 33 -27 -32
		mu 0 4 29 30 24 23
		f 4 -28 -34 35 -21
		mu 0 4 20 25 31 26
		f 4 -31 28 -2 -30
		mu 0 4 27 26 3 2
		f 4 -33 29 6 8
		mu 0 4 28 27 2 13
		f 4 2 9 -35 -9
		mu 0 4 4 5 30 29
		f 4 -36 -10 -8 -29
		mu 0 4 26 31 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14";
	rename -uid "DFE27AA2-4EF9-69A9-8961-B2B9E7003734";
	setAttr ".t" -type "double3" -12 0 12 ;
	setAttr ".rp" -type "double3" -0.30000000000000004 -0.75 0 ;
	setAttr ".sp" -type "double3" -0.30000000000000004 -0.75 0 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "BC1194AE-47CB-3B91-DB4C-FB982EF1DC37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3749999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.043739457 0.375 0.043739457 0.125 0.043739453
		 0.375 0.70626056 0.625 0.70626056 0.875 0.043739453 0.625 0.1150081 0.375 0.1150081
		 0.125 0.1150081 0.375 0.63499188 0.625 0.63499188 0.875 0.1150081 0.625 0.16507453
		 0.375 0.16507453 0.125 0.16507454 0.375 0.58492541 0.625 0.58492541 0.875 0.16507454;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.37833673 0 0 -0.64581209 
		0 0 -0.37833673 0 -0.20260358 -0.64581209 0 -0.20260358 -0.37833673 0 0.12606451 
		-0.64581209 0 0.12606451 -0.37833673 0 0 -0.64581209 0 0 -0.70027882 -0.13056681 
		-0.25212872 -0.32387 -0.13056681 -0.25212872 -0.32387 -0.13056681 0.14407369 -0.70027882 
		-0.13056681 0.14407369 -0.70027882 -0.14857607 -0.25212878 -0.32387 -0.14857607 -0.25212878 
		-0.32387 -0.14857607 0.14407369 -0.70027882 -0.14857607 0.14407369 -0.56411201 0 
		-0.076539166 -0.46003681 0 -0.076539166 -0.46003681 0 0.027013823 -0.56411201 0 0.027013823;
	setAttr -s 20 ".vt[0:19]"  0 -1.5 0.25 0.5 -1.5 0.25 0 0 0.25 0.5 0 0.25
		 0 0 -0.25 0.5 0 -0.25 0 -1.5 -0.25 0.5 -1.5 -0.25 0.5 -1.23756325 0.25 0 -1.23756325 0.25
		 0 -1.23756325 -0.25 0.5 -1.23756325 -0.25 0.5 -0.80995136 0.25 0 -0.80995136 0.25
		 0 -0.80995136 -0.25 0.5 -0.80995136 -0.25 0.5 -0.50955272 0.25 0 -0.50955272 0.25
		 0 -0.50955272 -0.25 0.5 -0.50955272 -0.25;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 18 0 5 19 0 6 0 0 7 1 0 8 12 0 9 13 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1
		 11 8 1 12 16 0 13 17 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1 16 3 0 17 2 0
		 16 17 1 18 14 0 17 18 1 19 15 0 18 19 1 19 16 1;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 22 -14
		mu 0 4 15 14 20 21
		f 4 -17 13 24 23
		mu 0 4 16 15 21 22
		f 4 26 25 -19 -24
		mu 0 4 23 24 18 17
		f 4 -20 -26 27 -13
		mu 0 4 14 19 25 20
		f 4 -23 20 30 -22
		mu 0 4 21 20 26 27
		f 4 -25 21 32 31
		mu 0 4 22 21 27 28
		f 4 34 33 -27 -32
		mu 0 4 29 30 24 23
		f 4 -28 -34 35 -21
		mu 0 4 20 25 31 26
		f 4 -31 28 -2 -30
		mu 0 4 27 26 3 2
		f 4 -33 29 6 8
		mu 0 4 28 27 2 13
		f 4 2 9 -35 -9
		mu 0 4 4 5 30 29
		f 4 -36 -10 -8 -29
		mu 0 4 26 31 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube14";
	rename -uid "1F51128D-462F-CACA-0F9D-789D59332381";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 -1 -0.25 0 -1 -0.25 0.5 
		-0.5 -0.25 0 -0.5 -0.25 0.5 -0.5 0.25 0 -0.5 0.25 0.5 -1 0.25 0 -1 0.25;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15";
	rename -uid "8A468E89-4161-123B-A0FB-3683950AA952";
	setAttr ".t" -type "double3" -12 0 12 ;
	setAttr ".rp" -type "double3" -0.7 1.25 0.5 ;
	setAttr ".sp" -type "double3" -0.7 1.25 0.5 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "815B2A54-4778-01D8-EE54-3A8E967BB23A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.57264727 0.875 0.17735274 0.125 0.17735274
		 0.375 0.57264727 0.375 0.17735274 0.625 0.17735274 0.375 0.14814205 0.125 0.14814205
		 0.375 0.60185796 0.625 0.60185796 0.875 0.14814205 0.625 0.14814205 0.375 0.093738496
		 0.125 0.093738496 0.375 0.6562615 0.625 0.6562615 0.875 0.093738496 0.625 0.093738496
		 0.625 0.68219912 0.875 0.067800939 0.125 0.067800939 0.375 0.68219912 0.375 0.067800939
		 0.625 0.067800939 0.625 0.52446342 0.875 0.22553657 0.125 0.22553657 0.375 0.52446342
		 0.375 0.22553658 0.625 0.22553658;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -1.45 0 0 -1.45 0 0 -1.3701566 
		0.08104147 0 -1.5378277 0.08104147 0 -1.3701566 -0.085543774 0 -1.5378277 -0.085543774 
		0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 
		-1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 
		0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0 -1.45 0 0;
	setAttr -s 28 ".vt[0:27]"  0.67565548 1.013506889 -0.098297536 0.8403132 1.013506889 -0.098297521
		 0.55988252 1.013506889 1.4255898 0.9640705 1.013506889 1.4255898 0.55988252 1.43246543 1.4255898
		 0.9640705 1.43246543 1.4255898 0.67565548 1.43246543 -0.098297536 0.8403132 1.43246543 -0.098297521
		 0.9640705 1.43246543 0.81411642 0.55988252 1.43246543 0.81411642 0.55988252 1.013506889 0.81411642
		 0.9640705 1.013506889 0.81411642 0.67964762 1.14857602 0.6388523 0.67964762 1.30640101 0.6388523
		 0.83632106 1.30640113 0.6388523 0.83632106 1.14857602 0.6388523 0.67964762 1.14857602 0.31243098
		 0.67964762 1.30640101 0.31243098 0.83632106 1.30640101 0.31243098 0.83632106 1.14857602 0.31243098
		 0.98003918 1.43246543 0.11289177 0.53193736 1.43246543 0.11289177 0.53193736 1.013506889 0.11289179
		 0.98003918 1.013506889 0.11289179 0.96407044 1.43246531 1.21968067 0.55988252 1.43246531 1.21968067
		 0.55988252 1.013506889 1.21968067 0.96407044 1.013506889 1.21968067;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 0 6 7 0 0 22 0 1 23 0 2 4 0
		 3 5 0 4 25 0 5 24 0 6 0 0 7 1 0 8 14 0 9 13 0 8 9 1 10 26 0 9 10 1 11 27 0 10 11 1
		 11 8 1 12 10 0 13 17 0 12 13 1 14 18 0 13 14 1 15 11 0 14 15 1 15 12 1 16 12 0 17 21 0
		 16 17 1 18 20 0 17 18 1 19 15 0 18 19 1 19 16 1 20 7 0 21 6 0 20 21 1 22 16 0 21 22 1
		 23 19 0 22 23 1 23 20 1 24 8 0 25 9 0 24 25 1 26 2 0 25 26 1 27 3 0 26 27 1 27 24 1;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 50 49 -2 -48
		mu 0 4 42 43 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 46 -9
		mu 0 4 4 5 38 41
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 51 -10 -8 -50
		mu 0 4 43 39 11 3
		f 4 48 47 6 8
		mu 0 4 40 42 2 13
		f 4 32 31 38 -30
		mu 0 4 28 29 32 35
		f 4 40 39 30 29
		mu 0 4 34 36 26 27
		f 4 42 41 35 -40
		mu 0 4 36 37 31 26
		f 4 43 -32 34 -42
		mu 0 4 37 33 30 31
		f 4 -23 20 -17 13
		mu 0 4 21 20 18 16
		f 4 -15 12 -25 -14
		mu 0 4 17 14 23 22
		f 4 -27 -13 -20 -26
		mu 0 4 25 24 15 19
		f 4 -28 25 -19 -21
		mu 0 4 20 25 19 18
		f 4 -31 28 22 21
		mu 0 4 27 26 20 21
		f 4 24 23 -33 -22
		mu 0 4 22 23 29 28
		f 4 -35 -24 26 -34
		mu 0 4 31 30 24 25
		f 4 -36 33 27 -29
		mu 0 4 26 31 25 20
		f 4 -39 36 -4 -38
		mu 0 4 35 32 7 6
		f 4 10 4 -41 37
		mu 0 4 12 0 36 34
		f 4 0 5 -43 -5
		mu 0 4 0 1 37 36
		f 4 -12 -37 -44 -6
		mu 0 4 1 10 33 37
		f 4 -47 44 14 -46
		mu 0 4 41 38 14 17
		f 4 16 15 -49 45
		mu 0 4 16 18 42 40
		f 4 18 17 -51 -16
		mu 0 4 18 19 43 42
		f 4 19 -45 -52 -18
		mu 0 4 19 15 39 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube15";
	rename -uid "F8D83369-403E-26CF-5309-84BEE671DDE7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0.5 1 -0.25 1 1 -0.25 0.5 1 1.25 1 1 1.25
		 0.5 1.5 1.25 1 1.5 1.25 0.5 1.5 -0.25 1 1.5 -0.25;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16";
	rename -uid "1914C035-4B66-9263-47DB-2786E0682830";
	setAttr ".t" -type "double3" 0 0 -12 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "DA0493FD-49CD-F6B2-0530-B79146B1E0FE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 3 3 -3 3 -3 3 3 3 3 3 -3 3 -3 3 3 -3
		 -3 -3 -3 3 -3 -3;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPyramid1";
	rename -uid "657F71BE-4814-AA3E-2F9E-0BBB876F2971";
	setAttr ".t" -type "double3" 0 0 -12 ;
	setAttr ".rp" -type "double3" 0 5.15 0 ;
	setAttr ".sp" -type "double3" 0 5.15 0 ;
createNode mesh -n "pPyramidShape1" -p "pPyramid1";
	rename -uid "DD10DC8A-4056-1F28-AFD0-D787FA202651";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  -3.99999928 3.028679848 -4.000000476837 -4 3.028679848 3.99999952
		 3.99999952 3.028679848 4 3.99999976 3.028679848 -3.99999976 0 7.27132034 0;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18";
	rename -uid "0089F2EC-43E4-B339-EC91-6BABB67006D6";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 2.5 2.5 0 ;
	setAttr ".sp" -type "double3" 2.5 2.5 0 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "BFE49FBA-42FB-E6CC-8F8D-4390D8C0B5AE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  2 2 3 3 2 3 2 3 3 3 3 3 2 3 -3 3 3 -3 2 2 -3
		 3 2 -3;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19";
	rename -uid "ED63C234-466A-CF1C-A93D-33849CCD6AE7";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -2.5 2.5 0 ;
	setAttr ".sp" -type "double3" -2.5 2.5 0 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "BAA2FDD1-4C55-4F04-AFBB-B2B4F6E0E99B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5 2.5 2.5 -2.5 2.5 2.5 
		-2.5 2.5 2.5 -2.5 2.5 2.5 -2.5 2.5 -2.5 -2.5 2.5 -2.5 -2.5 2.5 -2.5 -2.5 2.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20";
	rename -uid "07953704-4581-A1A5-6237-439943147336";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -2.5 1.5 0 ;
	setAttr ".sp" -type "double3" -2.5 1.5 0 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "41D15296-49A1-DDC9-74EF-0B89BF147D89";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5 1.5 2.5 -2.5 1.5 2.5 
		-2.5 1.5 2.5 -2.5 1.5 2.5 -2.5 1.5 -2.5 -2.5 1.5 -2.5 -2.5 1.5 -2.5 -2.5 1.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21";
	rename -uid "C37B6867-4F1A-BE02-5797-B191FA9C8159";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 2.5 1.5 0 ;
	setAttr ".sp" -type "double3" 2.5 1.5 0 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "30221FD2-4B8F-E29E-EE78-DDA4F1F550AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.5 1.5 2.5 2.5 1.5 2.5 2.5 
		1.5 2.5 2.5 1.5 2.5 2.5 1.5 -2.5 2.5 1.5 -2.5 2.5 1.5 -2.5 2.5 1.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22";
	rename -uid "4681C3D6-4B7F-154A-4824-5CAE60D4D858";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -2.5 0.5 0 ;
	setAttr ".sp" -type "double3" -2.5 0.5 0 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "59651631-4DB8-1D0F-F426-FEACFA880E63";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5 0.5 2.5 -2.5 0.5 2.5 
		-2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 0.5 -2.5 -2.5 0.5 -2.5 -2.5 0.5 -2.5 -2.5 0.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube23";
	rename -uid "92927F72-404C-A591-39FA-61AD509EDC8E";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 2.5 0.5 0 ;
	setAttr ".sp" -type "double3" 2.5 0.5 0 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "39371159-4E64-12C7-7FD5-A09A0B841F30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.5 0.5 2.5 2.5 0.5 2.5 2.5 
		0.5 2.5 2.5 0.5 2.5 2.5 0.5 -2.5 2.5 0.5 -2.5 2.5 0.5 -2.5 2.5 0.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24";
	rename -uid "42DC723B-463F-D8D1-F372-A09B2B4C7A97";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 2.5 -0.5 0 ;
	setAttr ".sp" -type "double3" 2.5 -0.5 0 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "51ABEACE-484A-778D-D517-E6B4A76CA609";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.5 -0.5 2.5 2.5 -0.5 2.5 
		2.5 -0.5 2.5 2.5 -0.5 2.5 2.5 -0.5 -2.5 2.5 -0.5 -2.5 2.5 -0.5 -2.5 2.5 -0.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25";
	rename -uid "F0FA2EBA-4C4D-012B-9584-3F8C3245DE4D";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -2.5 -0.5 0 ;
	setAttr ".sp" -type "double3" -2.5 -0.5 0 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "A551FD54-4342-CEB9-A3D4-2B88CD454FA4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5 -0.5 2.5 -2.5 -0.5 2.5 
		-2.5 -0.5 2.5 -2.5 -0.5 2.5 -2.5 -0.5 -2.5 -2.5 -0.5 -2.5 -2.5 -0.5 -2.5 -2.5 -0.5 
		-2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26";
	rename -uid "C822D2A1-4108-87D2-75A3-2DB6F10FDBAA";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 2.5 -1.5 0 ;
	setAttr ".sp" -type "double3" 2.5 -1.5 0 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "B7E07A8F-4AA4-CC16-381D-C9BA767FD5AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.5 -1.5 2.5 2.5 -1.5 2.5 
		2.5 -1.5 2.5 2.5 -1.5 2.5 2.5 -1.5 -2.5 2.5 -1.5 -2.5 2.5 -1.5 -2.5 2.5 -1.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27";
	rename -uid "703939E5-4B04-D746-0EC4-D38FFEA283C2";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -2.5 -1.5 0 ;
	setAttr ".sp" -type "double3" -2.5 -1.5 0 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "937FECB2-410F-6393-3310-249CD4545E67";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5 -1.5 2.5 -2.5 -1.5 2.5 
		-2.5 -1.5 2.5 -2.5 -1.5 2.5 -2.5 -1.5 -2.5 -2.5 -1.5 -2.5 -2.5 -1.5 -2.5 -2.5 -1.5 
		-2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28";
	rename -uid "D67609F9-4574-649D-1390-22A21037B5BD";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 2.5 -2.5 0 ;
	setAttr ".sp" -type "double3" 2.5 -2.5 0 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "2DC3FA82-44D8-A769-BECC-FCB080FBF11C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.5 -2.5 2.5 2.5 -2.5 2.5 
		2.5 -2.5 2.5 2.5 -2.5 2.5 2.5 -2.5 -2.5 2.5 -2.5 -2.5 2.5 -2.5 -2.5 2.5 -2.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube29";
	rename -uid "6FF19096-437A-7360-2D92-4B92FA5BD764";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -2.5 -2.5 0 ;
	setAttr ".sp" -type "double3" -2.5 -2.5 0 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "1AC47F75-4676-889F-62AF-B0B3D1BEAF52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.5 -2.5 2.5 -2.5 -2.5 2.5 
		-2.5 -2.5 2.5 -2.5 -2.5 2.5 -2.5 -2.5 -2.5 -2.5 -2.5 -2.5 -2.5 -2.5 -2.5 -2.5 -2.5 
		-2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube30";
	rename -uid "08CE3FC9-4E36-B554-0356-97A132448B2B";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 0 2.5 -2.5 ;
	setAttr ".sp" -type "double3" 0 2.5 -2.5 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	rename -uid "65A7B522-4638-E681-C97E-9E803BBBCBF2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 2.5 -2.5 1.5 2.5 -2.5 
		-1.5 2.5 -2.5 1.5 2.5 -2.5 -1.5 2.5 -2.5 1.5 2.5 -2.5 -1.5 2.5 -2.5 1.5 2.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube31";
	rename -uid "75C5E3CA-4D0D-1707-6322-56874CAFE0FF";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 0 2.5 2.5 ;
	setAttr ".sp" -type "double3" 0 2.5 2.5 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	rename -uid "87AB0670-4F2B-C135-DE9E-6E8F8AA90343";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.19471799 0 0.375 0.819718 0.625 0.819718 0.805282
		 0 0.125 0.069718003 0.375 0.680282 0.625 0.680282 0.875 0.069718003;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -2 2 3 2 2 3 -2 3 3 2 3 3 -2 3 2 2 3 2 -2 2 2
		 2 2 2 -2 2 2.27887201 2 2 2.27887201 -2 2.27887201 2 2 2.27887201 2;
	setAttr -s 18 ".ed[0:17]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 8 0 7 9 0 8 0 0 9 1 0 8 9 1 10 6 0 11 7 0 10 11 1;
	setAttr -s 8 -ch 36 ".fc[0:7]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 17 16 -4 -16
		mu 0 4 19 20 7 6
		f 4 14 13 -1 -13
		mu 0 4 15 16 9 8
		f 6 -14 -12 -17 -10 -8 -6
		mu 0 6 1 17 10 21 11 3
		f 6 10 12 4 6 8 15
		mu 0 6 12 14 0 2 13 18
		f 4 3 11 -15 -11
		mu 0 4 6 7 16 15
		f 4 2 9 -18 -9
		mu 0 4 4 5 20 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32";
	rename -uid "C65D40BF-404B-2003-F78F-10AEBC4AE98A";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 0 1.5 2.5 ;
	setAttr ".sp" -type "double3" 0 1.5 2.5 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	rename -uid "CF6B4BE6-479C-E8B7-F05E-ECBDB0D2BAA7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 1.5 2.5 1.5 1.5 2.5 
		-1.5 1.5 2.5 1.5 1.5 2.5 -1.5 1.5 2.5 1.5 1.5 2.5 -1.5 1.5 2.5 1.5 1.5 2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube33";
	rename -uid "E98CF189-41AF-54B6-6010-189D5DBAA14A";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 0 1.5 -2.5 ;
	setAttr ".sp" -type "double3" 0 1.5 -2.5 ;
createNode mesh -n "pCubeShape33" -p "pCube33";
	rename -uid "979987B1-4C5E-EF7A-D377-D596477B3E6B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 1.5 -2.5 1.5 1.5 -2.5 
		-1.5 1.5 -2.5 1.5 1.5 -2.5 -1.5 1.5 -2.5 1.5 1.5 -2.5 -1.5 1.5 -2.5 1.5 1.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube34";
	rename -uid "1C4213CA-4D7B-7F62-01B7-0BBB17947755";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 0 0.5 -2.5 ;
	setAttr ".sp" -type "double3" 0 0.5 -2.5 ;
createNode mesh -n "pCubeShape34" -p "pCube34";
	rename -uid "A5241A2B-4A7C-4BCB-27FD-E8A2665E854F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 0.5 -2.5 1.5 0.5 -2.5 
		-1.5 0.5 -2.5 1.5 0.5 -2.5 -1.5 0.5 -2.5 1.5 0.5 -2.5 -1.5 0.5 -2.5 1.5 0.5 -2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube35";
	rename -uid "680471F4-4FA0-F8C5-3B97-C8A58E3F7EF2";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 0 -0.5 -2.5 ;
	setAttr ".sp" -type "double3" 0 -0.5 -2.5 ;
createNode mesh -n "pCubeShape35" -p "pCube35";
	rename -uid "A99EB01A-4ECF-61EF-F2E2-03BA969A9362";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 -0.5 -2.5 1.5 -0.5 -2.5 
		-1.5 -0.5 -2.5 1.5 -0.5 -2.5 -1.5 -0.5 -2.5 1.5 -0.5 -2.5 -1.5 -0.5 -2.5 1.5 -0.5 
		-2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube36";
	rename -uid "92EFD337-4A44-6230-C732-9BABEE5CDDE7";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 0 -1.5 -2.5 ;
	setAttr ".sp" -type "double3" 0 -1.5 -2.5 ;
createNode mesh -n "pCubeShape36" -p "pCube36";
	rename -uid "B89D1920-4447-BF78-0838-84826F38E108";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 -1.5 -2.5 1.5 -1.5 -2.5 
		-1.5 -1.5 -2.5 1.5 -1.5 -2.5 -1.5 -1.5 -2.5 1.5 -1.5 -2.5 -1.5 -1.5 -2.5 1.5 -1.5 
		-2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube37";
	rename -uid "1C5FA220-48D9-147E-7FBE-17982762EED4";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 0 -2.5 -2.5 ;
	setAttr ".sp" -type "double3" 0 -2.5 -2.5 ;
createNode mesh -n "pCubeShape37" -p "pCube37";
	rename -uid "B8816ACA-40DD-617E-26F7-ECB97C9E9EAA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 -2.5 -2.5 1.5 -2.5 -2.5 
		-1.5 -2.5 -2.5 1.5 -2.5 -2.5 -1.5 -2.5 -2.5 1.5 -2.5 -2.5 -1.5 -2.5 -2.5 1.5 -2.5 
		-2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube38";
	rename -uid "693783E6-4B6B-8AAF-CD9C-D08EF07C8022";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 1.5 0.5 2.5 ;
	setAttr ".sp" -type "double3" 1.5 0.5 2.5 ;
createNode mesh -n "pCubeShape38" -p "pCube38";
	rename -uid "7498E7A7-4B79-C1E0-C65B-5C8DCB9F62CF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.5 0.5 2.5 1.5 0.5 2.5 1.5 
		0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube39";
	rename -uid "081B9FF4-4615-F57F-3891-16ABAFB57756";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -1.5 0.5 2.5 ;
	setAttr ".sp" -type "double3" -1.5 0.5 2.5 ;
createNode mesh -n "pCubeShape39" -p "pCube39";
	rename -uid "18B4D2BF-4126-013B-024A-74830154919A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 0.5 2.5 -1.5 0.5 2.5 
		-1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube40";
	rename -uid "63AFD452-4E1F-EEF3-0CB3-5AAC2A16161B";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -1.5 -0.5 2.5 ;
	setAttr ".sp" -type "double3" -1.5 -0.5 2.5 ;
createNode mesh -n "pCubeShape40" -p "pCube40";
	rename -uid "B9B730D2-49D7-CB33-AEBB-358927249868";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 -0.5 2.5 -1.5 -0.5 2.5 
		-1.5 -0.5 2.5 -1.5 -0.5 2.5 -1.5 -0.5 2.5 -1.5 -0.5 2.5 -1.5 -0.5 2.5 -1.5 -0.5 2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube41";
	rename -uid "4174608B-4CFA-4FD0-89D7-2ABC20A1C48F";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 1.5 -0.5 2.5 ;
	setAttr ".sp" -type "double3" 1.5 -0.5 2.5 ;
createNode mesh -n "pCubeShape41" -p "pCube41";
	rename -uid "555630AC-424C-69F2-410C-0C8A6B25288F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.5 -0.5 2.5 1.5 -0.5 2.5 
		1.5 -0.5 2.5 1.5 -0.5 2.5 1.5 -0.5 2.5 1.5 -0.5 2.5 1.5 -0.5 2.5 1.5 -0.5 2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube42";
	rename -uid "EB8EDD7D-4989-C163-25AD-6A85DABE031F";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 1.5 -1.5 2.5 ;
	setAttr ".sp" -type "double3" 1.5 -1.5 2.5 ;
createNode mesh -n "pCubeShape42" -p "pCube42";
	rename -uid "B848AF7A-4661-1518-F997-5D8D0B3E7660";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.5 -1.5 2.5 1.5 -1.5 2.5 
		1.5 -1.5 2.5 1.5 -1.5 2.5 1.5 -1.5 2.5 1.5 -1.5 2.5 1.5 -1.5 2.5 1.5 -1.5 2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube43";
	rename -uid "8FFC6E47-465D-AE95-97B7-FC9C9181032D";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -1.5 -1.5 2.5 ;
	setAttr ".sp" -type "double3" -1.5 -1.5 2.5 ;
createNode mesh -n "pCubeShape43" -p "pCube43";
	rename -uid "1AAFE93D-47CF-2B1B-82FB-D8AB54B80F50";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 -1.5 2.5 -1.5 -1.5 2.5 
		-1.5 -1.5 2.5 -1.5 -1.5 2.5 -1.5 -1.5 2.5 -1.5 -1.5 2.5 -1.5 -1.5 2.5 -1.5 -1.5 2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube44";
	rename -uid "F97E3394-420A-4032-85AC-D4A1950094EE";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 1.5 -2.5 2.5 ;
	setAttr ".sp" -type "double3" 1.5 -2.5 2.5 ;
createNode mesh -n "pCubeShape44" -p "pCube44";
	rename -uid "10AF61E1-4BEB-E217-6657-F3A53DE7844E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.5 -2.5 2.5 1.5 -2.5 2.5 
		1.5 -2.5 2.5 1.5 -2.5 2.5 1.5 -2.5 2.5 1.5 -2.5 2.5 1.5 -2.5 2.5 1.5 -2.5 2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube45";
	rename -uid "B8BB4182-43FB-42CA-21B9-8B954B1407E0";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" -1.5 -2.5 2.5 ;
	setAttr ".sp" -type "double3" -1.5 -2.5 2.5 ;
createNode mesh -n "pCubeShape45" -p "pCube45";
	rename -uid "EB1846DC-49EF-8DB6-2A55-71AB4048CE9B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.5 -2.5 2.5 -1.5 -2.5 2.5 
		-1.5 -2.5 2.5 -1.5 -2.5 2.5 -1.5 -2.5 2.5 -1.5 -2.5 2.5 -1.5 -2.5 2.5 -1.5 -2.5 2.5;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPyramid2";
	rename -uid "1B3830B3-4964-2F51-2FD6-A296B29DB5CD";
	setAttr ".t" -type "double3" 0 0 12 ;
	setAttr ".rp" -type "double3" 0 5.15 0 ;
	setAttr ".sp" -type "double3" 0 5.15 0 ;
createNode mesh -n "pPyramidShape2" -p "pPyramid2";
	rename -uid "5541F1F8-4BBF-2F23-42C9-8592343EEBFA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  -3.99999928 3.028679848 -4.000000476837 -4 3.028679848 3.99999952
		 3.99999952 3.028679848 4 3.99999976 3.028679848 -3.99999976 0 7.27132034 0;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane2";
	rename -uid "F73E966B-4493-D7A1-C202-39A68B979D57";
	setAttr ".t" -type "double3" 12 0 -12 ;
	setAttr ".rp" -type "double3" -0.029798585005330086 0.5 0.38504205866270913 ;
	setAttr ".sp" -type "double3" -0.029798585005330086 0.5 0.38504205866270913 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "FC8067A7-475A-4DCE-97EF-C298CD816639";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.02226782 1.110223e-016 
		-0.33711889 -0.08186499 1.110223e-016 0.10720303 0.02226782 1 0.66288108 -0.08186499 
		1 1.107203;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane3";
	rename -uid "81CE4831-451E-59FC-F5EA-0192B9B839F3";
	setAttr ".t" -type "double3" 12 0 -12 ;
	setAttr ".rp" -type "double3" 0.0059150551628843473 0.5 -0.3481648341105309 ;
	setAttr ".sp" -type "double3" 0.0059150551628843473 0.5 -0.3481648341105309 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	rename -uid "80812D7A-499A-D7E1-CCDE-E8A8B2035B03";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.057981461 1.110223e-016 
		-1.0703259 -0.046151351 1.110223e-016 -0.62600386 0.057981461 1 -0.070325799 -0.046151351 
		1 0.37399614;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane4";
	rename -uid "4D9764A0-4670-BA78-2E0F-9887B9FF0355";
	setAttr ".t" -type "double3" 12 0 -12 ;
	setAttr ".rp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
	setAttr ".sp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	rename -uid "2B873551-4F22-3B76-C0FE-5EBD8FA31767";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.77097702 1.110223e-016 
		-0.8473599 -0.25626618 1.110223e-016 0.15226896 0.77097702 1 0.15264012 -0.25626618 
		1 1.152269;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5";
	rename -uid "A4A60985-4399-E27A-1617-9EAE986984AC";
	setAttr ".t" -type "double3" 12 0 -12 ;
	setAttr ".rp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
	setAttr ".sp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
createNode mesh -n "pPlaneShape5" -p "pPlane5";
	rename -uid "633B125A-4E69-4792-B59E-C0A34ACF9C82";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.26004514 1.110223e-016 
		-1.09112 -0.76719803 1.110223e-016 -0.091491148 0.26004514 1 -0.091119982 -0.76719803 
		1 0.90850884;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane14";
	rename -uid "49DD17D5-4556-1F4D-2AC6-8FAB74B95561";
	setAttr ".t" -type "double3" 12 0 -12 ;
	setAttr ".rp" -type "double3" -0.029798585005330086 0.5 0.38504205866270913 ;
	setAttr ".sp" -type "double3" -0.029798585005330086 0.5 0.38504205866270913 ;
createNode mesh -n "pPlaneShape14" -p "pPlane14";
	rename -uid "73D32AC7-42D2-BF64-5B77-F79F381394F6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.02226782 1.110223e-016 
		-0.33711889 -0.08186499 1.110223e-016 0.10720303 0.02226782 1 0.66288108 -0.08186499 
		1 1.107203;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane15";
	rename -uid "D66C5AE7-4877-59E4-2425-E2B9B6436437";
	setAttr ".t" -type "double3" 12 0 -12 ;
	setAttr ".rp" -type "double3" 0.0059150551628843473 0.5 -0.3481648341105309 ;
	setAttr ".sp" -type "double3" 0.0059150551628843473 0.5 -0.3481648341105309 ;
createNode mesh -n "pPlaneShape15" -p "pPlane15";
	rename -uid "A9A60D99-4BFF-1095-5BFE-73B4383BB715";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.057981461 1.110223e-016 
		-1.0703259 -0.046151351 1.110223e-016 -0.62600386 0.057981461 1 -0.070325799 -0.046151351 
		1 0.37399614;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane16";
	rename -uid "8502208D-4818-CBA6-58EC-B3A0A05E2A6D";
	setAttr ".t" -type "double3" 12 0 -12 ;
	setAttr ".rp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
	setAttr ".sp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
createNode mesh -n "pPlaneShape16" -p "pPlane16";
	rename -uid "6C6B8255-4A43-06DF-B0DD-F48FED31C5AC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.77097702 1.110223e-016 
		-0.8473599 -0.25626618 1.110223e-016 0.15226896 0.77097702 1 0.15264012 -0.25626618 
		1 1.152269;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane17";
	rename -uid "2736D853-47C2-42E4-899B-A2BD9CB0C0C5";
	setAttr ".t" -type "double3" 12 0 -12 ;
	setAttr ".rp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
	setAttr ".sp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
createNode mesh -n "pPlaneShape17" -p "pPlane17";
	rename -uid "01242C10-4081-81DA-DA43-B0AF3D465205";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.26004514 1.110223e-016 
		-1.09112 -0.76719803 1.110223e-016 -0.091491148 0.26004514 1 -0.091119982 -0.76719803 
		1 0.90850884;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane18";
	rename -uid "B0180B67-4E95-4BE7-D8F1-F9AA6C1FC3AC";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" -0.029798585005330086 0.5 0.38504205866270913 ;
	setAttr ".sp" -type "double3" -0.029798585005330086 0.5 0.38504205866270913 ;
createNode mesh -n "pPlaneShape18" -p "pPlane18";
	rename -uid "6895C412-4013-8FDA-2063-3AA55C12C069";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.02226782 1.110223e-016 
		-0.33711889 -0.08186499 1.110223e-016 0.10720303 0.02226782 1 0.66288108 -0.08186499 
		1 1.107203;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane19";
	rename -uid "6512BABC-4DC5-1842-FCB2-44B63D4FDBC2";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" 0.0059150551628843473 0.5 -0.3481648341105309 ;
	setAttr ".sp" -type "double3" 0.0059150551628843473 0.5 -0.3481648341105309 ;
createNode mesh -n "pPlaneShape19" -p "pPlane19";
	rename -uid "9A2C490B-46C4-EA62-B6AB-8497562F2ACD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.057981461 1.110223e-016 
		-1.0703259 -0.046151351 1.110223e-016 -0.62600386 0.057981461 1 -0.070325799 -0.046151351 
		1 0.37399614;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane20";
	rename -uid "0E7266CE-4E6C-47B2-96F8-C5836F6F399A";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
	setAttr ".sp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
createNode mesh -n "pPlaneShape20" -p "pPlane20";
	rename -uid "05948D6D-44F1-2F35-2DF3-8CBBEB706472";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.77097702 1.110223e-016 
		-0.8473599 -0.25626618 1.110223e-016 0.15226896 0.77097702 1 0.15264012 -0.25626618 
		1 1.152269;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane21";
	rename -uid "D395AB9D-4E24-980A-C9AA-EC89C4FEF4F3";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
	setAttr ".sp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
createNode mesh -n "pPlaneShape21" -p "pPlane21";
	rename -uid "EFD0FF30-43CA-0F31-989E-B28B3D322966";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.26004514 1.110223e-016 
		-1.09112 -0.76719803 1.110223e-016 -0.091491148 0.26004514 1 -0.091119982 -0.76719803 
		1 0.90850884;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane22";
	rename -uid "FD77437F-452B-88DB-0415-23BF96A4986A";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" -0.029798585005330086 0.5 0.38504205866270913 ;
	setAttr ".sp" -type "double3" -0.029798585005330086 0.5 0.38504205866270913 ;
createNode mesh -n "pPlaneShape22" -p "pPlane22";
	rename -uid "B6FCC7B7-48AE-5709-35D9-A295D926F4C1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.02226782 1.110223e-016 
		-0.33711889 -0.08186499 1.110223e-016 0.10720303 0.02226782 1 0.66288108 -0.08186499 
		1 1.107203;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane23";
	rename -uid "09EDC3D4-4CDD-B13B-A220-BAB0BE825564";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" 0.0059150551628843473 0.5 -0.3481648341105309 ;
	setAttr ".sp" -type "double3" 0.0059150551628843473 0.5 -0.3481648341105309 ;
createNode mesh -n "pPlaneShape23" -p "pPlane23";
	rename -uid "A0C22257-420D-4B88-FD56-DAAF3F240B48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.057981461 1.110223e-016 
		-1.0703259 -0.046151351 1.110223e-016 -0.62600386 0.057981461 1 -0.070325799 -0.046151351 
		1 0.37399614;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane24";
	rename -uid "BCA117A0-46A8-B603-B3B9-B9BF0827E2FC";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
	setAttr ".sp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
createNode mesh -n "pPlaneShape24" -p "pPlane24";
	rename -uid "7B75087D-419F-5A55-FCEF-15A241FB10B0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.77097702 1.110223e-016 
		-0.8473599 -0.25626618 1.110223e-016 0.15226896 0.77097702 1 0.15264012 -0.25626618 
		1 1.152269;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane25";
	rename -uid "740E31CC-495D-64D8-87CB-3E8B431F1BB1";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
	setAttr ".sp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
createNode mesh -n "pPlaneShape25" -p "pPlane25";
	rename -uid "158E2F0F-4920-EB9C-14A4-1B99DDD09DB5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.26004514 1.110223e-016 
		-1.09112 -0.76719803 1.110223e-016 -0.091491148 0.26004514 1 -0.091119982 -0.76719803 
		1 0.90850884;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane26";
	rename -uid "B8A33798-4ECB-39E9-0843-3D9E2C447922";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" -0.029798585005330058 0.5 0.38504205866270913 ;
	setAttr ".sp" -type "double3" -0.029798585005330058 0.5 0.38504205866270913 ;
createNode mesh -n "pPlaneShape26" -p "pPlane26";
	rename -uid "99E92BBD-44FC-A0A6-DBAF-1EBA2F14EC74";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.24804047 1.110223e-016 
		0.33297566 -0.30763763 1.110223e-016 -0.56289154 0.24804044 1 1.3329756 -0.30763763 
		1 0.43710846;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane27";
	rename -uid "D52AA437-4E82-4FFD-EF6E-83B69A9DB0D0";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" 0.0059150551628843195 0.5 -0.3481648341105309 ;
	setAttr ".sp" -type "double3" 0.0059150551628843195 0.5 -0.3481648341105309 ;
createNode mesh -n "pPlaneShape27" -p "pPlane27";
	rename -uid "E56FE79B-4506-6D22-D033-3EA9B43EF7AD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.28375405 1.110223e-016 
		-0.40023124 -0.27192399 1.110223e-016 -1.2960985 0.28375411 1 0.59976876 -0.27192399 
		1 -0.29609841;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane28";
	rename -uid "A8C2E58F-4189-5E00-7532-6890550B3F80";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
	setAttr ".sp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
createNode mesh -n "pPlaneShape28" -p "pPlane28";
	rename -uid "ABEBF883-4753-6CA9-347E-A595ED95EB09";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.25754094 1.110223e-016 
		-0.36116707 0.25716978 1.110223e-016 -0.33392388 0.25754094 1 0.63883293 0.25716984 
		1 0.66607612;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane29";
	rename -uid "ED78EF22-4504-F706-00DB-C0A7621DD897";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
	setAttr ".sp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
createNode mesh -n "pPlaneShape29" -p "pPlane29";
	rename -uid "489BF75B-44E0-CCAC-EFA9-2995E13A6F8A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.25339088 1.110223e-016 
		-0.60492718 -0.25376207 1.110223e-016 -0.57768399 -0.25339088 1 0.39507288 -0.25376207 
		1 0.42231601;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane30";
	rename -uid "FA0A3B55-41CF-3DFC-F156-238E4F951FA9";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" -0.029798585005330058 0.5 0.38504205866270913 ;
	setAttr ".sp" -type "double3" -0.029798585005330058 0.5 0.38504205866270913 ;
createNode mesh -n "pPlaneShape30" -p "pPlane30";
	rename -uid "F56BD719-4B1E-BC20-39C6-C1B5E8D9744A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.24804047 1.110223e-016 
		0.33297566 -0.30763763 1.110223e-016 -0.56289154 0.24804044 1 1.3329756 -0.30763763 
		1 0.43710846;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane31";
	rename -uid "CC8E84E6-48E4-FCAC-A2C0-04B32588022A";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" 0.0059150551628843195 0.5 -0.3481648341105309 ;
	setAttr ".sp" -type "double3" 0.0059150551628843195 0.5 -0.3481648341105309 ;
createNode mesh -n "pPlaneShape31" -p "pPlane31";
	rename -uid "38DAD1C0-4501-9AAA-AB6A-1D90998D2BEB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.28375405 1.110223e-016 
		-0.40023124 -0.27192399 1.110223e-016 -1.2960985 0.28375411 1 0.59976876 -0.27192399 
		1 -0.29609841;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane32";
	rename -uid "8F2AD359-4B2E-728B-6733-BA81E4AE344B";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
	setAttr ".sp" -type "double3" 0.25735540455894163 0.5 0.15245453986456392 ;
createNode mesh -n "pPlaneShape32" -p "pPlane32";
	rename -uid "F3F94434-4C85-F898-8ECE-1F9DA630AE8C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.25754094 1.110223e-016 
		-0.36116707 0.25716978 1.110223e-016 -0.33392388 0.25754094 1 0.63883293 0.25716984 
		1 0.66607612;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane33";
	rename -uid "39B64892-4AC8-A573-E2BD-A9A4D19B57FC";
	setAttr ".t" -type "double3" 12 0 12 ;
	setAttr ".rp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
	setAttr ".sp" -type "double3" -0.25357645134900547 0.5 -0.091305568310909857 ;
createNode mesh -n "pPlaneShape33" -p "pPlane33";
	rename -uid "D8035E21-4E77-AF53-2988-758B6D5B5719";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.25339088 1.110223e-016 
		-0.60492718 -0.25376207 1.110223e-016 -0.57768399 -0.25339088 1 0.39507288 -0.25376207 
		1 0.42231601;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube46";
	rename -uid "57F91DAF-49F8-43E0-E6CB-6FBDA3AD2F0C";
	setAttr ".t" -type "double3" 24 0 12 ;
createNode mesh -n "pCubeShape46" -p "pCube46";
	rename -uid "DB6A67E2-404E-3BAE-9BF7-CF9C4913F264";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.35574163496494293 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 85 ".uvst[0].uvsp[0:84]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.41635892 0.25 0.41635892 0.5 0.41635892 0.75 0.41635892
		 0 0.41635892 1 0.50030506 0.25 0.50030506 0.5 0.50030506 0.75 0.50030506 0 0.50030506
		 1 0.50543636 0.25 0.50543636 0.5 0.50543636 0.75 0.50543636 0 0.50543636 1 0.625
		 0.26673573 0.64173573 0.25 0.50543636 0.26673573 0.50030506 0.26673573 0.41635892
		 0.26673573 0.35826424 0.25 0.375 0.26673573 0.35826424 0 0.375 0.98326427 0.41635892
		 0.98326427 0.50030506 0.98326427 0.50543636 0.98326427 0.625 0.98326427 0.64173573
		 0 0.625 0.47942054 0.85442054 0.25 0.50543636 0.47942054 0.50030506 0.47942054 0.41635895
		 0.47942054 0.14557944 0.25 0.375 0.47942054 0.14557944 0 0.375 0.77057946 0.41635895
		 0.77057946 0.50030506 0.77057946 0.50543636 0.77057946 0.625 0.77057946 0.85442054
		 0 0.625 0.28339177 0.65839183 0.25 0.50543636 0.28339177 0.50030506 0.28339177 0.41635892
		 0.28339177 0.3416082 0.25 0.37500003 0.28339177 0.3416082 0 0.375 0.96660823 0.41635892
		 0.96660823 0.50030506 0.96660823 0.50543636 0.96660823 0.625 0.96660823 0.65839177
		 0 0.625 0.46148327 0.83648324 0.25 0.50543636 0.46148327 0.50030506 0.46148327 0.41635895
		 0.46148327 0.1635167 0.25 0.375 0.46148327 0.1635167 0 0.375 0.78851676 0.41635895
		 0.78851676 0.50030506 0.78851676 0.50543636 0.78851676 0.625 0.78851676 0.83648324
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  -3 -1 2 3.9834094 -1 2 -3 1 2 3.9834094 1 2
		 -3 1 -2 3.9834094 1 -2 -3 -1 -2 3.9834094 -1 -2 -2.0073859692 2.4947834 2 -2.0073859692 2.4947834 -2
		 -2.0073859692 -1 -2 -2.0073859692 -1 2 0.0073209107 2.4947834 2 0.0073209107 2.4947834 -2
		 0.0073209107 -1 -2 0.0073209107 -1 2 0.032130618 1 2 0.032130618 1 -2 1.035208464 -1 -2
		 1.035208464 -1 2 3.9834094 0.9999994 1.73222804 0.032130618 0.9999994 1.73222804
		 0.0073209107 2.4947834 1.73222804 -2.0073859692 2.4947834 1.73222804 -3 0.9999994 1.73222804
		 -3 -1 1.73222804 -2.0073859692 -1 1.73222804 0.0073209107 -1 1.73222804 1.035208464 -1 1.73222804
		 3.9834094 -1 1.73222804 3.9834094 0.9999994 -1.6707288 0.032130618 0.9999994 -1.6707288
		 0.0073209107 2.4947834 -1.6707288 -2.0073859692 2.4947834 -1.6707288 -3 0.9999994 -1.6707288
		 -3 -1 -1.6707288 -2.0073859692 -1 -1.6707288 0.0073209107 -1 -1.6707288 1.035208464 -1 -1.6707288
		 3.9834094 -1 -1.6707288 3.9834094 -0.024987221 1.4657315 0.032130618 -0.024987221 1.4657315
		 0.0073209107 2.4947834 1.4657315 -2.0073862076 2.4947834 1.4657315 -3 -0.024987221 1.4657315
		 -3 -1 1.4657315 -2.0073859692 -1 1.4657315 0.0073209107 -1 1.4657315 1.035208464 -1 1.4657315
		 3.9834094 -1 1.4657315 3.9834094 -0.024987221 -1.38373256 0.032130618 -0.024987221 -1.38373256
		 0.0073209107 2.4947834 -1.38373256 -2.0073859692 2.4947834 -1.38373256 -3 -0.024987221 -1.38373256
		 -3 -1 -1.38373256 -2.0073859692 -1 -1.38373256 0.0073209107 -1 -1.38373256 1.035208464 -1 -1.38373256
		 3.9834094 -1 -1.38373256;
	setAttr -s 116 ".ed[0:115]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 24 0
		 3 20 0 4 6 0 5 7 0 6 35 0 7 39 0 8 12 0 9 13 0 8 23 1 10 14 0 9 10 1 11 15 0 10 36 1
		 11 8 1 12 16 0 13 17 0 12 22 1 14 18 0 13 14 1 15 19 0 14 37 1 15 12 1 16 3 0 17 5 0
		 16 21 1 18 7 0 17 18 1 19 1 0 18 38 1 19 16 1 20 40 0 21 41 1 20 21 1 22 42 1 21 22 1
		 23 43 1 22 23 1 24 44 0 23 24 1 25 0 0 24 25 1 26 11 1 25 26 1 27 15 1 26 27 1 28 19 1
		 27 28 1 29 1 0 28 29 1 29 20 1 30 5 0 31 17 1 30 31 1 32 13 1 31 32 1 33 9 1 32 33 1
		 34 4 0 33 34 1 35 55 0 34 35 1 36 56 1 35 36 1 37 57 1 36 37 1 38 58 1 37 38 1 39 59 0
		 38 39 1 39 30 1 40 50 0 41 51 1 40 41 1 42 52 1 41 42 1 43 53 1 42 43 1 44 54 0 43 44 1
		 45 25 0 44 45 1 46 26 1 45 46 1 47 27 1 46 47 1 48 28 1 47 48 1 49 29 0 48 49 1 49 40 1
		 50 30 0 51 31 1 50 51 1 52 32 1 51 52 1 53 33 1 52 53 1 54 34 0 53 54 1 55 45 0 54 55 1
		 56 46 1 55 56 1 57 47 1 56 57 1 58 48 1 57 58 1 59 49 0 58 59 1 59 50 1;
	setAttr -s 58 -ch 232 ".fc[0:57]" -type "polyFaces" 
		f 4 0 19 -2 -5
		mu 0 4 0 17 14 2
		f 4 1 14 44 -7
		mu 0 4 2 14 33 35
		f 4 2 16 -4 -9
		mu 0 4 4 15 16 6
		f 4 48 47 -1 -46
		mu 0 4 37 38 18 8
		f 4 -54 55 -8 -6
		mu 0 4 1 42 30 3
		f 4 45 4 6 46
		mu 0 4 36 0 2 34
		f 4 12 22 42 -15
		mu 0 4 14 19 32 33
		f 4 -17 13 24 -16
		mu 0 4 16 15 20 21
		f 4 -48 50 49 -18
		mu 0 4 18 38 39 23
		f 4 -20 17 27 -13
		mu 0 4 14 17 22 19
		f 4 20 30 40 -23
		mu 0 4 19 24 31 32
		f 4 -25 21 32 -24
		mu 0 4 21 20 25 26
		f 4 -50 52 51 -26
		mu 0 4 23 39 40 28
		f 4 -28 25 35 -21
		mu 0 4 19 22 27 24
		f 4 28 7 38 -31
		mu 0 4 24 3 29 31
		f 4 -33 29 9 -32
		mu 0 4 26 25 5 7
		f 4 -52 54 53 -34
		mu 0 4 28 40 41 9
		f 4 -36 33 5 -29
		mu 0 4 24 27 1 3
		f 4 -39 36 78 -38
		mu 0 4 31 29 57 59
		f 4 -41 37 80 -40
		mu 0 4 32 31 59 60
		f 4 -43 39 82 -42
		mu 0 4 33 32 60 61
		f 4 -45 41 84 -44
		mu 0 4 35 33 61 63
		f 4 85 -47 43 86
		mu 0 4 64 36 34 62
		f 4 88 87 -49 -86
		mu 0 4 65 66 38 37
		f 4 -51 -88 90 89
		mu 0 4 39 38 66 67
		f 4 -53 -90 92 91
		mu 0 4 40 39 67 68
		f 4 -55 -92 94 93
		mu 0 4 41 40 68 69
		f 4 -56 -94 95 -37
		mu 0 4 30 42 70 58
		f 4 -59 56 -30 -58
		mu 0 4 45 43 5 25
		f 4 -61 57 -22 -60
		mu 0 4 46 45 25 20
		f 4 -63 59 -14 -62
		mu 0 4 47 46 20 15
		f 4 -65 61 -3 -64
		mu 0 4 49 47 15 4
		f 4 10 -67 63 8
		mu 0 4 12 50 48 13
		f 4 3 18 -69 -11
		mu 0 4 6 16 52 51
		f 4 -71 -19 15 26
		mu 0 4 53 52 16 21
		f 4 -73 -27 23 34
		mu 0 4 54 53 21 26
		f 4 -75 -35 31 11
		mu 0 4 55 54 26 7
		f 4 -76 -12 -10 -57
		mu 0 4 44 56 10 11
		f 4 -79 76 98 -78
		mu 0 4 59 57 71 73
		f 4 -81 77 100 -80
		mu 0 4 60 59 73 74
		f 4 -83 79 102 -82
		mu 0 4 61 60 74 75
		f 4 -85 81 104 -84
		mu 0 4 63 61 75 77
		f 4 105 -87 83 106
		mu 0 4 78 64 62 76
		f 4 108 107 -89 -106
		mu 0 4 79 80 66 65
		f 4 -91 -108 110 109
		mu 0 4 67 66 80 81
		f 4 -93 -110 112 111
		mu 0 4 68 67 81 82
		f 4 -95 -112 114 113
		mu 0 4 69 68 82 83
		f 4 -96 -114 115 -77
		mu 0 4 58 70 84 72
		f 4 -99 96 58 -98
		mu 0 4 73 71 43 45
		f 4 -101 97 60 -100
		mu 0 4 74 73 45 46
		f 4 -103 99 62 -102
		mu 0 4 75 74 46 47
		f 4 -105 101 64 -104
		mu 0 4 77 75 47 49
		f 4 65 -107 103 66
		mu 0 4 50 78 76 48
		f 4 68 67 -109 -66
		mu 0 4 51 52 80 79
		f 4 -111 -68 70 69
		mu 0 4 81 80 52 53
		f 4 -113 -70 72 71
		mu 0 4 82 81 53 54
		f 4 -115 -72 74 73
		mu 0 4 83 82 54 55
		f 4 -116 -74 75 -97
		mu 0 4 72 84 56 44;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1";
	rename -uid "410C4F0D-4837-EED8-C98D-C79B8C786854";
	setAttr ".t" -type "double3" 24 0 12 ;
	setAttr ".rp" -type "double3" -1.5 -1 2 ;
	setAttr ".sp" -type "double3" -1.5 -1 2 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "4DB4CB66-4F2C-8DAF-6C17-989E26944E59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  -0.54894286 -0.69098282 1.75 -0.69098246 -0.4122144 1.75
		 -0.9122144 -0.19098252 1.75 -1.19098282 -0.048942983 1.75 -1.5 4.7683716e-007 1.75
		 -1.80901718 -0.048943043 1.75 -2.087785482 -0.1909827 1.75 -2.30901718 -0.41221458 1.75
		 -2.45105672 -0.69098294 1.75 -2.50000024 -1 1.75 -2.45105672 -1.30901706 1.75 -2.30901718 -1.58778536 1.75
		 -2.087785244 -1.80901718 1.75 -1.80901706 -1.95105672 1.75 -1.5 -2 1.75 -1.19098306 -1.9510566 1.75
		 -0.91221476 -1.80901706 1.75 -0.690983 -1.58778524 1.75 -0.54894346 -1.30901694 1.75
		 -0.5 -1 1.75 -0.54894286 -0.69098282 2.25 -0.69098246 -0.4122144 2.25 -0.9122144 -0.19098252 2.25
		 -1.19098282 -0.048942983 2.25 -1.5 4.7683716e-007 2.25 -1.80901718 -0.048943043 2.25
		 -2.087785482 -0.1909827 2.25 -2.30901718 -0.41221458 2.25 -2.45105672 -0.69098294 2.25
		 -2.50000024 -1 2.25 -2.45105672 -1.30901706 2.25 -2.30901718 -1.58778536 2.25 -2.087785244 -1.80901718 2.25
		 -1.80901706 -1.95105672 2.25 -1.5 -2 2.25 -1.19098306 -1.9510566 2.25 -0.91221476 -1.80901706 2.25
		 -0.690983 -1.58778524 2.25 -0.54894346 -1.30901694 2.25 -0.5 -1 2.25 -1.5 -1 1.75
		 -1.5 -1 2.25;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder2";
	rename -uid "A4ADBF0D-4594-09A0-1E8B-E9B0AEB19351";
	setAttr ".t" -type "double3" 24 0 12 ;
	setAttr ".rp" -type "double3" -1.5 -1 -2 ;
	setAttr ".sp" -type "double3" -1.5 -1 -2 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "D7FE252F-4F71-4DEF-7CD8-ACB468BDA278";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -1.5 -0.44098282 -1.9409828 
		-1.5 -0.1622144 -1.6622144 -1.5 0.059017479 -1.4409826 -1.5 0.20105702 -1.298943 
		-1.5 0.25000048 -1.2499995 -1.5 0.20105696 -1.298943 -1.5 0.059017301 -1.4409827 
		-1.5 -0.16221458 -1.6622145 -1.5 -0.44098294 -1.9409829 -1.5 -0.75 -2.25 -1.5 -1.0590171 
		-2.5590172 -1.5 -1.3377854 -2.8377852 -1.5 -1.5590172 -3.0590172 -1.5 -1.7010567 
		-3.2010567 -1.5 -1.7500001 -3.25 -1.5 -1.7010566 -3.2010565 -1.5 -1.5590171 -3.0590172 
		-1.5 -1.3377852 -2.8377852 -1.5 -1.0590169 -2.5590169 -1.5 -0.75 -2.25 -1.5 -0.94098282 
		-1.4409828 -1.5 -0.6622144 -1.1622144 -1.5 -0.44098252 -0.94098252 -1.5 -0.29894298 
		-0.79894298 -1.5 -0.24999952 -0.74999952 -1.5 -0.29894304 -0.79894304 -1.5 -0.4409827 
		-0.9409827 -1.5 -0.66221458 -1.1622146 -1.5 -0.94098294 -1.4409829 -1.5 -1.25 -1.75 
		-1.5 -1.5590171 -2.0590172 -1.5 -1.8377854 -2.3377852 -1.5 -2.0590172 -2.5590172 
		-1.5 -2.2010567 -2.7010567 -1.5 -2.25 -2.75 -1.5 -2.2010565 -2.7010565 -1.5 -2.0590172 
		-2.5590172 -1.5 -1.8377852 -2.3377852 -1.5 -1.5590169 -2.0590169 -1.5 -1.25 -1.75 
		-1.5 -0.75 -2.25 -1.5 -1.25 -1.75;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -0.25 -0.30901718 0.80901754 -0.25 -0.5877856
		 0.5877856 -0.25 -0.80901748 0.30901715 -0.25 -0.95105702 0 -0.25 -1.000000476837
		 -0.30901715 -0.25 -0.95105696 -0.58778548 -0.25 -0.8090173 -0.80901724 -0.25 -0.58778542
		 -0.95105678 -0.25 -0.30901706 -1.000000238419 -0.25 0 -0.95105678 -0.25 0.30901706
		 -0.80901718 -0.25 0.58778536 -0.58778536 -0.25 0.80901712 -0.30901706 -0.25 0.95105666
		 -2.9802322e-008 -0.25 1.000000119209 0.30901697 -0.25 0.9510566 0.58778524 -0.25 0.80901706
		 0.809017 -0.25 0.5877853 0.95105654 -0.25 0.309017 1 -0.25 0 0.95105714 0.25 -0.30901718
		 0.80901754 0.25 -0.5877856 0.5877856 0.25 -0.80901748 0.30901715 0.25 -0.95105702
		 0 0.25 -1.000000476837 -0.30901715 0.25 -0.95105696 -0.58778548 0.25 -0.8090173 -0.80901724 0.25 -0.58778542
		 -0.95105678 0.25 -0.30901706 -1.000000238419 0.25 0 -0.95105678 0.25 0.30901706 -0.80901718 0.25 0.58778536
		 -0.58778536 0.25 0.80901712 -0.30901706 0.25 0.95105666 -2.9802322e-008 0.25 1.000000119209
		 0.30901697 0.25 0.9510566 0.58778524 0.25 0.80901706 0.809017 0.25 0.5877853 0.95105654 0.25 0.309017
		 1 0.25 0 0 -0.25 0 0 0.25 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3";
	rename -uid "B2BC8B92-479C-B6D4-162F-B8955AC88C01";
	setAttr ".t" -type "double3" 24 0 12 ;
	setAttr ".rp" -type "double3" 2.5 -1 -2 ;
	setAttr ".sp" -type "double3" 2.5 -1 -2 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "64D7E3D6-4FE5-A15A-7783-70AC54B6BA24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  2.5 -0.44098282 -1.9409828 
		2.5 -0.1622144 -1.6622144 2.5 0.059017479 -1.4409826 2.5 0.20105702 -1.298943 2.5 
		0.25000048 -1.2499995 2.5 0.20105696 -1.298943 2.5 0.059017301 -1.4409827 2.5 -0.16221458 
		-1.6622145 2.5 -0.44098294 -1.9409829 2.5 -0.75 -2.25 2.5 -1.0590171 -2.5590172 2.5 
		-1.3377854 -2.8377852 2.5 -1.5590172 -3.0590172 2.5 -1.7010567 -3.2010567 2.5 -1.7500001 
		-3.25 2.5 -1.7010566 -3.2010565 2.5 -1.5590171 -3.0590172 2.5 -1.3377852 -2.8377852 
		2.5 -1.0590169 -2.5590169 2.5 -0.75 -2.25 2.5 -0.94098282 -1.4409828 2.5 -0.6622144 
		-1.1622144 2.5 -0.44098252 -0.94098252 2.5 -0.29894298 -0.79894298 2.5 -0.24999952 
		-0.74999952 2.5 -0.29894304 -0.79894304 2.5 -0.4409827 -0.9409827 2.5 -0.66221458 
		-1.1622146 2.5 -0.94098294 -1.4409829 2.5 -1.25 -1.75 2.5 -1.5590171 -2.0590172 2.5 
		-1.8377854 -2.3377852 2.5 -2.0590172 -2.5590172 2.5 -2.2010567 -2.7010567 2.5 -2.25 
		-2.75 2.5 -2.2010565 -2.7010565 2.5 -2.0590172 -2.5590172 2.5 -1.8377852 -2.3377852 
		2.5 -1.5590169 -2.0590169 2.5 -1.25 -1.75 2.5 -0.75 -2.25 2.5 -1.25 -1.75;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -0.25 -0.30901718 0.80901754 -0.25 -0.5877856
		 0.5877856 -0.25 -0.80901748 0.30901715 -0.25 -0.95105702 0 -0.25 -1.000000476837
		 -0.30901715 -0.25 -0.95105696 -0.58778548 -0.25 -0.8090173 -0.80901724 -0.25 -0.58778542
		 -0.95105678 -0.25 -0.30901706 -1.000000238419 -0.25 0 -0.95105678 -0.25 0.30901706
		 -0.80901718 -0.25 0.58778536 -0.58778536 -0.25 0.80901712 -0.30901706 -0.25 0.95105666
		 -2.9802322e-008 -0.25 1.000000119209 0.30901697 -0.25 0.9510566 0.58778524 -0.25 0.80901706
		 0.809017 -0.25 0.5877853 0.95105654 -0.25 0.309017 1 -0.25 0 0.95105714 0.25 -0.30901718
		 0.80901754 0.25 -0.5877856 0.5877856 0.25 -0.80901748 0.30901715 0.25 -0.95105702
		 0 0.25 -1.000000476837 -0.30901715 0.25 -0.95105696 -0.58778548 0.25 -0.8090173 -0.80901724 0.25 -0.58778542
		 -0.95105678 0.25 -0.30901706 -1.000000238419 0.25 0 -0.95105678 0.25 0.30901706 -0.80901718 0.25 0.58778536
		 -0.58778536 0.25 0.80901712 -0.30901706 0.25 0.95105666 -2.9802322e-008 0.25 1.000000119209
		 0.30901697 0.25 0.9510566 0.58778524 0.25 0.80901706 0.809017 0.25 0.5877853 0.95105654 0.25 0.309017
		 1 0.25 0 0 -0.25 0 0 0.25 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4";
	rename -uid "EABD6EE5-46B5-72E7-F1CC-9B9E50FE6901";
	setAttr ".t" -type "double3" 24 0 12 ;
	setAttr ".rp" -type "double3" 2.5 -1 2 ;
	setAttr ".sp" -type "double3" 2.5 -1 2 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "B29B5F05-4503-C6EA-7375-7EB6A37B2EFE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  2.5 -0.44098282 2.0590172 
		2.5 -0.1622144 2.3377857 2.5 0.059017479 2.5590174 2.5 0.20105702 2.701057 2.5 0.25000048 
		2.7500005 2.5 0.20105696 2.701057 2.5 0.059017301 2.5590172 2.5 -0.16221458 2.3377855 
		2.5 -0.44098294 2.0590172 2.5 -0.75 1.75 2.5 -1.0590171 1.4409829 2.5 -1.3377854 
		1.1622146 2.5 -1.5590172 0.94098288 2.5 -1.7010567 0.79894334 2.5 -1.7500001 0.74999988 
		2.5 -1.7010566 0.7989434 2.5 -1.5590171 0.94098294 2.5 -1.3377852 1.1622148 2.5 -1.0590169 
		1.4409831 2.5 -0.75 1.75 2.5 -0.94098282 2.5590172 2.5 -0.6622144 2.8377857 2.5 -0.44098252 
		3.0590174 2.5 -0.29894298 3.201057 2.5 -0.24999952 3.2500005 2.5 -0.29894304 3.201057 
		2.5 -0.4409827 3.0590172 2.5 -0.66221458 2.8377855 2.5 -0.94098294 2.5590172 2.5 
		-1.25 2.25 2.5 -1.5590171 1.9409829 2.5 -1.8377854 1.6622146 2.5 -2.0590172 1.4409828 
		2.5 -2.2010567 1.2989433 2.5 -2.25 1.2499999 2.5 -2.2010565 1.2989434 2.5 -2.0590172 
		1.4409829 2.5 -1.8377852 1.6622148 2.5 -1.5590169 1.9409831 2.5 -1.25 2.25 2.5 -0.75 
		1.75 2.5 -1.25 2.25;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -0.25 -0.30901718 0.80901754 -0.25 -0.5877856
		 0.5877856 -0.25 -0.80901748 0.30901715 -0.25 -0.95105702 0 -0.25 -1.000000476837
		 -0.30901715 -0.25 -0.95105696 -0.58778548 -0.25 -0.8090173 -0.80901724 -0.25 -0.58778542
		 -0.95105678 -0.25 -0.30901706 -1.000000238419 -0.25 0 -0.95105678 -0.25 0.30901706
		 -0.80901718 -0.25 0.58778536 -0.58778536 -0.25 0.80901712 -0.30901706 -0.25 0.95105666
		 -2.9802322e-008 -0.25 1.000000119209 0.30901697 -0.25 0.9510566 0.58778524 -0.25 0.80901706
		 0.809017 -0.25 0.5877853 0.95105654 -0.25 0.309017 1 -0.25 0 0.95105714 0.25 -0.30901718
		 0.80901754 0.25 -0.5877856 0.5877856 0.25 -0.80901748 0.30901715 0.25 -0.95105702
		 0 0.25 -1.000000476837 -0.30901715 0.25 -0.95105696 -0.58778548 0.25 -0.8090173 -0.80901724 0.25 -0.58778542
		 -0.95105678 0.25 -0.30901706 -1.000000238419 0.25 0 -0.95105678 0.25 0.30901706 -0.80901718 0.25 0.58778536
		 -0.58778536 0.25 0.80901712 -0.30901706 0.25 0.95105666 -2.9802322e-008 0.25 1.000000119209
		 0.30901697 0.25 0.9510566 0.58778524 0.25 0.80901706 0.809017 0.25 0.5877853 0.95105654 0.25 0.309017
		 1 0.25 0 0 -0.25 0 0 0.25 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5";
	rename -uid "6B146B61-4820-3137-50B4-A894D4A8D6A0";
	setAttr ".t" -type "double3" 24 0 12 ;
	setAttr ".rp" -type "double3" 2 1 0 ;
	setAttr ".sp" -type "double3" 2 1 0 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "A87EC1CF-4EAD-7863-A15C-52B7584C3C69";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  2.013673544 -0.017837644 -0.061803438 1.98569715 -0.012904644 -0.11755712
		 1.94212294 -0.0052213669 -0.1618035 1.88721633 0.0044602156 -0.1902114 1.82635188 0.01519227 -0.20000009
		 1.76548731 0.025924325 -0.1902114 1.71058071 0.035605848 -0.16180347 1.66700649 0.043289125 -0.11755709
		 1.63903022 0.048222125 -0.061803412 1.62939024 0.04992193 0 1.63903022 0.048222125 0.061803412
		 1.66700649 0.043289125 0.11755707 1.71058071 0.035605848 0.16180342 1.76548731 0.025924325 0.19021134
		 1.82635188 0.01519227 0.20000003 1.88721633 0.0044602156 0.19021133 1.94212294 -0.0052212477 0.16180341
		 1.98569703 -0.012904644 0.11755706 2.013673306 -0.017837524 0.061803401 2.023313284 -0.01953733 0
		 2.36096978 1.95177794 -0.061803438 2.33299351 1.95671082 -0.11755712 2.28941941 1.96439409 -0.1618035
		 2.23451257 1.97407568 -0.1902114 2.17364812 1.98480773 -0.20000009 2.11278367 1.99553978 -0.1902114
		 2.057877064 2.0052213669 -0.16180347 2.014302969 2.012904644 -0.11755709 1.98632658 2.017837524 -0.061803412
		 1.9766866 2.019537449 0 1.98632658 2.017837524 0.061803412 2.014302969 2.012904644 0.11755707
		 2.057877064 2.0052213669 0.16180342 2.11278367 1.99553978 0.19021134 2.17364812 1.98480773 0.20000003
		 2.23451257 1.97407568 0.19021133 2.28941917 1.96439409 0.16180341 2.33299351 1.95671082 0.11755706
		 2.36096978 1.95177794 0.061803401 2.37060976 1.95007801 0 1.82635188 0.01519227 0
		 2.17364812 1.98480773 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder6";
	rename -uid "7C8375B0-41CD-36A9-4C8B-ACA5659F83B9";
	setAttr ".t" -type "double3" 24 0 12 ;
	setAttr ".rp" -type "double3" 2.5 1 0.25 ;
	setAttr ".sp" -type "double3" 2.5 1 0.25 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	rename -uid "6D59EF6B-40F2-3F56-372B-A7B8A56542D8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  2.5 1.0044602 0.4245871 2.5 
		0.99477869 0.42543414 2.5 0.98709536 0.42610633 2.5 0.98216236 0.42653793 2.5 0.98046261 
		0.42668661 2.5 0.98216236 0.42653793 2.5 0.98709536 0.42610633 2.5 0.99477869 0.42543414 
		2.5 1.0044602 0.4245871 2.5 1.0151923 0.42364818 2.5 1.0259243 0.42270926 2.5 1.0356058 
		0.42186221 2.5 1.0432891 0.42119002 2.5 1.0482221 0.42075843 2.5 1.0499219 0.42060974 
		2.5 1.0482221 0.42075843 2.5 1.0432891 0.42119002 2.5 1.0356058 0.42186221 2.5 1.0259243 
		0.42270926 2.5 1.0151923 0.42364818 2.5 0.97407568 0.077290758 2.5 0.96439415 0.078137778 
		2.5 0.95671088 0.078809984 2.5 0.95177788 0.079241559 2.5 0.95007813 0.079390272 
		2.5 0.95177788 0.079241559 2.5 0.95671088 0.078809984 2.5 0.96439415 0.078137778 
		2.5 0.97407568 0.077290758 2.5 0.98480773 0.076351821 2.5 0.99553978 0.075412892 
		2.5 1.0052214 0.074565865 2.5 1.0129046 0.073893666 2.5 1.0178376 0.073462084 2.5 
		1.0195374 0.07331337 2.5 1.0178376 0.073462084 2.5 1.0129046 0.073893666 2.5 1.0052214 
		0.074565865 2.5 0.99553978 0.075412892 2.5 0.98480773 0.076351821 2.5 1.0151923 0.42364818 
		2.5 0.98480773 0.076351821;
	setAttr -s 42 ".vt[0:41]"  0.19021143 -1 -0.061803438 0.16180351 -1 -0.11755712
		 0.11755712 -1 -0.1618035 0.06180343 -1 -0.1902114 0 -1 -0.20000009 -0.06180343 -1 -0.1902114
		 -0.1175571 -1 -0.16180347 -0.16180345 -1 -0.11755709 -0.19021136 -1 -0.061803412
		 -0.20000005 -1 0 -0.19021136 -1 0.061803412 -0.16180344 -1 0.11755707 -0.11755707 -1 0.16180342
		 -0.061803412 -1 0.19021134 -5.9604646e-009 -1 0.20000003 0.061803397 -1 0.19021133
		 0.11755705 -1 0.16180341 0.16180341 -1 0.11755706 0.19021131 -1 0.061803401 0.2 -1 0
		 0.19021143 1 -0.061803438 0.16180351 1 -0.11755712 0.11755712 1 -0.1618035 0.06180343 1 -0.1902114
		 0 1 -0.20000009 -0.06180343 1 -0.1902114 -0.1175571 1 -0.16180347 -0.16180345 1 -0.11755709
		 -0.19021136 1 -0.061803412 -0.20000005 1 0 -0.19021136 1 0.061803412 -0.16180344 1 0.11755707
		 -0.11755707 1 0.16180342 -0.061803412 1 0.19021134 -5.9604646e-009 1 0.20000003 0.061803397 1 0.19021133
		 0.11755705 1 0.16180341 0.16180341 1 0.11755706 0.19021131 1 0.061803401 0.2 1 0
		 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder7";
	rename -uid "29A5B693-4870-A7BF-7089-679F21932301";
	setAttr ".t" -type "double3" 24 0 12 ;
	setAttr ".rp" -type "double3" 2.5 1 -0.25 ;
	setAttr ".sp" -type "double3" 2.5 1 -0.25 ;
createNode mesh -n "pCylinderShape7" -p "pCylinder7";
	rename -uid "510DCA1B-436B-C17A-1791-45A44D8D95F4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  2.5 1.0259243 -0.42270926 
		2.5 1.0356058 -0.42186221 2.5 1.0432892 -0.42119002 2.5 1.0482221 -0.42075843 2.5 
		1.0499219 -0.42060971 2.5 1.0482221 -0.42075843 2.5 1.0432891 -0.42119002 2.5 1.0356058 
		-0.42186221 2.5 1.0259243 -0.42270926 2.5 1.0151923 -0.42364818 2.5 1.0044602 -0.4245871 
		2.5 0.99477869 -0.42543414 2.5 0.98709536 -0.42610633 2.5 0.98216242 -0.4265379 2.5 
		0.98046261 -0.42668661 2.5 0.98216242 -0.4265379 2.5 0.98709536 -0.42610633 2.5 0.99477869 
		-0.42543414 2.5 1.0044602 -0.4245871 2.5 1.0151923 -0.42364818 2.5 0.99553978 -0.075412892 
		2.5 1.0052214 -0.074565865 2.5 1.0129046 -0.073893666 2.5 1.0178376 -0.073462084 
		2.5 1.0195374 -0.07331337 2.5 1.0178376 -0.073462084 2.5 1.0129046 -0.073893666 2.5 
		1.0052214 -0.074565865 2.5 0.99553978 -0.075412892 2.5 0.98480773 -0.076351821 2.5 
		0.97407568 -0.077290758 2.5 0.96439415 -0.078137778 2.5 0.95671088 -0.078809977 2.5 
		0.95177788 -0.079241559 2.5 0.95007813 -0.079390272 2.5 0.95177788 -0.079241559 2.5 
		0.95671088 -0.078809977 2.5 0.96439421 -0.078137778 2.5 0.97407573 -0.077290758 2.5 
		0.98480773 -0.076351821 2.5 1.0151923 -0.42364818 2.5 0.98480773 -0.076351821;
	setAttr -s 42 ".vt[0:41]"  0.19021143 -1 -0.061803438 0.16180351 -1 -0.11755712
		 0.11755712 -1 -0.1618035 0.06180343 -1 -0.1902114 0 -1 -0.20000009 -0.06180343 -1 -0.1902114
		 -0.1175571 -1 -0.16180347 -0.16180345 -1 -0.11755709 -0.19021136 -1 -0.061803412
		 -0.20000005 -1 0 -0.19021136 -1 0.061803412 -0.16180344 -1 0.11755707 -0.11755707 -1 0.16180342
		 -0.061803412 -1 0.19021134 -5.9604646e-009 -1 0.20000003 0.061803397 -1 0.19021133
		 0.11755705 -1 0.16180341 0.16180341 -1 0.11755706 0.19021131 -1 0.061803401 0.2 -1 0
		 0.19021143 1 -0.061803438 0.16180351 1 -0.11755712 0.11755712 1 -0.1618035 0.06180343 1 -0.1902114
		 0 1 -0.20000009 -0.06180343 1 -0.1902114 -0.1175571 1 -0.16180347 -0.16180345 1 -0.11755709
		 -0.19021136 1 -0.061803412 -0.20000005 1 0 -0.19021136 1 0.061803412 -0.16180344 1 0.11755707
		 -0.11755707 1 0.16180342 -0.061803412 1 0.19021134 -5.9604646e-009 1 0.20000003 0.061803397 1 0.19021133
		 0.11755705 1 0.16180341 0.16180341 1 0.11755706 0.19021131 1 0.061803401 0.2 1 0
		 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder8";
	rename -uid "1A038F70-4FB8-4315-6535-3E8079A6C991";
	setAttr ".t" -type "double3" 24 0 12 ;
	setAttr ".rp" -type "double3" 3 2 0 ;
	setAttr ".sp" -type "double3" 3 2 0 ;
createNode mesh -n "pCylinderShape8" -p "pCylinder8";
	rename -uid "713C42B6-42EF-19D6-D28B-44A201FA943F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  3.8097885 3.1902115 0 3.8381965 
		3.1618035 0 3.882443 3.117557 0 3.9381967 3.0618033 0 4 3 0 4.0618033 2.9381967 0 
		4.117557 2.882443 0 4.1618032 2.8381965 0 4.1902113 2.8097887 0 4.1999998 2.8 0 4.1902113 
		2.8097887 0 4.1618032 2.8381965 0 4.117557 2.882443 0 4.0618033 2.9381967 0 4 3 0 
		3.9381967 3.0618033 0 3.882443 3.117557 0 3.8381965 3.1618035 0 3.8097887 3.1902113 
		0 3.8 3.2 0 1.8097886 1.1902114 0 1.8381965 1.1618035 0 1.8824428 1.1175572 0 1.9381965 
		1.0618035 0 2 1 0 2.0618033 0.9381966 0 2.117557 0.88244289 0 2.1618035 0.83819658 
		0 2.1902113 0.80978864 0 2.2 0.79999995 0 2.1902113 0.80978864 0 2.1618035 0.83819658 
		0 2.117557 0.88244295 0 2.0618033 0.9381966 0 2 1 0 1.9381967 1.0618033 0 1.882443 
		1.117557 0 1.8381966 1.1618034 0 1.8097887 1.1902113 0 1.8 1.2 0 4 3 0 2 1 0;
	setAttr -s 42 ".vt[0:41]"  0.19021143 -1 -0.061803438 0.16180351 -1 -0.11755712
		 0.11755712 -1 -0.1618035 0.06180343 -1 -0.1902114 0 -1 -0.20000009 -0.06180343 -1 -0.1902114
		 -0.1175571 -1 -0.16180347 -0.16180345 -1 -0.11755709 -0.19021136 -1 -0.061803412
		 -0.20000005 -1 0 -0.19021136 -1 0.061803412 -0.16180344 -1 0.11755707 -0.11755707 -1 0.16180342
		 -0.061803412 -1 0.19021134 -5.9604646e-009 -1 0.20000003 0.061803397 -1 0.19021133
		 0.11755705 -1 0.16180341 0.16180341 -1 0.11755706 0.19021131 -1 0.061803401 0.2 -1 0
		 0.19021143 1 -0.061803438 0.16180351 1 -0.11755712 0.11755712 1 -0.1618035 0.06180343 1 -0.1902114
		 0 1 -0.20000009 -0.06180343 1 -0.1902114 -0.1175571 1 -0.16180347 -0.16180345 1 -0.11755709
		 -0.19021136 1 -0.061803412 -0.20000005 1 0 -0.19021136 1 0.061803412 -0.16180344 1 0.11755707
		 -0.11755707 1 0.16180342 -0.061803412 1 0.19021134 -5.9604646e-009 1 0.20000003 0.061803397 1 0.19021133
		 0.11755705 1 0.16180341 0.16180341 1 0.11755706 0.19021131 1 0.061803401 0.2 1 0
		 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube47";
	rename -uid "A02F5CFE-46B3-2FAA-43F7-DCB11470A671";
	setAttr ".t" -type "double3" 24 0 -12 ;
createNode mesh -n "pCubeShape47" -p "pCube47";
	rename -uid "4E62D647-432B-1D03-A08A-75BEAD88E92F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25000001490116119 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 85 ".uvst[0].uvsp[0:84]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.41635892 0.25 0.41635892 0.5 0.41635892 0.75 0.41635892
		 0 0.41635892 1 0.50030506 0.25 0.50030506 0.5 0.50030506 0.75 0.50030506 0 0.50030506
		 1 0.50543636 0.25 0.50543636 0.5 0.50543636 0.75 0.50543636 0 0.50543636 1 0.625
		 0.26673573 0.64173573 0.25 0.50543636 0.26673573 0.50030506 0.26673573 0.41635892
		 0.26673573 0.35826424 0.25 0.375 0.26673573 0.35826424 0 0.375 0.98326427 0.41635892
		 0.98326427 0.50030506 0.98326427 0.50543636 0.98326427 0.625 0.98326427 0.64173573
		 0 0.625 0.47942054 0.85442054 0.25 0.50543636 0.47942054 0.50030506 0.47942054 0.41635895
		 0.47942054 0.14557944 0.25 0.375 0.47942054 0.14557944 0 0.375 0.77057946 0.41635895
		 0.77057946 0.50030506 0.77057946 0.50543636 0.77057946 0.625 0.77057946 0.85442054
		 0 0.625 0.28339177 0.65839183 0.25 0.50543636 0.28339177 0.50030506 0.28339177 0.41635892
		 0.28339177 0.3416082 0.25 0.37500003 0.28339177 0.3416082 0 0.375 0.96660823 0.41635892
		 0.96660823 0.50030506 0.96660823 0.50543636 0.96660823 0.625 0.96660823 0.65839177
		 0 0.625 0.46148327 0.83648324 0.25 0.50543636 0.46148327 0.50030506 0.46148327 0.41635895
		 0.46148327 0.1635167 0.25 0.375 0.46148327 0.1635167 0 0.375 0.78851676 0.41635895
		 0.78851676 0.50030506 0.78851676 0.50543636 0.78851676 0.625 0.78851676 0.83648324
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.4944028 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.9834097 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.4944028 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.98340964 0 ;
	setAttr ".pt[16]" -type "float3" 0 -0.9834097 0 ;
	setAttr ".pt[17]" -type "float3" 0 -0.98340964 0 ;
	setAttr ".pt[20]" -type "float3" 0 -0.9834097 0 ;
	setAttr ".pt[21]" -type "float3" 0 -0.9834097 0 ;
	setAttr ".pt[24]" -type "float3" 0 1.4944028 0 ;
	setAttr ".pt[30]" -type "float3" 0 -0.98340964 0 ;
	setAttr ".pt[31]" -type "float3" 0 -0.98340964 0 ;
	setAttr ".pt[34]" -type "float3" 0 1.4944028 0 ;
	setAttr ".pt[40]" -type "float3" 0 0.038632989 0 ;
	setAttr ".pt[41]" -type "float3" 0 0.038632989 0 ;
	setAttr ".pt[44]" -type "float3" 0 2.5164435 0 ;
	setAttr ".pt[50]" -type "float3" 0 0.038632989 0 ;
	setAttr ".pt[51]" -type "float3" 0 0.038632989 0 ;
	setAttr ".pt[54]" -type "float3" 0 2.5164435 0 ;
	setAttr -s 60 ".vt[0:59]"  -3 -1 2 3.9834094 -1 2 -3 1 2 3.9834094 1 2
		 -3 1 -2 3.9834094 1 -2 -3 -1 -2 3.9834094 -1 -2 -2.0073859692 2.4947834 2 -2.0073859692 2.4947834 -2
		 -2.0073859692 -1 -2 -2.0073859692 -1 2 0.0073209107 2.4947834 2 0.0073209107 2.4947834 -2
		 0.0073209107 -1 -2 0.0073209107 -1 2 0.032130618 1 2 0.032130618 1 -2 1.035208464 -1 -2
		 1.035208464 -1 2 3.9834094 0.9999994 1.73222804 0.032130618 0.9999994 1.73222804
		 0.0073209107 2.4947834 1.73222804 -2.0073859692 2.4947834 1.73222804 -3 0.9999994 1.73222804
		 -3 -1 1.73222804 -2.0073859692 -1 1.73222804 0.0073209107 -1 1.73222804 1.035208464 -1 1.73222804
		 3.9834094 -1 1.73222804 3.9834094 0.9999994 -1.6707288 0.032130618 0.9999994 -1.6707288
		 0.0073209107 2.4947834 -1.6707288 -2.0073859692 2.4947834 -1.6707288 -3 0.9999994 -1.6707288
		 -3 -1 -1.6707288 -2.0073859692 -1 -1.6707288 0.0073209107 -1 -1.6707288 1.035208464 -1 -1.6707288
		 3.9834094 -1 -1.6707288 3.9834094 -0.024987221 1.4657315 0.032130618 -0.024987221 1.4657315
		 0.0073209107 2.4947834 1.4657315 -2.0073862076 2.4947834 1.4657315 -3 -0.024987221 1.4657315
		 -3 -1 1.4657315 -2.0073859692 -1 1.4657315 0.0073209107 -1 1.4657315 1.035208464 -1 1.4657315
		 3.9834094 -1 1.4657315 3.9834094 -0.024987221 -1.38373256 0.032130618 -0.024987221 -1.38373256
		 0.0073209107 2.4947834 -1.38373256 -2.0073859692 2.4947834 -1.38373256 -3 -0.024987221 -1.38373256
		 -3 -1 -1.38373256 -2.0073859692 -1 -1.38373256 0.0073209107 -1 -1.38373256 1.035208464 -1 -1.38373256
		 3.9834094 -1 -1.38373256;
	setAttr -s 116 ".ed[0:115]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 24 0
		 3 20 0 4 6 0 5 7 0 6 35 0 7 39 0 8 12 0 9 13 0 8 23 1 10 14 0 9 10 1 11 15 0 10 36 1
		 11 8 1 12 16 0 13 17 0 12 22 1 14 18 0 13 14 1 15 19 0 14 37 1 15 12 1 16 3 0 17 5 0
		 16 21 1 18 7 0 17 18 1 19 1 0 18 38 1 19 16 1 20 40 0 21 41 1 20 21 1 22 42 1 21 22 1
		 23 43 1 22 23 1 24 44 0 23 24 1 25 0 0 24 25 1 26 11 1 25 26 1 27 15 1 26 27 1 28 19 1
		 27 28 1 29 1 0 28 29 1 29 20 1 30 5 0 31 17 1 30 31 1 32 13 1 31 32 1 33 9 1 32 33 1
		 34 4 0 33 34 1 35 55 0 34 35 1 36 56 1 35 36 1 37 57 1 36 37 1 38 58 1 37 38 1 39 59 0
		 38 39 1 39 30 1 40 50 0 41 51 1 40 41 1 42 52 1 41 42 1 43 53 1 42 43 1 44 54 0 43 44 1
		 45 25 0 44 45 1 46 26 1 45 46 1 47 27 1 46 47 1 48 28 1 47 48 1 49 29 0 48 49 1 49 40 1
		 50 30 0 51 31 1 50 51 1 52 32 1 51 52 1 53 33 1 52 53 1 54 34 0 53 54 1 55 45 0 54 55 1
		 56 46 1 55 56 1 57 47 1 56 57 1 58 48 1 57 58 1 59 49 0 58 59 1 59 50 1;
	setAttr -s 58 -ch 232 ".fc[0:57]" -type "polyFaces" 
		f 4 0 19 -2 -5
		mu 0 4 0 17 14 2
		f 4 1 14 44 -7
		mu 0 4 2 14 33 35
		f 4 2 16 -4 -9
		mu 0 4 4 15 16 6
		f 4 48 47 -1 -46
		mu 0 4 37 38 18 8
		f 4 -54 55 -8 -6
		mu 0 4 1 42 30 3
		f 4 45 4 6 46
		mu 0 4 36 0 2 34
		f 4 12 22 42 -15
		mu 0 4 14 19 32 33
		f 4 -17 13 24 -16
		mu 0 4 16 15 20 21
		f 4 -48 50 49 -18
		mu 0 4 18 38 39 23
		f 4 -20 17 27 -13
		mu 0 4 14 17 22 19
		f 4 20 30 40 -23
		mu 0 4 19 24 31 32
		f 4 -25 21 32 -24
		mu 0 4 21 20 25 26
		f 4 -50 52 51 -26
		mu 0 4 23 39 40 28
		f 4 -28 25 35 -21
		mu 0 4 19 22 27 24
		f 4 28 7 38 -31
		mu 0 4 24 3 29 31
		f 4 -33 29 9 -32
		mu 0 4 26 25 5 7
		f 4 -52 54 53 -34
		mu 0 4 28 40 41 9
		f 4 -36 33 5 -29
		mu 0 4 24 27 1 3
		f 4 -39 36 78 -38
		mu 0 4 31 29 57 59
		f 4 -41 37 80 -40
		mu 0 4 32 31 59 60
		f 4 -43 39 82 -42
		mu 0 4 33 32 60 61
		f 4 -45 41 84 -44
		mu 0 4 35 33 61 63
		f 4 85 -47 43 86
		mu 0 4 64 36 34 62
		f 4 88 87 -49 -86
		mu 0 4 65 66 38 37
		f 4 -51 -88 90 89
		mu 0 4 39 38 66 67
		f 4 -53 -90 92 91
		mu 0 4 40 39 67 68
		f 4 -55 -92 94 93
		mu 0 4 41 40 68 69
		f 4 -56 -94 95 -37
		mu 0 4 30 42 70 58
		f 4 -59 56 -30 -58
		mu 0 4 45 43 5 25
		f 4 -61 57 -22 -60
		mu 0 4 46 45 25 20
		f 4 -63 59 -14 -62
		mu 0 4 47 46 20 15
		f 4 -65 61 -3 -64
		mu 0 4 49 47 15 4
		f 4 10 -67 63 8
		mu 0 4 12 50 48 13
		f 4 3 18 -69 -11
		mu 0 4 6 16 52 51
		f 4 -71 -19 15 26
		mu 0 4 53 52 16 21
		f 4 -73 -27 23 34
		mu 0 4 54 53 21 26
		f 4 -75 -35 31 11
		mu 0 4 55 54 26 7
		f 4 -76 -12 -10 -57
		mu 0 4 44 56 10 11
		f 4 -79 76 98 -78
		mu 0 4 59 57 71 73
		f 4 -81 77 100 -80
		mu 0 4 60 59 73 74
		f 4 -83 79 102 -82
		mu 0 4 61 60 74 75
		f 4 -85 81 104 -84
		mu 0 4 63 61 75 77
		f 4 105 -87 83 106
		mu 0 4 78 64 62 76
		f 4 108 107 -89 -106
		mu 0 4 79 80 66 65
		f 4 -91 -108 110 109
		mu 0 4 67 66 80 81
		f 4 -93 -110 112 111
		mu 0 4 68 67 81 82
		f 4 -95 -112 114 113
		mu 0 4 69 68 82 83
		f 4 -96 -114 115 -77
		mu 0 4 58 70 84 72
		f 4 -99 96 58 -98
		mu 0 4 73 71 43 45
		f 4 -101 97 60 -100
		mu 0 4 74 73 45 46
		f 4 -103 99 62 -102
		mu 0 4 75 74 46 47
		f 4 -105 101 64 -104
		mu 0 4 77 75 47 49
		f 4 65 -107 103 66
		mu 0 4 50 78 76 48
		f 4 68 67 -109 -66
		mu 0 4 51 52 80 79
		f 4 -111 -68 70 69
		mu 0 4 81 80 52 53
		f 4 -113 -70 72 71
		mu 0 4 82 81 53 54
		f 4 -115 -72 74 73
		mu 0 4 83 82 54 55
		f 4 -116 -74 75 -97
		mu 0 4 72 84 56 44;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder9";
	rename -uid "44024099-4E54-E226-1F89-CB8583DD018E";
	setAttr ".t" -type "double3" 24 0 -12 ;
	setAttr ".rp" -type "double3" -1.5 -1 2 ;
	setAttr ".sp" -type "double3" -1.5 -1 2 ;
createNode mesh -n "pCylinderShape9" -p "pCylinder9";
	rename -uid "90D4F828-4425-6E4D-1480-5B991D6FCC96";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  -0.54894286 -0.69098282 1.75 -0.69098246 -0.4122144 1.75
		 -0.9122144 -0.19098252 1.75 -1.19098282 -0.048942983 1.75 -1.5 4.7683716e-007 1.75
		 -1.80901718 -0.048943043 1.75 -2.087785482 -0.1909827 1.75 -2.30901718 -0.41221458 1.75
		 -2.45105672 -0.69098294 1.75 -2.50000024 -1 1.75 -2.45105672 -1.30901706 1.75 -2.30901718 -1.58778536 1.75
		 -2.087785244 -1.80901718 1.75 -1.80901706 -1.95105672 1.75 -1.5 -2 1.75 -1.19098306 -1.9510566 1.75
		 -0.91221476 -1.80901706 1.75 -0.690983 -1.58778524 1.75 -0.54894346 -1.30901694 1.75
		 -0.5 -1 1.75 -0.54894286 -0.69098282 2.25 -0.69098246 -0.4122144 2.25 -0.9122144 -0.19098252 2.25
		 -1.19098282 -0.048942983 2.25 -1.5 4.7683716e-007 2.25 -1.80901718 -0.048943043 2.25
		 -2.087785482 -0.1909827 2.25 -2.30901718 -0.41221458 2.25 -2.45105672 -0.69098294 2.25
		 -2.50000024 -1 2.25 -2.45105672 -1.30901706 2.25 -2.30901718 -1.58778536 2.25 -2.087785244 -1.80901718 2.25
		 -1.80901706 -1.95105672 2.25 -1.5 -2 2.25 -1.19098306 -1.9510566 2.25 -0.91221476 -1.80901706 2.25
		 -0.690983 -1.58778524 2.25 -0.54894346 -1.30901694 2.25 -0.5 -1 2.25 -1.5 -1 1.75
		 -1.5 -1 2.25;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder10";
	rename -uid "0924B4C3-44BC-EA29-9505-13BD7C38483A";
	setAttr ".t" -type "double3" 24 0 -12 ;
	setAttr ".rp" -type "double3" -1.5 -1 -2 ;
	setAttr ".sp" -type "double3" -1.5 -1 -2 ;
createNode mesh -n "pCylinderShape10" -p "pCylinder10";
	rename -uid "6E95E147-4B09-6628-FD3F-7C9A78EE05ED";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -1.5 -0.44098282 -1.9409828 
		-1.5 -0.1622144 -1.6622144 -1.5 0.059017479 -1.4409826 -1.5 0.20105702 -1.298943 
		-1.5 0.25000048 -1.2499995 -1.5 0.20105696 -1.298943 -1.5 0.059017301 -1.4409827 
		-1.5 -0.16221458 -1.6622145 -1.5 -0.44098294 -1.9409829 -1.5 -0.75 -2.25 -1.5 -1.0590171 
		-2.5590172 -1.5 -1.3377854 -2.8377852 -1.5 -1.5590172 -3.0590172 -1.5 -1.7010567 
		-3.2010567 -1.5 -1.7500001 -3.25 -1.5 -1.7010566 -3.2010565 -1.5 -1.5590171 -3.0590172 
		-1.5 -1.3377852 -2.8377852 -1.5 -1.0590169 -2.5590169 -1.5 -0.75 -2.25 -1.5 -0.94098282 
		-1.4409828 -1.5 -0.6622144 -1.1622144 -1.5 -0.44098252 -0.94098252 -1.5 -0.29894298 
		-0.79894298 -1.5 -0.24999952 -0.74999952 -1.5 -0.29894304 -0.79894304 -1.5 -0.4409827 
		-0.9409827 -1.5 -0.66221458 -1.1622146 -1.5 -0.94098294 -1.4409829 -1.5 -1.25 -1.75 
		-1.5 -1.5590171 -2.0590172 -1.5 -1.8377854 -2.3377852 -1.5 -2.0590172 -2.5590172 
		-1.5 -2.2010567 -2.7010567 -1.5 -2.25 -2.75 -1.5 -2.2010565 -2.7010565 -1.5 -2.0590172 
		-2.5590172 -1.5 -1.8377852 -2.3377852 -1.5 -1.5590169 -2.0590169 -1.5 -1.25 -1.75 
		-1.5 -0.75 -2.25 -1.5 -1.25 -1.75;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -0.25 -0.30901718 0.80901754 -0.25 -0.5877856
		 0.5877856 -0.25 -0.80901748 0.30901715 -0.25 -0.95105702 0 -0.25 -1.000000476837
		 -0.30901715 -0.25 -0.95105696 -0.58778548 -0.25 -0.8090173 -0.80901724 -0.25 -0.58778542
		 -0.95105678 -0.25 -0.30901706 -1.000000238419 -0.25 0 -0.95105678 -0.25 0.30901706
		 -0.80901718 -0.25 0.58778536 -0.58778536 -0.25 0.80901712 -0.30901706 -0.25 0.95105666
		 -2.9802322e-008 -0.25 1.000000119209 0.30901697 -0.25 0.9510566 0.58778524 -0.25 0.80901706
		 0.809017 -0.25 0.5877853 0.95105654 -0.25 0.309017 1 -0.25 0 0.95105714 0.25 -0.30901718
		 0.80901754 0.25 -0.5877856 0.5877856 0.25 -0.80901748 0.30901715 0.25 -0.95105702
		 0 0.25 -1.000000476837 -0.30901715 0.25 -0.95105696 -0.58778548 0.25 -0.8090173 -0.80901724 0.25 -0.58778542
		 -0.95105678 0.25 -0.30901706 -1.000000238419 0.25 0 -0.95105678 0.25 0.30901706 -0.80901718 0.25 0.58778536
		 -0.58778536 0.25 0.80901712 -0.30901706 0.25 0.95105666 -2.9802322e-008 0.25 1.000000119209
		 0.30901697 0.25 0.9510566 0.58778524 0.25 0.80901706 0.809017 0.25 0.5877853 0.95105654 0.25 0.309017
		 1 0.25 0 0 -0.25 0 0 0.25 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder11";
	rename -uid "ABC78D2B-405B-998D-D18F-D6AA54D89A92";
	setAttr ".t" -type "double3" 24 0 -12 ;
	setAttr ".rp" -type "double3" 2.5 -1 -2 ;
	setAttr ".sp" -type "double3" 2.5 -1 -2 ;
createNode mesh -n "pCylinderShape11" -p "pCylinder11";
	rename -uid "30193E8B-41A4-BBFC-79AD-7F89406AEF1E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  2.5 -0.44098282 -1.9409828 
		2.5 -0.1622144 -1.6622144 2.5 0.059017479 -1.4409826 2.5 0.20105702 -1.298943 2.5 
		0.25000048 -1.2499995 2.5 0.20105696 -1.298943 2.5 0.059017301 -1.4409827 2.5 -0.16221458 
		-1.6622145 2.5 -0.44098294 -1.9409829 2.5 -0.75 -2.25 2.5 -1.0590171 -2.5590172 2.5 
		-1.3377854 -2.8377852 2.5 -1.5590172 -3.0590172 2.5 -1.7010567 -3.2010567 2.5 -1.7500001 
		-3.25 2.5 -1.7010566 -3.2010565 2.5 -1.5590171 -3.0590172 2.5 -1.3377852 -2.8377852 
		2.5 -1.0590169 -2.5590169 2.5 -0.75 -2.25 2.5 -0.94098282 -1.4409828 2.5 -0.6622144 
		-1.1622144 2.5 -0.44098252 -0.94098252 2.5 -0.29894298 -0.79894298 2.5 -0.24999952 
		-0.74999952 2.5 -0.29894304 -0.79894304 2.5 -0.4409827 -0.9409827 2.5 -0.66221458 
		-1.1622146 2.5 -0.94098294 -1.4409829 2.5 -1.25 -1.75 2.5 -1.5590171 -2.0590172 2.5 
		-1.8377854 -2.3377852 2.5 -2.0590172 -2.5590172 2.5 -2.2010567 -2.7010567 2.5 -2.25 
		-2.75 2.5 -2.2010565 -2.7010565 2.5 -2.0590172 -2.5590172 2.5 -1.8377852 -2.3377852 
		2.5 -1.5590169 -2.0590169 2.5 -1.25 -1.75 2.5 -0.75 -2.25 2.5 -1.25 -1.75;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -0.25 -0.30901718 0.80901754 -0.25 -0.5877856
		 0.5877856 -0.25 -0.80901748 0.30901715 -0.25 -0.95105702 0 -0.25 -1.000000476837
		 -0.30901715 -0.25 -0.95105696 -0.58778548 -0.25 -0.8090173 -0.80901724 -0.25 -0.58778542
		 -0.95105678 -0.25 -0.30901706 -1.000000238419 -0.25 0 -0.95105678 -0.25 0.30901706
		 -0.80901718 -0.25 0.58778536 -0.58778536 -0.25 0.80901712 -0.30901706 -0.25 0.95105666
		 -2.9802322e-008 -0.25 1.000000119209 0.30901697 -0.25 0.9510566 0.58778524 -0.25 0.80901706
		 0.809017 -0.25 0.5877853 0.95105654 -0.25 0.309017 1 -0.25 0 0.95105714 0.25 -0.30901718
		 0.80901754 0.25 -0.5877856 0.5877856 0.25 -0.80901748 0.30901715 0.25 -0.95105702
		 0 0.25 -1.000000476837 -0.30901715 0.25 -0.95105696 -0.58778548 0.25 -0.8090173 -0.80901724 0.25 -0.58778542
		 -0.95105678 0.25 -0.30901706 -1.000000238419 0.25 0 -0.95105678 0.25 0.30901706 -0.80901718 0.25 0.58778536
		 -0.58778536 0.25 0.80901712 -0.30901706 0.25 0.95105666 -2.9802322e-008 0.25 1.000000119209
		 0.30901697 0.25 0.9510566 0.58778524 0.25 0.80901706 0.809017 0.25 0.5877853 0.95105654 0.25 0.309017
		 1 0.25 0 0 -0.25 0 0 0.25 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder12";
	rename -uid "C1CDE3E0-4051-A190-82E9-4E80352C65D9";
	setAttr ".t" -type "double3" 24 0 -12 ;
	setAttr ".rp" -type "double3" 2.5 -1 2 ;
	setAttr ".sp" -type "double3" 2.5 -1 2 ;
createNode mesh -n "pCylinderShape12" -p "pCylinder12";
	rename -uid "42318A08-46E2-FB35-426A-7F9161354CA4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  2.5 -0.44098282 2.0590172 
		2.5 -0.1622144 2.3377857 2.5 0.059017479 2.5590174 2.5 0.20105702 2.701057 2.5 0.25000048 
		2.7500005 2.5 0.20105696 2.701057 2.5 0.059017301 2.5590172 2.5 -0.16221458 2.3377855 
		2.5 -0.44098294 2.0590172 2.5 -0.75 1.75 2.5 -1.0590171 1.4409829 2.5 -1.3377854 
		1.1622146 2.5 -1.5590172 0.94098288 2.5 -1.7010567 0.79894334 2.5 -1.7500001 0.74999988 
		2.5 -1.7010566 0.7989434 2.5 -1.5590171 0.94098294 2.5 -1.3377852 1.1622148 2.5 -1.0590169 
		1.4409831 2.5 -0.75 1.75 2.5 -0.94098282 2.5590172 2.5 -0.6622144 2.8377857 2.5 -0.44098252 
		3.0590174 2.5 -0.29894298 3.201057 2.5 -0.24999952 3.2500005 2.5 -0.29894304 3.201057 
		2.5 -0.4409827 3.0590172 2.5 -0.66221458 2.8377855 2.5 -0.94098294 2.5590172 2.5 
		-1.25 2.25 2.5 -1.5590171 1.9409829 2.5 -1.8377854 1.6622146 2.5 -2.0590172 1.4409828 
		2.5 -2.2010567 1.2989433 2.5 -2.25 1.2499999 2.5 -2.2010565 1.2989434 2.5 -2.0590172 
		1.4409829 2.5 -1.8377852 1.6622148 2.5 -1.5590169 1.9409831 2.5 -1.25 2.25 2.5 -0.75 
		1.75 2.5 -1.25 2.25;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -0.25 -0.30901718 0.80901754 -0.25 -0.5877856
		 0.5877856 -0.25 -0.80901748 0.30901715 -0.25 -0.95105702 0 -0.25 -1.000000476837
		 -0.30901715 -0.25 -0.95105696 -0.58778548 -0.25 -0.8090173 -0.80901724 -0.25 -0.58778542
		 -0.95105678 -0.25 -0.30901706 -1.000000238419 -0.25 0 -0.95105678 -0.25 0.30901706
		 -0.80901718 -0.25 0.58778536 -0.58778536 -0.25 0.80901712 -0.30901706 -0.25 0.95105666
		 -2.9802322e-008 -0.25 1.000000119209 0.30901697 -0.25 0.9510566 0.58778524 -0.25 0.80901706
		 0.809017 -0.25 0.5877853 0.95105654 -0.25 0.309017 1 -0.25 0 0.95105714 0.25 -0.30901718
		 0.80901754 0.25 -0.5877856 0.5877856 0.25 -0.80901748 0.30901715 0.25 -0.95105702
		 0 0.25 -1.000000476837 -0.30901715 0.25 -0.95105696 -0.58778548 0.25 -0.8090173 -0.80901724 0.25 -0.58778542
		 -0.95105678 0.25 -0.30901706 -1.000000238419 0.25 0 -0.95105678 0.25 0.30901706 -0.80901718 0.25 0.58778536
		 -0.58778536 0.25 0.80901712 -0.30901706 0.25 0.95105666 -2.9802322e-008 0.25 1.000000119209
		 0.30901697 0.25 0.9510566 0.58778524 0.25 0.80901706 0.809017 0.25 0.5877853 0.95105654 0.25 0.309017
		 1 0.25 0 0 -0.25 0 0 0.25 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube48";
	rename -uid "2658E5C9-495E-79F9-BACD-3092D33D5EFC";
	setAttr ".t" -type "double3" 24 0 -12 ;
	setAttr ".rp" -type "double3" 2 0.75 0 ;
	setAttr ".sp" -type "double3" 2 0.75 0 ;
createNode mesh -n "pCubeShape48" -p "pCube48";
	rename -uid "5B704566-41F4-C549-A20A-5196863C79EC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1.5 0 0.5 2.5 0 0.5 1.5 1.5 0.5 2.5 1.5 0.5
		 1.5 1.5 -0.5 2.5 1.5 -0.5 1.5 0 -0.5 2.5 0 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube49";
	rename -uid "93C99562-4FD3-2DCE-0F98-A89D4D9D06FD";
	setAttr ".t" -type "double3" 24 0 -12 ;
	setAttr ".rp" -type "double3" 2.5 2 0 ;
	setAttr ".sp" -type "double3" 2.5 2 0 ;
createNode mesh -n "pCubeShape49" -p "pCube49";
	rename -uid "AEA2C321-494F-CFBB-0DA7-5EB0153BDCC4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.5 2 0 3.5 3 0 1.5 1 0 0.5 
		2 0 1.5 1 0 0.5 2 0 4.5 2 0 3.5 3 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2E898417-4794-869E-9443-EBB509C193BD";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "559CDEF7-42EC-3D3B-8482-F5A7D35ED0DD";
createNode displayLayer -n "defaultLayer";
	rename -uid "2DB6D86A-4CBB-32FD-0B93-D48BDA926801";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7B3DB9F5-4CE6-DB28-9434-8BA17AF5BD4B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "30FF85CF-47CF-76DB-9FFF-F38307032B41";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A9093D64-4428-FFD0-DCA5-88BFE703B788";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 805\n                -height 360\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 805\n            -height 360\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 804\n                -height 359\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 804\n            -height 359\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 805\n                -height 359\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 805\n            -height 359\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1615\n                -height 764\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1615\n            -height 764\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1615\\n    -height 764\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1615\\n    -height 764\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "60C8F61A-41D4-338B-0517-2CB412D61B38";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 83 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPyramidShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape33.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape34.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape35.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape36.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape37.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape38.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape39.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape40.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape41.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape42.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape43.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape44.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape45.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPyramidShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape33.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape46.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape48.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape49.iog" ":initialShadingGroup.dsm" -na;
// End of AGDEV_models.ma
