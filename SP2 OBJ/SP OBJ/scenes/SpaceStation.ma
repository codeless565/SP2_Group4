//Maya ASCII 2017 scene
//Name: SpaceStation.ma
//Last modified: Wed, Feb 15, 2017 06:51:51 PM
//Codeset: 1252
requires maya "2017";
requires -nodeType "renderSetup" "renderSetup.py" "1.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "D08E3877-4E52-356A-E490-3E9059A07E25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.969769383821564 7.68713385973256 -6.604488869595845 ;
	setAttr ".r" -type "double3" -26.738352699437932 -5508.1999999926084 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "95FF4D59-49D5-D452-9F58-DD86254F38AC";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.530263029212506;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "3F5CDE63-49B5-CC8F-51E3-6B831883D00E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4A3B64D0-4E29-95CD-7772-96805E19A3E1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "3B9635A9-4BE2-84E6-A6EA-D78E364858F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C93F1A3A-4BD9-AA83-B619-F28AE3F210D0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "50D80215-470E-7053-019A-A6A0C61AA908";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2F28DEA8-4640-856F-4A15-74B93C0EC96F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pTorus1";
	rename -uid "F8256BAD-4471-BF1A-C891-12B85363F9FB";
	setAttr ".r" -type "double3" 0 9 0 ;
createNode transform -n "transform5" -p "pTorus1";
	rename -uid "648A3704-4655-CA74-2DF7-FAA78F887F47";
	setAttr ".v" no;
createNode mesh -n "pTorusShape1" -p "transform5";
	rename -uid "080A79D1-4A10-1EC1-66D8-2090748E0C1F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus2";
	rename -uid "8AF20DA3-4131-CBC4-85C3-0E8ABAE59685";
	setAttr ".t" -type "double3" 0 3.0954912141397903 0 ;
	setAttr ".r" -type "double3" 0 9 0 ;
	setAttr ".rp" -type "double3" 0 0.40450878586020966 0 ;
	setAttr ".sp" -type "double3" 0 0.40450878586020966 0 ;
createNode transform -n "transform9" -p "pTorus2";
	rename -uid "0501EA56-411B-D952-66C1-8C997F9799B4";
	setAttr ".v" no;
createNode mesh -n "pTorusShape2" -p "transform9";
	rename -uid "7CC38551-48A0-BEA5-2A80-899A59754EFA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus3";
	rename -uid "7AF4E2B3-40E4-E4AA-9767-73A03AC4BF82";
	setAttr ".t" -type "double3" 0 -3.150084943916426 0 ;
	setAttr ".r" -type "double3" 0 9 0 ;
	setAttr ".rp" -type "double3" 0 -0.4999999809881972 0 ;
	setAttr ".sp" -type "double3" 0 -0.4999999809881972 0 ;
createNode transform -n "transform1" -p "pTorus3";
	rename -uid "8171E106-4774-86DE-5A06-D88CA560E754";
	setAttr ".v" no;
createNode mesh -n "pTorusShape3" -p "transform1";
	rename -uid "A2D72219-406D-2FF7-8578-DBB18633DB31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2";
	rename -uid "A7EC4C4D-48F6-E323-1ED3-4C83564869FA";
	setAttr ".t" -type "double3" -1.852884572118782e-022 1.3234889800848443e-022 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode transform -n "transform6" -p "pCylinder2";
	rename -uid "D84EBC2E-44F9-8685-3F54-BCA97BB1E8C5";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform6";
	rename -uid "BD297CA0-45E4-80D1-A5A6-8DA94C19AA6D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder3";
	rename -uid "4AC7A62A-4282-946C-C37E-088383473EC2";
	setAttr ".t" -type "double3" -7.9409338805090657e-023 3.1477553844451904 0 ;
	setAttr ".r" -type "double3" 90 90 0 ;
createNode transform -n "transform8" -p "pCylinder3";
	rename -uid "B1843E5D-4AA9-8270-7BF4-6F80EABB9B92";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape3" -p "transform8";
	rename -uid "CF667B87-4D67-BAB4-F1FA-BDBBEAD7A556";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder4";
	rename -uid "05ADB268-4686-C4A6-9F50-53AC5BF690F9";
	setAttr ".t" -type "double3" -7.9409338805090657e-023 -3.1838409549809237 0 ;
	setAttr ".r" -type "double3" 90 90 0 ;
createNode transform -n "transform2" -p "pCylinder4";
	rename -uid "F544D47C-45CF-ADC3-6088-63A3D6BD15BE";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape4" -p "transform2";
	rename -uid "395AB04D-43A6-C43F-98D5-0C99EB8719C4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
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
	setAttr -s 42 ".vt[0:41]"  0.19021143 -2.75 -0.061803438 0.16180351 -2.75 -0.11755712
		 0.11755712 -2.75 -0.1618035 0.06180343 -2.75 -0.1902114 0 -2.75 -0.20000009 -0.06180343 -2.75 -0.1902114
		 -0.1175571 -2.75 -0.16180347 -0.16180345 -2.75 -0.11755709 -0.19021136 -2.75 -0.061803412
		 -0.20000005 -2.75 0 -0.19021136 -2.75 0.061803412 -0.16180344 -2.75 0.11755707 -0.11755707 -2.75 0.16180342
		 -0.061803412 -2.75 0.19021134 -5.9604646e-009 -2.75 0.20000003 0.061803397 -2.75 0.19021133
		 0.11755705 -2.75 0.16180341 0.16180341 -2.75 0.11755706 0.19021131 -2.75 0.061803401
		 0.2 -2.75 0 0.19021143 2.75 -0.061803438 0.16180351 2.75 -0.11755712 0.11755712 2.75 -0.1618035
		 0.06180343 2.75 -0.1902114 0 2.75 -0.20000009 -0.06180343 2.75 -0.1902114 -0.1175571 2.75 -0.16180347
		 -0.16180345 2.75 -0.11755709 -0.19021136 2.75 -0.061803412 -0.20000005 2.75 0 -0.19021136 2.75 0.061803412
		 -0.16180344 2.75 0.11755707 -0.11755707 2.75 0.16180342 -0.061803412 2.75 0.19021134
		 -5.9604646e-009 2.75 0.20000003 0.061803397 2.75 0.19021133 0.11755705 2.75 0.16180341
		 0.16180341 2.75 0.11755706 0.19021131 2.75 0.061803401 0.2 2.75 0 0 -2.75 0 0 2.75 0;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder5";
	rename -uid "60CBE888-4E6F-98A1-71D6-D6B2E6A70DB3";
createNode transform -n "transform4" -p "pCylinder5";
	rename -uid "71554407-46DD-5320-2F35-07961B0507E7";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape5" -p "transform4";
	rename -uid "9C7DE41A-4561-BABB-1A68-F9B1E4D3127A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder6";
	rename -uid "31FD2A32-47C1-7C84-6BD7-6D8F0D0E8583";
	setAttr ".t" -type "double3" 0 -3.1838409900665283 0 ;
createNode transform -n "transform3" -p "pCylinder6";
	rename -uid "CC120AFA-4FE8-434E-2099-EBB7208C63AB";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape6" -p "transform3";
	rename -uid "CE8202BD-4245-7930-F913-B5B83B2E4F2E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder7";
	rename -uid "A612CDF8-4FB4-1543-F8FD-71BAC1EB1F73";
	setAttr ".t" -type "double3" 0 3.1477553844451904 0 ;
createNode transform -n "transform7" -p "pCylinder7";
	rename -uid "C2A17560-4F3E-2F04-D06F-AEAFCC25A7AE";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape7" -p "transform7";
	rename -uid "013C792D-4E08-5378-8A16-1DAAA8BFD495";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder8";
	rename -uid "AB559286-48A0-A21F-37FA-65872235F325";
	setAttr ".t" -type "double3" 0 1.4999999669604034 0 ;
	setAttr ".rp" -type "double3" 0 -0.99999996696040339 0 ;
	setAttr ".sp" -type "double3" 0 -0.99999996696040339 0 ;
createNode transform -n "transform14" -p "pCylinder8";
	rename -uid "1F829F6A-434E-41B5-55C6-9597EA3931C5";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape8" -p "transform14";
	rename -uid "A41195BE-4919-F3B1-6173-66AE5D176CF1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57499980926513672 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[0:39]" -type "float3"  -0.38115624 -2.1982416e-014 
		0.12384507 -0.32423085 -2.1982416e-014 0.23556738 -0.23556747 -2.1982416e-014 0.32423088 
		-0.12384516 -2.1982416e-014 0.38115627 -4.7775643e-008 -2.1982416e-014 0.4007712 
		0.1238451 -2.1982416e-014 0.38115621 0.23556742 -2.1982416e-014 0.32423076 0.32423076 
		-2.1982416e-014 0.23556738 0.38115621 -2.1982416e-014 0.12384507 0.40077126 -2.1982416e-014 
		-7.1663443e-008 0.38115621 -2.1982416e-014 -0.12384516 0.32423073 -2.1982416e-014 
		-0.23556742 0.23556738 -2.1982416e-014 -0.32423088 0.12384512 -2.1982416e-014 -0.38115627 
		-3.5831725e-008 -2.1982416e-014 -0.4007712 -0.12384512 -2.1982416e-014 -0.38115621 
		-0.23556742 -2.1982416e-014 -0.32423088 -0.32423076 -2.1982416e-014 -0.23556741 -0.38115621 
		-2.1982416e-014 -0.12384512 -0.40077126 -2.1982416e-014 -7.1663443e-008 0.94235682 
		0.39775538 -0.30618989 0.80161673 0.39775538 -0.58240855 0.58240831 0.39775538 -0.80161613 
		0.30619028 0.39775538 -0.94235659 1.1811885e-007 0.39775538 -0.99085307 -0.30619004 
		0.39775538 -0.94235635 -0.58240843 0.39775538 -0.80161572 -0.80161607 0.39775538 
		-0.58240801 -0.94235611 0.39775538 -0.30618984 -0.99085248 0.39775538 1.7569933e-007 
		-0.94235611 0.39775538 0.30619028 -0.80161607 0.39775538 0.58240879 -0.58240807 0.39775538 
		0.80161625 -0.30618984 0.39775538 0.94235599 8.8589118e-008 0.39775538 0.99085319 
		0.30619007 0.39775538 0.94235659 0.58240843 0.39775538 0.80161572 0.80161607 0.39775538 
		0.58240861 0.94235611 0.39775538 0.30619001 0.99085248 0.39775538 1.7569933e-007;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder9";
	rename -uid "6DA724EB-4E0D-3A9C-2D20-71BEE88EBCE1";
	setAttr ".t" -type "double3" 0 0.49999996696040339 0 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.99999996696040339 0 ;
	setAttr ".sp" -type "double3" 0 -0.99999996696040339 0 ;
createNode transform -n "transform15" -p "pCylinder9";
	rename -uid "E62C5454-448C-E347-06BB-53B56AD57F7B";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape9" -p "transform15";
	rename -uid "23245AAD-4B4E-835D-85C5-489EA28BF901";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57499980926513672 0.50046992301940918 ;
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
	setAttr -s 40 ".pt[0:39]" -type "float3"  -0.38115624 -2.1982416e-014 
		0.12384507 -0.32423085 -2.1982416e-014 0.23556738 -0.23556747 -2.1982416e-014 0.32423088 
		-0.12384516 -2.1982416e-014 0.38115627 -4.7775643e-008 -2.1982416e-014 0.4007712 
		0.1238451 -2.1982416e-014 0.38115621 0.23556742 -2.1982416e-014 0.32423076 0.32423076 
		-2.1982416e-014 0.23556738 0.38115621 -2.1982416e-014 0.12384507 0.40077126 -2.1982416e-014 
		-7.1663443e-008 0.38115621 -2.1982416e-014 -0.12384516 0.32423073 -2.1982416e-014 
		-0.23556742 0.23556738 -2.1982416e-014 -0.32423088 0.12384512 -2.1982416e-014 -0.38115627 
		-3.5831725e-008 -2.1982416e-014 -0.4007712 -0.12384512 -2.1982416e-014 -0.38115621 
		-0.23556742 -2.1982416e-014 -0.32423088 -0.32423076 -2.1982416e-014 -0.23556741 -0.38115621 
		-2.1982416e-014 -0.12384512 -0.40077126 -2.1982416e-014 -7.1663443e-008 0.94235682 
		0.39775538 -0.30618989 0.80161673 0.39775538 -0.58240855 0.58240831 0.39775538 -0.80161613 
		0.30619028 0.39775538 -0.94235659 1.1811885e-007 0.39775538 -0.99085307 -0.30619004 
		0.39775538 -0.94235635 -0.58240843 0.39775538 -0.80161572 -0.80161607 0.39775538 
		-0.58240801 -0.94235611 0.39775538 -0.30618984 -0.99085248 0.39775538 1.7569933e-007 
		-0.94235611 0.39775538 0.30619028 -0.80161607 0.39775538 0.58240879 -0.58240807 0.39775538 
		0.80161625 -0.30618984 0.39775538 0.94235599 8.8589118e-008 0.39775538 0.99085319 
		0.30619007 0.39775538 0.94235659 0.58240843 0.39775538 0.80161572 0.80161607 0.39775538 
		0.58240861 0.94235611 0.39775538 0.30619001 0.99085248 0.39775538 1.7569933e-007;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder10";
	rename -uid "41A6DB51-4382-BCEA-5FE1-D68D2C41C2D5";
	setAttr ".t" -type "double3" 0 0.036085460316610085 0 ;
	setAttr ".rp" -type "double3" -4.4646708330375873e-007 -2.9338408447618005 -5.3276280231884243e-007 ;
	setAttr ".sp" -type "double3" -4.4646708330375873e-007 -2.9338408447618005 -5.3276280231884243e-007 ;
createNode mesh -n "pCylinder10Shape" -p "pCylinder10";
	rename -uid "05414787-4C79-596E-3104-A496C39BC686";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.93473532795906067 0.61275917291641235 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder11";
	rename -uid "C3988A0E-434F-B9C3-650D-80AA29242E4D";
	setAttr ".rp" -type "double3" -6.201540334593858e-007 0 -8.6733923687631886e-007 ;
	setAttr ".sp" -type "double3" -6.201540334593858e-007 0 -8.6733923687631886e-007 ;
createNode mesh -n "pCylinder11Shape" -p "pCylinder11";
	rename -uid "DDEE510E-41CA-10FF-7CC9-E0B9C0E42CDB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49245411326410249 0.49406262685079128 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus4";
	rename -uid "84D9DD1B-418C-8C1E-6529-90B4BA01A346";
	setAttr ".rp" -type "double3" -4.4646708330375873e-007 3.1116417333916138 -5.3276280231884243e-007 ;
	setAttr ".sp" -type "double3" -4.4646708330375873e-007 3.1116417333916138 -5.3276280231884243e-007 ;
createNode transform -n "polySurface1" -p "pTorus4";
	rename -uid "E702DB59-4728-EE9E-679C-348508A31285";
	setAttr ".t" -type "double3" 0 0.16612167682756429 0 ;
createNode transform -n "transform13" -p "|pTorus4|polySurface1";
	rename -uid "DE00D6F9-47B4-9ECD-9F87-B8B5F3C03E68";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform13";
	rename -uid "E683BDF5-4336-044F-E1C1-39A42B92C252";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface2" -p "pTorus4";
	rename -uid "367D1EBE-4B9A-28DA-C307-74BE657AB21F";
createNode transform -n "transform12" -p "polySurface2";
	rename -uid "B4308815-48C9-D0F7-1CE2-CF9FCC1A6D28";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform12";
	rename -uid "DFC29F7B-49B6-EB83-72ED-1A8C9C1B1B65";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface3" -p "pTorus4";
	rename -uid "3BE57867-48D2-ECCA-326E-1BBCC60E8111";
createNode transform -n "transform11" -p "polySurface3";
	rename -uid "851F5F6D-4F6C-00E5-3C9F-AAABCAD96948";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform11";
	rename -uid "16D00C5D-49A9-6D4B-13FF-AB92AB9ABCD4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform10" -p "pTorus4";
	rename -uid "7DFE2DA1-4142-029B-25C4-61B7D03C4DA8";
	setAttr ".v" no;
createNode mesh -n "pTorus4Shape" -p "transform10";
	rename -uid "923634F9-46B6-CA1D-9D8D-06882C3DCB8E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.2499999962747097 0.2499999962747097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface1";
	rename -uid "44494779-4AF0-DC96-D111-3AA9DBEF5141";
	setAttr ".rp" -type "double3" -4.76837158203125e-007 3.2777633222590827 -7.152557373046875e-007 ;
	setAttr ".sp" -type "double3" -4.76837158203125e-007 3.2777633222590827 -7.152557373046875e-007 ;
createNode mesh -n "polySurface1Shape" -p "|polySurface1";
	rename -uid "54F008CD-4579-9F29-B92A-7A9FC2A12B68";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.38566362857818604 0.064405366778373718 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder12";
	rename -uid "C1E78EE5-40F4-6862-BACC-66A2A1093BC3";
	setAttr ".rp" -type "double3" -1.1920928955078125e-007 -2.2204460492503131e-016 
		1.1102230246251565e-016 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-007 -2.2204460492503131e-016 
		1.1102230246251565e-016 ;
createNode mesh -n "pCylinder12Shape" -p "pCylinder12";
	rename -uid "55E4D779-4451-AF57-DA19-02BE8766BB9A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.2 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1298777D-4AC6-55B5-5A7F-98B172E80055";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0988B4B0-4519-9C49-9475-538DC837CE85";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DFF684D5-4D15-2B5F-2401-6D9FE89C360D";
createNode displayLayerManager -n "layerManager";
	rename -uid "93A0F280-4C25-FBA9-FA5D-C2AF070571E5";
createNode displayLayer -n "defaultLayer";
	rename -uid "D3E70F38-489F-7308-1C92-A7BB20DC9FA5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4ED565F0-4ECD-820B-0345-57ACEC97BC2C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "ADAF3CD4-4C31-ACFA-C3BD-63915C5B8429";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "49D9F410-40C2-CB93-76B1-84AB8338B87A";
	setAttr ".r" 0.3;
	setAttr ".h" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyTorus -n "polyTorus3";
	rename -uid "CB526259-43EF-0B18-E045-C080A471F234";
	setAttr ".r" 3;
	setAttr ".tw" 29.999999999999996;
	setAttr ".sh" 5;
createNode polyTorus -n "polyTorus1";
	rename -uid "9A1658F2-47F1-76E9-7A1E-19B1CA25ED7F";
	setAttr ".r" 4;
	setAttr ".sr" 0.6;
	setAttr ".tw" 29.999999999999996;
	setAttr ".sh" 6;
createNode polyTorus -n "polyTorus2";
	rename -uid "6B509E7E-4DC8-195B-7602-CFB0DECB03D5";
	setAttr ".r" 3;
	setAttr ".tw" 29.999999999999996;
	setAttr ".sh" 5;
createNode polyCylinder -n "polyCylinder3";
	rename -uid "0C8EA6AE-43F6-6CAE-55A8-FCA239579610";
	setAttr ".r" 0.2;
	setAttr ".h" 5.5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder4";
	rename -uid "5C396DED-4607-530B-A6C6-248C14C35809";
	setAttr ".r" 0.6;
	setAttr ".h" 1;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder5";
	rename -uid "DB9E148E-41AF-6162-E970-9C9EF318EE06";
	setAttr ".r" 2;
	setAttr ".h" 0.5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder6";
	rename -uid "CB133F72-46EA-4CFA-11D8-0EA671876C9E";
	setAttr ".r" 2;
	setAttr ".h" 0.5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder7";
	rename -uid "73C4AEBE-4103-35DE-2B5E-2892A111AF09";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyUnite -n "polyUnite1";
	rename -uid "1B762B1C-41F5-E529-28D5-E4A636181E29";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId1";
	rename -uid "C2C6E572-4149-4E4F-CC35-B0AB08004155";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "9A91236F-47B3-06CD-475A-8A9306878C72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId2";
	rename -uid "23422CBC-42B8-7BC7-3B32-20993CE8231D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "29E9E324-475A-FF14-A384-1EB7554DE062";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "A8CF11E2-429C-6C71-4837-9FBC949C4F66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "170F15C6-46AE-D3A8-C4D1-F1B798232370";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "ADD32456-46C1-169F-A5DF-B682C69194E6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId6";
	rename -uid "C5A30FE0-49C2-E0DC-8BD7-3AB928B280AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "8102D31E-4EC1-8B1A-D5E2-FB9B767A84B4";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite2";
	rename -uid "3CFE5236-4AC1-DDE6-63DD-C3BB5465C045";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId8";
	rename -uid "391F1972-44F1-8114-96E0-4CA6F2F64483";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "BCB30B43-42F3-4A51-7FA1-E2AF33AC147E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId9";
	rename -uid "910B395C-4E6D-4A06-4937-4399AAA7EBE3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "FFFBE251-427B-B3D8-C7C9-B0A693B941DF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "AE0A128B-4ABC-72E9-6D69-9B89DDFEA63E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:119]";
createNode groupId -n "groupId11";
	rename -uid "6C176F6F-4638-0184-080A-28BC799A76E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "CEB4DDBC-4F51-5463-5587-C2861E987790";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "D6B60B8B-481F-90EB-3C9B-19BD0086B3B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId13";
	rename -uid "3D26EF34-4C66-1AA5-6F58-F4A9B50C6896";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "FEABAFE2-40DD-85A5-B172-63A5F36CF618";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite3";
	rename -uid "FFE7AF3D-47A0-3B68-7AB7-0C8A3DC94644";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId15";
	rename -uid "A74315AD-4AFA-0D10-14C8-A4A1B7A472BC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "FB5E641C-466B-6F90-1162-6283DDF7BE14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId16";
	rename -uid "20F18C55-495E-8E97-AB37-999CAEE64173";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "2E45D6A1-4CA7-354E-9D82-AC99B75E7D7F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "E932A5E3-4159-1719-F610-DBB81286351E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId18";
	rename -uid "81D46D48-4CCA-4398-CECD-17A30397B6FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "B3C4E0EA-4A43-F198-8B1E-57A6DFCCA97A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "AD114D59-4E2E-71F6-F52C-5BA7F138FF32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId20";
	rename -uid "3F271422-422C-AADF-1AE2-6A974F6032D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "B0AAF2D1-47BC-319D-5D79-2A9EA59A9487";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "EB9CA8E4-416C-E654-C6A1-E08870630D05";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:219]";
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "9C3FF143-4C8F-9570-2F00-24828548AE1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:219]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 6.9084105491638184 6.9084105491638184 6.9084105491638184 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0474E677-48CD-C257-531B-A2B550ED962D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 858\n                -height 723\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 858\n            -height 723\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 858\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 858\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D6A76BAB-4C07-C741-2495-A48A3A94A386";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "02A2BF8C-479F-E5B7-E804-5C9E00CCA6F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:239]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 8.9279460906982422 8.9279460906982422 8.9279460906982422 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "E7BE5260-4898-B078-EF0E-AC884C68F4CB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:219]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.036085460316610085 0 1;
	setAttr ".s" -type "double3" 6.9084105491638184 6.9084105491638184 6.9084105491638184 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "D1E87CAC-49CE-EA7A-572C-AEA1D5953DC5";
	setAttr ".dc" -type "componentList" 1 "f[120:139]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "C27C62F9-4B24-56D7-A3B8-A2A33E9FB991";
	setAttr ".dc" -type "componentList" 1 "f[120:139]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "D0CCE2F0-40E1-195B-7160-96A851A2312E";
	setAttr ".dc" -type "componentList" 1 "f[40:59]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "516653E1-47CB-7B52-BE18-658A0ADB9015";
	setAttr ".dc" -type "componentList" 1 "f[20:39]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "26D03666-4FA2-653A-415F-5D9673C0384A";
	setAttr ".dc" -type "componentList" 1 "f[80:99]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "9B2B799F-4E8D-A110-41E2-F48CC116ABBD";
	setAttr ".dc" -type "componentList" 1 "f[80:99]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "B9F20B27-4883-DEDC-9561-2E805AF21470";
	setAttr ".uopa" yes;
	setAttr -s 246 ".uvtk";
	setAttr ".uvtk[76]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[77]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[78]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[79]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[80]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[81]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[82]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[83]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[84]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[85]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[86]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[87]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[88]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[89]" -type "float2" -0.019327732 -0.034920752 ;
	setAttr ".uvtk[90]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[91]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[92]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[93]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[94]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[95]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[96]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[97]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[98]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[99]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[100]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[101]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[102]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[103]" -type "float2" -0.061246574 -0.034920786 ;
	setAttr ".uvtk[104]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[105]" -type "float2" -0.11612495 -0.093412638 ;
	setAttr ".uvtk[106]" -type "float2" -0.11612495 -0.093412638 ;
	setAttr ".uvtk[107]" -type "float2" -0.11612495 -0.093412638 ;
	setAttr ".uvtk[108]" -type "float2" -0.11612498 -0.093412653 ;
	setAttr ".uvtk[109]" -type "float2" -0.11612498 -0.093412653 ;
	setAttr ".uvtk[110]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[111]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[112]" -type "float2" -0.11612498 -0.093412653 ;
	setAttr ".uvtk[113]" -type "float2" -0.11612495 -0.093412653 ;
	setAttr ".uvtk[114]" -type "float2" -0.11612498 -0.093412638 ;
	setAttr ".uvtk[115]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[116]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[117]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[118]" -type "float2" -0.11612495 -0.093412653 ;
	setAttr ".uvtk[119]" -type "float2" -0.11612498 -0.093412653 ;
	setAttr ".uvtk[120]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[121]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[122]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[123]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[124]" -type "float2" -0.11612498 -0.093412645 ;
	setAttr ".uvtk[125]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[126]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[127]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[128]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[129]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[130]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[131]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[132]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[133]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[134]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[135]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[136]" -type "float2" -0.11612498 -0.093412645 ;
	setAttr ".uvtk[137]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[138]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[139]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[140]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[141]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[142]" -type "float2" -0.11612497 -0.093412653 ;
	setAttr ".uvtk[143]" -type "float2" -0.11612497 -0.093412653 ;
	setAttr ".uvtk[144]" -type "float2" -0.11612497 -0.093412653 ;
	setAttr ".uvtk[145]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[146]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[147]" -type "float2" -0.11612497 -0.093412653 ;
	setAttr ".uvtk[148]" -type "float2" -0.11612497 -0.093412653 ;
	setAttr ".uvtk[149]" -type "float2" -0.11612497 -0.093412653 ;
	setAttr ".uvtk[150]" -type "float2" -0.11612497 -0.093412638 ;
	setAttr ".uvtk[151]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[152]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[153]" -type "float2" -0.11612497 -0.093412653 ;
	setAttr ".uvtk[154]" -type "float2" -0.11612497 -0.093412653 ;
	setAttr ".uvtk[155]" -type "float2" -0.11612497 -0.093412645 ;
	setAttr ".uvtk[156]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[157]" -type "float2" -0.0086896122 -0.073124833 ;
	setAttr ".uvtk[158]" -type "float2" -0.0086896122 -0.073124833 ;
	setAttr ".uvtk[159]" -type "float2" -0.0086896122 -0.073124833 ;
	setAttr ".uvtk[160]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[161]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[162]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[163]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[164]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[165]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[166]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[167]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[168]" -type "float2" -0.0086896122 -0.073124826 ;
	setAttr ".uvtk[169]" -type "float2" -0.0086896122 -0.073124841 ;
	setAttr ".uvtk[170]" -type "float2" -0.008689642 -0.073124833 ;
	setAttr ".uvtk[171]" -type "float2" -0.008689642 -0.073124841 ;
	setAttr ".uvtk[172]" -type "float2" -0.0086896122 -0.073124856 ;
	setAttr ".uvtk[173]" -type "float2" -0.0086896122 -0.073124856 ;
	setAttr ".uvtk[174]" -type "float2" -0.008689642 -0.073124841 ;
	setAttr ".uvtk[175]" -type "float2" -0.008689642 -0.073124841 ;
	setAttr ".uvtk[176]" -type "float2" -0.0086896122 -0.073124856 ;
	setAttr ".uvtk[177]" -type "float2" -0.0086896122 -0.073124826 ;
	setAttr ".uvtk[178]" -type "float2" -0.008689642 -0.073124841 ;
	setAttr ".uvtk[179]" -type "float2" -0.008689642 -0.073124833 ;
	setAttr ".uvtk[180]" -type "float2" -0.0086896122 -0.073124826 ;
	setAttr ".uvtk[181]" -type "float2" -0.0086896122 -0.073124826 ;
	setAttr ".uvtk[182]" -type "float2" -0.0086897016 -0.073124833 ;
	setAttr ".uvtk[183]" -type "float2" -0.008689642 -0.073124833 ;
	setAttr ".uvtk[184]" -type "float2" -0.008689642 -0.073124826 ;
	setAttr ".uvtk[185]" -type "float2" -0.008689642 -0.073124826 ;
	setAttr ".uvtk[186]" -type "float2" -0.0086897016 -0.073124841 ;
	setAttr ".uvtk[187]" -type "float2" -0.0086897016 -0.073124841 ;
	setAttr ".uvtk[188]" -type "float2" -0.008689642 -0.073124856 ;
	setAttr ".uvtk[189]" -type "float2" -0.008689642 -0.073124856 ;
	setAttr ".uvtk[190]" -type "float2" -0.0086897016 -0.073124841 ;
	setAttr ".uvtk[191]" -type "float2" -0.0086897016 -0.073124841 ;
	setAttr ".uvtk[192]" -type "float2" -0.008689642 -0.073124856 ;
	setAttr ".uvtk[193]" -type "float2" -0.008689642 -0.073124826 ;
	setAttr ".uvtk[194]" -type "float2" -0.008689642 -0.073124826 ;
	setAttr ".uvtk[195]" -type "float2" -0.008689642 -0.073124841 ;
	setAttr ".uvtk[196]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[197]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[198]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[199]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[200]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[201]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[202]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[203]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[204]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[205]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[206]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[207]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[208]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[209]" -type "float2" -0.90215236 0.10982345 ;
	setAttr ".uvtk[210]" -type "float2" -0.85167718 0.10982344 ;
	setAttr ".uvtk[211]" -type "float2" -0.85167718 0.10982344 ;
	setAttr ".uvtk[212]" -type "float2" -0.85167718 0.10982347 ;
	setAttr ".uvtk[213]" -type "float2" -0.85167718 0.10982347 ;
	setAttr ".uvtk[214]" -type "float2" -0.85167718 0.10982344 ;
	setAttr ".uvtk[215]" -type "float2" -0.85167718 0.10982347 ;
	setAttr ".uvtk[216]" -type "float2" -0.85167718 0.10982344 ;
	setAttr ".uvtk[217]" -type "float2" -0.85167718 0.10982347 ;
	setAttr ".uvtk[218]" -type "float2" -0.85167718 0.10982344 ;
	setAttr ".uvtk[219]" -type "float2" -0.85167718 0.10982347 ;
	setAttr ".uvtk[220]" -type "float2" -0.85167718 0.10982344 ;
	setAttr ".uvtk[221]" -type "float2" -0.85167718 0.10982347 ;
	setAttr ".uvtk[222]" -type "float2" -0.85167718 0.10982344 ;
	setAttr ".uvtk[223]" -type "float2" -0.85167718 0.10982347 ;
	setAttr ".uvtk[224]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[225]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[226]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[227]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[228]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[229]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[230]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[231]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[232]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[233]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[234]" -type "float2" 0.048265614 0.17166668 ;
	setAttr ".uvtk[235]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[236]" -type "float2" 0.048265614 0.17166668 ;
	setAttr ".uvtk[237]" -type "float2" 0.048265643 0.17166668 ;
	setAttr ".uvtk[238]" -type "float2" 0.048265614 0.17166668 ;
	setAttr ".uvtk[239]" -type "float2" 0.048265614 0.17166668 ;
	setAttr ".uvtk[240]" -type "float2" 0.048265614 0.17166668 ;
	setAttr ".uvtk[241]" -type "float2" 0.048265614 0.17166668 ;
	setAttr ".uvtk[242]" -type "float2" 0.048265614 0.17166668 ;
	setAttr ".uvtk[243]" -type "float2" 0.048265614 0.17166668 ;
	setAttr ".uvtk[244]" -type "float2" 0.048265614 0.17166668 ;
	setAttr ".uvtk[245]" -type "float2" 0.33354542 0.17166668 ;
	setAttr ".uvtk[246]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[247]" -type "float2" 0.33354542 0.17166668 ;
	setAttr ".uvtk[248]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[249]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[250]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[251]" -type "float2" 0.33354542 0.17166668 ;
	setAttr ".uvtk[252]" -type "float2" 0.33354542 0.17166668 ;
	setAttr ".uvtk[253]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[254]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[255]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[256]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[257]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[258]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[259]" -type "float2" 0.33354542 0.17166668 ;
	setAttr ".uvtk[260]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[261]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[262]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[263]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[264]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[265]" -type "float2" 0.33354539 0.17166668 ;
	setAttr ".uvtk[282]" -type "float2" -0.039413992 -0.20523401 ;
	setAttr ".uvtk[283]" -type "float2" -0.039413992 -0.20523401 ;
	setAttr ".uvtk[284]" -type "float2" -0.039413992 -0.20523401 ;
	setAttr ".uvtk[285]" -type "float2" -0.039413992 -0.20523401 ;
	setAttr ".uvtk[286]" -type "float2" -0.039413992 -0.20523401 ;
	setAttr ".uvtk[287]" -type "float2" -0.039413992 -0.20523401 ;
	setAttr ".uvtk[288]" -type "float2" -0.039413992 -0.20523401 ;
	setAttr ".uvtk[289]" -type "float2" -0.039413992 -0.20523401 ;
	setAttr ".uvtk[290]" -type "float2" -0.086595379 -0.20523399 ;
	setAttr ".uvtk[291]" -type "float2" -0.086595379 -0.20523399 ;
	setAttr ".uvtk[292]" -type "float2" -0.086595379 -0.20523399 ;
	setAttr ".uvtk[293]" -type "float2" -0.086595379 -0.20523399 ;
	setAttr ".uvtk[294]" -type "float2" -0.086595379 -0.20523399 ;
	setAttr ".uvtk[295]" -type "float2" -0.086595379 -0.20523399 ;
	setAttr ".uvtk[296]" -type "float2" -0.086595379 -0.20523399 ;
	setAttr ".uvtk[297]" -type "float2" -0.086595379 -0.20523399 ;
	setAttr ".uvtk[298]" -type "float2" -0.92738998 0.10982347 ;
	setAttr ".uvtk[299]" -type "float2" -0.92738998 0.10982347 ;
	setAttr ".uvtk[300]" -type "float2" -0.92738998 0.10982344 ;
	setAttr ".uvtk[301]" -type "float2" -0.92738998 0.10982344 ;
	setAttr ".uvtk[302]" -type "float2" -0.92738998 0.10982347 ;
	setAttr ".uvtk[303]" -type "float2" -0.92738998 0.10982344 ;
	setAttr ".uvtk[304]" -type "float2" -0.92738998 0.10982347 ;
	setAttr ".uvtk[305]" -type "float2" -0.92738998 0.10982344 ;
	setAttr ".uvtk[306]" -type "float2" -0.92738998 0.10982347 ;
	setAttr ".uvtk[307]" -type "float2" -0.92738998 0.10982344 ;
	setAttr ".uvtk[308]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[309]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[310]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[311]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[312]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[313]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[314]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[315]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[316]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[317]" -type "float2" -0.87691474 0.10982348 ;
	setAttr ".uvtk[318]" -type "float2" -0.030821607 -0.20399615 ;
	setAttr ".uvtk[319]" -type "float2" -0.030821607 -0.20399615 ;
	setAttr ".uvtk[320]" -type "float2" -0.030821607 -0.20399615 ;
	setAttr ".uvtk[321]" -type "float2" -0.030821607 -0.20399615 ;
	setAttr ".uvtk[322]" -type "float2" -0.030821607 -0.20399615 ;
	setAttr ".uvtk[323]" -type "float2" -0.030821607 -0.20399615 ;
	setAttr ".uvtk[324]" -type "float2" -0.030821607 -0.20399615 ;
	setAttr ".uvtk[325]" -type "float2" -0.030821607 -0.20399615 ;
	setAttr ".uvtk[326]" -type "float2" -0.030821607 -0.20399621 ;
	setAttr ".uvtk[327]" -type "float2" -0.030821607 -0.20399621 ;
	setAttr ".uvtk[328]" -type "float2" -0.072559007 -0.20399612 ;
	setAttr ".uvtk[329]" -type "float2" -0.072559007 -0.20399612 ;
	setAttr ".uvtk[330]" -type "float2" -0.072559007 -0.20399612 ;
	setAttr ".uvtk[331]" -type "float2" -0.072559007 -0.20399612 ;
	setAttr ".uvtk[332]" -type "float2" -0.072559007 -0.20399612 ;
	setAttr ".uvtk[333]" -type "float2" -0.072559007 -0.20399612 ;
	setAttr ".uvtk[334]" -type "float2" -0.072559007 -0.20399612 ;
	setAttr ".uvtk[335]" -type "float2" -0.072559007 -0.20399612 ;
	setAttr ".uvtk[336]" -type "float2" -0.072559007 -0.20399612 ;
	setAttr ".uvtk[337]" -type "float2" -0.072559007 -0.20399612 ;
createNode polyFlipUV -n "polyFlipUV1";
	rename -uid "8DA1FCAF-41EA-46A2-5628-1A9B7D1067C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[52:54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "906A73E1-47C9-7D93-1CE7-E6A3E595895A";
	setAttr ".uopa" yes;
	setAttr -s 338 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.025627844 0.084237173 0.025627844
		 0.084237173 0.025627844 0.084237173 0.025627844 0.084237233 0.025627844 0.084237173
		 0.025627844 0.084237233 0.025627844 0.084237233 0.025627844 0.084237173 0.025627844
		 0.084237173 0.025627844 0.084237173 0.025627844 0.084237233 0.025627844 0.084237233
		 0.025627844 0.084237233 0.025627844 0.084237173 0.025627844 0.084237173 0.025627844
		 0.084237233 0.025627844 0.084237173 0.025627844 0.084237292 0.025627844 0.084237292
		 0.025627844 0.084237292 0.025627844 0.084237263 0.025627844 0.084237233 -0.046191707
		 0.084237218 -0.046191707 0.084237218 -0.046191707 0.084237218 -0.046191707 0.084237218
		 -0.046191707 0.084237218 -0.046191707 0.084237218 -0.046191707 0.084237218 -0.046191707
		 0.084237218 -0.046191707 0.084237218 -0.046191707 0.084237218 -0.046191707 0.084237218
		 -0.046191707 0.084237218 -0.046191707 0.084237218 -0.046191707 0.084237218 -0.046191707
		 0.084237218 -0.046191707 0.084237218 -0.046191707 0.084237218 -0.046191707 0.084237188
		 -0.046191707 0.084237218 -0.046191707 0.084237218 -0.046191707 0.084237248 -0.046191707
		 0.084237218 0.33234125 0.13834304 0.33234125 0.13834304 0.33234125 0.13834304 0.33234125
		 0.13834304 0.33234125 0.13834304 0.33234125 0.13834304 0.33234125 0.13834304 0.33234125
		 0.13834304 0.33234125 0.13834307 0.33234125 0.13834307 0.33234125 0.13834304 0.33234125
		 0.13834304 0.33234125 0.13834304 0.33234125 0.13834304 0.33234125 0.13834304 0.33234125
		 0.13834304 0.28577226 0.13834304 0.28577226 0.13834304 0.28577232 0.13834304 0.28577232
		 0.13834304 0.28577226 0.13834304 0.28577232 0.13834304 0.28577226 0.13834304 0.28577232
		 0.13834304 0.28577226 0.13834301 0.28577232 0.13834301 0.28577226 0.13834304 0.28577232
		 0.13834304 0.28577226 0.13834304 0.28577232 0.13834304 0.28577226 0.13834304 0.28577232
		 0.13834304 0.25 -0.015462285 0.25 -0.015462285 0.25 -0.015462285 0.25 -0.015462285
		 0.25 -0.015462285 0.25 -0.015462285 0.25 -0.015462285 0.25 -0.015462285 0.25 -0.015462285
		 0.25 -0.015462285 0.25 -0.015462285 0.25 -0.015462285 0.25 -0.015462285 0.25 -0.015462285
		 0.25 -0.015462285 0.25 -0.015462285 0.24999999 -0.015462285 0.24999999 -0.015462285
		 0.25 -0.015462285 0.24999999 -0.015462285 0.25 -0.015462285 0.24999999 -0.015462285
		 0.25 -0.015462285 0.24999999 -0.015462285 0.25 -0.015462285 0.24999999 -0.015462285
		 0.25 -0.015462285 0.24999999 -0.015462285 0.15000001 0.099999994 0.15000001 0.10000002
		 0.15000001 0.099999994 0.15000001 0.099999994 0.15000001 0.10000001 0.15000001 0.10000001
		 0.15000002 0.099999994 0.15000002 0.099999994 0.15000001 0.10000001 0.15000001 0.10000001
		 0.15000001 0.099999994 0.15000001 0.099999994 0.15000001 0.099999994 0.15000001 0.099999994
		 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.099999994 0.15000001 0.099999994
		 0.15000001 0.099999994 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.099999994
		 0.15000001 0.099999994 0.15000001 0.099999994 0.15000002 0.10000001 0.15000002 0.10000001
		 0.15000001 0.099999994 0.15000001 0.099999994 0.15000001 0.099999994 0.15000001 0.10000001
		 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.099999994
		 0.15000001 0.10000002 0.15000001 0.099999994 0.15000001 0.10000001 0.15000001 0.10000001
		 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.10000001
		 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.10000001
		 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.10000001 0.15000001 0.10000001
		 0.15000001 0.10000001 0.15000001 0.10000001 0.099999964 0.099999994 0.099999964 0.099999994
		 0.099999964 0.099999994 0.099999964 0.099999994 0.099999964 0.099999994 0.099999964
		 0.099999994 0.099999964 0.099999994 0.099999964 0.099999994 0.099999964 0.099999994
		 0.099999964 0.099999994 0.099999994 0.099999994 0.099999994 0.099999994 0.099999964
		 0.099999979 0.099999964 0.10000001 0.099999964 0.099999994 0.10000002 0.099999994
		 0.099999964 0.099999979 0.099999964 0.099999979 0.099999994 0.099999994 0.099999994
		 0.099999994 0.099999964 0.099999979 0.099999964 0.099999979 0.099999994 0.099999994
		 0.099999994 0.099999994 0.099999994 0.099999979 0.099999994 0.099999979 0.099999964
		 0.099999994 0.099999994 0.099999994 0.099999964 0.099999979 0.099999964 0.099999979
		 0.099999964 0.099999994 0.099999964 0.099999994 0.099999994 0.099999979 0.099999994
		 0.099999979 0.099999964 0.099999994 0.099999964 0.099999994 0.099999994 0.099999979
		 0.099999994 0.099999979 0.099999994 0.099999979 0.099999994 0.10000001 0.25 -7.4505806e-009
		 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009
		 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009
		 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009
		 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009
		 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009
		 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009
		 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0 -0.04999996 0 -0.04999996
		 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996
		 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996
		 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996
		 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996;
	setAttr ".uvtk[250:337]" 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996
		 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996
		 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996 0 -0.04999996
		 0.64670014 -0.032802232 0.64670014 -0.032802291 0.64670014 -0.032802232 0.64670014
		 -0.032802232 0.64670014 -0.032802291 0.64670014 -0.032802291 0.64670014 -0.032802291
		 0.64670014 -0.032802291 0.60496283 -0.032802314 0.60496283 -0.032802254 0.60496283
		 -0.032802254 0.60496283 -0.032802254 0.60496283 -0.032802314 0.60496283 -0.032802314
		 0.60496283 -0.032802254 0.60496283 -0.032802314 0.60000002 -0.050000068 0.60000002
		 -0.050000068 0.60000002 -0.050000008 0.60000002 -0.050000068 0.60000002 -0.050000068
		 0.60000002 -0.050000008 0.60000002 -0.050000008 0.60000002 -0.050000008 0.60000002
		 -0.050000068 0.60000002 -0.050000008 0.60000002 -0.050000068 0.60000002 -0.050000068
		 0.60000002 -0.050000068 0.60000002 -0.050000008 0.60000002 -0.050000068 0.60000002
		 -0.050000068 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25
		 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25
		 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25
		 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25
		 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25 -7.4505806e-009 0.25
		 -7.4505806e-009 3.7252903e-009 -0.015462331 3.7252903e-009 -0.015462242 -5.5879354e-008
		 -0.015462242 -5.5879354e-008 -0.015462331 3.7252903e-009 -0.015462242 -5.5879354e-008
		 -0.015462242 3.7252903e-009 -0.015462242 -5.5879354e-008 -0.015462242 3.7252903e-009
		 -0.015462242 -5.5879354e-008 -0.015462242 -1.1175871e-008 -0.015462302 -1.1175871e-008
		 -0.015462302 3.3527613e-008 -0.015462302 3.3527613e-008 -0.015462302 -1.1175871e-008
		 -0.015462302 3.3527613e-008 -0.015462302 -1.1175871e-008 -0.015462302 3.3527613e-008
		 -0.015462302 -1.1175871e-008 -0.015462331 3.3527613e-008 -0.015462331;
createNode polySeparate -n "polySeparate1";
	rename -uid "F13B073B-47E7-5F17-789E-F3AEB6A19679";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode groupId -n "groupId22";
	rename -uid "467B13DF-432F-4935-EAED-AAB43ECF2F0F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "ACB4D813-4EDC-C573-7144-80A175A17AC8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:179]";
createNode groupId -n "groupId23";
	rename -uid "52A4E629-4D6B-6613-7E3E-EABA00BF334E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "D34DA853-46AD-6E35-1429-5697B05E04A2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:179]";
createNode groupId -n "groupId24";
	rename -uid "444EA254-4C51-16D3-2DBC-23A875DD6C0A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "93DE35EA-49FB-22E0-30D7-E4A58157E025";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:179]";
createNode polyUnite -n "polyUnite4";
	rename -uid "DA19886A-4E75-CC75-3F1E-E78CF266A53C";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "50648407-49FB-839C-46F9-C286E86D5F00";
	setAttr ".uopa" yes;
	setAttr -s 100 ".uvtk";
	setAttr ".uvtk[28]" -type "float2" 0.33110866 0.037291393 ;
	setAttr ".uvtk[29]" -type "float2" 0.33110866 0.037291393 ;
	setAttr ".uvtk[30]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[31]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[32]" -type "float2" 0.33110866 0.037291393 ;
	setAttr ".uvtk[33]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[34]" -type "float2" 0.33110866 0.037291393 ;
	setAttr ".uvtk[35]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[36]" -type "float2" 0.33110866 0.037291452 ;
	setAttr ".uvtk[37]" -type "float2" 0.33110872 0.037291452 ;
	setAttr ".uvtk[38]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[39]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[40]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[41]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[42]" -type "float2" 0.33110866 0.037291393 ;
	setAttr ".uvtk[43]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[44]" -type "float2" 0.33110866 0.037291393 ;
	setAttr ".uvtk[45]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[46]" -type "float2" 0.33110866 0.037291393 ;
	setAttr ".uvtk[47]" -type "float2" 0.33110872 0.037291393 ;
	setAttr ".uvtk[48]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[49]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[50]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[51]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[52]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[53]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[54]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[55]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[56]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[57]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[58]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[59]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[60]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[61]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[62]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[63]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[64]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[65]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[66]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[67]" -type "float2" 0.40699601 0.037291382 ;
	setAttr ".uvtk[216]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[217]" -type "float2" 0.062298492 -0.012823428 ;
	setAttr ".uvtk[218]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[219]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[220]" -type "float2" 0.062298492 -0.012823428 ;
	setAttr ".uvtk[221]" -type "float2" 0.062298492 -0.012823427 ;
	setAttr ".uvtk[222]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[223]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[224]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[225]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[226]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[227]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[228]" -type "float2" 0.062298462 -0.012823429 ;
	setAttr ".uvtk[229]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[230]" -type "float2" 0.062298492 -0.012823429 ;
	setAttr ".uvtk[231]" -type "float2" 0.062298462 -0.012823414 ;
	setAttr ".uvtk[232]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[233]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[234]" -type "float2" 0.062298462 -0.012823414 ;
	setAttr ".uvtk[235]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[236]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[237]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[238]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[239]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[240]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[241]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[242]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[243]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[244]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[245]" -type "float2" 0.062298492 -0.012823414 ;
	setAttr ".uvtk[246]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[247]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[248]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[249]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[250]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[251]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[252]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[253]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[254]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[255]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[256]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[257]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[258]" -type "float2" 0.07577002 -0.012823436 ;
	setAttr ".uvtk[259]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[260]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[261]" -type "float2" 0.07577002 -0.012823451 ;
	setAttr ".uvtk[262]" -type "float2" 0.07577008 -0.012823451 ;
	setAttr ".uvtk[263]" -type "float2" 0.07577008 -0.012823451 ;
	setAttr ".uvtk[264]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[265]" -type "float2" 0.07577008 -0.012823436 ;
	setAttr ".uvtk[266]" -type "float2" 0.07577008 -0.012823451 ;
	setAttr ".uvtk[267]" -type "float2" 0.07577008 -0.012823444 ;
	setAttr ".uvtk[268]" -type "float2" 0.07577008 -0.012823444 ;
	setAttr ".uvtk[269]" -type "float2" 0.07577008 -0.012823444 ;
	setAttr ".uvtk[270]" -type "float2" 0.07577008 -0.012823444 ;
	setAttr ".uvtk[271]" -type "float2" 0.07577008 -0.012823444 ;
	setAttr ".uvtk[272]" -type "float2" 0.07577008 -0.012823444 ;
	setAttr ".uvtk[273]" -type "float2" 0.07577008 -0.012823444 ;
	setAttr ".uvtk[274]" -type "float2" 0.07577008 -0.012823444 ;
	setAttr ".uvtk[275]" -type "float2" 0.07577008 -0.012823444 ;
createNode polyFlipUV -n "polyFlipUV2";
	rename -uid "5BC32205-44CC-5261-6FB0-5290F7C11382";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[80:87]" "f[99:107]" "f[119]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "2B1E959A-41F5-DC69-20E9-6788E646705B";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk[216:245]" -type "float2" 0.25 -1.4901161e-008 0.25
		 -1.3038516e-008 0.25000006 -1.4901161e-008 0.25000006 -1.4901161e-008 0.25 -1.3038516e-008
		 0.25000006 -1.3038516e-008 0.25 -1.4901161e-008 0.25000006 -1.4901161e-008 0.25000006
		 -1.4901161e-008 0.25000006 -1.4901161e-008 0.25000006 -1.4901161e-008 0.25000006
		 -1.4901161e-008 0.25000006 -1.4901161e-008 0.25 -1.4901161e-008 0.25 -1.4901161e-008
		 0.25000006 0 0.25 0 0.25 0 0.25000006 0 0.25000006 0 0.25000006 0 0.25 0 0.25000006
		 0 0.25 0 0.25000006 0 0.25000006 0 0.25 0 0.25 0 0.25000006 0 0.25 0;
createNode polyFlipUV -n "polyFlipUV3";
	rename -uid "986D9008-4175-286A-809C-E391AD793B9D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[29:37]" "f[49:57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "E04E2FD1-4643-C2D8-5DB1-11A1B5036E85";
	setAttr ".uopa" yes;
	setAttr -s 370 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.13799354 -0.46113056 -0.13799354
		 -0.46113056 -0.13799354 -0.46113056 -0.13799354 -0.46113056 -0.13799354 -0.46113056
		 -0.13799354 -0.46113056 -0.13799354 -0.46113056 -0.13799354 -0.46113056 -0.13799354
		 -0.46113056 -0.13799354 -0.46113056 -0.13799354 -0.46113056 -0.13799354 -0.46113056
		 -0.13799354 -0.46113056 -0.13799354 -0.46113056 -0.077482328 -0.4611305 -0.077482298
		 -0.4611305 -0.077482298 -0.4611305 -0.077482328 -0.4611305 -0.077482328 -0.4611305
		 -0.077482328 -0.4611305 -0.077482358 -0.4611305 -0.077482358 -0.4611305 -0.077482328
		 -0.4611305 -0.077482328 -0.4611305 -0.077482298 -0.4611305 -0.077482298 -0.4611305
		 -0.077482298 -0.4611305 -0.077482298 -0.4611305 -0.72621751 -0.058840711 -0.64763808
		 -0.13742009 -0.61257994 -0.10236195 -0.69115937 -0.02378263 -0.58079457 -0.20426373
		 -0.54573631 -0.16920558 -0.80884075 0.023782592 -0.77378261 0.058840733 -0.53222978
		 -0.2528286 -0.49717155 -0.21777038 -0.82162035 0.0015038066 -0.74849617 -0.071620375
		 -0.67837977 -0.001503963 -0.75150394 0.071620256 -0.88742018 0.10236189 -0.85236204
		 0.13742009 -0.95426381 0.16920552 -0.91920567 0.20426366 -1.0028284788 0.21777031
		 -0.96777046 0.25282842 -0.72621739 -0.058840889 -0.64763808 -0.13742027 -0.61257982
		 -0.10236207 -0.69115925 -0.02378263 -0.58079445 -0.20426385 -0.54573619 -0.1692057
		 -0.80884075 0.023782413 -0.77378249 0.058840614 -0.53222978 -0.2528286 -0.49717155
		 -0.21777038 -0.82162023 0.0015036874 -0.74849606 -0.071620494 -0.67837954 -0.0015040226
		 -0.75150371 0.071620196 -0.88742018 0.10236183 -0.85236192 0.13742003 -0.95426369
		 0.16920546 -0.91920555 0.20426372 -1.0028284788 0.21777031 -0.96777034 0.2528286
		 -0.21037759 0.29073715 -0.27088863 0.35124826 -0.3059468 0.31619006 -0.24543577 0.25567901
		 -0.32236242 0.40272206 -0.35742062 0.36766386 -0.14675255 0.22711219 -0.18181072
		 0.19205399 -0.35976028 0.44011986 -0.39481848 0.40506172 -0.12447394 0.23989178 -0.19759814
		 0.31301594 -0.26771456 0.24289955 -0.19459035 0.16977537 -0.086241573 0.16660118
		 -0.12129971 0.13154298 -0.034767807 0.11512738 -0.069825977 0.080069281 0.0026299655
		 0.07772962 -0.032428086 0.04267136 -0.13449036 0.29073727 -0.19500135 0.35124826
		 -0.23005955 0.31619012 -0.16954856 0.25567913 -0.24647503 0.40272194 -0.2815333 0.36766386
		 -0.070865318 0.22711231 -0.10592352 0.19205411 -0.28387296 0.44011986 -0.31893116
		 0.40506172 -0.048586622 0.23989178 -0.12171082 0.31301594 -0.19182719 0.24289955
		 -0.11870299 0.16977537 -0.010354251 0.16660118 -0.045412421 0.13154298 0.041119516
		 0.11512738 0.0060614049 0.080069222 0.078517467 0.077729501 0.043459237 0.04267136
		 0.14258546 -0.095025793 0.14258546 -0.095025793 0.14258546 -0.095025793 0.14258546
		 -0.095025793 0.14258547 -0.095025793 0.14258547 -0.095025793 0.14258546 -0.095025793
		 0.14258546 -0.095025793 0.14258546 -0.095025793 0.14258546 -0.095025793 0.14258546
		 -0.095025793 0.14258546 -0.095025793 0.14258546 -0.095025793 0.14258546 -0.095025793
		 0.030759636 -0.15016091 0.030759636 -0.15016091 0.030759636 -0.15016091 0.030759636
		 -0.15016091 0.030759636 -0.15016091 0.030759636 -0.15016091 0.030759636 -0.15016091
		 0.030759636 -0.15016091 0.030759621 -0.15016091 0.030759621 -0.15016091 0.030759636
		 -0.15016091 0.030759636 -0.15016091 0.030759621 -0.15016091 0.030759621 -0.15016091
		 -0.10773803 -0.4611305 -0.10773803 -0.4611305 -0.10773803 -0.4611305 -0.10773803
		 -0.4611305 -0.10773803 -0.4611305 -0.10773803 -0.4611305 -0.10773803 -0.4611305 -0.10773803
		 -0.4611305 -0.107738 -0.4611305 -0.107738 -0.4611305 -0.047226701 -0.4611305 -0.047226701
		 -0.4611305 -0.047226701 -0.4611305 -0.047226701 -0.4611305 -0.047226701 -0.4611305
		 -0.047226701 -0.4611305 -0.047226701 -0.4611305 -0.047226701 -0.4611305 -0.047226731
		 -0.4611305 -0.047226731 -0.4611305 0.73361689 0.037176564 0.73361689 0.037176564
		 0.73361689 0.037176564 0.73361689 0.037176564 0.73361689 0.037176564 0.73361689 0.037176564
		 0.73361689 0.037176564 0.73361689 0.037176572 0.73361689 0.037176579 0.73361689 0.037176579
		 0.73361689 0.037176564 0.73361689 0.037176579 0.73361689 0.037176564 0.73361689 0.037176564
		 0.73361689 0.037176564 0.73361689 0.037176549 0.73361689 0.037176549 0.73361689 0.037176549
		 0.73361689 0.037176549 0.73361689 0.037176549 0.73361689 0.037176549 0.73361689 0.037176549
		 0.73361689 0.037176549 0.73361689 0.037176549 0.73361689 0.037176549 0.73361689 0.037176549
		 0.73361689 0.037176549 0.73361689 0.037176579 0.73361689 0.037176549 0.73361689 0.037176609
		 0.49878269 0.03717652 0.49878269 0.03717652 0.49878269 0.037176549 0.49878263 0.037176549
		 0.49878269 0.03717652 0.49878263 0.037176549 0.49878263 0.03717652 0.49878263 0.03717652
		 0.49878269 0.03717652 0.49878263 0.03717652 0.49878263 0.03717652 0.49878269 0.03717652
		 0.49878263 0.03717652 0.49878263 0.03717652 0.49878252 0.03717652 0.49878263 0.037176535
		 0.49878263 0.037176535 0.49878269 0.037176535 0.49878263 0.037176549 0.49878263 0.037176564
		 0.49878269 0.037176564 0.49878269 0.037176549 0.49878263 0.037176549 0.49878263 0.037176549
		 0.49878269 0.037176542 0.49878263 0.037176549 0.49878263 0.037176549 0.49878269 0.037176549
		 0.49878269 0.037176549 0.49878269 0.037176549 -0.049999982 0.04999999 -0.049999982
		 0.04999999 -0.049999982 0.049999997 -0.049999982 0.049999997 -0.049999982 0.04999999
		 -0.049999982 0.04999999 -0.049999982 0.04999999 -0.049999982 0.049999997 -0.049999982
		 0.049999997 -0.049999982 0.049999997 -0.049999982 0.049999997 -0.049999982 0.049999997
		 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982
		 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982
		 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982
		 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982
		 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982
		 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982 0.050000012
		 -0.049999982 0.050000012;
	setAttr ".uvtk[250:369]" -0.049999982 0.049999982 -0.049999982 0.049999982
		 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982
		 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982
		 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999982 -0.049999982
		 0.049999982 -0.049999982 0.049999982 -0.049999982 0.049999997 -0.049999982 0.049999997
		 -0.049999982 0.049999997 -0.049999982 0.04999999 -0.049999982 0.049999997 -0.049999982
		 0.049999997 -0.049999982 0.04999999 -0.049999982 0.049999997 -0.049999982 0.04999999
		 -0.049999982 0.049999993 -0.049999982 0.04999999 -0.049999982 0.049999997 0.068997025
		 -0.31246737 0.06899704 -0.31246737 0.06899704 -0.31246737 0.06899704 -0.31246737
		 0.068997048 -0.31246737 0.06899704 -0.31246737 0.06899704 -0.31246737 0.068997025
		 -0.31246737 0.06899704 -0.31246737 0.068997048 -0.31246737 0.06899704 -0.31246737
		 0.06899704 -0.31246737 0.06899704 -0.31246737 0.06899704 -0.31246737 0.068997048
		 -0.31246737 0.06899704 -0.31246737 0.06899704 -0.31246737 0.06899704 -0.31246737
		 0.068997048 -0.31246737 0.068997048 -0.31246737 0.06899704 -0.31246737 0.11306807
		 -0.38633814 0.11306806 -0.38633814 0.11306807 -0.38633814 0.11306807 -0.38633814
		 0.11306807 -0.38633814 0.11306807 -0.38633814 0.11306807 -0.38633814 0.11306807 -0.38633814
		 0.11306806 -0.38633814 0.11306807 -0.38633814 0.11306806 -0.38633814 0.11306807 -0.38633814
		 0.11306807 -0.38633814 0.11306806 -0.38633814 0.11306807 -0.38633814 0.11306807 -0.38633814
		 0.11306807 -0.38633814 0.11306807 -0.38633814 0.11306807 -0.38633814 0.11306807 -0.38633814
		 0.11306807 -0.38633814 0.36436909 0.21154051 0.28578955 0.29012001 0.25073123 0.25506181
		 0.32931077 0.17648225 0.44699222 0.12891735 0.4119339 0.093859047 0.5255717 0.05033781
		 0.49051332 0.015279576 0.45276308 0.093859106 0.53134251 0.015279695 0.56640077 0.05033787
		 0.48782134 0.12891735 0.37013984 0.17648236 0.4051981 0.21154056 0.29156053 0.25506175
		 0.32661879 0.29011995 0.35552627 0.37960884 0.29501525 0.44011989 0.25995708 0.40506172
		 0.3204681 0.34455064 0.41915137 0.3159838 0.38409314 0.28092563 0.47966242 0.25547278
		 0.44460422 0.22041461 0.42492235 0.28092575 0.48543334 0.22041479 0.52049142 0.25547287
		 0.45998043 0.31598383 0.36129725 0.34455082 0.39635533 0.3796089 0.30078626 0.40506181
		 0.33584434 0.44011995 -0.013820942 -0.095025785 -0.013820942 -0.095025785 -0.013820942
		 -0.095025785 -0.013820942 -0.095025785 -0.013820942 -0.095025785 -0.013820942 -0.095025785
		 -0.013820942 -0.095025785 -0.013820942 -0.095025785 -0.013820942 -0.095025785 -0.013820942
		 -0.095025785 -0.12564673 -0.27276924 -0.12564673 -0.27276924 -0.12564673 -0.27276924
		 -0.12564673 -0.27276924 -0.12564673 -0.27276924 -0.12564673 -0.27276924 -0.12564673
		 -0.27276924 -0.12564673 -0.27276924 -0.12564673 -0.27276924 -0.12564673 -0.27276924;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "742B8729-44EB-B47F-82FB-929F72AA55C7";
	setAttr ".uopa" yes;
	setAttr -s 258 ".uvtk";
	setAttr ".uvtk[28]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[29]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[30]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[31]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[32]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[33]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[34]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[35]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[36]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[37]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[38]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[39]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[40]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[41]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[42]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[43]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[44]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[45]" -type "float2" 0.12562788 0.084237307 ;
	setAttr ".uvtk[46]" -type "float2" 0.12562788 0.084237278 ;
	setAttr ".uvtk[47]" -type "float2" 0.12562788 0.084237278 ;
	setAttr ".uvtk[48]" -type "float2" 0.12562788 0.084237278 ;
	setAttr ".uvtk[49]" -type "float2" 0.12562788 0.084237278 ;
	setAttr ".uvtk[50]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[51]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[52]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[53]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[54]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[55]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[56]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[57]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[58]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[59]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[60]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[61]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[62]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[63]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[64]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[65]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[66]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[67]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[68]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[69]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[70]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[71]" -type "float2" 0.053808406 0.084237322 ;
	setAttr ".uvtk[72]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[73]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[74]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[75]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[76]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[77]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[78]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[79]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[80]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[81]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[82]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[83]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[84]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[85]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[86]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[87]" -type "float2" 0.082341336 0.28834313 ;
	setAttr ".uvtk[88]" -type "float2" 0.035772499 0.28834316 ;
	setAttr ".uvtk[89]" -type "float2" 0.035772499 0.28834316 ;
	setAttr ".uvtk[90]" -type "float2" 0.035772499 0.28834316 ;
	setAttr ".uvtk[91]" -type "float2" 0.035772499 0.28834316 ;
	setAttr ".uvtk[92]" -type "float2" 0.035772499 0.28834313 ;
	setAttr ".uvtk[93]" -type "float2" 0.035772499 0.28834313 ;
	setAttr ".uvtk[94]" -type "float2" 0.035772499 0.28834316 ;
	setAttr ".uvtk[95]" -type "float2" 0.035772499 0.2883431 ;
	setAttr ".uvtk[96]" -type "float2" 0.035772499 0.28834313 ;
	setAttr ".uvtk[97]" -type "float2" 0.035772499 0.28834313 ;
	setAttr ".uvtk[98]" -type "float2" 0.035772499 0.28834316 ;
	setAttr ".uvtk[99]" -type "float2" 0.035772499 0.28834316 ;
	setAttr ".uvtk[100]" -type "float2" 0.035772499 0.2883431 ;
	setAttr ".uvtk[101]" -type "float2" 0.035772499 0.28834316 ;
	setAttr ".uvtk[102]" -type "float2" 0.035772499 0.2883431 ;
	setAttr ".uvtk[103]" -type "float2" 0.035772499 0.2883431 ;
	setAttr ".uvtk[104]" -type "float2" 0.048265696 0.021666735 ;
	setAttr ".uvtk[105]" -type "float2" 0.048265696 0.021666735 ;
	setAttr ".uvtk[106]" -type "float2" 0.048265696 0.021666735 ;
	setAttr ".uvtk[107]" -type "float2" 0.048265636 0.021666735 ;
	setAttr ".uvtk[108]" -type "float2" 0.048265696 0.021666735 ;
	setAttr ".uvtk[109]" -type "float2" 0.048265696 0.021666735 ;
	setAttr ".uvtk[110]" -type "float2" 0.048265696 0.021666735 ;
	setAttr ".uvtk[111]" -type "float2" 0.048265636 0.021666735 ;
	setAttr ".uvtk[112]" -type "float2" 0.048265696 0.021666735 ;
	setAttr ".uvtk[113]" -type "float2" 0.048265636 0.021666735 ;
	setAttr ".uvtk[114]" -type "float2" 0.048265666 0.021666735 ;
	setAttr ".uvtk[115]" -type "float2" 0.048265696 0.021666735 ;
	setAttr ".uvtk[116]" -type "float2" 0.048265666 0.021666735 ;
	setAttr ".uvtk[117]" -type "float2" 0.048265696 0.021666735 ;
	setAttr ".uvtk[118]" -type "float2" 0.048265666 0.021666735 ;
	setAttr ".uvtk[119]" -type "float2" 0.048265666 0.021666735 ;
	setAttr ".uvtk[120]" -type "float2" 0.048265666 0.021666735 ;
	setAttr ".uvtk[121]" -type "float2" 0.048265666 0.021666735 ;
	setAttr ".uvtk[122]" -type "float2" 0.048265666 0.021666735 ;
	setAttr ".uvtk[123]" -type "float2" 0.048265666 0.021666735 ;
	setAttr ".uvtk[124]" -type "float2" 0.048265666 0.021666735 ;
	setAttr ".uvtk[125]" -type "float2" 0.33354536 0.02166675 ;
	setAttr ".uvtk[126]" -type "float2" 0.33354536 0.02166675 ;
	setAttr ".uvtk[127]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[128]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[129]" -type "float2" 0.33354536 0.02166675 ;
	setAttr ".uvtk[130]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[131]" -type "float2" 0.33354536 0.02166675 ;
	setAttr ".uvtk[132]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[133]" -type "float2" 0.33354536 0.02166675 ;
	setAttr ".uvtk[134]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[135]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[136]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[137]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[138]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[139]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[140]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[141]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[142]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[143]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[144]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[145]" -type "float2" 0.33354539 0.02166675 ;
	setAttr ".uvtk[146]" -type "float2" 0.047847778 0.30982354 ;
	setAttr ".uvtk[147]" -type "float2" 0.047847778 0.30982354 ;
	setAttr ".uvtk[148]" -type "float2" 0.047847778 0.30982351 ;
	setAttr ".uvtk[149]" -type "float2" 0.047847778 0.30982351 ;
	setAttr ".uvtk[150]" -type "float2" 0.047847778 0.30982354 ;
	setAttr ".uvtk[151]" -type "float2" 0.047847778 0.30982351 ;
	setAttr ".uvtk[152]" -type "float2" 0.047847778 0.30982354 ;
	setAttr ".uvtk[153]" -type "float2" 0.047847778 0.30982351 ;
	setAttr ".uvtk[154]" -type "float2" 0.047847778 0.30982354 ;
	setAttr ".uvtk[155]" -type "float2" 0.047847778 0.30982351 ;
	setAttr ".uvtk[156]" -type "float2" 0.047847778 0.30982354 ;
	setAttr ".uvtk[157]" -type "float2" 0.047847778 0.30982351 ;
	setAttr ".uvtk[158]" -type "float2" 0.047847778 0.30982354 ;
	setAttr ".uvtk[159]" -type "float2" 0.047847778 0.30982351 ;
	setAttr ".uvtk[160]" -type "float2" 0.09832298 0.30982357 ;
	setAttr ".uvtk[161]" -type "float2" 0.09832298 0.30982357 ;
	setAttr ".uvtk[162]" -type "float2" 0.09832298 0.30982348 ;
	setAttr ".uvtk[163]" -type "float2" 0.09832298 0.30982348 ;
	setAttr ".uvtk[164]" -type "float2" 0.09832298 0.30982357 ;
	setAttr ".uvtk[165]" -type "float2" 0.09832298 0.30982348 ;
	setAttr ".uvtk[166]" -type "float2" 0.09832304 0.30982357 ;
	setAttr ".uvtk[167]" -type "float2" 0.09832304 0.30982348 ;
	setAttr ".uvtk[168]" -type "float2" 0.09832304 0.30982357 ;
	setAttr ".uvtk[169]" -type "float2" 0.09832304 0.30982348 ;
	setAttr ".uvtk[170]" -type "float2" 0.09832298 0.30982357 ;
	setAttr ".uvtk[171]" -type "float2" 0.09832298 0.30982348 ;
	setAttr ".uvtk[172]" -type "float2" 0.09832298 0.30982357 ;
	setAttr ".uvtk[173]" -type "float2" 0.09832298 0.30982348 ;
	setAttr ".uvtk[226]" -type "float2" 0.091310456 0.026875192 ;
	setAttr ".uvtk[227]" -type "float2" 0.091310456 0.026875185 ;
	setAttr ".uvtk[228]" -type "float2" 0.091310456 0.026875185 ;
	setAttr ".uvtk[229]" -type "float2" 0.091310456 0.026875185 ;
	setAttr ".uvtk[230]" -type "float2" 0.091310397 0.026875185 ;
	setAttr ".uvtk[231]" -type "float2" 0.091310397 0.026875185 ;
	setAttr ".uvtk[232]" -type "float2" 0.091310456 0.026875187 ;
	setAttr ".uvtk[233]" -type "float2" 0.091310456 0.026875192 ;
	setAttr ".uvtk[234]" -type "float2" 0.091310397 0.026875185 ;
	setAttr ".uvtk[235]" -type "float2" 0.091310397 0.026875185 ;
	setAttr ".uvtk[236]" -type "float2" 0.091310397 0.026875189 ;
	setAttr ".uvtk[237]" -type "float2" 0.091310397 0.02687519 ;
	setAttr ".uvtk[238]" -type "float2" 0.091310456 0.0268752 ;
	setAttr ".uvtk[239]" -type "float2" 0.091310456 0.0268752 ;
	setAttr ".uvtk[240]" -type "float2" 0.091310397 0.026875189 ;
	setAttr ".uvtk[241]" -type "float2" 0.091310456 0.02687519 ;
	setAttr ".uvtk[242]" -type "float2" 0.091310456 0.0268752 ;
	setAttr ".uvtk[243]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[244]" -type "float2" 0.091310397 0.026875189 ;
	setAttr ".uvtk[245]" -type "float2" 0.091310456 0.026875192 ;
	setAttr ".uvtk[246]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[247]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[248]" -type "float2" 0.091310427 0.026875192 ;
	setAttr ".uvtk[249]" -type "float2" 0.091310397 0.026875192 ;
	setAttr ".uvtk[250]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[251]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[252]" -type "float2" 0.091310427 0.026875185 ;
	setAttr ".uvtk[253]" -type "float2" 0.091310427 0.026875185 ;
	setAttr ".uvtk[254]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[255]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[256]" -type "float2" 0.091310456 0.026875185 ;
	setAttr ".uvtk[257]" -type "float2" 0.091310427 0.026875185 ;
	setAttr ".uvtk[258]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[259]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[260]" -type "float2" 0.091310456 0.026875185 ;
	setAttr ".uvtk[261]" -type "float2" 0.091310427 0.026875185 ;
	setAttr ".uvtk[262]" -type "float2" 0.091310427 0.0268752 ;
	setAttr ".uvtk[263]" -type "float2" 0.091310397 0.0268752 ;
	setAttr ".uvtk[264]" -type "float2" 0.091310427 0.0268752 ;
	setAttr ".uvtk[265]" -type "float2" 0.091310427 0.0268752 ;
	setAttr ".uvtk[266]" -type "float2" 0.16917841 -0.0039961082 ;
	setAttr ".uvtk[267]" -type "float2" 0.16917841 -0.0039961082 ;
	setAttr ".uvtk[268]" -type "float2" 0.16917844 -0.0039961082 ;
	setAttr ".uvtk[269]" -type "float2" 0.16917844 -0.0039961082 ;
	setAttr ".uvtk[270]" -type "float2" 0.16917841 -0.0039961082 ;
	setAttr ".uvtk[271]" -type "float2" 0.16917844 -0.0039961082 ;
	setAttr ".uvtk[272]" -type "float2" 0.16917841 -0.0039961082 ;
	setAttr ".uvtk[273]" -type "float2" 0.16917844 -0.0039961082 ;
	setAttr ".uvtk[274]" -type "float2" 0.16917841 -0.0039961082 ;
	setAttr ".uvtk[275]" -type "float2" 0.16917844 -0.0039961082 ;
	setAttr ".uvtk[276]" -type "float2" 0.12744106 -0.0039960966 ;
	setAttr ".uvtk[277]" -type "float2" 0.12744106 -0.0039960966 ;
	setAttr ".uvtk[278]" -type "float2" 0.12744103 -0.0039960966 ;
	setAttr ".uvtk[279]" -type "float2" 0.12744103 -0.0039960966 ;
	setAttr ".uvtk[280]" -type "float2" 0.12744106 -0.0039960966 ;
	setAttr ".uvtk[281]" -type "float2" 0.12744103 -0.0039960966 ;
	setAttr ".uvtk[282]" -type "float2" 0.12744106 -0.0039960966 ;
	setAttr ".uvtk[283]" -type "float2" 0.12744103 -0.0039960966 ;
	setAttr ".uvtk[284]" -type "float2" 0.12744106 -0.0039960966 ;
	setAttr ".uvtk[285]" -type "float2" 0.12744103 -0.0039960966 ;
	setAttr ".uvtk[286]" -type "float2" 0.022610195 0.30982345 ;
	setAttr ".uvtk[287]" -type "float2" 0.022610195 0.30982345 ;
	setAttr ".uvtk[288]" -type "float2" 0.022610195 0.30982348 ;
	setAttr ".uvtk[289]" -type "float2" 0.022610195 0.30982348 ;
	setAttr ".uvtk[290]" -type "float2" 0.022610135 0.30982345 ;
	setAttr ".uvtk[291]" -type "float2" 0.022610135 0.30982348 ;
	setAttr ".uvtk[292]" -type "float2" 0.022610195 0.30982345 ;
	setAttr ".uvtk[293]" -type "float2" 0.022610195 0.30982348 ;
	setAttr ".uvtk[294]" -type "float2" 0.022610195 0.30982345 ;
	setAttr ".uvtk[295]" -type "float2" 0.022610195 0.30982348 ;
	setAttr ".uvtk[296]" -type "float2" 0.073085442 0.30982348 ;
	setAttr ".uvtk[297]" -type "float2" 0.073085442 0.30982348 ;
	setAttr ".uvtk[298]" -type "float2" 0.073085442 0.30982351 ;
	setAttr ".uvtk[299]" -type "float2" 0.073085442 0.30982351 ;
	setAttr ".uvtk[300]" -type "float2" 0.073085442 0.30982348 ;
	setAttr ".uvtk[301]" -type "float2" 0.073085442 0.30982351 ;
	setAttr ".uvtk[302]" -type "float2" 0.073085442 0.30982348 ;
	setAttr ".uvtk[303]" -type "float2" 0.073085442 0.30982351 ;
	setAttr ".uvtk[304]" -type "float2" 0.073085442 0.30982348 ;
	setAttr ".uvtk[305]" -type "float2" 0.073085442 0.30982351 ;
	setAttr ".uvtk[306]" -type "float2" 0.046700183 0.017197786 ;
	setAttr ".uvtk[307]" -type "float2" 0.046700183 0.017197786 ;
	setAttr ".uvtk[308]" -type "float2" 0.046700176 0.017197786 ;
	setAttr ".uvtk[309]" -type "float2" 0.046700176 0.017197786 ;
	setAttr ".uvtk[310]" -type "float2" 0.046700183 0.017197786 ;
	setAttr ".uvtk[311]" -type "float2" 0.046700176 0.017197786 ;
	setAttr ".uvtk[312]" -type "float2" 0.046700183 0.017197726 ;
	setAttr ".uvtk[313]" -type "float2" 0.046700176 0.017197726 ;
	setAttr ".uvtk[314]" -type "float2" 0.054962818 0.01719784 ;
	setAttr ".uvtk[315]" -type "float2" 0.054962818 0.0171979 ;
	setAttr ".uvtk[316]" -type "float2" 0.054962818 0.0171979 ;
	setAttr ".uvtk[317]" -type "float2" 0.054962818 0.01719784 ;
	setAttr ".uvtk[318]" -type "float2" 0.054962818 0.01719784 ;
	setAttr ".uvtk[319]" -type "float2" 0.054962818 0.01719784 ;
	setAttr ".uvtk[320]" -type "float2" 0.054962818 0.01719784 ;
	setAttr ".uvtk[321]" -type "float2" 0.054962818 0.01719784 ;
	setAttr ".uvtk[322]" -type "float2" 0.16058604 0.044766106 ;
	setAttr ".uvtk[323]" -type "float2" 0.16058604 0.044766106 ;
	setAttr ".uvtk[324]" -type "float2" 0.16058606 0.044766106 ;
	setAttr ".uvtk[325]" -type "float2" 0.16058606 0.044766106 ;
	setAttr ".uvtk[326]" -type "float2" 0.16058604 0.044766106 ;
	setAttr ".uvtk[327]" -type "float2" 0.16058606 0.044766106 ;
	setAttr ".uvtk[328]" -type "float2" 0.16058604 0.044766106 ;
	setAttr ".uvtk[329]" -type "float2" 0.16058606 0.044766106 ;
	setAttr ".uvtk[330]" -type "float2" 0.11340465 0.044766109 ;
	setAttr ".uvtk[331]" -type "float2" 0.11340465 0.044766109 ;
	setAttr ".uvtk[332]" -type "float2" 0.11340465 0.044766109 ;
	setAttr ".uvtk[333]" -type "float2" 0.11340465 0.044766109 ;
	setAttr ".uvtk[334]" -type "float2" 0.11340465 0.044766109 ;
	setAttr ".uvtk[335]" -type "float2" 0.11340465 0.044766109 ;
	setAttr ".uvtk[336]" -type "float2" 0.11340465 0.044766109 ;
	setAttr ".uvtk[337]" -type "float2" 0.11340465 0.044766109 ;
createNode polyFlipUV -n "polyFlipUV4";
	rename -uid "4DE05D1B-492B-3FD7-7FE1-FB90E8A99794";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[122:124]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.036085460316610085 0 1;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "057B93CC-4087-CA8D-5C9E-D3B40E9FE128";
	setAttr ".uopa" yes;
	setAttr -s 202 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.38067228 -0.23492062 ;
	setAttr ".uvtk[1]" -type "float2" 0.38067228 -0.23492068 ;
	setAttr ".uvtk[2]" -type "float2" 0.38067225 -0.23492068 ;
	setAttr ".uvtk[3]" -type "float2" 0.38067225 -0.23492062 ;
	setAttr ".uvtk[4]" -type "float2" 0.38067228 -0.23492062 ;
	setAttr ".uvtk[5]" -type "float2" 0.38067225 -0.23492062 ;
	setAttr ".uvtk[6]" -type "float2" 0.38067228 -0.23492068 ;
	setAttr ".uvtk[7]" -type "float2" 0.38067225 -0.23492068 ;
	setAttr ".uvtk[8]" -type "float2" 0.38067228 -0.23492068 ;
	setAttr ".uvtk[9]" -type "float2" 0.38067225 -0.23492068 ;
	setAttr ".uvtk[10]" -type "float2" 0.38067228 -0.23492068 ;
	setAttr ".uvtk[11]" -type "float2" 0.38067225 -0.23492068 ;
	setAttr ".uvtk[12]" -type "float2" 0.38067228 -0.23492068 ;
	setAttr ".uvtk[13]" -type "float2" 0.38067225 -0.23492068 ;
	setAttr ".uvtk[14]" -type "float2" 0.3387534 -0.23492065 ;
	setAttr ".uvtk[15]" -type "float2" 0.3387534 -0.23492065 ;
	setAttr ".uvtk[16]" -type "float2" 0.33875343 -0.23492065 ;
	setAttr ".uvtk[17]" -type "float2" 0.33875343 -0.23492065 ;
	setAttr ".uvtk[18]" -type "float2" 0.3387534 -0.23492065 ;
	setAttr ".uvtk[19]" -type "float2" 0.33875343 -0.23492065 ;
	setAttr ".uvtk[20]" -type "float2" 0.3387534 -0.23492071 ;
	setAttr ".uvtk[21]" -type "float2" 0.33875343 -0.23492071 ;
	setAttr ".uvtk[22]" -type "float2" 0.3387534 -0.23492065 ;
	setAttr ".uvtk[23]" -type "float2" 0.33875343 -0.23492065 ;
	setAttr ".uvtk[24]" -type "float2" 0.3387534 -0.23492065 ;
	setAttr ".uvtk[25]" -type "float2" 0.33875343 -0.23492065 ;
	setAttr ".uvtk[26]" -type "float2" 0.3387534 -0.23492065 ;
	setAttr ".uvtk[27]" -type "float2" 0.33875343 -0.23492065 ;
	setAttr ".uvtk[72]" -type "float2" 0.14999999 -0.14999998 ;
	setAttr ".uvtk[73]" -type "float2" 0.14999999 -0.14999998 ;
	setAttr ".uvtk[74]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[75]" -type "float2" 0.14999993 -0.14999998 ;
	setAttr ".uvtk[76]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[77]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[78]" -type "float2" 0.14999999 -0.14999998 ;
	setAttr ".uvtk[79]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[80]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[81]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[82]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[83]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[84]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[85]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[86]" -type "float2" 0.14999999 -0.14999992 ;
	setAttr ".uvtk[87]" -type "float2" 0.14999993 -0.14999992 ;
	setAttr ".uvtk[88]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[89]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[90]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[91]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[92]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[93]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[94]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[95]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[96]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[97]" -type "float2" 0.14999999 -0.14999998 ;
	setAttr ".uvtk[98]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[99]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[100]" -type "float2" 0.14999993 -0.15000004 ;
	setAttr ".uvtk[101]" -type "float2" 0.14999999 -0.15000004 ;
	setAttr ".uvtk[102]" -type "float2" 0.14999993 -0.14999992 ;
	setAttr ".uvtk[103]" -type "float2" 0.14999999 -0.14999992 ;
	setAttr ".uvtk[104]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[105]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[106]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[107]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[108]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[109]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[110]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[111]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[112]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[113]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[114]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[115]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[116]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[117]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[118]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[119]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[120]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[121]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[122]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[123]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[124]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[125]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[126]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[127]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[128]" -type "float2" -0.29999998 0.10000002 ;
	setAttr ".uvtk[129]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[130]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[131]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[132]" -type "float2" -0.29999998 0.10000002 ;
	setAttr ".uvtk[133]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[134]" -type "float2" -0.29999998 0.10000002 ;
	setAttr ".uvtk[135]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[136]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[137]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[138]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[139]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[140]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[141]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[142]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[143]" -type "float2" -0.29999998 0.10000002 ;
	setAttr ".uvtk[144]" -type "float2" -0.29999998 0.099999994 ;
	setAttr ".uvtk[145]" -type "float2" -0.29999998 0.099999964 ;
	setAttr ".uvtk[146]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[147]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[148]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[149]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[150]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[151]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[152]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[153]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[154]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[155]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[156]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[157]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[158]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[159]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[160]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[161]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[162]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[163]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[164]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[165]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[166]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[167]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[168]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[169]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[170]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[171]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[172]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[173]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[266]" -type "float2" -0.049999982 -1.4901161e-008 ;
	setAttr ".uvtk[267]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[268]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[269]" -type "float2" -0.049999982 -1.4901161e-008 ;
	setAttr ".uvtk[270]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[271]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[272]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[273]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[274]" -type "float2" -0.049999982 4.4703484e-008 ;
	setAttr ".uvtk[275]" -type "float2" -0.049999982 4.4703484e-008 ;
	setAttr ".uvtk[276]" -type "float2" -0.049999982 4.4703484e-008 ;
	setAttr ".uvtk[277]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[278]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[279]" -type "float2" -0.049999982 4.4703484e-008 ;
	setAttr ".uvtk[280]" -type "float2" -0.049999982 -1.4901161e-008 ;
	setAttr ".uvtk[281]" -type "float2" -0.049999982 -1.4901161e-008 ;
	setAttr ".uvtk[282]" -type "float2" -0.049999982 -1.4901161e-008 ;
	setAttr ".uvtk[283]" -type "float2" -0.049999982 -1.4901161e-008 ;
	setAttr ".uvtk[284]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[285]" -type "float2" -0.049999982 -7.4505806e-008 ;
	setAttr ".uvtk[286]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[287]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[288]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[289]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[290]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[291]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[292]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[293]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[294]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[295]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[296]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[297]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[298]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[299]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[300]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[301]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[302]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[303]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[304]" -type "float2" -0.24999994 -0.20000005 ;
	setAttr ".uvtk[305]" -type "float2" -0.24999994 -0.19999991 ;
	setAttr ".uvtk[306]" -type "float2" 0.60000002 -0.24999997 ;
	setAttr ".uvtk[307]" -type "float2" 0.60000002 -0.24999997 ;
	setAttr ".uvtk[308]" -type "float2" 0.60000002 -0.24999997 ;
	setAttr ".uvtk[309]" -type "float2" 0.60000002 -0.24999997 ;
	setAttr ".uvtk[310]" -type "float2" 0.60000002 -0.24999991 ;
	setAttr ".uvtk[311]" -type "float2" 0.60000002 -0.24999991 ;
	setAttr ".uvtk[312]" -type "float2" 0.60000002 -0.24999997 ;
	setAttr ".uvtk[313]" -type "float2" 0.60000002 -0.24999997 ;
	setAttr ".uvtk[314]" -type "float2" 0.55000001 -0.25000003 ;
	setAttr ".uvtk[315]" -type "float2" 0.55000001 -0.24999997 ;
	setAttr ".uvtk[316]" -type "float2" 0.55000001 -0.24999997 ;
	setAttr ".uvtk[317]" -type "float2" 0.55000001 -0.24999997 ;
	setAttr ".uvtk[318]" -type "float2" 0.55000001 -0.25000003 ;
	setAttr ".uvtk[319]" -type "float2" 0.55000001 -0.25000003 ;
	setAttr ".uvtk[320]" -type "float2" 0.55000001 -0.25000003 ;
	setAttr ".uvtk[321]" -type "float2" 0.55000001 -0.25000003 ;
	setAttr ".uvtk[322]" -type "float2" 0.40000001 -0.050000034 ;
	setAttr ".uvtk[323]" -type "float2" 0.40000001 -0.050000034 ;
	setAttr ".uvtk[324]" -type "float2" 0.39999998 -0.050000034 ;
	setAttr ".uvtk[325]" -type "float2" 0.39999998 -0.050000034 ;
	setAttr ".uvtk[326]" -type "float2" 0.40000001 -0.050000034 ;
	setAttr ".uvtk[327]" -type "float2" 0.39999998 -0.050000034 ;
	setAttr ".uvtk[328]" -type "float2" 0.40000001 -0.050000034 ;
	setAttr ".uvtk[329]" -type "float2" 0.39999998 -0.050000034 ;
	setAttr ".uvtk[330]" -type "float2" 0.39999998 -0.050000034 ;
	setAttr ".uvtk[331]" -type "float2" 0.39999998 -0.050000034 ;
	setAttr ".uvtk[332]" -type "float2" 0.40000001 -0.050000034 ;
	setAttr ".uvtk[333]" -type "float2" 0.40000001 -0.050000034 ;
	setAttr ".uvtk[334]" -type "float2" 0.39999998 -0.050000034 ;
	setAttr ".uvtk[335]" -type "float2" 0.40000001 -0.050000034 ;
	setAttr ".uvtk[336]" -type "float2" 0.39999998 -0.050000034 ;
	setAttr ".uvtk[337]" -type "float2" 0.40000001 -0.050000034 ;
createNode polyUnite -n "polyUnite5";
	rename -uid "00CE9BE2-429C-9E80-D38B-2CBF9A1B3221";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId26";
	rename -uid "084B482D-4373-7684-D5C2-D6A9828E99C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "20A40434-4602-5BF3-0522-DAB3EAD390BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "CF3CBEE7-47D6-76D8-92CD-F38C0B00FB14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "056695D2-4D6E-062A-4219-30B7F303E7D2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId29";
	rename -uid "C497F70D-4296-5DFF-2513-A989D5F5AB62";
	setAttr ".ihi" 0;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "517529AB-4A65-5010-8848-6C99474B9C07";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:119]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 5.7955107688903809 5.7955107688903809 5.7955107688903809 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "1A30A428-41C4-3C2D-7CDF-FB87542564FD";
	setAttr ".uopa" yes;
	setAttr -s 180 ".uvtk[0:179]" -type "float2" -0.12436632 -0.0023960411
		 -0.12436632 -0.0023960411 -0.12436632 -0.002396056 -0.12436632 -0.0023960411 -0.12436632
		 -0.0023960411 -0.12436632 -0.002396056 -0.12436632 -0.0023960411 -0.12436632 -0.0023960411
		 -0.12436632 -0.0023960411 -0.12436632 -0.0023960485 -0.12436632 -0.0023960485 -0.12436632
		 -0.0023960448 -0.12436632 -0.0023960485 -0.12436632 -0.0023960457 -0.13591978 -0.30755723
		 -0.13591978 -0.30755723 -0.13591978 -0.30755723 -0.13591978 -0.30755723 -0.13591978
		 -0.30755723 -0.13591978 -0.30755723 -0.13591978 -0.30755723 -0.13591978 -0.30755723
		 -0.13591978 -0.30755723 -0.13591978 -0.30755723 -0.13591978 -0.30755723 -0.13591978
		 -0.30755723 -0.13591978 -0.30755723 -0.13591978 -0.30755723 0.19439165 -0.02865399
		 0.19439165 -0.02865399 0.19439165 -0.02865399 0.19439165 -0.02865399 0.19439165 -0.02865399
		 0.19439165 -0.02865399 0.19439165 -0.02865402 0.19439165 -0.02865402 0.19439165 -0.02865402
		 0.19439165 -0.02865402 0.19439165 -0.02865402 0.19439165 -0.02865402 0.19439165 -0.02865402
		 0.19439165 -0.02865402 0.42470315 -0.028653946 0.42470315 -0.028653946 0.42470315
		 -0.028653946 0.42470315 -0.028653946 0.42470315 -0.028653976 0.42470315 -0.028653976
		 0.42470315 -0.028653946 0.42470315 -0.028653946 0.42470315 -0.028653976 0.42470315
		 -0.028653976 0.42470315 -0.028653976 0.42470315 -0.028653976 0.42470315 -0.028653976
		 0.42470315 -0.028653976 0.1635533 0.16074523 0.1635533 0.16074523 0.1635533 0.16074523
		 0.1635533 0.16074523 0.1635533 0.16074523 0.1635533 0.16074523 0.1635533 0.16074523
		 0.1635533 0.16074523 0.1635533 0.16074523 0.1635533 0.16074523 0.1635533 0.16074523
		 0.1635533 0.16074523 0.1635533 0.16074523 0.1635533 0.16074523 0.1635533 0.16074523
		 0.1635533 0.16074523 0.1635533 0.16074523 0.1635533 0.16074523 0.1635533 0.16074523
		 0.1635533 0.16074523 0.1635533 0.16074523 0.011874829 0.012055588 0.011874829 0.012055603
		 0.011874815 0.012055603 0.011874829 0.012055603 0.011874829 0.012055603 0.011874815
		 0.012055603 0.011874829 0.012055588 0.011874815 0.012055603 0.011874829 0.012055595
		 0.011874815 0.012055603 0.011874829 0.012055595 0.011874815 0.012055603 0.011874829
		 0.012055595 0.011874818 0.012055603 0.011874815 0.012055595 0.011874816 0.012055603
		 0.011874815 0.012055594 0.011874816 0.012055603 0.011874815 0.012055595 0.011874816
		 0.012055588 0.011874815 0.012055595 0.044667233 0.23184203 0.044667233 0.23184203
		 0.044667233 0.23184203 0.044667233 0.23184203 0.044667233 0.23184203 0.044667233
		 0.23184203 0.044667233 0.23184203 0.044667233 0.23184203 0.044667233 0.23184203 0.044667233
		 0.23184203 0.044667233 0.23184203 0.044667233 0.23184203 0.044667233 0.23184203 0.044667233
		 0.23184203 0.044667233 0.23184203 0.044667233 0.23184203 0.044667233 0.23184203 0.044667233
		 0.23184203 0.044667233 0.23184203 0.044667233 0.23184203 0.044667233 0.23184203 -0.36836576
		 0.012055581 -0.36836576 0.012055567 -0.36836576 0.012055581 -0.36836576 0.012055567
		 -0.36836576 0.012055581 -0.36836576 0.012055567 -0.36836576 0.012055581 -0.36836576
		 0.012055567 -0.36836576 0.012055581 -0.36836576 0.012055567 -0.36836576 0.012055581
		 -0.36836576 0.012055567 -0.36836576 0.01205558 -0.36836576 0.012055567 -0.36836576
		 0.012055581 -0.36836576 0.012055581 -0.36836576 0.012055581 -0.36836576 0.012055581
		 -0.36836576 0.012055581 -0.36836576 0.012055581 -0.36836576 0.012055581 0.30233288
		 0.0098428428 0.30233288 0.0098428428 0.30233288 0.0098428428 0.30233288 0.0098428428
		 0.30233288 0.0098428428 0.30233288 0.0098428428 0.30233288 0.0098428428 0.30233288
		 0.0098428428 0.30233288 0.0098428428 0.30233288 0.0098428428 0.58860165 0.081675269
		 0.58860165 0.081675269 0.58860165 0.081675269 0.58860165 0.081675269 0.58860159 0.081675269
		 0.58860159 0.081675269 0.58860165 0.081675269 0.58860165 0.081675269 0.58860165 0.081675269
		 0.58860165 0.081675269 0.1623283 -0.29531831 0.1623283 -0.29531831 0.16232827 -0.29531831
		 0.16232827 -0.29531831 0.1623283 -0.29531831 0.1623283 -0.29531831 0.1623283 -0.29531831
		 0.1623283 -0.29531831 0.1623283 -0.29531831 0.16232832 -0.29531831 0.13624986 0.0046816198
		 0.13624986 0.0046816198 0.13624986 0.0046816198 0.13624986 0.0046816198 0.13624986
		 0.0046816198 0.13624986 0.0046816198 0.13624986 0.0046816198 0.13624986 0.0046816198
		 0.13624986 0.0046816198 0.13624986 0.0046816198;
createNode polyFlipUV -n "polyFlipUV5";
	rename -uid "189CC65B-4C1B-1AD4-3504-E8B7A339481D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[12:15]" "f[72:75]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "92109473-44CD-C0B7-32A1-D581F4A81889";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[150]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[151]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[152]" -type "float2" -0.19999999 -0.30000001 ;
	setAttr ".uvtk[153]" -type "float2" -0.19999999 -0.30000001 ;
	setAttr ".uvtk[154]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[155]" -type "float2" -0.19999999 -0.30000001 ;
	setAttr ".uvtk[156]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[157]" -type "float2" -0.19999999 -0.30000001 ;
	setAttr ".uvtk[158]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[159]" -type "float2" -0.19999999 -0.30000001 ;
	setAttr ".uvtk[170]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[171]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[172]" -type "float2" -0.19999999 -0.30000001 ;
	setAttr ".uvtk[173]" -type "float2" -0.19999999 -0.30000001 ;
	setAttr ".uvtk[174]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[175]" -type "float2" -0.19999999 -0.30000001 ;
	setAttr ".uvtk[176]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[177]" -type "float2" -0.19999999 -0.30000001 ;
	setAttr ".uvtk[178]" -type "float2" -0.19999999 -0.29999998 ;
	setAttr ".uvtk[179]" -type "float2" -0.19999999 -0.30000001 ;
createNode polyFlipUV -n "polyFlipUV6";
	rename -uid "B2DA2796-44B6-3995-F5B6-A0957A2AFF70";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[60:61]" "f[66:71]" "f[76:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "341824CC-4B48-A106-F2AB-BFA93B438EEC";
	setAttr ".uopa" yes;
	setAttr -s 180 ".uvtk[0:179]" -type "float2" -0.19142266 0.27261144 -0.21788569
		 0.25699359 -0.12329191 -0.1993302 -0.035371739 -0.14744212 -0.23888694 0.24459931
		 -0.19306542 -0.24050876 -0.16208822 0.28992397 0.062088143 -0.089923799 -0.13275361
		 0.30723646 0.159548 -0.032405607 -0.1062903 0.32285431 0.24746795 0.019482501 -0.085289314
		 0.33524862 0.31724161 0.060660988 -0.1062903 0.32285431 -0.13275361 0.30723646 0.159548
		 -0.0324056 0.24746783 0.019482449 -0.16208804 0.28992397 0.062088024 -0.089923874
		 -0.085289076 0.33524868 0.31724161 0.060660973 -0.19142266 0.27261144 -0.035371739
		 -0.14744212 -0.21788569 0.25699362 -0.12329191 -0.1993302 -0.23888694 0.24459925
		 -0.19306542 -0.24050876 -0.23275344 -0.042763516 -0.20629047 -0.027145837 0.14746793
		 -0.3305175 0.059547734 -0.38240567 -0.18528919 -0.014751349 0.2172416 -0.28933904
		 -0.26208824 -0.060075983 -0.037911732 -0.43992385 -0.29142272 -0.07738854 -0.13537177
		 -0.49744219 -0.31788588 -0.093006387 -0.22329171 -0.54933012 -0.33888716 -0.10540067
		 -0.2930654 -0.5905087 -0.31788605 -0.093006477 -0.2914229 -0.077388629 -0.13537177
		 -0.49744216 -0.22329195 -0.54933023 -0.26208806 -0.060075924 -0.037911732 -0.43992379
		 -0.33888733 -0.10540079 -0.29306549 -0.59050888 -0.23275344 -0.042763576 0.059547972
		 -0.38240561 -0.20629047 -0.027145837 0.14746793 -0.3305175 -0.18528919 -0.014751349
		 0.2172416 -0.28933904 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999
		 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979
		 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999
		 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979
		 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999
		 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979
		 -0.19999999 -0.099999979 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001
		 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001
		 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001
		 0.60000002 0.049999993 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001
		 0.60000002 0.049999993 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001
		 0.60000002 0.049999993 0.60000002 0.050000001 0.60000002 -0.19999999 -0.099999979
		 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999
		 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979
		 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999
		 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979
		 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 -0.19999999
		 -0.099999979 -0.19999999 -0.099999979 -0.19999999 -0.099999979 0.050000001 0.60000002
		 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001
		 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001
		 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001 0.60000002 0.050000001
		 0.60000002 0.049999997 0.60000002 0.050000001 0.60000002 0.049999997 0.60000002 0.050000001
		 0.60000002 0.049999997 0.60000002 0.050000001 0.60000002 0.049999997 0.60000002 0.049999997
		 0.60000002 -0.27713266 -0.1721642 -0.28797796 -0.1721642 -0.26005831 -0.3278358 -0.22402644
		 -0.3278358 -0.30000001 -0.1721642 -0.30000001 -0.3278358 -0.31202209 -0.1721642 -0.33994171
		 -0.3278358 -0.32286739 -0.1721642 -0.37597358 -0.3278358 -0.32286745 -0.1721642 -0.31202212
		 -0.1721642 -0.33994171 -0.3278358 -0.37597358 -0.3278358 -0.30000013 -0.1721642 -0.30000013
		 -0.3278358 -0.28797796 -0.1721642 -0.26005843 -0.3278358 -0.27713272 -0.1721642 -0.2240265
		 -0.3278358 -0.27713266 -0.1721642 -0.28797796 -0.1721642 -0.26005843 -0.3278358 -0.2240265
		 -0.3278358 -0.30000001 -0.1721642 -0.30000001 -0.3278358 -0.31202209 -0.1721642 -0.33994171
		 -0.3278358 -0.32286745 -0.1721642 -0.37597358 -0.3278358 -0.32286745 -0.1721642 -0.31202212
		 -0.1721642 -0.33994171 -0.3278358 -0.37597358 -0.3278358 -0.30000013 -0.1721642 -0.30000013
		 -0.3278358 -0.28797808 -0.1721642 -0.26005843 -0.3278358 -0.27713272 -0.1721642 -0.2240265
		 -0.3278358;
createNode phong -n "Body";
	rename -uid "7EF4E31C-4C6B-028B-3F06-49AA07937390";
createNode shadingEngine -n "phong1SG";
	rename -uid "E4CF2A3A-4920-EF16-851B-57921C270241";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "41099B02-4652-5E65-99AF-4198074C2AE0";
createNode file -n "file1";
	rename -uid "465C1444-478D-B8FC-25FA-A8A879DBF3D2";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Desktop/SP2 OBJ/SP OBJ//images/SSBody.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "D43E3D85-4C7E-4042-FE01-F9ADF2CA7FCD";
createNode renderSetup -n "renderSetup";
	rename -uid "E020A272-4ED8-CDEC-BD63-8FA7CE19CAD7";
createNode phong -n "Bottom";
	rename -uid "77F2F17F-4DFF-2D51-8C62-8994289A10AE";
createNode shadingEngine -n "phong2SG";
	rename -uid "E91C07DA-41E6-D040-5D61-68BC7603032B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "8CF62118-4E50-19FF-5C7B-258E3FC6D1B1";
createNode file -n "file2";
	rename -uid "1E8967C9-4CC0-AE75-15C1-FABEF3B897C4";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Desktop/SP2 OBJ/SP OBJ//images/SSBottom.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "81B3B682-4DD6-5C03-C724-20AAB6C0CBFB";
createNode phong -n "Mid";
	rename -uid "13E88537-4FC2-57C4-21A4-6E91C8787911";
createNode shadingEngine -n "phong3SG";
	rename -uid "E9015037-42AD-4334-521D-FE9DC2E9DF49";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "1652D583-47F9-3F87-9BFC-229D1A7633AE";
createNode file -n "file3";
	rename -uid "4D5D82E7-45C4-5547-A0E7-1794C6F3A93F";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Desktop/SP2 OBJ/SP OBJ//images/SSMid.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "6A199456-48A3-3758-01BC-2A8B2F4988F6";
createNode phong -n "Top";
	rename -uid "D99EF228-453C-1906-FA0E-25B3D3913845";
createNode shadingEngine -n "phong4SG";
	rename -uid "607A1355-4DBF-4DF4-0517-1E851E0C7BF2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "15EFA055-458D-3473-8BDD-B5B28341CCC3";
createNode file -n "file4";
	rename -uid "9AE3F33E-49FD-0DA2-F1D3-CEB647F4CC66";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Desktop/SP2 OBJ/SP OBJ//images/SSTop.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "E2C69072-40B2-C4CB-6B9D-DB86891231FD";
createNode polyTriangulate -n "polyTriangulate1";
	rename -uid "0A571E1C-48BD-7012-1320-EE89B2B161D0";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate2";
	rename -uid "E687826E-40E9-5AFE-D5D3-89899D2EB367";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate3";
	rename -uid "92FA00A8-46CA-9307-4C3B-E2AF6B6E75F8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate4";
	rename -uid "397974DA-4EEB-8F63-FB7C-95A16367F8F7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "11417667-4FDC-1F6C-1C29-858996BD8BC2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -187.24011505802096 -63.289334959227816 ;
	setAttr ".tgi[0].vh" -type "double2" -75.087341736794002 191.66665905051795 ;
	setAttr -s 17 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -91.428573608398437;
	setAttr ".tgi[0].ni[0].y" 97.142860412597656;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" -71.428573608398438;
	setAttr ".tgi[0].ni[1].y" 251.42857360839844;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 235.71427917480469;
	setAttr ".tgi[0].ni[2].y" 228.57142639160156;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -71.428573608398438;
	setAttr ".tgi[0].ni[3].y" 251.42857360839844;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -685.71429443359375;
	setAttr ".tgi[0].ni[4].y" 228.57142639160156;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -378.57144165039062;
	setAttr ".tgi[0].ni[5].y" 251.42857360839844;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 235.71427917480469;
	setAttr ".tgi[0].ni[6].y" 228.57142639160156;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -685.71429443359375;
	setAttr ".tgi[0].ni[7].y" 228.57142639160156;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -378.57144165039062;
	setAttr ".tgi[0].ni[8].y" 251.42857360839844;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" -378.57144165039062;
	setAttr ".tgi[0].ni[9].y" 251.42857360839844;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 235.71427917480469;
	setAttr ".tgi[0].ni[10].y" 228.57142639160156;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" -71.428573608398438;
	setAttr ".tgi[0].ni[11].y" 251.42857360839844;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" -685.71429443359375;
	setAttr ".tgi[0].ni[12].y" 228.57142639160156;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" -71.428573608398438;
	setAttr ".tgi[0].ni[13].y" 251.42857360839844;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 235.71427917480469;
	setAttr ".tgi[0].ni[14].y" 228.57142639160156;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" -685.71429443359375;
	setAttr ".tgi[0].ni[15].y" 228.57142639160156;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" -378.57144165039062;
	setAttr ".tgi[0].ni[16].y" 251.42857360839844;
	setAttr ".tgi[0].ni[16].nvs" 1923;
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 26 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 26 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId10.id" "pTorusShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape1.iog.og[0].gco";
connectAttr "groupParts5.og" "pTorusShape1.i";
connectAttr "groupId11.id" "pTorusShape1.ciog.cog[0].cgid";
connectAttr "groupId15.id" "pTorusShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape2.iog.og[0].gco";
connectAttr "groupParts8.og" "pTorusShape2.i";
connectAttr "groupId16.id" "pTorusShape2.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pTorusShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape3.iog.og[0].gco";
connectAttr "groupParts2.og" "pTorusShape3.i";
connectAttr "groupId6.id" "pTorusShape3.ciog.cog[0].cgid";
connectAttr "groupId8.id" "pCylinderShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupParts4.og" "pCylinderShape2.i";
connectAttr "groupId9.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "groupId17.id" "pCylinderShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape3.iog.og[0].gco";
connectAttr "groupParts9.og" "pCylinderShape3.i";
connectAttr "groupId18.id" "pCylinderShape3.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCylinderShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape4.iog.og[0].gco";
connectAttr "groupId4.id" "pCylinderShape4.ciog.cog[0].cgid";
connectAttr "groupId12.id" "pCylinderShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape5.iog.og[0].gco";
connectAttr "groupParts6.og" "pCylinderShape5.i";
connectAttr "groupId13.id" "pCylinderShape5.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCylinderShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape6.iog.og[0].gco";
connectAttr "groupParts1.og" "pCylinderShape6.i";
connectAttr "groupId2.id" "pCylinderShape6.ciog.cog[0].cgid";
connectAttr "groupId19.id" "pCylinderShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape7.iog.og[0].gco";
connectAttr "groupParts10.og" "pCylinderShape7.i";
connectAttr "groupId20.id" "pCylinderShape7.ciog.cog[0].cgid";
connectAttr "groupId28.id" "pCylinderShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape8.iog.og[0].gco";
connectAttr "groupParts16.og" "pCylinderShape8.i";
connectAttr "groupId29.id" "pCylinderShape8.ciog.cog[0].cgid";
connectAttr "groupId26.id" "pCylinderShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape9.iog.og[0].gco";
connectAttr "groupId27.id" "pCylinderShape9.ciog.cog[0].cgid";
connectAttr "polyTriangulate2.out" "pCylinder10Shape.i";
connectAttr "polyTweakUV7.uvtk[0]" "pCylinder10Shape.uvst[0].uvtw";
connectAttr "polyTriangulate1.out" "pCylinder11Shape.i";
connectAttr "polyTweakUV5.uvtk[0]" "pCylinder11Shape.uvst[0].uvtw";
connectAttr "groupParts12.og" "polySurfaceShape1.i";
connectAttr "groupId22.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape2.i";
connectAttr "groupId23.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape3.i";
connectAttr "groupId24.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "polyTweakUV2.out" "pTorus4Shape.i";
connectAttr "groupId21.id" "pTorus4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorus4Shape.iog.og[0].gco";
connectAttr "polyTweakUV2.uvtk[0]" "pTorus4Shape.uvst[0].uvtw";
connectAttr "polyTriangulate4.out" "polySurface1Shape.i";
connectAttr "polyTriangulate3.out" "pCylinder12Shape.i";
connectAttr "polyTweakUV10.uvtk[0]" "pCylinder12Shape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pCylinderShape6.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape4.o" "polyUnite1.ip[1]";
connectAttr "pTorusShape3.o" "polyUnite1.ip[2]";
connectAttr "pCylinderShape6.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape4.wm" "polyUnite1.im[1]";
connectAttr "pTorusShape3.wm" "polyUnite1.im[2]";
connectAttr "polyCylinder5.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyTorus3.out" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "pCylinderShape2.o" "polyUnite2.ip[0]";
connectAttr "pTorusShape1.o" "polyUnite2.ip[1]";
connectAttr "pCylinderShape5.o" "polyUnite2.ip[2]";
connectAttr "pCylinderShape2.wm" "polyUnite2.im[0]";
connectAttr "pTorusShape1.wm" "polyUnite2.im[1]";
connectAttr "pCylinderShape5.wm" "polyUnite2.im[2]";
connectAttr "polyCylinder2.out" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "polyTorus1.out" "groupParts5.ig";
connectAttr "groupId10.id" "groupParts5.gi";
connectAttr "polyCylinder4.out" "groupParts6.ig";
connectAttr "groupId12.id" "groupParts6.gi";
connectAttr "pTorusShape2.o" "polyUnite3.ip[0]";
connectAttr "pCylinderShape3.o" "polyUnite3.ip[1]";
connectAttr "pCylinderShape7.o" "polyUnite3.ip[2]";
connectAttr "pTorusShape2.wm" "polyUnite3.im[0]";
connectAttr "pCylinderShape3.wm" "polyUnite3.im[1]";
connectAttr "pCylinderShape7.wm" "polyUnite3.im[2]";
connectAttr "polyTorus2.out" "groupParts8.ig";
connectAttr "groupId15.id" "groupParts8.gi";
connectAttr "polyCylinder3.out" "groupParts9.ig";
connectAttr "groupId17.id" "groupParts9.gi";
connectAttr "polyCylinder6.out" "groupParts10.ig";
connectAttr "groupId19.id" "groupParts10.gi";
connectAttr "polyUnite3.out" "groupParts11.ig";
connectAttr "groupId21.id" "groupParts11.gi";
connectAttr "groupParts11.og" "polyAutoProj1.ip";
connectAttr "pTorus4Shape.wm" "polyAutoProj1.mp";
connectAttr "polyUnite2.out" "polyAutoProj2.ip";
connectAttr "pCylinder11Shape.wm" "polyAutoProj2.mp";
connectAttr "polyUnite1.out" "polyAutoProj3.ip";
connectAttr "pCylinder10Shape.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyAutoProj2.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polyAutoProj3.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent2.og" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyFlipUV1.ip";
connectAttr "pTorus4Shape.wm" "polyFlipUV1.mp";
connectAttr "polyFlipUV1.out" "polyTweakUV2.ip";
connectAttr "pTorus4Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts12.ig";
connectAttr "groupId22.id" "groupParts12.gi";
connectAttr "polySeparate1.out[1]" "groupParts13.ig";
connectAttr "groupId23.id" "groupParts13.gi";
connectAttr "polySeparate1.out[2]" "groupParts14.ig";
connectAttr "groupId24.id" "groupParts14.gi";
connectAttr "polySurfaceShape1.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape2.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape3.o" "polyUnite4.ip[2]";
connectAttr "polySurfaceShape1.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape2.wm" "polyUnite4.im[1]";
connectAttr "polySurfaceShape3.wm" "polyUnite4.im[2]";
connectAttr "deleteComponent4.og" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyFlipUV2.ip";
connectAttr "pCylinder11Shape.wm" "polyFlipUV2.mp";
connectAttr "polyFlipUV2.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyFlipUV3.ip";
connectAttr "pCylinder11Shape.wm" "polyFlipUV3.mp";
connectAttr "polyFlipUV3.out" "polyTweakUV5.ip";
connectAttr "deleteComponent6.og" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyFlipUV4.ip";
connectAttr "pCylinder10Shape.wm" "polyFlipUV4.mp";
connectAttr "polyFlipUV4.out" "polyTweakUV7.ip";
connectAttr "pCylinderShape9.o" "polyUnite5.ip[0]";
connectAttr "pCylinderShape8.o" "polyUnite5.ip[1]";
connectAttr "pCylinderShape9.wm" "polyUnite5.im[0]";
connectAttr "pCylinderShape8.wm" "polyUnite5.im[1]";
connectAttr "polyCylinder7.out" "groupParts16.ig";
connectAttr "groupId28.id" "groupParts16.gi";
connectAttr "polyUnite5.out" "polyAutoProj4.ip";
connectAttr "pCylinder12Shape.wm" "polyAutoProj4.mp";
connectAttr "polyAutoProj4.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyFlipUV5.ip";
connectAttr "pCylinder12Shape.wm" "polyFlipUV5.mp";
connectAttr "polyFlipUV5.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyFlipUV6.ip";
connectAttr "pCylinder12Shape.wm" "polyFlipUV6.mp";
connectAttr "polyFlipUV6.out" "polyTweakUV10.ip";
connectAttr "file1.oc" "Body.c";
connectAttr "Body.oc" "phong1SG.ss";
connectAttr "pCylinder12Shape.iog" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo1.sg";
connectAttr "Body.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "Bottom.c";
connectAttr "Bottom.oc" "phong2SG.ss";
connectAttr "pCylinder10Shape.iog" "phong2SG.dsm" -na;
connectAttr "phong2SG.msg" "materialInfo2.sg";
connectAttr "Bottom.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file3.oc" "Mid.c";
connectAttr "Mid.oc" "phong3SG.ss";
connectAttr "pCylinder11Shape.iog" "phong3SG.dsm" -na;
connectAttr "phong3SG.msg" "materialInfo3.sg";
connectAttr "Mid.msg" "materialInfo3.m";
connectAttr "file3.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "file4.oc" "Top.c";
connectAttr "Top.oc" "phong4SG.ss";
connectAttr "polySurface1Shape.iog" "phong4SG.dsm" -na;
connectAttr "phong4SG.msg" "materialInfo4.sg";
connectAttr "Top.msg" "materialInfo4.m";
connectAttr "file4.msg" "materialInfo4.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "polyTweakUV5.out" "polyTriangulate1.ip";
connectAttr "polyTweakUV7.out" "polyTriangulate2.ip";
connectAttr "polyTweakUV10.out" "polyTriangulate3.ip";
connectAttr "polyUnite4.out" "polyTriangulate4.ip";
connectAttr "defaultRenderLayer.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Bottom.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "phong2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Mid.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "phong3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "phong4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Top.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "place2dTexture4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Body.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "phong1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phong2SG.pa" ":renderPartition.st" -na;
connectAttr "phong3SG.pa" ":renderPartition.st" -na;
connectAttr "phong4SG.pa" ":renderPartition.st" -na;
connectAttr "Body.msg" ":defaultShaderList1.s" -na;
connectAttr "Bottom.msg" ":defaultShaderList1.s" -na;
connectAttr "Mid.msg" ":defaultShaderList1.s" -na;
connectAttr "Top.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCylinderShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorus4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
// End of SpaceStation.ma
