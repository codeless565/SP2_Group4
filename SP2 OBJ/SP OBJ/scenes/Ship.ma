//Maya ASCII 2017 scene
//Name: Ship.ma
//Last modified: Wed, Feb 15, 2017 03:14:25 PM
//Codeset: 1252
requires maya "2017";
requires -nodeType "renderSetup" "renderSetup.py" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "C15E2EEC-4C14-A632-B684-DDB0C5042C95";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.5455861088749003 3.8014861747851847 6.2754586801445971 ;
	setAttr ".r" -type "double3" -15.338352731875924 -669.80000000055918 1.2421912540871492e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1F4C9E56-414D-07D5-B142-BA83A053A332";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.288174985742709;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "88767356-46DC-79B7-A7AE-8095A36B5A7E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "53AE16C4-4040-15F9-6E60-FE8C42A59F74";
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
	rename -uid "D076D354-4266-4F3D-D196-2D803C540FEF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "786EDF66-4738-A25B-D110-92B3E1D071AA";
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
	rename -uid "5ADE5BDA-4847-13E0-3565-E1816657C05A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D48B6909-4C1C-A1FF-9230-9A9A19BC1978";
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
createNode transform -n "pCube1";
	rename -uid "B04DEDD7-42B8-8EEA-E59E-9BA156DB4F9C";
createNode transform -n "transform3" -p "pCube1";
	rename -uid "14E3FAD0-44A3-2532-B8DE-5AB45D5C34DC";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform3";
	rename -uid "807BD683-4175-F27D-4AD0-53B16E45365D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.12500000558793545 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[72:73]" -type "float3"  0 -0.033678599 0.0010155516 
		0 0.033678599 -0.0010155516;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "E5C1440E-4187-F0DE-6DBD-9C8F1FC03029";
	setAttr ".t" -type "double3" 0.77674933005601776 0 -0.20110876922868565 ;
	setAttr ".rp" -type "double3" -0.49999998737604034 0 0 ;
	setAttr ".sp" -type "double3" -0.49999998737604034 0 0 ;
createNode transform -n "transform1" -p "pCube2";
	rename -uid "A715DEB0-42E4-6E0D-19ED-AA9FDB0C643B";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform1";
	rename -uid "9CA298B3-434D-DD15-8DC2-C2B2AC863078";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt[1:7]" -type "float3"  -0.22706717 0 0.77978581 
		0 0 0 -0.22706717 0 0.77978581 0 0 -0.25835708 -0.22706717 0 0.52142859 0 0 -0.25835708 
		-0.22706717 0 0.52142859;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3";
	rename -uid "2E0F4AB2-495A-5A5D-2641-75826C2D6018";
	setAttr ".t" -type "double3" 1.2996820936298799 0 0.5703198139653608 ;
	setAttr ".rp" -type "double3" -0.24999995327953806 0 -0.49999999749521462 ;
	setAttr ".sp" -type "double3" -0.24999995327953806 0 -0.49999999749521462 ;
createNode transform -n "transform2" -p "pCube3";
	rename -uid "FE357A49-454A-F39B-C96B-ED818FBA3BC9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform2";
	rename -uid "FF338BEE-47E1-572B-8884-F3A051E2309A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 1.0044134 ;
	setAttr ".pt[1]" -type "float3" 0.58003211 0 1.0044135 ;
	setAttr ".pt[2]" -type "float3" 0 0 1.0044134 ;
	setAttr ".pt[3]" -type "float3" 0.58003211 0 1.0044135 ;
	setAttr ".pt[5]" -type "float3" 8.9406967e-008 0 2.9802322e-008 ;
	setAttr ".pt[7]" -type "float3" 8.9406967e-008 0 2.9802322e-008 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.77978557 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.77978557 ;
	setAttr ".pt[10]" -type "float3" 0 0 1.0044134 ;
	setAttr ".pt[11]" -type "float3" 0 0 1.0044134 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "CD036CAF-4843-55D8-6896-51B1DA0189E5";
	setAttr ".rp" -type "double3" 0 0 -0.1310435890418532 ;
	setAttr ".sp" -type "double3" 0 0 -0.1310435890418532 ;
createNode transform -n "transform4" -p "pCube4";
	rename -uid "FF7470A4-4177-44CF-4BBB-B1AB192D8443";
	setAttr ".v" no;
createNode mesh -n "pCube4Shape" -p "transform4";
	rename -uid "F0C475D7-4331-E067-36A3-8ABD7ADC3C6B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[8]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.023992658 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[23]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[27]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[31]" -type "float3" 0 0.023992658 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5";
	rename -uid "EDAF01B1-4BAF-4174-F4DE-65A2A79A5DC3";
	setAttr ".rp" -type "double3" 0 0 0.37843012809753418 ;
	setAttr ".sp" -type "double3" 0 0 0.37843012809753418 ;
createNode transform -n "transform5" -p "pCube5";
	rename -uid "AB8639BD-45FC-AF9B-F79B-2FA9311D82CA";
	setAttr ".v" no;
createNode mesh -n "pCube5Shape" -p "transform5";
	rename -uid "6292A145-4CC7-3E3E-66EB-84ACC1A154AC";
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
createNode transform -n "pCube6";
	rename -uid "B659DE91-44A7-5248-295F-A88AE58DC9FF";
	setAttr ".t" -type "double3" 0.63146244394483642 0 -3.9490996371228269 ;
	setAttr ".rp" -type "double3" -0.05041157114210193 0 0 ;
	setAttr ".sp" -type "double3" -0.05041157114210193 0 0 ;
createNode transform -n "transform7" -p "pCube6";
	rename -uid "0559249E-4A1D-AF42-B438-EB9E9F9DE290";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform7";
	rename -uid "80258020-47E4-9CD9-24B6-D7883BEDF3E9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "946A684C-410E-54BB-4529-2386C57838B9";
	setAttr ".t" -type "double3" 0.43105084189264542 0 -1.1560547863516299 ;
	setAttr ".rp" -type "double3" -0.43105084189264542 0 0 ;
	setAttr ".sp" -type "double3" -0.43105084189264542 0 0 ;
createNode transform -n "transform6" -p "pCube7";
	rename -uid "315BDF57-4D41-5094-2210-E09005F92CF8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform6";
	rename -uid "F5084192-45C5-48AF-0148-4484BE0E4AD0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCone1";
	rename -uid "F23753B5-4923-9953-3169-B9AECC13316D";
	setAttr ".t" -type "double3" 0.7910390529696596 -0.0055699224243258572 -4.1490624397418072 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2.4822061348932873 2.4822061348932873 2.4822061348932873 ;
	setAttr ".rp" -type "double3" 0 0.024110034165663444 -5.3535030110437462e-018 ;
	setAttr ".rpt" -type "double3" 0 -0.024110034165663666 -0.024110034165663437 ;
	setAttr ".sp" -type "double3" 0 -0.049999941065684519 1.1102217160204768e-017 ;
	setAttr ".spt" -type "double3" 0 0.074109975231347824 -1.6455720171248483e-017 ;
createNode transform -n "transform8" -p "pCone1";
	rename -uid "0D4342BE-45F1-6C6A-EC82-6DA6D07387AF";
	setAttr ".v" no;
createNode mesh -n "pConeShape1" -p "transform8";
	rename -uid "814DE81E-4BAA-CF8A-53F9-75BC198D4EA2";
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
createNode transform -n "pTorus1";
	rename -uid "0013FD10-46CF-0046-C5E1-BC9D31DC7FC4";
	setAttr ".t" -type "double3" 0.79103905510251482 -0.0055699222721159458 -0.17789976418020859 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 2.4822061348932873 2.4822061348932873 2.4822061348932873 ;
	setAttr ".rp" -type "double3" 0.00024449814482851995 0.012411044240023036 2.7558054149830004e-018 ;
	setAttr ".rpt" -type "double3" 0 -0.012411044240023036 0.012411044240023032 ;
	setAttr ".sp" -type "double3" 9.8500338626804327e-005 0.0050000054651208395 1.1102242381257542e-018 ;
	setAttr ".spt" -type "double3" 0.00014599780620171872 0.0074110387749023506 1.6455811768572805e-018 ;
createNode transform -n "transform11" -p "pTorus1";
	rename -uid "02118CDA-4F2B-52B8-4759-17923DB00606";
	setAttr ".v" no;
createNode mesh -n "pTorusShape1" -p "transform11";
	rename -uid "FC479D1F-4CCD-5FE7-F45A-A7AEE7A104D7";
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
createNode transform -n "pCone2";
	rename -uid "E86E1BF6-4AB6-63DC-659F-0F81D8B29FD2";
	setAttr ".t" -type "double3" 0 0 4.0076839340457688 ;
	setAttr ".rp" -type "double3" 0.82125138151350097 0 -4.0076839340457688 ;
	setAttr ".sp" -type "double3" 0.82125138151350097 0 -4.0076839340457688 ;
createNode transform -n "polySurface1" -p "pCone2";
	rename -uid "CF24BCE1-4442-5AB9-6671-19B743ED6516";
createNode transform -n "transform13" -p "|pCone2|polySurface1";
	rename -uid "F9A03537-4795-AB3D-9C0B-0D945CC980E1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform13";
	rename -uid "E49DC00F-4B4D-CDAA-07D6-6E9C8802725F";
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
createNode transform -n "polySurface2" -p "pCone2";
	rename -uid "C860B975-4616-355D-3A7F-6BBD63283D62";
createNode transform -n "transform10" -p "polySurface2";
	rename -uid "696A6446-4C3A-A954-8878-A99E21FD3E00";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform10";
	rename -uid "DDE3E135-41ED-A168-30E8-1EA0A33DD464";
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
createNode transform -n "transform9" -p "pCone2";
	rename -uid "A0258BD7-4BAC-19C5-6152-D1BA40DBA3E3";
	setAttr ".v" no;
createNode mesh -n "pCone2Shape" -p "transform9";
	rename -uid "A0718A08-4A4E-74E2-C7C2-CB99E26C8D1E";
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
	rename -uid "697A995D-4D80-8D7C-7CA8-1B89DA448767";
	setAttr ".rp" -type "double3" 0.82125139236450195 0 0.0861466539630662 ;
	setAttr ".sp" -type "double3" 0.82125139236450195 0 0.0861466539630662 ;
createNode transform -n "transform12" -p "pTorus2";
	rename -uid "8E9C86FD-46D5-0D33-7211-A5B9757404CE";
	setAttr ".v" no;
createNode mesh -n "pTorus2Shape" -p "transform12";
	rename -uid "63DE3A57-45FB-C569-CF34-E2B1FD4FDE5D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48982101306319237 0.52129546366631985 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface1";
	rename -uid "D0449CCA-4C23-54B7-2C53-1099BF11D856";
	setAttr ".rp" -type "double3" 0 0 -2.9170047710636027e-008 ;
	setAttr ".sp" -type "double3" 0 0 -2.9170047710636027e-008 ;
createNode mesh -n "polySurface1Shape" -p "|polySurface1";
	rename -uid "ACF9DB90-42DE-86AE-AF6F-70B5178DF6FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49967938289046288 0.49800847470760345 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:pCube1";
	rename -uid "226D6454-4D30-358E-6511-C4AB99D2BCC1";
createNode transform -n "ShipBody:ShipBody:transform3" -p "ShipBody:ShipBody:pCube1";
	rename -uid "550E8A0C-4135-85C9-2ED8-5AB8AD4A4417";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCubeShape1" -p "ShipBody:ShipBody:transform3";
	rename -uid "236F1A0F-4F14-1F97-DC94-3FA97A964E67";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.12500000558793545 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[72:73]" -type "float3"  0 -0.033678599 0.0010155516 
		0 0.033678599 -0.0010155516;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:pCube2";
	rename -uid "D3988863-4DF7-3A4A-EC6B-BBB89B7C4519";
	setAttr ".t" -type "double3" 0.77674933005601776 0 -0.20110876922868565 ;
	setAttr ".rp" -type "double3" -0.49999998737604034 0 0 ;
	setAttr ".sp" -type "double3" -0.49999998737604034 0 0 ;
createNode transform -n "ShipBody:ShipBody:transform1" -p "ShipBody:ShipBody:pCube2";
	rename -uid "BC06F20E-4E22-F722-42BC-B8B36181B7E5";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCubeShape2" -p "ShipBody:ShipBody:transform1";
	rename -uid "DF1871ED-4BF4-F203-A839-F0B50FE4EB7B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt[1:7]" -type "float3"  -0.22706717 0 0.77978581 
		0 0 0 -0.22706717 0 0.77978581 0 0 -0.25835708 -0.22706717 0 0.52142859 0 0 -0.25835708 
		-0.22706717 0 0.52142859;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:pCube3";
	rename -uid "15061F5F-4F45-EAF8-D4AD-9DA67731DE01";
	setAttr ".t" -type "double3" 1.2996820936298799 0 0.5703198139653608 ;
	setAttr ".rp" -type "double3" -0.24999995327953806 0 -0.49999999749521462 ;
	setAttr ".sp" -type "double3" -0.24999995327953806 0 -0.49999999749521462 ;
createNode transform -n "ShipBody:ShipBody:transform2" -p "ShipBody:ShipBody:pCube3";
	rename -uid "90C30AF5-4C54-78F6-917A-46A271FC63C8";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCubeShape3" -p "ShipBody:ShipBody:transform2";
	rename -uid "76ED959C-44D3-5B95-CD58-C48B2559BCD7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 1.0044134 ;
	setAttr ".pt[1]" -type "float3" 0.58003211 0 1.0044135 ;
	setAttr ".pt[2]" -type "float3" 0 0 1.0044134 ;
	setAttr ".pt[3]" -type "float3" 0.58003211 0 1.0044135 ;
	setAttr ".pt[5]" -type "float3" 8.9406967e-008 0 2.9802322e-008 ;
	setAttr ".pt[7]" -type "float3" 8.9406967e-008 0 2.9802322e-008 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.77978557 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.77978557 ;
	setAttr ".pt[10]" -type "float3" 0 0 1.0044134 ;
	setAttr ".pt[11]" -type "float3" 0 0 1.0044134 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:pCube4";
	rename -uid "C8418E64-4B60-6D04-F207-0486EEC9C39A";
	setAttr ".rp" -type "double3" 0 0 -0.1310435890418532 ;
	setAttr ".sp" -type "double3" 0 0 -0.1310435890418532 ;
createNode transform -n "ShipBody:ShipBody:transform4" -p "ShipBody:ShipBody:pCube4";
	rename -uid "9AD6CC71-48AA-D6C8-E52A-86B89DEC927C";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCube4Shape" -p "ShipBody:ShipBody:transform4";
	rename -uid "1ECE0F00-4B54-EC76-5F00-189BD3B63192";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[8]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.023992658 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[23]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[27]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[31]" -type "float3" 0 0.023992658 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:pCube5";
	rename -uid "287348F2-4FCB-E999-4BA6-A8816538CB3D";
	setAttr ".rp" -type "double3" 0 0 0.37843012809753418 ;
	setAttr ".sp" -type "double3" 0 0 0.37843012809753418 ;
createNode transform -n "ShipBody:ShipBody:transform5" -p "ShipBody:ShipBody:pCube5";
	rename -uid "653E2D23-419F-FDD6-7ED3-E8B0FDEA7E71";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCube5Shape" -p "ShipBody:ShipBody:transform5";
	rename -uid "04CDFE99-4C31-4DFD-F321-48AAE2157772";
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
createNode transform -n "ShipBody:ShipBody:pCube6";
	rename -uid "A53040E7-47CE-8FFC-2EA8-04A22437489F";
	setAttr ".t" -type "double3" 0.63146244394483642 0 -3.9490996371228269 ;
	setAttr ".rp" -type "double3" -0.05041157114210193 0 0 ;
	setAttr ".sp" -type "double3" -0.05041157114210193 0 0 ;
createNode transform -n "ShipBody:ShipBody:transform7" -p "ShipBody:ShipBody:pCube6";
	rename -uid "EF16D9B1-42F1-DE50-5F3D-F59397CE7231";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCubeShape4" -p "ShipBody:ShipBody:transform7";
	rename -uid "6030D427-4805-8130-CDBE-CD9FE303067B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:pCube7";
	rename -uid "ABC0E94D-40B7-FC3E-848B-E28304CDB688";
	setAttr ".t" -type "double3" 0.43105084189264542 0 -1.1560547863516299 ;
	setAttr ".rp" -type "double3" -0.43105084189264542 0 0 ;
	setAttr ".sp" -type "double3" -0.43105084189264542 0 0 ;
createNode transform -n "ShipBody:ShipBody:transform6" -p "ShipBody:ShipBody:pCube7";
	rename -uid "4B4CC06C-4953-C44A-9EE9-8C9D75BAC784";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCubeShape5" -p "ShipBody:ShipBody:transform6";
	rename -uid "907D1F36-4A62-CAA3-0D01-4CB83D991285";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:pCube8";
	rename -uid "74B8D5EC-4095-954A-48AD-E0AFFB91F57C";
	setAttr ".t" -type "double3" 0 0 1.0145437717437744 ;
	setAttr ".rp" -type "double3" 0 0 -1.0145437717437744 ;
	setAttr ".sp" -type "double3" 0 0 -1.0145437717437744 ;
createNode transform -n "ShipBody:ShipBody:polySurface1" -p "ShipBody:ShipBody:pCube8";
	rename -uid "0F6F106D-44DA-A9FA-520C-F4B2E98652EA";
createNode transform -n "ShipBody:ShipBody:transform19" -p "|ShipBody:ShipBody:pCube8|ShipBody:ShipBody:polySurface1";
	rename -uid "D05EF116-46B1-4E57-0B4F-4496506C1AFC";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape1" -p "ShipBody:ShipBody:transform19";
	rename -uid "8B7A5DA4-48FF-B3D3-D640-5FA621EAE8C4";
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
createNode transform -n "ShipBody:ShipBody:polySurface2" -p "ShipBody:ShipBody:pCube8";
	rename -uid "0B0D068C-4BBA-858E-F6A3-E8B448307575";
createNode transform -n "ShipBody:ShipBody:transform18" -p "ShipBody:ShipBody:polySurface2";
	rename -uid "94BB5811-41E1-8C7B-4D2B-D5A5CC824F03";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape2" -p "ShipBody:ShipBody:transform18";
	rename -uid "06CBE763-446E-FE32-2AA6-899CC0EB2190";
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
createNode transform -n "ShipBody:ShipBody:polySurface3" -p "ShipBody:ShipBody:pCube8";
	rename -uid "7AF9C5E8-4808-8E40-D34D-BB8E2F31991A";
	setAttr ".t" -type "double3" 0.24009823799133301 0 -0.88306033839005549 ;
	setAttr ".rp" -type "double3" 1.0496821403503418 0 2.074733140361491 ;
	setAttr ".sp" -type "double3" 1.0496821403503418 0 2.074733140361491 ;
createNode transform -n "ShipBody:ShipBody:transform15" -p "ShipBody:ShipBody:polySurface3";
	rename -uid "AED1BEFD-41EB-0AED-B2B8-EF8EBB699249";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape3" -p "ShipBody:ShipBody:transform15";
	rename -uid "4C0F3192-4CD7-98A8-7774-CF9062203CFC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.96519234776496887 0.4132495210506022 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 1.0651873 ;
	setAttr ".pt[3]" -type "float3" 0 0 1.0651873 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.24404038 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.24404038 ;
	setAttr ".pt[15]" -type "float3" 0 0 0.24404038 ;
	setAttr ".pt[16]" -type "float3" 0 0 1.0651873 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface4" -p "ShipBody:ShipBody:pCube8";
	rename -uid "EA6FAF12-4D27-C11F-AD6C-9EA33A914F93";
createNode transform -n "ShipBody:ShipBody:transform16" -p "|ShipBody:ShipBody:pCube8|ShipBody:ShipBody:polySurface4";
	rename -uid "B9025697-4425-135E-8D39-63ACC7F34F35";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape4" -p "ShipBody:ShipBody:transform16";
	rename -uid "C9FEA757-4EBD-5465-BC12-66A7A613255C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.1135093942284584 0.73025506734848022 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 0.24009828 0 0.36299574 ;
	setAttr ".pt[3]" -type "float3" 0.24009828 0 0.36299574 ;
	setAttr ".pt[5]" -type "float3" 0.24009828 0 0.32305408 ;
	setAttr ".pt[7]" -type "float3" 0.24009828 0 0.32305408 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface5" -p "ShipBody:ShipBody:pCube8";
	rename -uid "7447C0D2-4AB7-77E8-251F-9DA1B566F827";
	setAttr ".t" -type "double3" -0.24009823799133301 0 -0.88306033839005549 ;
	setAttr ".rp" -type "double3" -1.0496821403503418 0 2.074733140361491 ;
	setAttr ".sp" -type "double3" -1.0496821403503418 0 2.074733140361491 ;
createNode transform -n "ShipBody:ShipBody:transform14" -p "|ShipBody:ShipBody:pCube8|ShipBody:ShipBody:polySurface5";
	rename -uid "7AF9FB93-4974-2B5A-EADB-E886C5FB9646";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape5" -p "ShipBody:ShipBody:transform14";
	rename -uid "2C9D78B8-417A-04DE-1FEC-E18ED24E6B29";
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
	setAttr -s 6 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 1.0651873 ;
	setAttr ".pt[3]" -type "float3" 0 0 1.0651873 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.24404038 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.24404038 ;
	setAttr ".pt[15]" -type "float3" 0 0 0.24404038 ;
	setAttr ".pt[16]" -type "float3" 0 0 1.0651873 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface6" -p "ShipBody:ShipBody:pCube8";
	rename -uid "7AFB071F-40BD-D203-554D-1BB86D560BE8";
createNode transform -n "ShipBody:ShipBody:transform13" -p "ShipBody:ShipBody:polySurface6";
	rename -uid "0F7F8424-4E1D-6474-4BF8-7EAD1827217F";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape6" -p "ShipBody:ShipBody:transform13";
	rename -uid "55F377F5-49C7-3296-7EA4-4381E8D7A49B";
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
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" -0.24009828 0 0.36299574 ;
	setAttr ".pt[3]" -type "float3" -0.24009828 0 0.36299574 ;
	setAttr ".pt[5]" -type "float3" -0.24009828 0 0.32305408 ;
	setAttr ".pt[7]" -type "float3" -0.24009828 0 0.32305408 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface7" -p "ShipBody:ShipBody:pCube8";
	rename -uid "AA1F23F9-4DC2-B7CC-BA19-458708596DA9";
createNode transform -n "ShipBody:ShipBody:transform17" -p "ShipBody:ShipBody:polySurface7";
	rename -uid "BD35CBB5-451F-237A-D65C-E2897F7F588F";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape7" -p "ShipBody:ShipBody:transform17";
	rename -uid "0806A421-463F-6220-0775-E8903420B060";
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
createNode transform -n "ShipBody:ShipBody:transform9" -p "ShipBody:ShipBody:pCube8";
	rename -uid "E0630DBC-413B-6801-EE9D-7FB493CF4FB2";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCube8Shape" -p "ShipBody:ShipBody:transform9";
	rename -uid "7BC7E00B-43E7-F9A9-1C24-27AE9681B9D8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gco";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41977384081110358 0.25243642833083868 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[42]" -type "float3" 0 0 -0.58653629 ;
	setAttr ".pt[44]" -type "float3" 0 0 -0.58653629 ;
	setAttr ".pt[62]" -type "float3" 0 0 -0.58653629 ;
	setAttr ".pt[64]" -type "float3" 0 0 -0.58653629 ;
	setAttr ".pt[87]" -type "float3" 0.080634944 0.028243091 0 ;
	setAttr ".pt[89]" -type "float3" -0.080634944 0.028243091 0 ;
	setAttr ".pt[90]" -type "float3" 0.080634944 -0.028243091 0 ;
	setAttr ".pt[92]" -type "float3" -0.080634944 -0.026587639 0 ;
	setAttr ".pt[121]" -type "float3" -0.14441925 0 0 ;
	setAttr ".pt[123]" -type "float3" 0.14441937 0 0 ;
	setAttr ".pt[132]" -type "float3" 0.080634944 -0.028243091 0 ;
	setAttr ".pt[136]" -type "float3" -0.080634944 -0.026587639 0 ;
	setAttr ".pt[137]" -type "float3" -0.080634944 0.028243091 0 ;
	setAttr ".pt[141]" -type "float3" 0.080634944 0.028243091 0 ;
	setAttr ".pt[152]" -type "float3" -0.14441925 0.066947222 0 ;
	setAttr ".pt[153]" -type "float3" 0 0.044631481 0 ;
	setAttr ".pt[154]" -type "float3" 0.14441937 0.022315741 0 ;
	setAttr ".pt[155]" -type "float3" 0 0.044631481 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:pCone1";
	rename -uid "B30D683A-41B5-0C87-EAE1-74A4D34A9C7C";
	setAttr ".t" -type "double3" 0.7910390529696596 -0.0055699224243258572 -4.1490624397418072 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2.4822061348932873 2.4822061348932873 2.4822061348932873 ;
	setAttr ".rp" -type "double3" 0 0.024110034165663444 -5.3535030110437462e-018 ;
	setAttr ".rpt" -type "double3" 0 -0.024110034165663666 -0.024110034165663437 ;
	setAttr ".sp" -type "double3" 0 -0.049999941065684519 1.1102217160204768e-017 ;
	setAttr ".spt" -type "double3" 0 0.074109975231347824 -1.6455720171248483e-017 ;
createNode transform -n "ShipBody:ShipBody:transform8" -p "ShipBody:ShipBody:pCone1";
	rename -uid "2FCB1F4D-4194-D270-5990-10965AEF9A16";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pConeShape1" -p "ShipBody:ShipBody:transform8";
	rename -uid "260E183E-4BFB-F1E6-D0DE-D6A09103B408";
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
createNode transform -n "ShipBody:ShipBody:pCube9";
	rename -uid "4DDD990D-4A29-03DB-9C29-088FD544FAFE";
	setAttr ".t" -type "double3" 1.1499999761581421 1.4901161193847656e-008 3.8949179526341893 ;
	setAttr ".rp" -type "double3" -0.14999997615814209 0 0.050000046896563788 ;
	setAttr ".sp" -type "double3" -0.14999997615814209 0 0.050000046896563788 ;
createNode transform -n "ShipBody:ShipBody:transform12" -p "ShipBody:ShipBody:pCube9";
	rename -uid "DA50A7C8-435A-4AE6-670C-32B2D5DEB09F";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCubeShape6" -p "ShipBody:ShipBody:transform12";
	rename -uid "0E06ECC7-4B77-9EF5-CB2C-CFB8CC0E51B9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" -0.073752306 0 -0.15653108 ;
	setAttr ".pt[3]" -type "float3" -0.073752306 0 -0.15653108 ;
	setAttr ".pt[5]" -type "float3" -0.073752306 0 -0.15653108 ;
	setAttr ".pt[7]" -type "float3" -0.073752306 0 -0.15653108 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:pCylinder1";
	rename -uid "09B3B5F0-4AB9-8EAE-6F3A-C69B12F4C67E";
	setAttr ".t" -type "double3" 1.3236889943365462 -0.040450848639011383 3.7883868217468271 ;
	setAttr ".r" -type "double3" 90 0 29.999999999999996 ;
	setAttr ".rp" -type "double3" -0.10000000558188674 0 -1.5267169153898585e-008 ;
	setAttr ".rpt" -type "double3" 0.002558679511636722 -0.0095491372048854828 1.5267168615440429e-008 ;
	setAttr ".sp" -type "double3" -0.10000000558188674 0 -1.5267169153898585e-008 ;
createNode transform -n "ShipBody:ShipBody:transform10" -p "ShipBody:ShipBody:pCylinder1";
	rename -uid "D5C9A2C2-473B-AA31-48A0-A2BD1273DF8C";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCylinderShape1" -p "ShipBody:ShipBody:transform10";
	rename -uid "0B9E8C69-4047-BB85-3BD0-EE8D628C45F4";
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
createNode transform -n "ShipBody:ShipBody:pCylinder2";
	rename -uid "FFC9480F-4EF6-7417-7527-079C829745EB";
	setAttr ".t" -type "double3" 1.3128502368927002 0 4.1383865747726922 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" 0 -0.099999753025866056 -2.2204405653229133e-017 ;
	setAttr ".rpt" -type "double3" 0 0.099999753025866056 -0.099999753025866028 ;
	setAttr ".sp" -type "double3" 0 -0.099999753025866056 -2.2204405653229133e-017 ;
createNode transform -n "ShipBody:ShipBody:transform11" -p "ShipBody:ShipBody:pCylinder2";
	rename -uid "D248F2B4-4D13-ABF7-7CD4-54B7FA4E13C6";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCylinderShape2" -p "ShipBody:ShipBody:transform11";
	rename -uid "16677B44-4D26-81D0-078E-1C8C6AB75D8E";
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
createNode transform -n "ShipBody:ShipBody:pCube10";
	rename -uid "27612728-4740-E07A-FE84-448017B05498";
	setAttr ".t" -type "double3" -0.26876319985655384 0 -1.2265113180561791 ;
	setAttr ".rp" -type "double3" 0.9999999879443251 6.9514862061081928e-009 3.8883866990048173 ;
	setAttr ".sp" -type "double3" 0.9999999879443251 6.9514862061081928e-009 3.8883866990048173 ;
createNode transform -n "ShipBody:ShipBody:transform21" -p "ShipBody:ShipBody:pCube10";
	rename -uid "D871E0C2-4F57-E1B3-8EE9-8ABBFC8863D4";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pCube10Shape" -p "ShipBody:ShipBody:transform21";
	rename -uid "BFD1DEF9-48B0-29F4-5A58-2FA2A671BB40";
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
createNode transform -n "ShipBody:ShipBody:polySurface5";
	rename -uid "DE932779-4384-9CE5-CD97-DF8D940BBA87";
	setAttr ".rp" -type "double3" -1.3232809007167816 0 1.3467108882544605 ;
	setAttr ".sp" -type "double3" -1.3232809007167816 0 1.3467108882544605 ;
createNode transform -n "ShipBody:ShipBody:transform20" -p "|ShipBody:ShipBody:polySurface5";
	rename -uid "03471D6B-4B41-8813-B303-4A8DD375A093";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface5Shape" -p "ShipBody:ShipBody:transform20";
	rename -uid "0E367614-4877-DF22-6E19-DEADC8E58514";
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
createNode transform -n "ShipBody:ShipBody:polySurface4";
	rename -uid "8A6C6898-4193-2ED8-3B70-74BC4BF72CA6";
	setAttr ".rp" -type "double3" 1.3232809007167816 0 1.3467108882544605 ;
	setAttr ".sp" -type "double3" 1.3232809007167816 0 1.3467108882544605 ;
createNode transform -n "ShipBody:ShipBody:transform23" -p "|ShipBody:ShipBody:polySurface4";
	rename -uid "9D8F3E5F-40DE-BA99-1075-75A0DD685633";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface4Shape" -p "ShipBody:ShipBody:transform23";
	rename -uid "DCB9FA12-4950-7A58-5020-8A8CB50704B8";
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
createNode transform -n "ShipBody:ShipBody:polySurface1";
	rename -uid "2EC8AF1C-438C-7282-0239-46A73BCFECE6";
	setAttr ".rp" -type "double3" 2.9802322387695313e-008 0 1.3929738998413086 ;
	setAttr ".sp" -type "double3" 2.9802322387695313e-008 0 1.3929738998413086 ;
createNode transform -n "ShipBody:ShipBody:transform22" -p "|ShipBody:ShipBody:polySurface1";
	rename -uid "47C2726E-4201-B511-F479-FBA1FBD5B278";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface1Shape" -p "ShipBody:ShipBody:transform22";
	rename -uid "F6BB155B-4733-419A-E779-B5A2426DD032";
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
createNode transform -n "ShipBody:ShipBody:polySurface8";
	rename -uid "D7EC6171-4F4E-152E-BB61-328DDDDDF9D1";
	setAttr ".rp" -type "double3" 0 0 1.3467109501361847 ;
	setAttr ".sp" -type "double3" 0 0 1.3467109501361847 ;
createNode transform -n "ShipBody:ShipBody:transform25" -p "ShipBody:ShipBody:polySurface8";
	rename -uid "1040633F-4425-A11F-7DA0-A192797EA6DD";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface4Shape" -p "ShipBody:ShipBody:transform25";
	rename -uid "56488F11-4047-3B86-EAB9-28B754EF3B5D";
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
createNode transform -n "ShipBody:ShipBody:pCone2";
	rename -uid "4565E3C6-4C05-C9FB-7EA3-5991209C6498";
	setAttr ".t" -type "double3" 8.6570109696815223e-005 7.4505794867008035e-009 -0.98545621148753404 ;
	setAttr ".r" -type "double3" -90 0 29.999999999999996 ;
	setAttr ".rp" -type "double3" 0.12582757696509356 -0.49999998323131023 0.21793975629682549 ;
	setAttr ".rpt" -type "double3" -0.12582757696509506 0.75165513716149857 0.28206022693448474 ;
	setAttr ".sp" -type "double3" 0.12582757696509356 -0.49999998323131023 0.21793975629682549 ;
createNode transform -n "ShipBody:ShipBody:transform24" -p "ShipBody:ShipBody:pCone2";
	rename -uid "B9971F7B-41E5-6D16-1D97-4FAC8C2F05B4";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:pConeShape2" -p "ShipBody:ShipBody:transform24";
	rename -uid "EF6E9FD2-4274-90BC-6E11-F2AC66F36E96";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.6041666567325592 0.48325318098068237 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt[0:6]" -type "float3"  -0.11362074 0 0.10712694 
		0.12417245 0 0.21507297 0.14958496 -7.4505806e-008 -0.044834919 0.11131129 -7.4505806e-008 
		-0.11112686 -0.12417243 0 -0.21507293 -0.15189444 0 0.040834993 1.289967e-017 0.51454371 
		1.4901161e-008;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface9";
	rename -uid "37B7F0C4-4B52-E394-BF3D-C389A1462F11";
	setAttr ".rp" -type "double3" 0 0 0.63570214156305671 ;
	setAttr ".sp" -type "double3" 0 0 0.63570214156305671 ;
createNode transform -n "ShipBody:ShipBody:polySurface10" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "60BFA78A-4E9C-09F6-07F6-6A81F05C5746";
createNode transform -n "ShipBody:ShipBody:transform34" -p "ShipBody:ShipBody:polySurface10";
	rename -uid "CA6D44A1-47DD-FCFF-4D56-0AA0A57679F7";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape8" -p "ShipBody:ShipBody:transform34";
	rename -uid "6BE50156-446C-047F-02DB-68A03A8AAC57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.092952597886323929 0.67242303490638733 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface11" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "A107FB69-4B28-E2BD-837F-B199349CFCC9";
createNode transform -n "ShipBody:ShipBody:transform33" -p "ShipBody:ShipBody:polySurface11";
	rename -uid "21F01057-4AD4-F758-7604-43B2A936AF76";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape9" -p "ShipBody:ShipBody:transform33";
	rename -uid "F25D27A0-4843-2392-EFD1-1D933F47591B";
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
createNode transform -n "ShipBody:ShipBody:polySurface12" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "FDBFBDFE-4BBF-46D2-2DBF-82BFA1B8219C";
createNode transform -n "ShipBody:ShipBody:transform32" -p "ShipBody:ShipBody:polySurface12";
	rename -uid "DA9332B0-4CAD-03CC-B64A-FE91F4E2CFD4";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape10" -p "ShipBody:ShipBody:transform32";
	rename -uid "F3E185D5-48F2-FD74-5211-C4AB9A93A19E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.22701861709356308 0.63222399353981018 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface13" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "4925A860-414E-9A9F-01E1-5C83AFCD20AF";
createNode transform -n "ShipBody:ShipBody:transform37" -p "ShipBody:ShipBody:polySurface13";
	rename -uid "4CC6E87E-485B-DC65-7569-FFB75878438E";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape11" -p "ShipBody:ShipBody:transform37";
	rename -uid "E7B3D8F6-42A8-B0FE-F7FA-1691D1DC0836";
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
createNode transform -n "ShipBody:ShipBody:polySurface14" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "B39B1A8D-479D-7360-76E6-D48198B7EB18";
createNode transform -n "ShipBody:ShipBody:transform39" -p "|ShipBody:ShipBody:polySurface9|ShipBody:ShipBody:polySurface14";
	rename -uid "7369E764-4D10-6B29-69EF-E79ADA06FD9B";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape12" -p "ShipBody:ShipBody:transform39";
	rename -uid "5809CD3C-4627-44B3-8E11-0DB6C6355E6A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.87055349349975586 0.84464940428733826 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface15" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "1FFCC17F-4554-41CC-6C6D-E7BF2A58EF9D";
createNode transform -n "ShipBody:ShipBody:transform38" -p "ShipBody:ShipBody:polySurface15";
	rename -uid "56F0D587-4BC3-E9DB-303C-CD9F8D930402";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape13" -p "ShipBody:ShipBody:transform38";
	rename -uid "A03B7D21-4FF4-7093-805D-CC8DEC0208F3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.94461372494697571 0.84464940428733826 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface16" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "C03283A4-4C83-3319-A5C9-7D8975418D0E";
createNode transform -n "ShipBody:ShipBody:transform36" -p "ShipBody:ShipBody:polySurface16";
	rename -uid "409FA7D4-4C0F-C1EE-9EA8-6E9C5F63AE2C";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape14" -p "ShipBody:ShipBody:transform36";
	rename -uid "6FAD0181-46B3-4F61-53F9-7897F7FB8DE5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.79999995231628418 0.37730878591537476 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface17" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "0F407715-4558-B8BB-D575-84A8F7642B2F";
createNode transform -n "ShipBody:ShipBody:transform35" -p "ShipBody:ShipBody:polySurface17";
	rename -uid "5F62FD1A-4134-EDA9-33B4-BF9A83C06BB0";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape15" -p "ShipBody:ShipBody:transform35";
	rename -uid "05085DC3-44E1-486F-6958-82974423BBE1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface18" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "50A20085-4869-6461-BEAF-7981AE441602";
createNode transform -n "ShipBody:ShipBody:transform45" -p "ShipBody:ShipBody:polySurface18";
	rename -uid "F8F8B9BF-40BB-E6B2-E6A7-8AA1AD73EFD5";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape16" -p "ShipBody:ShipBody:transform45";
	rename -uid "D58F93AE-4BD1-68B9-84E3-EC9648320938";
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
createNode transform -n "ShipBody:ShipBody:polySurface19" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "A2C5327D-4CE2-8E7C-8FA9-44BB69580CE7";
createNode transform -n "ShipBody:ShipBody:transform28" -p "ShipBody:ShipBody:polySurface19";
	rename -uid "17AF0188-46E8-2312-4F9A-18A82991648A";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape17" -p "ShipBody:ShipBody:transform28";
	rename -uid "6FBE48E4-4C11-F5B4-DF75-7CA181D1CF0B";
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
createNode transform -n "ShipBody:ShipBody:polySurface20" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "EAC2EB97-4CEA-0970-035D-DABF376BF646";
createNode transform -n "ShipBody:ShipBody:transform27" -p "ShipBody:ShipBody:polySurface20";
	rename -uid "809A18FD-4DD2-4B61-D06F-C2ACFE6165C0";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape18" -p "ShipBody:ShipBody:transform27";
	rename -uid "38FE2E03-4A0C-7A42-77F3-2AA3C82D0A85";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:polySurface21" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "A4828FD2-44B3-1D25-4606-38A07FBA3D95";
createNode transform -n "ShipBody:ShipBody:transform29" -p "ShipBody:ShipBody:polySurface21";
	rename -uid "596EE867-4B65-5F05-0AEB-FA8966A64DAD";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape19" -p "ShipBody:ShipBody:transform29";
	rename -uid "11DE3A31-46D3-E97A-6005-0791F81E58A3";
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
createNode transform -n "ShipBody:ShipBody:polySurface22" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "0C9D74C5-48CB-37E9-71B0-06808929F599";
createNode transform -n "ShipBody:ShipBody:transform30" -p "ShipBody:ShipBody:polySurface22";
	rename -uid "84F6593A-4B23-90E8-F19F-65AB7980227D";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape20" -p "ShipBody:ShipBody:transform30";
	rename -uid "71F3EAA7-41AA-7261-5763-6896A9ED2273";
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
createNode transform -n "ShipBody:ShipBody:polySurface23" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "78CE0BC6-4C8E-3828-7401-12BA8231EC8C";
	setAttr ".t" -type "double3" 0 0 6.1227287240228634e-008 ;
	setAttr ".rp" -type "double3" 0 0 -0.48545628948351283 ;
	setAttr ".sp" -type "double3" 0 0 -0.48545628948351283 ;
createNode transform -n "ShipBody:ShipBody:transform31" -p "ShipBody:ShipBody:polySurface23";
	rename -uid "4BB17BAF-4E31-4AF4-2369-4B8D96696C79";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape21" -p "ShipBody:ShipBody:transform31";
	rename -uid "BBAFC44E-4C10-A739-C91E-02AA1FAF15A9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.2499999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:transform26" -p "ShipBody:ShipBody:polySurface9";
	rename -uid "AD362622-407C-E37F-33C2-46920AA45652";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface9Shape" -p "ShipBody:ShipBody:transform26";
	rename -uid "24452349-4D2F-C987-4B55-39A2CEFFEECF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.699999988079071 0.19999998668208718 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[85]" -type "float3" 0 0.065545529 0 ;
	setAttr ".pt[139]" -type "float3" 0 0.065545529 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:ShipEngine:pCube1";
	rename -uid "D2727622-41D6-3D0A-D9D3-539780B3CE01";
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform3" -p "ShipBody:ShipBody:ShipEngine:pCube1";
	rename -uid "5FB37841-499B-1E8C-63A7-95867BB73B11";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pCubeShape1" -p "ShipBody:ShipBody:ShipEngine:transform3";
	rename -uid "4F01297B-4DA8-AEF1-198B-059E892884CD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.12500000558793545 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[72:73]" -type "float3"  0 -0.033678599 0.0010155516 
		0 0.033678599 -0.0010155516;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:ShipEngine:pCube2";
	rename -uid "0185CDEB-4FAD-E05E-D9AD-65AD4FD18063";
	setAttr ".t" -type "double3" 0.77674933005601776 0 -0.20110876922868565 ;
	setAttr ".rp" -type "double3" -0.49999998737604034 0 0 ;
	setAttr ".sp" -type "double3" -0.49999998737604034 0 0 ;
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform1" -p "ShipBody:ShipBody:ShipEngine:pCube2";
	rename -uid "55C60A9E-4D28-9A49-99C4-569F2F5865D3";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pCubeShape2" -p "ShipBody:ShipBody:ShipEngine:transform1";
	rename -uid "580BDF73-473B-4480-A618-79B8DF374EA1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt[1:7]" -type "float3"  -0.22706717 0 0.77978581 
		0 0 0 -0.22706717 0 0.77978581 0 0 -0.25835708 -0.22706717 0 0.52142859 0 0 -0.25835708 
		-0.22706717 0 0.52142859;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:ShipEngine:pCube3";
	rename -uid "99ADD03C-4796-4FF5-D477-A295B4234D64";
	setAttr ".t" -type "double3" 1.2996820936298799 0 0.5703198139653608 ;
	setAttr ".rp" -type "double3" -0.24999995327953806 0 -0.49999999749521462 ;
	setAttr ".sp" -type "double3" -0.24999995327953806 0 -0.49999999749521462 ;
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform2" -p "ShipBody:ShipBody:ShipEngine:pCube3";
	rename -uid "B82A17DC-4CAE-4AD7-8B04-CDA0B70A6FEC";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pCubeShape3" -p "ShipBody:ShipBody:ShipEngine:transform2";
	rename -uid "6CCA4E6C-4FFD-E861-B237-A1B6D2F60041";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 1.0044134 ;
	setAttr ".pt[1]" -type "float3" 0.58003211 0 1.0044135 ;
	setAttr ".pt[2]" -type "float3" 0 0 1.0044134 ;
	setAttr ".pt[3]" -type "float3" 0.58003211 0 1.0044135 ;
	setAttr ".pt[5]" -type "float3" 8.9406967e-008 0 2.9802322e-008 ;
	setAttr ".pt[7]" -type "float3" 8.9406967e-008 0 2.9802322e-008 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.77978557 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.77978557 ;
	setAttr ".pt[10]" -type "float3" 0 0 1.0044134 ;
	setAttr ".pt[11]" -type "float3" 0 0 1.0044134 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:ShipEngine:pCube4";
	rename -uid "2A20C7F2-4BFE-237C-1BEA-7D81832EE0CA";
	setAttr ".rp" -type "double3" 0 0 -0.1310435890418532 ;
	setAttr ".sp" -type "double3" 0 0 -0.1310435890418532 ;
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform4" -p "ShipBody:ShipBody:ShipEngine:pCube4";
	rename -uid "06D5B08B-489F-1898-0796-9C8D856D021F";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pCube4Shape" -p "ShipBody:ShipBody:ShipEngine:transform4";
	rename -uid "FFBDEDED-48B0-1E06-B419-EA88A5CB583E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[8]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.023992658 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[23]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[27]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.072043732 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.075000182 0 ;
	setAttr ".pt[31]" -type "float3" 0 0.023992658 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:ShipEngine:pCube5";
	rename -uid "057FA239-4D4E-7390-1E28-FD9194371B85";
	setAttr ".rp" -type "double3" 0 0 0.37843012809753418 ;
	setAttr ".sp" -type "double3" 0 0 0.37843012809753418 ;
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform5" -p "ShipBody:ShipBody:ShipEngine:pCube5";
	rename -uid "C5FB943A-4767-E729-A339-B58E0132401E";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pCube5Shape" -p "ShipBody:ShipBody:ShipEngine:transform5";
	rename -uid "51630B10-45BD-5548-AAAF-E699E3874525";
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
createNode transform -n "ShipBody:ShipBody:ShipEngine:pCube6";
	rename -uid "4282F3FC-4ABA-6A3B-15AB-E385B5B39ED8";
	setAttr ".t" -type "double3" 0.63146244394483642 0 -3.9490996371228269 ;
	setAttr ".rp" -type "double3" -0.05041157114210193 0 0 ;
	setAttr ".sp" -type "double3" -0.05041157114210193 0 0 ;
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform7" -p "ShipBody:ShipBody:ShipEngine:pCube6";
	rename -uid "373F2E2F-42D6-AA3A-2B88-C3873DAA059A";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pCubeShape4" -p "ShipBody:ShipBody:ShipEngine:transform7";
	rename -uid "9009AFEC-47C7-2980-1CB2-ABB9EC8DB3B7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:ShipEngine:pCube7";
	rename -uid "F7CF36B3-42F9-1061-58F4-2897E1660847";
	setAttr ".t" -type "double3" 0.43105084189264542 0 -1.1560547863516299 ;
	setAttr ".rp" -type "double3" -0.43105084189264542 0 0 ;
	setAttr ".sp" -type "double3" -0.43105084189264542 0 0 ;
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform6" -p "ShipBody:ShipBody:ShipEngine:pCube7";
	rename -uid "DDC85D63-47CC-A437-20A3-B4A6B7463A67";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pCubeShape5" -p "ShipBody:ShipBody:ShipEngine:transform6";
	rename -uid "6D1C44FE-408B-E36B-96F0-F1AC7C9D7FD3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ShipBody:ShipBody:ShipEngine:pCone1";
	rename -uid "6EE42FD0-4D7F-06B4-48CC-E7BAF9A8FEE6";
	setAttr ".t" -type "double3" 0.7910390529696596 -0.0055699224243258572 -4.1490624397418072 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2.4822061348932873 2.4822061348932873 2.4822061348932873 ;
	setAttr ".rp" -type "double3" 0 0.024110034165663444 -5.3535030110437462e-018 ;
	setAttr ".rpt" -type "double3" 0 -0.024110034165663666 -0.024110034165663437 ;
	setAttr ".sp" -type "double3" 0 -0.049999941065684519 1.1102217160204768e-017 ;
	setAttr ".spt" -type "double3" 0 0.074109975231347824 -1.6455720171248483e-017 ;
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform8" -p "ShipBody:ShipBody:ShipEngine:pCone1";
	rename -uid "2F72F925-475A-6DCF-0535-A1BCB05A8359";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pConeShape1" -p "ShipBody:ShipBody:ShipEngine:transform8";
	rename -uid "A960D29D-4C45-EFBA-0F3B-E892EDC5A225";
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
createNode transform -n "ShipBody:ShipBody:ShipEngine:pTorus1";
	rename -uid "2B8A5F0A-4E97-0D54-4ED6-BBA7CC13793A";
	setAttr ".t" -type "double3" 0.79103905510251482 -0.0055699222721159458 -0.17789976418020859 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 2.4822061348932873 2.4822061348932873 2.4822061348932873 ;
	setAttr ".rp" -type "double3" 0.00024449814482851995 0.012411044240023036 2.7558054149830004e-018 ;
	setAttr ".rpt" -type "double3" 0 -0.012411044240023036 0.012411044240023032 ;
	setAttr ".sp" -type "double3" 9.8500338626804327e-005 0.0050000054651208395 1.1102242381257542e-018 ;
	setAttr ".spt" -type "double3" 0.00014599780620171872 0.0074110387749023506 1.6455811768572805e-018 ;
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform11" -p "ShipBody:ShipBody:ShipEngine:pTorus1";
	rename -uid "A592681A-4B1E-865A-D5C4-EDBEDF00C661";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pTorusShape1" -p "ShipBody:ShipBody:ShipEngine:transform11";
	rename -uid "93BCECF9-4893-552D-1DCA-2889434EF9FE";
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
createNode transform -n "ShipBody:ShipBody:ShipEngine:pCone2";
	rename -uid "DC6CAD71-46B7-17CB-1082-57BCB2609F69";
	setAttr ".t" -type "double3" 0 0 4.0076839340457688 ;
	setAttr ".rp" -type "double3" 0.82125138151350097 0 -4.0076839340457688 ;
	setAttr ".sp" -type "double3" 0.82125138151350097 0 -4.0076839340457688 ;
createNode transform -n "ShipBody:ShipBody:ShipEngine:polySurface2" -p "ShipBody:ShipBody:ShipEngine:pCone2";
	rename -uid "F8B6CD40-4F94-FE6E-A827-53B4962CD581";
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform10" -p "ShipBody:ShipBody:ShipEngine:polySurface2";
	rename -uid "C22DDBE7-4023-A9F4-1234-35A01A622536";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:polySurfaceShape2" -p "ShipBody:ShipBody:ShipEngine:transform10";
	rename -uid "83383ACA-41A3-ADF3-52CA-A1810F5C2C6A";
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
createNode transform -n "ShipBody:ShipBody:ShipEngine:transform9" -p "ShipBody:ShipBody:ShipEngine:pCone2";
	rename -uid "DEB6E4E7-4359-FC3E-B7EB-C68BB87C0F45";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:ShipEngine:pCone2Shape" -p "ShipBody:ShipBody:ShipEngine:transform9";
	rename -uid "76B65E3F-4AC9-9847-1F66-3E9216081FB4";
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
createNode transform -n "ShipBody:ShipBody:polySurface14";
	rename -uid "991B9C1C-45A2-483F-518C-7FB890FB11EA";
	setAttr ".rp" -type "double3" 0 0 0.63570216379235456 ;
	setAttr ".sp" -type "double3" 0 0 0.63570216379235456 ;
createNode transform -n "ShipBody:ShipBody:polySurface24" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "1928DA68-41E5-6A7D-FC44-38A2E04F793E";
createNode transform -n "ShipBody:ShipBody:transform52" -p "ShipBody:ShipBody:polySurface24";
	rename -uid "652D98BC-4314-8437-2E18-43BA30B8A8A0";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape22" -p "ShipBody:ShipBody:transform52";
	rename -uid "EAA59B8C-4967-7BC3-7594-25AD74E349CC";
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
createNode transform -n "ShipBody:ShipBody:polySurface25" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "792CAB84-4392-3370-DCAB-5AAE76940A26";
createNode transform -n "ShipBody:ShipBody:transform53" -p "ShipBody:ShipBody:polySurface25";
	rename -uid "917CFFF4-4871-A1DD-CDD4-04985D08A4B7";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape23" -p "ShipBody:ShipBody:transform53";
	rename -uid "3BA9D28F-467C-27D7-4F43-00ABFA788E0E";
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
createNode transform -n "ShipBody:ShipBody:polySurface26" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "0FF6AAA4-40A1-10AF-FE12-44A0E7AE84BD";
createNode transform -n "ShipBody:ShipBody:transform48" -p "|ShipBody:ShipBody:polySurface14|ShipBody:ShipBody:polySurface26";
	rename -uid "D4D4EBD0-4D7E-EC13-416F-499497CC8A90";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape24" -p "ShipBody:ShipBody:transform48";
	rename -uid "633756DE-4939-870E-64D1-1DBFC15C5B9C";
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
createNode transform -n "ShipBody:ShipBody:polySurface27" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "873C340C-422B-FDF0-06AA-6289A5455938";
createNode transform -n "ShipBody:ShipBody:transform54" -p "|ShipBody:ShipBody:polySurface14|ShipBody:ShipBody:polySurface27";
	rename -uid "1797928C-42B4-9EA3-FC2F-EB84447A9CBF";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape25" -p "ShipBody:ShipBody:transform54";
	rename -uid "3D7B31FA-44AB-30B1-7F39-78A4E2CB52C8";
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
createNode transform -n "ShipBody:ShipBody:polySurface28" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "3830F0BD-46D6-B349-16BE-C3A211D29CEE";
createNode transform -n "ShipBody:ShipBody:transform44" -p "ShipBody:ShipBody:polySurface28";
	rename -uid "867439C1-4F83-5197-EC20-C4BADFE2662F";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape26" -p "ShipBody:ShipBody:transform44";
	rename -uid "D5C785C6-4684-71B5-C169-8DAE2A1F6971";
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
createNode transform -n "ShipBody:ShipBody:polySurface29" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "408901D7-4D99-7A00-6375-3E94350160ED";
createNode transform -n "ShipBody:ShipBody:transform49" -p "ShipBody:ShipBody:polySurface29";
	rename -uid "171F22BB-4139-D37A-C8EC-7F87F78EC400";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape27" -p "ShipBody:ShipBody:transform49";
	rename -uid "71ADCF4E-4B82-BE25-D275-48B00DD278C7";
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
createNode transform -n "ShipBody:ShipBody:polySurface30" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "73E0F05A-41A9-A35B-F796-50A1D01C78E4";
createNode transform -n "ShipBody:ShipBody:transform50" -p "|ShipBody:ShipBody:polySurface14|ShipBody:ShipBody:polySurface30";
	rename -uid "6D5A5362-4482-F2F5-DFD9-638113D3DAED";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape28" -p "ShipBody:ShipBody:transform50";
	rename -uid "CFDA1836-4EBC-65C6-6284-9EAF3E6D8042";
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
createNode transform -n "ShipBody:ShipBody:polySurface31" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "87B3A965-4102-9DC2-7B6A-9F934E233B7C";
createNode transform -n "ShipBody:ShipBody:transform47" -p "ShipBody:ShipBody:polySurface31";
	rename -uid "3A005AF1-4EFD-39B1-7A7E-E59EE7A9318C";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape29" -p "ShipBody:ShipBody:transform47";
	rename -uid "D557FA4E-4B0D-6D8F-9728-A69329387F09";
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
createNode transform -n "ShipBody:ShipBody:polySurface32" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "C59F934C-451B-0B66-351B-E0AF48DE3CD8";
createNode transform -n "ShipBody:ShipBody:transform51" -p "ShipBody:ShipBody:polySurface32";
	rename -uid "E064B476-4E6D-D6D4-013D-A0832C9F3B5A";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape30" -p "ShipBody:ShipBody:transform51";
	rename -uid "70D4E1AA-4C4E-B987-A407-AD9FDDEE284A";
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
createNode transform -n "ShipBody:ShipBody:polySurface33" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "C5D6100A-4067-F57F-82CC-4A96F1C3B6A8";
createNode transform -n "ShipBody:ShipBody:transform41" -p "ShipBody:ShipBody:polySurface33";
	rename -uid "49981BEB-45A3-6EBD-E470-A8ADD92727E8";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape31" -p "ShipBody:ShipBody:transform41";
	rename -uid "B431F5BD-4111-58D7-DFB6-E2935927E873";
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
createNode transform -n "ShipBody:ShipBody:polySurface34" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "4A6F1776-4D2C-CCC3-8423-C0A1320C84E2";
createNode transform -n "ShipBody:ShipBody:transform42" -p "ShipBody:ShipBody:polySurface34";
	rename -uid "9567D25A-40EA-AE9F-5BC9-4BB516F6DD61";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape32" -p "ShipBody:ShipBody:transform42";
	rename -uid "ABDF2108-4022-BCAC-2F36-66AAE4FA692B";
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
createNode transform -n "ShipBody:ShipBody:polySurface35" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "E35C4322-4D25-8668-A62C-61B088DB6A39";
createNode transform -n "ShipBody:ShipBody:transform46" -p "|ShipBody:ShipBody:polySurface14|ShipBody:ShipBody:polySurface35";
	rename -uid "3EAA2721-47A0-ACA0-FE5B-4E88CC6FD0CA";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape33" -p "ShipBody:ShipBody:transform46";
	rename -uid "75EC5B11-4DC7-1992-DA3E-74882203B77D";
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
createNode transform -n "ShipBody:ShipBody:polySurface36" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "CE0445E4-4A4A-7F9C-1EF3-DB9BD4141E3D";
createNode transform -n "ShipBody:ShipBody:transform43" -p "|ShipBody:ShipBody:polySurface14|ShipBody:ShipBody:polySurface36";
	rename -uid "535EF26C-4056-8556-4B14-31A3BCB95445";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurfaceShape34" -p "ShipBody:ShipBody:transform43";
	rename -uid "CA52A401-4C1A-17AC-F4D1-F9B26151F6B6";
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
createNode transform -n "ShipBody:ShipBody:transform40" -p "|ShipBody:ShipBody:polySurface14";
	rename -uid "A159A972-47F7-D9EE-9468-A59885E6FABF";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface14Shape" -p "ShipBody:ShipBody:transform40";
	rename -uid "D74E079F-4956-5A73-45A0-C5AE337BCF56";
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
createNode transform -n "ShipBody:ShipBody:polySurface36";
	rename -uid "76F00B8F-4FB8-C6BA-BF33-8B83F97AA282";
	setAttr ".rp" -type "double3" -0.93096321821212769 0 2.6618752479553223 ;
	setAttr ".sp" -type "double3" -0.93096321821212769 0 2.6618752479553223 ;
createNode transform -n "ShipBody:ShipBody:transform56" -p "|ShipBody:ShipBody:polySurface36";
	rename -uid "6AD90585-4B05-FEEC-BB00-B18EB2DDC321";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface36Shape" -p "ShipBody:ShipBody:transform56";
	rename -uid "C4237FE3-4A4A-C73F-0EA8-7B997B45AFEA";
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
createNode transform -n "ShipBody:ShipBody:polySurface35";
	rename -uid "261AF228-40E6-ECED-37DA-3694C14BBBA8";
	setAttr ".rp" -type "double3" 0.93096321821212769 0 2.6618752479553223 ;
	setAttr ".sp" -type "double3" 0.93096321821212769 0 2.6618752479553223 ;
createNode transform -n "ShipBody:ShipBody:transform55" -p "|ShipBody:ShipBody:polySurface35";
	rename -uid "6E9B3D7C-4CEA-1B2B-A313-E7BF83576E0E";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface35Shape" -p "ShipBody:ShipBody:transform55";
	rename -uid "1462DD6F-44D1-1BC3-1227-48BC9FD717B3";
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
createNode transform -n "ShipBody:ShipBody:polySurface26";
	rename -uid "CF7157C4-4F5A-9B78-EC51-01840F922FE8";
	setAttr ".rp" -type "double3" -1.3232809007167816 0 1.3467109501361847 ;
	setAttr ".sp" -type "double3" -1.3232809007167816 0 1.3467109501361847 ;
createNode transform -n "ShipBody:ShipBody:transform57" -p "|ShipBody:ShipBody:polySurface26";
	rename -uid "D41F416C-45B9-EE0F-1428-4A81723732A9";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface26Shape" -p "ShipBody:ShipBody:transform57";
	rename -uid "5165B4A1-47DF-1D80-DBBB-A5BA3C8D3078";
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
createNode transform -n "ShipBody:ShipBody:polySurface30";
	rename -uid "FBCB2E9C-4E9C-3DAE-D71D-77BFE782C3DE";
	setAttr ".rp" -type "double3" 1.3232809007167816 0 1.3467109501361847 ;
	setAttr ".sp" -type "double3" 1.3232809007167816 0 1.3467109501361847 ;
createNode transform -n "ShipBody:ShipBody:transform58" -p "|ShipBody:ShipBody:polySurface30";
	rename -uid "7958C6D0-4476-695E-E719-0082BC60DAE5";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface30Shape" -p "ShipBody:ShipBody:transform58";
	rename -uid "BCFFB08A-4A5D-F394-0AAD-A0A8A09062F1";
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
createNode transform -n "ShipBody:ShipBody:polySurface27";
	rename -uid "FE69B095-4A3C-EAD4-DE8A-00A2AEBD8319";
	setAttr ".rp" -type "double3" 2.9802322387695313e-008 0 0.63570207357406616 ;
	setAttr ".sp" -type "double3" 2.9802322387695313e-008 0 0.63570207357406616 ;
createNode transform -n "ShipBody:ShipBody:transform59" -p "|ShipBody:ShipBody:polySurface27";
	rename -uid "05E343C7-4315-1632-7E0D-A2A6E0D50BC3";
	setAttr ".v" no;
createNode mesh -n "ShipBody:ShipBody:polySurface27Shape" -p "ShipBody:ShipBody:transform59";
	rename -uid "F19ACA46-4CC2-F83F-64EE-308FAECFE107";
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
createNode transform -n "ShipBody:ShipBody:polySurface37";
	rename -uid "163712FD-4DC9-507C-8371-BAB776A671ED";
	setAttr ".rp" -type "double3" 0 0 0.63570219278335571 ;
	setAttr ".sp" -type "double3" 0 0 0.63570219278335571 ;
createNode mesh -n "ShipBody:ShipBody:polySurface27Shape" -p "ShipBody:ShipBody:polySurface37";
	rename -uid "E6FD0C1A-44F9-7EEC-B4DD-04B25A942E20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50874949991703033 0.50165502866730094 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FD149DBB-4D2E-B0BD-3657-E4AE8912BEAD";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "923DB67E-4D30-6100-AA2B-9D82D98C68D0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "98B64BC0-4211-E935-9043-DEAC346B8C97";
createNode displayLayerManager -n "layerManager";
	rename -uid "686AF0A8-4145-B916-4BA9-FFB71D88FB32";
createNode displayLayer -n "defaultLayer";
	rename -uid "F4BBCE05-444B-77CA-F93B-82B62F078C0B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "75319CB6-41C4-B7A8-02DA-09B24841D191";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FC00DDC0-455F-FEBA-7639-9E9A6AA4056E";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "CCFADD8F-4F62-62EE-A409-6FAB21347DA1";
	setAttr ".d" 3;
	setAttr ".sw" 2;
	setAttr ".sh" 3;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	rename -uid "5F94151B-43C2-6AEE-4931-E09537551575";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[2]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.39832202 -0.088370159 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.088370159 0 ;
	setAttr ".tk[5]" -type "float3" 0.39832202 -0.088370159 0 ;
	setAttr ".tk[6]" -type "float3" -0.39832202 0.088370174 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.088370174 0 ;
	setAttr ".tk[8]" -type "float3" 0.39832202 0.088370174 0 ;
	setAttr ".tk[9]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[11]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[12]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[14]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.39832202 0.088370159 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.088370159 0 ;
	setAttr ".tk[17]" -type "float3" 0.39832202 0.088370159 0 ;
	setAttr ".tk[18]" -type "float3" -0.39832202 -0.088370174 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.088370174 0 ;
	setAttr ".tk[20]" -type "float3" 0.39832202 -0.088370174 0 ;
	setAttr ".tk[21]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[23]" -type "float3" 1.4901161e-008 0 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "439473B7-4F55-5C91-6D0E-42870695CEAC";
	setAttr -s 3 ".e[0:2]"  0.5 1 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483628 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "238AA48D-47CD-7BC4-2774-799B3CDD5781";
	setAttr -s 3 ".e[0:2]"  0.5 0 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483645 -2147483645 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "F2FF7193-43D0-15CD-E827-C59A345E8D5B";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "7BBAE5E5-4E3B-D4EB-A33B-6DA15B670C01";
	setAttr -s 5 ".e[0:4]"  0.5 0.50000006 1 0.5 0.49999994;
	setAttr -s 5 ".d[0:4]"  -2147483604 -2147483644 -2147483604 -2147483643 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "E4C79FCD-4254-C11D-0E0E-02B9DEC3BB74";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0 0.5 0.50000006;
	setAttr -s 5 ".d[0:4]"  -2147483602 -2147483645 -2147483628 -2147483601 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "49F11FDD-4F5D-8282-4336-11AE1D7D268B";
	setAttr -s 3 ".e[0:2]"  0.5 0.89999998 0.40000001;
	setAttr -s 3 ".d[0:2]"  -2147483627 -2147483628 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "92E50AA4-4AB6-78AE-95D8-0FBD41CF70BD";
	setAttr -s 3 ".e[0:2]"  0.5 1 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483628 -2147483588 -2147483600;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "42A659AD-408E-7D13-C5EA-1CB0B9AD7A6F";
	setAttr -s 3 ".e[0:2]"  1 0.75 1;
	setAttr -s 3 ".d[0:2]"  -2147483643 -2147483588 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "2B401A1D-4DF4-3F28-52F3-528DD402FCA9";
	setAttr -s 3 ".e[0:2]"  0 0.66666698 0;
	setAttr -s 3 ".d[0:2]"  -2147483603 -2147483588 -2147483602;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "974B3204-4E1F-EC8C-305E-F09C8AF0D610";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483603 -2147483588 -2147483602;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "EDA8B931-4D23-B950-DD81-49AC71666463";
	setAttr -s 3 ".e[0:2]"  1 0.25 1;
	setAttr -s 3 ".d[0:2]"  -2147483604 -2147483587 -2147483601;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "5B714BC4-4130-CDDB-7BE3-6A8E720A436C";
	setAttr -s 3 ".e[0:2]"  0 0.33333299 0;
	setAttr -s 3 ".d[0:2]"  -2147483604 -2147483575 -2147483601;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "FD536D03-454E-FFF6-450B-5CA4A22B649C";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483572 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "FF28E639-47CA-0992-170E-4B92B8DABE2E";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.32601184 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.38107857 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.32601184 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.20553866 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.6084097 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.20553866 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.19682452 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.59087908 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.19682452 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.30176252 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.35125792 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.30176252 ;
	setAttr ".tk[15]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[17]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[18]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[20]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.46612442 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.46612442 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.4811334 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.4811334 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.64496118 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.55785453 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.33610898 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.55785453 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.33610898 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.34827507 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.57473326 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.57473326 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.34827507 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.20419966 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.644961 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.20419966 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.63568997 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.62854117 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.60991347 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.5123893 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.37358594 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.60991353 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.51238912 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.37358591 ;
createNode polySplit -n "polySplit14";
	rename -uid "42E1BC0E-4857-48D4-99D9-CAAFD6390464";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483605 -2147483623 -2147483622 -2147483621 -2147483607;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "B9EFE2A4-4FFC-6DE3-FD4D-C0B0F039F23E";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483608 -2147483609 -2147483610 -2147483611 -2147483606;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "D6BA597A-4809-C070-347E-B5B815309673";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483607 -2147483557;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "F1D6A1D4-43E3-F665-278D-328E4E392ABB";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483566 -2147483606;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "760FA033-4C85-2A5D-C502-82A17A7607FC";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.16062963 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.16062963 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.86170298 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.78745049 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.86170298 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.86170298 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.78745049 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.86170298 ;
createNode polySplit -n "polySplit18";
	rename -uid "69BF3B11-4AD1-02BC-4158-AE9D9935EFB4";
	setAttr -s 11 ".e[0:10]"  0.69999999 0.69999999 0.69999999 0.69999999
		 0.69999999 0.30000001 0.30000001 0.30000001 0.69999999 0.69999999 0.69999999;
	setAttr -s 11 ".d[0:10]"  -2147483611 -2147483610 -2147483609 -2147483608 -2147483607 -2147483563 
		-2147483564 -2147483565 -2147483605 -2147483606 -2147483611;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "C51FE3C0-4CE6-3795-CD17-03A87E76E49A";
	setAttr ".uopa" yes;
	setAttr -s 46 ".tk";
	setAttr ".tk[0]" -type "float3" 0.065545537 0.065545537 0 ;
	setAttr ".tk[2]" -type "float3" -0.065545537 0.065545537 0 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.0080831628 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.0098994533 ;
	setAttr ".tk[9]" -type "float3" 0.065545522 -0.065545537 1.4901161e-008 ;
	setAttr ".tk[11]" -type "float3" -0.065545522 -0.065545537 1.4901161e-008 ;
	setAttr ".tk[12]" -type "float3" 0.22310321 -0.065545537 0 ;
	setAttr ".tk[14]" -type "float3" -0.22310321 -0.065545537 0 ;
	setAttr ".tk[15]" -type "float3" 0.32578239 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.32578239 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.32578239 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.32578239 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.22310321 0.065545537 0 ;
	setAttr ".tk[23]" -type "float3" -0.22310321 0.065545537 0 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.10786817 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.0013389587 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.11189945 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.0013389587 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.071461916 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.061892044 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[49]" -type "float3" 0.065545537 -0.065545537 -0.14769581 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[51]" -type "float3" -0.065545537 -0.065545537 -0.14769581 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[54]" -type "float3" -0.065545537 0.065545537 -0.14769602 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[56]" -type "float3" 0.065545537 0.065545537 -0.14769602 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[58]" -type "float3" 0.22310321 0.065545537 -0.01921916 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.019219166 ;
	setAttr ".tk[60]" -type "float3" -0.22310321 0.065545537 -0.01921916 ;
	setAttr ".tk[61]" -type "float3" -0.32578239 0 -0.019219166 ;
	setAttr ".tk[62]" -type "float3" -0.32578239 0 -0.019219166 ;
	setAttr ".tk[63]" -type "float3" -0.22310321 -0.065545537 -0.019219175 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.019219166 ;
	setAttr ".tk[65]" -type "float3" 0.22310321 -0.065545537 -0.019219175 ;
	setAttr ".tk[66]" -type "float3" 0.32578239 0 -0.019219166 ;
	setAttr ".tk[67]" -type "float3" 0.32578239 0 -0.019219166 ;
createNode polySplit -n "polySplit19";
	rename -uid "29888091-46CD-1BC2-1CD6-8DAF734FF3EE";
	setAttr -s 3 ".e[0:2]"  0 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483591 -2147483548 -2147483533;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "B4B790C5-4FC4-A104-DF8A-7389525D00CF";
	setAttr -s 3 ".e[0:2]"  1 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483629 -2147483547 -2147483528;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "67DE303F-47BC-454E-298F-84B85D10B8A2";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 790\n                -height 336\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 790\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 789\n                -height 336\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 789\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 790\n                -height 336\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 790\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
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
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 858\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 858\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7988CFE1-46C1-B00A-166B-028D9EB94554";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweak -n "polyTweak5";
	rename -uid "D256EE41-40B0-F805-6FCC-009D782007DE";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[3]" -type "float3" 0.14441933 -0.0025705099 0 ;
	setAttr ".tk[5]" -type "float3" -0.14441933 -0.0025705099 0 ;
	setAttr ".tk[6]" -type "float3" 0.14441933 0.015477747 0 ;
	setAttr ".tk[8]" -type "float3" -0.14441933 -2.2351742e-008 0 ;
	setAttr ".tk[12]" -type "float3" -0.0041540861 -0.22503753 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.24834485 0 ;
	setAttr ".tk[14]" -type "float3" 0.0041540861 -0.22503753 0 ;
	setAttr ".tk[15]" -type "float3" 0.29148871 -0.04561989 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.041001141 0 ;
	setAttr ".tk[17]" -type "float3" -0.29148871 -0.04561989 0 ;
	setAttr ".tk[18]" -type "float3" 0.29148871 0.041001178 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.041001171 0 ;
	setAttr ".tk[20]" -type "float3" -0.29148871 0.041001178 0 ;
	setAttr ".tk[21]" -type "float3" -0.0041540861 0.22041878 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.24834485 0 ;
	setAttr ".tk[23]" -type "float3" 0.0041540861 0.22041878 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.0039659441 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.0028790962 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.0025705118 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.0025705118 0 ;
	setAttr ".tk[44]" -type "float3" 0.052817032 0 -0.042138375 ;
	setAttr ".tk[47]" -type "float3" -0.052817032 0 -0.042138375 ;
	setAttr ".tk[48]" -type "float3" 0.14441933 0.015477762 0 ;
	setAttr ".tk[52]" -type "float3" -0.14441933 -1.1175871e-008 0 ;
	setAttr ".tk[53]" -type "float3" -0.14441933 -0.0025705099 0 ;
	setAttr ".tk[57]" -type "float3" 0.14441933 -0.0025705099 0 ;
	setAttr ".tk[61]" -type "float3" -0.29579023 0.041001167 0 ;
	setAttr ".tk[62]" -type "float3" -0.29549536 -0.041001167 0 ;
	setAttr ".tk[66]" -type "float3" 0.29549539 -0.041001167 0 ;
	setAttr ".tk[67]" -type "float3" 0.29579026 0.041001167 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.044631436 0 ;
	setAttr ".tk[69]" -type "float3" -0.29579023 -0.044631436 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.044631436 0 ;
	setAttr ".tk[71]" -type "float3" 0.29579026 -0.044631436 0 ;
createNode polySplit -n "polySplit21";
	rename -uid "FAE40EA5-4F52-6FE6-6F30-29A5F4BF15A5";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483631;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "A471F7DF-4AB2-428F-937F-039504D40803";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube2";
	rename -uid "806CC718-4B2D-D6A9-8B46-9E80B70F3946";
	setAttr ".h" 0.15;
	setAttr ".d" 0.5;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	rename -uid "6154B035-4D3E-108A-2878-B3942A8615F1";
	setAttr ".w" 0.5;
	setAttr ".h" 0.15;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit23";
	rename -uid "9E77464A-4E4D-2069-6F5B-32AE0D47D4BE";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "409C9106-48A1-A403-99DE-1CB3FD0A4832";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyUnite -n "polyUnite1";
	rename -uid "F32BE508-42B2-71D8-83C3-FB80B5C19666";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "3CE3BE1F-40EE-D076-3482-A5B22D78B70C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "D9EAA896-40CA-4A17-FA72-968421BAEAD0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId2";
	rename -uid "C97E0CA0-48B2-7E6B-6DA2-B9B33B1605FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "67932ED5-47C2-F446-7E82-E99A604C11CE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "220C5A57-4381-0DA9-5BB8-F696891FB407";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId4";
	rename -uid "45E67D46-47E5-F256-DE1A-439E029764AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "F654A211-4FC4-91E0-D625-1E8FD8068FD3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "8B93EB12-43A1-4F31-80F4-7986858851E1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode polyMirror -n "polyMirror1";
	rename -uid "5133C25D-4CE4-036B-CD94-9DB0C1A9DD5B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 14;
	setAttr ".lnf" 27;
createNode polySplit -n "polySplit25";
	rename -uid "98CB58B3-40A6-2F4D-1399-B790FEB5DE60";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483628 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "87CF747F-49DA-740B-1529-DA934232E521";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483595 -2147483592;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "2737B5A0-4822-C17F-972E-B1A4AD9F620D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0 0.38989282 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.38989282 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.38989282 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.38989282 ;
createNode polySplit -n "polySplit27";
	rename -uid "4023346D-44F4-EEB6-F5C0-CB87F5FCE3BB";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483642 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit28";
	rename -uid "76231C87-4E99-92FC-8217-93B2D52EA3C4";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483610 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "40B08FA8-464B-C2B6-5C1E-94B084823A0D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  0 0 -0.24384946 0 0 -0.24384946
		 0 0 -0.24384946 0 0 -0.24384946;
createNode polySplit -n "polySplit29";
	rename -uid "8572A319-4D0C-F51E-8C83-8EB38CD5EB33";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483631 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit30";
	rename -uid "F9473918-4670-6B26-CBBD-EB88737AFD49";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483601 -2147483618 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "085A8472-4AA2-7447-C454-8C8893B9A5F8";
	setAttr -s 3 ".e[0:2]"  1 0.48029101 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483616 -2147483602 -2147483609;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	rename -uid "1BBB760E-463E-A120-0BBA-79BE90ADC32B";
	setAttr -s 3 ".e[0:2]"  0.5 0.47564799 0;
	setAttr -s 3 ".d[0:2]"  -2147483634 -2147483639 -2147483574;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyUnite -n "polyUnite2";
	rename -uid "C3DD6B5B-4D55-C703-F9B7-D38624569E01";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId6";
	rename -uid "3002E294-43DA-8DA4-628E-BCBFE21088D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "5F9B0715-4844-26C6-E375-238A3C558B23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId7";
	rename -uid "D01F0A3B-4E02-64DE-AD5E-EC82E1E2FEE3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "A1227E43-49E3-FB84-9104-C983547ED15E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "AA4D41AE-4ED7-573B-4503-3DB116D1D386";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode polyCube -n "polyCube4";
	rename -uid "5D945971-46B2-F1D8-DA5A-E38D9A9046FB";
	setAttr ".w" 0.5;
	setAttr ".h" 0.5;
	setAttr ".d" 0.6;
	setAttr ".sh" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube5";
	rename -uid "F0617E0E-4D3D-8635-6B41-B087044BF0E9";
	setAttr ".w" 0.3;
	setAttr ".h" 0.2;
	setAttr ".d" 0.2;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak8";
	rename -uid "40BF8C0C-4E7C-85DA-5539-F282C273685A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.14151087 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.14151087 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.14151087 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.14151087 ;
createNode polySplit -n "polySplit33";
	rename -uid "A94FA9A2-4173-1B33-C0E7-5AA79F900929";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit34";
	rename -uid "FD016B17-442A-CE61-11C8-74800F62BC84";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483639 -2147483634 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMirror -n "polyMirror2";
	rename -uid "FCF5A8AB-490E-0362-59EE-8AA0150CB97E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.43105084189264542 0 -1.2160877961673882 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 9;
	setAttr ".lnf" 17;
createNode groupId -n "groupId9";
	rename -uid "94FE4E30-4C65-A03C-56C0-1E83932EBC7D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "7C1FCAE7-4EB6-343D-4661-EABE344775F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "groupId10";
	rename -uid "E9073876-4DA9-FC76-2402-7C8177F90864";
	setAttr ".ihi" 0;
createNode polyTweak -n "polyTweak9";
	rename -uid "35192120-438F-AA78-F3DC-89BF751F4915";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0.19958839 0.09601739 0 -0.044574969
		 -0.010969203 0 0.19958839 0 0 0.17998941 0 0 0.19958839 -0.09601739 0 -0.044574969
		 0.010969203 0 0.19958839 -0.09601739 0 -0.044574969 0.010969203 0 0.19958839 0 0
		 0.17998941 0 0 0.19958839 0.09601739 0 -0.044574969 -0.010969203 0;
createNode polySplit -n "polySplit35";
	rename -uid "B750B2BF-4FA6-C009-2432-62BCFA705B4C";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483639 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit36";
	rename -uid "F159CF20-4E89-6F9C-196D-4682B96D9805";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit37";
	rename -uid "0D1D46BD-4AC8-1279-A562-67B2C7827A81";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit38";
	rename -uid "65E2CDD5-4CA2-5D0C-132A-A79302719D16";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483624 -2147483627 -2147483628 -2147483626 -2147483625 -2147483647 
		-2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "0BC4796E-42DA-10E2-7409-C8B59BD85952";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[12:18]" -type "float3"  0 0 0.055124812 -0.067742161
		 0.043237567 0.055124644 0 0.07138586 0.055124644 0.05482991 0 0.055124644 0 -0.07138586
		 0.055124644 -0.067742161 -0.043237567 0.055124644 -0.067742161 0 0.055124644;
createNode polySplit -n "polySplit39";
	rename -uid "C1A470D6-450C-72AC-773C-99841E43D82B";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483622 -2147483628 -2147483626 -2147483625 -2147483618 -2147483623 
		-2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "FBD4C9B5-4A86-FFDE-5B4F-2FA0FE0E3705";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0 -0.022055451 ;
	setAttr ".tk[19]" -type "float3" 0.0030771284 0.087494709 -0.022055451 ;
	setAttr ".tk[20]" -type "float3" 0.074991323 0 -0.022055451 ;
	setAttr ".tk[21]" -type "float3" 0.0030771284 -0.087494709 -0.022055451 ;
	setAttr ".tk[22]" -type "float3" -0.085046746 -0.048744131 -0.022055451 ;
	setAttr ".tk[23]" -type "float3" -0.085046746 0 -0.022055451 ;
	setAttr ".tk[24]" -type "float3" -0.085046746 0.048744131 -0.022055451 ;
createNode polySplit -n "polySplit40";
	rename -uid "37A1474E-429B-D140-D9A5-EDA0918549F6";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483645 -2147483644 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit41";
	rename -uid "CA39E36A-4F6A-9D63-B42A-68887068C5B6";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483598 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit42";
	rename -uid "88CFD76D-4E6C-8744-B31A-C6986E46F9D4";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483644 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit43";
	rename -uid "A6F1503B-42B7-BC24-DC5E-53AE5BD552B1";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483598 -2147483596 -2147483644 -2147483595 -2147483597 -2147483599 
		-2147483598;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "4FC1F0F9-493C-EC22-A0EB-2C89CEA3F7BA";
	setAttr ".ics" -type "componentList" 1 "f[30:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.63146244394483642 0 -3.9490996371228269 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81802458 0 -4.2490997 ;
	setAttr ".rs" 33892;
	setAttr ".lt" -type "double3" 0 -4.5793807710961176e-018 -0.075927255460041643 ;
	setAttr ".ls" -type "double3" 1 1 0.65365634351438573 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.60649278419914321 -0.22631597518920898 -4.2490996490437558 ;
	setAttr ".cbx" -type "double3" 1.0295564125746735 0.22631597518920898 -4.2490996490437558 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "A1DFB34B-49C7-7154-A1CF-EB95B640EE4E";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[26:31]" -type "float3"  0.0057417974 0.095831387 0
		 -0.0946583 0.056544468 0 -0.0946583 0 0 -0.0946583 -0.056544468 0 0.0057417974 -0.095831387
		 0 0.088204831 0 0;
createNode polyCone -n "polyCone1";
	rename -uid "48FC37E1-444F-EBFA-CDE5-06A701DF627E";
	setAttr ".r" 0.05;
	setAttr ".h" 0.1;
	setAttr ".cuv" 3;
createNode groupId -n "groupId12";
	rename -uid "4880A690-4428-BD61-7B7F-A19F835AE6A5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "1D937103-4C98-DB63-852A-289D4AEC11E6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "groupId13";
	rename -uid "CC4EA3EC-4A1A-9D01-68EC-F898B948B81C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "68BB1899-4079-E02E-C0FC-D9906418AC17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "39CAE401-43B4-7924-AB93-5C821C118918";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
createNode groupId -n "groupId15";
	rename -uid "221FC8D8-4D08-554B-F6FE-0F9B05CD206B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "353C6FF8-447E-853C-0DD2-A390C733B91B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
createNode groupId -n "groupId16";
	rename -uid "F50B447D-4379-89FA-EAF9-1A8DE99C0E3B";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite4";
	rename -uid "D3040B5D-4A00-8AB7-B414-FDAE037A611F";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode polyTorus -n "polyTorus1";
	rename -uid "52960687-4E01-033C-CB6F-D486EDA41B48";
	setAttr ".r" 0.06;
	setAttr ".sr" 0.01;
	setAttr ".tw" 29.999999999999996;
	setAttr ".sa" 40;
	setAttr ".sh" 3;
createNode polySeparate -n "polySeparate1";
	rename -uid "FC747683-404B-E1DA-EC2B-5C89EEB8A6DF";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId17";
	rename -uid "EE2FD1CA-4A65-440C-BEFD-ACB9B4182E91";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "B294D5A6-4A05-156B-9354-A7B207BF0475";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
createNode groupId -n "groupId18";
	rename -uid "F33B8355-4C59-3ABD-A5C5-D9A8AA73FE77";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "F8F345BF-477D-E9DF-4667-01954A84B2EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
createNode polyUnite -n "polyUnite5";
	rename -uid "368C1698-425E-1216-CABB-359BF3712429";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId19";
	rename -uid "0EF6E032-49D0-EE89-9025-45A3A34F3D22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "4919CDAE-44E1-0ABF-0DFA-67978A31C872";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:119]";
createNode groupId -n "groupId20";
	rename -uid "36C9BC00-4B7E-23B6-5F4B-C694C09746DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "820F6C62-4B0C-D6BA-E0AC-9BAA1BE6B399";
	setAttr ".ihi" 0;
createNode polyMirror -n "polyMirror3";
	rename -uid "E87B4863-41BF-4FF8-4F71-6DBD75B83771";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 162;
	setAttr ".lnf" 323;
createNode polyMirror -n "polyMirror4";
	rename -uid "CECA24BE-488D-5536-7A63-32B475582FA0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 4.0076839340457688 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 21;
	setAttr ".lnf" 41;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "79D29A62-427F-771D-5F18-94BAEB7C573E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:323]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.1229038238525391 2.1229038238525391 2.1229038238525391 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "2F870139-4C75-3AAA-FE35-14A45FF6B04C";
	setAttr ".uopa" yes;
	setAttr -s 86 ".uvtk";
	setAttr ".uvtk[104]" -type "float2" 0.9982636 -0.32271084 ;
	setAttr ".uvtk[105]" -type "float2" 0.99847627 0.25204399 ;
	setAttr ".uvtk[106]" -type "float2" 0.85097253 0.25209859 ;
	setAttr ".uvtk[107]" -type "float2" 0.8507598 -0.32265624 ;
	setAttr ".uvtk[108]" -type "float2" 0.9661622 0.30486137 ;
	setAttr ".uvtk[109]" -type "float2" 0.85099208 0.30490395 ;
	setAttr ".uvtk[110]" -type "float2" 0.70346868 0.25215313 ;
	setAttr ".uvtk[111]" -type "float2" 0.70325619 -0.32260168 ;
	setAttr ".uvtk[112]" -type "float2" 0.73582172 0.30494657 ;
	setAttr ".uvtk[229]" -type "float2" 0.72468096 0.023397416 ;
	setAttr ".uvtk[230]" -type "float2" 0.72468102 0.023397416 ;
	setAttr ".uvtk[231]" -type "float2" 0.72468102 0.023397416 ;
	setAttr ".uvtk[232]" -type "float2" 0.72468096 0.023397416 ;
	setAttr ".uvtk[233]" -type "float2" 0.72468096 0.023397416 ;
	setAttr ".uvtk[234]" -type "float2" 0.72468096 0.023397416 ;
	setAttr ".uvtk[235]" -type "float2" 0.72468102 0.023397416 ;
	setAttr ".uvtk[236]" -type "float2" 0.72468096 0.023397416 ;
	setAttr ".uvtk[237]" -type "float2" 0.72468102 0.023397416 ;
	setAttr ".uvtk[322]" -type "float2" 1.3126223 0.25257224 ;
	setAttr ".uvtk[323]" -type "float2" 1.067551 0.25207651 ;
	setAttr ".uvtk[324]" -type "float2" 1.0687138 -0.32267606 ;
	setAttr ".uvtk[325]" -type "float2" 1.313785 -0.32218033 ;
	setAttr ".uvtk[326]" -type "float2" 1.2623607 0.30527586 ;
	setAttr ".uvtk[327]" -type "float2" 1.0749334 0.30489671 ;
	setAttr ".uvtk[328]" -type "float2" 0.8524363 0.25164133 ;
	setAttr ".uvtk[329]" -type "float2" 0.85359895 -0.32311127 ;
	setAttr ".uvtk[330]" -type "float2" 1.246231 -0.0088821296 ;
	setAttr ".uvtk[331]" -type "float2" 1.2462311 -0.0088821296 ;
	setAttr ".uvtk[332]" -type "float2" 1.2462311 -0.0088821501 ;
	setAttr ".uvtk[333]" -type "float2" 1.246231 -0.0088821501 ;
	setAttr ".uvtk[334]" -type "float2" 1.246231 -0.0088821296 ;
	setAttr ".uvtk[335]" -type "float2" 1.246231 -0.0088821501 ;
	setAttr ".uvtk[336]" -type "float2" 1.246231 -0.0088821501 ;
	setAttr ".uvtk[337]" -type "float2" 1.246231 -0.0088821501 ;
	setAttr ".uvtk[422]" -type "float2" 0.6257869 0.60232967 ;
	setAttr ".uvtk[423]" -type "float2" 0.62519473 0.027575284 ;
	setAttr ".uvtk[424]" -type "float2" 0.87026674 0.027322799 ;
	setAttr ".uvtk[425]" -type "float2" 0.87085921 0.60207731 ;
	setAttr ".uvtk[426]" -type "float2" 1.0859742 0.60185558 ;
	setAttr ".uvtk[427]" -type "float2" 1.0853821 0.02710104 ;
	setAttr ".uvtk[428]" -type "float2" 0.86342376 0.65489018 ;
	setAttr ".uvtk[429]" -type "float2" 0.67599642 0.6550833 ;
	setAttr ".uvtk[430]" -type "float2" 0.32982549 0.023397416 ;
	setAttr ".uvtk[431]" -type "float2" 0.32982549 0.023397416 ;
	setAttr ".uvtk[432]" -type "float2" 0.32982549 0.023397416 ;
	setAttr ".uvtk[433]" -type "float2" 0.32982549 0.023397416 ;
	setAttr ".uvtk[434]" -type "float2" 0.32982549 0.023397475 ;
	setAttr ".uvtk[435]" -type "float2" 0.32982549 0.023397475 ;
	setAttr ".uvtk[436]" -type "float2" 0.32982549 0.023397416 ;
	setAttr ".uvtk[437]" -type "float2" 0.32982549 0.023397416 ;
	setAttr ".uvtk[530]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[531]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[532]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[533]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[534]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[535]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[536]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[537]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[538]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[539]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[540]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[541]" -type "float2" -0.74800402 0 ;
	setAttr ".uvtk[640]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[641]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[642]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[643]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[644]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[645]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[646]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[647]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[648]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[649]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[650]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[651]" -type "float2" -0.52939397 0 ;
	setAttr ".uvtk[676]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[677]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[678]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[679]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[680]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[681]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[688]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[689]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[690]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[691]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[692]" -type "float2" -0.79800403 -0.24470691 ;
	setAttr ".uvtk[693]" -type "float2" -0.79800403 -0.24470691 ;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "F99F7133-4361-6B04-2207-A8922FD58C34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:323]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.1229038238525391 2.1229038238525391 2.1229038238525391 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "DD7FFC84-4390-0B8F-1C65-FF8A0AAA6E18";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[330]" -type "float2" 0.79614425 0 ;
	setAttr ".uvtk[331]" -type "float2" 0.79614437 0 ;
	setAttr ".uvtk[332]" -type "float2" 0.79614437 0 ;
	setAttr ".uvtk[333]" -type "float2" 0.79614425 0 ;
	setAttr ".uvtk[334]" -type "float2" 0.79614425 0 ;
	setAttr ".uvtk[335]" -type "float2" 0.79614425 0 ;
	setAttr ".uvtk[336]" -type "float2" 0.79614437 0 ;
	setAttr ".uvtk[337]" -type "float2" 0.79614437 0 ;
	setAttr ".uvtk[430]" -type "float2" 0.27982545 0 ;
	setAttr ".uvtk[431]" -type "float2" 0.27982545 0 ;
	setAttr ".uvtk[432]" -type "float2" 0.27982545 0 ;
	setAttr ".uvtk[433]" -type "float2" 0.27982545 0 ;
	setAttr ".uvtk[434]" -type "float2" 0.27982545 0 ;
	setAttr ".uvtk[435]" -type "float2" 0.27982545 0 ;
	setAttr ".uvtk[436]" -type "float2" 0.27982545 0 ;
	setAttr ".uvtk[437]" -type "float2" 0.27982545 0 ;
createNode polyFlipUV -n "polyFlipUV1";
	rename -uid "E2083BA3-43EC-1B04-5061-309FBAE6BF5D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[125:126]" "f[131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "A98B9F05-48D2-6B38-02D4-0DB58226373B";
	setAttr ".uopa" yes;
	setAttr -s 32 ".uvtk";
	setAttr ".uvtk[322]" -type "float2" 1.0829865 0 ;
	setAttr ".uvtk[323]" -type "float2" 1.0829865 0 ;
	setAttr ".uvtk[324]" -type "float2" 1.0829865 0 ;
	setAttr ".uvtk[325]" -type "float2" 1.0829865 0 ;
	setAttr ".uvtk[326]" -type "float2" 1.0829865 0 ;
	setAttr ".uvtk[327]" -type "float2" 1.0829865 0 ;
	setAttr ".uvtk[328]" -type "float2" 1.0829865 0 ;
	setAttr ".uvtk[329]" -type "float2" 1.0829865 0 ;
	setAttr ".uvtk[330]" -type "float2" 0 0.34111789 ;
	setAttr ".uvtk[331]" -type "float2" 0 0.34111789 ;
	setAttr ".uvtk[332]" -type "float2" 0 0.34111792 ;
	setAttr ".uvtk[333]" -type "float2" 0 0.34111792 ;
	setAttr ".uvtk[334]" -type "float2" 0 0.34111789 ;
	setAttr ".uvtk[335]" -type "float2" 0 0.34111792 ;
	setAttr ".uvtk[336]" -type "float2" 0 0.34111792 ;
	setAttr ".uvtk[337]" -type "float2" 0 0.34111792 ;
	setAttr ".uvtk[422]" -type "float2" 0.7555759 0 ;
	setAttr ".uvtk[423]" -type "float2" 0.7555759 0 ;
	setAttr ".uvtk[424]" -type "float2" 0.75557595 0 ;
	setAttr ".uvtk[425]" -type "float2" 0.75557595 0 ;
	setAttr ".uvtk[426]" -type "float2" 0.7555759 0 ;
	setAttr ".uvtk[427]" -type "float2" 0.7555759 0 ;
	setAttr ".uvtk[428]" -type "float2" 0.7555759 0 ;
	setAttr ".uvtk[429]" -type "float2" 0.75557595 0 ;
	setAttr ".uvtk[430]" -type "float2" 0 0.023397416 ;
	setAttr ".uvtk[431]" -type "float2" 0 0.023397386 ;
	setAttr ".uvtk[432]" -type "float2" 0 0.023397386 ;
	setAttr ".uvtk[433]" -type "float2" 0 0.023397416 ;
	setAttr ".uvtk[434]" -type "float2" 0 0.023397446 ;
	setAttr ".uvtk[435]" -type "float2" 0 0.023397446 ;
	setAttr ".uvtk[436]" -type "float2" 0 0.023397386 ;
	setAttr ".uvtk[437]" -type "float2" 0 0.023397416 ;
createNode polyFlipUV -n "polyFlipUV2";
	rename -uid "9F10D5DD-4C33-DD74-FB68-CD9453404842";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[284]" "f[289]" "f[292]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "182A3125-4274-4992-9AEA-85B5B691DA82";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[422:429]" -type "float2" -0.30000004 0 -0.30000004
		 0 -0.29999992 0 -0.29999992 0 -0.30000004 0 -0.30000004 0 -0.29999992 0 -0.29999992
		 0;
createNode polyFlipUV -n "polyFlipUV3";
	rename -uid "F297DCBF-4BBC-FE26-3F3A-B284571C188B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[122]" "f[127]" "f[130]" "f[284]" "f[289]" "f[292]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyFlipUV -n "polyFlipUV4";
	rename -uid "6177AB43-4025-D52C-03F8-D7B18135A0B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[122]" "f[127]" "f[130]" "f[284]" "f[289]" "f[292]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "E2C0A185-4D4C-F6DC-16CA-528CCA922FBC";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk";
	setAttr ".uvtk[104]" -type "float2" 0.55078954 0 ;
	setAttr ".uvtk[105]" -type "float2" 0.55078954 0 ;
	setAttr ".uvtk[106]" -type "float2" 0.55078954 0 ;
	setAttr ".uvtk[107]" -type "float2" 0.55078954 0 ;
	setAttr ".uvtk[108]" -type "float2" 0.55078959 0 ;
	setAttr ".uvtk[109]" -type "float2" 0.55078954 0 ;
	setAttr ".uvtk[110]" -type "float2" 0.55078959 0 ;
	setAttr ".uvtk[111]" -type "float2" 0.55078959 0 ;
	setAttr ".uvtk[112]" -type "float2" 0.55078954 0 ;
	setAttr ".uvtk[229]" -type "float2" 0.42468101 -0.57660258 ;
	setAttr ".uvtk[230]" -type "float2" 0.42468101 -0.57660258 ;
	setAttr ".uvtk[231]" -type "float2" 0.42468101 -0.57660258 ;
	setAttr ".uvtk[232]" -type "float2" 0.42468101 -0.57660258 ;
	setAttr ".uvtk[233]" -type "float2" 0.42468107 -0.57660258 ;
	setAttr ".uvtk[234]" -type "float2" 0.42468107 -0.57660258 ;
	setAttr ".uvtk[235]" -type "float2" 0.42468101 -0.57660258 ;
	setAttr ".uvtk[236]" -type "float2" 0.42468095 -0.57660258 ;
	setAttr ".uvtk[237]" -type "float2" 0.42468101 -0.57660258 ;
	setAttr ".uvtk[322]" -type "float2" -0.049999915 0.34111789 ;
	setAttr ".uvtk[323]" -type "float2" -0.049999915 0.34111789 ;
	setAttr ".uvtk[324]" -type "float2" -0.049999915 0.34111792 ;
	setAttr ".uvtk[325]" -type "float2" -0.049999915 0.34111792 ;
	setAttr ".uvtk[326]" -type "float2" -0.049999915 0.34111792 ;
	setAttr ".uvtk[327]" -type "float2" -0.049999915 0.34111792 ;
	setAttr ".uvtk[328]" -type "float2" -0.049999915 0.34111789 ;
	setAttr ".uvtk[329]" -type "float2" -0.049999915 0.34111792 ;
	setAttr ".uvtk[422]" -type "float2" -0.049999915 0.34111789 ;
	setAttr ".uvtk[423]" -type "float2" -0.049999915 0.34111792 ;
	setAttr ".uvtk[424]" -type "float2" -0.049999915 0.34111792 ;
	setAttr ".uvtk[425]" -type "float2" -0.049999915 0.34111789 ;
	setAttr ".uvtk[426]" -type "float2" -0.049999915 0.34111789 ;
	setAttr ".uvtk[427]" -type "float2" -0.049999915 0.34111792 ;
	setAttr ".uvtk[428]" -type "float2" -0.049999915 0.34111792 ;
	setAttr ".uvtk[429]" -type "float2" -0.049999915 0.34111792 ;
createNode polyFlipUV -n "polyFlipUV5";
	rename -uid "379789AC-4562-7E4E-32A1-C69A28FC8172";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[290:291]" "f[294:295]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "141166F7-4303-0268-F34B-BD83CC937DD2";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk";
	setAttr ".uvtk[104]" -type "float2" 0 -0.008882124 ;
	setAttr ".uvtk[105]" -type "float2" 0 -0.008882124 ;
	setAttr ".uvtk[106]" -type "float2" 0 -0.008882124 ;
	setAttr ".uvtk[107]" -type "float2" 0 -0.008882124 ;
	setAttr ".uvtk[108]" -type "float2" 0 -0.0088821258 ;
	setAttr ".uvtk[109]" -type "float2" 0 -0.0088821258 ;
	setAttr ".uvtk[110]" -type "float2" 0 -0.008882124 ;
	setAttr ".uvtk[111]" -type "float2" 0 -0.008882124 ;
	setAttr ".uvtk[112]" -type "float2" 0 -0.0088821258 ;
	setAttr ".uvtk[229]" -type "float2" 0 0.25 ;
	setAttr ".uvtk[230]" -type "float2" 0 0.25 ;
	setAttr ".uvtk[231]" -type "float2" 0 0.25 ;
	setAttr ".uvtk[232]" -type "float2" 0 0.25 ;
	setAttr ".uvtk[233]" -type "float2" 0 0.25 ;
	setAttr ".uvtk[234]" -type "float2" 0 0.25 ;
	setAttr ".uvtk[235]" -type "float2" 0 0.25 ;
	setAttr ".uvtk[236]" -type "float2" 0 0.25 ;
	setAttr ".uvtk[237]" -type "float2" 0 0.25 ;
	setAttr ".uvtk[676]" -type "float2" 0.48630095 0 ;
	setAttr ".uvtk[677]" -type "float2" 0.48630095 0 ;
	setAttr ".uvtk[678]" -type "float2" 0.48630095 0 ;
	setAttr ".uvtk[679]" -type "float2" 0.48630095 0 ;
	setAttr ".uvtk[680]" -type "float2" 0.48630095 0 ;
	setAttr ".uvtk[681]" -type "float2" 0.48630095 0 ;
	setAttr ".uvtk[688]" -type "float2" 0.11769094 0 ;
	setAttr ".uvtk[689]" -type "float2" 0.11769094 0 ;
	setAttr ".uvtk[690]" -type "float2" 0.117691 0 ;
	setAttr ".uvtk[691]" -type "float2" 0.117691 0 ;
	setAttr ".uvtk[692]" -type "float2" 0.117691 0 ;
	setAttr ".uvtk[693]" -type "float2" 0.11769094 0 ;
createNode polyFlipUV -n "polyFlipUV6";
	rename -uid "E120D6B1-4737-0B16-1629-A882C3F65772";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[282:283]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "A8EC6FDF-48ED-3CF1-AAC8-2BBD3E256BCA";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[676:681]" -type "float2" -0.099999964 0 -0.099999964
		 0 -0.099999964 0 -0.099999964 0 -0.099999964 0 -0.099999964 0;
createNode polyFlipUV -n "polyFlipUV7";
	rename -uid "4E4D9367-454E-FFDC-9D94-3588CB333E99";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[123:124]" "f[146:149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "6967AC3B-4095-AC2A-63F5-0E850F295930";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[530]" -type "float2" -0.24800399 0 ;
	setAttr ".uvtk[531]" -type "float2" -0.248004 0 ;
	setAttr ".uvtk[532]" -type "float2" -0.248004 0 ;
	setAttr ".uvtk[533]" -type "float2" -0.24800399 0 ;
	setAttr ".uvtk[534]" -type "float2" -0.248004 0 ;
	setAttr ".uvtk[535]" -type "float2" -0.248004 0 ;
	setAttr ".uvtk[536]" -type "float2" -0.24800399 0 ;
	setAttr ".uvtk[537]" -type "float2" -0.24800399 0 ;
	setAttr ".uvtk[538]" -type "float2" -0.248004 0 ;
	setAttr ".uvtk[539]" -type "float2" -0.248004 0 ;
	setAttr ".uvtk[540]" -type "float2" -0.24800399 0 ;
	setAttr ".uvtk[541]" -type "float2" -0.24800399 0 ;
	setAttr ".uvtk[640]" -type "float2" 0.020606034 0 ;
	setAttr ".uvtk[641]" -type "float2" 0.020606004 0 ;
	setAttr ".uvtk[642]" -type "float2" 0.020606019 0 ;
	setAttr ".uvtk[643]" -type "float2" 0.020606019 0 ;
	setAttr ".uvtk[644]" -type "float2" 0.020606034 0 ;
	setAttr ".uvtk[645]" -type "float2" 0.020606004 0 ;
	setAttr ".uvtk[646]" -type "float2" 0.020606019 0 ;
	setAttr ".uvtk[647]" -type "float2" 0.020606019 0 ;
	setAttr ".uvtk[648]" -type "float2" 0.020606034 0 ;
	setAttr ".uvtk[649]" -type "float2" 0.020606004 0 ;
	setAttr ".uvtk[650]" -type "float2" 0.020606019 0 ;
	setAttr ".uvtk[651]" -type "float2" 0.020606019 0 ;
createNode polyFlipUV -n "polyFlipUV8";
	rename -uid "33A6EFAB-4753-714A-E93F-9F8F73E162DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[312:317]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "A09AD972-4359-57B9-60C7-BF869530AA05";
	setAttr ".uopa" yes;
	setAttr -s 46 ".uvtk";
	setAttr ".uvtk[322]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[323]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[324]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[325]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[326]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[327]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[328]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[329]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[330]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[331]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[332]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[333]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[334]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[335]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[336]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[337]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[422]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[423]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[424]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[425]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[426]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[427]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[428]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[429]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[430]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[431]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[432]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[433]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[434]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[435]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[436]" -type "float2" 0.15000005 -0.050000008 ;
	setAttr ".uvtk[437]" -type "float2" 0.15000005 -0.050000038 ;
	setAttr ".uvtk[553]" -type "float2" 1.4467177 0.067961641 ;
	setAttr ".uvtk[554]" -type "float2" 1.4467177 0.067961641 ;
	setAttr ".uvtk[555]" -type "float2" 1.4467177 0.067961641 ;
	setAttr ".uvtk[556]" -type "float2" 1.4467177 0.067961641 ;
	setAttr ".uvtk[557]" -type "float2" 1.4467177 0.067961641 ;
	setAttr ".uvtk[558]" -type "float2" 1.4467177 0.067961641 ;
	setAttr ".uvtk[559]" -type "float2" 1.4467177 0.067961641 ;
	setAttr ".uvtk[663]" -type "float2" 1.2368114 0.067961641 ;
	setAttr ".uvtk[664]" -type "float2" 1.2368113 0.067961641 ;
	setAttr ".uvtk[665]" -type "float2" 1.2368113 0.067961641 ;
	setAttr ".uvtk[666]" -type "float2" 1.2368114 0.067961641 ;
	setAttr ".uvtk[667]" -type "float2" 1.2368113 0.067961641 ;
	setAttr ".uvtk[668]" -type "float2" 1.2368114 0.067961641 ;
	setAttr ".uvtk[669]" -type "float2" 1.2368113 0.067961641 ;
createNode polyFlipUV -n "polyFlipUV9";
	rename -uid "6A7DB479-4035-AB84-E4C0-1DA11D18BADD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[122]" "f[125:127]" "f[130:131]" "f[284]" "f[287:289]" "f[292:293]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "3926F006-4FB6-732C-0517-9D9C63C6EDEF";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk";
	setAttr ".uvtk[104]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[105]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[106]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[107]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[108]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[109]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[110]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[111]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[112]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[229]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[230]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[231]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[232]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[233]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[234]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[235]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[236]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[237]" -type "float2" 0 7.1711836e-009 ;
	setAttr ".uvtk[322]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[323]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[324]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[325]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[326]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[327]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[328]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[329]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[330]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[331]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[332]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[333]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[334]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[335]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[336]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[337]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[422]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[423]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[424]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[425]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[426]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[427]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[428]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[429]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[430]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[431]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[432]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[433]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[434]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[435]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[436]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[437]" -type "float2" 0 -0.29999995 ;
	setAttr ".uvtk[553]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[554]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[555]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[556]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[557]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[558]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[559]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[663]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[664]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[665]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[666]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[667]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[668]" -type "float2" -0.25 -0.29999998 ;
	setAttr ".uvtk[669]" -type "float2" -0.25 -0.29999998 ;
createNode polyFlipUV -n "polyFlipUV10";
	rename -uid "492A11EF-4D2D-BABD-E40E-28B00F86CF49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[123:124]" "f[146:149]" "f[285:286]" "f[308:311]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "8BAE0E33-4172-B551-828C-D9A9589CC4FA";
	setAttr ".uopa" yes;
	setAttr -s 58 ".uvtk";
	setAttr ".uvtk[530]" -type "float2" 1.35 0.30529314 ;
	setAttr ".uvtk[531]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[532]" -type "float2" 1.35 0.30529314 ;
	setAttr ".uvtk[533]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[534]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[535]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[536]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[537]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[538]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[539]" -type "float2" 1.35 0.30529314 ;
	setAttr ".uvtk[540]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[541]" -type "float2" 1.35 0.30529314 ;
	setAttr ".uvtk[542]" -type "float2" 0.42131749 0 ;
	setAttr ".uvtk[543]" -type "float2" 0.42131749 0 ;
	setAttr ".uvtk[544]" -type "float2" 0.42131749 0 ;
	setAttr ".uvtk[545]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[546]" -type "float2" 0.42131749 0 ;
	setAttr ".uvtk[547]" -type "float2" 0.42131749 0 ;
	setAttr ".uvtk[548]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[549]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[550]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[551]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[552]" -type "float2" 0.42131749 0 ;
	setAttr ".uvtk[640]" -type "float2" 1.35 0.30529314 ;
	setAttr ".uvtk[641]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[642]" -type "float2" 1.35 0.30529314 ;
	setAttr ".uvtk[643]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[644]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[645]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[646]" -type "float2" 1.3499999 0.30529308 ;
	setAttr ".uvtk[647]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[648]" -type "float2" 1.35 0.30529314 ;
	setAttr ".uvtk[649]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[650]" -type "float2" 1.35 0.30529308 ;
	setAttr ".uvtk[651]" -type "float2" 1.35 0.30529314 ;
	setAttr ".uvtk[652]" -type "float2" 0.42131749 0 ;
	setAttr ".uvtk[653]" -type "float2" 0.42131743 0 ;
	setAttr ".uvtk[654]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[655]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[656]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[657]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[658]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[659]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[660]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[661]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[662]" -type "float2" 0.42131755 0 ;
	setAttr ".uvtk[676]" -type "float2" 1 0.30529314 ;
	setAttr ".uvtk[677]" -type "float2" 1 0.30529314 ;
	setAttr ".uvtk[678]" -type "float2" 1 0.30529314 ;
	setAttr ".uvtk[679]" -type "float2" 1 0.30529308 ;
	setAttr ".uvtk[680]" -type "float2" 1 0.30529314 ;
	setAttr ".uvtk[681]" -type "float2" 1 0.30529308 ;
	setAttr ".uvtk[688]" -type "float2" 1 0.30529314 ;
	setAttr ".uvtk[689]" -type "float2" 1 0.30529308 ;
	setAttr ".uvtk[690]" -type "float2" 1 0.30529314 ;
	setAttr ".uvtk[691]" -type "float2" 1 0.30529314 ;
	setAttr ".uvtk[692]" -type "float2" 1 0.30529314 ;
	setAttr ".uvtk[693]" -type "float2" 1 0.30529308 ;
createNode polyFlipUV -n "polyFlipUV11";
	rename -uid "3D72D956-42BB-BE66-D945-55BD09235ED6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[296]" "f[299]" "f[302:307]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "48851B68-471C-277D-06C5-5C9EC07E66D2";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk";
	setAttr ".uvtk[542]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[543]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[544]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[545]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[546]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[547]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[548]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[549]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[550]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[551]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[552]" -type "float2" -0.0038008811 0 ;
	setAttr ".uvtk[652]" -type "float2" -0.19619909 0 ;
	setAttr ".uvtk[653]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[654]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[655]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[656]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[657]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[658]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[659]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[660]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[661]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[662]" -type "float2" -0.19619897 0 ;
	setAttr ".uvtk[682]" -type "float2" -0.22135596 0 ;
	setAttr ".uvtk[683]" -type "float2" -0.22135596 0 ;
	setAttr ".uvtk[684]" -type "float2" -0.22135596 0 ;
	setAttr ".uvtk[685]" -type "float2" -0.22135596 0 ;
	setAttr ".uvtk[686]" -type "float2" -0.22135596 0 ;
	setAttr ".uvtk[687]" -type "float2" -0.22135596 0 ;
createNode polyFlipUV -n "polyFlipUV12";
	rename -uid "6D88505A-4128-271C-FD65-67BA005ADAF4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[297:298]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "D44D59A1-4392-96E6-39E6-42A5BE00A57B";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[344]" -type "float2" 0.11597814 -0.42495742 ;
	setAttr ".uvtk[345]" -type "float2" 0.11597814 -0.42495742 ;
	setAttr ".uvtk[346]" -type "float2" 0.11597814 -0.42495742 ;
	setAttr ".uvtk[347]" -type "float2" 0.11597814 -0.42495742 ;
	setAttr ".uvtk[348]" -type "float2" 0.11597814 -0.42495742 ;
	setAttr ".uvtk[349]" -type "float2" 0.11597814 -0.42495742 ;
	setAttr ".uvtk[444]" -type "float2" 0 -0.42495742 ;
	setAttr ".uvtk[445]" -type "float2" 0 -0.42495742 ;
	setAttr ".uvtk[446]" -type "float2" 0 -0.42495742 ;
	setAttr ".uvtk[447]" -type "float2" 0 -0.42495742 ;
	setAttr ".uvtk[448]" -type "float2" 0 -0.42495742 ;
	setAttr ".uvtk[449]" -type "float2" 0 -0.42495742 ;
	setAttr ".uvtk[670]" -type "float2" 0.42104241 0 ;
	setAttr ".uvtk[671]" -type "float2" 0.42104241 0 ;
	setAttr ".uvtk[672]" -type "float2" 0.42104241 0 ;
	setAttr ".uvtk[673]" -type "float2" 0.42104241 0 ;
	setAttr ".uvtk[674]" -type "float2" 0.42104241 0 ;
	setAttr ".uvtk[675]" -type "float2" 0.42104241 0 ;
	setAttr ".uvtk[682]" -type "float2" 0.4499999 0 ;
	setAttr ".uvtk[683]" -type "float2" 0.44999996 0 ;
	setAttr ".uvtk[684]" -type "float2" 0.44999996 0 ;
	setAttr ".uvtk[685]" -type "float2" 0.4499999 0 ;
	setAttr ".uvtk[686]" -type "float2" 0.4499999 0 ;
	setAttr ".uvtk[687]" -type "float2" 0.44999996 0 ;
createNode polyFlipUV -n "polyFlipUV13";
	rename -uid "B0785A30-4A9B-35C0-0306-DBA6C6C12386";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[321:322]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "CBD9E175-4377-B13C-2ECC-27B155ED6652";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[338]" -type "float2" 0.11022972 0 ;
	setAttr ".uvtk[339]" -type "float2" 0.11022972 0 ;
	setAttr ".uvtk[340]" -type "float2" 0.11022972 0 ;
	setAttr ".uvtk[341]" -type "float2" 0.11022972 0 ;
	setAttr ".uvtk[342]" -type "float2" 0.11022972 0 ;
	setAttr ".uvtk[343]" -type "float2" 0.11022972 0 ;
	setAttr ".uvtk[344]" -type "float2" 0.10000008 7.4505806e-009 ;
	setAttr ".uvtk[345]" -type "float2" 0.10000008 2.2351742e-008 ;
	setAttr ".uvtk[346]" -type "float2" 0.10000008 2.2351742e-008 ;
	setAttr ".uvtk[347]" -type "float2" 0.10000008 7.4505806e-009 ;
	setAttr ".uvtk[348]" -type "float2" 0.10000008 -7.4505806e-009 ;
	setAttr ".uvtk[349]" -type "float2" 0.10000008 -7.4505806e-009 ;
	setAttr ".uvtk[438]" -type "float2" 0.17172652 0 ;
	setAttr ".uvtk[439]" -type "float2" 0.17172652 0 ;
	setAttr ".uvtk[440]" -type "float2" 0.17172652 0 ;
	setAttr ".uvtk[441]" -type "float2" 0.17172652 0 ;
	setAttr ".uvtk[442]" -type "float2" 0.17172652 0 ;
	setAttr ".uvtk[443]" -type "float2" 0.17172652 0 ;
	setAttr ".uvtk[444]" -type "float2" 0.12747492 3.7252903e-009 ;
	setAttr ".uvtk[445]" -type "float2" 0.12747498 3.7252903e-009 ;
	setAttr ".uvtk[446]" -type "float2" 0.12747498 3.7252903e-009 ;
	setAttr ".uvtk[447]" -type "float2" 0.12747492 3.7252903e-009 ;
	setAttr ".uvtk[448]" -type "float2" 0.12747492 3.7252903e-009 ;
	setAttr ".uvtk[449]" -type "float2" 0.12747498 3.7252903e-009 ;
createNode polyFlipUV -n "polyFlipUV14";
	rename -uid "CB96D37F-450E-0829-B640-79AF700F62CA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[156]" "f[161]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "F8EBB65C-47D3-BD21-DEE5-04BCD0CC087A";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[338:343]" -type "float2" 0.15000001 0 0.15000001 0
		 0.15000001 0 0.15000001 0 0.15000001 0 0.15000001 0;
createNode polyFlipUV -n "polyFlipUV15";
	rename -uid "18111755-45EA-A243-5105-059CA3DDEC53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[156]" "f[161]" "f[318]" "f[323]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "E05AF1FA-4FE7-7277-5530-A9BB96550902";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[119]" -type "float2" 0 -0.69417214 ;
	setAttr ".uvtk[120]" -type "float2" 0 -0.69417214 ;
	setAttr ".uvtk[121]" -type "float2" 0 -0.69417214 ;
	setAttr ".uvtk[122]" -type "float2" 0 -0.69417214 ;
	setAttr ".uvtk[123]" -type "float2" 0 -0.69417214 ;
	setAttr ".uvtk[124]" -type "float2" 0 -0.69417214 ;
	setAttr ".uvtk[244]" -type "float2" 0 -0.64417213 ;
	setAttr ".uvtk[245]" -type "float2" 0 -0.64417213 ;
	setAttr ".uvtk[246]" -type "float2" 0 -0.64417213 ;
	setAttr ".uvtk[247]" -type "float2" 0 -0.64417213 ;
	setAttr ".uvtk[248]" -type "float2" 0 -0.64417213 ;
	setAttr ".uvtk[249]" -type "float2" 0 -0.64417213 ;
	setAttr ".uvtk[338]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[339]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[340]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[341]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[342]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[343]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[438]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[439]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[440]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[441]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[442]" -type "float2" 0 -0.42495739 ;
	setAttr ".uvtk[443]" -type "float2" 0 -0.42495739 ;
createNode polyFlipUV -n "polyFlipUV16";
	rename -uid "1B0AD396-4A3F-8D22-5A86-BBA5CCA98444";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[157:158]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "4FCE7739-4A9C-4A3E-B77C-36817922D295";
	setAttr ".uopa" yes;
	setAttr -s 224 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[1]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[2]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[3]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[4]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[5]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[6]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[7]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[8]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[9]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[10]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[11]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[12]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[13]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[14]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[15]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[16]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[17]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[18]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[19]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[20]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[21]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[22]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[23]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[24]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[25]" -type "float2" 0.06232471 0 ;
	setAttr ".uvtk[119]" -type "float2" 0.16715127 0.10000003 ;
	setAttr ".uvtk[120]" -type "float2" 0.16715127 0.10000003 ;
	setAttr ".uvtk[121]" -type "float2" 0.16715127 0.10000003 ;
	setAttr ".uvtk[122]" -type "float2" 0.16715127 0.10000003 ;
	setAttr ".uvtk[123]" -type "float2" 0.16715127 0.10000005 ;
	setAttr ".uvtk[124]" -type "float2" 0.16715127 0.10000005 ;
	setAttr ".uvtk[151]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[152]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[153]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[154]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[155]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[156]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[157]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[158]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[159]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[160]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[161]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[162]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[163]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[164]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[165]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[166]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[167]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[168]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[169]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[170]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[171]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[172]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[173]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[174]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[175]" -type "float2" 0.13399468 0.053747199 ;
	setAttr ".uvtk[176]" -type "float2" 0.13399468 0.05374714 ;
	setAttr ".uvtk[244]" -type "float2" 0.2095743 0.049999997 ;
	setAttr ".uvtk[245]" -type "float2" 0.20957421 0.049999997 ;
	setAttr ".uvtk[246]" -type "float2" 0.20957421 0.049999982 ;
	setAttr ".uvtk[247]" -type "float2" 0.2095743 0.049999982 ;
	setAttr ".uvtk[248]" -type "float2" 0.2095743 0.049999997 ;
	setAttr ".uvtk[249]" -type "float2" 0.20957421 0.049999997 ;
	setAttr ".uvtk[450]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[451]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[452]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[453]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[454]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[455]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[456]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[457]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[458]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[459]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[460]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[461]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[462]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[463]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[464]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[465]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[466]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[467]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[468]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[469]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[470]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[471]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[472]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[473]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[474]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[475]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[476]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[477]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[478]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[479]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[480]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[481]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[482]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[483]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[484]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[485]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[486]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[487]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[488]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[489]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[490]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[491]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[492]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[493]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[494]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[495]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[496]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[497]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[498]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[499]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[500]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[501]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[502]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[503]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[504]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[505]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[506]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[507]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[508]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[509]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[510]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[511]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[512]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[513]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[514]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[515]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[516]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[517]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[518]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[519]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[520]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[521]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[522]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[523]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[524]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[525]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[526]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[527]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[528]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[529]" -type "float2" -0.0035924683 0 ;
	setAttr ".uvtk[560]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[561]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[562]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[563]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[564]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[565]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[566]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[567]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[568]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[569]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[570]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[571]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[572]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[573]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[574]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[575]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[576]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[577]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[578]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[579]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[580]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[581]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[582]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[583]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[584]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[585]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[586]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[587]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[588]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[589]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[590]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[591]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[592]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[593]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[594]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[595]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[596]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[597]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[598]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[599]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[600]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[601]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[602]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[603]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[604]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[605]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[606]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[607]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[608]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[609]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[610]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[611]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[612]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[613]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[614]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[615]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[616]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[617]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[618]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[619]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[620]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[621]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[622]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[623]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[624]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[625]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[626]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[627]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[628]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[629]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[630]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[631]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[632]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[633]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[634]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[635]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[636]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[637]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[638]" -type "float2" 0.16572231 0 ;
	setAttr ".uvtk[639]" -type "float2" 0.16572231 0 ;
createNode polyFlipUV -n "polyFlipUV17";
	rename -uid "56FB506E-4EA0-C58B-02A3-D0B5E186B7C2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[53:64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "21ECDD5F-449A-BDB4-7875-848C29A58C41";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk[26:51]" -type "float2" 0.086214758 -0.00078924571
		 0.086214758 -0.00078924571 0.086214758 -0.00078924571 0.086214758 -0.00078924571
		 0.086214758 -0.00078924571 0.086214758 -0.00078924571 0.086214758 -0.00078924571
		 0.086214758 -0.00078924571 0.086214758 -0.00078924571 0.086214758 -0.00078924571
		 0.086214758 -0.00078924571 0.086214758 -0.00078924571 0.086214758 -0.00078924571
		 0.086214758 -0.00078924571 0.086214758 -0.00078924571 0.086214758 -0.00078924571
		 0.086214758 -0.00078924571 0.086214758 -0.00078924571 0.086214758 -0.00078924571
		 0.086214758 -0.00078924571 0.086214758 -0.00078924571 0.086214758 -0.00078924571
		 0.086214758 -0.00078924571 0.086214758 -0.00078924571 0.086214758 -0.00078924571
		 0.086214758 -0.00078924571;
createNode polyFlipUV -n "polyFlipUV18";
	rename -uid "D0EB0079-420D-3B13-F37E-C396E667D388";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[202:206]" "f[235:241]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "CABF7645-407C-23A0-DE5A-E0AA87FEE0E6";
	setAttr ".uopa" yes;
	setAttr -s 130 ".uvtk";
	setAttr ".uvtk[52]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[53]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[54]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[55]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[56]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[57]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[58]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[59]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[60]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[61]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[62]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[63]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[64]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[65]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[66]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[67]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[68]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[69]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[70]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[71]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[72]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[73]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[74]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[75]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[76]" -type "float2" 0.24273075 0.062076885 ;
	setAttr ".uvtk[77]" -type "float2" 0.24273069 0.062076885 ;
	setAttr ".uvtk[78]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[79]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[80]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[81]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[82]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[83]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[84]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[85]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[86]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[87]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[88]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[89]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[90]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[91]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[92]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[93]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[94]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[95]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[96]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[97]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[98]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[99]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[100]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[101]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[102]" -type "float2" 0.16662063 0.012076804 ;
	setAttr ".uvtk[103]" -type "float2" 0.16662066 0.012076804 ;
	setAttr ".uvtk[125]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[126]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[127]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[128]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[129]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[130]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[131]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[132]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[133]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[134]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[135]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[136]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[137]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[138]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[139]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[140]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[141]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[142]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[143]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[144]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[145]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[146]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[147]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[148]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[149]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[150]" -type "float2" 0.11010474 -0.00078920682 ;
	setAttr ".uvtk[177]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[178]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[179]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[180]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[181]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[182]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[183]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[184]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[185]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[186]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[187]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[188]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[189]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[190]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[191]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[192]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[193]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[194]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[195]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[196]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[197]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[198]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[199]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[200]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[201]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[202]" -type "float2" 0.19051075 -0.0020850301 ;
	setAttr ".uvtk[203]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[204]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[205]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[206]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[207]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[208]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[209]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[210]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[211]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[212]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[213]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[214]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[215]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[216]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[217]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[218]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[219]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[220]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[221]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[222]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[223]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[224]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[225]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[226]" -type "float2" 0.16440067 -0.0020850543 ;
	setAttr ".uvtk[227]" -type "float2" 0.1644007 -0.0020850543 ;
	setAttr ".uvtk[228]" -type "float2" 0.16440067 -0.0020850543 ;
createNode polyFlipUV -n "polyFlipUV19";
	rename -uid "A6C08773-4224-B4BD-2B73-BE86168BDB07";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[255:266]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "A5939551-4B14-3AB1-522C-408DFC92E3FC";
	setAttr ".uopa" yes;
	setAttr -s 38 ".uvtk";
	setAttr ".uvtk[113]" -type "float2" 0.88465589 -0.10196048 ;
	setAttr ".uvtk[114]" -type "float2" 0.88465589 -0.10196048 ;
	setAttr ".uvtk[115]" -type "float2" 0.88465595 -0.10196048 ;
	setAttr ".uvtk[116]" -type "float2" 0.88465595 -0.10196048 ;
	setAttr ".uvtk[117]" -type "float2" 0.88465589 -0.10196048 ;
	setAttr ".uvtk[118]" -type "float2" 0.88465595 -0.10196048 ;
	setAttr ".uvtk[203]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[204]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[205]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[206]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[207]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[208]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[209]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[210]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[211]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[212]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[213]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[214]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[215]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[216]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[217]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[218]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[219]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[220]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[221]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[222]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[223]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[224]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[225]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[226]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[227]" -type "float2" 0.050000075 3.7252903e-009 ;
	setAttr ".uvtk[228]" -type "float2" 0.050000075 -5.5879354e-008 ;
	setAttr ".uvtk[238]" -type "float2" 0.95127618 -0.1019605 ;
	setAttr ".uvtk[239]" -type "float2" 0.95127618 -0.1019605 ;
	setAttr ".uvtk[240]" -type "float2" 0.95127618 -0.1019605 ;
	setAttr ".uvtk[241]" -type "float2" 0.95127618 -0.1019605 ;
	setAttr ".uvtk[242]" -type "float2" 0.95127618 -0.1019605 ;
	setAttr ".uvtk[243]" -type "float2" 0.95127618 -0.1019605 ;
createNode polyFlipUV -n "polyFlipUV20";
	rename -uid "A586C0C0-4636-80F2-EEF5-D1BCFA6B62AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[300:301]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "882A607B-42B6-90C1-DC88-C09F6028C7D7";
	setAttr ".uopa" yes;
	setAttr -s 42 ".uvtk";
	setAttr ".uvtk[238]" -type "float2" -0.050000034 0 ;
	setAttr ".uvtk[239]" -type "float2" -0.050000034 0 ;
	setAttr ".uvtk[240]" -type "float2" -0.050000034 0 ;
	setAttr ".uvtk[241]" -type "float2" -0.050000034 0 ;
	setAttr ".uvtk[242]" -type "float2" -0.050000034 0 ;
	setAttr ".uvtk[243]" -type "float2" -0.050000034 0 ;
	setAttr ".uvtk[250]" -type "float2" 0.1715315 0 ;
	setAttr ".uvtk[251]" -type "float2" 0.1715315 0 ;
	setAttr ".uvtk[252]" -type "float2" 0.17153153 0 ;
	setAttr ".uvtk[253]" -type "float2" 0.17153153 0 ;
	setAttr ".uvtk[254]" -type "float2" 0.1715315 0 ;
	setAttr ".uvtk[255]" -type "float2" 0.17153153 0 ;
	setAttr ".uvtk[256]" -type "float2" 0.1715315 0 ;
	setAttr ".uvtk[257]" -type "float2" 0.17153153 0 ;
	setAttr ".uvtk[258]" -type "float2" 0.1715315 0 ;
	setAttr ".uvtk[259]" -type "float2" 0.17153153 0 ;
	setAttr ".uvtk[260]" -type "float2" 0.1715315 0 ;
	setAttr ".uvtk[261]" -type "float2" 0.17153153 0 ;
	setAttr ".uvtk[262]" -type "float2" 0.1715315 0 ;
	setAttr ".uvtk[263]" -type "float2" 0.17153153 0 ;
	setAttr ".uvtk[264]" -type "float2" 0.1715315 0 ;
	setAttr ".uvtk[265]" -type "float2" 0.17153153 0 ;
	setAttr ".uvtk[266]" -type "float2" 0.1715315 0 ;
	setAttr ".uvtk[267]" -type "float2" 0.17153153 0 ;
	setAttr ".uvtk[268]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[269]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[270]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[271]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[272]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[273]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[274]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[275]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[276]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[277]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[278]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[279]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[280]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[281]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[282]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[283]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[284]" -type "float2" 0.095421441 0 ;
	setAttr ".uvtk[285]" -type "float2" 0.095421441 0 ;
createNode polyFlipUV -n "polyFlipUV21";
	rename -uid "72F2114D-4DDB-54FA-6EB0-FDB59DAD2216";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[65:72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "E9746B5D-4447-C0FB-5A7E-1083F7F9DC15";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk";
	setAttr ".uvtk[268]" -type "float2" 0.10000002 0 ;
	setAttr ".uvtk[269]" -type "float2" 0.10000002 0 ;
	setAttr ".uvtk[270]" -type "float2" 0.10000005 0 ;
	setAttr ".uvtk[271]" -type "float2" 0.10000005 0 ;
	setAttr ".uvtk[272]" -type "float2" 0.10000002 0 ;
	setAttr ".uvtk[273]" -type "float2" 0.10000005 0 ;
	setAttr ".uvtk[274]" -type "float2" 0.10000002 0 ;
	setAttr ".uvtk[275]" -type "float2" 0.10000005 0 ;
	setAttr ".uvtk[276]" -type "float2" 0.10000002 0 ;
	setAttr ".uvtk[277]" -type "float2" 0.10000005 0 ;
	setAttr ".uvtk[278]" -type "float2" 0.10000002 0 ;
	setAttr ".uvtk[279]" -type "float2" 0.10000005 0 ;
	setAttr ".uvtk[280]" -type "float2" 0.10000002 0 ;
	setAttr ".uvtk[281]" -type "float2" 0.10000005 0 ;
	setAttr ".uvtk[282]" -type "float2" 0.10000002 0 ;
	setAttr ".uvtk[283]" -type "float2" 0.10000005 0 ;
	setAttr ".uvtk[284]" -type "float2" 0.10000002 0 ;
	setAttr ".uvtk[285]" -type "float2" 0.10000005 0 ;
	setAttr ".uvtk[350]" -type "float2" 0.069311477 0 ;
	setAttr ".uvtk[351]" -type "float2" 0.069311447 0 ;
	setAttr ".uvtk[352]" -type "float2" 0.069311447 0 ;
	setAttr ".uvtk[353]" -type "float2" 0.069311477 0 ;
	setAttr ".uvtk[354]" -type "float2" 0.069311477 0 ;
	setAttr ".uvtk[355]" -type "float2" 0.069311447 0 ;
	setAttr ".uvtk[356]" -type "float2" 0.069311477 0 ;
	setAttr ".uvtk[357]" -type "float2" 0.069311447 0 ;
	setAttr ".uvtk[358]" -type "float2" 0.069311477 0 ;
	setAttr ".uvtk[359]" -type "float2" 0.069311447 0 ;
	setAttr ".uvtk[360]" -type "float2" 0.069311477 0 ;
	setAttr ".uvtk[361]" -type "float2" 0.069311447 0 ;
	setAttr ".uvtk[362]" -type "float2" 0.069311477 0 ;
	setAttr ".uvtk[363]" -type "float2" 0.069311447 0 ;
	setAttr ".uvtk[364]" -type "float2" 0.069311477 0 ;
	setAttr ".uvtk[365]" -type "float2" 0.069311447 0 ;
	setAttr ".uvtk[366]" -type "float2" 0.069311477 0 ;
	setAttr ".uvtk[367]" -type "float2" 0.069311447 0 ;
	setAttr ".uvtk[368]" -type "float2" 0.043201443 0 ;
	setAttr ".uvtk[369]" -type "float2" 0.043201458 0 ;
	setAttr ".uvtk[370]" -type "float2" 0.043201458 0 ;
	setAttr ".uvtk[371]" -type "float2" 0.043201443 0 ;
	setAttr ".uvtk[372]" -type "float2" 0.043201443 0 ;
	setAttr ".uvtk[373]" -type "float2" 0.043201458 0 ;
	setAttr ".uvtk[374]" -type "float2" 0.043201443 0 ;
	setAttr ".uvtk[375]" -type "float2" 0.043201458 0 ;
	setAttr ".uvtk[376]" -type "float2" 0.043201443 0 ;
	setAttr ".uvtk[377]" -type "float2" 0.043201458 0 ;
	setAttr ".uvtk[378]" -type "float2" 0.043201443 0 ;
	setAttr ".uvtk[379]" -type "float2" 0.043201458 0 ;
	setAttr ".uvtk[380]" -type "float2" 0.043201443 0 ;
	setAttr ".uvtk[381]" -type "float2" 0.043201458 0 ;
	setAttr ".uvtk[382]" -type "float2" 0.043201443 0 ;
	setAttr ".uvtk[383]" -type "float2" 0.043201458 0 ;
	setAttr ".uvtk[384]" -type "float2" 0.043201443 0 ;
	setAttr ".uvtk[385]" -type "float2" 0.043201458 0 ;
createNode polyFlipUV -n "polyFlipUV22";
	rename -uid "ABD64B02-42B8-C270-A915-07B8C7BF2FC7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[227:234]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "404810F1-469D-E993-7D1F-E090A2C82E65";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk[368:385]" -type "float2" 0.049999982 0 0.049999982
		 0 0.049999982 0 0.049999982 0 0.049999982 0 0.049999982 0 0.049999982 0 0.049999982
		 0 0.049999982 0 0.049999982 0 0.049999982 0 0.049999982 0 0.049999982 0 0.049999982
		 0 0.049999982 0 0.049999982 0 0.049999982 0 0.049999982 0;
createNode polyFlipUV -n "polyFlipUV23";
	rename -uid "2E2E4848-47AB-D86F-74F4-458415008FF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[85:92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyFlipUV -n "polyFlipUV24";
	rename -uid "9908C9CE-4BDD-EAE1-2DD2-538FC98F24A0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[247:254]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "B02C7676-4F02-6435-18ED-A3BC39F4B481";
	setAttr ".uopa" yes;
	setAttr -s 72 ".uvtk";
	setAttr ".uvtk[286]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[287]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[288]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[289]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[290]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[291]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[292]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[293]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[294]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[295]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[296]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[297]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[298]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[299]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[300]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[301]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[302]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[303]" -type "float2" 0.067091383 0 ;
	setAttr ".uvtk[304]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[305]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[306]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[307]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[308]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[309]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[310]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[311]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[312]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[313]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[314]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[315]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[316]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[317]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[318]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[319]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[320]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[321]" -type "float2" 0.090981416 0 ;
	setAttr ".uvtk[386]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[387]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[388]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[389]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[390]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[391]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[392]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[393]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[394]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[395]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[396]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[397]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[398]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[399]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[400]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[401]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[402]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[403]" -type "float2" 0.11487136 0 ;
	setAttr ".uvtk[404]" -type "float2" 0.13876139 0 ;
	setAttr ".uvtk[405]" -type "float2" 0.13876137 0 ;
	setAttr ".uvtk[406]" -type "float2" 0.13876137 0 ;
	setAttr ".uvtk[407]" -type "float2" 0.13876139 0 ;
	setAttr ".uvtk[408]" -type "float2" 0.13876139 0 ;
	setAttr ".uvtk[409]" -type "float2" 0.13876137 0 ;
	setAttr ".uvtk[410]" -type "float2" 0.13876139 0 ;
	setAttr ".uvtk[411]" -type "float2" 0.13876137 0 ;
	setAttr ".uvtk[412]" -type "float2" 0.13876139 0 ;
	setAttr ".uvtk[413]" -type "float2" 0.13876137 0 ;
	setAttr ".uvtk[414]" -type "float2" 0.13876139 0 ;
	setAttr ".uvtk[415]" -type "float2" 0.13876137 0 ;
	setAttr ".uvtk[416]" -type "float2" 0.13876139 0 ;
	setAttr ".uvtk[417]" -type "float2" 0.13876137 0 ;
	setAttr ".uvtk[418]" -type "float2" 0.13876139 0 ;
	setAttr ".uvtk[419]" -type "float2" 0.13876137 0 ;
	setAttr ".uvtk[420]" -type "float2" 0.13876139 0 ;
	setAttr ".uvtk[421]" -type "float2" 0.13876137 0 ;
createNode polyFlipUV -n "polyFlipUV25";
	rename -uid "C47D48F6-45D2-697B-7E06-B19A742C9627";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[85:92]" "f[105:112]" "f[247:254]" "f[267:274]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV25";
	rename -uid "B17B0B15-4169-DCAC-4877-FBB1574ED193";
	setAttr ".uopa" yes;
	setAttr -s 108 ".uvtk";
	setAttr ".uvtk[286]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[287]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[288]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[289]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[290]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[291]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[292]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[293]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[294]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[295]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[296]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[297]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[298]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[299]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[300]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[301]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[302]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[303]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[304]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[305]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[306]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[307]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[308]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[309]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[310]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[311]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[312]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[313]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[314]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[315]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[316]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[317]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[318]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[319]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[320]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[321]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[350]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[351]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[352]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[353]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[354]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[355]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[356]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[357]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[358]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[359]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[360]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[361]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[362]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[363]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[364]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[365]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[366]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[367]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[368]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[369]" -type "float2" 0.14999999 0 ;
	setAttr ".uvtk[370]" -type "float2" 0.14999999 0 ;
	setAttr ".uvtk[371]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[372]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[373]" -type "float2" 0.14999999 0 ;
	setAttr ".uvtk[374]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[375]" -type "float2" 0.14999999 0 ;
	setAttr ".uvtk[376]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[377]" -type "float2" 0.14999999 0 ;
	setAttr ".uvtk[378]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[379]" -type "float2" 0.14999999 0 ;
	setAttr ".uvtk[380]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[381]" -type "float2" 0.14999999 0 ;
	setAttr ".uvtk[382]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[383]" -type "float2" 0.14999999 0 ;
	setAttr ".uvtk[384]" -type "float2" 0.15000002 0 ;
	setAttr ".uvtk[385]" -type "float2" 0.14999999 0 ;
	setAttr ".uvtk[386]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[387]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[388]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[389]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[390]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[391]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[392]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[393]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[394]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[395]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[396]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[397]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[398]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[399]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[400]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[401]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[402]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[403]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[404]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[405]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[406]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[407]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[408]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[409]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[410]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[411]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[412]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[413]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[414]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[415]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[416]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[417]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[418]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[419]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[420]" -type "float2" 0.19999999 0 ;
	setAttr ".uvtk[421]" -type "float2" 0.19999999 0 ;
createNode polyFlipUV -n "polyFlipUV26";
	rename -uid "5E7F62B9-4DBA-D3D1-12AD-509BD54534F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[93:104]" "f[242:246]" "f[255:266]" "f[275:281]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV26";
	rename -uid "FC12CD3D-4957-243C-CE2B-5392BF075102";
	setAttr ".uopa" yes;
	setAttr -s 670 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[1]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[2]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[3]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[4]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[5]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[6]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[7]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[8]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[9]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[10]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[11]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[12]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[13]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[14]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[15]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[16]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[17]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[18]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[19]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[20]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[21]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[22]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[23]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[24]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[25]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[26]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[27]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[28]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[29]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[30]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[31]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[32]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[33]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[34]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[35]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[36]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[37]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[38]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[39]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[40]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[41]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[42]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[43]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[44]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[45]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[46]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[47]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[48]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[49]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[50]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[51]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[52]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[53]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[54]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[55]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[56]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[57]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[58]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[59]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[60]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[61]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[62]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[63]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[64]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[65]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[66]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[67]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[68]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[69]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[70]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[71]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[72]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[73]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[74]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[75]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[76]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[77]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[78]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[79]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[80]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[81]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[82]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[83]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[84]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[85]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[86]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[87]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[88]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[89]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[90]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[91]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[92]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[93]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[94]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[95]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[96]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[97]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[98]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[99]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[100]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[101]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[102]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[103]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[104]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[105]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[106]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[107]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[108]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[109]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[110]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[111]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[112]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[119]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[120]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[121]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[122]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[123]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[124]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[125]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[126]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[127]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[128]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[129]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[130]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[131]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[132]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[133]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[134]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[135]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[136]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[137]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[138]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[139]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[140]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[141]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[142]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[143]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[144]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[145]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[146]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[147]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[148]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[149]" -type "float2" -0.64999998 -0.30039459 ;
	setAttr ".uvtk[150]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[151]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[152]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[153]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[154]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[155]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[156]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[157]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[158]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[159]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[160]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[161]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[162]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[163]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[164]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[165]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[166]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[167]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[168]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[169]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[170]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[171]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[172]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[173]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[174]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[175]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[176]" -type "float2" -0.64999998 -0.30039465 ;
	setAttr ".uvtk[177]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[178]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[179]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[180]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[181]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[182]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[183]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[184]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[185]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[186]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[187]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[188]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[189]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[190]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[191]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[192]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[193]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[194]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[195]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[196]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[197]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[198]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[199]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[200]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[201]" -type "float2" -0.55000001 -0.25039464 ;
	setAttr ".uvtk[202]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[203]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[204]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[205]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[206]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[207]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[208]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[209]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[210]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[211]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[212]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[213]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[214]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[215]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[216]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[217]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[218]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[219]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[220]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[221]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[222]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[223]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[224]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[225]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[226]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[227]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[228]" -type "float2" -0.55000001 -0.25039458 ;
	setAttr ".uvtk[229]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[230]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[231]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[232]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[233]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[234]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[235]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[236]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[237]" -type "float2" -0.52064759 0.40000001 ;
	setAttr ".uvtk[244]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[245]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[246]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[247]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[248]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[249]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[250]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[251]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[252]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[253]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[254]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[255]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[256]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[257]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[258]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[259]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[260]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[261]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[262]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[263]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[264]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[265]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[266]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[267]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[268]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[269]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[270]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[271]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[272]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[273]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[274]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[275]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[276]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[277]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[278]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[279]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[280]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[281]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[282]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[283]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[284]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[285]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[286]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[287]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[288]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[289]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[290]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[291]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[292]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[293]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[294]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[295]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[296]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[297]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[298]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[299]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[300]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[301]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[302]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[303]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[304]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[305]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[306]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[307]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[308]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[309]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[310]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[311]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[312]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[313]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[314]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[315]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[316]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[317]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[318]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[319]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[320]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[321]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[322]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[323]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[324]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[325]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[326]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[327]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[328]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[329]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[330]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[331]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[332]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[333]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[334]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[335]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[336]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[337]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[338]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[339]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[340]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[341]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[342]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[343]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[344]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[345]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[346]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[347]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[348]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[349]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[350]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[351]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[352]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[353]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[354]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[355]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[356]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[357]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[358]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[359]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[360]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[361]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[362]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[363]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[364]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[365]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[366]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[367]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[368]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[369]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[370]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[371]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[372]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[373]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[374]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[375]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[376]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[377]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[378]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[379]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[380]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[381]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[382]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[383]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[384]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[385]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[386]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[387]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[388]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[389]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[390]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[391]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[392]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[393]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[394]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[395]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[396]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[397]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[398]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[399]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[400]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[401]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[402]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[403]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[404]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[405]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[406]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[407]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[408]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[409]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[410]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[411]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[412]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[413]" -type "float2" -0.44999999 -0.24275041 ;
	setAttr ".uvtk[414]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[415]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[416]" -type "float2" -0.45000002 -0.24275035 ;
	setAttr ".uvtk[417]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[418]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[419]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[420]" -type "float2" -0.45000002 -0.24275041 ;
	setAttr ".uvtk[421]" -type "float2" -0.44999999 -0.24275035 ;
	setAttr ".uvtk[422]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[423]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[424]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[425]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[426]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[427]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[428]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[429]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[430]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[431]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[432]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[433]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[434]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[435]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[436]" -type "float2" -0.52064759 0.39999998 ;
	setAttr ".uvtk[437]" -type "float2" -0.52064759 0.40000004 ;
	setAttr ".uvtk[438]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[439]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[440]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[441]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[442]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[443]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[444]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[445]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[446]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[447]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[448]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[449]" -type "float2" -0.65000004 0.60000002 ;
	setAttr ".uvtk[450]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[451]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[452]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[453]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[454]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[455]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[456]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[457]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[458]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[459]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[460]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[461]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[462]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[463]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[464]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[465]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[466]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[467]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[468]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[469]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[470]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[471]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[472]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[473]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[474]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[475]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[476]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[477]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[478]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[479]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[480]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[481]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[482]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[483]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[484]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[485]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[486]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[487]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[488]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[489]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[490]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[491]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[492]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[493]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[494]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[495]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[496]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[497]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[498]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[499]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[500]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[501]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[502]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[503]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[504]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[505]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[506]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[507]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[508]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[509]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[510]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[511]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[512]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[513]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[514]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[515]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[516]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[517]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[518]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[519]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[520]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[521]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[522]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[523]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[524]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[525]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[526]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[527]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[528]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[529]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[530]" -type "float2" -0.54450023 0.058704749 ;
	setAttr ".uvtk[531]" -type "float2" -0.6157937 0.23248371 ;
	setAttr ".uvtk[532]" -type "float2" -0.63139689 0.21489134 ;
	setAttr ".uvtk[533]" -type "float2" -0.56647897 0.061097339 ;
	setAttr ".uvtk[534]" -type "float2" -0.83306921 0.19977033 ;
	setAttr ".uvtk[535]" -type "float2" -0.84834588 0.215047 ;
	setAttr ".uvtk[536]" -type "float2" -0.63043749 -0.0028611948 ;
	setAttr ".uvtk[537]" -type "float2" -0.61825192 -0.015046896 ;
	setAttr ".uvtk[538]" -type "float2" -0.8657825 -0.017505052 ;
	setAttr ".uvtk[539]" -type "float2" -0.84819019 -0.001902039 ;
	setAttr ".uvtk[540]" -type "float2" -0.69439626 -0.066819862 ;
	setAttr ".uvtk[541]" -type "float2" -0.69200373 -0.088798717 ;
	setAttr ".uvtk[542]" -type "float2" -0.38388994 -0.56801128 ;
	setAttr ".uvtk[543]" -type "float2" -0.21917467 -0.58379769 ;
	setAttr ".uvtk[544]" -type "float2" -0.30607942 -0.49020097 ;
	setAttr ".uvtk[545]" -type "float2" -0.16822143 -0.45662108 ;
	setAttr ".uvtk[546]" -type "float2" -0.39967623 -0.40329614 ;
	setAttr ".uvtk[547]" -type "float2" -0.21313564 -0.59063351 ;
	setAttr ".uvtk[548]" -type "float2" -0.15852495 -0.45781651 ;
	setAttr ".uvtk[549]" -type "float2" -0.22036056 -0.40448198 ;
	setAttr ".uvtk[550]" -type "float2" -0.27249959 -0.35234281 ;
	setAttr ".uvtk[551]" -type "float2" -0.27369502 -0.34264633 ;
	setAttr ".uvtk[552]" -type "float2" -0.40651217 -0.397257 ;
	setAttr ".uvtk[553]" -type "float2" -0.56802434 0.36264288 ;
	setAttr ".uvtk[554]" -type "float2" -0.63294226 0.51643687 ;
	setAttr ".uvtk[555]" -type "float2" -0.73484427 0.40154552 ;
	setAttr ".uvtk[556]" -type "float2" -0.83461446 0.50131595 ;
	setAttr ".uvtk[557]" -type "float2" -0.63198298 0.29868427 ;
	setAttr ".uvtk[558]" -type "float2" -0.84973568 0.29964343 ;
	setAttr ".uvtk[559]" -type "float2" -0.69594151 0.23472561 ;
	setAttr ".uvtk[560]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[561]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[562]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[563]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[564]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[565]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[566]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[567]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[568]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[569]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[570]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[571]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[572]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[573]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[574]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[575]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[576]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[577]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[578]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[579]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[580]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[581]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[582]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[583]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[584]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[585]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[586]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[587]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[588]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[589]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[590]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[591]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[592]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[593]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[594]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[595]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[596]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[597]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[598]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[599]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[600]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[601]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[602]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[603]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[604]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[605]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[606]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[607]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[608]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[609]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[610]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[611]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[612]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[613]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[614]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[615]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[616]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[617]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[618]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[619]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[620]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[621]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[622]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[623]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[624]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[625]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[626]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[627]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[628]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[629]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[630]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[631]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[632]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[633]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[634]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[635]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[636]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[637]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[638]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[639]" -type "float2" -0.75 -0.31637898 ;
	setAttr ".uvtk[640]" -type "float2" -0.54450023 0.058704749 ;
	setAttr ".uvtk[641]" -type "float2" -0.56647897 0.061097339 ;
	setAttr ".uvtk[642]" -type "float2" -0.63139689 0.21489134 ;
	setAttr ".uvtk[643]" -type "float2" -0.61579359 0.23248348 ;
	setAttr ".uvtk[644]" -type "float2" -0.61825192 -0.015046896 ;
	setAttr ".uvtk[645]" -type "float2" -0.63043749 -0.0028611948 ;
	setAttr ".uvtk[646]" -type "float2" -0.83306897 0.19977021 ;
	setAttr ".uvtk[647]" -type "float2" -0.84834588 0.215047 ;
	setAttr ".uvtk[648]" -type "float2" -0.69200373 -0.088798717 ;
	setAttr ".uvtk[649]" -type "float2" -0.69439626 -0.066819862 ;
	setAttr ".uvtk[650]" -type "float2" -0.86578238 -0.01750523 ;
	setAttr ".uvtk[651]" -type "float2" -0.84819019 -0.001902039 ;
	setAttr ".uvtk[652]" -type "float2" -0.38388994 -0.56801128 ;
	setAttr ".uvtk[653]" -type "float2" -0.30607966 -0.49020109 ;
	setAttr ".uvtk[654]" -type "float2" -0.21917479 -0.58379781 ;
	setAttr ".uvtk[655]" -type "float2" -0.39967647 -0.4032962 ;
	setAttr ".uvtk[656]" -type "float2" -0.16822143 -0.45662108 ;
	setAttr ".uvtk[657]" -type "float2" -0.27249959 -0.35234281 ;
	setAttr ".uvtk[658]" -type "float2" -0.22036056 -0.40448198 ;
	setAttr ".uvtk[659]" -type "float2" -0.21313576 -0.59063363 ;
	setAttr ".uvtk[660]" -type "float2" -0.15852495 -0.45781651 ;
	setAttr ".uvtk[661]" -type "float2" -0.27369502 -0.34264633 ;
	setAttr ".uvtk[662]" -type "float2" -0.40651229 -0.397257 ;
	setAttr ".uvtk[663]" -type "float2" -0.56802446 0.362643 ;
	setAttr ".uvtk[664]" -type "float2" -0.73484427 0.40154552 ;
	setAttr ".uvtk[665]" -type "float2" -0.63294226 0.51643687 ;
	setAttr ".uvtk[666]" -type "float2" -0.6319831 0.29868427 ;
	setAttr ".uvtk[667]" -type "float2" -0.83461446 0.50131595 ;
	setAttr ".uvtk[668]" -type "float2" -0.69594163 0.23472573 ;
	setAttr ".uvtk[669]" -type "float2" -0.84973568 0.29964343 ;
	setAttr ".uvtk[676]" -type "float2" -1.3367985 -0.36320147 ;
	setAttr ".uvtk[677]" -type "float2" -1.3632013 -0.33679864 ;
	setAttr ".uvtk[678]" -type "float2" -1.2382069 -0.21180424 ;
	setAttr ".uvtk[679]" -type "float2" -1.2401102 -0.26651302 ;
	setAttr ".uvtk[680]" -type "float2" -1.4881957 -0.46179304 ;
	setAttr ".uvtk[681]" -type "float2" -1.4334868 -0.45988968 ;
	setAttr ".uvtk[688]" -type "float2" -1.3367985 -0.36320147 ;
	setAttr ".uvtk[689]" -type "float2" -1.2401102 -0.26651302 ;
	setAttr ".uvtk[690]" -type "float2" -1.2382069 -0.21180424 ;
	setAttr ".uvtk[691]" -type "float2" -1.3632013 -0.33679864 ;
	setAttr ".uvtk[692]" -type "float2" -1.4881957 -0.46179304 ;
	setAttr ".uvtk[693]" -type "float2" -1.4334868 -0.45988968 ;
createNode polyFlipUV -n "polyFlipUV27";
	rename -uid "25D7C7F7-4626-0285-21C7-A29D91AD29E9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[138:139]" "f[300:301]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV27";
	rename -uid "13E71C90-4A70-10B8-2A41-1C9C6D1E9792";
	setAttr ".uopa" yes;
	setAttr -s 694 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.013002673 0.15716539 -0.013002673
		 0.1536818 -0.0080149565 0.15323131 -0.0080149565 0.15627556 -0.013002673 0.15011035
		 -0.0080149565 0.15011035 -0.013002673 0.16047524 -0.0080149565 0.15916787 -0.013002673
		 0.1465389 -0.0080149565 0.14698933 -0.013002673 0.1635298 -0.0080149565 0.16183715
		 -0.013002673 0.1430553 -0.0080149565 0.14394514 -0.013002673 0.16625397 -0.0080149565
		 0.16421776 -0.013002673 0.13974552 -0.0080149565 0.14105283 -0.013002673 0.16858064
		 -0.0080149565 0.16625099 -0.013002673 0.13669088 -0.0080149565 0.13838346 -0.013002673
		 0.13396671 -0.0080149565 0.13600293 -0.013002673 0.13164005 -0.0080149565 0.13396969
		 -0.013002673 0.16025446 -0.013002673 0.16330908 -0.0080149565 0.16161643 -0.0080149565
		 0.15894715 -0.013002673 0.16603325 -0.0080149565 0.16399704 -0.013002673 0.15694462
		 -0.0080149565 0.15605478 -0.013002673 0.16835992 -0.0080149565 0.16603021 -0.013002673
		 0.15346108 -0.0080149565 0.15301059 -0.013002673 0.14988963 -0.0080149565 0.14988963
		 -0.013002673 0.14631812 -0.0080149565 0.14676861 -0.013002673 0.14283459 -0.0080149565
		 0.14372443 -0.013002673 0.13952474 -0.0080149565 0.14083211 -0.013002673 0.13647011
		 -0.0080149565 0.13816275 -0.013002673 0.13374594 -0.0080149565 0.13578221 -0.013002673
		 0.13141927 -0.0080149565 0.13374898 -0.013002673 0.15605478 -0.013002673 0.15301059
		 -0.0080149565 0.15256016 -0.0080149565 0.15516488 -0.013002673 0.14988963 -0.0080149565
		 0.14988963 -0.013002673 0.15894715 -0.0080149565 0.15763979 -0.013002673 0.14676861
		 -0.0080149565 0.14721911 -0.013002673 0.16161649 -0.0080149565 0.15992384 -0.013002673
		 0.14372443 -0.0080149565 0.14461432 -0.013002673 0.16399704 -0.0080149565 0.16196083
		 -0.013002673 0.14083211 -0.0080149565 0.14213942 -0.013002673 0.16603021 -0.0080149565
		 0.16370051 -0.013002673 0.13816275 -0.0080149565 0.13985537 -0.013002673 0.13578221
		 -0.0080149565 0.13781841 -0.013002673 0.13374898 -0.0080149565 0.13607869 -0.013002673
		 0.15894715 -0.013002673 0.16161643 -0.0080149565 0.15992384 -0.0080149565 0.15763973
		 -0.013002673 0.16399704 -0.0080149565 0.16196077 -0.013002673 0.15605472 -0.0080149565
		 0.15516488 -0.013002673 0.16603021 -0.0080149565 0.16370051 -0.013002673 0.15301059
		 -0.0080149565 0.15256016 -0.013002673 0.14988963 -0.0080149565 0.14988963 -0.013002673
		 0.14676861 -0.0080149565 0.14721911 -0.013002673 0.14372443 -0.0080149565 0.14461426
		 -0.013002673 0.14083211 -0.0080149565 0.14213942 -0.013002673 0.13816275 -0.0080149565
		 0.13985537 -0.013002673 0.13578221 -0.0080149565 0.13781841 -0.013002673 0.13374898
		 -0.0080149565 0.13607869 -0.10437092 -0.045477808 -0.10437092 -0.12585337 -0.083743542
		 -0.12585337 -0.083743542 -0.045477808 -0.099849313 -0.13323787 -0.083743542 -0.13323787
		 -0.063116163 -0.12585337 -0.063116163 -0.045477808 -0.067637771 -0.13323787 -1.011617303
		 -0.34385988 -0.93792653 -0.28627476 -0.93433166 -0.30523914 -1.0010534525 -0.3573783
		 -1.085308194 -0.401445 -1.067775249 -0.40951756 0.081816882 0.076731294 -3.0077994e-005
		 0.14068983 0.036336266 0.18722737 0.11818297 0.12326846 0.16366389 0.012772657 0.20002997
		 0.059309822 -0.013002673 0.15694468 -0.0080149565 0.15605478 -0.0080149565 0.15301059
		 -0.013002673 0.15346108 -0.013002673 0.16025446 -0.0080149565 0.15894715 -0.0080149565
		 0.14988963 -0.013002673 0.14988963 -0.013002673 0.16330908 -0.0080149565 0.16161649
		 -0.0080149565 0.14676861 -0.013002673 0.14631812 -0.013002673 0.16603325 -0.0080149565
		 0.16399704 -0.0080149565 0.14372443 -0.013002673 0.14283459 -0.013002673 0.16835992
		 -0.0080149565 0.16603021 -0.0080149565 0.14083211 -0.013002673 0.13952474 -0.0080149565
		 0.13816275 -0.013002673 0.13647011 -0.0080149565 0.13578221 -0.013002673 0.13374594
		 -0.0080149565 0.13374898 -0.013002673 0.13141927 -0.013002673 0.1602544 -0.0080149565
		 0.1589471 -0.0080149565 0.16161637 -0.013002673 0.16330908 -0.013002673 0.15694462
		 -0.0080149565 0.15605472 -0.0080149565 0.16399704 -0.013002673 0.16603319 -0.013002673
		 0.15346108 -0.0080149565 0.15301059 -0.0080149565 0.16603021 -0.013002673 0.16835992
		 -0.013002673 0.14988957 -0.0080149565 0.14988957 -0.013002673 0.14631812 -0.0080149565
		 0.14676856 -0.013002673 0.14283459 -0.0080149565 0.14372443 -0.013002673 0.13952474
		 -0.0080149565 0.14083205 -0.013002673 0.13647011 -0.0080149565 0.13816275 -0.013002673
		 0.13374594 -0.0080149565 0.13578215 -0.013002673 0.13141927 -0.0080149565 0.13374898
		 -0.013002673 0.15605478 -0.0080149565 0.15516494 -0.0080149565 0.15256016 -0.013002673
		 0.15301059 -0.013002673 0.15894715 -0.0080149565 0.15763979 -0.0080149565 0.14988963
		 -0.013002673 0.14988963 -0.013002673 0.16161649 -0.0080149565 0.15992384 -0.0080149565
		 0.14721911 -0.013002673 0.14676861 -0.013002673 0.16399704 -0.0080149565 0.16196083
		 -0.0080149565 0.14461432 -0.013002673 0.14372443 -0.013002673 0.16603021 -0.0080149565
		 0.16370057 -0.0080149565 0.14213942 -0.013002673 0.14083211 -0.0080149565 0.13985537
		 -0.013002673 0.13816275 -0.0080149565 0.13781841 -0.013002673 0.13578221 -0.0080149565
		 0.13607869 -0.013002673 0.13374898 -0.013002673 0.15894715 -0.0080149565 0.15763979
		 -0.0080149565 0.15992384 -0.013002673 0.16161649 -0.013002673 0.15605478 -0.0080149565
		 0.15516494 -0.0080149565 0.16196083 -0.013002673 0.16399704 -0.013002673 0.15301065
		 -0.0080149565 0.15256016 -0.0080149565 0.16370057 -0.013002673 0.16603021 -0.013002673
		 0.14988963 -0.0080149565 0.14988963 -0.013002673 0.14676861 -0.0080149565 0.14721911
		 -0.013002673 0.14372443 -0.0080149565 0.14461432 -0.013002673 0.14083211 -0.0080149565
		 0.14213942 -0.013002673 0.13816275 -0.0080149565 0.13985537 -0.013002673 0.13578221
		 -0.0080149565 0.13781841 -0.013002673 0.13374898 -0.0080149565 0.13607869 -0.10437092
		 -0.045477808 -0.083743542 -0.045477808 -0.083743542 -0.1258534 -0.10437092 -0.1258534
		 -0.063116044 -0.045477808 -0.063116044 -0.1258534 -0.083743542 -0.13323784 -0.099849313
		 -0.13323784 -0.067637771 -0.13323784 -1.011617303 -0.34385988 -1.0010533333 -0.35737807
		 -0.93433189 -0.30523905 -0.93792653 -0.28627476 -1.085308194 -0.401445 -1.067775369
		 -0.40951738 0.11818315 0.1232687 0.08181718 0.076731652 0.16366386 0.012772776 0.20003006
		 0.05931012 0.036336191 0.18722725 -2.9794872e-005 0.14069019;
	setAttr ".uvtk[250:499]" -0.013002733 0.1395248 -0.013002733 0.13647017 -0.0080149565
		 0.13816275 -0.0080149565 0.14083211 -0.013002733 0.14283459 -0.0080149565 0.14372449
		 -0.013002733 0.14631818 -0.0080149565 0.14676861 -0.013002733 0.14988963 -0.0080149565
		 0.14988963 -0.013002733 0.15346108 -0.0080149565 0.15301059 -0.013002733 0.15694468
		 -0.0080149565 0.15605478 -0.013002733 0.16025446 -0.0080149565 0.15894715 -0.013002733
		 0.16330908 -0.0080149565 0.16161649 -0.013002733 0.16025452 -0.013002733 0.16330908
		 -0.0080149565 0.16161649 -0.0080149565 0.15894715 -0.013002733 0.15694468 -0.0080149565
		 0.15605478 -0.013002733 0.15346114 -0.0080149565 0.15301065 -0.013002733 0.14988963
		 -0.0080149565 0.14988963 -0.013002733 0.14631812 -0.0080149565 0.14676861 -0.013002733
		 0.14283459 -0.0080149565 0.14372443 -0.013002733 0.13952474 -0.0080149565 0.14083211
		 -0.013002733 0.13647017 -0.0080149565 0.13816275 -0.013002673 0.13913946 -0.013002673
		 0.13647017 -0.0080149565 0.13816275 -0.0080149565 0.14044683 -0.013002673 0.14203183
		 -0.0080149565 0.14292167 -0.013002673 0.14507596 -0.0080149565 0.14552645 -0.013002673
		 0.14819698 -0.0080149565 0.14819698 -0.013002673 0.151318 -0.0080149565 0.15086751
		 -0.013002673 0.15436219 -0.0080149565 0.15347229 -0.013002673 0.1572545 -0.0080149565
		 0.15594719 -0.013002673 0.15992384 -0.0080149565 0.15823118 -0.013002733 0.1572545
		 -0.013002733 0.15992384 -0.0080149565 0.15823124 -0.0080149565 0.15594719 -0.013002733
		 0.15436219 -0.0080149565 0.15347229 -0.013002733 0.151318 -0.0080149565 0.15086751
		 -0.013002733 0.14819698 -0.0080149565 0.14819698 -0.013002733 0.14507596 -0.0080149565
		 0.14552645 -0.013002733 0.14203183 -0.0080149565 0.14292167 -0.013002733 0.13913952
		 -0.0080149565 0.14044683 -0.013002733 0.13647017 -0.0080149565 0.13816275 0.0043709576
		 -0.12585337 -0.029900819 -0.12585337 -0.029900819 -0.045477748 0.0043709576 -0.045477748
		 -0.0026429594 -0.13323784 -0.028853506 -0.13323784 -0.059983283 -0.12585337 -0.059983283
		 -0.045477748 0.0043709576 -0.045477748 -0.029900819 -0.045477748 -0.029900819 -0.12585337
		 0.0043709576 -0.12585337 -0.059983283 -0.045477748 -0.059983283 -0.12585337 -0.028853506
		 -0.13323787 -0.0026429594 -0.13323787 0.24783567 0.021953203 0.10789445 0.13130914
		 0.071527883 0.084771253 0.21146929 -0.024584316 -0.011469133 0.22458473 -0.047835685
		 0.17804691 0.071527913 0.084771074 0.21146917 -0.024584733 0.24783519 0.021952309
		 0.10789445 0.13130896 -0.047835685 0.17804679 -0.011469148 0.22458455 -0.013002673
		 0.16025446 -0.0080149565 0.15894715 -0.0080149565 0.16161649 -0.013002673 0.16330908
		 -0.013002673 0.15694468 -0.0080149565 0.15605478 -0.013002673 0.15346108 -0.0080149565
		 0.15301059 -0.013002673 0.14988963 -0.0080149565 0.14988963 -0.013002673 0.14631818
		 -0.0080149565 0.14676861 -0.013002673 0.14283459 -0.0080149565 0.14372443 -0.013002673
		 0.1395248 -0.0080149565 0.14083211 -0.013002673 0.13647017 -0.0080149565 0.13816275
		 -0.013002673 0.13952474 -0.0080149565 0.14083211 -0.0080149565 0.13816275 -0.013002673
		 0.13647011 -0.013002673 0.14283459 -0.0080149565 0.14372443 -0.013002673 0.14631812
		 -0.0080149565 0.14676861 -0.013002673 0.14988963 -0.0080149565 0.14988963 -0.013002673
		 0.15346108 -0.0080149565 0.15301059 -0.013002673 0.15694462 -0.0080149565 0.15605478
		 -0.013002673 0.16025446 -0.0080149565 0.15894715 -0.013002673 0.16330908 -0.0080149565
		 0.16161649 -0.013002673 0.1572545 -0.0080149565 0.15594719 -0.0080149565 0.15823118
		 -0.013002673 0.15992384 -0.013002673 0.15436219 -0.0080149565 0.15347229 -0.013002673
		 0.151318 -0.0080149565 0.15086751 -0.013002673 0.14819698 -0.0080149565 0.14819698
		 -0.013002673 0.14507602 -0.0080149565 0.14552645 -0.013002673 0.14203183 -0.0080149565
		 0.14292167 -0.013002673 0.13913952 -0.0080149565 0.14044683 -0.013002673 0.13647017
		 -0.0080149565 0.13816275 -0.013002733 0.13913952 -0.0080149565 0.14044683 -0.0080149565
		 0.13816275 -0.013002733 0.13647017 -0.013002733 0.14203183 -0.0080149565 0.14292167
		 -0.013002733 0.14507596 -0.0080149565 0.14552645 -0.013002733 0.14819698 -0.0080149565
		 0.14819698 -0.013002733 0.151318 -0.0080149565 0.15086757 -0.013002733 0.15436219
		 -0.0080149565 0.15347229 -0.013002733 0.1572545 -0.0080149565 0.15594719 -0.013002733
		 0.15992384 -0.0080149565 0.15823124 0.0043709576 -0.12585337 0.0043709576 -0.045477748
		 -0.029900819 -0.045477748 -0.029900819 -0.12585337 -0.059983283 -0.12585337 -0.059983283
		 -0.045477748 -0.028853506 -0.13323784 -0.0026429594 -0.13323784 0.0043709576 -0.045477748
		 0.0043709576 -0.12585337 -0.029900759 -0.12585337 -0.029900759 -0.045477748 -0.0026429594
		 -0.13323787 -0.028853506 -0.13323787 -0.059983283 -0.12585337 -0.059983283 -0.045477748
		 0.24783573 0.021953024 0.21146944 -0.024584375 0.07152798 0.084771194 0.10789448
		 0.13130896 -0.047835611 0.17804685 -0.011469118 0.22458455 0.07152801 0.084771253
		 0.10789448 0.13130896 0.2478351 0.021952488 0.21146911 -0.024584673 -0.047835581
		 0.17804691 -0.011469118 0.22458455 0.03369553 0.15527527 0.034320842 0.15267049 0.040009279
		 0.15357147 0.039172966 0.15705501 0.034531068 0.14999996 0.040290374 0.14999996 0.03267033
		 0.15775017 0.037802 0.16036485 0.034320842 0.14732943 0.040009219 0.14642851 0.031270694
		 0.16003422 0.035930078 0.16341941 0.03369553 0.14472465 0.039172966 0.14294498 0.029530959
		 0.16207115 0.033603441 0.16614364 0.03267033 0.14224981 0.03780194 0.13963513 0.02749403
		 0.16381089 0.030879276 0.16847025 0.031270694 0.13996576 0.035930078 0.1365805 0.02520998
		 0.16521059 0.027824657 0.17034213 0.029530959 0.13792874 0.033603441 0.13385633 0.022735076
		 0.16623567 0.024514871 0.1717131 0.02749403 0.13618907 0.030879276 0.13152966 0.020130353
		 0.16686104 0.021031337 0.17254947 0.02520998 0.13478938 0.027824657 0.12965778 0.017459827
		 0.16707121 0.017459827 0.17283057 0.022735076 0.13376424 0.024514871 0.12828681 0.0147893
		 0.16686104 0.013888316 0.17254947 0.020130353 0.13313892 0.021031337 0.12745053 0.012184521
		 0.16623567 0.010404786 0.1717131 0.017459827 0.1329287 0.017459827 0.12716943 0.0097096171
		 0.16521059 0.0070949425 0.17034213 0.0147893 0.13313892 0.013888316 0.12745053;
	setAttr ".uvtk[500:693]" 0.0074256291 0.16381089 0.0040403237 0.16847031 0.012184521
		 0.13376424 0.010404786 0.12828681 0.0053886403 0.16207115 0.0013161533 0.16614364
		 0.0097096171 0.13478938 0.0070949425 0.12965778 0.0036489 0.16003422 -0.001010514
		 0.16341941 0.0074256291 0.13618907 0.0040403237 0.13152966 0.0022492041 0.15775017
		 -0.0028823386 0.16036485 0.0053886403 0.13792874 0.0013161533 0.13385633 0.0012241238
		 0.15527527 -0.004253305 0.15705501 0.0036489 0.13996576 -0.001010514 0.1365805 0.00059875182
		 0.15267055 -0.0050896774 0.15357147 0.0022492041 0.14224981 -0.0028823386 0.13963513
		 0.00038858576 0.14999996 -0.0053707133 0.14999996 0.0012241238 0.14472465 -0.004253305
		 0.14294498 0.00059875182 0.14732943 -0.0050896774 0.14642851 0.0032671243 -0.032177065
		 0.017598949 0.0020946413 0.01295682 0.0018164665 0.00052805245 -0.028768931 -0.017360255
		 0.027904406 -0.017360255 0.032177106 -0.017360255 -0.028768931 -0.017360255 -0.032177065
		 -0.052319571 0.0020946413 -0.047677323 0.0018164665 -0.035248682 -0.028768931 -0.037987635
		 -0.032177065 -0.61179805 -0.11559131 -0.58655608 -0.094764657 -0.61179805 -0.093828864
		 -0.59721541 -0.069854371 -0.6370399 -0.094764687 -0.58475554 -0.094876058 -0.59569228
		 -0.068665542 -0.61179805 -0.069854371 -0.62638056 -0.069854371 -0.62790382 -0.068665542
		 -0.63884032 -0.094876088 -0.069393501 -0.028336678 -0.056964859 0.0022487193 -0.087281898
		 0.00043220818 -0.087281838 0.028336719 -0.087281898 -0.028336618 -0.11759899 0.0022487193
		 -0.10517021 -0.028336678 0.0012241238 0.15527527 -0.004253305 0.15705501 -0.0050896178
		 0.15357147 0.00059875182 0.15267049 0.0022492041 0.15775017 -0.0028823386 0.16036485
		 -0.0053707133 0.14999996 0.00038858576 0.14999996 0.0036489 0.16003422 -0.001010514
		 0.16341941 -0.0050896178 0.14642851 0.00059875182 0.14732943 0.0053886403 0.16207115
		 0.0013161533 0.16614364 -0.004253305 0.14294498 0.0012241238 0.14472465 0.0074256291
		 0.16381089 0.0040403237 0.16847025 -0.0028823386 0.13963513 0.0022492637 0.14224981
		 0.0097096171 0.16521059 0.0070949425 0.17034213 -0.0010104544 0.1365805 0.0036489
		 0.13996576 0.012184521 0.16623567 0.010404786 0.1717131 0.0013162129 0.13385633 0.0053886403
		 0.13792874 0.0147893 0.16686104 0.013888316 0.17254947 0.0040403237 0.13152966 0.0074256291
		 0.13618907 0.017459827 0.16707121 0.017459827 0.17283057 0.0070949425 0.12965778
		 0.0097096767 0.13478938 0.020130353 0.16686104 0.021031337 0.17254947 0.010404786
		 0.12828681 0.012184521 0.13376424 0.022735076 0.16623567 0.024514871 0.1717131 0.013888316
		 0.12745053 0.0147893 0.13313892 0.02520998 0.16521059 0.027824657 0.17034213 0.017459827
		 0.12716943 0.017459827 0.1329287 0.02749403 0.16381089 0.030879276 0.16847031 0.021031337
		 0.12745053 0.020130353 0.13313892 0.029531019 0.16207115 0.033603441 0.16614364 0.024514871
		 0.12828681 0.022735136 0.13376424 0.031270694 0.16003422 0.035930078 0.16341941 0.027824657
		 0.12965778 0.02520998 0.13478938 0.03267033 0.15775017 0.037802 0.16036485 0.030879276
		 0.13152966 0.02749403 0.13618907 0.03369553 0.15527527 0.039172966 0.15705501 0.033603441
		 0.13385633 0.029531019 0.13792874 0.034320842 0.15267055 0.040009279 0.15357147 0.035930078
		 0.1365805 0.031270694 0.13996576 0.034531068 0.14999996 0.040290374 0.14999996 0.037802
		 0.13963513 0.03267033 0.14224981 0.034320842 0.14732943 0.040009279 0.14642851 0.039172966
		 0.14294498 0.03369553 0.14472465 0.0032671243 -0.032177065 0.00052805245 -0.028768931
		 0.01295682 0.0018164665 0.017598949 0.0020945817 -0.017360255 -0.032177065 -0.017360255
		 -0.028768931 -0.017360255 0.027904406 -0.017360255 0.032177106 -0.037987635 -0.032177065
		 -0.035248682 -0.028768931 -0.052319571 0.0020945817 -0.047677323 0.0018164665 -0.92448878
		 -0.11559131 -0.92448878 -0.093828887 -0.89924681 -0.09476468 -0.94973063 -0.09476468
		 -0.90990615 -0.069854394 -0.9390713 -0.069854394 -0.92448878 -0.069854394 -0.89744627
		 -0.094876081 -0.90838301 -0.068665519 -0.94059455 -0.068665519 -0.95153105 -0.094876081
		 -0.069393501 -0.028336618 -0.087281898 0.00043220818 -0.056964859 0.0022487193 -0.087281898
		 -0.028336618 -0.087281838 0.028336719 -0.10517021 -0.028336618 -0.11759899 0.0022487193
		 -1.0052819252 -0.32798129 -1.12901258 -0.42466965 -1.11021078 -0.43175045 -0.99471796
		 -0.34149948 -0.87922537 -0.25124878 -0.88155115 -0.23129295 -0.15000007 0.059673056
		 -0.15000007 0.067057535 -0.11504078 0.067057535 -0.12295759 0.059673056 -0.18495926
		 0.067057535 -0.17704245 0.059673056 -1.0052819252 -0.32798129 -0.99471796 -0.34149948
		 -1.11021078 -0.43175045 -1.12901258 -0.42466965 -0.88155115 -0.23129295 -0.87922537
		 -0.25124878 -0.15000007 0.059673056 -0.12295759 0.059673056 -0.11504078 0.067057535
		 -0.15000007 0.067057535 -0.18495926 0.067057535 -0.17704245 0.059673056;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "470F5A54-4072-9B97-B26E-79B46E6B2466";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[288]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "0E92CECF-48BA-6339-6DB2-A4A30A4364BC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[285]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "7ECEC85F-455F-0EA5-6C65-45BC68F1721A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[595]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "EF54FDE0-4270-7927-F62D-F6B510B5983F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[601]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyFlipUV -n "polyFlipUV28";
	rename -uid "F4949BBD-4CA9-FB9C-2906-4FADEDE45ACA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV28";
	rename -uid "42C33421-4226-7E2C-5CA0-50BFCA9ADB5C";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[543]" -type "float2" -0.2837767 0 ;
	setAttr ".uvtk[547]" -type "float2" -0.2837767 0 ;
	setAttr ".uvtk[548]" -type "float2" -0.2837767 0 ;
	setAttr ".uvtk[551]" -type "float2" -0.092627503 0 ;
	setAttr ".uvtk[552]" -type "float2" -0.092627496 0 ;
	setAttr ".uvtk[659]" -type "float2" 0.028744979 0 ;
	setAttr ".uvtk[660]" -type "float2" 0.028744979 0 ;
	setAttr ".uvtk[694]" -type "float2" -0.2837767 0 ;
	setAttr ".uvtk[696]" -type "float2" -0.092627503 0 ;
	setAttr ".uvtk[697]" -type "float2" -0.092627503 0 ;
	setAttr ".uvtk[698]" -type "float2" 0.028744979 0 ;
	setAttr ".uvtk[699]" -type "float2" 0.028744981 0 ;
createNode polyFlipUV -n "polyFlipUV29";
	rename -uid "F5293334-4B5E-7A7A-B394-7D8A56BCF5DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[299]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV29";
	rename -uid "AA0AA38D-4F72-2810-535C-C78560A72B5B";
	setAttr ".uopa" yes;
	setAttr -s 43 ".uvtk";
	setAttr ".uvtk[542]" -type "float2" 0.011797905 -0.0051518269 ;
	setAttr ".uvtk[543]" -type "float2" 0.23994443 0.24954206 ;
	setAttr ".uvtk[544]" -type "float2" 0.01179792 -9.1506168e-005 ;
	setAttr ".uvtk[545]" -type "float2" 0.01179789 0.001184321 ;
	setAttr ".uvtk[546]" -type "float2" 0.015741305 0.013719406 ;
	setAttr ".uvtk[547]" -type "float2" 0.23639072 0.25738791 ;
	setAttr ".uvtk[548]" -type "float2" 0.1564927 0.13886392 ;
	setAttr ".uvtk[549]" -type "float2" 0.011797905 -0.0097849602 ;
	setAttr ".uvtk[550]" -type "float2" 0.011797905 0.0011843434 ;
	setAttr ".uvtk[551]" -type "float2" 0.15649265 0.13886404 ;
	setAttr ".uvtk[552]" -type "float2" 0.23639089 0.25738806 ;
	setAttr ".uvtk[652]" -type "float2" 0.32448867 -0.0051518348 ;
	setAttr ".uvtk[653]" -type "float2" 0.3244887 -9.1350637e-005 ;
	setAttr ".uvtk[654]" -type "float2" 0.31928533 0.0016907703 ;
	setAttr ".uvtk[655]" -type "float2" 0.32969207 0.001690841 ;
	setAttr ".uvtk[656]" -type "float2" 0.32448867 0.00032747071 ;
	setAttr ".uvtk[657]" -type "float2" 0.3244887 0.00032746699 ;
	setAttr ".uvtk[658]" -type "float2" 0.32448867 -0.0097849229 ;
	setAttr ".uvtk[659]" -type "float2" 0.23649316 0.25723267 ;
	setAttr ".uvtk[660]" -type "float2" 0.15659498 0.13870859 ;
	setAttr ".uvtk[661]" -type "float2" 0.37682712 0.13870871 ;
	setAttr ".uvtk[662]" -type "float2" 0.45672542 0.2572327 ;
	setAttr ".uvtk[676]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[677]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[678]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[679]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[680]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[681]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[688]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[689]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[690]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[691]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[692]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[693]" -type "float2" 0 0.086634696 ;
	setAttr ".uvtk[694]" -type "float2" 0.16478467 0.13606352 ;
	setAttr ".uvtk[695]" -type "float2" 0.0078545203 0.013719287 ;
	setAttr ".uvtk[696]" -type "float2" 0.23994456 0.24954218 ;
	setAttr ".uvtk[697]" -type "float2" 0.16478465 0.13606358 ;
	setAttr ".uvtk[698]" -type "float2" 0.16542681 0.13670912 ;
	setAttr ".uvtk[699]" -type "float2" 0.24004686 0.24938682 ;
	setAttr ".uvtk[700]" -type "float2" 0.46027908 0.24938697 ;
	setAttr ".uvtk[701]" -type "float2" 0.3856591 0.13670906 ;
createNode phong -n "phong1";
	rename -uid "9BF934B1-4EE8-3A01-E9E5-EE83EED7E02F";
createNode shadingEngine -n "phong1SG";
	rename -uid "5A32EE77-4229-0449-B104-EB91277623CF";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "897D873A-41BC-09FD-606D-85A1CE3A7AC4";
createNode file -n "file1";
	rename -uid "33E7DFEF-4275-4106-50B0-12A33D3D46C4";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Desktop/SP2 OBJ/SP OBJ//images/ShipEngine.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "59138063-40DF-59B0-BD72-54A29DC3934B";
createNode polyUnite -n "polyUnite6";
	rename -uid "6950628A-45FB-13DB-99B5-15A1C7BD6AE2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId22";
	rename -uid "A0F3F000-40EA-028B-9E07-28B13F39D955";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "2F53B3C6-4AE7-21AC-FAFD-EEA549D258B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:323]";
createNode groupId -n "groupId23";
	rename -uid "79150CE7-4188-E345-7BAC-83943D8D051D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "0C9682FA-44B1-A7F6-3489-5792AAA68A5B";
	setAttr ".ihi" 0;
createNode polyTweakUV -n "polyTweakUV30";
	rename -uid "8736F411-49C2-33F2-BAEC-BFADFFFA680C";
	setAttr ".uopa" yes;
	setAttr -s 84 ".uvtk[0:83]" -type "float2" 0.37139952 -0.007473588 0.36300641
		 -0.060464978 0.37139946 -0.11345632 0.39575708 -0.16126052 0.43369442 -0.19919816
		 0.48149878 -0.22355561 0.53449011 -0.2319486 0.58748144 -0.22355561 0.63528568 -0.19919819
		 0.67322332 -0.16126055 0.69758075 -0.11345634 0.70597374 -0.060464978 0.69758075
		 -0.0074736178 0.67322332 0.040330589 0.63528568 0.07826823 0.5874815 0.1026257 0.53449011
		 0.11101872 0.48149872 0.10262573 0.43369454 0.07826826 0.39575678 0.040330619 0.70597374
		 -0.2319486 0.68882531 -0.2319486 0.53449011 -0.57491583 0.67167699 -0.2319486 0.65452862
		 -0.2319486 0.63738024 -0.2319486 0.62023187 -0.2319486 0.60308355 -0.2319486 0.58593512
		 -0.2319486 0.56878674 -0.2319486 0.55163848 -0.2319486 0.53449005 -0.2319486 0.51734179
		 -0.2319486 0.50019342 -0.2319486 0.48304504 -0.2319486 0.46589667 -0.2319486 0.44874835
		 -0.2319486 0.43160003 -0.2319486 0.4144516 -0.2319486 0.39730334 -0.2319486 0.38015503
		 -0.2319486 0.36300671 -0.2319486 0.37139952 -0.007473588 0.36300641 -0.060464978
		 0.37139946 -0.11345632 0.39575708 -0.16126052 0.43369442 -0.19919816 0.48149878 -0.22355561
		 0.53449011 -0.2319486 0.58748144 -0.22355561 0.63528568 -0.19919819 0.67322332 -0.16126055
		 0.69758075 -0.11345634 0.70597374 -0.060464978 0.69758075 -0.0074736178 0.67322332
		 0.040330589 0.63528568 0.07826823 0.5874815 0.1026257 0.53449011 0.11101872 0.48149872
		 0.10262573 0.43369454 0.07826826 0.39575678 0.040330619 0.70597374 -0.2319486 0.68882531
		 -0.2319486 0.53449011 -0.57491583 0.67167699 -0.2319486 0.65452862 -0.2319486 0.63738024
		 -0.2319486 0.62023187 -0.2319486 0.60308355 -0.2319486 0.58593512 -0.2319486 0.56878674
		 -0.2319486 0.55163848 -0.2319486 0.53449005 -0.2319486 0.51734179 -0.2319486 0.50019342
		 -0.2319486 0.48304504 -0.2319486 0.46589667 -0.2319486 0.44874835 -0.2319486 0.43160003
		 -0.2319486 0.4144516 -0.2319486 0.39730334 -0.2319486 0.38015503 -0.2319486 0.36300671
		 -0.2319486;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "1322E27C-4143-6A34-5692-DA8AADA23F34";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[21]";
createNode polyTweakUV -n "polyTweakUV31";
	rename -uid "81C93F6F-4F46-B860-B5CA-2BA96173A8D9";
	setAttr ".uopa" yes;
	setAttr -s 44 ".uvtk[0:43]" -type "float2" -0.15171482 -0.11222555 -0.15956637
		 -0.12007718 -0.073198289 -0.34777471 -0.16741803 -0.12792881 -0.17526969 -0.1357805
		 -0.18312129 -0.14363207 -0.19097289 -0.15148367 -0.19882461 -0.15933539 -0.20667621
		 -0.16718699 -0.21452782 -0.17503859 -0.22237957 -0.18289028 -0.23023114 -0.19074191
		 -0.23808289 -0.1985936 -0.24593449 -0.20644526 -0.25378609 -0.2142968 -0.26163769
		 -0.22214843 -0.26948941 -0.23000015 -0.27734101 -0.23785178 -0.28519261 -0.24570329
		 -0.29304418 -0.25355491 -0.3008959 -0.26140666 -0.30874762 -0.26925847 -0.15171482
		 -0.11222555 -0.15956637 -0.12007718 -0.073198289 -0.34777471 -0.16741803 -0.12792881
		 -0.17526969 -0.1357805 -0.18312129 -0.14363207 -0.19097289 -0.15148367 -0.19882461
		 -0.15933539 -0.20667621 -0.16718699 -0.21452782 -0.17503859 -0.22237957 -0.18289028
		 -0.23023114 -0.19074191 -0.23808289 -0.1985936 -0.24593449 -0.20644526 -0.25378609
		 -0.2142968 -0.26163769 -0.22214843 -0.26948941 -0.23000015 -0.27734101 -0.23785178
		 -0.28519261 -0.24570329 -0.29304418 -0.25355491 -0.3008959 -0.26140666 -0.30874762
		 -0.26925847;
createNode renderLayerManager -n "ShipBody:renderLayerManager";
	rename -uid "4B27C3B7-496A-1D64-7DD8-3D9FB7E5C78D";
createNode renderLayer -n "ShipBody:defaultRenderLayer";
	rename -uid "81A3E67E-4589-7319-2962-F1AFE6577178";
	setAttr ".g" yes;
createNode renderLayerManager -n "ShipBody:ShipBody:renderLayerManager";
	rename -uid "60F1FA64-4B1F-FA11-FF38-A98A68AA4000";
createNode renderLayer -n "ShipBody:ShipBody:defaultRenderLayer";
	rename -uid "544D194B-4AA1-E2B2-74A6-CABE7FF08CC8";
	setAttr ".g" yes;
createNode polyCube -n "ShipBody:ShipBody:polyCube1";
	rename -uid "1BD82B2F-48F9-87DA-0958-0A846805D648";
	setAttr ".d" 3;
	setAttr ".sw" 2;
	setAttr ".sh" 3;
	setAttr ".cuv" 4;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak1";
	rename -uid "DA03D2D4-4C26-E37F-899F-F5A334A9D416";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[2]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.39832202 -0.088370159 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.088370159 0 ;
	setAttr ".tk[5]" -type "float3" 0.39832202 -0.088370159 0 ;
	setAttr ".tk[6]" -type "float3" -0.39832202 0.088370174 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.088370174 0 ;
	setAttr ".tk[8]" -type "float3" 0.39832202 0.088370174 0 ;
	setAttr ".tk[9]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[11]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[12]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[14]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.39832202 0.088370159 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.088370159 0 ;
	setAttr ".tk[17]" -type "float3" 0.39832202 0.088370159 0 ;
	setAttr ".tk[18]" -type "float3" -0.39832202 -0.088370174 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.088370174 0 ;
	setAttr ".tk[20]" -type "float3" 0.39832202 -0.088370174 0 ;
	setAttr ".tk[21]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[23]" -type "float3" 1.4901161e-008 0 0 ;
createNode polySplit -n "ShipBody:ShipBody:polySplit1";
	rename -uid "3529753C-48E7-3DDB-B359-9A86649D53B6";
	setAttr -s 3 ".e[0:2]"  0.5 1 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483628 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit2";
	rename -uid "48A9AEE9-4D8B-72DA-0FD8-EF82548565BF";
	setAttr -s 3 ".e[0:2]"  0.5 0 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483645 -2147483645 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit3";
	rename -uid "F430C818-4F07-B82D-3C0E-39B4851C9E93";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit4";
	rename -uid "D2A0FC91-4A15-6FBA-B44F-1BBF2750C7B3";
	setAttr -s 5 ".e[0:4]"  0.5 0.50000006 1 0.5 0.49999994;
	setAttr -s 5 ".d[0:4]"  -2147483604 -2147483644 -2147483604 -2147483643 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit5";
	rename -uid "A3407A91-4A93-D633-29E5-EBBD5065565E";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0 0.5 0.50000006;
	setAttr -s 5 ".d[0:4]"  -2147483602 -2147483645 -2147483628 -2147483601 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit6";
	rename -uid "0E674EEE-432F-752A-D094-2996E3ABE19F";
	setAttr -s 3 ".e[0:2]"  0.5 0.89999998 0.40000001;
	setAttr -s 3 ".d[0:2]"  -2147483627 -2147483628 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit7";
	rename -uid "E166473E-444E-C200-E169-4587864E5DFC";
	setAttr -s 3 ".e[0:2]"  0.5 1 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483628 -2147483588 -2147483600;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit8";
	rename -uid "1CE6E44B-4475-991A-C80F-CDAAF05D476E";
	setAttr -s 3 ".e[0:2]"  1 0.75 1;
	setAttr -s 3 ".d[0:2]"  -2147483643 -2147483588 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit9";
	rename -uid "F1BBD57D-4FCE-EFB4-7B7C-DE8A2FFC685A";
	setAttr -s 3 ".e[0:2]"  0 0.66666698 0;
	setAttr -s 3 ".d[0:2]"  -2147483603 -2147483588 -2147483602;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit10";
	rename -uid "39427CC8-4BC7-6146-CB29-FD90BB48F38B";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483603 -2147483588 -2147483602;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit11";
	rename -uid "6F4EFE23-494E-8C91-FB6E-279D0CAA691E";
	setAttr -s 3 ".e[0:2]"  1 0.25 1;
	setAttr -s 3 ".d[0:2]"  -2147483604 -2147483587 -2147483601;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit12";
	rename -uid "4E23AEE7-46ED-A3A4-909A-E3B61CE28195";
	setAttr -s 3 ".e[0:2]"  0 0.33333299 0;
	setAttr -s 3 ".d[0:2]"  -2147483604 -2147483575 -2147483601;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit13";
	rename -uid "8DDCF5D3-42EA-CB23-3F12-3CB967E3D2D9";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483572 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak2";
	rename -uid "7A6EEFA2-48A4-9790-03B0-C7B649283262";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.32601184 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.38107857 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.32601184 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.20553866 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.6084097 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.20553866 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.19682452 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.59087908 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.19682452 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.30176252 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.35125792 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.30176252 ;
	setAttr ".tk[15]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[17]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[18]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[20]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.46612442 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.46612442 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.4811334 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.4811334 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.64496118 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.55785453 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.33610898 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.55785453 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.33610898 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.34827507 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.57473326 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.57473326 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.34827507 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.20419966 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.644961 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.20419966 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.63568997 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.62854117 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.60991347 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.5123893 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.37358594 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.60991353 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.51238912 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.37358591 ;
createNode polySplit -n "ShipBody:ShipBody:polySplit14";
	rename -uid "D6F63842-4B84-5E95-78E7-00B8D1BD4F62";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483605 -2147483623 -2147483622 -2147483621 -2147483607;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit15";
	rename -uid "708B50C9-4A78-D6F5-6BE3-1583172A757F";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483608 -2147483609 -2147483610 -2147483611 -2147483606;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit16";
	rename -uid "9052D161-4772-15D1-9B6A-C28CB6F39BB0";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483607 -2147483557;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit17";
	rename -uid "165A521B-469B-D26B-F0CA-91BC5723B279";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483566 -2147483606;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak3";
	rename -uid "AFA08556-43C9-4E7B-B7A1-FE88A87B8D2F";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.16062963 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.16062963 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.86170298 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.78745049 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.86170298 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.86170298 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.78745049 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.86170298 ;
createNode polySplit -n "ShipBody:ShipBody:polySplit18";
	rename -uid "97ECBA9C-43E7-59DD-758C-E5A2D726C315";
	setAttr -s 11 ".e[0:10]"  0.69999999 0.69999999 0.69999999 0.69999999
		 0.69999999 0.30000001 0.30000001 0.30000001 0.69999999 0.69999999 0.69999999;
	setAttr -s 11 ".d[0:10]"  -2147483611 -2147483610 -2147483609 -2147483608 -2147483607 -2147483563 
		-2147483564 -2147483565 -2147483605 -2147483606 -2147483611;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak4";
	rename -uid "8FA2AAA5-4EBD-02A9-D6B6-5F8D9738EC0C";
	setAttr ".uopa" yes;
	setAttr -s 46 ".tk";
	setAttr ".tk[0]" -type "float3" 0.065545537 0.065545537 0 ;
	setAttr ".tk[2]" -type "float3" -0.065545537 0.065545537 0 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.0080831628 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.0098994533 ;
	setAttr ".tk[9]" -type "float3" 0.065545522 -0.065545537 1.4901161e-008 ;
	setAttr ".tk[11]" -type "float3" -0.065545522 -0.065545537 1.4901161e-008 ;
	setAttr ".tk[12]" -type "float3" 0.22310321 -0.065545537 0 ;
	setAttr ".tk[14]" -type "float3" -0.22310321 -0.065545537 0 ;
	setAttr ".tk[15]" -type "float3" 0.32578239 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.32578239 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.32578239 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.32578239 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.22310321 0.065545537 0 ;
	setAttr ".tk[23]" -type "float3" -0.22310321 0.065545537 0 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.10786817 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.0013389587 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.11189945 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.0013389587 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.071461916 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.061892044 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[49]" -type "float3" 0.065545537 -0.065545537 -0.14769581 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[51]" -type "float3" -0.065545537 -0.065545537 -0.14769581 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[54]" -type "float3" -0.065545537 0.065545537 -0.14769602 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[56]" -type "float3" 0.065545537 0.065545537 -0.14769602 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[58]" -type "float3" 0.22310321 0.065545537 -0.01921916 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.019219166 ;
	setAttr ".tk[60]" -type "float3" -0.22310321 0.065545537 -0.01921916 ;
	setAttr ".tk[61]" -type "float3" -0.32578239 0 -0.019219166 ;
	setAttr ".tk[62]" -type "float3" -0.32578239 0 -0.019219166 ;
	setAttr ".tk[63]" -type "float3" -0.22310321 -0.065545537 -0.019219175 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.019219166 ;
	setAttr ".tk[65]" -type "float3" 0.22310321 -0.065545537 -0.019219175 ;
	setAttr ".tk[66]" -type "float3" 0.32578239 0 -0.019219166 ;
	setAttr ".tk[67]" -type "float3" 0.32578239 0 -0.019219166 ;
createNode polySplit -n "ShipBody:ShipBody:polySplit19";
	rename -uid "B2D4A440-4455-4FA2-ADAC-BEB33EBC05E3";
	setAttr -s 3 ".e[0:2]"  0 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483591 -2147483548 -2147483533;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit20";
	rename -uid "5F7623D7-4053-C6A1-5AB4-01BB2D714054";
	setAttr -s 3 ".e[0:2]"  1 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483629 -2147483547 -2147483528;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak5";
	rename -uid "79BB406C-44AD-2F3B-FBFD-44B3F0E56BD6";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[3]" -type "float3" 0.14441933 -0.0025705099 0 ;
	setAttr ".tk[5]" -type "float3" -0.14441933 -0.0025705099 0 ;
	setAttr ".tk[6]" -type "float3" 0.14441933 0.015477747 0 ;
	setAttr ".tk[8]" -type "float3" -0.14441933 -2.2351742e-008 0 ;
	setAttr ".tk[12]" -type "float3" -0.0041540861 -0.22503753 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.24834485 0 ;
	setAttr ".tk[14]" -type "float3" 0.0041540861 -0.22503753 0 ;
	setAttr ".tk[15]" -type "float3" 0.29148871 -0.04561989 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.041001141 0 ;
	setAttr ".tk[17]" -type "float3" -0.29148871 -0.04561989 0 ;
	setAttr ".tk[18]" -type "float3" 0.29148871 0.041001178 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.041001171 0 ;
	setAttr ".tk[20]" -type "float3" -0.29148871 0.041001178 0 ;
	setAttr ".tk[21]" -type "float3" -0.0041540861 0.22041878 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.24834485 0 ;
	setAttr ".tk[23]" -type "float3" 0.0041540861 0.22041878 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.0039659441 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.0028790962 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.0025705118 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.0025705118 0 ;
	setAttr ".tk[44]" -type "float3" 0.052817032 0 -0.042138375 ;
	setAttr ".tk[47]" -type "float3" -0.052817032 0 -0.042138375 ;
	setAttr ".tk[48]" -type "float3" 0.14441933 0.015477762 0 ;
	setAttr ".tk[52]" -type "float3" -0.14441933 -1.1175871e-008 0 ;
	setAttr ".tk[53]" -type "float3" -0.14441933 -0.0025705099 0 ;
	setAttr ".tk[57]" -type "float3" 0.14441933 -0.0025705099 0 ;
	setAttr ".tk[61]" -type "float3" -0.29579023 0.041001167 0 ;
	setAttr ".tk[62]" -type "float3" -0.29549536 -0.041001167 0 ;
	setAttr ".tk[66]" -type "float3" 0.29549539 -0.041001167 0 ;
	setAttr ".tk[67]" -type "float3" 0.29579026 0.041001167 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.044631436 0 ;
	setAttr ".tk[69]" -type "float3" -0.29579023 -0.044631436 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.044631436 0 ;
	setAttr ".tk[71]" -type "float3" 0.29579026 -0.044631436 0 ;
createNode polySplit -n "ShipBody:ShipBody:polySplit21";
	rename -uid "B491577F-4701-7EC1-2E15-C0BDA2652CD6";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483631;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit22";
	rename -uid "80FA28EA-4CE0-CD11-91C6-22AAF0FEC624";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "ShipBody:ShipBody:polyCube2";
	rename -uid "5A1F5B7B-4A67-3878-8FB0-429E23434CBD";
	setAttr ".h" 0.15;
	setAttr ".d" 0.5;
	setAttr ".cuv" 4;
createNode polyCube -n "ShipBody:ShipBody:polyCube3";
	rename -uid "D66F3B99-4C0B-15FE-750A-668CAB0BAB70";
	setAttr ".w" 0.5;
	setAttr ".h" 0.15;
	setAttr ".cuv" 4;
createNode polySplit -n "ShipBody:ShipBody:polySplit23";
	rename -uid "C8E3F5D7-427C-4F3A-9794-558F618C4845";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit24";
	rename -uid "C9F9E1B6-433E-DC3B-8992-C6AE6E9F1640";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyUnite -n "ShipBody:ShipBody:polyUnite1";
	rename -uid "4872628B-4232-79BF-2CAE-9DA1C441195C";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId1";
	rename -uid "D9D4B81E-470C-6CC0-E6CB-3CB36E91F916";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts1";
	rename -uid "331F7CBC-49C4-0EC3-E2C5-6EBB95FF1D3A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "ShipBody:ShipBody:groupId2";
	rename -uid "37CC3FC9-41F9-1358-8D75-73A5A5530064";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:groupId3";
	rename -uid "271A5BB1-424F-1542-6F64-7B86A1EB6E0F";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts2";
	rename -uid "015B182C-479A-834A-E11C-11B61BE3EA1C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "ShipBody:ShipBody:groupId4";
	rename -uid "EC7A2F9F-4596-3016-DBFA-80AE445DF865";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:groupId5";
	rename -uid "CCD99378-494A-6A3C-3BA9-16A0FCFD76FA";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts3";
	rename -uid "CDA32172-49C9-086B-FB82-7881E65BBA44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode polyMirror -n "ShipBody:ShipBody:polyMirror1";
	rename -uid "7A1ED3FD-4D26-67A9-7DB9-348C53788C4B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 14;
	setAttr ".lnf" 27;
createNode polySplit -n "ShipBody:ShipBody:polySplit25";
	rename -uid "1B1B6746-44CF-8CDE-958D-A09DF6D7CAAD";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483628 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit26";
	rename -uid "7550B8CD-4D02-D565-07CB-F988D7E4C02F";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483595 -2147483592;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak6";
	rename -uid "06B71B10-4DE8-D877-9826-579953445270";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0 0.38989282 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.38989282 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.38989282 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.38989282 ;
createNode polySplit -n "ShipBody:ShipBody:polySplit27";
	rename -uid "D8BD116B-4B3F-0688-5FC8-F88D438D1359";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483642 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit28";
	rename -uid "23C64CF1-4FA6-F317-89C2-3BB4EAAC8420";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483610 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak7";
	rename -uid "6A288E84-4AEA-117D-1DFA-138B782169C8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  0 0 -0.24384946 0 0 -0.24384946
		 0 0 -0.24384946 0 0 -0.24384946;
createNode polySplit -n "ShipBody:ShipBody:polySplit29";
	rename -uid "B7EC1FFB-4147-4D16-5512-BC80B80BC816";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483631 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit30";
	rename -uid "8AC864BE-414A-32F9-8C4C-55820FEC4247";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483601 -2147483618 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit31";
	rename -uid "8A3B4E59-4824-68B8-E3DA-BCA8F3CE1070";
	setAttr -s 3 ".e[0:2]"  1 0.48029101 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483616 -2147483602 -2147483609;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit32";
	rename -uid "C95B223A-4CC7-8D43-93D9-00BF70E90E69";
	setAttr -s 3 ".e[0:2]"  0.5 0.47564799 0;
	setAttr -s 3 ".d[0:2]"  -2147483634 -2147483639 -2147483574;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyUnite -n "ShipBody:ShipBody:polyUnite2";
	rename -uid "F34E50A5-43EE-632D-7289-1B801B37F1D0";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId6";
	rename -uid "6DF308AE-492D-A33D-3C99-698C7F41AA3A";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts4";
	rename -uid "122AE8E3-4738-B01D-67E3-E4A006E5D247";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "ShipBody:ShipBody:groupId7";
	rename -uid "0B95932C-48F3-E9DF-AB00-B3A79E3364B0";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:groupId8";
	rename -uid "A8523242-4BBD-6A6D-EDD4-4F93A18DED53";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts5";
	rename -uid "82D3297C-438E-A350-FBD9-EC819262DB66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode polyCube -n "ShipBody:ShipBody:polyCube4";
	rename -uid "64572982-4CF1-6B4D-1C5D-C98B58C1AB25";
	setAttr ".w" 0.5;
	setAttr ".h" 0.5;
	setAttr ".d" 0.6;
	setAttr ".sh" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "ShipBody:ShipBody:polyCube5";
	rename -uid "3EF086FE-4CE9-8E6C-93F8-CE989B5F38B7";
	setAttr ".w" 0.3;
	setAttr ".h" 0.2;
	setAttr ".d" 0.2;
	setAttr ".cuv" 4;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak8";
	rename -uid "9E2A5876-4989-A825-D514-72A4EB616D0A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.14151087 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.14151087 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.14151087 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.14151087 ;
createNode polySplit -n "ShipBody:ShipBody:polySplit33";
	rename -uid "D184837F-49F0-61FE-268B-7C95118C76DB";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit34";
	rename -uid "F3FD4F3E-46E5-727F-5ADE-50A7F07FE552";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483639 -2147483634 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMirror -n "ShipBody:ShipBody:polyMirror2";
	rename -uid "DBF0F57F-492E-EE9A-FE94-D79CBFB51420";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.43105084189264542 0 -1.2160877961673882 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 9;
	setAttr ".lnf" 17;
createNode groupId -n "ShipBody:ShipBody:groupId9";
	rename -uid "57734D57-4FBF-97CD-38D6-8AA30E66921F";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts6";
	rename -uid "FC926536-44A3-843A-FA64-27A7C628B224";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "ShipBody:ShipBody:groupId10";
	rename -uid "55A96AA1-4E6F-F0FC-1C9B-B28BF3985CB8";
	setAttr ".ihi" 0;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak9";
	rename -uid "5A7C8734-4CD3-E6B1-A4B0-BB8939BC9608";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0.19958839 0.09601739 0 -0.044574969
		 -0.010969203 0 0.19958839 0 0 0.17998941 0 0 0.19958839 -0.09601739 0 -0.044574969
		 0.010969203 0 0.19958839 -0.09601739 0 -0.044574969 0.010969203 0 0.19958839 0 0
		 0.17998941 0 0 0.19958839 0.09601739 0 -0.044574969 -0.010969203 0;
createNode polySplit -n "ShipBody:ShipBody:polySplit35";
	rename -uid "6AB163E7-48D4-DB4C-496D-A4A6127AD1E9";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483639 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit36";
	rename -uid "27F09303-4FC8-6122-1E66-74B98C7863DC";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit37";
	rename -uid "D4C66F8E-463C-D68C-559E-C8B516BB40FB";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit38";
	rename -uid "467D94BB-4BCF-461A-5ED5-B298B41EC0B5";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483624 -2147483627 -2147483628 -2147483626 -2147483625 -2147483647 
		-2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak10";
	rename -uid "BA855C21-4728-0670-4DA0-4C9C62209BBC";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[12:18]" -type "float3"  0 0 0.055124812 -0.067742161
		 0.043237567 0.055124644 0 0.07138586 0.055124644 0.05482991 0 0.055124644 0 -0.07138586
		 0.055124644 -0.067742161 -0.043237567 0.055124644 -0.067742161 0 0.055124644;
createNode polySplit -n "ShipBody:ShipBody:polySplit39";
	rename -uid "5024C2FE-49C9-7BCA-825A-90B0D01A33DE";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483622 -2147483628 -2147483626 -2147483625 -2147483618 -2147483623 
		-2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak11";
	rename -uid "FB3AF91F-423A-0372-F63F-DE8CDD52D06A";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0 -0.022055451 ;
	setAttr ".tk[19]" -type "float3" 0.0030771284 0.087494709 -0.022055451 ;
	setAttr ".tk[20]" -type "float3" 0.074991323 0 -0.022055451 ;
	setAttr ".tk[21]" -type "float3" 0.0030771284 -0.087494709 -0.022055451 ;
	setAttr ".tk[22]" -type "float3" -0.085046746 -0.048744131 -0.022055451 ;
	setAttr ".tk[23]" -type "float3" -0.085046746 0 -0.022055451 ;
	setAttr ".tk[24]" -type "float3" -0.085046746 0.048744131 -0.022055451 ;
createNode polySplit -n "ShipBody:ShipBody:polySplit40";
	rename -uid "3BFFDFDC-4A24-7BFD-4F05-66962D62FE62";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483645 -2147483644 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit41";
	rename -uid "0EAA14CC-458D-1183-A7B7-159B59463BFF";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483598 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit42";
	rename -uid "2785C001-4F5F-9624-E681-2D99AE647AFB";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483644 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:polySplit43";
	rename -uid "BAE14CCE-4B5F-E6FC-53A7-36974331525F";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483598 -2147483596 -2147483644 -2147483595 -2147483597 -2147483599 
		-2147483598;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "ShipBody:ShipBody:polyExtrudeFace1";
	rename -uid "17E69D49-40E9-B079-3E48-2E81109D0A93";
	setAttr ".ics" -type "componentList" 1 "f[30:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.63146244394483642 0 -3.9490996371228269 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81802458 0 -4.2490997 ;
	setAttr ".rs" 33892;
	setAttr ".lt" -type "double3" 0 -4.5793807710961176e-018 -0.075927255460041643 ;
	setAttr ".ls" -type "double3" 1 1 0.65365634351438573 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.60649278419914321 -0.22631597518920898 -4.2490996490437558 ;
	setAttr ".cbx" -type "double3" 1.0295564125746735 0.22631597518920898 -4.2490996490437558 ;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak12";
	rename -uid "A99DF183-4C66-03D5-A6ED-32940C1F667D";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[26:31]" -type "float3"  0.0057417974 0.095831387 0
		 -0.0946583 0.056544468 0 -0.0946583 0 0 -0.0946583 -0.056544468 0 0.0057417974 -0.095831387
		 0 0.088204831 0 0;
createNode polyCone -n "ShipBody:ShipBody:polyCone1";
	rename -uid "1052EF1E-4A2A-96B4-BD0C-06AC713A2D48";
	setAttr ".r" 0.05;
	setAttr ".h" 0.1;
	setAttr ".cuv" 3;
createNode groupId -n "ShipBody:ShipBody:groupId12";
	rename -uid "7CDED6A5-4647-7342-CFD5-7483E1FFD736";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts8";
	rename -uid "AC3A387E-4EB5-E1BB-A936-9F956DCD570A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "ShipBody:ShipBody:groupId13";
	rename -uid "6D7D7938-427B-7E11-3EB1-9F8BAA6E7B49";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:groupId14";
	rename -uid "7E9414AF-4665-9D29-438D-709B06458826";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts9";
	rename -uid "27B525CA-48BC-002F-3481-F08569CD3A72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
createNode groupId -n "ShipBody:ShipBody:groupId15";
	rename -uid "43C24BE7-4A26-9F75-CAD1-488C2482E189";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts7";
	rename -uid "6FE9837E-40A6-4EA0-E036-A3BA846AC4EC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:117]";
createNode groupId -n "ShipBody:ShipBody:groupId11";
	rename -uid "5C00A751-44B4-9448-BD1F-5E9C3BF67A1F";
	setAttr ".ihi" 0;
createNode polyUnite -n "ShipBody:ShipBody:polyUnite3";
	rename -uid "58D0A06C-4026-2402-0044-74B846B732B7";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode polyAutoProj -n "ShipBody:ShipBody:polyAutoProj1";
	rename -uid "A7146C22-450B-EFF0-2434-7B98FC46EE18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0145437717437744 1;
	setAttr ".s" -type "double3" 4.2594285011291504 4.2594285011291504 4.2594285011291504 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV1";
	rename -uid "AF73E376-4B1D-AE4F-D927-70BF9EE49C78";
	setAttr ".uopa" yes;
	setAttr -s 35 ".uvtk";
	setAttr ".uvtk[26]" -type "float2" 0.29414874 -0.0069563021 ;
	setAttr ".uvtk[27]" -type "float2" 0.29414874 -0.0069563021 ;
	setAttr ".uvtk[28]" -type "float2" 0.29414874 -0.0069563021 ;
	setAttr ".uvtk[29]" -type "float2" 0.29414874 -0.0069563021 ;
	setAttr ".uvtk[30]" -type "float2" 0.29414868 -0.0069563021 ;
	setAttr ".uvtk[31]" -type "float2" 0.29414868 -0.0069563021 ;
	setAttr ".uvtk[32]" -type "float2" 0.29414874 -0.0069563021 ;
	setAttr ".uvtk[33]" -type "float2" 0.29414868 -0.0069562998 ;
	setAttr ".uvtk[34]" -type "float2" 0.29414874 -0.0069562998 ;
	setAttr ".uvtk[35]" -type "float2" 0.29414874 -0.0069562998 ;
	setAttr ".uvtk[36]" -type "float2" 0.56743741 0.17906259 ;
	setAttr ".uvtk[37]" -type "float2" 0.56743741 0.17906259 ;
	setAttr ".uvtk[38]" -type "float2" 0.56743741 0.17906259 ;
	setAttr ".uvtk[39]" -type "float2" 0.56743741 0.17906259 ;
	setAttr ".uvtk[40]" -type "float2" 0.56743741 0.17906256 ;
	setAttr ".uvtk[41]" -type "float2" 0.56743741 0.17906256 ;
	setAttr ".uvtk[54]" -type "float2" 0.50006217 -0.46677077 ;
	setAttr ".uvtk[55]" -type "float2" 0.50006217 -0.46677077 ;
	setAttr ".uvtk[56]" -type "float2" 0.50006217 -0.46677077 ;
	setAttr ".uvtk[57]" -type "float2" 0.50006217 -0.46677077 ;
	setAttr ".uvtk[58]" -type "float2" 0.50006223 -0.46677077 ;
	setAttr ".uvtk[59]" -type "float2" 0.50006217 -0.46677077 ;
	setAttr ".uvtk[60]" -type "float2" 0.50006217 -0.46677077 ;
	setAttr ".uvtk[61]" -type "float2" 0.50006217 -0.46677077 ;
	setAttr ".uvtk[62]" -type "float2" 0.50006217 -0.46677077 ;
	setAttr ".uvtk[63]" -type "float2" 0.50006211 -0.46677077 ;
	setAttr ".uvtk[64]" -type "float2" 0.93263584 0.083229125 ;
	setAttr ".uvtk[65]" -type "float2" 0.93263584 0.083229125 ;
	setAttr ".uvtk[66]" -type "float2" 0.93263584 0.083229154 ;
	setAttr ".uvtk[67]" -type "float2" 0.93263584 0.083229154 ;
	setAttr ".uvtk[68]" -type "float2" 0.93263584 0.083229125 ;
	setAttr ".uvtk[69]" -type "float2" 0.93263584 0.083229154 ;
	setAttr ".uvtk[70]" -type "float2" 0.93263584 0.083229095 ;
	setAttr ".uvtk[71]" -type "float2" 0.93263584 0.083229095 ;
	setAttr ".uvtk[72]" -type "float2" 0.93263584 0.083229095 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV1";
	rename -uid "57A49E92-468D-DA4A-4770-43B423B037ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[34]" "f[37]" "f[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0145437717437744 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV2";
	rename -uid "B5377618-45D1-D057-992A-A987A5B0E9C9";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk";
	setAttr ".uvtk[26]" -type "float2" 0.099999957 1.3876707e-008 ;
	setAttr ".uvtk[27]" -type "float2" 0.099999957 1.3876707e-008 ;
	setAttr ".uvtk[28]" -type "float2" 0.099999957 1.3876707e-008 ;
	setAttr ".uvtk[29]" -type "float2" 0.099999957 1.3876707e-008 ;
	setAttr ".uvtk[30]" -type "float2" 0.099999957 1.3876707e-008 ;
	setAttr ".uvtk[31]" -type "float2" 0.099999957 -1.0244547e-009 ;
	setAttr ".uvtk[32]" -type "float2" 0.099999957 -1.0244547e-009 ;
	setAttr ".uvtk[33]" -type "float2" 0.099999957 6.8917876e-009 ;
	setAttr ".uvtk[34]" -type "float2" 0.099999957 6.8917876e-009 ;
	setAttr ".uvtk[35]" -type "float2" 0.099999957 6.8917876e-009 ;
	setAttr ".uvtk[54]" -type "float2" 0.15000002 -0.049999997 ;
	setAttr ".uvtk[55]" -type "float2" 0.15000002 -0.049999997 ;
	setAttr ".uvtk[56]" -type "float2" 0.15000002 -0.049999997 ;
	setAttr ".uvtk[57]" -type "float2" 0.15000002 -0.049999997 ;
	setAttr ".uvtk[58]" -type "float2" 0.15000002 -0.049999997 ;
	setAttr ".uvtk[59]" -type "float2" 0.15000002 -0.049999997 ;
	setAttr ".uvtk[60]" -type "float2" 0.15000002 -0.049999997 ;
	setAttr ".uvtk[61]" -type "float2" 0.15000002 -0.04999999 ;
	setAttr ".uvtk[62]" -type "float2" 0.15000002 -0.04999999 ;
	setAttr ".uvtk[63]" -type "float2" 0.15000002 -0.04999999 ;
	setAttr ".uvtk[151]" -type "float2" 0.89133334 -0.0069562607 ;
	setAttr ".uvtk[152]" -type "float2" 0.89133334 -0.0069562607 ;
	setAttr ".uvtk[153]" -type "float2" 0.8913334 -0.0069562607 ;
	setAttr ".uvtk[154]" -type "float2" 0.8913334 -0.0069562593 ;
	setAttr ".uvtk[155]" -type "float2" 0.89133334 -0.0069562593 ;
	setAttr ".uvtk[156]" -type "float2" 0.89133334 -0.0069562593 ;
	setAttr ".uvtk[157]" -type "float2" 0.89133334 -0.0069562593 ;
	setAttr ".uvtk[175]" -type "float2" 0.75336218 -0.51677078 ;
	setAttr ".uvtk[176]" -type "float2" 0.75336218 -0.51677078 ;
	setAttr ".uvtk[177]" -type "float2" 0.75336218 -0.51677078 ;
	setAttr ".uvtk[178]" -type "float2" 0.75336218 -0.51677078 ;
	setAttr ".uvtk[179]" -type "float2" 0.75336212 -0.51677078 ;
	setAttr ".uvtk[180]" -type "float2" 0.75336224 -0.51677078 ;
	setAttr ".uvtk[181]" -type "float2" 0.75336218 -0.51677078 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV2";
	rename -uid "4BA2AF6F-4C2F-A4C8-CD11-7F8FF9A5510F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0145437717437744 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV3";
	rename -uid "4DD9D50C-4E12-2FED-9962-F5B09C06EFDE";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[158]" -type "float2" 0.58151251 -0.42093745 ;
	setAttr ".uvtk[159]" -type "float2" 0.58151263 -0.42093745 ;
	setAttr ".uvtk[160]" -type "float2" 0.58151251 -0.42093745 ;
	setAttr ".uvtk[161]" -type "float2" 0.58151263 -0.42093745 ;
	setAttr ".uvtk[162]" -type "float2" 0.58151263 -0.42093745 ;
	setAttr ".uvtk[163]" -type "float2" 0.58151251 -0.42093745 ;
	setAttr ".uvtk[164]" -type "float2" 0.58151251 -0.42093745 ;
	setAttr ".uvtk[175]" -type "float2" 0.19999997 -1.806767e-008 ;
	setAttr ".uvtk[176]" -type "float2" 0.19999997 -2.0861638e-008 ;
	setAttr ".uvtk[177]" -type "float2" 0.19999997 -5.9604766e-009 ;
	setAttr ".uvtk[178]" -type "float2" 0.19999997 -5.9604766e-009 ;
	setAttr ".uvtk[179]" -type "float2" 0.19999997 -5.9604766e-009 ;
	setAttr ".uvtk[180]" -type "float2" 0.19999997 -1.806767e-008 ;
	setAttr ".uvtk[181]" -type "float2" 0.19999997 -1.806767e-008 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV3";
	rename -uid "CB705F7D-4E7D-87AC-7CEB-51A3B13C5D83";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0145437717437744 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV4";
	rename -uid "40E27243-4729-E94B-8773-88A5668EA194";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[158]" -type "float2" 0.20000009 -1.7881394e-008 ;
	setAttr ".uvtk[159]" -type "float2" 0.20000009 -1.7881392e-008 ;
	setAttr ".uvtk[160]" -type "float2" 0.20000009 -1.7881394e-008 ;
	setAttr ".uvtk[161]" -type "float2" 0.20000009 -2.9802334e-009 ;
	setAttr ".uvtk[162]" -type "float2" 0.20000009 -2.9802334e-009 ;
	setAttr ".uvtk[163]" -type "float2" 0.20000009 -2.9802334e-009 ;
	setAttr ".uvtk[164]" -type "float2" 0.20000009 -2.9802327e-009 ;
	setAttr ".uvtk[182]" -type "float2" 1.0967623 -0.21677084 ;
	setAttr ".uvtk[183]" -type "float2" 1.0967623 -0.21677084 ;
	setAttr ".uvtk[184]" -type "float2" 1.0967623 -0.21677084 ;
	setAttr ".uvtk[185]" -type "float2" 1.0967623 -0.21677084 ;
	setAttr ".uvtk[186]" -type "float2" 1.0967623 -0.21677084 ;
	setAttr ".uvtk[187]" -type "float2" 1.0967624 -0.21677084 ;
	setAttr ".uvtk[188]" -type "float2" 1.0967623 -0.21677084 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV4";
	rename -uid "A69ED66C-4AD6-BB28-93C6-59B1D27AA56B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0145437717437744 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV5";
	rename -uid "E11C3262-4437-9A48-0567-47BC5C3D7887";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk[182:188]" -type "float2" 2.3841862e-008 -0.15000001
		 2.3841862e-008 -0.15000001 2.3841862e-008 -0.15000001 2.3841862e-008 -0.15000001
		 2.3841862e-008 -0.15000001 2.3841862e-008 -0.15000001 2.3841862e-008 -0.15000001;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV5";
	rename -uid "B997E7F0-428B-76A5-48EE-8ABAF5779A79";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0145437717437744 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV6";
	rename -uid "CBC53519-42D0-7F11-4437-BD86E864822B";
	setAttr ".uopa" yes;
	setAttr -s 27 ".uvtk";
	setAttr ".uvtk[111]" -type "float2" 0.19135568 -0.0048729796 ;
	setAttr ".uvtk[112]" -type "float2" 0.19135568 -0.0048729498 ;
	setAttr ".uvtk[113]" -type "float2" 0.19135568 -0.0048729498 ;
	setAttr ".uvtk[114]" -type "float2" 0.19135568 -0.0048729796 ;
	setAttr ".uvtk[115]" -type "float2" 0.19135574 -0.0048729796 ;
	setAttr ".uvtk[116]" -type "float2" 0.19135574 -0.0048729498 ;
	setAttr ".uvtk[117]" -type "float2" 0.19135574 -0.0048729498 ;
	setAttr ".uvtk[118]" -type "float2" 0.19135568 -0.0048729498 ;
	setAttr ".uvtk[119]" -type "float2" 0.19135568 -0.0048729498 ;
	setAttr ".uvtk[120]" -type "float2" 0.19135574 -0.0048729796 ;
	setAttr ".uvtk[121]" -type "float2" 0.19135574 -0.0048729498 ;
	setAttr ".uvtk[122]" -type "float2" 0.19135574 -0.0048729498 ;
	setAttr ".uvtk[123]" -type "float2" 0.19135574 -0.0048729498 ;
	setAttr ".uvtk[124]" -type "float2" 0.19135574 -0.0048729498 ;
	setAttr ".uvtk[125]" -type "float2" 0.19135568 -0.0048729535 ;
	setAttr ".uvtk[126]" -type "float2" 0.19135574 -0.0048729535 ;
	setAttr ".uvtk[127]" -type "float2" 0.19135568 -0.0048729535 ;
	setAttr ".uvtk[128]" -type "float2" 0.19135574 -0.0048729535 ;
	setAttr ".uvtk[129]" -type "float2" 0.19135574 -0.0048729531 ;
	setAttr ".uvtk[130]" -type "float2" 0.19135574 -0.0048729526 ;
	setAttr ".uvtk[182]" -type "float2" 0.05000006 -0.15000002 ;
	setAttr ".uvtk[183]" -type "float2" 0.05000006 -0.15000001 ;
	setAttr ".uvtk[184]" -type "float2" 0.05000006 -0.15000001 ;
	setAttr ".uvtk[185]" -type "float2" 0.05000006 -0.15000001 ;
	setAttr ".uvtk[186]" -type "float2" 0.05000006 -0.15000001 ;
	setAttr ".uvtk[187]" -type "float2" 0.05000006 -0.15000002 ;
	setAttr ".uvtk[188]" -type "float2" 0.05000006 -0.15000002 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV6";
	rename -uid "867860BC-420E-8E28-B63E-AFAC7CEB559B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[61]" "f[74:76]" "f[80]" "f[102]" "f[106:108]" "f[114:115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0145437717437744 1;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV7";
	rename -uid "DCC51E9A-4742-C3F8-E981-E4934437ACE5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[61]" "f[74:76]" "f[80]" "f[102]" "f[106:108]" "f[114:115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0145437717437744 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV7";
	rename -uid "4BD7E560-49A8-C093-E707-9AAEA3FD3D43";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk[91:130]" -type "float2" 0.32583329 -0.0048729838
		 0.32583329 -0.0048729801 0.32583329 -0.0048729801 0.32583329 -0.0048729838 0.32583329
		 -0.0048729838 0.32583329 -0.0048729801 0.32583329 -0.0048729801 0.32583329 -0.0048729801
		 0.32583329 -0.0048729829 0.32583329 -0.0048729829 0.32583329 -0.0048729801 0.32583329
		 -0.0048729829 0.32583329 -0.0048729801 0.32583323 -0.0048729801 0.32583323 -0.0048729801
		 0.32583323 -0.0048729801 0.32583329 -0.0048729801 0.32583329 -0.0048729801 0.32583329
		 -0.0048729801 0.32583323 -0.0048729801 -0.19999999 2.8638169e-008 -0.19999999 -1.1641532e-009
		 -0.19999999 -1.1641532e-009 -0.19999999 2.8638169e-008 -0.19999999 2.8638169e-008
		 -0.19999999 -1.1641532e-009 -0.19999999 -1.1641532e-009 -0.19999999 1.3737008e-008
		 -0.19999999 1.3737008e-008 -0.19999999 2.8638169e-008 -0.19999999 -1.1641532e-009
		 -0.19999999 1.3737008e-008 -0.19999999 1.3737008e-008 -0.19999999 1.3737008e-008
		 -0.19999999 1.1874363e-008 -0.19999999 1.1874363e-008 -0.19999999 1.3737008e-008
		 -0.19999999 1.1874363e-008 -0.19999999 1.2107193e-008 -0.19999999 1.1874363e-008;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV8";
	rename -uid "7F833C3F-4BBB-0DF9-D66D-8397D3E80B1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[61]" "f[74:76]" "f[80]" "f[102]" "f[106:108]" "f[114:115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0145437717437744 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV8";
	rename -uid "DEAB4D30-4089-FB4E-0CDA-CBAFDA09B97B";
	setAttr ".uopa" yes;
	setAttr -s 21 ".uvtk";
	setAttr ".uvtk[91]" -type "float2" -0.050000042 3.608875e-009 ;
	setAttr ".uvtk[92]" -type "float2" -0.050000042 -3.8417056e-009 ;
	setAttr ".uvtk[93]" -type "float2" -0.050000042 -3.8417056e-009 ;
	setAttr ".uvtk[94]" -type "float2" -0.050000042 3.608875e-009 ;
	setAttr ".uvtk[95]" -type "float2" -0.050000042 3.608875e-009 ;
	setAttr ".uvtk[96]" -type "float2" -0.050000042 -3.8417056e-009 ;
	setAttr ".uvtk[97]" -type "float2" -0.050000042 1.1059456e-008 ;
	setAttr ".uvtk[98]" -type "float2" -0.050000042 1.1059456e-008 ;
	setAttr ".uvtk[99]" -type "float2" -0.050000042 4.5401976e-009 ;
	setAttr ".uvtk[100]" -type "float2" -0.050000042 3.8417056e-009 ;
	setAttr ".uvtk[101]" -type "float2" -0.050000042 1.1059456e-008 ;
	setAttr ".uvtk[102]" -type "float2" -0.050000042 4.5401976e-009 ;
	setAttr ".uvtk[103]" -type "float2" -0.050000042 -1.8742867e-008 ;
	setAttr ".uvtk[104]" -type "float2" -0.050000042 -1.8742867e-008 ;
	setAttr ".uvtk[105]" -type "float2" -0.050000042 -3.8417056e-009 ;
	setAttr ".uvtk[106]" -type "float2" -0.050000042 1.1059456e-008 ;
	setAttr ".uvtk[107]" -type "float2" -0.050000042 -3.8417056e-009 ;
	setAttr ".uvtk[108]" -type "float2" -0.050000042 1.1059456e-008 ;
	setAttr ".uvtk[109]" -type "float2" -0.050000042 -1.8742867e-008 ;
	setAttr ".uvtk[110]" -type "float2" -0.050000042 -1.8742867e-008 ;
createNode polyCube -n "ShipBody:ShipBody:polyCube6";
	rename -uid "88FFB518-4AF3-D9CD-DBB7-5AB9C4B5BF94";
	setAttr ".w" 0.3;
	setAttr ".h" 0.1;
	setAttr ".d" 0.1;
	setAttr ".cuv" 4;
createNode polySeparate -n "ShipBody:ShipBody:polySeparate1";
	rename -uid "7BBD78D1-49EF-A596-0AF1-478FA5A9A9EE";
	setAttr ".ic" 7;
	setAttr -s 7 ".out";
createNode groupId -n "ShipBody:ShipBody:groupId16";
	rename -uid "A08853C0-4B3E-FBF1-9A11-A385A775072D";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts10";
	rename -uid "6BEEEE6B-4EF0-DD9B-606F-44BD036882A7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:117]";
createNode groupId -n "ShipBody:ShipBody:groupId17";
	rename -uid "516D3E27-4F18-62EB-953D-5DAAFD9C6775";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts11";
	rename -uid "B93B70AB-4972-6BE8-9C4F-788213E1D94A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:117]";
createNode groupId -n "ShipBody:ShipBody:groupId18";
	rename -uid "B88B2866-4260-CBC8-8E5D-FB9EB6D592D8";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts12";
	rename -uid "4CFFA955-414F-34C7-6FD5-10BA0521A0FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:117]";
createNode groupId -n "ShipBody:ShipBody:groupId19";
	rename -uid "DBA4701B-4D7C-99B0-97B6-0E94F0650AE9";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts13";
	rename -uid "34934E66-43D7-D785-1B07-B1BA868AA227";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:117]";
createNode groupId -n "ShipBody:ShipBody:groupId20";
	rename -uid "B0806B3F-439A-9B9E-BC1E-6390B55F5747";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts14";
	rename -uid "A54CB466-44D8-CCF3-CB23-708A3EBF150B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:117]";
createNode groupId -n "ShipBody:ShipBody:groupId21";
	rename -uid "C4D78B14-4753-913B-FD06-34B13E60CB79";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts15";
	rename -uid "434CD004-4F37-E083-77B2-28BFD224585D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:117]";
createNode groupId -n "ShipBody:ShipBody:groupId22";
	rename -uid "66194BE3-4E65-B752-3661-18B7A7080910";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts16";
	rename -uid "3A2E118D-4EE0-75E4-94B5-9B952382A17B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:117]";
createNode polyCylinder -n "ShipBody:ShipBody:polyCylinder1";
	rename -uid "D3A28337-4465-767A-D2A8-8090A86604B6";
	setAttr ".r" 0.1;
	setAttr ".h" 0.5;
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "ShipBody:ShipBody:polyCylinder2";
	rename -uid "EF4B488E-428B-BCA0-FDE8-42A92A1F26F4";
	setAttr ".r" 0.04;
	setAttr ".h" 0.2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyUnite -n "ShipBody:ShipBody:polyUnite4";
	rename -uid "A58942E0-4530-CFBC-130E-5F83AED33DA8";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId23";
	rename -uid "C6441208-49F7-CF54-85D9-3CBF50639A43";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts17";
	rename -uid "5129242F-4861-120E-D2F2-43B001F82BE2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "ShipBody:ShipBody:groupId24";
	rename -uid "38BADB58-4B02-9D67-8E78-B1A694654204";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:groupId25";
	rename -uid "BFDAC387-46C0-C413-E9B7-B8BAF18203CD";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts18";
	rename -uid "C0817826-43A6-4CE7-FBDB-248014052718";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "ShipBody:ShipBody:groupId26";
	rename -uid "B15CFD04-46B7-F819-EAC7-798EFC10626E";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:groupId27";
	rename -uid "EE79A0EC-499E-FC11-092C-8EB922994AEE";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts19";
	rename -uid "69BACC05-4BB9-9684-3D0B-B3B3369C883F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "ShipBody:ShipBody:groupId28";
	rename -uid "43BCC153-4805-D938-A042-31BB821AE0BA";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:groupId29";
	rename -uid "E3A80560-4CD8-4061-43DB-6486734C64EE";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts20";
	rename -uid "D742C17E-4F7E-B886-3B5B-55AD9BB88A11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:83]";
createNode polyUnite -n "ShipBody:ShipBody:polyUnite5";
	rename -uid "19549545-4530-1121-57AB-8595F1FB96F2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId30";
	rename -uid "1865BC77-4143-8BBB-3AD0-A39ED96F2584";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts21";
	rename -uid "671F08EC-40E1-06DB-1600-8E9BFF3BE11A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode polyUnite -n "ShipBody:ShipBody:polyUnite6";
	rename -uid "1F35F7F2-4E2A-CDD9-4CF6-3E882ECC04F1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId31";
	rename -uid "AB17DDE6-4742-712A-130A-11A81B3F7A5D";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts22";
	rename -uid "51E567C7-4633-B279-22FF-42BA55D0662B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode polyUnite -n "ShipBody:ShipBody:polyUnite7";
	rename -uid "747ACBAB-4A27-ECE2-2F45-FFAD9AE46EAD";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId32";
	rename -uid "9E7847BD-477E-7F69-7DAD-C286D749CE15";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts23";
	rename -uid "65BAD82A-413D-715C-9D3B-FDB8086B1E21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode polyMirror -n "ShipBody:ShipBody:polyMirror3";
	rename -uid "8A7208C6-4ADB-3857-754A-178F8A743FD7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.26876319985655384 0 -1.2265113180561791 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 84;
	setAttr ".lnf" 167;
createNode polyMirror -n "ShipBody:ShipBody:polyMirror4";
	rename -uid "08F1E35C-4CC1-84A5-846B-42AF51D935CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 20;
	setAttr ".lnf" 39;
createNode polyUnite -n "ShipBody:ShipBody:polyUnite8";
	rename -uid "FFC0A801-48D4-23C9-2A88-16AAF42DAD8E";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId33";
	rename -uid "A657F355-47CB-F98B-0F2C-D29D436A7051";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts24";
	rename -uid "4E8C5D2A-4788-87E1-4827-5CAED562FA5B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:285]";
createNode polyCone -n "ShipBody:ShipBody:polyCone2";
	rename -uid "86DCCE9D-42B9-1320-3A27-D4994CDE9B20";
	setAttr ".r" 0.5;
	setAttr ".h" 1;
	setAttr ".sa" 6;
	setAttr ".cuv" 3;
createNode polyUnite -n "ShipBody:ShipBody:polyUnite9";
	rename -uid "40112949-4472-47E6-884E-B7B33295EF58";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId34";
	rename -uid "2D318FFB-4124-7E21-3549-EC8193402DDA";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts25";
	rename -uid "993AB080-44B8-C927-6582-DEBAB645DB06";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:6]";
createNode groupId -n "ShipBody:ShipBody:groupId35";
	rename -uid "CC1C7074-4B0E-72C1-0CE8-C9A2E1896242";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:groupId36";
	rename -uid "825E1252-4B9B-30AA-0DB1-54A4C12EF6C4";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts26";
	rename -uid "1464CA36-45AC-CEFB-8671-F8BDBA160B7A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode renderLayerManager -n "ShipBody:ShipBody:ShipEngine:renderLayerManager";
	rename -uid "27BB086E-4D30-E681-18A7-7B932C4BABA4";
createNode renderLayer -n "ShipBody:ShipBody:ShipEngine:defaultRenderLayer";
	rename -uid "02037D4F-4AE4-0574-F95F-7FB6C4A205A6";
	setAttr ".g" yes;
createNode polyCube -n "ShipBody:ShipBody:ShipEngine:polyCube1";
	rename -uid "0E42F50B-4C95-DB59-4486-1DA27FD0DE94";
	setAttr ".d" 3;
	setAttr ".sw" 2;
	setAttr ".sh" 3;
	setAttr ".cuv" 4;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak1";
	rename -uid "C83223AE-49E2-7B8E-181C-E7BADE459191";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[2]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.39832202 -0.088370159 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.088370159 0 ;
	setAttr ".tk[5]" -type "float3" 0.39832202 -0.088370159 0 ;
	setAttr ".tk[6]" -type "float3" -0.39832202 0.088370174 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.088370174 0 ;
	setAttr ".tk[8]" -type "float3" 0.39832202 0.088370174 0 ;
	setAttr ".tk[9]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[11]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[12]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[14]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.39832202 0.088370159 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.088370159 0 ;
	setAttr ".tk[17]" -type "float3" 0.39832202 0.088370159 0 ;
	setAttr ".tk[18]" -type "float3" -0.39832202 -0.088370174 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.088370174 0 ;
	setAttr ".tk[20]" -type "float3" 0.39832202 -0.088370174 0 ;
	setAttr ".tk[21]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[23]" -type "float3" 1.4901161e-008 0 0 ;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit1";
	rename -uid "1D51B2EE-450C-462D-AA48-F59C2396D8DB";
	setAttr -s 3 ".e[0:2]"  0.5 1 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483628 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit2";
	rename -uid "DE2CBFB7-4391-A18B-8574-6E93F414BE02";
	setAttr -s 3 ".e[0:2]"  0.5 0 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483645 -2147483645 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit3";
	rename -uid "D33B07FA-43DD-791D-798C-8EA8A2AD1C51";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit4";
	rename -uid "87490F04-4030-36BD-72C1-3991D9ED7ED9";
	setAttr -s 5 ".e[0:4]"  0.5 0.50000006 1 0.5 0.49999994;
	setAttr -s 5 ".d[0:4]"  -2147483604 -2147483644 -2147483604 -2147483643 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit5";
	rename -uid "498C7F22-4186-CAA2-3F0C-589A0778DB03";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0 0.5 0.50000006;
	setAttr -s 5 ".d[0:4]"  -2147483602 -2147483645 -2147483628 -2147483601 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit6";
	rename -uid "FCA3947D-4DA3-DF48-9138-2C8A237D943F";
	setAttr -s 3 ".e[0:2]"  0.5 0.89999998 0.40000001;
	setAttr -s 3 ".d[0:2]"  -2147483627 -2147483628 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit7";
	rename -uid "93E42DB4-4A3C-5B97-34CB-1E928EEFA6E2";
	setAttr -s 3 ".e[0:2]"  0.5 1 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483628 -2147483588 -2147483600;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit8";
	rename -uid "AB1FA834-4971-9BA7-E4E4-4AB609914423";
	setAttr -s 3 ".e[0:2]"  1 0.75 1;
	setAttr -s 3 ".d[0:2]"  -2147483643 -2147483588 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit9";
	rename -uid "85609BD4-495E-3746-F71E-61AAC6763802";
	setAttr -s 3 ".e[0:2]"  0 0.66666698 0;
	setAttr -s 3 ".d[0:2]"  -2147483603 -2147483588 -2147483602;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit10";
	rename -uid "78735171-45E9-6EBE-532A-DEA143743941";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483603 -2147483588 -2147483602;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit11";
	rename -uid "010F70BD-41A3-17EB-E4B2-8FA073C23BE6";
	setAttr -s 3 ".e[0:2]"  1 0.25 1;
	setAttr -s 3 ".d[0:2]"  -2147483604 -2147483587 -2147483601;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit12";
	rename -uid "20738D02-41D6-5A8A-A742-60BFC133FFF4";
	setAttr -s 3 ".e[0:2]"  0 0.33333299 0;
	setAttr -s 3 ".d[0:2]"  -2147483604 -2147483575 -2147483601;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit13";
	rename -uid "C50E9AC2-4A2F-5F1D-1705-27B86EE3D565";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483572 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak2";
	rename -uid "20B07946-4BEA-5BE8-1940-BF9D0AA0A60B";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.32601184 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.38107857 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.32601184 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.20553866 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.6084097 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.20553866 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.19682452 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.59087908 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.19682452 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.30176252 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.35125792 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.30176252 ;
	setAttr ".tk[15]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[17]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[18]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[20]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.46612442 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.46612442 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.4811334 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.4811334 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.64496118 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.55785453 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.33610898 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.55785453 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.33610898 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.34827507 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.57473326 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.57473326 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.34827507 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.20419966 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.644961 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.20419966 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.63568997 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.62854117 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.60991347 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.5123893 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.37358594 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.60991353 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.51238912 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.37358591 ;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit14";
	rename -uid "9CB46926-4BA5-F578-3795-8D96FC1B5B96";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483605 -2147483623 -2147483622 -2147483621 -2147483607;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit15";
	rename -uid "08F4672A-4379-CFF9-C6FE-26BCD0172BE1";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483608 -2147483609 -2147483610 -2147483611 -2147483606;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit16";
	rename -uid "1D8D49BF-4C8E-65E7-0D9F-9893DE4FEDF8";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483607 -2147483557;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit17";
	rename -uid "96681172-4ECD-1AAB-DB57-59BE76CA7ECB";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483566 -2147483606;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak3";
	rename -uid "F18C2F19-4D5B-0C7A-3491-6AA7A9DEC4B3";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.16062963 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.16062963 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.10834861 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.86170298 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.78745049 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.86170298 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.86170298 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.78745049 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.80752867 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.86170298 ;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit18";
	rename -uid "BB21844F-4666-86C9-D00B-28B52620F652";
	setAttr -s 11 ".e[0:10]"  0.69999999 0.69999999 0.69999999 0.69999999
		 0.69999999 0.30000001 0.30000001 0.30000001 0.69999999 0.69999999 0.69999999;
	setAttr -s 11 ".d[0:10]"  -2147483611 -2147483610 -2147483609 -2147483608 -2147483607 -2147483563 
		-2147483564 -2147483565 -2147483605 -2147483606 -2147483611;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak4";
	rename -uid "E67F6D56-4254-0ED2-4D1C-A09DFEEFFA77";
	setAttr ".uopa" yes;
	setAttr -s 46 ".tk";
	setAttr ".tk[0]" -type "float3" 0.065545537 0.065545537 0 ;
	setAttr ".tk[2]" -type "float3" -0.065545537 0.065545537 0 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.0080831628 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.0098994533 ;
	setAttr ".tk[9]" -type "float3" 0.065545522 -0.065545537 1.4901161e-008 ;
	setAttr ".tk[11]" -type "float3" -0.065545522 -0.065545537 1.4901161e-008 ;
	setAttr ".tk[12]" -type "float3" 0.22310321 -0.065545537 0 ;
	setAttr ".tk[14]" -type "float3" -0.22310321 -0.065545537 0 ;
	setAttr ".tk[15]" -type "float3" 0.32578239 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.32578239 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.32578239 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.32578239 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.22310321 0.065545537 0 ;
	setAttr ".tk[23]" -type "float3" -0.22310321 0.065545537 0 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.10786817 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.0013389587 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.11189945 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.0013389587 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.071461916 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.061892044 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.10354587 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[49]" -type "float3" 0.065545537 -0.065545537 -0.14769581 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[51]" -type "float3" -0.065545537 -0.065545537 -0.14769581 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[54]" -type "float3" -0.065545537 0.065545537 -0.14769602 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[56]" -type "float3" 0.065545537 0.065545537 -0.14769602 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.14769582 ;
	setAttr ".tk[58]" -type "float3" 0.22310321 0.065545537 -0.01921916 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.019219166 ;
	setAttr ".tk[60]" -type "float3" -0.22310321 0.065545537 -0.01921916 ;
	setAttr ".tk[61]" -type "float3" -0.32578239 0 -0.019219166 ;
	setAttr ".tk[62]" -type "float3" -0.32578239 0 -0.019219166 ;
	setAttr ".tk[63]" -type "float3" -0.22310321 -0.065545537 -0.019219175 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.019219166 ;
	setAttr ".tk[65]" -type "float3" 0.22310321 -0.065545537 -0.019219175 ;
	setAttr ".tk[66]" -type "float3" 0.32578239 0 -0.019219166 ;
	setAttr ".tk[67]" -type "float3" 0.32578239 0 -0.019219166 ;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit19";
	rename -uid "18798441-407A-842F-B38F-C6A7C32A8961";
	setAttr -s 3 ".e[0:2]"  0 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483591 -2147483548 -2147483533;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit20";
	rename -uid "8511CC91-4283-2AE3-BA8E-53B31B9AD497";
	setAttr -s 3 ".e[0:2]"  1 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483629 -2147483547 -2147483528;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak5";
	rename -uid "22C578C9-4F36-C42F-BE5F-3FB896DCFBCC";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[3]" -type "float3" 0.14441933 -0.0025705099 0 ;
	setAttr ".tk[5]" -type "float3" -0.14441933 -0.0025705099 0 ;
	setAttr ".tk[6]" -type "float3" 0.14441933 0.015477747 0 ;
	setAttr ".tk[8]" -type "float3" -0.14441933 -2.2351742e-008 0 ;
	setAttr ".tk[12]" -type "float3" -0.0041540861 -0.22503753 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.24834485 0 ;
	setAttr ".tk[14]" -type "float3" 0.0041540861 -0.22503753 0 ;
	setAttr ".tk[15]" -type "float3" 0.29148871 -0.04561989 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.041001141 0 ;
	setAttr ".tk[17]" -type "float3" -0.29148871 -0.04561989 0 ;
	setAttr ".tk[18]" -type "float3" 0.29148871 0.041001178 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.041001171 0 ;
	setAttr ".tk[20]" -type "float3" -0.29148871 0.041001178 0 ;
	setAttr ".tk[21]" -type "float3" -0.0041540861 0.22041878 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.24834485 0 ;
	setAttr ".tk[23]" -type "float3" 0.0041540861 0.22041878 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.0039659441 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.0028790962 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.0025705118 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.0025705118 0 ;
	setAttr ".tk[44]" -type "float3" 0.052817032 0 -0.042138375 ;
	setAttr ".tk[47]" -type "float3" -0.052817032 0 -0.042138375 ;
	setAttr ".tk[48]" -type "float3" 0.14441933 0.015477762 0 ;
	setAttr ".tk[52]" -type "float3" -0.14441933 -1.1175871e-008 0 ;
	setAttr ".tk[53]" -type "float3" -0.14441933 -0.0025705099 0 ;
	setAttr ".tk[57]" -type "float3" 0.14441933 -0.0025705099 0 ;
	setAttr ".tk[61]" -type "float3" -0.29579023 0.041001167 0 ;
	setAttr ".tk[62]" -type "float3" -0.29549536 -0.041001167 0 ;
	setAttr ".tk[66]" -type "float3" 0.29549539 -0.041001167 0 ;
	setAttr ".tk[67]" -type "float3" 0.29579026 0.041001167 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.044631436 0 ;
	setAttr ".tk[69]" -type "float3" -0.29579023 -0.044631436 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.044631436 0 ;
	setAttr ".tk[71]" -type "float3" 0.29579026 -0.044631436 0 ;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit21";
	rename -uid "59C48CC7-465A-3243-1EAA-869BF450BACC";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483631;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit22";
	rename -uid "E6990547-4821-CEAC-17FE-009715B00428";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "ShipBody:ShipBody:ShipEngine:polyCube2";
	rename -uid "10652BB1-4796-FA13-9CEB-0B8DC953533F";
	setAttr ".h" 0.15;
	setAttr ".d" 0.5;
	setAttr ".cuv" 4;
createNode polyCube -n "ShipBody:ShipBody:ShipEngine:polyCube3";
	rename -uid "12896B2C-4FC2-3B2E-3C68-8E8BE79C30B4";
	setAttr ".w" 0.5;
	setAttr ".h" 0.15;
	setAttr ".cuv" 4;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit23";
	rename -uid "1DF9F43C-4826-0177-8946-B38420B69CAC";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit24";
	rename -uid "BE02C2EB-49F6-2F0A-FEF8-419B8E1C9BB5";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyUnite -n "ShipBody:ShipBody:ShipEngine:polyUnite1";
	rename -uid "AA52E6E8-450F-CC35-D9D4-BAA93CB79A21";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId1";
	rename -uid "6819D773-4076-71F1-80B9-3FB96A7A2E96";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts1";
	rename -uid "4655D7BE-4310-832B-500A-4992C46C4B3C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId2";
	rename -uid "A02CB4D1-4D04-E15E-A159-59A68E621ECF";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId3";
	rename -uid "56481771-4880-1163-A713-F5BA4BE1C223";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts2";
	rename -uid "20C42407-4F14-1C88-D228-7C87492BEFFB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId4";
	rename -uid "422303BA-4CF8-8583-FB29-2680BE9B5EA9";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId5";
	rename -uid "049174ED-427B-1004-0571-C5AD727351AC";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts3";
	rename -uid "9897DD1F-40A2-2AE9-CDE1-9EB8B73224DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode polyMirror -n "ShipBody:ShipBody:ShipEngine:polyMirror1";
	rename -uid "B6BFD315-4D92-DDEF-AEA9-A89F10F72E43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 14;
	setAttr ".lnf" 27;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit25";
	rename -uid "C8F4D988-47FF-FBC0-F865-ACB176315084";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483628 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit26";
	rename -uid "EDE51A68-4994-71D7-BC85-06860628E09C";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483595 -2147483592;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak6";
	rename -uid "93CC1C4F-46D3-F089-9532-10B43A8541C6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0 0.38989282 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.38989282 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.38989282 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.38989282 ;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit27";
	rename -uid "C9478631-4CEB-136E-77CD-3C88A301B071";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483642 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit28";
	rename -uid "EDE7FC64-466A-9392-F1B5-FCB0C3467EAB";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483610 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak7";
	rename -uid "BB81C96A-4C09-5271-C99C-D7AEDB11FC01";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  0 0 -0.24384946 0 0 -0.24384946
		 0 0 -0.24384946 0 0 -0.24384946;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit29";
	rename -uid "8B135C79-4D5B-031D-1B35-F69FA9519547";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483631 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit30";
	rename -uid "4961438F-4D6A-B54B-38E2-3988E0A67EAC";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483601 -2147483618 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit31";
	rename -uid "4501F3C9-43DB-2C0A-E785-5F9EC6392988";
	setAttr -s 3 ".e[0:2]"  1 0.48029101 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483616 -2147483602 -2147483609;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit32";
	rename -uid "AF45A276-4FD9-1A1C-19C4-BAA84DF658F8";
	setAttr -s 3 ".e[0:2]"  0.5 0.47564799 0;
	setAttr -s 3 ".d[0:2]"  -2147483634 -2147483639 -2147483574;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyUnite -n "ShipBody:ShipBody:ShipEngine:polyUnite2";
	rename -uid "11848718-4F25-A481-F060-17BB9E3EDF1C";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId6";
	rename -uid "A5D069AD-4AC7-B127-06A0-44A2A3FBA218";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts4";
	rename -uid "08D64257-4323-D6CE-7F75-CBA6158109FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId7";
	rename -uid "0FA1D389-4EDA-F67D-8903-32B6A3C0F124";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId8";
	rename -uid "F8A812A3-48DF-A859-1553-CBB6DF269D88";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts5";
	rename -uid "834C29DC-470C-B614-739A-3A81770B39F8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode polyCube -n "ShipBody:ShipBody:ShipEngine:polyCube4";
	rename -uid "EC5326CB-4D52-95BF-FCFC-08AC2693DB5F";
	setAttr ".w" 0.5;
	setAttr ".h" 0.5;
	setAttr ".d" 0.6;
	setAttr ".sh" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "ShipBody:ShipBody:ShipEngine:polyCube5";
	rename -uid "4E6698F0-4969-0E20-6F61-CC85C60809A1";
	setAttr ".w" 0.3;
	setAttr ".h" 0.2;
	setAttr ".d" 0.2;
	setAttr ".cuv" 4;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak8";
	rename -uid "63B7ABA9-4B5C-F7E5-DAF3-4FA1EB21225C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.14151087 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.14151087 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.14151087 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.14151087 ;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit33";
	rename -uid "31778CAD-4F73-33BB-9B51-BFA369DFE199";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit34";
	rename -uid "CD9BE634-4F3F-A166-FC90-27983E46182B";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483639 -2147483634 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMirror -n "ShipBody:ShipBody:ShipEngine:polyMirror2";
	rename -uid "B05D5A02-456F-6EA1-FCA5-7482027A0D9F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.43105084189264542 0 -1.2160877961673882 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 9;
	setAttr ".lnf" 17;
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId9";
	rename -uid "5ECF937A-4451-5BF8-9BA5-308B522FCED9";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts6";
	rename -uid "99CC9AED-4B31-9246-9327-39BEEA3756F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId10";
	rename -uid "D7FF7F24-48FE-D8DB-DFC3-53AA29D638B8";
	setAttr ".ihi" 0;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak9";
	rename -uid "E74252FE-47D4-7710-8F63-5CB63E6E981F";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0.19958839 0.09601739 0 -0.044574969
		 -0.010969203 0 0.19958839 0 0 0.17998941 0 0 0.19958839 -0.09601739 0 -0.044574969
		 0.010969203 0 0.19958839 -0.09601739 0 -0.044574969 0.010969203 0 0.19958839 0 0
		 0.17998941 0 0 0.19958839 0.09601739 0 -0.044574969 -0.010969203 0;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit35";
	rename -uid "33374D58-4AAC-ABA3-CA39-8DAFC0479D5B";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483639 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit36";
	rename -uid "7010E8FA-4F5F-FF98-116F-1F8FBC911772";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit37";
	rename -uid "CD2466BC-40B3-1996-3760-06938EC5EECF";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit38";
	rename -uid "A0A6B34B-4F70-B4FA-1BD1-ABB6FD6DC6E3";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483624 -2147483627 -2147483628 -2147483626 -2147483625 -2147483647 
		-2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak10";
	rename -uid "F1153161-45B1-2BF1-731F-EDB06B344F79";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[12:18]" -type "float3"  0 0 0.055124812 -0.067742161
		 0.043237567 0.055124644 0 0.07138586 0.055124644 0.05482991 0 0.055124644 0 -0.07138586
		 0.055124644 -0.067742161 -0.043237567 0.055124644 -0.067742161 0 0.055124644;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit39";
	rename -uid "439A87A6-4095-3EBD-7852-B685EC78BA31";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483622 -2147483628 -2147483626 -2147483625 -2147483618 -2147483623 
		-2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak11";
	rename -uid "2F7A67CB-4BF4-D824-5225-75BF9258665D";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0 -0.022055451 ;
	setAttr ".tk[19]" -type "float3" 0.0030771284 0.087494709 -0.022055451 ;
	setAttr ".tk[20]" -type "float3" 0.074991323 0 -0.022055451 ;
	setAttr ".tk[21]" -type "float3" 0.0030771284 -0.087494709 -0.022055451 ;
	setAttr ".tk[22]" -type "float3" -0.085046746 -0.048744131 -0.022055451 ;
	setAttr ".tk[23]" -type "float3" -0.085046746 0 -0.022055451 ;
	setAttr ".tk[24]" -type "float3" -0.085046746 0.048744131 -0.022055451 ;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit40";
	rename -uid "3618E286-45CE-F692-660E-E1851C46714D";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483645 -2147483644 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit41";
	rename -uid "9FCBD77F-4BAE-ED41-7CEA-20A5F4A9E05D";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483598 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit42";
	rename -uid "237A528A-46DB-6C6F-B7CA-35A3A77E7D38";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483644 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "ShipBody:ShipBody:ShipEngine:polySplit43";
	rename -uid "78CFA0D9-440F-6577-DB92-999565DFDD37";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483598 -2147483596 -2147483644 -2147483595 -2147483597 -2147483599 
		-2147483598;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "ShipBody:ShipBody:ShipEngine:polyExtrudeFace1";
	rename -uid "52253D12-4B64-2758-6E52-E093B0C090A6";
	setAttr ".ics" -type "componentList" 1 "f[30:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.63146244394483642 0 -3.9490996371228269 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81802458 0 -4.2490997 ;
	setAttr ".rs" 33892;
	setAttr ".lt" -type "double3" 0 -4.5793807710961176e-018 -0.075927255460041643 ;
	setAttr ".ls" -type "double3" 1 1 0.65365634351438573 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.60649278419914321 -0.22631597518920898 -4.2490996490437558 ;
	setAttr ".cbx" -type "double3" 1.0295564125746735 0.22631597518920898 -4.2490996490437558 ;
createNode polyTweak -n "ShipBody:ShipBody:ShipEngine:polyTweak12";
	rename -uid "23EF0C01-463D-1CD5-FA0D-188816084525";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[26:31]" -type "float3"  0.0057417974 0.095831387 0
		 -0.0946583 0.056544468 0 -0.0946583 0 0 -0.0946583 -0.056544468 0 0.0057417974 -0.095831387
		 0 0.088204831 0 0;
createNode polyCone -n "ShipBody:ShipBody:ShipEngine:polyCone1";
	rename -uid "4F5D59C8-4A0B-1838-0070-1C82D94DA57F";
	setAttr ".r" 0.05;
	setAttr ".h" 0.1;
	setAttr ".cuv" 3;
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId12";
	rename -uid "D6B17D54-426B-EE4C-1FE6-F5815216A24C";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts8";
	rename -uid "99578FF2-45C9-20EA-F56A-C7BB5A1827C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId13";
	rename -uid "7FA4EAF6-4843-3B15-CDA4-DF9FC49DAB95";
	setAttr ".ihi" 0;
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId14";
	rename -uid "5DC853D2-4AAC-36FF-9AE7-299989598D7D";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts9";
	rename -uid "4E8BDEC5-48D7-B6E3-0CE6-D491F9F96DA1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId15";
	rename -uid "4164A39F-4BF1-93EE-18C6-A28EACB064CE";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts10";
	rename -uid "CC56D506-4B77-907D-A52B-E082E0C362E0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId16";
	rename -uid "3F6C1BA9-46F0-3068-73C9-2BA192E224B1";
	setAttr ".ihi" 0;
createNode polyUnite -n "ShipBody:ShipBody:ShipEngine:polyUnite4";
	rename -uid "C9BD4D86-4D5A-598F-87E4-53B36A4D62EF";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode polyTorus -n "ShipBody:ShipBody:ShipEngine:polyTorus1";
	rename -uid "5D09963C-4097-B514-D92D-B99A6F2A4887";
	setAttr ".r" 0.06;
	setAttr ".sr" 0.01;
	setAttr ".tw" 29.999999999999996;
	setAttr ".sa" 40;
	setAttr ".sh" 3;
createNode polySeparate -n "ShipBody:ShipBody:ShipEngine:polySeparate1";
	rename -uid "BC8BD5C6-4465-C382-B5C3-23ACAF35A094";
	setAttr ".ic" 2;
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId18";
	rename -uid "DA344762-4D07-F8D0-1EF3-709D22B4B026";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts12";
	rename -uid "F13BF6BE-4E16-E244-9125-BBBABD7E5FA5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId19";
	rename -uid "3BA989AE-458C-A9F1-04DA-D5A4CB67A212";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:ShipEngine:groupParts13";
	rename -uid "0A400660-4291-6BDF-6893-1491B9FA3FFA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:119]";
createNode groupId -n "ShipBody:ShipBody:ShipEngine:groupId20";
	rename -uid "C68FBC47-43E6-421D-9420-53A374CB2872";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "ShipBody:ShipBody:ShipEngine:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "9F65EA4E-4EE0-9430-B6BA-6483AEC25AE8";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -152.3809463258776 -208.3333250549108 ;
	setAttr ".tgi[0].vh" -type "double2" 153.57142246904857 208.3333250549108 ;
	setAttr ".tgi[0].ni[0].x" -91.428573608398437;
	setAttr ".tgi[0].ni[0].y" 97.142860412597656;
	setAttr ".tgi[0].ni[0].nvs" 1922;
createNode polySeparate -n "ShipBody:ShipBody:polySeparate2";
	rename -uid "03BAC09A-489C-0CF1-01A7-4799834CA50A";
	setAttr ".ic" 14;
	setAttr -s 14 ".out";
createNode groupId -n "ShipBody:ShipBody:groupId37";
	rename -uid "DA2045D3-41C9-EFF6-AEF3-D894C1FEA892";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts27";
	rename -uid "96D284CE-4F9B-95C4-8E5B-A9A024F9CEA5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId38";
	rename -uid "9873BB08-46FA-F87D-8B58-A2A76BFBEC7D";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts28";
	rename -uid "0A31D20E-4C9F-3547-081C-FA8FE8278DE0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId39";
	rename -uid "F3C79691-4782-5519-F8A6-03902BFA835D";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts29";
	rename -uid "BBDFF8BF-47AB-4E82-37AB-1298FF1DD91E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId40";
	rename -uid "E0B11393-4108-839A-0577-EA8DE72A9995";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts30";
	rename -uid "D965B609-4454-384B-4A18-5D97BA2DE823";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId41";
	rename -uid "5D8E9E7A-47B2-F2F6-B9EE-41B3A1113496";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts31";
	rename -uid "A5E3C67B-4E4E-3748-A7B4-58A277627AB8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId42";
	rename -uid "697772D9-4B5C-360F-C656-15A98FA059C1";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts32";
	rename -uid "820218CD-4734-19D9-9800-9A9B2B621231";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId43";
	rename -uid "E19D6A3B-4132-406B-4F9A-E19CB4A66839";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts33";
	rename -uid "AD5C08AD-416D-81DC-337C-5DB560153388";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId44";
	rename -uid "6BDB7941-4A69-655D-0D15-30BA456460E0";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts34";
	rename -uid "78EF0AD9-4245-D0DD-0940-588E01F977FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId45";
	rename -uid "45C3C966-4AED-FA5E-6F69-829991ED3EDE";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts35";
	rename -uid "0C725278-4EB7-5C6F-61B9-B4B0BE010484";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId46";
	rename -uid "3AC887F0-4705-09F7-1CB3-48A88964F223";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts36";
	rename -uid "B07671CB-4B7C-8667-914D-B48530BFF5BC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId47";
	rename -uid "B12EA61C-4346-1961-AD93-CABBA6B59522";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts37";
	rename -uid "F21053B2-44E8-62F4-C3E9-79AC069CF582";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId48";
	rename -uid "92B70936-450B-DAB9-9774-41AB58657115";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts38";
	rename -uid "EE63AA0F-4428-153F-6A3E-0D9C5AD9E37B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId49";
	rename -uid "FC35DF2F-4202-55CB-EB2E-99935915775A";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts39";
	rename -uid "29F8DC2F-44A1-7B28-ABE2-178D70255AD3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode groupId -n "ShipBody:ShipBody:groupId50";
	rename -uid "14952AD7-46AD-3EED-C8DA-809068088058";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts40";
	rename -uid "C8C5035D-4620-8A61-841C-5C8846F61797";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:292]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent4";
	rename -uid "C5FB5474-43A2-5EA8-1640-BAA014892C84";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent5";
	rename -uid "D890D166-42FF-A2A0-6827-DABFAAA5A113";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent6";
	rename -uid "1398E711-447F-D00B-12F1-DDB690E0F20A";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent7";
	rename -uid "44CC7157-4F7E-6F22-2E79-82A8377FB824";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent8";
	rename -uid "FA9F4C85-4E53-FB77-E20D-3E92DF5BA5CF";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent9";
	rename -uid "9B7D30CA-4EA6-BA00-FC9E-7AB4D90B7C1E";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent10";
	rename -uid "0AF95B32-45B7-A698-28FD-7091A60E56C3";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent11";
	rename -uid "8BD34B24-42E0-4EA1-6842-E28A7889E1DA";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent12";
	rename -uid "75F9BA5D-4F08-691C-45AB-3CA3C50269EE";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent13";
	rename -uid "1D3A3F23-4D80-FC04-1043-6E8F89691A13";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent14";
	rename -uid "51C784B1-4741-F622-5682-94B6DE85A3D5";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent15";
	rename -uid "80DB2B0A-43D9-C8D3-2864-8EA59D9F1D44";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent16";
	rename -uid "498BA0FB-436A-009D-BD6A-B39B5EF11EB8";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent17";
	rename -uid "5E63B580-42D6-610A-C1FB-B38B288085EE";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent18";
	rename -uid "5A0667D2-4118-9106-5EFB-38BC6461F98B";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent19";
	rename -uid "145AAD9A-480F-FACA-F4DA-89A2ADF6396D";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "ShipBody:ShipBody:deleteComponent20";
	rename -uid "0C4490DC-4B1A-B3A9-361D-5EB30B0AC79D";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode groupParts -n "ShipBody:ShipBody:groupParts41";
	rename -uid "98F3AD07-4FFC-6DF0-4125-A7A208E9C1CC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId51";
	rename -uid "2D77EE27-4090-35B7-9F1F-81A21880F12E";
	setAttr ".ihi" 0;
createNode polyUnite -n "ShipBody:ShipBody:polyUnite10";
	rename -uid "3D5B2FF7-4AB9-E84F-8250-F796747A28F0";
	setAttr -s 13 ".ip";
	setAttr -s 13 ".im";
createNode polySeparate -n "ShipBody:ShipBody:polySeparate3";
	rename -uid "5DE36F31-49C2-7BED-8BE9-D5A93B6C8E86";
	setAttr ".ic" 13;
	setAttr -s 13 ".out";
createNode groupId -n "ShipBody:ShipBody:groupId52";
	rename -uid "02D4DB98-4710-FB09-D9EA-BDA0175C4C4F";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts42";
	rename -uid "A6FD8CC6-4210-9833-DA5A-349E73D05430";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId53";
	rename -uid "A77B24A8-4960-0026-41D8-8C9DA1EB2458";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts43";
	rename -uid "910B5696-4EAC-F02A-9C04-5F88A722E737";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId54";
	rename -uid "1D399234-4AF2-100E-2E26-638D656B27BF";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts44";
	rename -uid "F5C0929B-4960-7B1A-D88A-48AF35E1228A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId55";
	rename -uid "CC76EE7B-41CA-AA42-EC46-4B949E1CBF49";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts45";
	rename -uid "0ECC475F-45ED-0856-E5E3-5F800F78CD96";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId56";
	rename -uid "0A571D44-4280-1316-9A41-5DAEC2D646BC";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts46";
	rename -uid "6675A2D1-407C-24A1-7842-9A83ACC7E2B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId57";
	rename -uid "C5AB21F2-4BD4-1D17-F2D6-25ADC5DF4A57";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts47";
	rename -uid "ECE72DA6-4B9D-D75F-480A-3CB667D6FA26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId58";
	rename -uid "2D98F570-4D1C-E802-D934-4A8698EB18DF";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts48";
	rename -uid "9F75F460-4CD9-0254-9F35-E6999B9D10D7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId59";
	rename -uid "D860A44C-4C84-B5FD-610B-69AAF991BC1B";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts49";
	rename -uid "B250D3C5-4D91-6F5E-38D2-83B42A7C0F3B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId60";
	rename -uid "1EF9183D-42AE-4737-DFC7-EAAF7837AEE6";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts50";
	rename -uid "94903AA0-43F4-EFE8-E813-F6BCA7757250";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId61";
	rename -uid "FA4ECCBE-42B1-3CA2-3422-089E22DFB5FD";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts51";
	rename -uid "0F2F88B7-4254-5880-9BC6-9CB0BD5B9386";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId62";
	rename -uid "067D41F6-4032-2BCF-116A-8D9123C33B99";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts52";
	rename -uid "547FD083-4D23-BD3A-11DE-DD912DA42995";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId63";
	rename -uid "E2A593D9-4E6A-E899-64C3-6B8E3ED3F58E";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts53";
	rename -uid "79C9C078-4F1F-A676-4851-E0BF994D7E47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode groupId -n "ShipBody:ShipBody:groupId64";
	rename -uid "01DFB7F3-4CEA-B69C-683A-978DF3B11CEC";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts54";
	rename -uid "9C3F563F-4CFA-678F-C3C2-148D513EF121";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:215]";
createNode polyUnite -n "ShipBody:ShipBody:polyUnite11";
	rename -uid "F6BD65C2-43F1-71E6-F937-A7A2D41E0FFE";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId65";
	rename -uid "1D9EEC91-46B7-7ABE-8713-99B67570CA39";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts55";
	rename -uid "34E0135D-459A-6C28-8ACE-038ADFD87038";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:81]";
createNode polyUnite -n "ShipBody:ShipBody:polyUnite12";
	rename -uid "0D496CF8-4F5B-4B8A-7E61-6ABF27F32005";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId66";
	rename -uid "220D9B53-48E2-847C-5276-EE9FF41F61DC";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts56";
	rename -uid "73D5B719-4734-23D0-04CB-F28DC6F7CC04";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:81]";
createNode polyUnite -n "ShipBody:ShipBody:polyUnite13";
	rename -uid "8BB53576-4299-C313-2FD4-13853A5807CE";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId67";
	rename -uid "C9A808A0-4524-E204-E666-B288FDB97171";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts57";
	rename -uid "840595E0-4DF4-FF26-7AB7-30AEABC56F7E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode polyUnite -n "ShipBody:ShipBody:polyUnite14";
	rename -uid "5F63EFB0-48A3-3FCA-7AB4-1BAA0A4C606B";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId68";
	rename -uid "282D958A-4BDC-A17D-C58A-36A5C3E4A3DF";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts58";
	rename -uid "4D6103CF-4FDE-8CE6-4F4E-CA8FE61F16D7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode polyUnite -n "ShipBody:ShipBody:polyUnite15";
	rename -uid "8CCBE474-4A93-0AA6-A821-DEA72B456FCA";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "ShipBody:ShipBody:groupId69";
	rename -uid "4EC5DB2D-4BD3-D597-3A7C-68BBBBCDF306";
	setAttr ".ihi" 0;
createNode groupParts -n "ShipBody:ShipBody:groupParts59";
	rename -uid "369EE20B-4910-2C04-5CA8-D9B3EF8DF722";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:75]";
createNode polyUnite -n "ShipBody:ShipBody:polyUnite16";
	rename -uid "42B0C06B-49BB-7EAD-CEC2-E3B5CDA48965";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode polyAutoProj -n "ShipBody:ShipBody:polyAutoProj2";
	rename -uid "E1CDD1E9-47D4-1684-BB1C-FABCE030D86D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:275]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 5.2714041471481323 5.2714041471481323 5.2714041471481323 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV9";
	rename -uid "101B36E2-4538-2A1D-4445-6C873AFE9D66";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[196:243]" -type "float2" 0.77635157 -0.083554834 0.77635157
		 -0.083554864 0.77635157 -0.083554864 0.77635157 -0.083554834 0.77635157 -0.083554834
		 0.77635157 -0.083554834 0.77635169 -0.083554834 0.77635157 -0.083554834 0.77635157
		 -0.083554849 0.77635157 -0.083554849 0.77635169 -0.083554834 0.77635169 -0.083554834
		 0.77635157 -0.083554834 0.77635169 -0.083554834 0.77635157 -0.083554834 0.77635157
		 -0.083554864 0.77635157 -0.083554834 0.77635157 -0.083554864 0.77635157 -0.083554849
		 0.77635157 -0.083554849 0.77635169 -0.083554849 0.77635157 -0.083554834 0.77635169
		 -0.083554849 0.77635157 -0.083554849 0.77635157 -0.083554849 0.77635157 -0.083554849
		 0.35421431 -0.023934361 0.35421455 -0.023934361 0.35421437 -0.023934359 0.35421437
		 -0.023934361 0.35421455 -0.023934361 0.35421455 -0.023934361 0.35421455 -0.023934357
		 0.35421437 -0.023934361 0.35421443 -0.023934361 0.35421449 -0.023934359 0.35421431
		 -0.023934361 0.35421455 -0.023934361 0.35421431 -0.023934361 0.35421455 -0.023934361
		 0.35421437 -0.023934361 0.35421431 -0.023934361 0.35421455 -0.023934361 0.35421437
		 -0.023934361 0.35421455 -0.023934361 0.35421455 -0.023934361 0.35421449 -0.023934361
		 0.35421443 -0.023934361;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV9";
	rename -uid "C7C6F2A7-49B1-1032-B7CF-A8A9C52264DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[0:2]" "f[8:9]" "f[19]" "f[35:36]" "f[40:41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV10";
	rename -uid "938205B2-4059-2A70-7347-85AE98CBAE4D";
	setAttr ".uopa" yes;
	setAttr -s 62 ".uvtk";
	setAttr ".uvtk[196]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[197]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[198]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[199]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[200]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[201]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[202]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[203]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[204]" -type "float2" -0.050000064 0.050000016 ;
	setAttr ".uvtk[205]" -type "float2" -0.050000064 0.050000016 ;
	setAttr ".uvtk[206]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[207]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[208]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[209]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[210]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[211]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[212]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[213]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[214]" -type "float2" -0.050000064 0.050000008 ;
	setAttr ".uvtk[215]" -type "float2" -0.050000064 0.050000023 ;
	setAttr ".uvtk[216]" -type "float2" -0.050000064 0.050000016 ;
	setAttr ".uvtk[217]" -type "float2" -0.050000064 0.050000019 ;
	setAttr ".uvtk[218]" -type "float2" -0.050000064 0.050000008 ;
	setAttr ".uvtk[219]" -type "float2" -0.050000064 0.050000008 ;
	setAttr ".uvtk[220]" -type "float2" -0.050000064 0.050000008 ;
	setAttr ".uvtk[221]" -type "float2" -0.050000064 0.050000008 ;
	setAttr ".uvtk[222]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[223]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[224]" -type "float2" 0 1.583248e-009 ;
	setAttr ".uvtk[225]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[226]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[227]" -type "float2" 0 1.583248e-009 ;
	setAttr ".uvtk[228]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[229]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[230]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[231]" -type "float2" 0 1.583248e-009 ;
	setAttr ".uvtk[232]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[233]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[234]" -type "float2" 0 2.0489093e-009 ;
	setAttr ".uvtk[235]" -type "float2" 0 1.8626456e-010 ;
	setAttr ".uvtk[236]" -type "float2" 0 1.8626456e-010 ;
	setAttr ".uvtk[237]" -type "float2" 0 1.8626456e-010 ;
	setAttr ".uvtk[238]" -type "float2" 0 1.8626456e-010 ;
	setAttr ".uvtk[239]" -type "float2" 0 1.8626456e-010 ;
	setAttr ".uvtk[240]" -type "float2" 0 1.8626456e-010 ;
	setAttr ".uvtk[241]" -type "float2" 0 1.5087426e-008 ;
	setAttr ".uvtk[242]" -type "float2" 0 1.5087426e-008 ;
	setAttr ".uvtk[243]" -type "float2" 0 1.5087426e-008 ;
	setAttr ".uvtk[296]" -type "float2" 0.88721097 0.51074207 ;
	setAttr ".uvtk[297]" -type "float2" 0.88721097 0.51074207 ;
	setAttr ".uvtk[298]" -type "float2" 0.88721097 0.51074207 ;
	setAttr ".uvtk[299]" -type "float2" 0.88721085 0.51074207 ;
	setAttr ".uvtk[300]" -type "float2" 0.88721085 0.51074207 ;
	setAttr ".uvtk[301]" -type "float2" 0.88721097 0.51074207 ;
	setAttr ".uvtk[302]" -type "float2" 0.88721085 0.51074207 ;
	setAttr ".uvtk[303]" -type "float2" 0.6976698 0.46074206 ;
	setAttr ".uvtk[304]" -type "float2" 0.6976698 0.46074206 ;
	setAttr ".uvtk[305]" -type "float2" 0.6976698 0.46074203 ;
	setAttr ".uvtk[306]" -type "float2" 0.69766986 0.46074203 ;
	setAttr ".uvtk[307]" -type "float2" 0.69766974 0.46074206 ;
	setAttr ".uvtk[308]" -type "float2" 0.69766986 0.46074206 ;
	setAttr ".uvtk[309]" -type "float2" 0.69766986 0.46074206 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV10";
	rename -uid "5CF22928-4A91-3AC4-E9C6-389347DFD348";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV11";
	rename -uid "3E73D100-4A51-25E1-B460-D8B80AF6A208";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[279]" -type "float2" 1.2168939 0.46074206 ;
	setAttr ".uvtk[280]" -type "float2" 1.2168939 0.46074206 ;
	setAttr ".uvtk[281]" -type "float2" 1.2168939 0.46074206 ;
	setAttr ".uvtk[282]" -type "float2" 1.2168939 0.46074209 ;
	setAttr ".uvtk[283]" -type "float2" 1.2168939 0.46074203 ;
	setAttr ".uvtk[284]" -type "float2" 1.2168939 0.46074203 ;
	setAttr ".uvtk[285]" -type "float2" 1.2168939 0.46074206 ;
	setAttr ".uvtk[296]" -type "float2" -0.050000049 -0.049999952 ;
	setAttr ".uvtk[297]" -type "float2" -0.050000049 -0.049999952 ;
	setAttr ".uvtk[298]" -type "float2" -0.050000049 -0.049999952 ;
	setAttr ".uvtk[299]" -type "float2" -0.050000049 -0.049999982 ;
	setAttr ".uvtk[300]" -type "float2" -0.050000049 -0.049999952 ;
	setAttr ".uvtk[301]" -type "float2" -0.050000049 -0.049999952 ;
	setAttr ".uvtk[302]" -type "float2" -0.050000049 -0.049999952 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV11";
	rename -uid "B4947D17-4C5D-CA54-2CAD-03B180116B23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV12";
	rename -uid "59E29BBC-4D54-24FD-E7C0-3BAD12CA2777";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV13";
	rename -uid "13B2F9DA-4BB4-03B5-C657-43A742048C4D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV12";
	rename -uid "39BAA920-424C-FDBE-6BAE-7F8EB5ACB6B9";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[272:285]" -type "float2" 1.40643501 0.41074207 1.40643501
		 0.41074207 1.40643501 0.41074207 1.40643501 0.41074204 1.40643501 0.41074204 1.40643501
		 0.41074204 1.40643501 0.41074204 -0.19999996 -5.9604616e-008 -0.19999996 -8.9406939e-008
		 -0.19999996 -5.9604616e-008 -0.19999996 -5.9604616e-008 -0.19999996 -5.9604616e-008
		 -0.19999996 -5.9604616e-008 -0.19999996 -5.9604616e-008;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV14";
	rename -uid "19FE0DC7-43B4-C6BB-B856-F881078FF39D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV15";
	rename -uid "A7517BC2-4CA6-22B6-85BC-70983367A5B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV13";
	rename -uid "95C9BE23-4BA2-8958-BEF6-E6B7DBE7A769";
	setAttr ".uopa" yes;
	setAttr -s 51 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[1]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[2]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[3]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[4]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[5]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[6]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[7]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[8]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[9]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[10]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[11]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[12]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[13]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[14]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[15]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[16]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[17]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[18]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[19]" -type "float2" 0.89684439 -0.030756257 ;
	setAttr ".uvtk[20]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[21]" -type "float2" 0.89684433 -0.030756257 ;
	setAttr ".uvtk[22]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[23]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[24]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[25]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[26]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[27]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[28]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[29]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[30]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[31]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[32]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[33]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[34]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[35]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[36]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[37]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[38]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[39]" -type "float2" 1.0599763 0.0078375693 ;
	setAttr ".uvtk[40]" -type "float2" 1.0599763 0.0078375693 ;
	setAttr ".uvtk[41]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[42]" -type "float2" 1.0599763 0.0078375693 ;
	setAttr ".uvtk[43]" -type "float2" 1.0599763 0.0078375991 ;
	setAttr ".uvtk[272]" -type "float2" -0.24999994 0.050000001 ;
	setAttr ".uvtk[273]" -type "float2" -0.24999994 0.050000001 ;
	setAttr ".uvtk[274]" -type "float2" -0.24999994 0.050000001 ;
	setAttr ".uvtk[275]" -type "float2" -0.25000006 0.050000001 ;
	setAttr ".uvtk[276]" -type "float2" -0.24999994 0.049999971 ;
	setAttr ".uvtk[277]" -type "float2" -0.24999994 0.050000001 ;
	setAttr ".uvtk[278]" -type "float2" -0.24999994 0.050000001 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV16";
	rename -uid "26F0E231-4554-C407-0852-A29EAB8D7922";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[3]" "f[10:12]" "f[16]" "f[33:34]" "f[38]" "f[42:44]" "f[50:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV14";
	rename -uid "49D1A420-4DF8-BDE7-9FA3-3192E0D3F92E";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk[0:21]" -type "float2" 0.049999993 0.04999993 0.049999993
		 0.04999993 0.049999993 0.04999996 0.049999993 0.04999996 0.049999993 0.04999993 0.049999993
		 0.04999993 0.049999993 0.04999996 0.049999993 0.04999996 0.049999993 0.04999996 0.049999993
		 0.04999993 0.049999993 0.04999993 0.049999993 0.04999993 0.049999993 0.04999993 0.049999993
		 0.04999993 0.049999993 0.04999993 0.049999993 0.04999993 0.049999993 0.04999993 0.049999993
		 0.04999993 0.049999993 0.04999996 0.049999993 0.04999993 0.049999993 0.04999993 0.049999993
		 0.04999993;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV17";
	rename -uid "7F87A4A9-4B37-55E0-59E3-48A107A078A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[13:15]" "f[28:30]" "f[37]" "f[39]" "f[47:49]" "f[52:53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAutoProj -n "ShipBody:ShipBody:polyAutoProj3";
	rename -uid "0D44BFAC-466B-7144-CC79-839F51085B75";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:275]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 5.2714041471481323 5.2714041471481323 5.2714041471481323 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "ShipBody:ShipBody:polyTweak13";
	rename -uid "0DDB26B1-4804-5581-0F3E-968E5FFE6D7A";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[36]" -type "float3" 0 0.0063759275 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.038255516 0 ;
	setAttr ".tk[40]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.012751848 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.025503669 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.031879582 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.0095638037 0 ;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV15";
	rename -uid "3B32470D-4240-755D-E498-0DB97CCA9BC5";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[287]" -type "float2" 0.81382895 -0.0097435005 ;
	setAttr ".uvtk[288]" -type "float2" 0.81382895 -0.0097435303 ;
	setAttr ".uvtk[289]" -type "float2" 0.81382895 -0.0097435303 ;
	setAttr ".uvtk[290]" -type "float2" 0.81382895 -0.0097435303 ;
	setAttr ".uvtk[291]" -type "float2" 0.81382895 -0.0097435303 ;
	setAttr ".uvtk[306]" -type "float2" 0.84472299 -0.009743562 ;
	setAttr ".uvtk[307]" -type "float2" 0.84472299 -0.009743562 ;
	setAttr ".uvtk[308]" -type "float2" 0.84472299 -0.009743562 ;
	setAttr ".uvtk[309]" -type "float2" 0.84472299 -0.009743562 ;
	setAttr ".uvtk[310]" -type "float2" 0.84472299 -0.009743562 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV18";
	rename -uid "78E8E958-4911-C868-9DEE-649DB9BE1CBF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV19";
	rename -uid "669D6035-4DBC-4C26-CDDB-31B34866E582";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV16";
	rename -uid "40811E6D-4F30-2D28-2B1C-5482CE811B4E";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[282:291]" -type "float2" 0.73293483 -0.0097435471
		 0.73293471 -0.0097435769 0.73293471 -0.0097435471 0.73293471 -0.0097435471 0.73293483
		 -0.0097435471 -0.1 -5.364415e-008 -0.1 -5.364415e-008 -0.1 -5.364415e-008 -0.1 -5.364415e-008
		 -0.1 -5.364415e-008;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV20";
	rename -uid "EFD3D197-4B7A-9632-BF2A-2A9FBEE874BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[90]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV17";
	rename -uid "87473EFA-4BAC-85E4-275B-6583D250527F";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[282]" -type "float2" -0.15000013 5.9604619e-009 ;
	setAttr ".uvtk[283]" -type "float2" -0.15000001 5.9604655e-009 ;
	setAttr ".uvtk[284]" -type "float2" -0.15000001 5.9604619e-009 ;
	setAttr ".uvtk[285]" -type "float2" -0.15000001 5.9604655e-009 ;
	setAttr ".uvtk[286]" -type "float2" -0.15000013 5.9604619e-009 ;
	setAttr ".uvtk[311]" -type "float2" 1.0256171 -0.0097435173 ;
	setAttr ".uvtk[312]" -type "float2" 1.0256171 -0.0097435173 ;
	setAttr ".uvtk[313]" -type "float2" 1.0256171 -0.0097435173 ;
	setAttr ".uvtk[314]" -type "float2" 1.0256171 -0.0097435173 ;
	setAttr ".uvtk[315]" -type "float2" 1.0256171 -0.0097435173 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV21";
	rename -uid "18AB4C3D-457B-EB88-2918-7F80695C85A5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[110]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV18";
	rename -uid "B172A7F3-4D5E-3019-61D8-96BAA8785E58";
	setAttr ".uopa" yes;
	setAttr -s 49 ".uvtk";
	setAttr ".uvtk[196]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[197]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[198]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[199]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[200]" -type "float2" 0.37697598 -0.024905577 ;
	setAttr ".uvtk[201]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[202]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[203]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[204]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[205]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[206]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[207]" -type "float2" 0.37697604 -0.024905577 ;
	setAttr ".uvtk[208]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[209]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[210]" -type "float2" 0.37697604 -0.024905577 ;
	setAttr ".uvtk[211]" -type "float2" 0.37697598 -0.024905562 ;
	setAttr ".uvtk[212]" -type "float2" 0.3769761 -0.024905562 ;
	setAttr ".uvtk[213]" -type "float2" 0.3769761 -0.024905577 ;
	setAttr ".uvtk[214]" -type "float2" 0.37697598 -0.02490557 ;
	setAttr ".uvtk[215]" -type "float2" 0.3769761 -0.02490557 ;
	setAttr ".uvtk[216]" -type "float2" 0.37697604 -0.024905562 ;
	setAttr ".uvtk[217]" -type "float2" 0.37697604 -0.02490557 ;
	setAttr ".uvtk[218]" -type "float2" 0.25517115 0.026063034 ;
	setAttr ".uvtk[219]" -type "float2" 0.25517115 0.026063034 ;
	setAttr ".uvtk[220]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[221]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[222]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[223]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[224]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[225]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[226]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[227]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[228]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[229]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[230]" -type "float2" 0.25517121 0.026063034 ;
	setAttr ".uvtk[231]" -type "float2" 0.25517121 0.026063031 ;
	setAttr ".uvtk[232]" -type "float2" 0.25517121 0.026063031 ;
	setAttr ".uvtk[233]" -type "float2" 0.25517121 0.026063031 ;
	setAttr ".uvtk[234]" -type "float2" 0.25517121 0.026063045 ;
	setAttr ".uvtk[235]" -type "float2" 0.25517115 0.026063045 ;
	setAttr ".uvtk[236]" -type "float2" 0.25517121 0.026063045 ;
	setAttr ".uvtk[237]" -type "float2" 0.25517121 0.026063045 ;
	setAttr ".uvtk[238]" -type "float2" 0.25517115 0.026063045 ;
	setAttr ".uvtk[239]" -type "float2" 0.25517121 0.026063045 ;
	setAttr ".uvtk[311]" -type "float2" -0.049999926 -5.9604631e-008 ;
	setAttr ".uvtk[312]" -type "float2" -0.049999926 -5.9604631e-008 ;
	setAttr ".uvtk[313]" -type "float2" -0.049999926 -5.9604631e-008 ;
	setAttr ".uvtk[314]" -type "float2" -0.049999926 -5.9604631e-008 ;
	setAttr ".uvtk[315]" -type "float2" -0.049999926 -5.9604631e-008 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV22";
	rename -uid "45002AA0-48A9-E1B7-B87D-5ABC237916B8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[0:1]" "f[8:9]" "f[35:36]" "f[40:41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV19";
	rename -uid "5BBB9FE9-4B76-2B57-A615-DCB317993F80";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk";
	setAttr ".uvtk[196]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[197]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[198]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[199]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[200]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[201]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[202]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[203]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[204]" -type "float2" 0.049999963 0.050000019 ;
	setAttr ".uvtk[205]" -type "float2" 0.049999963 0.050000019 ;
	setAttr ".uvtk[206]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[207]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[208]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[209]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[210]" -type "float2" 0.049999963 0.050000012 ;
	setAttr ".uvtk[211]" -type "float2" 0.049999963 0.050000019 ;
	setAttr ".uvtk[212]" -type "float2" 0.049999963 0.050000019 ;
	setAttr ".uvtk[213]" -type "float2" 0.049999963 0.050000019 ;
	setAttr ".uvtk[214]" -type "float2" 0.049999963 0.050000019 ;
	setAttr ".uvtk[215]" -type "float2" 0.049999963 0.050000019 ;
	setAttr ".uvtk[216]" -type "float2" 0.049999963 0.050000019 ;
	setAttr ".uvtk[217]" -type "float2" 0.049999963 0.050000019 ;
	setAttr ".uvtk[292]" -type "float2" 0.93754816 0.36073929 ;
	setAttr ".uvtk[293]" -type "float2" 0.93754816 0.36073929 ;
	setAttr ".uvtk[294]" -type "float2" 0.93754816 0.36073929 ;
	setAttr ".uvtk[295]" -type "float2" 0.93754816 0.36073929 ;
	setAttr ".uvtk[296]" -type "float2" 0.93754816 0.36073929 ;
	setAttr ".uvtk[297]" -type "float2" 0.93754816 0.36073929 ;
	setAttr ".uvtk[298]" -type "float2" 0.93754816 0.36073929 ;
	setAttr ".uvtk[299]" -type "float2" 0.74814337 0.36073929 ;
	setAttr ".uvtk[300]" -type "float2" 0.74814337 0.36073929 ;
	setAttr ".uvtk[301]" -type "float2" 0.74814337 0.36073932 ;
	setAttr ".uvtk[302]" -type "float2" 0.74814337 0.36073932 ;
	setAttr ".uvtk[303]" -type "float2" 0.74814332 0.36073929 ;
	setAttr ".uvtk[304]" -type "float2" 0.74814326 0.36073929 ;
	setAttr ".uvtk[305]" -type "float2" 0.74814337 0.36073929 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV23";
	rename -uid "6C7460F3-4FA8-ED63-6EA8-049C4B0CB5CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV20";
	rename -uid "EAE72E81-4636-9220-AB13-F592743BD28C";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[275]" -type "float2" 1.1170558 0.36073929 ;
	setAttr ".uvtk[276]" -type "float2" 1.1170558 0.36073929 ;
	setAttr ".uvtk[277]" -type "float2" 1.1170558 0.36073929 ;
	setAttr ".uvtk[278]" -type "float2" 1.1170558 0.36073929 ;
	setAttr ".uvtk[279]" -type "float2" 1.1170558 0.36073932 ;
	setAttr ".uvtk[280]" -type "float2" 1.1170558 0.36073932 ;
	setAttr ".uvtk[281]" -type "float2" 1.1170558 0.36073929 ;
	setAttr ".uvtk[292]" -type "float2" -0.050000042 -1.1920934e-008 ;
	setAttr ".uvtk[293]" -type "float2" -0.050000042 -1.1920934e-008 ;
	setAttr ".uvtk[294]" -type "float2" -0.050000042 -1.192093e-008 ;
	setAttr ".uvtk[295]" -type "float2" -0.050000042 -1.192093e-008 ;
	setAttr ".uvtk[296]" -type "float2" -0.050000042 -1.192093e-008 ;
	setAttr ".uvtk[297]" -type "float2" -0.050000042 -1.1920934e-008 ;
	setAttr ".uvtk[298]" -type "float2" -0.050000042 -1.1920934e-008 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV24";
	rename -uid "9F0EA906-4844-DB3B-8259-CB913EF69AC6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV21";
	rename -uid "683D2029-4B0E-E338-1013-D9BDDE473DD1";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[268:281]" -type "float2" 1.2064606 0.36073929 1.2064606
		 0.36073929 1.2064606 0.36073929 1.2064606 0.36073929 1.2064606 0.36073932 1.2064606
		 0.36073929 1.2064606 0.36073926 -0.050000019 -2.3841858e-008 -0.050000019 -2.3841858e-008
		 -0.050000019 -2.3841858e-008 -0.050000019 -2.3841864e-008 -0.050000019 -2.3841864e-008
		 -0.050000019 -2.3841864e-008 -0.050000019 -2.3841864e-008;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV25";
	rename -uid "DA9D0567-434B-B35D-5BF0-9396D5A413C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV26";
	rename -uid "B224EE68-4313-1E41-7DC0-BF9E72D9AB6F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV22";
	rename -uid "A73448DD-4617-76FB-4ACB-D781B4E6E258";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[96:111]" -type "float2" -0.23030099 0.010739306 -0.23030099
		 0.010739306 -0.23030099 0.010739306 -0.23030099 0.010739306 -0.23030099 0.010739306
		 -0.23030099 0.010739306 -0.23030099 0.010739306 -0.23030099 0.010739306 -0.23030099
		 0.010739306 -0.23030099 0.010739306 -0.23030099 0.010739306 -0.23030099 0.010739306
		 -0.23030099 0.010739306 -0.23030099 0.010739306 -0.23030099 0.010739306 -0.23030099
		 0.010739306;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV27";
	rename -uid "9B6350B8-4BD3-840D-8069-5897FEFF22CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[76]" "f[78]" "f[81]" "f[83:86]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV23";
	rename -uid "60F654F1-4F94-9000-C7F0-6C9DE9A127C4";
	setAttr ".uopa" yes;
	setAttr -s 84 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[1]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[2]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[3]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[4]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[5]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[6]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[7]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[8]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[9]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[10]" -type "float2" -0.052203175 -0.21345636 ;
	setAttr ".uvtk[11]" -type "float2" -0.052203175 -0.21345636 ;
	setAttr ".uvtk[12]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[13]" -type "float2" -0.052203175 -0.21345636 ;
	setAttr ".uvtk[14]" -type "float2" -0.052203175 -0.21345636 ;
	setAttr ".uvtk[15]" -type "float2" -0.052203175 -0.21345635 ;
	setAttr ".uvtk[16]" -type "float2" -0.052203175 -0.21345635 ;
	setAttr ".uvtk[17]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[18]" -type "float2" -0.052203175 -0.21345633 ;
	setAttr ".uvtk[19]" -type "float2" -0.052203175 -0.21345635 ;
	setAttr ".uvtk[20]" -type "float2" -0.052203175 -0.21345636 ;
	setAttr ".uvtk[21]" -type "float2" -0.052203175 -0.21345635 ;
	setAttr ".uvtk[22]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[23]" -type "float2" -0.089075871 -0.24216661 ;
	setAttr ".uvtk[24]" -type "float2" -0.089075871 -0.24216661 ;
	setAttr ".uvtk[25]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[26]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[27]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[28]" -type "float2" -0.089075871 -0.24216661 ;
	setAttr ".uvtk[29]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[30]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[31]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[32]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[33]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[34]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[35]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[36]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[37]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[38]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[39]" -type "float2" -0.089075901 -0.24216662 ;
	setAttr ".uvtk[40]" -type "float2" -0.089075901 -0.24216662 ;
	setAttr ".uvtk[41]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[42]" -type "float2" -0.089075901 -0.24216664 ;
	setAttr ".uvtk[43]" -type "float2" -0.089075901 -0.24216661 ;
	setAttr ".uvtk[68]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[69]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[70]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[71]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[72]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[73]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[74]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[75]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[76]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[77]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[78]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[79]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[80]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[81]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[82]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[83]" -type "float2" 0.088802427 0.010739312 ;
	setAttr ".uvtk[84]" -type "float2" 0.043996848 0.010739293 ;
	setAttr ".uvtk[85]" -type "float2" 0.043996848 0.010739308 ;
	setAttr ".uvtk[86]" -type "float2" 0.043996848 0.010739308 ;
	setAttr ".uvtk[87]" -type "float2" 0.043996848 0.010739293 ;
	setAttr ".uvtk[88]" -type "float2" 0.043996848 0.010739306 ;
	setAttr ".uvtk[89]" -type "float2" 0.043996848 0.010739306 ;
	setAttr ".uvtk[90]" -type "float2" 0.036358207 0.010739308 ;
	setAttr ".uvtk[91]" -type "float2" 0.036358207 0.010739306 ;
	setAttr ".uvtk[92]" -type "float2" 0.036358207 0.010739306 ;
	setAttr ".uvtk[93]" -type "float2" 0.036358207 0.010739308 ;
	setAttr ".uvtk[94]" -type "float2" 0.036358207 0.010739308 ;
	setAttr ".uvtk[95]" -type "float2" 0.036358207 0.010739308 ;
	setAttr ".uvtk[112]" -type "float2" -0.27491558 0.010739306 ;
	setAttr ".uvtk[113]" -type "float2" -0.27491558 0.010739306 ;
	setAttr ".uvtk[114]" -type "float2" -0.27491558 0.010739317 ;
	setAttr ".uvtk[115]" -type "float2" -0.27491558 0.010739317 ;
	setAttr ".uvtk[116]" -type "float2" -0.27491558 0.010739317 ;
	setAttr ".uvtk[117]" -type "float2" -0.27491558 0.010739317 ;
	setAttr ".uvtk[118]" -type "float2" -0.28255421 0.010739317 ;
	setAttr ".uvtk[119]" -type "float2" -0.28255421 0.010739317 ;
	setAttr ".uvtk[120]" -type "float2" -0.28255421 0.010739317 ;
	setAttr ".uvtk[121]" -type "float2" -0.28255421 0.010739317 ;
	setAttr ".uvtk[122]" -type "float2" -0.28255421 0.010739306 ;
	setAttr ".uvtk[123]" -type "float2" -0.28255421 0.010739306 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV28";
	rename -uid "B922CA24-457B-382B-A04B-3B93A29D49F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[3]" "f[10:12]" "f[16]" "f[33:34]" "f[38]" "f[42:44]" "f[50:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV24";
	rename -uid "6FEFB738-43A9-5C31-9B37-AA8CEE6064A5";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk[0:21]" -type "float2" -0.15000002 -2.0861641e-008
		 -0.15000002 -2.0861641e-008 -0.15000002 -5.9604801e-009 -0.15000002 -5.9604801e-009
		 -0.15000002 -5.9604801e-009 -0.15000002 -5.9604801e-009 -0.15000002 -5.9604801e-009
		 -0.15000002 -5.9604801e-009 -0.15000002 -5.9604801e-009 -0.15000002 -5.9604801e-009
		 -0.15000002 -5.9604801e-009 -0.15000002 -5.9604801e-009 -0.15000002 -5.9604801e-009
		 -0.15000002 -5.9604801e-009 -0.15000002 -5.9604801e-009 -0.15000002 -3.5762802e-008
		 -0.15000002 -3.5762802e-008 -0.15000002 -5.9604801e-009 -0.15000002 -5.9604801e-009
		 -0.15000002 -3.5762802e-008 -0.15000002 -5.9604801e-009 -0.15000002 -3.5762802e-008;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV29";
	rename -uid "695EEBE1-4101-5DB9-FDA6-CEA86B05EDE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[3]" "f[10:12]" "f[16]" "f[33:34]" "f[38]" "f[42:44]" "f[50:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV25";
	rename -uid "9CB21B13-44E5-D8A0-D238-1081A89FA4A6";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk";
	setAttr ".uvtk[44]" -type "float2" -0.11384982 -0.20301428 ;
	setAttr ".uvtk[45]" -type "float2" -0.11384982 -0.20301428 ;
	setAttr ".uvtk[46]" -type "float2" -0.11384982 -0.20301428 ;
	setAttr ".uvtk[47]" -type "float2" -0.11384982 -0.20301428 ;
	setAttr ".uvtk[48]" -type "float2" -0.11384982 -0.20301428 ;
	setAttr ".uvtk[49]" -type "float2" -0.11384982 -0.20301428 ;
	setAttr ".uvtk[50]" -type "float2" -0.11384976 -0.20301428 ;
	setAttr ".uvtk[51]" -type "float2" -0.11384976 -0.20301428 ;
	setAttr ".uvtk[52]" -type "float2" -0.11384976 -0.20301428 ;
	setAttr ".uvtk[53]" -type "float2" -0.083182991 -0.20495145 ;
	setAttr ".uvtk[54]" -type "float2" -0.083182991 -0.20495145 ;
	setAttr ".uvtk[55]" -type "float2" -0.083182991 -0.20495145 ;
	setAttr ".uvtk[56]" -type "float2" -0.083182991 -0.20495145 ;
	setAttr ".uvtk[57]" -type "float2" -0.083182991 -0.20495145 ;
	setAttr ".uvtk[58]" -type "float2" -0.083182991 -0.20495145 ;
	setAttr ".uvtk[59]" -type "float2" -0.08318305 -0.20495145 ;
	setAttr ".uvtk[60]" -type "float2" -0.08318305 -0.20495145 ;
	setAttr ".uvtk[61]" -type "float2" -0.08318305 -0.20495145 ;
	setAttr ".uvtk[316]" -type "float2" -0.053729072 -0.015604953 ;
	setAttr ".uvtk[317]" -type "float2" -0.053729072 -0.015604953 ;
	setAttr ".uvtk[318]" -type "float2" -0.053729072 -0.015604953 ;
	setAttr ".uvtk[319]" -type "float2" -0.053729072 -0.015604953 ;
	setAttr ".uvtk[320]" -type "float2" -0.063939467 -0.05114013 ;
	setAttr ".uvtk[321]" -type "float2" -0.063939467 -0.05114013 ;
	setAttr ".uvtk[322]" -type "float2" -0.063939467 -0.05114013 ;
	setAttr ".uvtk[323]" -type "float2" -0.063939467 -0.05114013 ;
	setAttr ".uvtk[388]" -type "float2" -0.03003699 -0.056498535 ;
	setAttr ".uvtk[389]" -type "float2" -0.03003699 -0.056498535 ;
	setAttr ".uvtk[390]" -type "float2" -0.03003699 -0.056498535 ;
	setAttr ".uvtk[391]" -type "float2" -0.03003699 -0.056498535 ;
	setAttr ".uvtk[392]" -type "float2" 0.0038655866 -0.056498796 ;
	setAttr ".uvtk[393]" -type "float2" 0.0038655866 -0.056498796 ;
	setAttr ".uvtk[394]" -type "float2" 0.0038655866 -0.056498796 ;
	setAttr ".uvtk[395]" -type "float2" 0.0038655866 -0.056498796 ;
	setAttr ".uvtk[420]" -type "float2" -0.02225462 -0.17022146 ;
	setAttr ".uvtk[421]" -type "float2" -0.02225462 -0.17022146 ;
	setAttr ".uvtk[422]" -type "float2" -0.02225462 -0.17022146 ;
	setAttr ".uvtk[423]" -type "float2" -0.02225462 -0.17022146 ;
	setAttr ".uvtk[424]" -type "float2" -0.02225462 -0.17022146 ;
	setAttr ".uvtk[425]" -type "float2" -0.054718789 -0.16828413 ;
	setAttr ".uvtk[426]" -type "float2" -0.054718789 -0.16828413 ;
	setAttr ".uvtk[427]" -type "float2" -0.054718789 -0.16828413 ;
	setAttr ".uvtk[428]" -type "float2" -0.054718789 -0.16828413 ;
	setAttr ".uvtk[429]" -type "float2" -0.054718789 -0.16828413 ;
	setAttr ".uvtk[430]" -type "float2" -0.087182902 -0.16828425 ;
	setAttr ".uvtk[431]" -type "float2" -0.087182902 -0.16828425 ;
	setAttr ".uvtk[432]" -type "float2" -0.087182902 -0.16828425 ;
	setAttr ".uvtk[433]" -type "float2" -0.087182902 -0.16828425 ;
	setAttr ".uvtk[434]" -type "float2" -0.087182902 -0.16828425 ;
	setAttr ".uvtk[435]" -type "float2" -0.11964707 -0.16828415 ;
	setAttr ".uvtk[436]" -type "float2" -0.11964707 -0.16828415 ;
	setAttr ".uvtk[437]" -type "float2" -0.11964707 -0.16828415 ;
	setAttr ".uvtk[438]" -type "float2" -0.11964707 -0.16828415 ;
	setAttr ".uvtk[439]" -type "float2" -0.11964707 -0.16828415 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV30";
	rename -uid "1B2B2479-4F05-3259-F499-D49A4D1A82DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[115]" "f[273]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV26";
	rename -uid "FD72E84B-47DC-6243-DF8C-3C9BE90DCF45";
	setAttr ".uopa" yes;
	setAttr -s 142 ".uvtk";
	setAttr ".uvtk[152]" -type "float2" 0.07191807 -0.02377677 ;
	setAttr ".uvtk[153]" -type "float2" 0.07191807 -0.02377677 ;
	setAttr ".uvtk[154]" -type "float2" 0.0719181 -0.02377677 ;
	setAttr ".uvtk[155]" -type "float2" 0.0719181 -0.02377677 ;
	setAttr ".uvtk[156]" -type "float2" 0.024176769 -0.02377677 ;
	setAttr ".uvtk[157]" -type "float2" 0.024176769 -0.02377677 ;
	setAttr ".uvtk[158]" -type "float2" 0.024176769 -0.02377677 ;
	setAttr ".uvtk[159]" -type "float2" 0.024176769 -0.02377677 ;
	setAttr ".uvtk[160]" -type "float2" -0.023564579 -0.023776762 ;
	setAttr ".uvtk[161]" -type "float2" -0.023564579 -0.023776762 ;
	setAttr ".uvtk[162]" -type "float2" -0.023564579 -0.023776762 ;
	setAttr ".uvtk[163]" -type "float2" -0.023564579 -0.023776762 ;
	setAttr ".uvtk[164]" -type "float2" -0.071305983 -0.18862291 ;
	setAttr ".uvtk[165]" -type "float2" -0.071305983 -0.18862291 ;
	setAttr ".uvtk[166]" -type "float2" -0.071305983 -0.18862291 ;
	setAttr ".uvtk[167]" -type "float2" -0.071305983 -0.18862291 ;
	setAttr ".uvtk[240]" -type "float2" -0.0027301502 -0.028853932 ;
	setAttr ".uvtk[241]" -type "float2" -0.0027301502 -0.028853932 ;
	setAttr ".uvtk[242]" -type "float2" -0.0027301502 -0.028853932 ;
	setAttr ".uvtk[243]" -type "float2" -0.0027301502 -0.028853932 ;
	setAttr ".uvtk[244]" -type "float2" -0.0027301502 -0.028853932 ;
	setAttr ".uvtk[245]" -type "float2" 0.0033478015 -0.028853998 ;
	setAttr ".uvtk[246]" -type "float2" 0.0033478015 -0.028853998 ;
	setAttr ".uvtk[247]" -type "float2" 0.0033478015 -0.028853998 ;
	setAttr ".uvtk[248]" -type "float2" 0.0033478015 -0.028853998 ;
	setAttr ".uvtk[249]" -type "float2" 0.0033478015 -0.028853998 ;
	setAttr ".uvtk[344]" -type "float2" 0.19605076 -0.02377677 ;
	setAttr ".uvtk[345]" -type "float2" 0.19605076 -0.02377677 ;
	setAttr ".uvtk[346]" -type "float2" 0.19605073 -0.02377677 ;
	setAttr ".uvtk[347]" -type "float2" 0.19605073 -0.02377677 ;
	setAttr ".uvtk[348]" -type "float2" 0.19605076 -0.02377677 ;
	setAttr ".uvtk[349]" -type "float2" 0.19605076 -0.02377677 ;
	setAttr ".uvtk[350]" -type "float2" 0.14830941 -0.02377677 ;
	setAttr ".uvtk[351]" -type "float2" 0.14830941 -0.02377677 ;
	setAttr ".uvtk[352]" -type "float2" 0.14830935 -0.02377677 ;
	setAttr ".uvtk[353]" -type "float2" 0.14830935 -0.02377677 ;
	setAttr ".uvtk[354]" -type "float2" 0.14830935 -0.02377677 ;
	setAttr ".uvtk[355]" -type "float2" 0.14830935 -0.02377677 ;
	setAttr ".uvtk[356]" -type "float2" 0.10056798 -0.02377677 ;
	setAttr ".uvtk[357]" -type "float2" 0.10056798 -0.02377677 ;
	setAttr ".uvtk[358]" -type "float2" 0.10056798 -0.02377677 ;
	setAttr ".uvtk[359]" -type "float2" 0.10056798 -0.02377677 ;
	setAttr ".uvtk[360]" -type "float2" 0.10056798 -0.02377677 ;
	setAttr ".uvtk[361]" -type "float2" 0.10056798 -0.02377677 ;
	setAttr ".uvtk[362]" -type "float2" 0.052826636 -0.18862286 ;
	setAttr ".uvtk[363]" -type "float2" 0.052826576 -0.18862286 ;
	setAttr ".uvtk[364]" -type "float2" 0.052826576 -0.18862286 ;
	setAttr ".uvtk[365]" -type "float2" 0.052826636 -0.18862286 ;
	setAttr ".uvtk[366]" -type "float2" 0.052826636 -0.18862286 ;
	setAttr ".uvtk[367]" -type "float2" 0.052826636 -0.18862286 ;
	setAttr ".uvtk[440]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[441]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[442]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[443]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[444]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[445]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[446]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[447]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[448]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[449]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[450]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[451]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[452]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[453]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[454]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[455]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[456]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[457]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[458]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[459]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[460]" -type "float2" 0.22609301 -0.013437781 ;
	setAttr ".uvtk[461]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[462]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[463]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[464]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[465]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[466]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[467]" -type "float2" 0.24196666 -0.013437877 ;
	setAttr ".uvtk[468]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[469]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[470]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[471]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[472]" -type "float2" 0.24196666 -0.013437877 ;
	setAttr ".uvtk[473]" -type "float2" 0.24196666 -0.013437877 ;
	setAttr ".uvtk[474]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[475]" -type "float2" 0.24196666 -0.013437877 ;
	setAttr ".uvtk[476]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[477]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[478]" -type "float2" 0.24196666 -0.013437877 ;
	setAttr ".uvtk[479]" -type "float2" 0.24196666 -0.013437877 ;
	setAttr ".uvtk[480]" -type "float2" 0.24196666 -0.013437877 ;
	setAttr ".uvtk[481]" -type "float2" 0.24196672 -0.013437877 ;
	setAttr ".uvtk[510]" -type "float2" 0.25784039 -0.013437763 ;
	setAttr ".uvtk[511]" -type "float2" 0.25784037 -0.013437763 ;
	setAttr ".uvtk[512]" -type "float2" 0.25784037 -0.013437763 ;
	setAttr ".uvtk[513]" -type "float2" 0.25784042 -0.013437763 ;
	setAttr ".uvtk[514]" -type "float2" 0.25784042 -0.013437763 ;
	setAttr ".uvtk[515]" -type "float2" 0.25784037 -0.013437763 ;
	setAttr ".uvtk[516]" -type "float2" 0.25784042 -0.013437763 ;
	setAttr ".uvtk[517]" -type "float2" 0.25784039 -0.013437763 ;
	setAttr ".uvtk[518]" -type "float2" 0.25784037 -0.013437763 ;
	setAttr ".uvtk[519]" -type "float2" 0.25784042 -0.013437763 ;
	setAttr ".uvtk[520]" -type "float2" 0.25784037 -0.013437763 ;
	setAttr ".uvtk[521]" -type "float2" 0.25784042 -0.013437763 ;
	setAttr ".uvtk[522]" -type "float2" 0.25784039 -0.013437763 ;
	setAttr ".uvtk[523]" -type "float2" 0.25784037 -0.013437763 ;
	setAttr ".uvtk[524]" -type "float2" 0.25784042 -0.013437763 ;
	setAttr ".uvtk[525]" -type "float2" 0.25784037 -0.013437763 ;
	setAttr ".uvtk[526]" -type "float2" 0.25784037 -0.013437763 ;
	setAttr ".uvtk[527]" -type "float2" 0.25784039 -0.013437763 ;
	setAttr ".uvtk[528]" -type "float2" 0.25784042 -0.013437763 ;
	setAttr ".uvtk[529]" -type "float2" 0.25784042 -0.013437763 ;
	setAttr ".uvtk[530]" -type "float2" 0.25784037 -0.013437763 ;
	setAttr ".uvtk[531]" -type "float2" 0.27371415 -0.013437855 ;
	setAttr ".uvtk[532]" -type "float2" 0.2737141 -0.013437855 ;
	setAttr ".uvtk[533]" -type "float2" 0.27371415 -0.013437855 ;
	setAttr ".uvtk[534]" -type "float2" 0.2737141 -0.013437855 ;
	setAttr ".uvtk[535]" -type "float2" 0.27371415 -0.013437855 ;
	setAttr ".uvtk[536]" -type "float2" 0.27371415 -0.013437855 ;
	setAttr ".uvtk[537]" -type "float2" 0.27371413 -0.013437855 ;
	setAttr ".uvtk[538]" -type "float2" 0.2737141 -0.013437855 ;
	setAttr ".uvtk[539]" -type "float2" 0.27371413 -0.013437855 ;
	setAttr ".uvtk[540]" -type "float2" 0.27371415 -0.013437855 ;
	setAttr ".uvtk[541]" -type "float2" 0.27371413 -0.013437855 ;
	setAttr ".uvtk[542]" -type "float2" 0.2737141 -0.013437855 ;
	setAttr ".uvtk[543]" -type "float2" 0.27371413 -0.013437855 ;
	setAttr ".uvtk[544]" -type "float2" 0.2737141 -0.013437855 ;
	setAttr ".uvtk[545]" -type "float2" 0.27371413 -0.013437855 ;
	setAttr ".uvtk[546]" -type "float2" 0.27371415 -0.013437855 ;
	setAttr ".uvtk[547]" -type "float2" 0.27371413 -0.013437855 ;
	setAttr ".uvtk[548]" -type "float2" 0.27371415 -0.013437855 ;
	setAttr ".uvtk[549]" -type "float2" 0.27371413 -0.013437855 ;
	setAttr ".uvtk[550]" -type "float2" 0.27371413 -0.013437855 ;
	setAttr ".uvtk[551]" -type "float2" 0.27371413 -0.013437855 ;
	setAttr ".uvtk[566]" -type "float2" 0.0089866016 0.031844981 ;
	setAttr ".uvtk[567]" -type "float2" 0.0089866016 0.031844981 ;
	setAttr ".uvtk[568]" -type "float2" 0.0089866016 0.031844981 ;
	setAttr ".uvtk[569]" -type "float2" 0.0089866016 0.031844981 ;
	setAttr ".uvtk[584]" -type "float2" -0.0093526328 0.031844914 ;
	setAttr ".uvtk[585]" -type "float2" -0.0093526328 0.031844914 ;
	setAttr ".uvtk[586]" -type "float2" -0.0093526328 0.031844914 ;
	setAttr ".uvtk[587]" -type "float2" -0.0093526328 0.031844914 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV31";
	rename -uid "492E8DF3-414F-2730-0A34-06870E5BFBCF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV27";
	rename -uid "2E77CE5B-4EA4-691B-C303-F1831E40A60F";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[245]" -type "float2" -0.050000057 5.3290705e-015 ;
	setAttr ".uvtk[246]" -type "float2" -0.050000057 5.3290705e-015 ;
	setAttr ".uvtk[247]" -type "float2" -0.050000057 5.3290705e-015 ;
	setAttr ".uvtk[248]" -type "float2" -0.050000057 5.3290705e-015 ;
	setAttr ".uvtk[249]" -type "float2" -0.050000057 5.3290705e-015 ;
	setAttr ".uvtk[255]" -type "float2" -0.13449638 -0.00014375456 ;
	setAttr ".uvtk[256]" -type "float2" -0.13449638 -0.00014375456 ;
	setAttr ".uvtk[257]" -type "float2" -0.13449638 -0.00014375456 ;
	setAttr ".uvtk[258]" -type "float2" -0.13449638 -0.00014375456 ;
	setAttr ".uvtk[259]" -type "float2" -0.13449638 -0.00014375456 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV32";
	rename -uid "EC0F74C0-4344-2390-3BBC-7B8C72EE6914";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV28";
	rename -uid "723483F8-4730-0131-83C2-F39E444FAB86";
	setAttr ".uopa" yes;
	setAttr -s 407 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[1]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[2]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[3]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[4]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[5]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[6]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[7]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[8]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[9]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[10]" -type "float2" 0.35000002 -0.19999997 ;
	setAttr ".uvtk[11]" -type "float2" 0.35000002 -0.19999997 ;
	setAttr ".uvtk[12]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[13]" -type "float2" 0.35000002 -0.19999997 ;
	setAttr ".uvtk[14]" -type "float2" 0.35000002 -0.19999997 ;
	setAttr ".uvtk[15]" -type "float2" 0.35000002 -0.2 ;
	setAttr ".uvtk[16]" -type "float2" 0.35000002 -0.2 ;
	setAttr ".uvtk[17]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[18]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[19]" -type "float2" 0.35000002 -0.2 ;
	setAttr ".uvtk[20]" -type "float2" 0.35000002 -0.19999997 ;
	setAttr ".uvtk[21]" -type "float2" 0.35000002 -0.2 ;
	setAttr ".uvtk[22]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[23]" -type "float2" 0.35000002 -0.19999997 ;
	setAttr ".uvtk[24]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[25]" -type "float2" 0.35000008 -0.19999999 ;
	setAttr ".uvtk[26]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[27]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[28]" -type "float2" 0.35000002 -0.19999999 ;
	setAttr ".uvtk[29]" -type "float2" 0.35000008 -0.19999999 ;
	setAttr ".uvtk[30]" -type "float2" 0.35000008 -0.19999999 ;
	setAttr ".uvtk[31]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[32]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[33]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[34]" -type "float2" 0.35000008 -0.19999999 ;
	setAttr ".uvtk[35]" -type "float2" 0.35000008 -0.19999999 ;
	setAttr ".uvtk[36]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[37]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[38]" -type "float2" 0.35000008 -0.19999999 ;
	setAttr ".uvtk[39]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[40]" -type "float2" 0.35000008 -0.19999997 ;
	setAttr ".uvtk[41]" -type "float2" 0.35000008 -0.19999999 ;
	setAttr ".uvtk[42]" -type "float2" 0.35000008 -0.19999999 ;
	setAttr ".uvtk[43]" -type "float2" 0.35000008 -0.19999999 ;
	setAttr ".uvtk[44]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[45]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[46]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[47]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[48]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[49]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[50]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[51]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[52]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[53]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[54]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[55]" -type "float2" 0.12499996 0.44999999 ;
	setAttr ".uvtk[56]" -type "float2" 0.12499996 0.44999999 ;
	setAttr ".uvtk[57]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[58]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[59]" -type "float2" 0.12499996 0.44999999 ;
	setAttr ".uvtk[60]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[61]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[68]" -type "float2" -0.050000001 -1.1175871e-008 ;
	setAttr ".uvtk[69]" -type "float2" -0.050000001 -7.4505806e-009 ;
	setAttr ".uvtk[70]" -type "float2" -0.050000001 -7.4505806e-009 ;
	setAttr ".uvtk[71]" -type "float2" -0.050000001 -7.4505806e-009 ;
	setAttr ".uvtk[72]" -type "float2" -0.050000001 -1.1175871e-008 ;
	setAttr ".uvtk[73]" -type "float2" -0.050000001 -3.7252903e-009 ;
	setAttr ".uvtk[74]" -type "float2" -0.050000001 -3.7252903e-009 ;
	setAttr ".uvtk[75]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[76]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[77]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[78]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[79]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[80]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[81]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[82]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[83]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[84]" -type "float2" -0.32960689 -1.1175871e-008 ;
	setAttr ".uvtk[85]" -type "float2" -0.32960689 1.8626451e-008 ;
	setAttr ".uvtk[86]" -type "float2" -0.32960689 1.8626451e-008 ;
	setAttr ".uvtk[87]" -type "float2" -0.32960689 -1.1175871e-008 ;
	setAttr ".uvtk[88]" -type "float2" -0.32960689 9.3132257e-009 ;
	setAttr ".uvtk[89]" -type "float2" -0.32960689 9.3132257e-009 ;
	setAttr ".uvtk[90]" -type "float2" -0.32960689 1.8626451e-008 ;
	setAttr ".uvtk[91]" -type "float2" -0.32960689 9.3132257e-009 ;
	setAttr ".uvtk[92]" -type "float2" -0.32960689 9.3132257e-009 ;
	setAttr ".uvtk[93]" -type "float2" -0.32960689 1.8626451e-008 ;
	setAttr ".uvtk[94]" -type "float2" -0.32960689 -1.1175871e-008 ;
	setAttr ".uvtk[95]" -type "float2" -0.32960689 -1.1175871e-008 ;
	setAttr ".uvtk[96]" -type "float2" -0.050000001 -3.7252903e-009 ;
	setAttr ".uvtk[97]" -type "float2" -0.050000001 -3.7252903e-009 ;
	setAttr ".uvtk[98]" -type "float2" -0.050000001 -7.4505806e-009 ;
	setAttr ".uvtk[99]" -type "float2" -0.050000001 -7.4505806e-009 ;
	setAttr ".uvtk[100]" -type "float2" -0.050000001 -7.4505806e-009 ;
	setAttr ".uvtk[101]" -type "float2" -0.050000001 -3.7252903e-009 ;
	setAttr ".uvtk[102]" -type "float2" -0.050000001 -3.7252903e-009 ;
	setAttr ".uvtk[103]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[104]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[105]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[106]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[107]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[108]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[109]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[110]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[111]" -type "float2" -0.050000001 -1.8626451e-008 ;
	setAttr ".uvtk[112]" -type "float2" -0.32960689 9.3132257e-009 ;
	setAttr ".uvtk[113]" -type "float2" -0.32960689 9.3132257e-009 ;
	setAttr ".uvtk[114]" -type "float2" -0.32960689 -1.1175871e-008 ;
	setAttr ".uvtk[115]" -type "float2" -0.32960689 -1.1175871e-008 ;
	setAttr ".uvtk[116]" -type "float2" -0.32960689 -4.0978193e-008 ;
	setAttr ".uvtk[117]" -type "float2" -0.32960689 -4.0978193e-008 ;
	setAttr ".uvtk[118]" -type "float2" -0.32960689 -1.1175871e-008 ;
	setAttr ".uvtk[119]" -type "float2" -0.32960689 -1.1175871e-008 ;
	setAttr ".uvtk[120]" -type "float2" -0.32960689 -4.0978193e-008 ;
	setAttr ".uvtk[121]" -type "float2" -0.32960689 -4.0978193e-008 ;
	setAttr ".uvtk[122]" -type "float2" -0.32960689 9.3132257e-009 ;
	setAttr ".uvtk[123]" -type "float2" -0.32960689 9.3132257e-009 ;
	setAttr ".uvtk[124]" -type "float2" -0.010854593 -0.087432228 ;
	setAttr ".uvtk[125]" -type "float2" -0.010854593 -0.087432288 ;
	setAttr ".uvtk[126]" -type "float2" -0.010854593 -0.087432288 ;
	setAttr ".uvtk[127]" -type "float2" -0.010854593 -0.087432228 ;
	setAttr ".uvtk[128]" -type "float2" -0.010854593 -0.087432228 ;
	setAttr ".uvtk[129]" -type "float2" -0.010854593 -0.087432288 ;
	setAttr ".uvtk[130]" -type "float2" -0.010854593 -0.087432288 ;
	setAttr ".uvtk[131]" -type "float2" -0.010854593 -0.087432228 ;
	setAttr ".uvtk[132]" -type "float2" -0.010854593 -0.087432228 ;
	setAttr ".uvtk[133]" -type "float2" -0.010854593 -0.087432288 ;
	setAttr ".uvtk[134]" -type "float2" -0.010854593 -0.087432228 ;
	setAttr ".uvtk[135]" -type "float2" -0.010854593 -0.087432288 ;
	setAttr ".uvtk[136]" -type "float2" -0.010854593 -0.087432228 ;
	setAttr ".uvtk[137]" -type "float2" -0.010854593 -0.087432288 ;
	setAttr ".uvtk[138]" -type "float2" 0.014944009 -0.087432288 ;
	setAttr ".uvtk[139]" -type "float2" 0.014944009 -0.087432228 ;
	setAttr ".uvtk[140]" -type "float2" 0.014944009 -0.087432228 ;
	setAttr ".uvtk[141]" -type "float2" 0.014944009 -0.087432288 ;
	setAttr ".uvtk[142]" -type "float2" 0.014944009 -0.087432288 ;
	setAttr ".uvtk[143]" -type "float2" 0.014944009 -0.087432228 ;
	setAttr ".uvtk[144]" -type "float2" 0.014944009 -0.087432228 ;
	setAttr ".uvtk[145]" -type "float2" 0.014944009 -0.087432288 ;
	setAttr ".uvtk[146]" -type "float2" 0.014944009 -0.087432228 ;
	setAttr ".uvtk[147]" -type "float2" 0.014944009 -0.087432288 ;
	setAttr ".uvtk[148]" -type "float2" 0.014944009 -0.087432228 ;
	setAttr ".uvtk[149]" -type "float2" 0.014944009 -0.087432288 ;
	setAttr ".uvtk[150]" -type "float2" 0.014944009 -0.087432228 ;
	setAttr ".uvtk[151]" -type "float2" 0.014944009 -0.087432288 ;
	setAttr ".uvtk[168]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[169]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[170]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[171]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[172]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[173]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[174]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[175]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[176]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[177]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[178]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[179]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[180]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[181]" -type "float2" 0.15019721 -0.11614258 ;
	setAttr ".uvtk[182]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[183]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[184]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[185]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[186]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[187]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[188]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[189]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[190]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[191]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[192]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[193]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[194]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[195]" -type "float2" 0.17599592 -0.13568051 ;
	setAttr ".uvtk[196]" -type "float2" -0.39999983 -7.4505806e-009 ;
	setAttr ".uvtk[197]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[198]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[199]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[200]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[201]" -type "float2" -0.39999983 -7.4505806e-009 ;
	setAttr ".uvtk[202]" -type "float2" -0.39999983 -7.4505806e-009 ;
	setAttr ".uvtk[203]" -type "float2" -0.39999983 -7.4505806e-009 ;
	setAttr ".uvtk[204]" -type "float2" -0.39999983 -7.4505806e-009 ;
	setAttr ".uvtk[205]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[206]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[207]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[208]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[209]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[210]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[211]" -type "float2" -0.40000001 -2.9802322e-008 ;
	setAttr ".uvtk[212]" -type "float2" -0.40000001 -2.9802322e-008 ;
	setAttr ".uvtk[213]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[214]" -type "float2" -0.40000001 0 ;
	setAttr ".uvtk[215]" -type "float2" -0.40000001 0 ;
	setAttr ".uvtk[216]" -type "float2" -0.40000001 -2.9802322e-008 ;
	setAttr ".uvtk[217]" -type "float2" -0.40000001 0 ;
	setAttr ".uvtk[218]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[219]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[220]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[221]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[222]" -type "float2" -0.39999989 -3.7252903e-009 ;
	setAttr ".uvtk[223]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[224]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[225]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[226]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[227]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[228]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[229]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[230]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[231]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[232]" -type "float2" -0.40000001 -7.4505806e-009 ;
	setAttr ".uvtk[233]" -type "float2" -0.39999989 -7.4505806e-009 ;
	setAttr ".uvtk[234]" -type "float2" -0.39999989 -2.9802322e-008 ;
	setAttr ".uvtk[235]" -type "float2" -0.39999989 0 ;
	setAttr ".uvtk[236]" -type "float2" -0.39999989 0 ;
	setAttr ".uvtk[237]" -type "float2" -0.39999989 -1.4901161e-008 ;
	setAttr ".uvtk[238]" -type "float2" -0.39999989 -1.4901161e-008 ;
	setAttr ".uvtk[239]" -type "float2" -0.39999989 -1.4901161e-008 ;
	setAttr ".uvtk[250]" -type "float2" -0.090574279 -0.00014367118 ;
	setAttr ".uvtk[251]" -type "float2" -0.090574279 -0.00014367118 ;
	setAttr ".uvtk[252]" -type "float2" -0.090574279 -0.00014367118 ;
	setAttr ".uvtk[253]" -type "float2" -0.090574279 -0.00014367118 ;
	setAttr ".uvtk[254]" -type "float2" -0.090574279 -0.00014367118 ;
	setAttr ".uvtk[268]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[269]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[270]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[271]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[272]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[273]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[274]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[275]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[276]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[277]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[278]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[279]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[280]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[281]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[282]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[283]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[284]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[285]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[286]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[287]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[288]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[289]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[290]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[291]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[292]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[293]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[294]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[295]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[296]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[297]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[298]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[299]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[300]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[301]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[302]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[303]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[304]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[305]" -type "float2" -1.15 -0.35000002 ;
	setAttr ".uvtk[306]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[307]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[308]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[309]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[310]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[311]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[312]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[313]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[314]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[315]" -type "float2" -0.55000001 -0.099999979 ;
	setAttr ".uvtk[316]" -type "float2" -0.24999994 0.30000001 ;
	setAttr ".uvtk[317]" -type "float2" -0.24999994 0.30000001 ;
	setAttr ".uvtk[318]" -type "float2" -0.25 0.30000001 ;
	setAttr ".uvtk[319]" -type "float2" -0.25 0.30000001 ;
	setAttr ".uvtk[320]" -type "float2" -0.25 0.29999998 ;
	setAttr ".uvtk[321]" -type "float2" -0.25 0.30000001 ;
	setAttr ".uvtk[322]" -type "float2" -0.25 0.29999998 ;
	setAttr ".uvtk[323]" -type "float2" -0.25 0.30000001 ;
	setAttr ".uvtk[324]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[325]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[326]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[327]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[328]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[329]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[330]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[331]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[332]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[333]" -type "float2" 0.0020447264 -0.087432265 ;
	setAttr ".uvtk[334]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[335]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[336]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[337]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[338]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[339]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[340]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[341]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[342]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[343]" -type "float2" 0.0278433 -0.087432235 ;
	setAttr ".uvtk[344]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[345]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[346]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[347]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[348]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[349]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[350]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[351]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[352]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[353]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[354]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[355]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[356]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[357]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[358]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[359]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[360]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[361]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[362]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[363]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[364]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[365]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[366]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[367]" -type "float2" -0.049999982 -2.9802322e-008 ;
	setAttr ".uvtk[368]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[369]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[370]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[371]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[372]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[373]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[374]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[375]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[376]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[377]" -type "float2" 0.16309658 -0.11614259 ;
	setAttr ".uvtk[378]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[379]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[380]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[381]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[382]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[383]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[384]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[385]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[386]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[387]" -type "float2" 0.18889518 -0.13568048 ;
	setAttr ".uvtk[388]" -type "float2" -0.24999994 0.30000001 ;
	setAttr ".uvtk[389]" -type "float2" -0.25 0.30000001 ;
	setAttr ".uvtk[390]" -type "float2" -0.25 0.29999998 ;
	setAttr ".uvtk[391]" -type "float2" -0.24999994 0.30000001 ;
	setAttr ".uvtk[392]" -type "float2" -0.25 0.30000001 ;
	setAttr ".uvtk[393]" -type "float2" -0.25 0.30000001 ;
	setAttr ".uvtk[394]" -type "float2" -0.25 0.30000001 ;
	setAttr ".uvtk[395]" -type "float2" -0.25 0.29999998 ;
	setAttr ".uvtk[420]" -type "float2" 0.125 0.44999999 ;
	setAttr ".uvtk[421]" -type "float2" 0.12499996 0.44999999 ;
	setAttr ".uvtk[422]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[423]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[424]" -type "float2" 0.125 0.45000002 ;
	setAttr ".uvtk[425]" -type "float2" 0.125 0.45000005 ;
	setAttr ".uvtk[426]" -type "float2" 0.12499996 0.45000005 ;
	setAttr ".uvtk[427]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[428]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[429]" -type "float2" 0.125 0.45000002 ;
	setAttr ".uvtk[430]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[431]" -type "float2" 0.12499996 0.44999999 ;
	setAttr ".uvtk[432]" -type "float2" 0.125 0.44999999 ;
	setAttr ".uvtk[433]" -type "float2" 0.125 0.44999999 ;
	setAttr ".uvtk[434]" -type "float2" 0.125 0.45000002 ;
	setAttr ".uvtk[435]" -type "float2" 0.125 0.45000002 ;
	setAttr ".uvtk[436]" -type "float2" 0.125 0.45000002 ;
	setAttr ".uvtk[437]" -type "float2" 0.125 0.45000002 ;
	setAttr ".uvtk[438]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[439]" -type "float2" 0.12499996 0.45000002 ;
	setAttr ".uvtk[482]" -type "float2" -0.052570678 -0.037432276 ;
	setAttr ".uvtk[483]" -type "float2" -0.052570678 -0.037432276 ;
	setAttr ".uvtk[484]" -type "float2" -0.052570678 -0.037432276 ;
	setAttr ".uvtk[485]" -type "float2" -0.052570678 -0.037432276 ;
	setAttr ".uvtk[486]" -type "float2" -0.052570678 -0.037432276 ;
	setAttr ".uvtk[487]" -type "float2" -0.052570678 -0.037432276 ;
	setAttr ".uvtk[488]" -type "float2" -0.052570678 -0.037432276 ;
	setAttr ".uvtk[489]" -type "float2" -0.025206916 -0.066142514 ;
	setAttr ".uvtk[490]" -type "float2" -0.025206916 -0.066142514 ;
	setAttr ".uvtk[491]" -type "float2" -0.025206916 -0.066142514 ;
	setAttr ".uvtk[492]" -type "float2" -0.025206916 -0.066142514 ;
	setAttr ".uvtk[493]" -type "float2" -0.025206916 -0.066142514 ;
	setAttr ".uvtk[494]" -type "float2" -0.025206916 -0.066142514 ;
	setAttr ".uvtk[495]" -type "float2" -0.025206916 -0.066142514 ;
	setAttr ".uvtk[496]" -type "float2" 0.0021566681 -0.066142432 ;
	setAttr ".uvtk[497]" -type "float2" 0.0021566681 -0.066142432 ;
	setAttr ".uvtk[498]" -type "float2" 0.0021566681 -0.066142432 ;
	setAttr ".uvtk[499]" -type "float2" 0.0021566681 -0.066142432 ;
	setAttr ".uvtk[500]" -type "float2" 0.0021566681 -0.066142432 ;
	setAttr ".uvtk[501]" -type "float2" 0.0021566681 -0.066142432 ;
	setAttr ".uvtk[502]" -type "float2" 0.0021566681 -0.066142432 ;
	setAttr ".uvtk[503]" -type "float2" 0.029520277 -0.066142611 ;
	setAttr ".uvtk[504]" -type "float2" 0.029520277 -0.066142611 ;
	setAttr ".uvtk[505]" -type "float2" 0.029520277 -0.066142611 ;
	setAttr ".uvtk[506]" -type "float2" 0.029520277 -0.066142611 ;
	setAttr ".uvtk[507]" -type "float2" 0.029520277 -0.066142611 ;
	setAttr ".uvtk[508]" -type "float2" 0.029520277 -0.066142611 ;
	setAttr ".uvtk[509]" -type "float2" 0.029520277 -0.066142611 ;
	setAttr ".uvtk[562]" -type "float2" -0.04603098 -0.13300127 ;
	setAttr ".uvtk[563]" -type "float2" -0.04603098 -0.13300127 ;
	setAttr ".uvtk[564]" -type "float2" -0.04603098 -0.13300127 ;
	setAttr ".uvtk[565]" -type "float2" -0.04603098 -0.13300127 ;
	setAttr ".uvtk[580]" -type "float2" -0.027691815 -0.13300115 ;
	setAttr ".uvtk[581]" -type "float2" -0.027691815 -0.13300115 ;
	setAttr ".uvtk[582]" -type "float2" -0.027691815 -0.13300115 ;
	setAttr ".uvtk[583]" -type "float2" -0.027691815 -0.13300115 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV33";
	rename -uid "896CE40A-47CA-CF0E-3E8A-B99B9560F0D4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[77]" "f[79]" "f[95]" "f[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV29";
	rename -uid "230D2456-4870-6BE8-192A-0EA1242E9B0A";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[282]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[283]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[284]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[285]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[286]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[287]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[288]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[289]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[290]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[291]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[306]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[307]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[308]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[309]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[310]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[311]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[312]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[313]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[314]" -type "float2" -0.30000001 -0.25000003 ;
	setAttr ".uvtk[315]" -type "float2" -0.30000001 -0.25000003 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV34";
	rename -uid "93C75753-4E3C-9AC1-1E79-14B22CEBF958";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[90]" "f[92]" "f[108]" "f[110]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV35";
	rename -uid "677E88AA-4C91-5500-F327-8FB71022363A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[90]" "f[92]" "f[108]" "f[110]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV30";
	rename -uid "D3E08904-4CBD-312E-9D0F-EDB78208D279";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[260]" -type "float2" 0.26340127 -0.23631118 ;
	setAttr ".uvtk[261]" -type "float2" 0.26340127 -0.23631118 ;
	setAttr ".uvtk[262]" -type "float2" 0.26340127 -0.23631118 ;
	setAttr ".uvtk[263]" -type "float2" 0.26340127 -0.23631118 ;
	setAttr ".uvtk[264]" -type "float2" 0.027624784 -0.23631126 ;
	setAttr ".uvtk[265]" -type "float2" 0.027624784 -0.23631126 ;
	setAttr ".uvtk[266]" -type "float2" 0.027624784 -0.23631126 ;
	setAttr ".uvtk[267]" -type "float2" 0.027624784 -0.23631126 ;
	setAttr ".uvtk[282]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[283]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[284]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[285]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[288]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[289]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[290]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[291]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[306]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[308]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[309]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[310]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[312]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[313]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[314]" -type "float2" 0 7.4505806e-009 ;
	setAttr ".uvtk[315]" -type "float2" 0 7.4505806e-009 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV36";
	rename -uid "4C013B8F-4AE4-24A0-1520-DA8FDBA5F01D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[70:71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV37";
	rename -uid "67E8262A-468F-4A92-9B32-8AADCDC8C028";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[70:71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV31";
	rename -uid "E73DA4F7-4D03-8C7A-2292-3AA488A6F450";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[62]" -type "float2" 0.1953702 -0.23631117 ;
	setAttr ".uvtk[63]" -type "float2" 0.19537018 -0.23631117 ;
	setAttr ".uvtk[64]" -type "float2" 0.19537017 -0.23631123 ;
	setAttr ".uvtk[260]" -type "float2" -0.10000002 -1.1920932e-008 ;
	setAttr ".uvtk[261]" -type "float2" -0.10000002 -1.1920932e-008 ;
	setAttr ".uvtk[262]" -type "float2" -0.10000002 -1.1920928e-008 ;
	setAttr ".uvtk[263]" -type "float2" -0.10000002 -1.1920932e-008 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV38";
	rename -uid "B0624F16-4012-AB9A-DF1C-A1A8600E0903";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[75]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV32";
	rename -uid "4E845DB0-4A05-3896-04F5-2988E67867B3";
	setAttr ".uopa" yes;
	setAttr -s 91 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[1]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[2]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[3]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[4]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[5]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[6]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[7]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[8]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[9]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[10]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[11]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[12]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[13]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[14]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[15]" -type "float2" -0.16025083 0.10000003 ;
	setAttr ".uvtk[16]" -type "float2" -0.16025083 0.10000003 ;
	setAttr ".uvtk[17]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[18]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[19]" -type "float2" -0.16025083 0.10000003 ;
	setAttr ".uvtk[20]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[21]" -type "float2" -0.16025083 0.10000003 ;
	setAttr ".uvtk[22]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[23]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[24]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[25]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[26]" -type "float2" -0.16025083 0.10000003 ;
	setAttr ".uvtk[27]" -type "float2" -0.16025083 0.10000003 ;
	setAttr ".uvtk[28]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[29]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[30]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[31]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[32]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[33]" -type "float2" -0.16025083 0.10000003 ;
	setAttr ".uvtk[34]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[35]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[36]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[37]" -type "float2" -0.16025083 0.10000003 ;
	setAttr ".uvtk[38]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[39]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[40]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[41]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[42]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[43]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[65]" -type "float2" 0.059784643 -0.2363112 ;
	setAttr ".uvtk[66]" -type "float2" 0.059784643 -0.2363112 ;
	setAttr ".uvtk[67]" -type "float2" 0.059784643 -0.2363112 ;
	setAttr ".uvtk[196]" -type "float2" -0.16025083 0.099999994 ;
	setAttr ".uvtk[197]" -type "float2" -0.16025083 0.099999994 ;
	setAttr ".uvtk[198]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[199]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[200]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[201]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[202]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[203]" -type "float2" -0.16025083 0.099999994 ;
	setAttr ".uvtk[204]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[205]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[206]" -type "float2" -0.16025083 0.099999994 ;
	setAttr ".uvtk[207]" -type "float2" -0.16025083 0.099999994 ;
	setAttr ".uvtk[208]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[209]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[210]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[211]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[212]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[213]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[214]" -type "float2" -0.16025083 0.099999972 ;
	setAttr ".uvtk[215]" -type "float2" -0.16025083 0.099999972 ;
	setAttr ".uvtk[216]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[217]" -type "float2" -0.16025083 0.099999972 ;
	setAttr ".uvtk[218]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[219]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[220]" -type "float2" -0.16025083 0.099999994 ;
	setAttr ".uvtk[221]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[222]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[223]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[224]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[225]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[226]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[227]" -type "float2" -0.16025083 0.099999994 ;
	setAttr ".uvtk[228]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[229]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[230]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[231]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[232]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[233]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[234]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[235]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[236]" -type "float2" -0.16025083 0.1 ;
	setAttr ".uvtk[237]" -type "float2" -0.16025083 0.099999972 ;
	setAttr ".uvtk[238]" -type "float2" -0.16025083 0.099999972 ;
	setAttr ".uvtk[239]" -type "float2" -0.16025083 0.099999972 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV39";
	rename -uid "39AC1D3F-4B12-A9F6-F31A-37A196C191D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:1]" "f[3:16]" "f[28:53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV33";
	rename -uid "CF135069-43E6-AD86-1968-359E823F52A0";
	setAttr ".uopa" yes;
	setAttr -s 88 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[1]" -type "float2" -5.9604655e-009 4.1723318e-008 ;
	setAttr ".uvtk[2]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[3]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[4]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[5]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[6]" -type "float2" -5.9604655e-009 4.1723318e-008 ;
	setAttr ".uvtk[7]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[8]" -type "float2" -5.9604655e-009 4.1723318e-008 ;
	setAttr ".uvtk[9]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[10]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[11]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[12]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[13]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[14]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[15]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[16]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[17]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[18]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[19]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[20]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[21]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[22]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[23]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[24]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[25]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[26]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[27]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[28]" -type "float2" -5.9604655e-009 4.1723318e-008 ;
	setAttr ".uvtk[29]" -type "float2" -5.9604655e-009 4.1723318e-008 ;
	setAttr ".uvtk[30]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[31]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[32]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[33]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[34]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[35]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[36]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[37]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[38]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[39]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[40]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[41]" -type "float2" -5.9604655e-009 7.1525641e-008 ;
	setAttr ".uvtk[42]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[43]" -type "float2" -5.9604655e-009 4.1723318e-008 ;
	setAttr ".uvtk[196]" -type "float2" -3.5762785e-008 4.1723318e-008 ;
	setAttr ".uvtk[197]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[198]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[199]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[200]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[201]" -type "float2" -3.5762785e-008 4.1723318e-008 ;
	setAttr ".uvtk[202]" -type "float2" -3.5762785e-008 4.1723318e-008 ;
	setAttr ".uvtk[203]" -type "float2" -3.5762785e-008 4.1723318e-008 ;
	setAttr ".uvtk[204]" -type "float2" -3.5762785e-008 7.1525641e-008 ;
	setAttr ".uvtk[205]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[206]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[207]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[208]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[209]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[210]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[211]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[212]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[213]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[214]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[215]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[216]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[217]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[218]" -type "float2" -3.5762785e-008 4.1723318e-008 ;
	setAttr ".uvtk[219]" -type "float2" -3.5762785e-008 4.1723318e-008 ;
	setAttr ".uvtk[220]" -type "float2" -3.5762785e-008 4.1723318e-008 ;
	setAttr ".uvtk[221]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[222]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[223]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[224]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[225]" -type "float2" -3.5762785e-008 4.1723318e-008 ;
	setAttr ".uvtk[226]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[227]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[228]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[229]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[230]" -type "float2" -5.9604619e-009 4.1723318e-008 ;
	setAttr ".uvtk[231]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[232]" -type "float2" -3.5762785e-008 7.1525641e-008 ;
	setAttr ".uvtk[233]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[234]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[235]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[236]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[237]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[238]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
	setAttr ".uvtk[239]" -type "float2" -5.9604619e-009 7.1525641e-008 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV40";
	rename -uid "611A459C-4A56-7682-E0FE-7E9EEE02A99A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:1]" "f[3:16]" "f[28:53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV41";
	rename -uid "84FC90AF-494C-06F9-9AB3-7C92D4C2836B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[76:88]" "f[90]" "f[92]" "f[94:106]" "f[108]" "f[110]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV34";
	rename -uid "6D4C6B87-4B5A-B17B-071F-1EA1F078A90B";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk";
	setAttr ".uvtk[62]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[63]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[64]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[65]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[66]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[67]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[260]" -type "float2" 0.10427304 -4.768372e-008 ;
	setAttr ".uvtk[261]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[262]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[263]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[264]" -type "float2" 0.10427304 -4.768372e-008 ;
	setAttr ".uvtk[265]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[266]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[267]" -type "float2" 0.10427302 -4.768372e-008 ;
	setAttr ".uvtk[552]" -type "float2" 0.047132161 0.036603514 ;
	setAttr ".uvtk[553]" -type "float2" 0.047132161 0.036603514 ;
	setAttr ".uvtk[554]" -type "float2" 0.047132161 0.036603514 ;
	setAttr ".uvtk[555]" -type "float2" 0.047132161 0.036603514 ;
	setAttr ".uvtk[556]" -type "float2" 0.02195763 0.026944743 ;
	setAttr ".uvtk[557]" -type "float2" 0.02195766 0.026944743 ;
	setAttr ".uvtk[558]" -type "float2" 0.02195766 0.026944743 ;
	setAttr ".uvtk[559]" -type "float2" 0.02195763 0.026944743 ;
	setAttr ".uvtk[560]" -type "float2" 0.02195766 0.026944743 ;
	setAttr ".uvtk[561]" -type "float2" 0.02195763 0.026944743 ;
	setAttr ".uvtk[576]" -type "float2" 0.02230661 0.036603473 ;
	setAttr ".uvtk[577]" -type "float2" 0.02230661 0.036603473 ;
	setAttr ".uvtk[578]" -type "float2" 0.02230661 0.036603473 ;
	setAttr ".uvtk[579]" -type "float2" 0.02230661 0.036603473 ;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV42";
	rename -uid "45129279-4A45-C327-AECD-7D98B026C406";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[91]" "f[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV35";
	rename -uid "066BC16D-43F3-AE2A-30B9-39A9517F3FC4";
	setAttr ".uopa" yes;
	setAttr -s 588 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.16062437 -0.10062235 0.1753432 -0.095541798
		 0.17368852 -0.087179326 0.16025077 -0.087179326 0.17368852 -0.035109743 0.1589434
		 -0.03498216 0.14514045 -0.094829045 0.14686666 -0.086668752 0.18570416 -0.087889664
		 0.18570416 -0.035464957 0.16025077 0.00076820026 0.17279057 0.00067879329 0.14686666
		 -0.034854546 0.18570416 0.00043024198 0.1477112 0.00085754762 0.17279057 0.10062234
		 0.14798181 0.10062234 0.13479756 -0.034754619 0.13479756 -0.086469017 0.17279057
		 0.10062234 0.13479756 0.00092746387 0.14798181 0.10062234 0.14771114 0.00067879329
		 0.13479762 0.00043018238 0.13479762 -0.035464898 0.1468132 -0.035109743 0.14771114
		 0.10062234 0.14771114 0.10062234 0.13479762 -0.087889664 0.1468132 -0.087179326 0.1595038
		 -0.0349821 0.16025095 0.00076814066 0.17279051 0.00085748802 0.17251997 0.10062234
		 0.1595038 -0.087179326 0.17444466 -0.034854457 0.18570416 0.00092746387 0.17251997
		 0.10062234 0.17444466 -0.086668812 0.14515851 -0.095541768 0.1595038 -0.10062232
		 0.18570416 -0.034754559 0.17542492 -0.094829045 0.18570416 -0.086468957 -0.54979789
		 0.20389105 -0.55565655 0.20389105 -0.55565655 0.1980323 -0.54979789 0.1980323 -0.55565655
		 0.19217394 -0.54979789 0.19217394 -0.54393923 0.1980323 -0.54393923 0.20389105 -0.54393923
		 0.19217394 -0.54393923 0.1980323 -0.54979789 0.1980323 -0.54979789 0.19217394 -0.54393923
		 0.19217394 -0.54979789 0.20389117 -0.54393923 0.20389117 -0.55565655 0.19217394 -0.55565655
		 0.1980323 -0.55565655 0.20389117 0.48332283 0.20563409 0.50813133 0.20563409 0.49586233
		 0.294366 0.50813133 0.20563409 0.48332265 0.20563409 0.49586233 0.29436606 0.048291866
		 0.21707632 0.044071134 0.26276138 0.043897871 0.26276138 0.043897863 0.26276138 0.039503876
		 0.21707632 0.039503876 0.17264669 0.048291866 0.17264669 0.039503876 0.099644437
		 0.043897871 0.099644437 0.048291866 0.099644437 0.039503876 0.085346952 0.043897871
		 0.085346952 0.048291866 0.085346952 0.043897871 0.037238676 0.043897863 0.037238676
		 0.044071134 0.037238676 0.029720247 0.037238676 0.029720247 0.21707635 0.029934227
		 0.21707635 0.029720247 0.037238676 0.029720247 0.26276138 0.029720247 0.26276138
		 0.029934227 0.21707635 0.029720306 0.26276138 0.029893458 0.26276138 0.029893458
		 0.21707635 0.029720306 0.037238676 0.029893458 0.037238676 0.048291866 0.21707632
		 0.039503876 0.21707632 0.043897871 0.26276138 0.043897871 0.26276138 0.044071022
		 0.26276138 0.048291866 0.17264666 0.039503876 0.17264666 0.048291866 0.099644437
		 0.043897871 0.099644437 0.039503876 0.099644437 0.048291866 0.085346952 0.043897871
		 0.085346952 0.039503876 0.085346952 0.044071022 0.037238706 0.043897871 0.037238706
		 0.043897871 0.037238706 0.029720306 0.26276138 0.029720247 0.26276138 0.029934287
		 0.082923695 0.029720306 0.082923695 0.029720306 0.037238676 0.029720247 0.037238676
		 0.029934287 0.082923695 0.029893458 0.082923695 0.029893458 0.037238676 0.029720247
		 0.037238676 0.029720247 0.26276138 0.029893458 0.26276138 -0.65512651 0.022580266
		 -0.65512651 0.010862939 -0.65447313 0.010862939 -0.65447313 0.022580266 -0.65585059
		 0.022580266 -0.65585059 0.010862939 -0.65395468 0.010862939 -0.65395468 0.022580266
		 -0.65657479 0.022580266 -0.65657479 0.010862939 -0.65722817 0.022580266 -0.65722817
		 0.010862939 -0.65774661 0.022580266 -0.65774661 0.010862939 -0.65447313 0.010862939
		 -0.65447313 0.022580266 -0.65512651 0.022580266 -0.65512651 0.010862939 -0.65395468
		 0.010862939 -0.65395468 0.022580266 -0.65585059 0.022580266 -0.65585059 0.010862939
		 -0.65657479 0.022580266 -0.65657479 0.010862939 -0.65722817 0.022580266 -0.65722817
		 0.010862939 -0.65774661 0.022580266 -0.65774661 0.010862939 -0.22184363 0.10207514
		 -0.22184363 0.13136828 -0.22770223 0.13136828 -0.22770223 0.10207514 -0.22770241
		 0.13136828 -0.22770241 0.10207514 -0.22184363 0.10207514 -0.22184363 0.13136828 -0.22184363
		 0.13136828 -0.22770223 0.13136828 -0.22770223 0.10207514 -0.22184363 0.10207514 -0.22770241
		 0.10207514 -0.22184363 0.10207514 -0.22184363 0.13136828 -0.22770241 0.13136828 -0.65512651
		 0.010862939 -0.65447325 0.010862939 -0.65447325 0.022580266 -0.65512651 0.022580266
		 -0.65395468 0.010862939 -0.65395468 0.022580266 -0.65585059 0.010862939 -0.65585059
		 0.022580266 -0.6565749 0.010862939 -0.6565749 0.022580266 -0.65722817 0.010862939
		 -0.65722817 0.022580266 -0.65774661 0.010862939 -0.65774661 0.022580266 -0.65447313
		 0.022580206 -0.65512639 0.022580206 -0.65512639 0.010862939 -0.65447313 0.010862939
		 -0.65585047 0.022580206 -0.65585047 0.010862939 -0.65395468 0.022580206 -0.65395468
		 0.010862939 -0.65657479 0.022580206 -0.65657479 0.010862939 -0.65722805 0.022580206
		 -0.65722805 0.010862939 -0.65774649 0.022580206 -0.65774649 0.010862939 0.034797601
		 -0.082572989 0.060250759 -0.082736216 0.060250759 -0.09439712 0.060250759 -0.10593905
		 0.047093384 -0.10349252 0.033935957 -0.098008804 0.020778589 -0.090225153 0.020806365
		 -0.081862681 0.034797601 -0.030148299 0.060250759 -0.030585052 0.085704073 -0.082572989
		 0.099695347 -0.081862681 0.099723123 -0.090225153 0.086565658 -0.098008804 0.073408127
		 -0.10349252 0.044028275 0.0057467818 0.060250759 0.00544101 0.085704073 -0.030148299
		 0.043784909 0.10593909 0.060250759 0.10593909 0.076473266 0.0057467818 0.076716632
		 0.10593909 0.020806246 -0.081812494 0.020778529 -0.089972667 0.033935957 -0.097589843
		 0.047093444 -0.10296401 0.060250878 -0.10547876 0.060250878 -0.093404613 0.060250878
		 -0.081449442 0.034797542 -0.081612669 0.073408365 -0.10296401 0.086565718 -0.097589843
		 0.099723123 -0.089972667 0.099695347 -0.081812494 0.085704073 -0.081612669 0.060250878
		 -0.030171813 0.034797542 -0.029898228 0.085704073 -0.029898228 0.060250878 0.005592227
		 0.044028394 0.0057837367 0.076473385 0.0057837367 0.060250878 0.1054787 0.043785028
		 0.1054787 0.076716751 0.1054787 -0.13160399 0.046318963 -0.13160399 0.058036104 -0.14917991
		 0.049745455 -0.14917991 0.043886974 -0.14917991 0.038028196 -0.14917991 0.038028196
		 -0.14917991 0.049745455 -0.13160399 0.058036163 -0.13160399 0.052177444 -0.13160399
		 0.046318904;
	setAttr ".uvtk[250:499]" -0.13160387 0.046318904 -0.14917991 0.038028196 -0.14917991
		 0.043886915 -0.14917991 0.049745634 -0.13160387 0.058036283 -0.14917991 0.038028196
		 -0.13160399 0.046318963 -0.13160399 0.052177444 -0.13160399 0.058036163 -0.14917991
		 0.049745455 0.32926115 0.20563409 0.34572706 0.20563409 0.34572706 0.29436588 0.36219278
		 0.20563409 0.32926115 0.20563403 0.34572706 0.20563403 0.34572706 0.29436606 0.36219278
		 0.20563403 0.059784949 0.099644408 0.074431598 0.085346922 0.12306041 0.037238646
		 0.089078307 0.21707632 0.074431598 0.26276129 0.059784949 0.21707632 0.059784949
		 0.17264666 0.059784889 0.21707635 0.074431598 0.26276144 0.089078307 0.21707635 0.12306041
		 0.037238646 0.074431598 0.085346922 0.059784889 0.099644408 0.059784889 0.17264666
		 0.084906474 0.25550085 0.14425647 0.18854904 0.14425647 0.23531872 0.10754812 0.27708793
		 0.084906474 0.31145102 0.084906355 0.31145102 0.10754818 0.27708787 0.14425653 0.23531872
		 0.14425653 0.18854904 0.084906355 0.25550085 0.059784889 0.099644408 0.059784889
		 0.17264666 0.059784889 0.21707632 0.074431598 0.26276129 0.089078307 0.21707632 0.12306041
		 0.037238646 0.074431598 0.085346922 0.059784889 0.21707632 0.059784889 0.17264666
		 0.059784889 0.099644408 0.074431539 0.085346922 0.12306041 0.037238646 0.089078307
		 0.21707632 0.074431539 0.26276129 0.084906355 0.25550085 0.084906355 0.31145102 0.10754824
		 0.27708793 0.14425653 0.23531872 0.14425653 0.18854904 0.084906355 0.31145102 0.084906355
		 0.25550085 0.14425653 0.18854904 0.14425653 0.23531872 0.10754818 0.27708787 -0.13041116
		 0.10920699 -0.13041116 0.11506565 -0.14366616 0.12423624 -0.14366616 0.11837764 -0.14366622
		 0.11837758 -0.14366622 0.1242363 -0.13041116 0.11506559 -0.13041116 0.10920693 -0.65722805
		 0.022580206 -0.65722805 0.010862939 -0.6565749 0.010862939 -0.6565749 0.022580206
		 -0.65585059 0.010862939 -0.65585059 0.022580206 -0.65512639 0.010862939 -0.65512639
		 0.022580206 -0.65447313 0.010862939 -0.65447313 0.022580206 -0.65447313 0.010862879
		 -0.65447313 0.022580206 -0.65512651 0.022580206 -0.65512651 0.010862879 -0.65585071
		 0.022580206 -0.65585071 0.010862879 -0.65657479 0.022580206 -0.65657479 0.010862879
		 -0.65722817 0.022580206 -0.65722817 0.010862879 -0.20101056 0.13136834 -0.20101056
		 0.10207497 -0.19593675 0.10207497 -0.19593675 0.13136834 -0.20608434 0.13136834 -0.20608434
		 0.10207497 -0.19593675 0.10207497 -0.19593675 0.13136834 -0.20101056 0.13136834 -0.20101056
		 0.10207497 -0.20608434 0.13136834 -0.20608434 0.10207497 -0.20101056 0.13136834 -0.20608434
		 0.13136834 -0.20608434 0.10207497 -0.20101056 0.10207497 -0.19593675 0.13136834 -0.19593675
		 0.10207497 -0.20608434 0.10207509 -0.20101056 0.10207509 -0.20101056 0.13136846 -0.20608434
		 0.13136846 -0.19593675 0.10207509 -0.19593675 0.13136846 -0.65447313 0.022580266
		 -0.65512639 0.022580266 -0.65512639 0.010862939 -0.65447313 0.010862939 -0.65585047
		 0.022580266 -0.65585047 0.010862939 -0.65657467 0.022580266 -0.65657467 0.010862939
		 -0.65722805 0.022580266 -0.65722805 0.010862939 -0.65722817 0.010862939 -0.65657479
		 0.010862939 -0.65657479 0.022580206 -0.65722817 0.022580206 -0.65585059 0.010862939
		 -0.65585059 0.022580206 -0.65512651 0.010862939 -0.65512651 0.022580206 -0.65447313
		 0.010862939 -0.65447313 0.022580206 -0.13041116 0.10920699 -0.14366622 0.11837764
		 -0.14366622 0.12423624 -0.13041116 0.11506565 -0.14366616 0.11837758 -0.13041116
		 0.10920693 -0.13041116 0.11506559 -0.14366616 0.12423624 0.10644443 -0.16497609 0.13552637
		 -0.20787916 0.17636952 -0.18019375 0.16222113 -0.15932199 0.1472872 -0.13729069 0.064815655
		 -0.19150195 0.094683483 -0.23556456 0.21721205 -0.15250835 0.18812987 -0.10960528
		 0.072646514 -0.11511585 0.14492951 -0.13381204 0.12920947 -0.11062118 0.11348952
		 -0.087430447 0.014367357 -0.22569844 0.054157421 -0.26371738 0.031803742 -0.14280125
		 0.25805479 -0.12482294 0.22818688 -0.08076033 0.15433195 -0.059745036 -0.0095282346
		 -0.16976544 0.2992146 -0.09760496 0.27784914 -0.045404278 0.19517496 -0.032059513
		 0.23566273 -0.0038506594 -0.53189421 0.18924449 -0.52017689 0.18924449 -0.52017689
		 0.20682038 -0.52603555 0.20682038 -0.53189421 0.20682038 -0.53189421 0.18924449 -0.52017689
		 0.18924449 -0.52017689 0.20682038 -0.52603555 0.20682038 -0.53189421 0.20682038 -0.53189421
		 0.20682038 -0.53189421 0.18924449 -0.52603543 0.18924449 -0.52017677 0.18924449 -0.52017677
		 0.20682038 -0.53189421 0.20682038 -0.53189421 0.18924443 -0.52603555 0.18924443 -0.52017689
		 0.18924443 -0.52017689 0.20682038 -0.68150896 0.065344349 -0.67961317 0.066721752
		 -0.68184191 0.065997615 -0.68099052 0.064825907 -0.68195647 0.066721752 -0.68033725
		 0.064492956 -0.68184191 0.06744583 -0.67961317 0.064378217 -0.68150896 0.068099156
		 -0.67888886 0.064492956 -0.68099052 0.068617597 -0.67823559 0.064825907 -0.68033725
		 0.068950549 -0.67771727 0.065344349 -0.67961317 0.069065228 -0.6773842 0.065997615
		 -0.67888886 0.068950549 -0.67726964 0.066721752 -0.67823559 0.068617597 -0.6773842
		 0.06744583 -0.67771727 0.068099156 -0.68184179 0.06744583 -0.67961305 0.066721752
		 -0.68150896 0.068099096 -0.68195659 0.066721752 -0.68099052 0.068617716 -0.68184179
		 0.065997615 -0.68033725 0.068950549 -0.68150896 0.065344229 -0.67961305 0.069065228
		 -0.68099052 0.064825788 -0.67888898 0.068950549 -0.68033725 0.064492896 -0.67823571
		 0.068617716 -0.67961305 0.064378217 -0.67771727 0.068099096 -0.67888898 0.064492896
		 -0.67738432 0.06744583 -0.67823571 0.064825788 -0.67726964 0.066721752 -0.67771727
		 0.065344229 -0.67738432 0.065997615 -0.47701442 -0.036207668 -0.48208821 -0.033278339
		 -0.48208821 -0.039136998 -0.47701442 -0.03034889 -0.48716199 -0.036207668 -0.48208821
		 -0.027419619 -0.48716199 -0.03034889 -0.48208821 -0.027419619 -0.48208821 -0.033278279
		 -0.47701442 -0.030349009 -0.48716199 -0.030349009 -0.47701442 -0.036207609 -0.48716199
		 -0.036207609 -0.48208821 -0.039136998 -0.48716199 -0.036207668 -0.48208821 -0.039136998
		 -0.48208821 -0.033278339 -0.47701442 -0.036207668;
	setAttr ".uvtk[500:587]" -0.48716199 -0.03034889 -0.47701442 -0.03034889 -0.48208821
		 -0.027419619 -0.48208821 -0.027419619 -0.48716199 -0.030348949 -0.48208821 -0.033278339
		 -0.48716199 -0.036207609 -0.47701442 -0.030348949 -0.48208821 -0.039136939 -0.47701442
		 -0.036207609 -0.67771715 0.065344289 -0.6773842 0.065997556 -0.67961305 0.066721693
		 -0.67726952 0.066721693 -0.67823559 0.064825848 -0.6773842 0.067446008 -0.67888886
		 0.064492896 -0.67771715 0.068099096 -0.67961305 0.064378336 -0.67823559 0.068617538
		 -0.68033725 0.064492896 -0.67888886 0.068950489 -0.68099052 0.064825848 -0.67961305
		 0.069065168 -0.68150896 0.065344289 -0.68033725 0.068950489 -0.68184191 0.065997556
		 -0.68099052 0.068617538 -0.68195659 0.066721693 -0.68150896 0.068099096 -0.68184191
		 0.067446008 -0.67888886 0.064492896 -0.67823571 0.064825848 -0.67961305 0.066721752
		 -0.67771715 0.065344229 -0.67961305 0.064378217 -0.6773842 0.065997615 -0.68033713
		 0.064492896 -0.67726964 0.066721752 -0.68099052 0.064825848 -0.6773842 0.06744583
		 -0.68150896 0.065344229 -0.67771715 0.068099096 -0.68184179 0.065997615 -0.67823571
		 0.068617538 -0.68195659 0.066721752 -0.67888886 0.068950549 -0.68184179 0.06744583
		 -0.67961305 0.069065228 -0.68150896 0.068099096 -0.68033713 0.068950549 -0.68099052
		 0.068617538 -0.072103284 -0.61652416 -0.072103284 -0.68347591 -0.063315295 -0.68347591
		 -0.063315295 -0.61652416 -0.01331535 -0.61193377 -0.02210328 -0.61193377 -0.02210328
		 -0.64629692 -0.01331535 -0.64629692 -0.02210328 -0.68806607 -0.01331535 -0.68806607
		 -0.2612552 0.012136474 -0.25539643 0.012136474 -0.25539643 0.021307126 -0.2612552
		 0.021307126 -0.25539643 0.012136534 -0.25539643 0.021307066 -0.2612552 0.021307066
		 -0.2612552 0.012136534 0.033467837 -0.58498913 0.033467837 -0.61935228 0.024679907
		 -0.61935228 0.024679907 -0.58498913 0.033467837 -0.66112155 0.024679907 -0.66112155
		 -0.072103284 -0.68347591 -0.063315295 -0.68347591 -0.063315295 -0.61652416 -0.072103284
		 -0.61652416 -0.25539654 0.021307126 -0.2612552 0.021307126 -0.2612552 0.012136534
		 -0.25539654 0.012136534 -0.26125503 0.021307066 -0.26125503 0.012136415 -0.25539643
		 0.012136415 -0.25539643 0.021307066;
createNode polyFlipUV -n "ShipBody:ShipBody:polyFlipUV43";
	rename -uid "4189A5E6-4488-3A0A-0E41-35A886ED9A66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[55]" "f[57]" "f[63]" "f[65]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "ShipBody:ShipBody:polyTweakUV36";
	rename -uid "832E879C-4809-C398-C503-1E8CA31A2B74";
	setAttr ".uopa" yes;
	setAttr -s 458 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0 0.046307381 ;
	setAttr ".uvtk[1]" -type "float2" 0 0.046307381 ;
	setAttr ".uvtk[2]" -type "float2" 0 0.046307392 ;
	setAttr ".uvtk[3]" -type "float2" 0 0.046307392 ;
	setAttr ".uvtk[4]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[5]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[6]" -type "float2" 0 0.046307381 ;
	setAttr ".uvtk[7]" -type "float2" 0 0.046307392 ;
	setAttr ".uvtk[8]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[9]" -type "float2" 0 0.0463074 ;
	setAttr ".uvtk[10]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[11]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[12]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[13]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[14]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[15]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[16]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[17]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[18]" -type "float2" 0 0.046307392 ;
	setAttr ".uvtk[19]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[20]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[21]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[22]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[23]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[24]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[25]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[26]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[27]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[28]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[29]" -type "float2" 0 0.046307392 ;
	setAttr ".uvtk[30]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[31]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[32]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[33]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[34]" -type "float2" 0 0.046307392 ;
	setAttr ".uvtk[35]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[36]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[37]" -type "float2" 0 0.04630737 ;
	setAttr ".uvtk[38]" -type "float2" 0 0.046307392 ;
	setAttr ".uvtk[39]" -type "float2" 0 0.046307381 ;
	setAttr ".uvtk[40]" -type "float2" 0 0.046307381 ;
	setAttr ".uvtk[41]" -type "float2" 0 0.046307385 ;
	setAttr ".uvtk[42]" -type "float2" 0 0.046307381 ;
	setAttr ".uvtk[43]" -type "float2" 0 0.046307392 ;
	setAttr ".uvtk[44]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[45]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[46]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[47]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[48]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[49]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[50]" -type "float2" -0.098189294 0.0019675726 ;
	setAttr ".uvtk[51]" -type "float2" -0.098189294 0.0019675726 ;
	setAttr ".uvtk[52]" -type "float2" -0.098189294 0.0019675726 ;
	setAttr ".uvtk[53]" -type "float2" -0.098189294 0.0019675726 ;
	setAttr ".uvtk[54]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[55]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[56]" -type "float2" -0.098189294 0.0019675726 ;
	setAttr ".uvtk[57]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[58]" -type "float2" -0.098189294 0.0019675726 ;
	setAttr ".uvtk[59]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[60]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[61]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[124]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[125]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[126]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[127]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[128]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[129]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[130]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[131]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[132]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[133]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[134]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[135]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[136]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[137]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[138]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[139]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[140]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[141]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[142]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[143]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[144]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[145]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[146]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[147]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[148]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[149]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[150]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[151]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[152]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[153]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[154]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[155]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[156]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[157]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[158]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[159]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[160]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[161]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[162]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[163]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[164]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[165]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[166]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[167]" -type "float2" -0.058865152 -0.01573772 ;
	setAttr ".uvtk[168]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[169]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[170]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[171]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[172]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[173]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[174]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[175]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[176]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[177]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[178]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[179]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[180]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[181]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[182]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[183]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[184]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[185]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[186]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[187]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[188]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[189]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[190]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[191]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[192]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[193]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[194]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[195]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[196]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[197]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[198]" -type "float2" 0.083353281 -0.0055568861 ;
	setAttr ".uvtk[199]" -type "float2" 0.083353281 -0.0055568861 ;
	setAttr ".uvtk[200]" -type "float2" 0.083353281 -0.0055568861 ;
	setAttr ".uvtk[201]" -type "float2" 0.083353281 -0.0055568842 ;
	setAttr ".uvtk[202]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[203]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[204]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[205]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[206]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[207]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[208]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[209]" -type "float2" 0.083353281 -0.0055568842 ;
	setAttr ".uvtk[210]" -type "float2" 0.083353281 -0.0055568861 ;
	setAttr ".uvtk[211]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[212]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[213]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[214]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[215]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[216]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[217]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[218]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[219]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[220]" -type "float2" 0.083353281 -0.0055568842 ;
	setAttr ".uvtk[221]" -type "float2" 0.083353281 -0.0055568861 ;
	setAttr ".uvtk[222]" -type "float2" 0.083353281 -0.0055568861 ;
	setAttr ".uvtk[223]" -type "float2" 0.083353281 -0.0055568861 ;
	setAttr ".uvtk[224]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[225]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[226]" -type "float2" 0.083353281 -0.0055568861 ;
	setAttr ".uvtk[227]" -type "float2" 0.083353281 -0.0055568842 ;
	setAttr ".uvtk[228]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[229]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[230]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[231]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[232]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[233]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[234]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[235]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[236]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[237]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[238]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[239]" -type "float2" 0.083353281 -0.0055568898 ;
	setAttr ".uvtk[240]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[241]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[242]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[243]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[244]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[245]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[246]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[247]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[248]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[249]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[250]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[251]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[252]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[253]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[254]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[255]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[256]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[257]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[258]" -type "float2" -0.1457141 0.001967716 ;
	setAttr ".uvtk[259]" -type "float2" -0.14571415 0.001967716 ;
	setAttr ".uvtk[260]" -type "float2" 0.083353244 -0.038898192 ;
	setAttr ".uvtk[261]" -type "float2" 0.083353244 -0.038898192 ;
	setAttr ".uvtk[262]" -type "float2" 0.083353244 -0.038898192 ;
	setAttr ".uvtk[263]" -type "float2" 0.083353244 -0.038898192 ;
	setAttr ".uvtk[264]" -type "float2" 0.083353244 -0.038898192 ;
	setAttr ".uvtk[265]" -type "float2" 0.083353244 -0.038898192 ;
	setAttr ".uvtk[266]" -type "float2" 0.083353244 -0.038898192 ;
	setAttr ".uvtk[267]" -type "float2" 0.083353244 -0.038898192 ;
	setAttr ".uvtk[316]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[317]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[318]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[319]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[320]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[321]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[322]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[323]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[324]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[325]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[326]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[327]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[328]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[329]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[330]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[331]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[332]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[333]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[334]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[335]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[336]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[337]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[338]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[339]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[340]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[341]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[342]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[343]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[344]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[345]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[346]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[347]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[348]" -type "float2" -0.096251458 -0.017705437 ;
	setAttr ".uvtk[349]" -type "float2" -0.096251458 -0.017705437 ;
	setAttr ".uvtk[350]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[351]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[352]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[353]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[354]" -type "float2" -0.096251458 -0.017705437 ;
	setAttr ".uvtk[355]" -type "float2" -0.096251458 -0.017705437 ;
	setAttr ".uvtk[356]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[357]" -type "float2" -0.096251458 -0.017705437 ;
	setAttr ".uvtk[358]" -type "float2" -0.096251458 -0.017705437 ;
	setAttr ".uvtk[359]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[360]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[361]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[362]" -type "float2" -0.096251458 -0.017705437 ;
	setAttr ".uvtk[363]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[364]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[365]" -type "float2" -0.096251458 -0.017705437 ;
	setAttr ".uvtk[366]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[367]" -type "float2" -0.096251443 -0.017705437 ;
	setAttr ".uvtk[368]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[369]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[370]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[371]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[372]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[373]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[374]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[375]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[376]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[377]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[378]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[379]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[380]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[381]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[382]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[383]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[384]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[385]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[386]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[387]" -type "float2" -0.048386969 -0.016721653 ;
	setAttr ".uvtk[388]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[389]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[390]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[391]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[392]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[393]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[394]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[395]" -type "float2" -0.15331472 -0.023608513 ;
	setAttr ".uvtk[396]" -type "float2" 0.1203429 0.097959802 ;
	setAttr ".uvtk[397]" -type "float2" 0.16324596 0.14086287 ;
	setAttr ".uvtk[398]" -type "float2" 0.12240278 0.18170603 ;
	setAttr ".uvtk[399]" -type "float2" 0.10153148 0.16083376 ;
	setAttr ".uvtk[400]" -type "float2" 0.079500146 0.13880245 ;
	setAttr ".uvtk[401]" -type "float2" 0.16002612 0.055957481 ;
	setAttr ".uvtk[402]" -type "float2" 0.20408888 0.10001998 ;
	setAttr ".uvtk[403]" -type "float2" 0.081560202 0.22254841 ;
	setAttr ".uvtk[404]" -type "float2" 0.038657315 0.17964523 ;
	setAttr ".uvtk[405]" -type "float2" 0.070482671 0.048099563 ;
	setAttr ".uvtk[406]" -type "float2" 0.076021194 0.13532417 ;
	setAttr ".uvtk[407]" -type "float2" 0.052830372 0.11213324 ;
	setAttr ".uvtk[408]" -type "float2" 0.029639699 0.088942572 ;
	setAttr ".uvtk[409]" -type "float2" 0.21047445 0.0055091828 ;
	setAttr ".uvtk[410]" -type "float2" 0.24539922 0.059644505 ;
	setAttr ".uvtk[411]" -type "float2" 0.11132544 0.007256791 ;
	setAttr ".uvtk[412]" -type "float2" 0.04071749 0.2633912 ;
	setAttr ".uvtk[413]" -type "float2" -0.0033451878 0.21932857 ;
	setAttr ".uvtk[414]" -type "float2" -0.011202928 0.12978487 ;
	setAttr ".uvtk[415]" -type "float2" 0.15144731 -0.034307525 ;
	setAttr ".uvtk[416]" -type "float2" 0.00034195557 0.30470139 ;
	setAttr ".uvtk[417]" -type "float2" -0.054953076 0.26861727 ;
	setAttr ".uvtk[418]" -type "float2" -0.052045889 0.17062779 ;
	setAttr ".uvtk[419]" -type "float2" -0.093412168 0.21094696 ;
	setAttr ".uvtk[420]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[421]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[422]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[423]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[424]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[425]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[426]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[427]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[428]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[429]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[430]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[431]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[432]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[433]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[434]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[435]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[436]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[437]" -type "float2" -0.098189324 0.0019675726 ;
	setAttr ".uvtk[438]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[439]" -type "float2" -0.098189309 0.0019675726 ;
	setAttr ".uvtk[440]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[441]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[442]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[443]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[444]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[445]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[446]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[447]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[448]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[449]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[450]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[451]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[452]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[453]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[454]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[455]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[456]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[457]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[458]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[459]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[460]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[461]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[462]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[463]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[464]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[465]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[466]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[467]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[468]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[469]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[470]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[471]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[472]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[473]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[474]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[475]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[476]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[477]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[478]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[479]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[480]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[481]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[482]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[483]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[484]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[485]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[486]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[487]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[488]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[489]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[490]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[491]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[492]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[493]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[494]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[495]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[496]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[497]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[498]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[499]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[500]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[501]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[502]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[503]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[504]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[505]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[506]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[507]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[508]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[509]" -type "float2" -0.072149411 -0.016721699 ;
	setAttr ".uvtk[510]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[511]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[512]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[513]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[514]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[515]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[516]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[517]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[518]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[519]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[520]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[521]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[522]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[523]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[524]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[525]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[526]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[527]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[528]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[529]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[530]" -type "float2" -0.024624614 -0.016721757 ;
	setAttr ".uvtk[531]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[532]" -type "float2" -0.024624523 -0.016721603 ;
	setAttr ".uvtk[533]" -type "float2" -0.024624523 -0.016721603 ;
	setAttr ".uvtk[534]" -type "float2" -0.024624523 -0.016721603 ;
	setAttr ".uvtk[535]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[536]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[537]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[538]" -type "float2" -0.024624523 -0.016721603 ;
	setAttr ".uvtk[539]" -type "float2" -0.024624523 -0.016721603 ;
	setAttr ".uvtk[540]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[541]" -type "float2" -0.024624523 -0.016721603 ;
	setAttr ".uvtk[542]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[543]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[544]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[545]" -type "float2" -0.024624523 -0.016721603 ;
	setAttr ".uvtk[546]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[547]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[548]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[549]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[550]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[551]" -type "float2" -0.024624523 -0.016721662 ;
	setAttr ".uvtk[562]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[563]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[564]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[565]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[566]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[567]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[568]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[569]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[580]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[581]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[582]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[583]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[584]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[585]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[586]" -type "float2" -0.062800586 -0.021640882 ;
	setAttr ".uvtk[587]" -type "float2" -0.062800586 -0.021640882 ;
createNode nodeGraphEditorInfo -n "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B3281A67-43BC-D323-B7FF-349982A05179";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -149.40475596795031 -206.54761084015439 ;
	setAttr ".tgi[0].vh" -type "double2" 151.78570825429213 205.35713469698348 ;
	setAttr -s 104 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 9751.4287109375;
	setAttr ".tgi[0].ni[0].y" -12292.857421875;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 9428.5712890625;
	setAttr ".tgi[0].ni[1].y" 2795.71435546875;
	setAttr ".tgi[0].ni[1].nvs" 2098;
	setAttr ".tgi[0].ni[2].x" 9751.4287109375;
	setAttr ".tgi[0].ni[2].y" -12044.2861328125;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 9751.4287109375;
	setAttr ".tgi[0].ni[3].y" -11795.7138671875;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 9751.4287109375;
	setAttr ".tgi[0].ni[4].y" -4767.14306640625;
	setAttr ".tgi[0].ni[4].nvs" 1922;
	setAttr ".tgi[0].ni[5].x" 9751.4287109375;
	setAttr ".tgi[0].ni[5].y" -6998.5712890625;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" 9751.4287109375;
	setAttr ".tgi[0].ni[6].y" 5671.4287109375;
	setAttr ".tgi[0].ni[6].nvs" 1922;
	setAttr ".tgi[0].ni[7].x" 9751.4287109375;
	setAttr ".tgi[0].ni[7].y" -6705.71435546875;
	setAttr ".tgi[0].ni[7].nvs" 1922;
	setAttr ".tgi[0].ni[8].x" 9428.5712890625;
	setAttr ".tgi[0].ni[8].y" 4674.28564453125;
	setAttr ".tgi[0].ni[8].nvs" 1922;
	setAttr ".tgi[0].ni[9].x" 9751.4287109375;
	setAttr ".tgi[0].ni[9].y" 5362.85693359375;
	setAttr ".tgi[0].ni[9].nvs" 1922;
	setAttr ".tgi[0].ni[10].x" 9121.4287109375;
	setAttr ".tgi[0].ni[10].y" 4651.4287109375;
	setAttr ".tgi[0].ni[10].nvs" 1922;
	setAttr ".tgi[0].ni[11].x" 8814.2861328125;
	setAttr ".tgi[0].ni[11].y" 4515.71435546875;
	setAttr ".tgi[0].ni[11].nvs" 1922;
	setAttr ".tgi[0].ni[12].x" 8507.142578125;
	setAttr ".tgi[0].ni[12].y" 4380;
	setAttr ".tgi[0].ni[12].nvs" 1922;
	setAttr ".tgi[0].ni[13].x" 8200;
	setAttr ".tgi[0].ni[13].y" 4244.28564453125;
	setAttr ".tgi[0].ni[13].nvs" 1922;
	setAttr ".tgi[0].ni[14].x" 7892.85693359375;
	setAttr ".tgi[0].ni[14].y" 4108.5712890625;
	setAttr ".tgi[0].ni[14].nvs" 1922;
	setAttr ".tgi[0].ni[15].x" 7585.71435546875;
	setAttr ".tgi[0].ni[15].y" 4085.71435546875;
	setAttr ".tgi[0].ni[15].nvs" 1922;
	setAttr ".tgi[0].ni[16].x" 7278.5712890625;
	setAttr ".tgi[0].ni[16].y" 3950;
	setAttr ".tgi[0].ni[16].nvs" 1922;
	setAttr ".tgi[0].ni[17].x" 6971.4287109375;
	setAttr ".tgi[0].ni[17].y" 3927.142822265625;
	setAttr ".tgi[0].ni[17].nvs" 1922;
	setAttr ".tgi[0].ni[18].x" 6664.28564453125;
	setAttr ".tgi[0].ni[18].y" 3791.428466796875;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" 6357.14306640625;
	setAttr ".tgi[0].ni[19].y" 3655.71435546875;
	setAttr ".tgi[0].ni[19].nvs" 1922;
	setAttr ".tgi[0].ni[20].x" 6050;
	setAttr ".tgi[0].ni[20].y" 3520;
	setAttr ".tgi[0].ni[20].nvs" 1922;
	setAttr ".tgi[0].ni[21].x" 5742.85693359375;
	setAttr ".tgi[0].ni[21].y" 3384.28564453125;
	setAttr ".tgi[0].ni[21].nvs" 1922;
	setAttr ".tgi[0].ni[22].x" 9751.4287109375;
	setAttr ".tgi[0].ni[22].y" 1617.142822265625;
	setAttr ".tgi[0].ni[22].nvs" 1922;
	setAttr ".tgi[0].ni[23].x" 9428.5712890625;
	setAttr ".tgi[0].ni[23].y" 1640;
	setAttr ".tgi[0].ni[23].nvs" 1922;
	setAttr ".tgi[0].ni[24].x" 8814.2861328125;
	setAttr ".tgi[0].ni[24].y" 1368.5714111328125;
	setAttr ".tgi[0].ni[24].nvs" 1922;
	setAttr ".tgi[0].ni[25].x" 9121.4287109375;
	setAttr ".tgi[0].ni[25].y" 1504.2857666015625;
	setAttr ".tgi[0].ni[25].nvs" 1922;
	setAttr ".tgi[0].ni[26].x" 8507.142578125;
	setAttr ".tgi[0].ni[26].y" 1345.7142333984375;
	setAttr ".tgi[0].ni[26].nvs" 1922;
	setAttr ".tgi[0].ni[27].x" 5435.71435546875;
	setAttr ".tgi[0].ni[27].y" 3361.428466796875;
	setAttr ".tgi[0].ni[27].nvs" 1922;
	setAttr ".tgi[0].ni[28].x" 6034.28564453125;
	setAttr ".tgi[0].ni[28].y" 2835.71435546875;
	setAttr ".tgi[0].ni[28].nvs" 1922;
	setAttr ".tgi[0].ni[29].x" 9751.4287109375;
	setAttr ".tgi[0].ni[29].y" 2457.142822265625;
	setAttr ".tgi[0].ni[29].nvs" 1922;
	setAttr ".tgi[0].ni[30].x" 8814.2861328125;
	setAttr ".tgi[0].ni[30].y" 2064.28564453125;
	setAttr ".tgi[0].ni[30].nvs" 1922;
	setAttr ".tgi[0].ni[31].x" 9428.5712890625;
	setAttr ".tgi[0].ni[31].y" 1955.7142333984375;
	setAttr ".tgi[0].ni[31].nvs" 1922;
	setAttr ".tgi[0].ni[32].x" 9121.4287109375;
	setAttr ".tgi[0].ni[32].y" 2010;
	setAttr ".tgi[0].ni[32].nvs" 1922;
	setAttr ".tgi[0].ni[33].x" 8200;
	setAttr ".tgi[0].ni[33].y" 2284.28564453125;
	setAttr ".tgi[0].ni[33].nvs" 1922;
	setAttr ".tgi[0].ni[34].x" 8507.142578125;
	setAttr ".tgi[0].ni[34].y" 2118.571533203125;
	setAttr ".tgi[0].ni[34].nvs" 1922;
	setAttr ".tgi[0].ni[35].x" 7892.85693359375;
	setAttr ".tgi[0].ni[35].y" 2334.28564453125;
	setAttr ".tgi[0].ni[35].nvs" 1922;
	setAttr ".tgi[0].ni[36].x" 7585.71435546875;
	setAttr ".tgi[0].ni[36].y" 2395.71435546875;
	setAttr ".tgi[0].ni[36].nvs" 1922;
	setAttr ".tgi[0].ni[37].x" 7278.5712890625;
	setAttr ".tgi[0].ni[37].y" 2574.28564453125;
	setAttr ".tgi[0].ni[37].nvs" 1922;
	setAttr ".tgi[0].ni[38].x" 6971.4287109375;
	setAttr ".tgi[0].ni[38].y" 2635.71435546875;
	setAttr ".tgi[0].ni[38].nvs" 1922;
	setAttr ".tgi[0].ni[39].x" 4530;
	setAttr ".tgi[0].ni[39].y" 7798.5712890625;
	setAttr ".tgi[0].ni[39].nvs" 1922;
	setAttr ".tgi[0].ni[40].x" 4837.14306640625;
	setAttr ".tgi[0].ni[40].y" 7934.28564453125;
	setAttr ".tgi[0].ni[40].nvs" 1922;
	setAttr ".tgi[0].ni[41].x" 5758.5712890625;
	setAttr ".tgi[0].ni[41].y" 8341.4287109375;
	setAttr ".tgi[0].ni[41].nvs" 1922;
	setAttr ".tgi[0].ni[42].x" 5144.28564453125;
	setAttr ".tgi[0].ni[42].y" 8070;
	setAttr ".tgi[0].ni[42].nvs" 1922;
	setAttr ".tgi[0].ni[43].x" 5451.4287109375;
	setAttr ".tgi[0].ni[43].y" 8205.7138671875;
	setAttr ".tgi[0].ni[43].nvs" 1922;
	setAttr ".tgi[0].ni[44].x" 8830;
	setAttr ".tgi[0].ni[44].y" 9360;
	setAttr ".tgi[0].ni[44].nvs" 1922;
	setAttr ".tgi[0].ni[45].x" 9444.2861328125;
	setAttr ".tgi[0].ni[45].y" 9518.5712890625;
	setAttr ".tgi[0].ni[45].nvs" 1922;
	setAttr ".tgi[0].ni[46].x" 9137.142578125;
	setAttr ".tgi[0].ni[46].y" 9382.857421875;
	setAttr ".tgi[0].ni[46].nvs" 1922;
	setAttr ".tgi[0].ni[47].x" 9751.4287109375;
	setAttr ".tgi[0].ni[47].y" -6390;
	setAttr ".tgi[0].ni[47].nvs" 1922;
	setAttr ".tgi[0].ni[48].x" 9751.4287109375;
	setAttr ".tgi[0].ni[48].y" 9654.2861328125;
	setAttr ".tgi[0].ni[48].nvs" 1922;
	setAttr ".tgi[0].ni[49].x" 9444.2861328125;
	setAttr ".tgi[0].ni[49].y" 185.71427917480469;
	setAttr ".tgi[0].ni[49].nvs" 1922;
	setAttr ".tgi[0].ni[50].x" 9137.142578125;
	setAttr ".tgi[0].ni[50].y" 50;
	setAttr ".tgi[0].ni[50].nvs" 1922;
	setAttr ".tgi[0].ni[51].x" 9751.4287109375;
	setAttr ".tgi[0].ni[51].y" 321.42855834960937;
	setAttr ".tgi[0].ni[51].nvs" 1922;
	setAttr ".tgi[0].ni[52].x" 9751.4287109375;
	setAttr ".tgi[0].ni[52].y" -2037.142822265625;
	setAttr ".tgi[0].ni[52].nvs" 1922;
	setAttr ".tgi[0].ni[53].x" 6664.28564453125;
	setAttr ".tgi[0].ni[53].y" 2692.857177734375;
	setAttr ".tgi[0].ni[53].nvs" 1922;
	setAttr ".tgi[0].ni[54].x" 8522.857421875;
	setAttr ".tgi[0].ni[54].y" 9224.2861328125;
	setAttr ".tgi[0].ni[54].nvs" 1922;
	setAttr ".tgi[0].ni[55].x" 8215.7138671875;
	setAttr ".tgi[0].ni[55].y" 9088.5712890625;
	setAttr ".tgi[0].ni[55].nvs" 1922;
	setAttr ".tgi[0].ni[56].x" 7908.5712890625;
	setAttr ".tgi[0].ni[56].y" 9065.7138671875;
	setAttr ".tgi[0].ni[56].nvs" 1922;
	setAttr ".tgi[0].ni[57].x" 7601.4287109375;
	setAttr ".tgi[0].ni[57].y" 8930;
	setAttr ".tgi[0].ni[57].nvs" 1922;
	setAttr ".tgi[0].ni[58].x" 7294.28564453125;
	setAttr ".tgi[0].ni[58].y" 8907.142578125;
	setAttr ".tgi[0].ni[58].nvs" 1922;
	setAttr ".tgi[0].ni[59].x" 6987.14306640625;
	setAttr ".tgi[0].ni[59].y" 8771.4287109375;
	setAttr ".tgi[0].ni[59].nvs" 1922;
	setAttr ".tgi[0].ni[60].x" 6680;
	setAttr ".tgi[0].ni[60].y" 8635.7138671875;
	setAttr ".tgi[0].ni[60].nvs" 1922;
	setAttr ".tgi[0].ni[61].x" 6372.85693359375;
	setAttr ".tgi[0].ni[61].y" 8500;
	setAttr ".tgi[0].ni[61].nvs" 1922;
	setAttr ".tgi[0].ni[62].x" 6065.71435546875;
	setAttr ".tgi[0].ni[62].y" 8364.2861328125;
	setAttr ".tgi[0].ni[62].nvs" 1922;
	setAttr ".tgi[0].ni[63].x" -91.428573608398437;
	setAttr ".tgi[0].ni[63].y" 97.142860412597656;
	setAttr ".tgi[0].ni[63].nvs" 1922;
	setAttr ".tgi[0].ni[64].x" 9428.5712890625;
	setAttr ".tgi[0].ni[64].y" 6240;
	setAttr ".tgi[0].ni[64].nvs" 2098;
	setAttr ".tgi[0].ni[65].x" 9751.4287109375;
	setAttr ".tgi[0].ni[65].y" -11547.142578125;
	setAttr ".tgi[0].ni[65].nvs" 1923;
	setAttr ".tgi[0].ni[66].x" 9751.4287109375;
	setAttr ".tgi[0].ni[66].y" -11298.5712890625;
	setAttr ".tgi[0].ni[66].nvs" 1923;
	setAttr ".tgi[0].ni[67].x" 9751.4287109375;
	setAttr ".tgi[0].ni[67].y" -11050;
	setAttr ".tgi[0].ni[67].nvs" 1923;
	setAttr ".tgi[0].ni[68].x" 9428.5712890625;
	setAttr ".tgi[0].ni[68].y" -3082.857177734375;
	setAttr ".tgi[0].ni[68].nvs" 2098;
	setAttr ".tgi[0].ni[69].x" 9751.4287109375;
	setAttr ".tgi[0].ni[69].y" -10801.4287109375;
	setAttr ".tgi[0].ni[69].nvs" 1923;
	setAttr ".tgi[0].ni[70].x" 9428.5712890625;
	setAttr ".tgi[0].ni[70].y" 1132.857177734375;
	setAttr ".tgi[0].ni[70].nvs" 2098;
	setAttr ".tgi[0].ni[71].x" 9751.4287109375;
	setAttr ".tgi[0].ni[71].y" -10552.857421875;
	setAttr ".tgi[0].ni[71].nvs" 1923;
	setAttr ".tgi[0].ni[72].x" 9751.4287109375;
	setAttr ".tgi[0].ni[72].y" -10304.2861328125;
	setAttr ".tgi[0].ni[72].nvs" 1923;
	setAttr ".tgi[0].ni[73].x" 9428.5712890625;
	setAttr ".tgi[0].ni[73].y" 1352.857177734375;
	setAttr ".tgi[0].ni[73].nvs" 1923;
	setAttr ".tgi[0].ni[74].x" 9428.5712890625;
	setAttr ".tgi[0].ni[74].y" 5457.14306640625;
	setAttr ".tgi[0].ni[74].nvs" 2098;
	setAttr ".tgi[0].ni[75].x" 9751.4287109375;
	setAttr ".tgi[0].ni[75].y" -10055.7138671875;
	setAttr ".tgi[0].ni[75].nvs" 1923;
	setAttr ".tgi[0].ni[76].x" 9751.4287109375;
	setAttr ".tgi[0].ni[76].y" -9807.142578125;
	setAttr ".tgi[0].ni[76].nvs" 1923;
	setAttr ".tgi[0].ni[77].x" 9735.7138671875;
	setAttr ".tgi[0].ni[77].y" -5601.4287109375;
	setAttr ".tgi[0].ni[77].nvs" 2098;
	setAttr ".tgi[0].ni[78].x" 9751.4287109375;
	setAttr ".tgi[0].ni[78].y" -9558.5712890625;
	setAttr ".tgi[0].ni[78].nvs" 1923;
	setAttr ".tgi[0].ni[79].x" 9751.4287109375;
	setAttr ".tgi[0].ni[79].y" -9310;
	setAttr ".tgi[0].ni[79].nvs" 1923;
	setAttr ".tgi[0].ni[80].x" 6341.4287109375;
	setAttr ".tgi[0].ni[80].y" 3047.142822265625;
	setAttr ".tgi[0].ni[80].nvs" 2098;
	setAttr ".tgi[0].ni[81].x" 9751.4287109375;
	setAttr ".tgi[0].ni[81].y" -9061.4287109375;
	setAttr ".tgi[0].ni[81].nvs" 1923;
	setAttr ".tgi[0].ni[82].x" 6341.4287109375;
	setAttr ".tgi[0].ni[82].y" 2287.142822265625;
	setAttr ".tgi[0].ni[82].nvs" 1923;
	setAttr ".tgi[0].ni[83].x" 9428.5712890625;
	setAttr ".tgi[0].ni[83].y" -1488.5714111328125;
	setAttr ".tgi[0].ni[83].nvs" 2098;
	setAttr ".tgi[0].ni[84].x" 9751.4287109375;
	setAttr ".tgi[0].ni[84].y" -8812.857421875;
	setAttr ".tgi[0].ni[84].nvs" 1923;
	setAttr ".tgi[0].ni[85].x" 9751.4287109375;
	setAttr ".tgi[0].ni[85].y" -8564.2861328125;
	setAttr ".tgi[0].ni[85].nvs" 1923;
	setAttr ".tgi[0].ni[86].x" 9428.5712890625;
	setAttr ".tgi[0].ni[86].y" -2271.428466796875;
	setAttr ".tgi[0].ni[86].nvs" 2098;
	setAttr ".tgi[0].ni[87].x" 9751.4287109375;
	setAttr ".tgi[0].ni[87].y" -7561.4287109375;
	setAttr ".tgi[0].ni[87].nvs" 1923;
	setAttr ".tgi[0].ni[88].x" 2994.28564453125;
	setAttr ".tgi[0].ni[88].y" 7120;
	setAttr ".tgi[0].ni[88].nvs" 1922;
	setAttr ".tgi[0].ni[89].x" 2687.142822265625;
	setAttr ".tgi[0].ni[89].y" 6984.28564453125;
	setAttr ".tgi[0].ni[89].nvs" 1922;
	setAttr ".tgi[0].ni[90].x" 2380;
	setAttr ".tgi[0].ni[90].y" 6848.5712890625;
	setAttr ".tgi[0].ni[90].nvs" 1922;
	setAttr ".tgi[0].ni[91].x" 2072.857177734375;
	setAttr ".tgi[0].ni[91].y" 6712.85693359375;
	setAttr ".tgi[0].ni[91].nvs" 1922;
	setAttr ".tgi[0].ni[92].x" 3915.71435546875;
	setAttr ".tgi[0].ni[92].y" 7527.14306640625;
	setAttr ".tgi[0].ni[92].nvs" 1922;
	setAttr ".tgi[0].ni[93].x" 3301.428466796875;
	setAttr ".tgi[0].ni[93].y" 7255.71435546875;
	setAttr ".tgi[0].ni[93].nvs" 1922;
	setAttr ".tgi[0].ni[94].x" 4222.85693359375;
	setAttr ".tgi[0].ni[94].y" 7662.85693359375;
	setAttr ".tgi[0].ni[94].nvs" 1922;
	setAttr ".tgi[0].ni[95].x" 3608.571533203125;
	setAttr ".tgi[0].ni[95].y" 7391.4287109375;
	setAttr ".tgi[0].ni[95].nvs" 1922;
	setAttr ".tgi[0].ni[96].x" 1458.5714111328125;
	setAttr ".tgi[0].ni[96].y" 6554.28564453125;
	setAttr ".tgi[0].ni[96].nvs" 1922;
	setAttr ".tgi[0].ni[97].x" 1765.7142333984375;
	setAttr ".tgi[0].ni[97].y" 6577.14306640625;
	setAttr ".tgi[0].ni[97].nvs" 1922;
	setAttr ".tgi[0].ni[98].x" 9751.4287109375;
	setAttr ".tgi[0].ni[98].y" -7291.4287109375;
	setAttr ".tgi[0].ni[98].nvs" 1922;
	setAttr ".tgi[0].ni[99].x" 9428.5712890625;
	setAttr ".tgi[0].ni[99].y" -4654.28564453125;
	setAttr ".tgi[0].ni[99].nvs" 2098;
	setAttr ".tgi[0].ni[100].x" 9751.4287109375;
	setAttr ".tgi[0].ni[100].y" -8315.7138671875;
	setAttr ".tgi[0].ni[100].nvs" 1923;
	setAttr ".tgi[0].ni[101].x" 9428.5712890625;
	setAttr ".tgi[0].ni[101].y" -3865.71435546875;
	setAttr ".tgi[0].ni[101].nvs" 2098;
	setAttr ".tgi[0].ni[102].x" 9751.4287109375;
	setAttr ".tgi[0].ni[102].y" -8067.14306640625;
	setAttr ".tgi[0].ni[102].nvs" 1923;
	setAttr ".tgi[0].ni[103].x" 9751.4287109375;
	setAttr ".tgi[0].ni[103].y" -7818.5712890625;
	setAttr ".tgi[0].ni[103].nvs" 1923;
createNode phong -n "ShipBody:phong1";
	rename -uid "338AAE37-40CA-C0ED-98B1-9E9782CAC50C";
createNode shadingEngine -n "ShipBody:phong1SG";
	rename -uid "9BD4489B-40A1-53E5-DC9B-D392967E69E7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "ShipBody:materialInfo1";
	rename -uid "3C681CC4-4823-97FA-9AD1-8EBCA7D3E9B1";
createNode file -n "ShipBody:file1";
	rename -uid "A696150B-43D0-874B-CDE3-A3A0023D7F60";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Desktop/SP2 OBJ/SP OBJ//images/ShipBody.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "ShipBody:place2dTexture1";
	rename -uid "6C14E2BC-412D-16BD-CBE2-D093605F3857";
createNode renderSetup -n "ShipBody:renderSetup";
	rename -uid "10CB1E2B-40FF-333E-2A07-418F41BCCECC";
createNode file -n "ShipBody:file2";
	rename -uid "14D0FEE3-4FC3-F7EB-1BEA-25A1DA835A30";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Desktop/SP2 OBJ/SP OBJ//images/ShipBody.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "ShipBody:place2dTexture2";
	rename -uid "443C5F1D-49B3-94FB-BA51-C9A2061AF395";
createNode nodeGraphEditorInfo -n "ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "7B54EFFF-47EE-B0B1-9872-3A910B9A1FD1";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -145.2380894668521 -201.1904681958853 ;
	setAttr ".tgi[0].vh" -type "double2" 146.42856561002301 201.1904681958853 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 368.57144165039063;
	setAttr ".tgi[0].ni[0].y" 188.57142639160156;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -552.85711669921875;
	setAttr ".tgi[0].ni[1].y" -70;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -245.71427917480469;
	setAttr ".tgi[0].ni[2].y" -48.571430206298828;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -552.85711669921875;
	setAttr ".tgi[0].ni[3].y" 105.71428680419922;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -245.71427917480469;
	setAttr ".tgi[0].ni[4].y" 127.14286041259766;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -91.428573608398437;
	setAttr ".tgi[0].ni[5].y" 97.142860412597656;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" 61.428569793701172;
	setAttr ".tgi[0].ni[6].y" 188.57142639160156;
	setAttr ".tgi[0].ni[6].nvs" 1923;
createNode polyTriangulate -n "polyTriangulate1";
	rename -uid "0AF36339-4091-3A55-23BF-B586B571FFB6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate2";
	rename -uid "8EEAF821-4AF0-3B63-79F0-29A050E5528D";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "440B122D-46D6-3FEB-78FF-728C9ABA5720";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -136.30951839307022 -196.42856362320163 ;
	setAttr ".tgi[0].vh" -type "double2" 141.0714229657539 191.66665905051792 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -91.428573608398437;
	setAttr ".tgi[0].ni[0].y" 97.142860412597656;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" -552.85711669921875;
	setAttr ".tgi[0].ni[1].y" 162.85714721679687;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -245.71427917480469;
	setAttr ".tgi[0].ni[2].y" 185.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 61.428569793701172;
	setAttr ".tgi[0].ni[3].y" 185.71427917480469;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 368.57144165039063;
	setAttr ".tgi[0].ni[4].y" 162.85714721679687;
	setAttr ".tgi[0].ni[4].nvs" 1923;
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
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 4 ".r";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 106 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 106 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId6.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts4.og" "pCubeShape1.i";
connectAttr "groupId7.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape3.i";
connectAttr "groupId2.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "polySplit32.out" "pCube4Shape.i";
connectAttr "groupId5.id" "pCube4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[0].gco";
connectAttr "groupParts5.og" "pCube5Shape.i";
connectAttr "groupId8.id" "pCube5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube5Shape.iog.og[0].gco";
connectAttr "groupId14.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts9.og" "pCubeShape4.i";
connectAttr "groupId15.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupParts6.og" "pCubeShape5.i";
connectAttr "groupId10.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId12.id" "pConeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pConeShape1.iog.og[0].gco";
connectAttr "groupParts8.og" "pConeShape1.i";
connectAttr "groupId13.id" "pConeShape1.ciog.cog[0].cgid";
connectAttr "groupId19.id" "pTorusShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape1.iog.og[0].gco";
connectAttr "groupParts13.og" "pTorusShape1.i";
connectAttr "groupId20.id" "pTorusShape1.ciog.cog[0].cgid";
connectAttr "polyMirror4.out" "polySurfaceShape1.i";
connectAttr "groupId17.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts12.og" "polySurfaceShape2.i";
connectAttr "groupId18.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts10.og" "pCone2Shape.i";
connectAttr "groupId16.id" "pCone2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCone2Shape.iog.og[0].gco";
connectAttr "groupParts14.og" "pTorus2Shape.i";
connectAttr "groupId22.id" "pTorus2Shape.iog.og[1].gid";
connectAttr "phong1SG.mwc" "pTorus2Shape.iog.og[1].gco";
connectAttr "polyTweakUV29.uvtk[0]" "pTorus2Shape.uvst[0].uvtw";
connectAttr "groupId23.id" "pTorus2Shape.ciog.cog[0].cgid";
connectAttr "polyTriangulate1.out" "polySurface1Shape.i";
connectAttr "polyTweakUV31.uvtk[0]" "polySurface1Shape.uvst[0].uvtw";
connectAttr "ShipBody:ShipBody:groupId6.id" "ShipBody:ShipBody:pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCubeShape1.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts4.og" "ShipBody:ShipBody:pCubeShape1.i"
		;
connectAttr "ShipBody:ShipBody:groupId7.id" "ShipBody:ShipBody:pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:groupId3.id" "ShipBody:ShipBody:pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCubeShape2.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts2.og" "ShipBody:ShipBody:pCubeShape2.i"
		;
connectAttr "ShipBody:ShipBody:groupId4.id" "ShipBody:ShipBody:pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:groupId1.id" "ShipBody:ShipBody:pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCubeShape3.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts1.og" "ShipBody:ShipBody:pCubeShape3.i"
		;
connectAttr "ShipBody:ShipBody:groupId2.id" "ShipBody:ShipBody:pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:polySplit32.out" "ShipBody:ShipBody:pCube4Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId5.id" "ShipBody:ShipBody:pCube4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCube4Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts5.og" "ShipBody:ShipBody:pCube5Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId8.id" "ShipBody:ShipBody:pCube5Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCube5Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupId14.id" "ShipBody:ShipBody:pCubeShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCubeShape4.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts9.og" "ShipBody:ShipBody:pCubeShape4.i"
		;
connectAttr "ShipBody:ShipBody:groupId15.id" "ShipBody:ShipBody:pCubeShape4.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:groupId9.id" "ShipBody:ShipBody:pCubeShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCubeShape5.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts6.og" "ShipBody:ShipBody:pCubeShape5.i"
		;
connectAttr "ShipBody:ShipBody:groupId10.id" "ShipBody:ShipBody:pCubeShape5.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:groupParts10.og" "ShipBody:ShipBody:polySurfaceShape1.i"
		;
connectAttr "ShipBody:ShipBody:groupId16.id" "ShipBody:ShipBody:polySurfaceShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts11.og" "ShipBody:ShipBody:polySurfaceShape2.i"
		;
connectAttr "ShipBody:ShipBody:groupId17.id" "ShipBody:ShipBody:polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts12.og" "ShipBody:ShipBody:polySurfaceShape3.i"
		;
connectAttr "ShipBody:ShipBody:groupId18.id" "ShipBody:ShipBody:polySurfaceShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape3.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts13.og" "ShipBody:ShipBody:polySurfaceShape4.i"
		;
connectAttr "ShipBody:ShipBody:groupId19.id" "ShipBody:ShipBody:polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts14.og" "ShipBody:ShipBody:polySurfaceShape5.i"
		;
connectAttr "ShipBody:ShipBody:groupId20.id" "ShipBody:ShipBody:polySurfaceShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts15.og" "ShipBody:ShipBody:polySurfaceShape6.i"
		;
connectAttr "ShipBody:ShipBody:groupId21.id" "ShipBody:ShipBody:polySurfaceShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape6.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts16.og" "ShipBody:ShipBody:polySurfaceShape7.i"
		;
connectAttr "ShipBody:ShipBody:groupId22.id" "ShipBody:ShipBody:polySurfaceShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape7.iog.og[0].gco"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCube8Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupId11.id" "ShipBody:ShipBody:pCube8Shape.iog.og[0].gid"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV8.out" "ShipBody:ShipBody:pCube8Shape.i"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV8.uvtk[0]" "ShipBody:ShipBody:pCube8Shape.uvst[0].uvtw"
		;
connectAttr "ShipBody:ShipBody:groupId12.id" "ShipBody:ShipBody:pConeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pConeShape1.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts8.og" "ShipBody:ShipBody:pConeShape1.i"
		;
connectAttr "ShipBody:ShipBody:groupId13.id" "ShipBody:ShipBody:pConeShape1.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:groupId23.id" "ShipBody:ShipBody:pCubeShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCubeShape6.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts17.og" "ShipBody:ShipBody:pCubeShape6.i"
		;
connectAttr "ShipBody:ShipBody:groupId24.id" "ShipBody:ShipBody:pCubeShape6.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:groupId27.id" "ShipBody:ShipBody:pCylinderShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCylinderShape1.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts19.og" "ShipBody:ShipBody:pCylinderShape1.i"
		;
connectAttr "ShipBody:ShipBody:groupId28.id" "ShipBody:ShipBody:pCylinderShape1.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:groupId25.id" "ShipBody:ShipBody:pCylinderShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCylinderShape2.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts18.og" "ShipBody:ShipBody:pCylinderShape2.i"
		;
connectAttr "ShipBody:ShipBody:groupId26.id" "ShipBody:ShipBody:pCylinderShape2.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:polyMirror3.out" "ShipBody:ShipBody:pCube10Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId29.id" "ShipBody:ShipBody:pCube10Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pCube10Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts21.og" "ShipBody:ShipBody:polySurface5Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId30.id" "ShipBody:ShipBody:polySurface5Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurface5Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:polyMirror4.out" "|ShipBody:ShipBody:polySurface4|ShipBody:ShipBody:transform23|ShipBody:ShipBody:polySurface4Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId31.id" "|ShipBody:ShipBody:polySurface4|ShipBody:ShipBody:transform23|ShipBody:ShipBody:polySurface4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|ShipBody:ShipBody:polySurface4|ShipBody:ShipBody:transform23|ShipBody:ShipBody:polySurface4Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts23.og" "ShipBody:ShipBody:polySurface1Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId32.id" "ShipBody:ShipBody:polySurface1Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurface1Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts24.og" "|ShipBody:ShipBody:polySurface8|ShipBody:ShipBody:transform25|ShipBody:ShipBody:polySurface4Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId33.id" "|ShipBody:ShipBody:polySurface8|ShipBody:ShipBody:transform25|ShipBody:ShipBody:polySurface4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|ShipBody:ShipBody:polySurface8|ShipBody:ShipBody:transform25|ShipBody:ShipBody:polySurface4Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupId34.id" "ShipBody:ShipBody:pConeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:pConeShape2.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts25.og" "ShipBody:ShipBody:pConeShape2.i"
		;
connectAttr "ShipBody:ShipBody:groupId35.id" "ShipBody:ShipBody:pConeShape2.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:deleteComponent16.og" "ShipBody:ShipBody:polySurfaceShape8.i"
		;
connectAttr "ShipBody:ShipBody:groupId37.id" "ShipBody:ShipBody:polySurfaceShape8.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape8.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts28.og" "ShipBody:ShipBody:polySurfaceShape9.i"
		;
connectAttr "ShipBody:ShipBody:groupId38.id" "ShipBody:ShipBody:polySurfaceShape9.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape9.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:deleteComponent14.og" "ShipBody:ShipBody:polySurfaceShape10.i"
		;
connectAttr "ShipBody:ShipBody:groupId39.id" "ShipBody:ShipBody:polySurfaceShape10.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape10.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts30.og" "ShipBody:ShipBody:polySurfaceShape11.i"
		;
connectAttr "ShipBody:ShipBody:groupId40.id" "ShipBody:ShipBody:polySurfaceShape11.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape11.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:deleteComponent11.og" "ShipBody:ShipBody:polySurfaceShape12.i"
		;
connectAttr "ShipBody:ShipBody:groupId41.id" "ShipBody:ShipBody:polySurfaceShape12.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape12.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:deleteComponent12.og" "ShipBody:ShipBody:polySurfaceShape13.i"
		;
connectAttr "ShipBody:ShipBody:groupId42.id" "ShipBody:ShipBody:polySurfaceShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape13.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:deleteComponent10.og" "ShipBody:ShipBody:polySurfaceShape14.i"
		;
connectAttr "ShipBody:ShipBody:groupId43.id" "ShipBody:ShipBody:polySurfaceShape14.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape14.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:deleteComponent18.og" "ShipBody:ShipBody:polySurfaceShape15.i"
		;
connectAttr "ShipBody:ShipBody:groupId44.id" "ShipBody:ShipBody:polySurfaceShape15.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape15.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts35.og" "ShipBody:ShipBody:polySurfaceShape16.i"
		;
connectAttr "ShipBody:ShipBody:groupId45.id" "ShipBody:ShipBody:polySurfaceShape16.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape16.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts36.og" "ShipBody:ShipBody:polySurfaceShape17.i"
		;
connectAttr "ShipBody:ShipBody:groupId46.id" "ShipBody:ShipBody:polySurfaceShape17.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape17.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:deleteComponent20.og" "ShipBody:ShipBody:polySurfaceShape18.i"
		;
connectAttr "ShipBody:ShipBody:groupId47.id" "ShipBody:ShipBody:polySurfaceShape18.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape18.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts38.og" "ShipBody:ShipBody:polySurfaceShape19.i"
		;
connectAttr "ShipBody:ShipBody:groupId48.id" "ShipBody:ShipBody:polySurfaceShape19.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape19.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts39.og" "ShipBody:ShipBody:polySurfaceShape20.i"
		;
connectAttr "ShipBody:ShipBody:groupId49.id" "ShipBody:ShipBody:polySurfaceShape20.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape20.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:deleteComponent4.og" "ShipBody:ShipBody:polySurfaceShape21.i"
		;
connectAttr "ShipBody:ShipBody:groupId50.id" "ShipBody:ShipBody:polySurfaceShape21.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape21.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts26.og" "ShipBody:ShipBody:polySurface9Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId36.id" "ShipBody:ShipBody:polySurface9Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurface9Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId6.id" "ShipBody:ShipBody:ShipEngine:pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pCubeShape1.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts4.og" "ShipBody:ShipBody:ShipEngine:pCubeShape1.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId7.id" "ShipBody:ShipBody:ShipEngine:pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId3.id" "ShipBody:ShipBody:ShipEngine:pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pCubeShape2.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts2.og" "ShipBody:ShipBody:ShipEngine:pCubeShape2.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId4.id" "ShipBody:ShipBody:ShipEngine:pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId1.id" "ShipBody:ShipBody:ShipEngine:pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pCubeShape3.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts1.og" "ShipBody:ShipBody:ShipEngine:pCubeShape3.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId2.id" "ShipBody:ShipBody:ShipEngine:pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit32.out" "ShipBody:ShipBody:ShipEngine:pCube4Shape.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId5.id" "ShipBody:ShipBody:ShipEngine:pCube4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pCube4Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts5.og" "ShipBody:ShipBody:ShipEngine:pCube5Shape.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId8.id" "ShipBody:ShipBody:ShipEngine:pCube5Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pCube5Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId14.id" "ShipBody:ShipBody:ShipEngine:pCubeShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pCubeShape4.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts9.og" "ShipBody:ShipBody:ShipEngine:pCubeShape4.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId15.id" "ShipBody:ShipBody:ShipEngine:pCubeShape4.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId9.id" "ShipBody:ShipBody:ShipEngine:pCubeShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pCubeShape5.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts6.og" "ShipBody:ShipBody:ShipEngine:pCubeShape5.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId10.id" "ShipBody:ShipBody:ShipEngine:pCubeShape5.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId12.id" "ShipBody:ShipBody:ShipEngine:pConeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pConeShape1.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts8.og" "ShipBody:ShipBody:ShipEngine:pConeShape1.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId13.id" "ShipBody:ShipBody:ShipEngine:pConeShape1.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId19.id" "ShipBody:ShipBody:ShipEngine:pTorusShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pTorusShape1.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts13.og" "ShipBody:ShipBody:ShipEngine:pTorusShape1.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId20.id" "ShipBody:ShipBody:ShipEngine:pTorusShape1.ciog.cog[0].cgid"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts12.og" "ShipBody:ShipBody:ShipEngine:polySurfaceShape2.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId18.id" "ShipBody:ShipBody:ShipEngine:polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts10.og" "ShipBody:ShipBody:ShipEngine:pCone2Shape.i"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId16.id" "ShipBody:ShipBody:ShipEngine:pCone2Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:ShipEngine:pCone2Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts42.og" "ShipBody:ShipBody:polySurfaceShape22.i"
		;
connectAttr "ShipBody:ShipBody:groupId52.id" "ShipBody:ShipBody:polySurfaceShape22.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape22.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts43.og" "ShipBody:ShipBody:polySurfaceShape23.i"
		;
connectAttr "ShipBody:ShipBody:groupId53.id" "ShipBody:ShipBody:polySurfaceShape23.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape23.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts44.og" "ShipBody:ShipBody:polySurfaceShape24.i"
		;
connectAttr "ShipBody:ShipBody:groupId54.id" "ShipBody:ShipBody:polySurfaceShape24.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape24.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts45.og" "ShipBody:ShipBody:polySurfaceShape25.i"
		;
connectAttr "ShipBody:ShipBody:groupId55.id" "ShipBody:ShipBody:polySurfaceShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape25.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts46.og" "ShipBody:ShipBody:polySurfaceShape26.i"
		;
connectAttr "ShipBody:ShipBody:groupId56.id" "ShipBody:ShipBody:polySurfaceShape26.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape26.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts47.og" "ShipBody:ShipBody:polySurfaceShape27.i"
		;
connectAttr "ShipBody:ShipBody:groupId57.id" "ShipBody:ShipBody:polySurfaceShape27.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape27.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts48.og" "ShipBody:ShipBody:polySurfaceShape28.i"
		;
connectAttr "ShipBody:ShipBody:groupId58.id" "ShipBody:ShipBody:polySurfaceShape28.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape28.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts49.og" "ShipBody:ShipBody:polySurfaceShape29.i"
		;
connectAttr "ShipBody:ShipBody:groupId59.id" "ShipBody:ShipBody:polySurfaceShape29.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape29.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts50.og" "ShipBody:ShipBody:polySurfaceShape30.i"
		;
connectAttr "ShipBody:ShipBody:groupId60.id" "ShipBody:ShipBody:polySurfaceShape30.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape30.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts51.og" "ShipBody:ShipBody:polySurfaceShape31.i"
		;
connectAttr "ShipBody:ShipBody:groupId61.id" "ShipBody:ShipBody:polySurfaceShape31.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape31.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts52.og" "ShipBody:ShipBody:polySurfaceShape32.i"
		;
connectAttr "ShipBody:ShipBody:groupId62.id" "ShipBody:ShipBody:polySurfaceShape32.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape32.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts53.og" "ShipBody:ShipBody:polySurfaceShape33.i"
		;
connectAttr "ShipBody:ShipBody:groupId63.id" "ShipBody:ShipBody:polySurfaceShape33.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape33.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts54.og" "ShipBody:ShipBody:polySurfaceShape34.i"
		;
connectAttr "ShipBody:ShipBody:groupId64.id" "ShipBody:ShipBody:polySurfaceShape34.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurfaceShape34.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts41.og" "ShipBody:ShipBody:polySurface14Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId51.id" "ShipBody:ShipBody:polySurface14Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurface14Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts55.og" "ShipBody:ShipBody:polySurface36Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId65.id" "ShipBody:ShipBody:polySurface36Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurface36Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts56.og" "ShipBody:ShipBody:polySurface35Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId66.id" "ShipBody:ShipBody:polySurface35Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurface35Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts57.og" "ShipBody:ShipBody:polySurface26Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId67.id" "ShipBody:ShipBody:polySurface26Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurface26Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts58.og" "ShipBody:ShipBody:polySurface30Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId68.id" "ShipBody:ShipBody:polySurface30Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "ShipBody:ShipBody:polySurface30Shape.iog.og[0].gco"
		;
connectAttr "ShipBody:ShipBody:groupParts59.og" "|ShipBody:ShipBody:polySurface27|ShipBody:ShipBody:transform59|ShipBody:ShipBody:polySurface27Shape.i"
		;
connectAttr "ShipBody:ShipBody:groupId69.id" "|ShipBody:ShipBody:polySurface27|ShipBody:ShipBody:transform59|ShipBody:ShipBody:polySurface27Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|ShipBody:ShipBody:polySurface27|ShipBody:ShipBody:transform59|ShipBody:ShipBody:polySurface27Shape.iog.og[0].gco"
		;
connectAttr "polyTriangulate2.out" "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.i"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV36.uvtk[0]" "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.uvst[0].uvtw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ShipBody:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ShipBody:phong1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polyCube3.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polySplit24.ip";
connectAttr "pCubeShape3.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "polySplit24.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "groupParts3.og" "polyMirror1.ip";
connectAttr "pCube4.sp" "polyMirror1.sp";
connectAttr "pCube4Shape.wm" "polyMirror1.mp";
connectAttr "polyMirror1.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "pCube4Shape.o" "polyUnite2.ip[0]";
connectAttr "pCubeShape1.o" "polyUnite2.ip[1]";
connectAttr "pCube4Shape.wm" "polyUnite2.im[0]";
connectAttr "pCubeShape1.wm" "polyUnite2.im[1]";
connectAttr "polySplit22.out" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "polyUnite2.out" "groupParts5.ig";
connectAttr "groupId8.id" "groupParts5.gi";
connectAttr "polyCube5.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polySplit34.ip";
connectAttr "polySplit34.out" "polyMirror2.ip";
connectAttr "pCube7.sp" "polyMirror2.sp";
connectAttr "pCubeShape5.wm" "polyMirror2.mp";
connectAttr "polyMirror2.out" "groupParts6.ig";
connectAttr "groupId9.id" "groupParts6.gi";
connectAttr "polyCube4.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit35.ip";
connectAttr "polySplit35.out" "polySplit36.ip";
connectAttr "polySplit36.out" "polySplit37.ip";
connectAttr "polySplit37.out" "polySplit38.ip";
connectAttr "polySplit38.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polySplit39.ip";
connectAttr "polySplit39.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "polySplit40.ip";
connectAttr "polySplit40.out" "polySplit41.ip";
connectAttr "polySplit41.out" "polySplit42.ip";
connectAttr "polySplit42.out" "polySplit43.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit43.out" "polyTweak12.ip";
connectAttr "polyCone1.out" "groupParts8.ig";
connectAttr "groupId12.id" "groupParts8.gi";
connectAttr "polyExtrudeFace1.out" "groupParts9.ig";
connectAttr "groupId14.id" "groupParts9.gi";
connectAttr "polyUnite4.out" "groupParts10.ig";
connectAttr "groupId16.id" "groupParts10.gi";
connectAttr "pConeShape1.o" "polyUnite4.ip[0]";
connectAttr "pCubeShape4.o" "polyUnite4.ip[1]";
connectAttr "pConeShape1.wm" "polyUnite4.im[0]";
connectAttr "pCubeShape4.wm" "polyUnite4.im[1]";
connectAttr "pCone2Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts11.ig";
connectAttr "groupId17.id" "groupParts11.gi";
connectAttr "polySeparate1.out[1]" "groupParts12.ig";
connectAttr "groupId18.id" "groupParts12.gi";
connectAttr "pTorusShape1.o" "polyUnite5.ip[0]";
connectAttr "polySurfaceShape2.o" "polyUnite5.ip[1]";
connectAttr "pTorusShape1.wm" "polyUnite5.im[0]";
connectAttr "polySurfaceShape2.wm" "polyUnite5.im[1]";
connectAttr "polyTorus1.out" "groupParts13.ig";
connectAttr "groupId19.id" "groupParts13.gi";
connectAttr "polyUnite5.out" "polyMirror3.ip";
connectAttr "pTorus2.sp" "polyMirror3.sp";
connectAttr "pTorus2Shape.wm" "polyMirror3.mp";
connectAttr "groupParts11.og" "polyMirror4.ip";
connectAttr "|pCone2|polySurface1.sp" "polyMirror4.sp";
connectAttr "polySurfaceShape1.wm" "polyMirror4.mp";
connectAttr "polyMirror3.out" "polyAutoProj1.ip";
connectAttr "pTorus2Shape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyAutoProj2.ip";
connectAttr "pTorus2Shape.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyFlipUV1.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV1.mp";
connectAttr "polyFlipUV1.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyFlipUV2.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV2.mp";
connectAttr "polyFlipUV2.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyFlipUV3.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV3.mp";
connectAttr "polyFlipUV3.out" "polyFlipUV4.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV4.mp";
connectAttr "polyFlipUV4.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyFlipUV5.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV5.mp";
connectAttr "polyFlipUV5.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyFlipUV6.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV6.mp";
connectAttr "polyFlipUV6.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyFlipUV7.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV7.mp";
connectAttr "polyFlipUV7.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyFlipUV8.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV8.mp";
connectAttr "polyFlipUV8.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyFlipUV9.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV9.mp";
connectAttr "polyFlipUV9.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyFlipUV10.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV10.mp";
connectAttr "polyFlipUV10.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyFlipUV11.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV11.mp";
connectAttr "polyFlipUV11.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyFlipUV12.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV12.mp";
connectAttr "polyFlipUV12.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyFlipUV13.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV13.mp";
connectAttr "polyFlipUV13.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyFlipUV14.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV14.mp";
connectAttr "polyFlipUV14.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyFlipUV15.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV15.mp";
connectAttr "polyFlipUV15.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyFlipUV16.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV16.mp";
connectAttr "polyFlipUV16.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyFlipUV17.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV17.mp";
connectAttr "polyFlipUV17.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyFlipUV18.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV18.mp";
connectAttr "polyFlipUV18.out" "polyTweakUV19.ip";
connectAttr "polyTweakUV19.out" "polyFlipUV19.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV19.mp";
connectAttr "polyFlipUV19.out" "polyTweakUV20.ip";
connectAttr "polyTweakUV20.out" "polyFlipUV20.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV20.mp";
connectAttr "polyFlipUV20.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyFlipUV21.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV21.mp";
connectAttr "polyFlipUV21.out" "polyTweakUV22.ip";
connectAttr "polyTweakUV22.out" "polyFlipUV22.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV22.mp";
connectAttr "polyFlipUV22.out" "polyTweakUV23.ip";
connectAttr "polyTweakUV23.out" "polyFlipUV23.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV23.mp";
connectAttr "polyFlipUV23.out" "polyFlipUV24.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV24.mp";
connectAttr "polyFlipUV24.out" "polyTweakUV24.ip";
connectAttr "polyTweakUV24.out" "polyFlipUV25.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV25.mp";
connectAttr "polyFlipUV25.out" "polyTweakUV25.ip";
connectAttr "polyTweakUV25.out" "polyFlipUV26.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV26.mp";
connectAttr "polyFlipUV26.out" "polyTweakUV26.ip";
connectAttr "polyTweakUV26.out" "polyFlipUV27.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV27.mp";
connectAttr "polyFlipUV27.out" "polyTweakUV27.ip";
connectAttr "polyTweakUV27.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyFlipUV28.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV28.mp";
connectAttr "polyFlipUV28.out" "polyTweakUV28.ip";
connectAttr "polyTweakUV28.out" "polyFlipUV29.ip";
connectAttr "pTorus2Shape.wm" "polyFlipUV29.mp";
connectAttr "polyFlipUV29.out" "polyTweakUV29.ip";
connectAttr "file1.oc" "phong1.c";
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "pTorus2Shape.iog.og[1]" "phong1SG.dsm" -na;
connectAttr "pTorus2Shape.ciog.cog[0]" "phong1SG.dsm" -na;
connectAttr "polySurface1Shape.iog" "phong1SG.dsm" -na;
connectAttr "groupId22.msg" "phong1SG.gn" -na;
connectAttr "groupId23.msg" "phong1SG.gn" -na;
connectAttr "phong1SG.msg" "materialInfo1.sg";
connectAttr "phong1.msg" "materialInfo1.m";
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
connectAttr "polySurfaceShape1.o" "polyUnite6.ip[0]";
connectAttr "pTorus2Shape.o" "polyUnite6.ip[1]";
connectAttr "polySurfaceShape1.wm" "polyUnite6.im[0]";
connectAttr "pTorus2Shape.wm" "polyUnite6.im[1]";
connectAttr "polyTweakUV29.out" "groupParts14.ig";
connectAttr "groupId22.id" "groupParts14.gi";
connectAttr "polyUnite6.out" "polyTweakUV30.ip";
connectAttr "polyTweakUV30.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyTweakUV31.ip";
connectAttr "ShipBody:renderLayerManager.rlmi[0]" "ShipBody:defaultRenderLayer.rlid"
		;
connectAttr "ShipBody:ShipBody:renderLayerManager.rlmi[0]" "ShipBody:ShipBody:defaultRenderLayer.rlid"
		;
connectAttr "ShipBody:ShipBody:polyCube1.out" "ShipBody:ShipBody:polyTweak1.ip";
connectAttr "ShipBody:ShipBody:polyTweak1.out" "ShipBody:ShipBody:polySplit1.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit1.out" "ShipBody:ShipBody:polySplit2.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit2.out" "ShipBody:ShipBody:polySplit3.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit3.out" "ShipBody:ShipBody:polySplit4.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit4.out" "ShipBody:ShipBody:polySplit5.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit5.out" "ShipBody:ShipBody:polySplit6.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit6.out" "ShipBody:ShipBody:polySplit7.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit7.out" "ShipBody:ShipBody:polySplit8.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit8.out" "ShipBody:ShipBody:polySplit9.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit9.out" "ShipBody:ShipBody:polySplit10.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit10.out" "ShipBody:ShipBody:polySplit11.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit11.out" "ShipBody:ShipBody:polySplit12.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit12.out" "ShipBody:ShipBody:polySplit13.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit13.out" "ShipBody:ShipBody:polyTweak2.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweak2.out" "ShipBody:ShipBody:polySplit14.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit14.out" "ShipBody:ShipBody:polySplit15.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit15.out" "ShipBody:ShipBody:polySplit16.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit16.out" "ShipBody:ShipBody:polySplit17.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit17.out" "ShipBody:ShipBody:polyTweak3.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweak3.out" "ShipBody:ShipBody:polySplit18.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit18.out" "ShipBody:ShipBody:polyTweak4.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweak4.out" "ShipBody:ShipBody:polySplit19.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit19.out" "ShipBody:ShipBody:polySplit20.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit20.out" "ShipBody:ShipBody:polyTweak5.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweak5.out" "ShipBody:ShipBody:polySplit21.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit21.out" "ShipBody:ShipBody:polySplit22.ip"
		;
connectAttr "ShipBody:ShipBody:polyCube3.out" "ShipBody:ShipBody:polySplit23.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit23.out" "ShipBody:ShipBody:polySplit24.ip"
		;
connectAttr "ShipBody:ShipBody:pCubeShape3.o" "ShipBody:ShipBody:polyUnite1.ip[0]"
		;
connectAttr "ShipBody:ShipBody:pCubeShape2.o" "ShipBody:ShipBody:polyUnite1.ip[1]"
		;
connectAttr "ShipBody:ShipBody:pCubeShape3.wm" "ShipBody:ShipBody:polyUnite1.im[0]"
		;
connectAttr "ShipBody:ShipBody:pCubeShape2.wm" "ShipBody:ShipBody:polyUnite1.im[1]"
		;
connectAttr "ShipBody:ShipBody:polySplit24.out" "ShipBody:ShipBody:groupParts1.ig"
		;
connectAttr "ShipBody:ShipBody:groupId1.id" "ShipBody:ShipBody:groupParts1.gi";
connectAttr "ShipBody:ShipBody:polyCube2.out" "ShipBody:ShipBody:groupParts2.ig"
		;
connectAttr "ShipBody:ShipBody:groupId3.id" "ShipBody:ShipBody:groupParts2.gi";
connectAttr "ShipBody:ShipBody:polyUnite1.out" "ShipBody:ShipBody:groupParts3.ig"
		;
connectAttr "ShipBody:ShipBody:groupId5.id" "ShipBody:ShipBody:groupParts3.gi";
connectAttr "ShipBody:ShipBody:groupParts3.og" "ShipBody:ShipBody:polyMirror1.ip"
		;
connectAttr "ShipBody:ShipBody:pCube4.sp" "ShipBody:ShipBody:polyMirror1.sp";
connectAttr "ShipBody:ShipBody:pCube4Shape.wm" "ShipBody:ShipBody:polyMirror1.mp"
		;
connectAttr "ShipBody:ShipBody:polyMirror1.out" "ShipBody:ShipBody:polySplit25.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit25.out" "ShipBody:ShipBody:polySplit26.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit26.out" "ShipBody:ShipBody:polyTweak6.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweak6.out" "ShipBody:ShipBody:polySplit27.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit27.out" "ShipBody:ShipBody:polySplit28.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit28.out" "ShipBody:ShipBody:polyTweak7.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweak7.out" "ShipBody:ShipBody:polySplit29.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit29.out" "ShipBody:ShipBody:polySplit30.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit30.out" "ShipBody:ShipBody:polySplit31.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit31.out" "ShipBody:ShipBody:polySplit32.ip"
		;
connectAttr "ShipBody:ShipBody:pCube4Shape.o" "ShipBody:ShipBody:polyUnite2.ip[0]"
		;
connectAttr "ShipBody:ShipBody:pCubeShape1.o" "ShipBody:ShipBody:polyUnite2.ip[1]"
		;
connectAttr "ShipBody:ShipBody:pCube4Shape.wm" "ShipBody:ShipBody:polyUnite2.im[0]"
		;
connectAttr "ShipBody:ShipBody:pCubeShape1.wm" "ShipBody:ShipBody:polyUnite2.im[1]"
		;
connectAttr "ShipBody:ShipBody:polySplit22.out" "ShipBody:ShipBody:groupParts4.ig"
		;
connectAttr "ShipBody:ShipBody:groupId6.id" "ShipBody:ShipBody:groupParts4.gi";
connectAttr "ShipBody:ShipBody:polyUnite2.out" "ShipBody:ShipBody:groupParts5.ig"
		;
connectAttr "ShipBody:ShipBody:groupId8.id" "ShipBody:ShipBody:groupParts5.gi";
connectAttr "ShipBody:ShipBody:polyCube5.out" "ShipBody:ShipBody:polyTweak8.ip";
connectAttr "ShipBody:ShipBody:polyTweak8.out" "ShipBody:ShipBody:polySplit33.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit33.out" "ShipBody:ShipBody:polySplit34.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit34.out" "ShipBody:ShipBody:polyMirror2.ip"
		;
connectAttr "ShipBody:ShipBody:pCube7.sp" "ShipBody:ShipBody:polyMirror2.sp";
connectAttr "ShipBody:ShipBody:pCubeShape5.wm" "ShipBody:ShipBody:polyMirror2.mp"
		;
connectAttr "ShipBody:ShipBody:polyMirror2.out" "ShipBody:ShipBody:groupParts6.ig"
		;
connectAttr "ShipBody:ShipBody:groupId9.id" "ShipBody:ShipBody:groupParts6.gi";
connectAttr "ShipBody:ShipBody:polyCube4.out" "ShipBody:ShipBody:polyTweak9.ip";
connectAttr "ShipBody:ShipBody:polyTweak9.out" "ShipBody:ShipBody:polySplit35.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit35.out" "ShipBody:ShipBody:polySplit36.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit36.out" "ShipBody:ShipBody:polySplit37.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit37.out" "ShipBody:ShipBody:polySplit38.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit38.out" "ShipBody:ShipBody:polyTweak10.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweak10.out" "ShipBody:ShipBody:polySplit39.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit39.out" "ShipBody:ShipBody:polyTweak11.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweak11.out" "ShipBody:ShipBody:polySplit40.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit40.out" "ShipBody:ShipBody:polySplit41.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit41.out" "ShipBody:ShipBody:polySplit42.ip"
		;
connectAttr "ShipBody:ShipBody:polySplit42.out" "ShipBody:ShipBody:polySplit43.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweak12.out" "ShipBody:ShipBody:polyExtrudeFace1.ip"
		;
connectAttr "ShipBody:ShipBody:pCubeShape4.wm" "ShipBody:ShipBody:polyExtrudeFace1.mp"
		;
connectAttr "ShipBody:ShipBody:polySplit43.out" "ShipBody:ShipBody:polyTweak12.ip"
		;
connectAttr "ShipBody:ShipBody:polyCone1.out" "ShipBody:ShipBody:groupParts8.ig"
		;
connectAttr "ShipBody:ShipBody:groupId12.id" "ShipBody:ShipBody:groupParts8.gi";
connectAttr "ShipBody:ShipBody:polyExtrudeFace1.out" "ShipBody:ShipBody:groupParts9.ig"
		;
connectAttr "ShipBody:ShipBody:groupId14.id" "ShipBody:ShipBody:groupParts9.gi";
connectAttr "ShipBody:ShipBody:polyUnite3.out" "ShipBody:ShipBody:groupParts7.ig"
		;
connectAttr "ShipBody:ShipBody:groupId11.id" "ShipBody:ShipBody:groupParts7.gi";
connectAttr "ShipBody:ShipBody:pCubeShape5.o" "ShipBody:ShipBody:polyUnite3.ip[0]"
		;
connectAttr "ShipBody:ShipBody:pCube5Shape.o" "ShipBody:ShipBody:polyUnite3.ip[1]"
		;
connectAttr "ShipBody:ShipBody:pCubeShape5.wm" "ShipBody:ShipBody:polyUnite3.im[0]"
		;
connectAttr "ShipBody:ShipBody:pCube5Shape.wm" "ShipBody:ShipBody:polyUnite3.im[1]"
		;
connectAttr "ShipBody:ShipBody:groupParts7.og" "ShipBody:ShipBody:polyAutoProj1.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.wm" "ShipBody:ShipBody:polyAutoProj1.mp"
		;
connectAttr "ShipBody:ShipBody:polyAutoProj1.out" "ShipBody:ShipBody:polyTweakUV1.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV1.out" "ShipBody:ShipBody:polyFlipUV1.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.wm" "ShipBody:ShipBody:polyFlipUV1.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV1.out" "ShipBody:ShipBody:polyTweakUV2.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV2.out" "ShipBody:ShipBody:polyFlipUV2.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.wm" "ShipBody:ShipBody:polyFlipUV2.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV2.out" "ShipBody:ShipBody:polyTweakUV3.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV3.out" "ShipBody:ShipBody:polyFlipUV3.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.wm" "ShipBody:ShipBody:polyFlipUV3.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV3.out" "ShipBody:ShipBody:polyTweakUV4.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV4.out" "ShipBody:ShipBody:polyFlipUV4.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.wm" "ShipBody:ShipBody:polyFlipUV4.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV4.out" "ShipBody:ShipBody:polyTweakUV5.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV5.out" "ShipBody:ShipBody:polyFlipUV5.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.wm" "ShipBody:ShipBody:polyFlipUV5.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV5.out" "ShipBody:ShipBody:polyTweakUV6.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV6.out" "ShipBody:ShipBody:polyFlipUV6.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.wm" "ShipBody:ShipBody:polyFlipUV6.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV6.out" "ShipBody:ShipBody:polyFlipUV7.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.wm" "ShipBody:ShipBody:polyFlipUV7.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV7.out" "ShipBody:ShipBody:polyTweakUV7.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV7.out" "ShipBody:ShipBody:polyFlipUV8.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.wm" "ShipBody:ShipBody:polyFlipUV8.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV8.out" "ShipBody:ShipBody:polyTweakUV8.ip"
		;
connectAttr "ShipBody:ShipBody:pCube8Shape.o" "ShipBody:ShipBody:polySeparate1.ip"
		;
connectAttr "ShipBody:ShipBody:polySeparate1.out[0]" "ShipBody:ShipBody:groupParts10.ig"
		;
connectAttr "ShipBody:ShipBody:groupId16.id" "ShipBody:ShipBody:groupParts10.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate1.out[1]" "ShipBody:ShipBody:groupParts11.ig"
		;
connectAttr "ShipBody:ShipBody:groupId17.id" "ShipBody:ShipBody:groupParts11.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate1.out[2]" "ShipBody:ShipBody:groupParts12.ig"
		;
connectAttr "ShipBody:ShipBody:groupId18.id" "ShipBody:ShipBody:groupParts12.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate1.out[3]" "ShipBody:ShipBody:groupParts13.ig"
		;
connectAttr "ShipBody:ShipBody:groupId19.id" "ShipBody:ShipBody:groupParts13.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate1.out[4]" "ShipBody:ShipBody:groupParts14.ig"
		;
connectAttr "ShipBody:ShipBody:groupId20.id" "ShipBody:ShipBody:groupParts14.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate1.out[5]" "ShipBody:ShipBody:groupParts15.ig"
		;
connectAttr "ShipBody:ShipBody:groupId21.id" "ShipBody:ShipBody:groupParts15.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate1.out[6]" "ShipBody:ShipBody:groupParts16.ig"
		;
connectAttr "ShipBody:ShipBody:groupId22.id" "ShipBody:ShipBody:groupParts16.gi"
		;
connectAttr "ShipBody:ShipBody:pCubeShape6.o" "ShipBody:ShipBody:polyUnite4.ip[0]"
		;
connectAttr "ShipBody:ShipBody:pCylinderShape2.o" "ShipBody:ShipBody:polyUnite4.ip[1]"
		;
connectAttr "ShipBody:ShipBody:pCylinderShape1.o" "ShipBody:ShipBody:polyUnite4.ip[2]"
		;
connectAttr "ShipBody:ShipBody:pCubeShape6.wm" "ShipBody:ShipBody:polyUnite4.im[0]"
		;
connectAttr "ShipBody:ShipBody:pCylinderShape2.wm" "ShipBody:ShipBody:polyUnite4.im[1]"
		;
connectAttr "ShipBody:ShipBody:pCylinderShape1.wm" "ShipBody:ShipBody:polyUnite4.im[2]"
		;
connectAttr "ShipBody:ShipBody:polyCube6.out" "ShipBody:ShipBody:groupParts17.ig"
		;
connectAttr "ShipBody:ShipBody:groupId23.id" "ShipBody:ShipBody:groupParts17.gi"
		;
connectAttr "ShipBody:ShipBody:polyCylinder2.out" "ShipBody:ShipBody:groupParts18.ig"
		;
connectAttr "ShipBody:ShipBody:groupId25.id" "ShipBody:ShipBody:groupParts18.gi"
		;
connectAttr "ShipBody:ShipBody:polyCylinder1.out" "ShipBody:ShipBody:groupParts19.ig"
		;
connectAttr "ShipBody:ShipBody:groupId27.id" "ShipBody:ShipBody:groupParts19.gi"
		;
connectAttr "ShipBody:ShipBody:polyUnite4.out" "ShipBody:ShipBody:groupParts20.ig"
		;
connectAttr "ShipBody:ShipBody:groupId29.id" "ShipBody:ShipBody:groupParts20.gi"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape5.o" "ShipBody:ShipBody:polyUnite5.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape6.o" "ShipBody:ShipBody:polyUnite5.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape5.wm" "ShipBody:ShipBody:polyUnite5.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape6.wm" "ShipBody:ShipBody:polyUnite5.im[1]"
		;
connectAttr "ShipBody:ShipBody:polyUnite5.out" "ShipBody:ShipBody:groupParts21.ig"
		;
connectAttr "ShipBody:ShipBody:groupId30.id" "ShipBody:ShipBody:groupParts21.gi"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape4.o" "ShipBody:ShipBody:polyUnite6.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape3.o" "ShipBody:ShipBody:polyUnite6.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape4.wm" "ShipBody:ShipBody:polyUnite6.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape3.wm" "ShipBody:ShipBody:polyUnite6.im[1]"
		;
connectAttr "ShipBody:ShipBody:polyUnite6.out" "ShipBody:ShipBody:groupParts22.ig"
		;
connectAttr "ShipBody:ShipBody:groupId31.id" "ShipBody:ShipBody:groupParts22.gi"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape1.o" "ShipBody:ShipBody:polyUnite7.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape2.o" "ShipBody:ShipBody:polyUnite7.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape7.o" "ShipBody:ShipBody:polyUnite7.ip[2]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape1.wm" "ShipBody:ShipBody:polyUnite7.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape2.wm" "ShipBody:ShipBody:polyUnite7.im[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape7.wm" "ShipBody:ShipBody:polyUnite7.im[2]"
		;
connectAttr "ShipBody:ShipBody:polyUnite7.out" "ShipBody:ShipBody:groupParts23.ig"
		;
connectAttr "ShipBody:ShipBody:groupId32.id" "ShipBody:ShipBody:groupParts23.gi"
		;
connectAttr "ShipBody:ShipBody:groupParts20.og" "ShipBody:ShipBody:polyMirror3.ip"
		;
connectAttr "ShipBody:ShipBody:pCube10.sp" "ShipBody:ShipBody:polyMirror3.sp";
connectAttr "ShipBody:ShipBody:pCube10Shape.wm" "ShipBody:ShipBody:polyMirror3.mp"
		;
connectAttr "ShipBody:ShipBody:groupParts22.og" "ShipBody:ShipBody:polyMirror4.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface4.sp" "ShipBody:ShipBody:polyMirror4.sp"
		;
connectAttr "|ShipBody:ShipBody:polySurface4|ShipBody:ShipBody:transform23|ShipBody:ShipBody:polySurface4Shape.wm" "ShipBody:ShipBody:polyMirror4.mp"
		;
connectAttr "|ShipBody:ShipBody:polySurface4|ShipBody:ShipBody:transform23|ShipBody:ShipBody:polySurface4Shape.o" "ShipBody:ShipBody:polyUnite8.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurface1Shape.o" "ShipBody:ShipBody:polyUnite8.ip[1]"
		;
connectAttr "ShipBody:ShipBody:pCube10Shape.o" "ShipBody:ShipBody:polyUnite8.ip[2]"
		;
connectAttr "|ShipBody:ShipBody:polySurface4|ShipBody:ShipBody:transform23|ShipBody:ShipBody:polySurface4Shape.wm" "ShipBody:ShipBody:polyUnite8.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurface1Shape.wm" "ShipBody:ShipBody:polyUnite8.im[1]"
		;
connectAttr "ShipBody:ShipBody:pCube10Shape.wm" "ShipBody:ShipBody:polyUnite8.im[2]"
		;
connectAttr "ShipBody:ShipBody:polyUnite8.out" "ShipBody:ShipBody:groupParts24.ig"
		;
connectAttr "ShipBody:ShipBody:groupId33.id" "ShipBody:ShipBody:groupParts24.gi"
		;
connectAttr "|ShipBody:ShipBody:polySurface8|ShipBody:ShipBody:transform25|ShipBody:ShipBody:polySurface4Shape.o" "ShipBody:ShipBody:polyUnite9.ip[0]"
		;
connectAttr "ShipBody:ShipBody:pConeShape2.o" "ShipBody:ShipBody:polyUnite9.ip[1]"
		;
connectAttr "|ShipBody:ShipBody:polySurface8|ShipBody:ShipBody:transform25|ShipBody:ShipBody:polySurface4Shape.wm" "ShipBody:ShipBody:polyUnite9.im[0]"
		;
connectAttr "ShipBody:ShipBody:pConeShape2.wm" "ShipBody:ShipBody:polyUnite9.im[1]"
		;
connectAttr "ShipBody:ShipBody:polyCone2.out" "ShipBody:ShipBody:groupParts25.ig"
		;
connectAttr "ShipBody:ShipBody:groupId34.id" "ShipBody:ShipBody:groupParts25.gi"
		;
connectAttr "ShipBody:ShipBody:polyUnite9.out" "ShipBody:ShipBody:groupParts26.ig"
		;
connectAttr "ShipBody:ShipBody:groupId36.id" "ShipBody:ShipBody:groupParts26.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:renderLayerManager.rlmi[0]" "ShipBody:ShipBody:ShipEngine:defaultRenderLayer.rlid"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube1.out" "ShipBody:ShipBody:ShipEngine:polyTweak1.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak1.out" "ShipBody:ShipBody:ShipEngine:polySplit1.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit1.out" "ShipBody:ShipBody:ShipEngine:polySplit2.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit2.out" "ShipBody:ShipBody:ShipEngine:polySplit3.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit3.out" "ShipBody:ShipBody:ShipEngine:polySplit4.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit4.out" "ShipBody:ShipBody:ShipEngine:polySplit5.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit5.out" "ShipBody:ShipBody:ShipEngine:polySplit6.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit6.out" "ShipBody:ShipBody:ShipEngine:polySplit7.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit7.out" "ShipBody:ShipBody:ShipEngine:polySplit8.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit8.out" "ShipBody:ShipBody:ShipEngine:polySplit9.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit9.out" "ShipBody:ShipBody:ShipEngine:polySplit10.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit10.out" "ShipBody:ShipBody:ShipEngine:polySplit11.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit11.out" "ShipBody:ShipBody:ShipEngine:polySplit12.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit12.out" "ShipBody:ShipBody:ShipEngine:polySplit13.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit13.out" "ShipBody:ShipBody:ShipEngine:polyTweak2.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak2.out" "ShipBody:ShipBody:ShipEngine:polySplit14.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit14.out" "ShipBody:ShipBody:ShipEngine:polySplit15.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit15.out" "ShipBody:ShipBody:ShipEngine:polySplit16.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit16.out" "ShipBody:ShipBody:ShipEngine:polySplit17.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit17.out" "ShipBody:ShipBody:ShipEngine:polyTweak3.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak3.out" "ShipBody:ShipBody:ShipEngine:polySplit18.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit18.out" "ShipBody:ShipBody:ShipEngine:polyTweak4.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak4.out" "ShipBody:ShipBody:ShipEngine:polySplit19.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit19.out" "ShipBody:ShipBody:ShipEngine:polySplit20.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit20.out" "ShipBody:ShipBody:ShipEngine:polyTweak5.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak5.out" "ShipBody:ShipBody:ShipEngine:polySplit21.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit21.out" "ShipBody:ShipBody:ShipEngine:polySplit22.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube3.out" "ShipBody:ShipBody:ShipEngine:polySplit23.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit23.out" "ShipBody:ShipBody:ShipEngine:polySplit24.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape3.o" "ShipBody:ShipBody:ShipEngine:polyUnite1.ip[0]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape2.o" "ShipBody:ShipBody:ShipEngine:polyUnite1.ip[1]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape3.wm" "ShipBody:ShipBody:ShipEngine:polyUnite1.im[0]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape2.wm" "ShipBody:ShipBody:ShipEngine:polyUnite1.im[1]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit24.out" "ShipBody:ShipBody:ShipEngine:groupParts1.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId1.id" "ShipBody:ShipBody:ShipEngine:groupParts1.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube2.out" "ShipBody:ShipBody:ShipEngine:groupParts2.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId3.id" "ShipBody:ShipBody:ShipEngine:groupParts2.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyUnite1.out" "ShipBody:ShipBody:ShipEngine:groupParts3.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId5.id" "ShipBody:ShipBody:ShipEngine:groupParts3.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupParts3.og" "ShipBody:ShipBody:ShipEngine:polyMirror1.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube4.sp" "ShipBody:ShipBody:ShipEngine:polyMirror1.sp"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube4Shape.wm" "ShipBody:ShipBody:ShipEngine:polyMirror1.mp"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyMirror1.out" "ShipBody:ShipBody:ShipEngine:polySplit25.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit25.out" "ShipBody:ShipBody:ShipEngine:polySplit26.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit26.out" "ShipBody:ShipBody:ShipEngine:polyTweak6.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak6.out" "ShipBody:ShipBody:ShipEngine:polySplit27.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit27.out" "ShipBody:ShipBody:ShipEngine:polySplit28.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit28.out" "ShipBody:ShipBody:ShipEngine:polyTweak7.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak7.out" "ShipBody:ShipBody:ShipEngine:polySplit29.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit29.out" "ShipBody:ShipBody:ShipEngine:polySplit30.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit30.out" "ShipBody:ShipBody:ShipEngine:polySplit31.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit31.out" "ShipBody:ShipBody:ShipEngine:polySplit32.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube4Shape.o" "ShipBody:ShipBody:ShipEngine:polyUnite2.ip[0]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape1.o" "ShipBody:ShipBody:ShipEngine:polyUnite2.ip[1]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube4Shape.wm" "ShipBody:ShipBody:ShipEngine:polyUnite2.im[0]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape1.wm" "ShipBody:ShipBody:ShipEngine:polyUnite2.im[1]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit22.out" "ShipBody:ShipBody:ShipEngine:groupParts4.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId6.id" "ShipBody:ShipBody:ShipEngine:groupParts4.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyUnite2.out" "ShipBody:ShipBody:ShipEngine:groupParts5.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId8.id" "ShipBody:ShipBody:ShipEngine:groupParts5.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube5.out" "ShipBody:ShipBody:ShipEngine:polyTweak8.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak8.out" "ShipBody:ShipBody:ShipEngine:polySplit33.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit33.out" "ShipBody:ShipBody:ShipEngine:polySplit34.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit34.out" "ShipBody:ShipBody:ShipEngine:polyMirror2.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube7.sp" "ShipBody:ShipBody:ShipEngine:polyMirror2.sp"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape5.wm" "ShipBody:ShipBody:ShipEngine:polyMirror2.mp"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyMirror2.out" "ShipBody:ShipBody:ShipEngine:groupParts6.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId9.id" "ShipBody:ShipBody:ShipEngine:groupParts6.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube4.out" "ShipBody:ShipBody:ShipEngine:polyTweak9.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak9.out" "ShipBody:ShipBody:ShipEngine:polySplit35.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit35.out" "ShipBody:ShipBody:ShipEngine:polySplit36.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit36.out" "ShipBody:ShipBody:ShipEngine:polySplit37.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit37.out" "ShipBody:ShipBody:ShipEngine:polySplit38.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit38.out" "ShipBody:ShipBody:ShipEngine:polyTweak10.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak10.out" "ShipBody:ShipBody:ShipEngine:polySplit39.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit39.out" "ShipBody:ShipBody:ShipEngine:polyTweak11.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak11.out" "ShipBody:ShipBody:ShipEngine:polySplit40.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit40.out" "ShipBody:ShipBody:ShipEngine:polySplit41.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit41.out" "ShipBody:ShipBody:ShipEngine:polySplit42.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit42.out" "ShipBody:ShipBody:ShipEngine:polySplit43.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak12.out" "ShipBody:ShipBody:ShipEngine:polyExtrudeFace1.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape4.wm" "ShipBody:ShipBody:ShipEngine:polyExtrudeFace1.mp"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit43.out" "ShipBody:ShipBody:ShipEngine:polyTweak12.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCone1.out" "ShipBody:ShipBody:ShipEngine:groupParts8.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId12.id" "ShipBody:ShipBody:ShipEngine:groupParts8.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyExtrudeFace1.out" "ShipBody:ShipBody:ShipEngine:groupParts9.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId14.id" "ShipBody:ShipBody:ShipEngine:groupParts9.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyUnite4.out" "ShipBody:ShipBody:ShipEngine:groupParts10.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId16.id" "ShipBody:ShipBody:ShipEngine:groupParts10.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pConeShape1.o" "ShipBody:ShipBody:ShipEngine:polyUnite4.ip[0]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape4.o" "ShipBody:ShipBody:ShipEngine:polyUnite4.ip[1]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pConeShape1.wm" "ShipBody:ShipBody:ShipEngine:polyUnite4.im[0]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape4.wm" "ShipBody:ShipBody:ShipEngine:polyUnite4.im[1]"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCone2Shape.o" "ShipBody:ShipBody:ShipEngine:polySeparate1.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySeparate1.out[1]" "ShipBody:ShipBody:ShipEngine:groupParts12.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId18.id" "ShipBody:ShipBody:ShipEngine:groupParts12.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTorus1.out" "ShipBody:ShipBody:ShipEngine:groupParts13.ig"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId19.id" "ShipBody:ShipBody:ShipEngine:groupParts13.gi"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:defaultRenderLayer.msg" "ShipBody:ShipBody:ShipEngine:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ShipBody:ShipBody:polySurface9Shape.o" "ShipBody:ShipBody:polySeparate2.ip"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[0]" "ShipBody:ShipBody:groupParts27.ig"
		;
connectAttr "ShipBody:ShipBody:groupId37.id" "ShipBody:ShipBody:groupParts27.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[1]" "ShipBody:ShipBody:groupParts28.ig"
		;
connectAttr "ShipBody:ShipBody:groupId38.id" "ShipBody:ShipBody:groupParts28.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[2]" "ShipBody:ShipBody:groupParts29.ig"
		;
connectAttr "ShipBody:ShipBody:groupId39.id" "ShipBody:ShipBody:groupParts29.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[3]" "ShipBody:ShipBody:groupParts30.ig"
		;
connectAttr "ShipBody:ShipBody:groupId40.id" "ShipBody:ShipBody:groupParts30.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[4]" "ShipBody:ShipBody:groupParts31.ig"
		;
connectAttr "ShipBody:ShipBody:groupId41.id" "ShipBody:ShipBody:groupParts31.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[5]" "ShipBody:ShipBody:groupParts32.ig"
		;
connectAttr "ShipBody:ShipBody:groupId42.id" "ShipBody:ShipBody:groupParts32.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[6]" "ShipBody:ShipBody:groupParts33.ig"
		;
connectAttr "ShipBody:ShipBody:groupId43.id" "ShipBody:ShipBody:groupParts33.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[7]" "ShipBody:ShipBody:groupParts34.ig"
		;
connectAttr "ShipBody:ShipBody:groupId44.id" "ShipBody:ShipBody:groupParts34.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[8]" "ShipBody:ShipBody:groupParts35.ig"
		;
connectAttr "ShipBody:ShipBody:groupId45.id" "ShipBody:ShipBody:groupParts35.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[9]" "ShipBody:ShipBody:groupParts36.ig"
		;
connectAttr "ShipBody:ShipBody:groupId46.id" "ShipBody:ShipBody:groupParts36.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[10]" "ShipBody:ShipBody:groupParts37.ig"
		;
connectAttr "ShipBody:ShipBody:groupId47.id" "ShipBody:ShipBody:groupParts37.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[11]" "ShipBody:ShipBody:groupParts38.ig"
		;
connectAttr "ShipBody:ShipBody:groupId48.id" "ShipBody:ShipBody:groupParts38.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[12]" "ShipBody:ShipBody:groupParts39.ig"
		;
connectAttr "ShipBody:ShipBody:groupId49.id" "ShipBody:ShipBody:groupParts39.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate2.out[13]" "ShipBody:ShipBody:groupParts40.ig"
		;
connectAttr "ShipBody:ShipBody:groupId50.id" "ShipBody:ShipBody:groupParts40.gi"
		;
connectAttr "ShipBody:ShipBody:groupParts40.og" "ShipBody:ShipBody:deleteComponent4.ig"
		;
connectAttr "ShipBody:ShipBody:groupParts33.og" "ShipBody:ShipBody:deleteComponent5.ig"
		;
connectAttr "ShipBody:ShipBody:deleteComponent5.og" "ShipBody:ShipBody:deleteComponent6.ig"
		;
connectAttr "ShipBody:ShipBody:deleteComponent6.og" "ShipBody:ShipBody:deleteComponent7.ig"
		;
connectAttr "ShipBody:ShipBody:deleteComponent7.og" "ShipBody:ShipBody:deleteComponent8.ig"
		;
connectAttr "ShipBody:ShipBody:deleteComponent8.og" "ShipBody:ShipBody:deleteComponent9.ig"
		;
connectAttr "ShipBody:ShipBody:deleteComponent9.og" "ShipBody:ShipBody:deleteComponent10.ig"
		;
connectAttr "ShipBody:ShipBody:groupParts31.og" "ShipBody:ShipBody:deleteComponent11.ig"
		;
connectAttr "ShipBody:ShipBody:groupParts32.og" "ShipBody:ShipBody:deleteComponent12.ig"
		;
connectAttr "ShipBody:ShipBody:groupParts29.og" "ShipBody:ShipBody:deleteComponent13.ig"
		;
connectAttr "ShipBody:ShipBody:deleteComponent13.og" "ShipBody:ShipBody:deleteComponent14.ig"
		;
connectAttr "ShipBody:ShipBody:groupParts27.og" "ShipBody:ShipBody:deleteComponent15.ig"
		;
connectAttr "ShipBody:ShipBody:deleteComponent15.og" "ShipBody:ShipBody:deleteComponent16.ig"
		;
connectAttr "ShipBody:ShipBody:groupParts34.og" "ShipBody:ShipBody:deleteComponent17.ig"
		;
connectAttr "ShipBody:ShipBody:deleteComponent17.og" "ShipBody:ShipBody:deleteComponent18.ig"
		;
connectAttr "ShipBody:ShipBody:groupParts37.og" "ShipBody:ShipBody:deleteComponent19.ig"
		;
connectAttr "ShipBody:ShipBody:deleteComponent19.og" "ShipBody:ShipBody:deleteComponent20.ig"
		;
connectAttr "ShipBody:ShipBody:polyUnite10.out" "ShipBody:ShipBody:groupParts41.ig"
		;
connectAttr "ShipBody:ShipBody:groupId51.id" "ShipBody:ShipBody:groupParts41.gi"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape12.o" "ShipBody:ShipBody:polyUnite10.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape13.o" "ShipBody:ShipBody:polyUnite10.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape11.o" "ShipBody:ShipBody:polyUnite10.ip[2]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape14.o" "ShipBody:ShipBody:polyUnite10.ip[3]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape15.o" "ShipBody:ShipBody:polyUnite10.ip[4]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape8.o" "ShipBody:ShipBody:polyUnite10.ip[5]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape9.o" "ShipBody:ShipBody:polyUnite10.ip[6]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape10.o" "ShipBody:ShipBody:polyUnite10.ip[7]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape21.o" "ShipBody:ShipBody:polyUnite10.ip[8]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape20.o" "ShipBody:ShipBody:polyUnite10.ip[9]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape19.o" "ShipBody:ShipBody:polyUnite10.ip[10]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape17.o" "ShipBody:ShipBody:polyUnite10.ip[11]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape18.o" "ShipBody:ShipBody:polyUnite10.ip[12]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape12.wm" "ShipBody:ShipBody:polyUnite10.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape13.wm" "ShipBody:ShipBody:polyUnite10.im[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape11.wm" "ShipBody:ShipBody:polyUnite10.im[2]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape14.wm" "ShipBody:ShipBody:polyUnite10.im[3]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape15.wm" "ShipBody:ShipBody:polyUnite10.im[4]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape8.wm" "ShipBody:ShipBody:polyUnite10.im[5]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape9.wm" "ShipBody:ShipBody:polyUnite10.im[6]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape10.wm" "ShipBody:ShipBody:polyUnite10.im[7]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape21.wm" "ShipBody:ShipBody:polyUnite10.im[8]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape20.wm" "ShipBody:ShipBody:polyUnite10.im[9]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape19.wm" "ShipBody:ShipBody:polyUnite10.im[10]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape17.wm" "ShipBody:ShipBody:polyUnite10.im[11]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape18.wm" "ShipBody:ShipBody:polyUnite10.im[12]"
		;
connectAttr "ShipBody:ShipBody:polySurface14Shape.o" "ShipBody:ShipBody:polySeparate3.ip"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[0]" "ShipBody:ShipBody:groupParts42.ig"
		;
connectAttr "ShipBody:ShipBody:groupId52.id" "ShipBody:ShipBody:groupParts42.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[1]" "ShipBody:ShipBody:groupParts43.ig"
		;
connectAttr "ShipBody:ShipBody:groupId53.id" "ShipBody:ShipBody:groupParts43.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[2]" "ShipBody:ShipBody:groupParts44.ig"
		;
connectAttr "ShipBody:ShipBody:groupId54.id" "ShipBody:ShipBody:groupParts44.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[3]" "ShipBody:ShipBody:groupParts45.ig"
		;
connectAttr "ShipBody:ShipBody:groupId55.id" "ShipBody:ShipBody:groupParts45.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[4]" "ShipBody:ShipBody:groupParts46.ig"
		;
connectAttr "ShipBody:ShipBody:groupId56.id" "ShipBody:ShipBody:groupParts46.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[5]" "ShipBody:ShipBody:groupParts47.ig"
		;
connectAttr "ShipBody:ShipBody:groupId57.id" "ShipBody:ShipBody:groupParts47.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[6]" "ShipBody:ShipBody:groupParts48.ig"
		;
connectAttr "ShipBody:ShipBody:groupId58.id" "ShipBody:ShipBody:groupParts48.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[7]" "ShipBody:ShipBody:groupParts49.ig"
		;
connectAttr "ShipBody:ShipBody:groupId59.id" "ShipBody:ShipBody:groupParts49.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[8]" "ShipBody:ShipBody:groupParts50.ig"
		;
connectAttr "ShipBody:ShipBody:groupId60.id" "ShipBody:ShipBody:groupParts50.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[9]" "ShipBody:ShipBody:groupParts51.ig"
		;
connectAttr "ShipBody:ShipBody:groupId61.id" "ShipBody:ShipBody:groupParts51.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[10]" "ShipBody:ShipBody:groupParts52.ig"
		;
connectAttr "ShipBody:ShipBody:groupId62.id" "ShipBody:ShipBody:groupParts52.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[11]" "ShipBody:ShipBody:groupParts53.ig"
		;
connectAttr "ShipBody:ShipBody:groupId63.id" "ShipBody:ShipBody:groupParts53.gi"
		;
connectAttr "ShipBody:ShipBody:polySeparate3.out[12]" "ShipBody:ShipBody:groupParts54.ig"
		;
connectAttr "ShipBody:ShipBody:groupId64.id" "ShipBody:ShipBody:groupParts54.gi"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape34.o" "ShipBody:ShipBody:polyUnite11.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape32.o" "ShipBody:ShipBody:polyUnite11.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape31.o" "ShipBody:ShipBody:polyUnite11.ip[2]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape34.wm" "ShipBody:ShipBody:polyUnite11.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape32.wm" "ShipBody:ShipBody:polyUnite11.im[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape31.wm" "ShipBody:ShipBody:polyUnite11.im[2]"
		;
connectAttr "ShipBody:ShipBody:polyUnite11.out" "ShipBody:ShipBody:groupParts55.ig"
		;
connectAttr "ShipBody:ShipBody:groupId65.id" "ShipBody:ShipBody:groupParts55.gi"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape33.o" "ShipBody:ShipBody:polyUnite12.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape16.o" "ShipBody:ShipBody:polyUnite12.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape26.o" "ShipBody:ShipBody:polyUnite12.ip[2]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape33.wm" "ShipBody:ShipBody:polyUnite12.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape16.wm" "ShipBody:ShipBody:polyUnite12.im[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape26.wm" "ShipBody:ShipBody:polyUnite12.im[2]"
		;
connectAttr "ShipBody:ShipBody:polyUnite12.out" "ShipBody:ShipBody:groupParts56.ig"
		;
connectAttr "ShipBody:ShipBody:groupId66.id" "ShipBody:ShipBody:groupParts56.gi"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape24.o" "ShipBody:ShipBody:polyUnite13.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape29.o" "ShipBody:ShipBody:polyUnite13.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape24.wm" "ShipBody:ShipBody:polyUnite13.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape29.wm" "ShipBody:ShipBody:polyUnite13.im[1]"
		;
connectAttr "ShipBody:ShipBody:polyUnite13.out" "ShipBody:ShipBody:groupParts57.ig"
		;
connectAttr "ShipBody:ShipBody:groupId67.id" "ShipBody:ShipBody:groupParts57.gi"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape28.o" "ShipBody:ShipBody:polyUnite14.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape27.o" "ShipBody:ShipBody:polyUnite14.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape28.wm" "ShipBody:ShipBody:polyUnite14.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape27.wm" "ShipBody:ShipBody:polyUnite14.im[1]"
		;
connectAttr "ShipBody:ShipBody:polyUnite14.out" "ShipBody:ShipBody:groupParts58.ig"
		;
connectAttr "ShipBody:ShipBody:groupId68.id" "ShipBody:ShipBody:groupParts58.gi"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape25.o" "ShipBody:ShipBody:polyUnite15.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape23.o" "ShipBody:ShipBody:polyUnite15.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape22.o" "ShipBody:ShipBody:polyUnite15.ip[2]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape30.o" "ShipBody:ShipBody:polyUnite15.ip[3]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape25.wm" "ShipBody:ShipBody:polyUnite15.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape23.wm" "ShipBody:ShipBody:polyUnite15.im[1]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape22.wm" "ShipBody:ShipBody:polyUnite15.im[2]"
		;
connectAttr "ShipBody:ShipBody:polySurfaceShape30.wm" "ShipBody:ShipBody:polyUnite15.im[3]"
		;
connectAttr "ShipBody:ShipBody:polyUnite15.out" "ShipBody:ShipBody:groupParts59.ig"
		;
connectAttr "ShipBody:ShipBody:groupId69.id" "ShipBody:ShipBody:groupParts59.gi"
		;
connectAttr "|ShipBody:ShipBody:polySurface27|ShipBody:ShipBody:transform59|ShipBody:ShipBody:polySurface27Shape.o" "ShipBody:ShipBody:polyUnite16.ip[0]"
		;
connectAttr "ShipBody:ShipBody:polySurface30Shape.o" "ShipBody:ShipBody:polyUnite16.ip[1]"
		;
connectAttr "ShipBody:ShipBody:polySurface26Shape.o" "ShipBody:ShipBody:polyUnite16.ip[2]"
		;
connectAttr "ShipBody:ShipBody:polySurface36Shape.o" "ShipBody:ShipBody:polyUnite16.ip[3]"
		;
connectAttr "ShipBody:ShipBody:polySurface35Shape.o" "ShipBody:ShipBody:polyUnite16.ip[4]"
		;
connectAttr "|ShipBody:ShipBody:polySurface27|ShipBody:ShipBody:transform59|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyUnite16.im[0]"
		;
connectAttr "ShipBody:ShipBody:polySurface30Shape.wm" "ShipBody:ShipBody:polyUnite16.im[1]"
		;
connectAttr "ShipBody:ShipBody:polySurface26Shape.wm" "ShipBody:ShipBody:polyUnite16.im[2]"
		;
connectAttr "ShipBody:ShipBody:polySurface36Shape.wm" "ShipBody:ShipBody:polyUnite16.im[3]"
		;
connectAttr "ShipBody:ShipBody:polySurface35Shape.wm" "ShipBody:ShipBody:polyUnite16.im[4]"
		;
connectAttr "ShipBody:ShipBody:polyUnite16.out" "ShipBody:ShipBody:polyAutoProj2.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyAutoProj2.mp"
		;
connectAttr "ShipBody:ShipBody:polyAutoProj2.out" "ShipBody:ShipBody:polyTweakUV9.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV9.out" "ShipBody:ShipBody:polyFlipUV9.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV9.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV9.out" "ShipBody:ShipBody:polyTweakUV10.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV10.out" "ShipBody:ShipBody:polyFlipUV10.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV10.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV10.out" "ShipBody:ShipBody:polyTweakUV11.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV11.out" "ShipBody:ShipBody:polyFlipUV11.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV11.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV11.out" "ShipBody:ShipBody:polyFlipUV12.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV12.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV12.out" "ShipBody:ShipBody:polyFlipUV13.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV13.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV13.out" "ShipBody:ShipBody:polyTweakUV12.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV12.out" "ShipBody:ShipBody:polyFlipUV14.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV14.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV14.out" "ShipBody:ShipBody:polyFlipUV15.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV15.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV15.out" "ShipBody:ShipBody:polyTweakUV13.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV13.out" "ShipBody:ShipBody:polyFlipUV16.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV16.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV16.out" "ShipBody:ShipBody:polyTweakUV14.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV14.out" "ShipBody:ShipBody:polyFlipUV17.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV17.mp"
		;
connectAttr "ShipBody:ShipBody:polyTweak13.out" "ShipBody:ShipBody:polyAutoProj3.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyAutoProj3.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV17.out" "ShipBody:ShipBody:polyTweak13.ip"
		;
connectAttr "ShipBody:ShipBody:polyAutoProj3.out" "ShipBody:ShipBody:polyTweakUV15.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV15.out" "ShipBody:ShipBody:polyFlipUV18.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV18.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV18.out" "ShipBody:ShipBody:polyFlipUV19.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV19.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV19.out" "ShipBody:ShipBody:polyTweakUV16.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV16.out" "ShipBody:ShipBody:polyFlipUV20.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV20.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV20.out" "ShipBody:ShipBody:polyTweakUV17.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV17.out" "ShipBody:ShipBody:polyFlipUV21.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV21.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV21.out" "ShipBody:ShipBody:polyTweakUV18.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV18.out" "ShipBody:ShipBody:polyFlipUV22.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV22.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV22.out" "ShipBody:ShipBody:polyTweakUV19.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV19.out" "ShipBody:ShipBody:polyFlipUV23.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV23.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV23.out" "ShipBody:ShipBody:polyTweakUV20.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV20.out" "ShipBody:ShipBody:polyFlipUV24.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV24.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV24.out" "ShipBody:ShipBody:polyTweakUV21.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV21.out" "ShipBody:ShipBody:polyFlipUV25.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV25.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV25.out" "ShipBody:ShipBody:polyFlipUV26.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV26.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV26.out" "ShipBody:ShipBody:polyTweakUV22.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV22.out" "ShipBody:ShipBody:polyFlipUV27.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV27.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV27.out" "ShipBody:ShipBody:polyTweakUV23.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV23.out" "ShipBody:ShipBody:polyFlipUV28.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV28.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV28.out" "ShipBody:ShipBody:polyTweakUV24.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV24.out" "ShipBody:ShipBody:polyFlipUV29.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV29.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV29.out" "ShipBody:ShipBody:polyTweakUV25.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV25.out" "ShipBody:ShipBody:polyFlipUV30.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV30.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV30.out" "ShipBody:ShipBody:polyTweakUV26.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV26.out" "ShipBody:ShipBody:polyFlipUV31.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV31.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV31.out" "ShipBody:ShipBody:polyTweakUV27.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV27.out" "ShipBody:ShipBody:polyFlipUV32.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV32.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV32.out" "ShipBody:ShipBody:polyTweakUV28.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV28.out" "ShipBody:ShipBody:polyFlipUV33.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV33.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV33.out" "ShipBody:ShipBody:polyTweakUV29.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV29.out" "ShipBody:ShipBody:polyFlipUV34.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV34.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV34.out" "ShipBody:ShipBody:polyFlipUV35.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV35.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV35.out" "ShipBody:ShipBody:polyTweakUV30.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV30.out" "ShipBody:ShipBody:polyFlipUV36.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV36.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV36.out" "ShipBody:ShipBody:polyFlipUV37.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV37.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV37.out" "ShipBody:ShipBody:polyTweakUV31.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV31.out" "ShipBody:ShipBody:polyFlipUV38.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV38.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV38.out" "ShipBody:ShipBody:polyTweakUV32.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV32.out" "ShipBody:ShipBody:polyFlipUV39.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV39.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV39.out" "ShipBody:ShipBody:polyTweakUV33.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV33.out" "ShipBody:ShipBody:polyFlipUV40.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV40.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV40.out" "ShipBody:ShipBody:polyFlipUV41.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV41.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV41.out" "ShipBody:ShipBody:polyTweakUV34.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV34.out" "ShipBody:ShipBody:polyFlipUV42.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV42.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV42.out" "ShipBody:ShipBody:polyTweakUV35.ip"
		;
connectAttr "ShipBody:ShipBody:polyTweakUV35.out" "ShipBody:ShipBody:polyFlipUV43.ip"
		;
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.wm" "ShipBody:ShipBody:polyFlipUV43.mp"
		;
connectAttr "ShipBody:ShipBody:polyFlipUV43.out" "ShipBody:ShipBody:polyTweakUV36.ip"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform3.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySeparate1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTorus1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyUnite4.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCone1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak12.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyExtrudeFace1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit43.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit42.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit41.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit40.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak11.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit39.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak10.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit38.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit37.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit36.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit35.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak9.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyMirror2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit34.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak8.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit33.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube5.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube4.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit32.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyUnite2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit29.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit31.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit30.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit28.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak7.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit27.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak6.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit26.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit25.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit9.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit10.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit13.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit11.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit12.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit20.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit21.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak5.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit22.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit23.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube3.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit24.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyUnite1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyMirror1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit19.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak4.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit18.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak3.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit17.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit16.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit15.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit14.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "ShipBody:ShipBody:defaultRenderLayer.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pConeShape1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCone2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform11.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pTorus1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pTorusShape1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform8.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape5.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCone1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform6.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube7.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape4.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform7.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube6.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube5Shape.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform5.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube5.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube4Shape.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform4.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube4.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape3.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube3.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit4.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit3.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit7.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit5.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit8.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySplit6.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyCube1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polyTweak1.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:defaultRenderLayer.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:pCone2Shape.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform9.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySurfaceShape2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:transform10.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "ShipBody:ShipBody:ShipEngine:polySurface2.msg" "ShipBody:ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "ShipBody:file2.oc" "ShipBody:phong1.c";
connectAttr "ShipBody:phong1.oc" "ShipBody:phong1SG.ss";
connectAttr "|ShipBody:ShipBody:polySurface37|ShipBody:ShipBody:polySurface27Shape.iog" "ShipBody:phong1SG.dsm"
		 -na;
connectAttr "ShipBody:phong1SG.msg" "ShipBody:materialInfo1.sg";
connectAttr "ShipBody:phong1.msg" "ShipBody:materialInfo1.m";
connectAttr "ShipBody:file2.msg" "ShipBody:materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "ShipBody:file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ShipBody:file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ShipBody:file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ShipBody:file1.ws";
connectAttr "ShipBody:place2dTexture1.c" "ShipBody:file1.c";
connectAttr "ShipBody:place2dTexture1.tf" "ShipBody:file1.tf";
connectAttr "ShipBody:place2dTexture1.rf" "ShipBody:file1.rf";
connectAttr "ShipBody:place2dTexture1.mu" "ShipBody:file1.mu";
connectAttr "ShipBody:place2dTexture1.mv" "ShipBody:file1.mv";
connectAttr "ShipBody:place2dTexture1.s" "ShipBody:file1.s";
connectAttr "ShipBody:place2dTexture1.wu" "ShipBody:file1.wu";
connectAttr "ShipBody:place2dTexture1.wv" "ShipBody:file1.wv";
connectAttr "ShipBody:place2dTexture1.re" "ShipBody:file1.re";
connectAttr "ShipBody:place2dTexture1.of" "ShipBody:file1.of";
connectAttr "ShipBody:place2dTexture1.r" "ShipBody:file1.ro";
connectAttr "ShipBody:place2dTexture1.n" "ShipBody:file1.n";
connectAttr "ShipBody:place2dTexture1.vt1" "ShipBody:file1.vt1";
connectAttr "ShipBody:place2dTexture1.vt2" "ShipBody:file1.vt2";
connectAttr "ShipBody:place2dTexture1.vt3" "ShipBody:file1.vt3";
connectAttr "ShipBody:place2dTexture1.vc1" "ShipBody:file1.vc1";
connectAttr "ShipBody:place2dTexture1.o" "ShipBody:file1.uv";
connectAttr "ShipBody:place2dTexture1.ofs" "ShipBody:file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "ShipBody:file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ShipBody:file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ShipBody:file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ShipBody:file2.ws";
connectAttr "ShipBody:place2dTexture2.c" "ShipBody:file2.c";
connectAttr "ShipBody:place2dTexture2.tf" "ShipBody:file2.tf";
connectAttr "ShipBody:place2dTexture2.rf" "ShipBody:file2.rf";
connectAttr "ShipBody:place2dTexture2.mu" "ShipBody:file2.mu";
connectAttr "ShipBody:place2dTexture2.mv" "ShipBody:file2.mv";
connectAttr "ShipBody:place2dTexture2.s" "ShipBody:file2.s";
connectAttr "ShipBody:place2dTexture2.wu" "ShipBody:file2.wu";
connectAttr "ShipBody:place2dTexture2.wv" "ShipBody:file2.wv";
connectAttr "ShipBody:place2dTexture2.re" "ShipBody:file2.re";
connectAttr "ShipBody:place2dTexture2.of" "ShipBody:file2.of";
connectAttr "ShipBody:place2dTexture2.r" "ShipBody:file2.ro";
connectAttr "ShipBody:place2dTexture2.n" "ShipBody:file2.n";
connectAttr "ShipBody:place2dTexture2.vt1" "ShipBody:file2.vt1";
connectAttr "ShipBody:place2dTexture2.vt2" "ShipBody:file2.vt2";
connectAttr "ShipBody:place2dTexture2.vt3" "ShipBody:file2.vt3";
connectAttr "ShipBody:place2dTexture2.vc1" "ShipBody:file2.vc1";
connectAttr "ShipBody:place2dTexture2.o" "ShipBody:file2.uv";
connectAttr "ShipBody:place2dTexture2.ofs" "ShipBody:file2.fs";
connectAttr "ShipBody:phong1SG.msg" "ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ShipBody:place2dTexture2.msg" "ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ShipBody:file2.msg" "ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "ShipBody:place2dTexture1.msg" "ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "ShipBody:file1.msg" "ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "ShipBody:defaultRenderLayer.msg" "ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "ShipBody:phong1.msg" "ShipBody:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "polyTweakUV31.out" "polyTriangulate1.ip";
connectAttr "ShipBody:ShipBody:polyTweakUV36.out" "polyTriangulate2.ip";
connectAttr "defaultRenderLayer.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "phong1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "phong1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "ShipBody:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "ShipBody:phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ShipBody:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ShipBody:place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ShipBody:defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ShipBody:ShipBody:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ShipBody:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ShipBody:file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCone2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "ShipBody:ShipBody:pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCube5Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCube8Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pConeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pConeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pCube10Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurface5Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ShipBody:ShipBody:polySurface4|ShipBody:ShipBody:transform23|ShipBody:ShipBody:polySurface4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurface1Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ShipBody:ShipBody:polySurface8|ShipBody:ShipBody:transform25|ShipBody:ShipBody:polySurface4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pConeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:pConeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurface9Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCube5Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pConeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pConeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pCone2Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pTorusShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:pTorusShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurface14Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurface36Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurface35Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurface26Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ShipBody:ShipBody:polySurface30Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ShipBody:ShipBody:polySurface27|ShipBody:ShipBody:transform59|ShipBody:ShipBody:polySurface27Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId1.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId2.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId3.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId4.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId5.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId6.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId7.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId8.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId9.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId10.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId12.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId13.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId14.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId15.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId16.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId18.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId19.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:ShipEngine:groupId20.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "ShipBody:ShipBody:groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "ShipBody:ShipBody:groupId69.msg" ":initialShadingGroup.gn" -na;
// End of Ship.ma
