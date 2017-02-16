//Maya ASCII 2017 scene
//Name: EnemyShip.ma
//Last modified: Thu, Feb 16, 2017 10:55:54 AM
//Codeset: 1252
requires maya "2017";
requires -nodeType "renderSetup" "renderSetup.py" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -n "pCube1";
	rename -uid "E9576AB3-40E9-BFDD-2D47-B3856AA2CC53";
	setAttr ".t" -type "double3" -7.6307441784354459 5.2687468242969739 0 ;
	setAttr ".s" -type "double3" 58.774816500042022 10 10 ;
createNode transform -n "transform1" -p "pCube1";
	rename -uid "6623958F-40FE-6C3A-C72B-348DDA464CB8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	rename -uid "CD1D1845-4321-673E-241F-8BB4D040955C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.20510371029376984 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus1";
	rename -uid "9B3DAFC2-49BA-BE85-E605-F895EA8CCC86";
	setAttr ".t" -type "double3" 3.7356299049617094 5.7236816266489745 -18.661163873468563 ;
	setAttr ".s" -type "double3" 3 3 3 ;
createNode transform -n "transform2" -p "pTorus1";
	rename -uid "7D3CFBA8-40B3-87E5-A21C-E08883730931";
	setAttr ".v" no;
createNode mesh -n "pTorusShape1" -p "transform2";
	rename -uid "BDA178C0-4E26-CDCC-228A-E5B6FF51F3C7";
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
createNode transform -n "group";
	rename -uid "F9A213D8-481A-4815-B699-B98D2EA664E1";
	setAttr ".t" -type "double3" 0 0 31.486290211414776 ;
	setAttr ".s" -type "double3" 3 3 3 ;
	setAttr ".rp" -type "double3" 3.7356297261477751 5.7236815372420073 -15.708162562501791 ;
	setAttr ".sp" -type "double3" 3.7356297261477751 5.7236815372420073 -15.708162562501791 ;
createNode transform -n "pasted__pTorus1" -p "group";
	rename -uid "90168677-4259-816D-3CDE-E59CD6A03F6B";
	setAttr ".t" -type "double3" 3.7356299049617103 5.7236816266489745 -14.799003478873752 ;
createNode transform -n "transform4" -p "|group|pasted__pTorus1";
	rename -uid "137F2232-4D78-5D72-4BD8-D88938C08D38";
	setAttr ".v" no;
createNode mesh -n "pasted__pTorusShape1" -p "transform4";
	rename -uid "5724CFE4-402B-8C7A-A085-65B7E450CF6B";
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
	rename -uid "F049F53F-4CBB-9CAF-C2AB-77AB5EE3A7A4";
	setAttr ".rp" -type "double3" -7.6307441784354477 5.2567209911670911 -4.421164128678404 ;
	setAttr ".sp" -type "double3" -7.6307441784354477 5.2567209911670911 -4.421164128678404 ;
createNode transform -n "transform3" -p "pTorus2";
	rename -uid "9F4FB0ED-4AA1-9A96-C569-33BCEB3B0D0C";
	setAttr ".v" no;
createNode mesh -n "pTorus2Shape" -p "transform3";
	rename -uid "E6B42212-4709-230F-B1C5-DDB92B33D008";
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
createNode transform -n "pasted__pTorus1";
	rename -uid "550023FE-40B4-FBFC-C52B-838723A324E8";
	setAttr ".rp" -type "double3" -7.6307430267333984 5.2567207813262939 -0.077779632373026431 ;
	setAttr ".sp" -type "double3" -7.6307430267333984 5.2567207813262939 -0.077779632373026431 ;
createNode transform -n "polySurface1" -p "|pasted__pTorus1";
	rename -uid "BDE398B3-428F-4FD9-ADA8-D9A0E38B2039";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" 3.7274431851831356 5.506161346666957 18.558330142809886 ;
	setAttr ".sp" -type "double3" 3.7274431851831356 5.506161346666957 18.558330142809886 ;
createNode transform -n "transform9" -p "|pasted__pTorus1|polySurface1";
	rename -uid "5ABC46D3-49CF-55B1-7CBE-A2AAA5346654";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform9";
	rename -uid "9B25CA77-4514-E921-262B-EC8953DBCE07";
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
createNode transform -n "polySurface2" -p "|pasted__pTorus1";
	rename -uid "05159B47-4B2A-3C67-03BC-F588554CDF4D";
	setAttr ".t" -type "double3" 9.4886446817689016 1.5992292745776453 0.096335062777392011 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" 3.5528551614813222 5.7325940812300651 -18.717653725059538 ;
	setAttr ".rpt" -type "double3" -9.2854492427113335 -2.1797389197486732 0 ;
	setAttr ".sp" -type "double3" 3.5528551614813222 5.7325940812300651 -18.717653725059538 ;
createNode transform -n "transform7" -p "|pasted__pTorus1|polySurface2";
	rename -uid "B45EA53F-4095-EE84-56C6-70AB6956BAE1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform7";
	rename -uid "1E213A99-4BCF-B9B3-7828-05A6D0CDCD85";
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
createNode transform -n "polySurface3" -p "|pasted__pTorus1";
	rename -uid "0728E15E-4A4A-B1DC-4E81-D486FA8BFC8E";
createNode transform -n "transform6" -p "polySurface3";
	rename -uid "F61A45DC-4689-FC7C-61FC-E0B803A6D04B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform6";
	rename -uid "B1BE1260-401E-BC50-0F28-0FA14BF1CA03";
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
createNode transform -n "transform5" -p "|pasted__pTorus1";
	rename -uid "6DDA9F70-44FB-B7B4-7486-52B37B4798DC";
	setAttr ".v" no;
createNode mesh -n "pasted__pTorus1Shape" -p "transform5";
	rename -uid "49FC7093-4CA5-3745-D0BB-9AA90BFBD1AC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[856:859]" -type "float3"  0 1.3975621 0 0 1.3975621 
		0 0 -1.5446337 0 0 -1.5446337 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface2";
	rename -uid "69E71B81-4A63-9BBC-AA16-5FA9723966E2";
	setAttr ".rp" -type "double3" -5.1307430267333984 5.2567207813262939 -4.3729960275712649 ;
	setAttr ".sp" -type "double3" -5.1307430267333984 5.2567207813262939 -4.3729960275712649 ;
createNode transform -n "transform8" -p "|polySurface2";
	rename -uid "2E1EB168-4E5F-71C4-F9BE-84815C84A35D";
	setAttr ".v" no;
createNode mesh -n "polySurface2Shape" -p "transform8";
	rename -uid "E6F93070-49A5-FE54-EA13-16BC64B7196D";
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
createNode transform -n "polySurface1";
	rename -uid "D9C01A74-463E-A0FD-47C3-969CA1C1E9DE";
	setAttr ".rp" -type "double3" -5.1307430267333984 5.2567207813262939 -0.029611587524414063 ;
	setAttr ".sp" -type "double3" -5.1307430267333984 5.2567207813262939 -0.029611587524414063 ;
createNode transform -n "transform10" -p "|polySurface1";
	rename -uid "87E19DB3-4A8D-23CC-BBFC-0580CCDF6F29";
	setAttr ".v" no;
createNode mesh -n "polySurface1Shape" -p "transform10";
	rename -uid "53CCC67E-4119-C97D-4B34-C1BE3EF0A797";
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
createNode transform -n "pPipe1";
	rename -uid "4FAF4DE0-4B2E-66CF-34E6-C3999A9F177C";
	setAttr ".t" -type "double3" 4.7485243781423572 7.6417388115604421 -6.971699706900325 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 14.65876201516434 1 ;
createNode transform -n "transform13" -p "pPipe1";
	rename -uid "E1F9AF07-4BAE-81CA-DC95-98B082C16194";
	setAttr ".v" no;
createNode mesh -n "pPipeShape1" -p "transform13";
	rename -uid "7A630E82-4C16-087F-C73C-A5A6802DB65F";
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
createNode transform -n "pPipe2";
	rename -uid "88AB87E7-473C-2716-979A-84B8AA6177D8";
	setAttr ".t" -type "double3" 4.7485243781423572 7.6417388115604421 6.9615816069622767 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 14.65876201516434 1 ;
createNode transform -n "transform11" -p "pPipe2";
	rename -uid "557803AD-4DFC-4E6F-82D7-1183E50C7F86";
	setAttr ".v" no;
createNode mesh -n "pPipeShape2" -p "transform11";
	rename -uid "C6A5FD32-4DC3-1C51-6342-6F9E79CA8A8C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:79]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0 1 0.050000001 1
		 0.1 1 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005
		 1 0.50000006 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013
		 1 0.85000014 1 0.90000015 1 0.95000017 1 1.000000119209 1 0 0.75 0.050000001 0.75
		 0.1 0.75 0.15000001 0.75 0.2 0.75 0.25 0.75 0.30000001 0.75 0.35000002 0.75 0.40000004
		 0.75 0.45000005 0.75 0.50000006 0.75 0.55000007 0.75 0.60000008 0.75 0.6500001 0.75
		 0.70000011 0.75 0.75000012 0.75 0.80000013 0.75 0.85000014 0.75 0.90000015 0.75 0.95000017
		 0.75 1.000000119209 0.75 0 0.5 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25
		 0.5 0.30000001 0.5 0.35000002 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0.55000007
		 0.5 0.60000008 0.5 0.6500001 0.5 0.70000011 0.5 0.75000012 0.5 0.80000013 0.5 0.85000014
		 0.5 0.90000015 0.5 0.95000017 0.5 1.000000119209 0.5 0 0.25 0.050000001 0.25 0.1
		 0.25 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004
		 0.25 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25
		 0.70000011 0.25 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017
		 0.25 1.000000119209 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001
		 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001
		 0 0.70000011 0 0.75000012 0 0.80000013 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  0.5 -0.5 -1.110223e-016 0.47552827 -0.5 -0.1545085
		 0.4045085 -0.5 -0.29389265 0.29389262 -0.5 -0.40450853 0.15450849 -0.5 -0.4755283
		 -1.4901161e-008 -0.5 -0.50000006 -0.15450853 -0.5 -0.47552833 -0.29389268 -0.5 -0.40450856
		 -0.40450859 -0.5 -0.29389268 -0.47552839 -0.5 -0.15450853 -0.50000012 -0.5 -1.110223e-016
		 -0.47552839 -0.5 0.15450853 -0.40450862 -0.5 0.29389271 -0.29389274 -0.5 0.40450865
		 -0.15450858 -0.5 0.47552848 0 -0.5 0.50000024 0.15450858 -0.5 0.47552851 0.2938928 -0.5 0.40450874
		 0.40450877 -0.5 0.2938928 0.47552857 -0.5 0.15450859 0.5 0.5 1.110223e-016 0.47552827 0.5 -0.1545085
		 0.4045085 0.5 -0.29389265 0.29389262 0.5 -0.40450853 0.15450849 0.5 -0.4755283 -1.4901161e-008 0.5 -0.50000006
		 -0.15450853 0.5 -0.47552833 -0.29389268 0.5 -0.40450856 -0.40450859 0.5 -0.29389268
		 -0.47552839 0.5 -0.15450853 -0.50000012 0.5 1.110223e-016 -0.47552839 0.5 0.15450853
		 -0.40450862 0.5 0.29389271 -0.29389274 0.5 0.40450865 -0.15450858 0.5 0.47552848
		 0 0.5 0.50000024 0.15450858 0.5 0.47552851 0.2938928 0.5 0.40450874 0.40450877 0.5 0.2938928
		 0.47552857 0.5 0.15450859 1 0.5 1.110223e-016 0.95105654 0.5 -0.309017 0.809017 0.5 -0.5877853
		 0.58778524 0.5 -0.80901706 0.30901697 0.5 -0.9510566 -2.9802322e-008 0.5 -1.000000119209
		 -0.30901706 0.5 -0.95105666 -0.58778536 0.5 -0.80901712 -0.80901718 0.5 -0.58778536
		 -0.95105678 0.5 -0.30901706 -1.000000238419 0.5 1.110223e-016 -0.95105678 0.5 0.30901706
		 -0.80901724 0.5 0.58778542 -0.58778548 0.5 0.8090173 -0.30901715 0.5 0.95105696 0 0.5 1.000000476837
		 0.30901715 0.5 0.95105702 0.5877856 0.5 0.80901748 0.80901754 0.5 0.5877856 0.95105714 0.5 0.30901718
		 1 -0.5 -1.110223e-016 0.95105654 -0.5 -0.309017 0.809017 -0.5 -0.5877853 0.58778524 -0.5 -0.80901706
		 0.30901697 -0.5 -0.9510566 -2.9802322e-008 -0.5 -1.000000119209 -0.30901706 -0.5 -0.95105666
		 -0.58778536 -0.5 -0.80901712 -0.80901718 -0.5 -0.58778536 -0.95105678 -0.5 -0.30901706
		 -1.000000238419 -0.5 -1.110223e-016 -0.95105678 -0.5 0.30901706 -0.80901724 -0.5 0.58778542
		 -0.58778548 -0.5 0.8090173 -0.30901715 -0.5 0.95105696 0 -0.5 1.000000476837 0.30901715 -0.5 0.95105702
		 0.5877856 -0.5 0.80901748 0.80901754 -0.5 0.5877856 0.95105714 -0.5 0.30901718;
	setAttr -s 160 ".ed[0:159]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0 60 61 0 61 62 0
		 62 63 0 63 64 0 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0
		 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0 78 79 0 79 60 0 0 20 1 1 21 1 2 22 1 3 23 1
		 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1 14 34 1
		 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1 25 45 1
		 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1 36 56 1
		 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1 47 67 1
		 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1
		 59 79 1 60 0 1 61 1 1 62 2 1 63 3 1 64 4 1 65 5 1 66 6 1 67 7 1 68 8 1 69 9 1 70 10 1
		 71 11 1 72 12 1 73 13 1 74 14 1 75 15 1 76 16 1 77 17 1 78 18 1 79 19 1;
	setAttr -s 80 -ch 320 ".fc[0:79]" -type "polyFaces" 
		f 4 -1 80 20 -82
		mu 0 4 1 0 21 22
		f 4 -2 81 21 -83
		mu 0 4 2 1 22 23
		f 4 -3 82 22 -84
		mu 0 4 3 2 23 24
		f 4 -4 83 23 -85
		mu 0 4 4 3 24 25
		f 4 -5 84 24 -86
		mu 0 4 5 4 25 26
		f 4 -6 85 25 -87
		mu 0 4 6 5 26 27
		f 4 -7 86 26 -88
		mu 0 4 7 6 27 28
		f 4 -8 87 27 -89
		mu 0 4 8 7 28 29
		f 4 -9 88 28 -90
		mu 0 4 9 8 29 30
		f 4 -10 89 29 -91
		mu 0 4 10 9 30 31
		f 4 -11 90 30 -92
		mu 0 4 11 10 31 32
		f 4 -12 91 31 -93
		mu 0 4 12 11 32 33
		f 4 -13 92 32 -94
		mu 0 4 13 12 33 34
		f 4 -14 93 33 -95
		mu 0 4 14 13 34 35
		f 4 -15 94 34 -96
		mu 0 4 15 14 35 36
		f 4 -16 95 35 -97
		mu 0 4 16 15 36 37
		f 4 -17 96 36 -98
		mu 0 4 17 16 37 38
		f 4 -18 97 37 -99
		mu 0 4 18 17 38 39
		f 4 -19 98 38 -100
		mu 0 4 19 18 39 40
		f 4 -20 99 39 -81
		mu 0 4 20 19 40 41
		f 4 -21 100 40 -102
		mu 0 4 22 21 42 43
		f 4 -22 101 41 -103
		mu 0 4 23 22 43 44
		f 4 -23 102 42 -104
		mu 0 4 24 23 44 45
		f 4 -24 103 43 -105
		mu 0 4 25 24 45 46
		f 4 -25 104 44 -106
		mu 0 4 26 25 46 47
		f 4 -26 105 45 -107
		mu 0 4 27 26 47 48
		f 4 -27 106 46 -108
		mu 0 4 28 27 48 49
		f 4 -28 107 47 -109
		mu 0 4 29 28 49 50
		f 4 -29 108 48 -110
		mu 0 4 30 29 50 51
		f 4 -30 109 49 -111
		mu 0 4 31 30 51 52
		f 4 -31 110 50 -112
		mu 0 4 32 31 52 53
		f 4 -32 111 51 -113
		mu 0 4 33 32 53 54
		f 4 -33 112 52 -114
		mu 0 4 34 33 54 55
		f 4 -34 113 53 -115
		mu 0 4 35 34 55 56
		f 4 -35 114 54 -116
		mu 0 4 36 35 56 57
		f 4 -36 115 55 -117
		mu 0 4 37 36 57 58
		f 4 -37 116 56 -118
		mu 0 4 38 37 58 59
		f 4 -38 117 57 -119
		mu 0 4 39 38 59 60
		f 4 -39 118 58 -120
		mu 0 4 40 39 60 61
		f 4 -40 119 59 -101
		mu 0 4 41 40 61 62
		f 4 -41 120 60 -122
		mu 0 4 43 42 63 64
		f 4 -42 121 61 -123
		mu 0 4 44 43 64 65
		f 4 -43 122 62 -124
		mu 0 4 45 44 65 66
		f 4 -44 123 63 -125
		mu 0 4 46 45 66 67
		f 4 -45 124 64 -126
		mu 0 4 47 46 67 68
		f 4 -46 125 65 -127
		mu 0 4 48 47 68 69
		f 4 -47 126 66 -128
		mu 0 4 49 48 69 70
		f 4 -48 127 67 -129
		mu 0 4 50 49 70 71
		f 4 -49 128 68 -130
		mu 0 4 51 50 71 72
		f 4 -50 129 69 -131
		mu 0 4 52 51 72 73
		f 4 -51 130 70 -132
		mu 0 4 53 52 73 74
		f 4 -52 131 71 -133
		mu 0 4 54 53 74 75
		f 4 -53 132 72 -134
		mu 0 4 55 54 75 76
		f 4 -54 133 73 -135
		mu 0 4 56 55 76 77
		f 4 -55 134 74 -136
		mu 0 4 57 56 77 78
		f 4 -56 135 75 -137
		mu 0 4 58 57 78 79
		f 4 -57 136 76 -138
		mu 0 4 59 58 79 80
		f 4 -58 137 77 -139
		mu 0 4 60 59 80 81
		f 4 -59 138 78 -140
		mu 0 4 61 60 81 82
		f 4 -60 139 79 -121
		mu 0 4 62 61 82 83
		f 4 -61 140 0 -142
		mu 0 4 64 63 84 85
		f 4 -62 141 1 -143
		mu 0 4 65 64 85 86
		f 4 -63 142 2 -144
		mu 0 4 66 65 86 87
		f 4 -64 143 3 -145
		mu 0 4 67 66 87 88
		f 4 -65 144 4 -146
		mu 0 4 68 67 88 89
		f 4 -66 145 5 -147
		mu 0 4 69 68 89 90
		f 4 -67 146 6 -148
		mu 0 4 70 69 90 91
		f 4 -68 147 7 -149
		mu 0 4 71 70 91 92
		f 4 -69 148 8 -150
		mu 0 4 72 71 92 93
		f 4 -70 149 9 -151
		mu 0 4 73 72 93 94
		f 4 -71 150 10 -152
		mu 0 4 74 73 94 95
		f 4 -72 151 11 -153
		mu 0 4 75 74 95 96
		f 4 -73 152 12 -154
		mu 0 4 76 75 96 97
		f 4 -74 153 13 -155
		mu 0 4 77 76 97 98
		f 4 -75 154 14 -156
		mu 0 4 78 77 98 99
		f 4 -76 155 15 -157
		mu 0 4 79 78 99 100
		f 4 -77 156 16 -158
		mu 0 4 80 79 100 101
		f 4 -78 157 17 -159
		mu 0 4 81 80 101 102
		f 4 -79 158 18 -160
		mu 0 4 82 81 102 103
		f 4 -80 159 19 -141
		mu 0 4 83 82 103 104;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe3";
	rename -uid "84047714-47B0-CF78-BE69-4BBAF84A3669";
	setAttr ".rp" -type "double3" -5.1307430267333984 5.2567207813262939 -0.029611587524414063 ;
	setAttr ".sp" -type "double3" -5.1307430267333984 5.2567207813262939 -0.029611587524414063 ;
createNode transform -n "transform12" -p "pPipe3";
	rename -uid "5E44615E-4A62-CB84-67AF-F2A6207AAF82";
	setAttr ".v" no;
createNode mesh -n "pPipe3Shape" -p "transform12";
	rename -uid "F05D74BE-4161-87F4-E630-E2BA2755C091";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe4";
	rename -uid "6F78FDD6-46FE-5CE0-7A7D-8687329DE3E8";
	setAttr ".rp" -type "double3" -5.1307430267333984 5.2567207813262939 -0.029611587524414063 ;
	setAttr ".sp" -type "double3" -5.1307430267333984 5.2567207813262939 -0.029611587524414063 ;
createNode transform -n "transform14" -p "pPipe4";
	rename -uid "A2D93B6B-4205-0EFB-3FB1-E9BD8616285E";
	setAttr ".v" no;
createNode mesh -n "pPipe4Shape" -p "transform14";
	rename -uid "7CB015AD-45CD-7116-3427-72819EA0F9B6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe5";
	rename -uid "27B88F92-4F64-9A43-E142-6788CA6BB1E7";
	setAttr ".t" -type "double3" 4.7694170033404131 3.6592137687165929 -6.9816004928220705 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 14.673333677840779 1 ;
createNode transform -n "transform17" -p "pPipe5";
	rename -uid "49200B0A-49D8-9D1E-048F-829E6870B244";
	setAttr ".v" no;
createNode mesh -n "pPipeShape3" -p "transform17";
	rename -uid "DC0C4447-47C4-3EA5-5F7C-B293A310FCA8";
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
createNode transform -n "pPipe6";
	rename -uid "4AA44152-4AFE-2AFA-2B8E-00928B6F5F72";
	setAttr ".t" -type "double3" 4.7257357668388282 3.5473303896440056 7.0880123448964554 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 14.673333677840779 1 ;
createNode transform -n "transform15" -p "pPipe6";
	rename -uid "D4C635E9-4F7A-95D4-C18F-99B7FB5A09FE";
	setAttr ".v" no;
createNode mesh -n "pPipeShape6" -p "transform15";
	rename -uid "D22ACB66-4020-D52B-3A1D-45B0C95CB9DF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:79]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0 1 0.050000001 1
		 0.1 1 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005
		 1 0.50000006 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013
		 1 0.85000014 1 0.90000015 1 0.95000017 1 1.000000119209 1 0 0.75 0.050000001 0.75
		 0.1 0.75 0.15000001 0.75 0.2 0.75 0.25 0.75 0.30000001 0.75 0.35000002 0.75 0.40000004
		 0.75 0.45000005 0.75 0.50000006 0.75 0.55000007 0.75 0.60000008 0.75 0.6500001 0.75
		 0.70000011 0.75 0.75000012 0.75 0.80000013 0.75 0.85000014 0.75 0.90000015 0.75 0.95000017
		 0.75 1.000000119209 0.75 0 0.5 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25
		 0.5 0.30000001 0.5 0.35000002 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0.55000007
		 0.5 0.60000008 0.5 0.6500001 0.5 0.70000011 0.5 0.75000012 0.5 0.80000013 0.5 0.85000014
		 0.5 0.90000015 0.5 0.95000017 0.5 1.000000119209 0.5 0 0.25 0.050000001 0.25 0.1
		 0.25 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004
		 0.25 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25
		 0.70000011 0.25 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017
		 0.25 1.000000119209 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001
		 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001
		 0 0.70000011 0 0.75000012 0 0.80000013 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  0.5 -0.5 -1.110223e-016 0.47552827 -0.5 -0.1545085
		 0.4045085 -0.5 -0.29389265 0.29389262 -0.5 -0.40450853 0.15450849 -0.5 -0.4755283
		 -1.4901161e-008 -0.5 -0.50000006 -0.15450853 -0.5 -0.47552833 -0.29389268 -0.5 -0.40450856
		 -0.40450859 -0.5 -0.29389268 -0.47552839 -0.5 -0.15450853 -0.50000012 -0.5 -1.110223e-016
		 -0.47552839 -0.5 0.15450853 -0.40450862 -0.5 0.29389271 -0.29389274 -0.5 0.40450865
		 -0.15450858 -0.5 0.47552848 0 -0.5 0.50000024 0.15450858 -0.5 0.47552851 0.2938928 -0.5 0.40450874
		 0.40450877 -0.5 0.2938928 0.47552857 -0.5 0.15450859 0.5 0.5 1.110223e-016 0.47552827 0.5 -0.1545085
		 0.4045085 0.5 -0.29389265 0.29389262 0.5 -0.40450853 0.15450849 0.5 -0.4755283 -1.4901161e-008 0.5 -0.50000006
		 -0.15450853 0.5 -0.47552833 -0.29389268 0.5 -0.40450856 -0.40450859 0.5 -0.29389268
		 -0.47552839 0.5 -0.15450853 -0.50000012 0.5 1.110223e-016 -0.47552839 0.5 0.15450853
		 -0.40450862 0.5 0.29389271 -0.29389274 0.5 0.40450865 -0.15450858 0.5 0.47552848
		 0 0.5 0.50000024 0.15450858 0.5 0.47552851 0.2938928 0.5 0.40450874 0.40450877 0.5 0.2938928
		 0.47552857 0.5 0.15450859 1 0.5 1.110223e-016 0.95105654 0.5 -0.309017 0.809017 0.5 -0.5877853
		 0.58778524 0.5 -0.80901706 0.30901697 0.5 -0.9510566 -2.9802322e-008 0.5 -1.000000119209
		 -0.30901706 0.5 -0.95105666 -0.58778536 0.5 -0.80901712 -0.80901718 0.5 -0.58778536
		 -0.95105678 0.5 -0.30901706 -1.000000238419 0.5 1.110223e-016 -0.95105678 0.5 0.30901706
		 -0.80901724 0.5 0.58778542 -0.58778548 0.5 0.8090173 -0.30901715 0.5 0.95105696 0 0.5 1.000000476837
		 0.30901715 0.5 0.95105702 0.5877856 0.5 0.80901748 0.80901754 0.5 0.5877856 0.95105714 0.5 0.30901718
		 1 -0.5 -1.110223e-016 0.95105654 -0.5 -0.309017 0.809017 -0.5 -0.5877853 0.58778524 -0.5 -0.80901706
		 0.30901697 -0.5 -0.9510566 -2.9802322e-008 -0.5 -1.000000119209 -0.30901706 -0.5 -0.95105666
		 -0.58778536 -0.5 -0.80901712 -0.80901718 -0.5 -0.58778536 -0.95105678 -0.5 -0.30901706
		 -1.000000238419 -0.5 -1.110223e-016 -0.95105678 -0.5 0.30901706 -0.80901724 -0.5 0.58778542
		 -0.58778548 -0.5 0.8090173 -0.30901715 -0.5 0.95105696 0 -0.5 1.000000476837 0.30901715 -0.5 0.95105702
		 0.5877856 -0.5 0.80901748 0.80901754 -0.5 0.5877856 0.95105714 -0.5 0.30901718;
	setAttr -s 160 ".ed[0:159]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0 60 61 0 61 62 0
		 62 63 0 63 64 0 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0
		 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0 78 79 0 79 60 0 0 20 1 1 21 1 2 22 1 3 23 1
		 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1 14 34 1
		 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1 25 45 1
		 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1 36 56 1
		 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1 47 67 1
		 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1
		 59 79 1 60 0 1 61 1 1 62 2 1 63 3 1 64 4 1 65 5 1 66 6 1 67 7 1 68 8 1 69 9 1 70 10 1
		 71 11 1 72 12 1 73 13 1 74 14 1 75 15 1 76 16 1 77 17 1 78 18 1 79 19 1;
	setAttr -s 80 -ch 320 ".fc[0:79]" -type "polyFaces" 
		f 4 -1 80 20 -82
		mu 0 4 1 0 21 22
		f 4 -2 81 21 -83
		mu 0 4 2 1 22 23
		f 4 -3 82 22 -84
		mu 0 4 3 2 23 24
		f 4 -4 83 23 -85
		mu 0 4 4 3 24 25
		f 4 -5 84 24 -86
		mu 0 4 5 4 25 26
		f 4 -6 85 25 -87
		mu 0 4 6 5 26 27
		f 4 -7 86 26 -88
		mu 0 4 7 6 27 28
		f 4 -8 87 27 -89
		mu 0 4 8 7 28 29
		f 4 -9 88 28 -90
		mu 0 4 9 8 29 30
		f 4 -10 89 29 -91
		mu 0 4 10 9 30 31
		f 4 -11 90 30 -92
		mu 0 4 11 10 31 32
		f 4 -12 91 31 -93
		mu 0 4 12 11 32 33
		f 4 -13 92 32 -94
		mu 0 4 13 12 33 34
		f 4 -14 93 33 -95
		mu 0 4 14 13 34 35
		f 4 -15 94 34 -96
		mu 0 4 15 14 35 36
		f 4 -16 95 35 -97
		mu 0 4 16 15 36 37
		f 4 -17 96 36 -98
		mu 0 4 17 16 37 38
		f 4 -18 97 37 -99
		mu 0 4 18 17 38 39
		f 4 -19 98 38 -100
		mu 0 4 19 18 39 40
		f 4 -20 99 39 -81
		mu 0 4 20 19 40 41
		f 4 -21 100 40 -102
		mu 0 4 22 21 42 43
		f 4 -22 101 41 -103
		mu 0 4 23 22 43 44
		f 4 -23 102 42 -104
		mu 0 4 24 23 44 45
		f 4 -24 103 43 -105
		mu 0 4 25 24 45 46
		f 4 -25 104 44 -106
		mu 0 4 26 25 46 47
		f 4 -26 105 45 -107
		mu 0 4 27 26 47 48
		f 4 -27 106 46 -108
		mu 0 4 28 27 48 49
		f 4 -28 107 47 -109
		mu 0 4 29 28 49 50
		f 4 -29 108 48 -110
		mu 0 4 30 29 50 51
		f 4 -30 109 49 -111
		mu 0 4 31 30 51 52
		f 4 -31 110 50 -112
		mu 0 4 32 31 52 53
		f 4 -32 111 51 -113
		mu 0 4 33 32 53 54
		f 4 -33 112 52 -114
		mu 0 4 34 33 54 55
		f 4 -34 113 53 -115
		mu 0 4 35 34 55 56
		f 4 -35 114 54 -116
		mu 0 4 36 35 56 57
		f 4 -36 115 55 -117
		mu 0 4 37 36 57 58
		f 4 -37 116 56 -118
		mu 0 4 38 37 58 59
		f 4 -38 117 57 -119
		mu 0 4 39 38 59 60
		f 4 -39 118 58 -120
		mu 0 4 40 39 60 61
		f 4 -40 119 59 -101
		mu 0 4 41 40 61 62
		f 4 -41 120 60 -122
		mu 0 4 43 42 63 64
		f 4 -42 121 61 -123
		mu 0 4 44 43 64 65
		f 4 -43 122 62 -124
		mu 0 4 45 44 65 66
		f 4 -44 123 63 -125
		mu 0 4 46 45 66 67
		f 4 -45 124 64 -126
		mu 0 4 47 46 67 68
		f 4 -46 125 65 -127
		mu 0 4 48 47 68 69
		f 4 -47 126 66 -128
		mu 0 4 49 48 69 70
		f 4 -48 127 67 -129
		mu 0 4 50 49 70 71
		f 4 -49 128 68 -130
		mu 0 4 51 50 71 72
		f 4 -50 129 69 -131
		mu 0 4 52 51 72 73
		f 4 -51 130 70 -132
		mu 0 4 53 52 73 74
		f 4 -52 131 71 -133
		mu 0 4 54 53 74 75
		f 4 -53 132 72 -134
		mu 0 4 55 54 75 76
		f 4 -54 133 73 -135
		mu 0 4 56 55 76 77
		f 4 -55 134 74 -136
		mu 0 4 57 56 77 78
		f 4 -56 135 75 -137
		mu 0 4 58 57 78 79
		f 4 -57 136 76 -138
		mu 0 4 59 58 79 80
		f 4 -58 137 77 -139
		mu 0 4 60 59 80 81
		f 4 -59 138 78 -140
		mu 0 4 61 60 81 82
		f 4 -60 139 79 -121
		mu 0 4 62 61 82 83
		f 4 -61 140 0 -142
		mu 0 4 64 63 84 85
		f 4 -62 141 1 -143
		mu 0 4 65 64 85 86
		f 4 -63 142 2 -144
		mu 0 4 66 65 86 87
		f 4 -64 143 3 -145
		mu 0 4 67 66 87 88
		f 4 -65 144 4 -146
		mu 0 4 68 67 88 89
		f 4 -66 145 5 -147
		mu 0 4 69 68 89 90
		f 4 -67 146 6 -148
		mu 0 4 70 69 90 91
		f 4 -68 147 7 -149
		mu 0 4 71 70 91 92
		f 4 -69 148 8 -150
		mu 0 4 72 71 92 93
		f 4 -70 149 9 -151
		mu 0 4 73 72 93 94
		f 4 -71 150 10 -152
		mu 0 4 74 73 94 95
		f 4 -72 151 11 -153
		mu 0 4 75 74 95 96
		f 4 -73 152 12 -154
		mu 0 4 76 75 96 97
		f 4 -74 153 13 -155
		mu 0 4 77 76 97 98
		f 4 -75 154 14 -156
		mu 0 4 78 77 98 99
		f 4 -76 155 15 -157
		mu 0 4 79 78 99 100
		f 4 -77 156 16 -158
		mu 0 4 80 79 100 101
		f 4 -78 157 17 -159
		mu 0 4 81 80 101 102
		f 4 -79 158 18 -160
		mu 0 4 82 81 102 103
		f 4 -80 159 19 -141
		mu 0 4 83 82 103 104;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe7";
	rename -uid "F5AEDDDC-41AA-C84E-72D7-25AAA13BE939";
	setAttr ".rp" -type "double3" -5.1307430267333984 5.2567207813262939 -0.029611587524414063 ;
	setAttr ".sp" -type "double3" -5.1307430267333984 5.2567207813262939 -0.029611587524414063 ;
createNode transform -n "transform16" -p "pPipe7";
	rename -uid "BD7C0CC0-4622-2C54-9B04-EAB4801C15E2";
	setAttr ".v" no;
createNode mesh -n "pPipe7Shape" -p "transform16";
	rename -uid "49673875-40B9-22B5-F3A0-24B5909C09E2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe8";
	rename -uid "9B62AA2F-41B5-FFF7-20ED-3DA9F064E44C";
	setAttr ".t" -type "double3" 3.3380777835845796 -5.2567207813262939 0 ;
	setAttr ".s" -type "double3" 0.2 0.2 0.2 ;
	setAttr ".rp" -type "double3" -3.3380777835845792 5.2567207813262939 -0.029611587524414063 ;
	setAttr ".sp" -type "double3" 3.8325831890106201 5.2567207813262939 -0.029611587524414063 ;
	setAttr ".spt" -type "double3" -7.1706609725952148 0 0 ;
createNode transform -n "polySurface4" -p "pPipe8";
	rename -uid "3539BEBB-43E8-E6A0-0969-55BF6D9FC65D";
createNode transform -n "transform19" -p "polySurface4";
	rename -uid "8F77FC34-4EB8-931F-A694-28B1B7CC9240";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform19";
	rename -uid "66BF2663-4F7C-A56C-49B8-4E85F23AB160";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface5" -p "pPipe8";
	rename -uid "3BAA208C-4105-C238-B4F4-E9A067E59CB8";
createNode transform -n "transform20" -p "polySurface5";
	rename -uid "1DCA3451-48E5-81A9-9CE1-C4831E75E432";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform20";
	rename -uid "9F255C93-4331-BC70-79D5-F1AD5B73457B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface6" -p "pPipe8";
	rename -uid "26B1B203-43C9-57DB-52F4-068A3A7C1D56";
createNode transform -n "transform21" -p "polySurface6";
	rename -uid "0371F50F-4B5C-1E8F-F8F1-81B784F3D041";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform21";
	rename -uid "C65D82E3-4C88-ABFA-D830-658F1EB8658E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface7" -p "pPipe8";
	rename -uid "3FEDF31B-466F-DC77-083E-7A94A99086CA";
createNode transform -n "transform22" -p "polySurface7";
	rename -uid "5970EBED-4AA1-D74F-710D-1FAD9C8BCA14";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform22";
	rename -uid "943CB10B-4BE6-43E8-A0C9-D896FDDE104C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface8" -p "pPipe8";
	rename -uid "75A81C23-4FEC-617F-D213-F5B847A7CDD2";
createNode transform -n "transform23" -p "polySurface8";
	rename -uid "1819D12C-42CA-43AF-4894-4C8D30C6B495";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform23";
	rename -uid "BE01120C-44E7-7A20-5AD0-98960455CC68";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface9" -p "pPipe8";
	rename -uid "3AD848DA-4C4A-F3DD-18A7-C19DB98B7B5F";
createNode transform -n "transform24" -p "polySurface9";
	rename -uid "216C4F14-4793-11CD-5006-61960BB65567";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform24";
	rename -uid "D278D9E7-439C-F17C-CBE5-8981D0AD7FEB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface10" -p "pPipe8";
	rename -uid "3C0AE78B-4EAE-2C9D-6105-71A48A767E96";
createNode transform -n "transform25" -p "|pPipe8|polySurface10";
	rename -uid "736B1375-47B3-D60D-7D57-658F43FC8800";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform25";
	rename -uid "15FC69DF-4867-3A8F-A74C-C191CA8632CD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform18" -p "pPipe8";
	rename -uid "583F9234-4E3F-B7B8-DBA6-AC975D8B2F2C";
	setAttr ".v" no;
createNode mesh -n "pPipe8Shape" -p "transform18";
	rename -uid "4D759D8B-4365-E47A-8063-228E93400365";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.053558550775051117 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -s -n "persp";
	rename -uid "624C6CC9-4013-680B-C80D-B4A114222471";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.916398854408385 23.996611366998405 11.374845597374339 ;
	setAttr ".r" -type "double3" -45.93835272915755 -659.80000000005714 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D1B29E33-48DE-9162-4460-1CBE99BE3F03";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 34.671006650113277;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A5391306-48CE-9BEE-1AD4-D8ACA59495C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F1885893-4B71-B874-19F9-7588C2CF3AD6";
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
	rename -uid "EBF3790F-4202-47BA-F6D5-B6A9CB37D3BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5931901F-47DD-2ECE-4F11-95A7CE27687A";
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
	rename -uid "0DB9EFD5-4F2E-456B-B69B-0194F5D08458";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "01A08FCD-4585-FBB8-47F5-A4BD8A3DA534";
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
createNode transform -n "polySurface10";
	rename -uid "6EF64456-46E8-47D1-497E-3FBEE7CFA852";
	setAttr ".t" -type "double3" -0.02817302942276001 0 0 ;
	setAttr ".rp" -type "double3" 0.02817302942276001 1.1102230246251565e-016 -0.022270011901855291 ;
	setAttr ".sp" -type "double3" 0.02817302942276001 1.1102230246251565e-016 -0.022270011901855291 ;
createNode transform -n "polySurface11" -p "|polySurface10";
	rename -uid "24CDD383-45FD-7F13-8096-63BBE759041C";
createNode transform -n "transform30" -p "polySurface11";
	rename -uid "C6AF8137-44A1-794F-C23D-D68D599DFE69";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform30";
	rename -uid "9AC3F0E7-4DAE-0495-231C-77A7769DC806";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54875952005386353 0.13366226106882095 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".pt";
	setAttr ".pt[0]" -type "float3" 0.90946263 0 0.0010099228 ;
	setAttr ".pt[1]" -type "float3" 0 0.26896149 -0.26896143 ;
	setAttr ".pt[2]" -type "float3" 0.90946263 0 0.013827434 ;
	setAttr ".pt[3]" -type "float3" 0 -0.26896149 -0.26896143 ;
	setAttr ".pt[4]" -type "float3" 0.90946263 0 -0.017376587 ;
	setAttr ".pt[5]" -type "float3" 0 -0.26896149 0.26896143 ;
	setAttr ".pt[6]" -type "float3" 0.90946263 0 -0.0012691454 ;
	setAttr ".pt[7]" -type "float3" 0 0.26896149 0.26896143 ;
	setAttr ".pt[20]" -type "float3" 0 0 -0.30490294 ;
	setAttr ".pt[21]" -type "float3" 0.90946263 0 -0.18220761 ;
	setAttr ".pt[22]" -type "float3" 0.90946263 0 0.14499182 ;
	setAttr ".pt[23]" -type "float3" 0 0 0.29176649 ;
	setAttr ".pt[24]" -type "float3" 0 0 0.33418062 ;
	setAttr ".pt[25]" -type "float3" 0 0 0.37184009 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.37184009 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.34035888 ;
	setAttr ".pt[30]" -type "float3" 0 0 -0.30490294 ;
	setAttr ".pt[31]" -type "float3" 0.90946263 0 -0.18220761 ;
	setAttr ".pt[32]" -type "float3" 0.90946263 0 0.14499182 ;
	setAttr ".pt[33]" -type "float3" 0 0 0.29176649 ;
	setAttr ".pt[34]" -type "float3" 0 0 0.33418062 ;
	setAttr ".pt[35]" -type "float3" 0 0 0.37184015 ;
	setAttr ".pt[38]" -type "float3" 0 0 -0.37184009 ;
	setAttr ".pt[39]" -type "float3" 0 0 -0.34035888 ;
	setAttr ".pt[40]" -type "float3" 0.20293045 0 -0.0866642 ;
	setAttr ".pt[41]" -type "float3" -0.17074168 0 -0.16280293 ;
	setAttr ".pt[42]" -type "float3" 0.20293045 0 -0.0866642 ;
	setAttr ".pt[43]" -type "float3" -0.17074168 0 -0.16280293 ;
	setAttr ".pt[44]" -type "float3" -0.017342448 0 0.25100255 ;
	setAttr ".pt[45]" -type "float3" 0.35632956 -0.07098338 0.15992165 ;
	setAttr ".pt[46]" -type "float3" -0.017342329 0 0.25100255 ;
	setAttr ".pt[47]" -type "float3" 0.35632956 -0.07098338 0.15992165 ;
	setAttr ".pt[48]" -type "float3" 0 -0.15316203 -0.42826536 ;
	setAttr ".pt[49]" -type "float3" 0 -0.153162 0.42826536 ;
	setAttr ".pt[50]" -type "float3" 0 -0.21393397 0.42826536 ;
	setAttr ".pt[51]" -type "float3" 0 -0.21393397 -0.42826536 ;
	setAttr ".pt[52]" -type "float3" 0 0.019003682 -0.42826536 ;
	setAttr ".pt[53]" -type "float3" 0 0.019003682 0.42826536 ;
	setAttr ".pt[54]" -type "float3" 0 -0.033612549 0.42826536 ;
	setAttr ".pt[55]" -type "float3" 0 -0.033612534 -0.42826536 ;
	setAttr ".pt[56]" -type "float3" 0 0.21393399 0.42826536 ;
	setAttr ".pt[57]" -type "float3" 0 0.21393399 -0.42826536 ;
	setAttr ".pt[58]" -type "float3" 0 0.13556391 0.42826536 ;
	setAttr ".pt[59]" -type "float3" 0 0.13556391 -0.42826536 ;
	setAttr ".pt[60]" -type "float3" 0 -0.13475621 0 ;
	setAttr ".pt[61]" -type "float3" 0 -0.0039230245 0 ;
	setAttr ".pt[62]" -type "float3" 0 0.00014684963 0 ;
	setAttr ".pt[63]" -type "float3" 0 0.13475622 0 ;
	setAttr ".pt[64]" -type "float3" 0.23634353 0.099885434 0 ;
	setAttr ".pt[65]" -type "float3" 0.23634353 0.00011110317 0 ;
	setAttr ".pt[66]" -type "float3" 0.23634353 -0.0029622626 0 ;
	setAttr ".pt[67]" -type "float3" 0.23634353 -0.099885419 0 ;
	setAttr ".pt[68]" -type "float3" 0.23634353 -0.099885419 0 ;
	setAttr ".pt[69]" -type "float3" 0.23634353 -0.0029622626 0 ;
	setAttr ".pt[70]" -type "float3" 0.23634353 0.00011110317 0 ;
	setAttr ".pt[71]" -type "float3" 0.23634353 0.099885434 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface14" -p "|polySurface10";
	rename -uid "8CCE6C3A-4101-C764-1764-908D98DA6FC4";
	setAttr ".t" -type "double3" 4.3790030775981394 0 2.631373029205446 ;
	setAttr ".rp" -type "double3" 0 0 1.368626970794554 ;
	setAttr ".sp" -type "double3" 0 0 1.368626970794554 ;
createNode transform -n "transform28" -p "polySurface14";
	rename -uid "C497B2AC-45A0-B018-0EF1-969EDFBA007F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform28";
	rename -uid "93D49D69-45BD-1B82-5518-C0B349ADC777";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface16" -p "|polySurface10";
	rename -uid "7EB7E917-4573-356E-C855-1C8632A4604D";
	setAttr ".t" -type "double3" 4.3790030775981394 0 2.631373029205446 ;
	setAttr ".rp" -type "double3" 0 0 1.368626970794554 ;
	setAttr ".sp" -type "double3" 0 0 1.368626970794554 ;
createNode transform -n "transform27" -p "polySurface16";
	rename -uid "06F6A6F8-4F0A-D33F-A62D-7BA3C03B0AD6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform27";
	rename -uid "2B583C84-49A3-8200-6031-1EBAAFD928DC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform26" -p "|polySurface10";
	rename -uid "F6FD194D-4544-FCC1-9F2A-2DBA97A4EDF1";
	setAttr ".v" no;
createNode mesh -n "polySurface10Shape" -p "transform26";
	rename -uid "5D038DCC-468C-1C71-31D6-C399A12BF159";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5833476185798645 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "42BA1A99-499E-5836-AEDB-7596C1B1A8ED";
	setAttr ".t" -type "double3" 6.496793796846787 0.077003574764306304 4 ;
	setAttr ".rp" -type "double3" -0.50000004989854485 0.60000004729074741 0 ;
	setAttr ".sp" -type "double3" -0.50000004989854485 0.60000004729074741 0 ;
createNode transform -n "transform29" -p "pCube2";
	rename -uid "DB56FD18-4B02-A4F2-E835-53B2FFA13730";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform29";
	rename -uid "39DF85EA-44DA-1237-ACD9-3981343E70F6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3";
	rename -uid "89A169C0-4044-EE83-7286-B5A8BA473BE9";
	setAttr ".t" -type "double3" -6.6866229733559859 0 -0.77500002645117227 ;
	setAttr ".rp" -type "double3" 5.9967937469482422 0.067562747198132156 3.7750000264511723 ;
	setAttr ".sp" -type "double3" 5.9967937469482422 0.067562747198132156 3.7750000264511723 ;
createNode transform -n "transform37" -p "pCube3";
	rename -uid "17284EF2-4209-CE76-D931-BF8D56955E1B";
	setAttr ".v" no;
createNode mesh -n "pCube3Shape" -p "transform37";
	rename -uid "432E5F27-4AD5-DAA1-740B-90819D85F255";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.34375309944152832 0.46875310130417347 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".pt[1]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".pt[5]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".pt[6]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "C80F7407-4B39-DF5C-82D3-25A2EB5EFFD6";
	setAttr ".t" -type "double3" -6.686623041883867 0 -7.2249998871598358 ;
	setAttr ".rp" -type "double3" 5.9967936923660448 0.067562747198132156 4.2249998871598358 ;
	setAttr ".sp" -type "double3" 5.9967936923660448 0.067562747198132156 4.2249998871598358 ;
createNode transform -n "transform40" -p "pCube4";
	rename -uid "398D9822-4E4A-A7E6-8C1B-55B15803289C";
	setAttr ".v" no;
createNode mesh -n "pCube4Shape" -p "transform40";
	rename -uid "2E8A199D-413D-4101-EA18-9CAB4E932AF5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[18:177]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 243 ".uvst[0].uvsp[0:242]" -type "float2" 0.125 0.023072258
		 0.18749371 3.7252903e-009 0.3125062 0.25 0.18749379 0.25 0.12500004 0.22692791 0.31250629
		 3.7252903e-009 0.625 0.9375062 0.59687781 0.9375062 0.625 0.8124938 0.68749368 0.023072261
		 0.37500003 0.22692791 0.59687781 0.22692791 0.625 0.3124938 0.375 0.4375062 0.59687781
		 0.4375062 0.625 0.52307212 0.625 0.72692788 0.375 0.72692788 0.59687781 0.72692788
		 0.59687781 0.8124938 0.375 0.023072124 0.59687781 0.023072112 0.375 0.3124938 0.59687781
		 0.3124938 0.375 0.52307212 0.59687781 0.52307212 0.375 0.8124938 0.375 0.9375062
		 0.81250608 0.023072254 0.8125062 0.22692789 0.59687781 -5.5879354e-009 0.6874938
		 0.22692791 0.625 0.4375062 0.050000001 1 0 1 0 0.75 0.050000001 0.75 0.1 1 0.1 0.75
		 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75 0.25 1 0.25 0.75 0.30000001 1 0.30000001
		 0.75 0.35000002 1 0.35000002 0.75 0.40000004 1 0.40000004 0.75 0.45000005 1 0.45000005
		 0.75 0.50000006 1 0.50000006 0.75 0.55000007 1 0.55000007 0.75 0.60000008 1 0.60000008
		 0.75 0.6500001 1 0.6500001 0.75 0.70000011 1 0.70000011 0.75 0.75000012 1 0.75000012
		 0.75 0.80000013 1 0.80000013 0.75 0.85000014 1 0.85000014 0.75 0.90000015 1 0.90000015
		 0.75 0.95000017 1 0.95000017 0.75 1.000000119209 1 1.000000119209 0.75 0 0.5 0.050000001
		 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5 0.35000002 0.5 0.40000004
		 0.5 0.45000005 0.5 0.50000006 0.5 0.55000007 0.5 0.60000008 0.5 0.6500001 0.5 0.70000011
		 0.5 0.75000012 0.5 0.80000013 0.5 0.85000014 0.5 0.90000015 0.5 0.95000017 0.5 1.000000119209
		 0.5 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001
		 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25
		 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25 0.75000012 0.25 0.80000013 0.25 0.85000014
		 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209 0.25 0 0 0.050000001 0 0.1 0
		 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005 0 0.50000006
		 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013 0 0.85000014
		 0 0.90000015 0 0.95000017 0 1.000000119209 0 0.050000001 1 0 1 0 0.75 0.050000001
		 0.75 0.1 1 0.1 0.75 0.15000001 1 0.15000001 0.75 0.2 1 0.2 0.75 0.25 1 0.25 0.75
		 0.30000001 1 0.30000001 0.75 0.35000002 1 0.35000002 0.75 0.40000004 1 0.40000004
		 0.75 0.45000005 1 0.45000005 0.75 0.50000006 1 0.50000006 0.75 0.55000007 1 0.55000007
		 0.75 0.60000008 1 0.60000008 0.75 0.6500001 1 0.6500001 0.75 0.70000011 1 0.70000011
		 0.75 0.75000012 1 0.75000012 0.75 0.80000013 1 0.80000013 0.75 0.85000014 1 0.85000014
		 0.75 0.90000015 1 0.90000015 0.75 0.95000017 1 0.95000017 0.75 1.000000119209 1 1.000000119209
		 0.75 0 0.5 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5
		 0.35000002 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0.55000007 0.5 0.60000008
		 0.5 0.6500001 0.5 0.70000011 0.5 0.75000012 0.5 0.80000013 0.5 0.85000014 0.5 0.90000015
		 0.5 0.95000017 0.5 1.000000119209 0.5 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0
		 0.40000004 0 0.45000005 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011
		 0 0.75000012 0 0.80000013 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 180 ".vt";
	setAttr ".vt[0:165]"  5.99679375 -0.5418781 4.11251116 5.99679375 -0.42938939 4.2249999
		 6.99679375 -0.42938939 4.11251116 6.884305 -0.42938939 4.2249999 6.884305 -0.5418781 4.11251116
		 5.99679375 0.67700362 4.11251116 5.99679375 0.56451494 4.2249999 6.884305 0.67700362 4.11251116
		 6.884305 0.56451494 4.2249999 6.99679375 0.56451494 4.11251116 5.99679375 0.56451494 3.7750001
		 5.99679375 0.67700362 3.88748884 6.884305 0.56451494 3.7750001 6.884305 0.67700362 3.88748884
		 6.99679375 0.56451494 3.88748884 5.99679375 -0.5418781 3.88748884 5.99679375 -0.42938939 3.7750001
		 6.884305 -0.5418781 3.88748884 6.884305 -0.42938939 3.7750001 6.99679375 -0.42938939 3.88748884
		 5.99989462 0.5770036 4 5.99989462 0.57210934 3.96909833 5.99989462 0.55790532 3.94122148
		 5.99989462 0.53578222 3.91909838 5.99989462 0.50790536 3.90489435 5.99989462 0.47700369 3.9000001
		 5.99989462 0.4461019 3.90489435 5.99989462 0.41822505 3.91909838 5.99989462 0.39610195 3.94122148
		 5.99989462 0.38189805 3.96909833 5.99989462 0.37700367 4 5.99989462 0.38189805 4.030901909
		 5.99989462 0.39610195 4.058778763 5.99989462 0.41822505 4.080901623 5.99989462 0.4461019 4.095105648
		 5.99989462 0.47700369 4.10000038 5.99989462 0.50790536 4.095105648 5.99989462 0.53578222 4.080901623
		 5.99989462 0.55790532 4.058778763 5.99989462 0.57210934 4.030901909 3.068141937 0.5770036 4
		 3.068141937 0.57210934 3.96909833 3.068141937 0.55790532 3.94122148 3.068141937 0.53578222 3.91909838
		 3.068141937 0.50790536 3.90489435 3.068141937 0.47700369 3.9000001 3.068141937 0.4461019 3.90489435
		 3.068141937 0.41822505 3.91909838 3.068141937 0.39610195 3.94122148 3.068141937 0.38189805 3.96909833
		 3.068141937 0.37700367 4 3.068141937 0.38189805 4.030901909 3.068141937 0.39610195 4.058778763
		 3.068141937 0.41822505 4.080901623 3.068141937 0.4461019 4.095105648 3.068141937 0.47700369 4.10000038
		 3.068141937 0.50790536 4.095105648 3.068141937 0.53578222 4.080901623 3.068141937 0.55790532 4.058778763
		 3.068141937 0.57210934 4.030901909 3.068141937 0.67700362 4 3.068141937 0.66721499 3.93819666
		 3.068141937 0.63880706 3.88244295 3.068141937 0.59456074 3.83819675 3.068141937 0.53880703 3.8097887
		 3.068141937 0.47700369 3.80000019 3.068141937 0.41520023 3.8097887 3.068141937 0.35944664 3.83819675
		 3.068141937 0.31520021 3.88244295 3.068141937 0.28679228 3.93819666 3.068141937 0.27700365 4
		 3.068141937 0.28679228 4.061803341 3.068141937 0.31520021 4.11755705 3.068141937 0.35944653 4.16180325
		 3.068141937 0.41520023 4.1902113 3.068141937 0.47700369 4.20000029 3.068141937 0.53880703 4.1902113
		 3.068141937 0.59456074 4.16180372 3.068141937 0.63880706 4.11755705 3.068141937 0.66721511 4.061803341
		 5.99989462 0.67700362 4 5.99989462 0.66721499 3.93819666 5.99989462 0.63880706 3.88244295
		 5.99989462 0.59456074 3.83819675 5.99989462 0.53880703 3.8097887 5.99989462 0.47700369 3.80000019
		 5.99989462 0.41520023 3.8097887 5.99989462 0.35944664 3.83819675 5.99989462 0.31520021 3.88244295
		 5.99989462 0.28679228 3.93819666 5.99989462 0.27700365 4 5.99989462 0.28679228 4.061803341
		 5.99989462 0.31520021 4.11755705 5.99989462 0.35944653 4.16180325 5.99989462 0.41520023 4.1902113
		 5.99989462 0.47700369 4.20000029 5.99989462 0.53880703 4.1902113 5.99989462 0.59456074 4.16180372
		 5.99989462 0.63880706 4.11755705 5.99989462 0.66721511 4.061803341 5.99679375 -0.24187809 4.025286198
		 5.99679375 -0.24677241 3.99438429 5.99679375 -0.26097637 3.96650743 5.99679375 -0.28309953 3.94438457
		 5.99679375 -0.31097633 3.93018055 5.99679375 -0.34187806 3.92528629 5.99679375 -0.37277979 3.93018055
		 5.99679375 -0.40065658 3.94438457 5.99679375 -0.4227798 3.96650743 5.99679375 -0.43698376 3.99438429
		 5.99679375 -0.44187808 4.025286198 5.99679375 -0.43698376 4.05618763 5.99679375 -0.4227798 4.084064484
		 5.99679375 -0.40065664 4.10618782 5.99679375 -0.37277979 4.12039185 5.99679375 -0.34187806 4.1252861
		 5.99679375 -0.31097633 4.12039185 5.99679375 -0.28309947 4.10618782 5.99679375 -0.26097631 4.084064484
		 5.99679375 -0.24677235 4.05618763 3.062127113 -0.24187809 4.025286198 3.062127113 -0.24677241 3.99438429
		 3.062127113 -0.26097637 3.96650743 3.062127113 -0.28309953 3.94438457 3.062127113 -0.31097633 3.93018055
		 3.062127113 -0.34187806 3.92528629 3.062127113 -0.37277979 3.93018055 3.062127113 -0.40065658 3.94438457
		 3.062127113 -0.4227798 3.96650743 3.062127113 -0.43698376 3.99438429 3.062127113 -0.44187808 4.025286198
		 3.062127113 -0.43698376 4.05618763 3.062127113 -0.4227798 4.084064484 3.062127113 -0.40065664 4.10618782
		 3.062127113 -0.37277979 4.12039185 3.062127113 -0.34187806 4.1252861 3.062127113 -0.31097633 4.12039185
		 3.062127113 -0.28309947 4.10618782 3.062127113 -0.26097631 4.084064484 3.062127113 -0.24677235 4.05618763
		 3.062127113 -0.14187807 4.025286198 3.062127113 -0.15166676 3.96348286 3.062127113 -0.18007463 3.90772915
		 3.062127113 -0.22432101 3.86348271 3.062127113 -0.28007466 3.8350749 3.062127113 -0.34187806 3.82528615
		 3.062127113 -0.40368152 3.8350749 3.062127113 -0.45943511 3.86348271 3.062127113 -0.50368148 3.90772915
		 3.062127113 -0.53208941 3.96348286 3.062127113 -0.5418781 4.025286198 3.062127113 -0.53208941 4.087089539
		 3.062127113 -0.50368148 4.14284325 3.062127113 -0.45943516 4.18708944 3.062127113 -0.40368152 4.21549749
		 3.062127113 -0.34187806 4.22528648 3.062127113 -0.28007466 4.21549749 3.062127113 -0.22432095 4.18708992
		 3.062127113 -0.18007451 4.14284325 3.062127113 -0.1516667 4.087089539 5.99679375 -0.14187807 4.025286198
		 5.99679375 -0.15166676 3.96348286 5.99679375 -0.18007463 3.90772915 5.99679375 -0.22432101 3.86348271
		 5.99679375 -0.28007466 3.8350749 5.99679375 -0.34187806 3.82528615;
	setAttr ".vt[166:179]" 5.99679375 -0.40368152 3.8350749 5.99679375 -0.45943511 3.86348271
		 5.99679375 -0.50368148 3.90772915 5.99679375 -0.53208941 3.96348286 5.99679375 -0.5418781 4.025286198
		 5.99679375 -0.53208941 4.087089539 5.99679375 -0.50368148 4.14284325 5.99679375 -0.45943516 4.18708944
		 5.99679375 -0.40368152 4.21549749 5.99679375 -0.34187806 4.22528648 5.99679375 -0.28007466 4.21549749
		 5.99679375 -0.22432095 4.18708992 5.99679375 -0.18007451 4.14284325 5.99679375 -0.1516667 4.087089539;
	setAttr -s 356 ".ed";
	setAttr ".ed[0:165]"  1 6 0 0 1 0 5 11 0 6 5 0 10 16 0 11 10 0 15 0 0 15 16 0
		 0 4 0 4 3 0 3 1 0 2 4 0 4 17 0 17 19 0 19 2 0 3 2 0 2 9 0 9 8 0 8 3 0 6 8 0 8 7 0
		 7 5 0 7 9 0 9 14 0 14 13 0 13 7 0 11 13 0 13 12 0 12 10 0 12 14 0 14 19 0 19 18 0
		 18 12 0 16 18 0 18 17 0 17 15 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0
		 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0
		 38 39 0 39 20 0 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0
		 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0
		 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0
		 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0 78 79 0 79 60 0 80 81 0 81 82 0
		 82 83 0 83 84 0 84 85 0 85 86 0 86 87 0 87 88 0 88 89 0 89 90 0 90 91 0 91 92 0 92 93 0
		 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0 98 99 0 99 80 0 20 40 1 21 41 1 22 42 1 23 43 1
		 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1
		 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1
		 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1
		 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1
		 68 88 1 69 89 1;
	setAttr ".ed[166:331]" 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 20 1 81 21 1 82 22 1 83 23 1 84 24 1 85 25 1 86 26 1 87 27 1
		 88 28 1 89 29 1 90 30 1 91 31 1 92 32 1 93 33 1 94 34 1 95 35 1 96 36 1 97 37 1 98 38 1
		 99 39 1 100 101 0 101 102 0 102 103 0 103 104 0 104 105 0 105 106 0 106 107 0 107 108 0
		 108 109 0 109 110 0 110 111 0 111 112 0 112 113 0 113 114 0 114 115 0 115 116 0 116 117 0
		 117 118 0 118 119 0 119 100 0 120 121 0 121 122 0 122 123 0 123 124 0 124 125 0 125 126 0
		 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 132 0 132 133 0 133 134 0 134 135 0
		 135 136 0 136 137 0 137 138 0 138 139 0 139 120 0 140 141 0 141 142 0 142 143 0 143 144 0
		 144 145 0 145 146 0 146 147 0 147 148 0 148 149 0 149 150 0 150 151 0 151 152 0 152 153 0
		 153 154 0 154 155 0 155 156 0 156 157 0 157 158 0 158 159 0 159 140 0 160 161 0 161 162 0
		 162 163 0 163 164 0 164 165 0 165 166 0 166 167 0 167 168 0 168 169 0 169 170 0 170 171 0
		 171 172 0 172 173 0 173 174 0 174 175 0 175 176 0 176 177 0 177 178 0 178 179 0 179 160 0
		 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1
		 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1
		 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1
		 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1
		 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1
		 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1
		 154 174 1 155 175 1;
	setAttr ".ed[332:355]" 156 176 1 157 177 1 158 178 1 159 179 1 160 100 1 161 101 1
		 162 102 1 163 103 1 164 104 1 165 105 1 166 106 1 167 107 1 168 108 1 169 109 1 170 110 1
		 171 111 1 172 112 1 173 113 1 174 114 1 175 115 1 176 116 1 177 117 1 178 118 1 179 119 1;
	setAttr -s 178 -ch 712 ".fc[0:177]" -type "polyFaces" 
		f 8 -8 6 1 0 3 2 5 4
		mu 0 8 0 1 5 20 10 2 3 4
		f 4 -2 8 9 10
		mu 0 4 20 5 30 21
		f 4 11 12 13 14
		mu 0 4 6 7 19 8
		f 4 15 16 17 18
		mu 0 4 21 9 31 11
		f 4 -4 19 20 21
		mu 0 4 22 10 11 23
		f 4 22 23 24 25
		mu 0 4 23 12 32 14
		f 4 -6 26 27 28
		mu 0 4 24 13 14 25
		f 4 29 30 31 32
		mu 0 4 25 15 16 18
		f 4 7 33 34 35
		mu 0 4 26 17 18 19
		f 4 -11 -19 -20 -1
		mu 0 4 20 21 11 10
		f 4 -22 -26 -27 -3
		mu 0 4 22 23 14 13
		f 4 -29 -33 -34 -5
		mu 0 4 24 25 18 17
		f 4 -36 -13 -9 -7
		mu 0 4 26 19 7 27
		f 4 -15 -31 -24 -17
		mu 0 4 9 28 29 31
		f 3 -16 -10 -12
		mu 0 3 9 21 30
		f 3 -21 -18 -23
		mu 0 3 23 11 31
		f 3 -28 -25 -30
		mu 0 3 25 14 32
		f 3 -35 -32 -14
		mu 0 3 19 18 16
		f 4 -37 116 56 -118
		mu 0 4 33 34 35 36
		f 4 -38 117 57 -119
		mu 0 4 37 33 36 38
		f 4 -39 118 58 -120
		mu 0 4 39 37 38 40
		f 4 -40 119 59 -121
		mu 0 4 41 39 40 42
		f 4 -41 120 60 -122
		mu 0 4 43 41 42 44
		f 4 -42 121 61 -123
		mu 0 4 45 43 44 46
		f 4 -43 122 62 -124
		mu 0 4 47 45 46 48
		f 4 -44 123 63 -125
		mu 0 4 49 47 48 50
		f 4 -45 124 64 -126
		mu 0 4 51 49 50 52
		f 4 -46 125 65 -127
		mu 0 4 53 51 52 54
		f 4 -47 126 66 -128
		mu 0 4 55 53 54 56
		f 4 -48 127 67 -129
		mu 0 4 57 55 56 58
		f 4 -49 128 68 -130
		mu 0 4 59 57 58 60
		f 4 -50 129 69 -131
		mu 0 4 61 59 60 62
		f 4 -51 130 70 -132
		mu 0 4 63 61 62 64
		f 4 -52 131 71 -133
		mu 0 4 65 63 64 66
		f 4 -53 132 72 -134
		mu 0 4 67 65 66 68
		f 4 -54 133 73 -135
		mu 0 4 69 67 68 70
		f 4 -55 134 74 -136
		mu 0 4 71 69 70 72
		f 4 -56 135 75 -117
		mu 0 4 73 71 72 74
		f 4 -57 136 76 -138
		mu 0 4 36 35 75 76
		f 4 -58 137 77 -139
		mu 0 4 38 36 76 77
		f 4 -59 138 78 -140
		mu 0 4 40 38 77 78
		f 4 -60 139 79 -141
		mu 0 4 42 40 78 79
		f 4 -61 140 80 -142
		mu 0 4 44 42 79 80
		f 4 -62 141 81 -143
		mu 0 4 46 44 80 81
		f 4 -63 142 82 -144
		mu 0 4 48 46 81 82
		f 4 -64 143 83 -145
		mu 0 4 50 48 82 83
		f 4 -65 144 84 -146
		mu 0 4 52 50 83 84
		f 4 -66 145 85 -147
		mu 0 4 54 52 84 85
		f 4 -67 146 86 -148
		mu 0 4 56 54 85 86
		f 4 -68 147 87 -149
		mu 0 4 58 56 86 87
		f 4 -69 148 88 -150
		mu 0 4 60 58 87 88
		f 4 -70 149 89 -151
		mu 0 4 62 60 88 89
		f 4 -71 150 90 -152
		mu 0 4 64 62 89 90
		f 4 -72 151 91 -153
		mu 0 4 66 64 90 91
		f 4 -73 152 92 -154
		mu 0 4 68 66 91 92
		f 4 -74 153 93 -155
		mu 0 4 70 68 92 93
		f 4 -75 154 94 -156
		mu 0 4 72 70 93 94
		f 4 -76 155 95 -137
		mu 0 4 74 72 94 95
		f 4 -77 156 96 -158
		mu 0 4 76 75 96 97
		f 4 -78 157 97 -159
		mu 0 4 77 76 97 98
		f 4 -79 158 98 -160
		mu 0 4 78 77 98 99
		f 4 -80 159 99 -161
		mu 0 4 79 78 99 100
		f 4 -81 160 100 -162
		mu 0 4 80 79 100 101
		f 4 -82 161 101 -163
		mu 0 4 81 80 101 102
		f 4 -83 162 102 -164
		mu 0 4 82 81 102 103
		f 4 -84 163 103 -165
		mu 0 4 83 82 103 104
		f 4 -85 164 104 -166
		mu 0 4 84 83 104 105
		f 4 -86 165 105 -167
		mu 0 4 85 84 105 106
		f 4 -87 166 106 -168
		mu 0 4 86 85 106 107
		f 4 -88 167 107 -169
		mu 0 4 87 86 107 108
		f 4 -89 168 108 -170
		mu 0 4 88 87 108 109
		f 4 -90 169 109 -171
		mu 0 4 89 88 109 110
		f 4 -91 170 110 -172
		mu 0 4 90 89 110 111
		f 4 -92 171 111 -173
		mu 0 4 91 90 111 112
		f 4 -93 172 112 -174
		mu 0 4 92 91 112 113
		f 4 -94 173 113 -175
		mu 0 4 93 92 113 114
		f 4 -95 174 114 -176
		mu 0 4 94 93 114 115
		f 4 -96 175 115 -157
		mu 0 4 95 94 115 116
		f 4 -97 176 36 -178
		mu 0 4 97 96 117 118
		f 4 -98 177 37 -179
		mu 0 4 98 97 118 119
		f 4 -99 178 38 -180
		mu 0 4 99 98 119 120
		f 4 -100 179 39 -181
		mu 0 4 100 99 120 121
		f 4 -101 180 40 -182
		mu 0 4 101 100 121 122
		f 4 -102 181 41 -183
		mu 0 4 102 101 122 123
		f 4 -103 182 42 -184
		mu 0 4 103 102 123 124
		f 4 -104 183 43 -185
		mu 0 4 104 103 124 125
		f 4 -105 184 44 -186
		mu 0 4 105 104 125 126
		f 4 -106 185 45 -187
		mu 0 4 106 105 126 127
		f 4 -107 186 46 -188
		mu 0 4 107 106 127 128
		f 4 -108 187 47 -189
		mu 0 4 108 107 128 129
		f 4 -109 188 48 -190
		mu 0 4 109 108 129 130
		f 4 -110 189 49 -191
		mu 0 4 110 109 130 131
		f 4 -111 190 50 -192
		mu 0 4 111 110 131 132
		f 4 -112 191 51 -193
		mu 0 4 112 111 132 133
		f 4 -113 192 52 -194
		mu 0 4 113 112 133 134
		f 4 -114 193 53 -195
		mu 0 4 114 113 134 135
		f 4 -115 194 54 -196
		mu 0 4 115 114 135 136
		f 4 -116 195 55 -177
		mu 0 4 116 115 136 137
		f 4 -197 276 216 -278
		mu 0 4 138 139 140 141
		f 4 -198 277 217 -279
		mu 0 4 142 138 141 143
		f 4 -199 278 218 -280
		mu 0 4 144 142 143 145
		f 4 -200 279 219 -281
		mu 0 4 146 144 145 147
		f 4 -201 280 220 -282
		mu 0 4 148 146 147 149
		f 4 -202 281 221 -283
		mu 0 4 150 148 149 151
		f 4 -203 282 222 -284
		mu 0 4 152 150 151 153
		f 4 -204 283 223 -285
		mu 0 4 154 152 153 155
		f 4 -205 284 224 -286
		mu 0 4 156 154 155 157
		f 4 -206 285 225 -287
		mu 0 4 158 156 157 159
		f 4 -207 286 226 -288
		mu 0 4 160 158 159 161
		f 4 -208 287 227 -289
		mu 0 4 162 160 161 163
		f 4 -209 288 228 -290
		mu 0 4 164 162 163 165
		f 4 -210 289 229 -291
		mu 0 4 166 164 165 167
		f 4 -211 290 230 -292
		mu 0 4 168 166 167 169
		f 4 -212 291 231 -293
		mu 0 4 170 168 169 171
		f 4 -213 292 232 -294
		mu 0 4 172 170 171 173
		f 4 -214 293 233 -295
		mu 0 4 174 172 173 175
		f 4 -215 294 234 -296
		mu 0 4 176 174 175 177
		f 4 -216 295 235 -277
		mu 0 4 178 176 177 179
		f 4 -217 296 236 -298
		mu 0 4 141 140 180 181
		f 4 -218 297 237 -299
		mu 0 4 143 141 181 182
		f 4 -219 298 238 -300
		mu 0 4 145 143 182 183
		f 4 -220 299 239 -301
		mu 0 4 147 145 183 184
		f 4 -221 300 240 -302
		mu 0 4 149 147 184 185
		f 4 -222 301 241 -303
		mu 0 4 151 149 185 186
		f 4 -223 302 242 -304
		mu 0 4 153 151 186 187
		f 4 -224 303 243 -305
		mu 0 4 155 153 187 188
		f 4 -225 304 244 -306
		mu 0 4 157 155 188 189
		f 4 -226 305 245 -307
		mu 0 4 159 157 189 190
		f 4 -227 306 246 -308
		mu 0 4 161 159 190 191
		f 4 -228 307 247 -309
		mu 0 4 163 161 191 192
		f 4 -229 308 248 -310
		mu 0 4 165 163 192 193
		f 4 -230 309 249 -311
		mu 0 4 167 165 193 194
		f 4 -231 310 250 -312
		mu 0 4 169 167 194 195
		f 4 -232 311 251 -313
		mu 0 4 171 169 195 196
		f 4 -233 312 252 -314
		mu 0 4 173 171 196 197
		f 4 -234 313 253 -315
		mu 0 4 175 173 197 198
		f 4 -235 314 254 -316
		mu 0 4 177 175 198 199
		f 4 -236 315 255 -297
		mu 0 4 179 177 199 200
		f 4 -237 316 256 -318
		mu 0 4 181 180 201 202
		f 4 -238 317 257 -319
		mu 0 4 182 181 202 203
		f 4 -239 318 258 -320
		mu 0 4 183 182 203 204
		f 4 -240 319 259 -321
		mu 0 4 184 183 204 205
		f 4 -241 320 260 -322
		mu 0 4 185 184 205 206
		f 4 -242 321 261 -323
		mu 0 4 186 185 206 207
		f 4 -243 322 262 -324
		mu 0 4 187 186 207 208
		f 4 -244 323 263 -325
		mu 0 4 188 187 208 209
		f 4 -245 324 264 -326
		mu 0 4 189 188 209 210
		f 4 -246 325 265 -327
		mu 0 4 190 189 210 211
		f 4 -247 326 266 -328
		mu 0 4 191 190 211 212
		f 4 -248 327 267 -329
		mu 0 4 192 191 212 213
		f 4 -249 328 268 -330
		mu 0 4 193 192 213 214
		f 4 -250 329 269 -331
		mu 0 4 194 193 214 215
		f 4 -251 330 270 -332
		mu 0 4 195 194 215 216
		f 4 -252 331 271 -333
		mu 0 4 196 195 216 217
		f 4 -253 332 272 -334
		mu 0 4 197 196 217 218
		f 4 -254 333 273 -335
		mu 0 4 198 197 218 219
		f 4 -255 334 274 -336
		mu 0 4 199 198 219 220
		f 4 -256 335 275 -317
		mu 0 4 200 199 220 221
		f 4 -257 336 196 -338
		mu 0 4 202 201 222 223
		f 4 -258 337 197 -339
		mu 0 4 203 202 223 224
		f 4 -259 338 198 -340
		mu 0 4 204 203 224 225
		f 4 -260 339 199 -341
		mu 0 4 205 204 225 226
		f 4 -261 340 200 -342
		mu 0 4 206 205 226 227
		f 4 -262 341 201 -343
		mu 0 4 207 206 227 228
		f 4 -263 342 202 -344
		mu 0 4 208 207 228 229
		f 4 -264 343 203 -345
		mu 0 4 209 208 229 230
		f 4 -265 344 204 -346
		mu 0 4 210 209 230 231
		f 4 -266 345 205 -347
		mu 0 4 211 210 231 232
		f 4 -267 346 206 -348
		mu 0 4 212 211 232 233
		f 4 -268 347 207 -349
		mu 0 4 213 212 233 234
		f 4 -269 348 208 -350
		mu 0 4 214 213 234 235
		f 4 -270 349 209 -351
		mu 0 4 215 214 235 236
		f 4 -271 350 210 -352
		mu 0 4 216 215 236 237
		f 4 -272 351 211 -353
		mu 0 4 217 216 237 238
		f 4 -273 352 212 -354
		mu 0 4 218 217 238 239
		f 4 -274 353 213 -355
		mu 0 4 219 218 239 240
		f 4 -275 354 214 -356
		mu 0 4 220 219 240 241
		f 4 -276 355 215 -337
		mu 0 4 221 220 241 242;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5";
	rename -uid "8C94300F-4528-5DAB-970B-17B3B4B47923";
	setAttr ".t" -type "double3" 1.6661665787666617 0.12807499553652663 0 ;
	setAttr ".rp" -type "double3" 0.24999985347845133 0 0 ;
	setAttr ".sp" -type "double3" 0.24999985347845133 0 0 ;
createNode transform -n "transform31" -p "pCube5";
	rename -uid "6D73A42A-41AA-724A-ADCE-CD83BDD68294";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform31";
	rename -uid "9DF7901F-45D4-D15D-E6BD-7BAE8C2CFFC0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[0:9]" -type "float3"  0.69994271 0 0 0.69994271 
		0 0 0.69994271 0 0 0.69994271 0 0 0.058130208 0 0 0.058130208 0 0 0.69994271 0 0 
		0.69994271 0 0 0.64181244 0 0 0.64181244 0 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6";
	rename -uid "D06C3195-40CF-526F-093C-5B835045F428";
	setAttr ".rp" -type "double3" -1.8208382725715637 0 0 ;
	setAttr ".sp" -type "double3" -1.8208382725715637 0 0 ;
createNode transform -n "polySurface18" -p "pCube6";
	rename -uid "A5D7957A-4176-DDC6-1E16-588006FC1EEE";
createNode transform -n "transform33" -p "polySurface18";
	rename -uid "91244CCE-48C2-BE4C-009F-E1996A48E9F8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform33";
	rename -uid "87C3BE6C-415E-9DD5-29C7-598E7816E21E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform32" -p "pCube6";
	rename -uid "6D4FDC7C-4643-A0C4-0EBE-5A9516606014";
	setAttr ".v" no;
createNode mesh -n "pCube6Shape" -p "transform32";
	rename -uid "F42B007D-4D1E-8C1B-9B7E-07BDABC58DB8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.60417380928993225 0.13366226106882095 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "FD404A06-4CD7-5D48-6F46-5EAAB2DECF87";
	setAttr ".t" -type "double3" 1.5426100262660754 0.063395519559059976 0 ;
	setAttr ".rp" -type "double3" 0 -0.20000000298023224 0 ;
	setAttr ".sp" -type "double3" 0 -0.20000000298023224 0 ;
createNode transform -n "transform34" -p "pCube7";
	rename -uid "9D29EAF9-493F-92EB-DEE9-1BB454B245B6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform34";
	rename -uid "B41F0440-492A-41CC-97C0-A3A8AF0C3F3C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.89870811 0 0 ;
	setAttr ".pt[1]" -type "float3" 0.89870811 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.89870811 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.89870811 0 0 ;
	setAttr ".pt[6]" -type "float3" 0.89870811 0 0 ;
	setAttr ".pt[7]" -type "float3" 0.89870811 0 0 ;
	setAttr ".pt[8]" -type "float3" 0.89870811 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.89870811 0 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube8";
	rename -uid "3FD6ACB2-48F4-FD56-0974-FA9A81B5DC37";
	setAttr ".rp" -type "double3" -1.820838451385498 0 0 ;
	setAttr ".sp" -type "double3" -1.820838451385498 0 0 ;
createNode transform -n "transform35" -p "pCube8";
	rename -uid "B77CA28E-4F95-D193-4BC0-D790D78AECC9";
	setAttr ".v" no;
createNode mesh -n "pCube8Shape" -p "transform35";
	rename -uid "69C18088-42E7-6D53-1656-EDA27E4B4D73";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe9";
	rename -uid "8A667BEA-4B3F-061D-70BB-28B5CD36C941";
	setAttr ".t" -type "double3" 2.4413181728667817 0.063445040849893747 2.4914912588026801 ;
	setAttr ".r" -type "double3" 0 55 90 ;
	setAttr ".rp" -type "double3" 0.40260606939838928 0.50000001853176068 -0.28190780472173371 ;
	setAttr ".rpt" -type "double3" -0.90260608793014896 -0.50000001853178377 -0.20958345408094642 ;
	setAttr ".sp" -type "double3" 0.40260606939838928 0.50000001853176068 -0.28190780472173371 ;
createNode transform -n "transform36" -p "pPipe9";
	rename -uid "9CF633B4-43D6-59DB-CA90-E8813554D234";
	setAttr ".v" no;
createNode mesh -n "pPipeShape7" -p "transform36";
	rename -uid "0DAF1D26-425D-A512-487A-7F9A9F503CF4";
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
createNode transform -n "pPipe10";
	rename -uid "24B1E392-4715-3426-CA3E-358DB37372F1";
	setAttr ".t" -type "double3" 2.4413181728667817 0.052810916570885214 -1.5085087411973201 ;
	setAttr ".r" -type "double3" 0 235 90 ;
	setAttr ".rp" -type "double3" 0.19911261607722017 0.50000001853176079 -0.57252657446743038 ;
	setAttr ".rpt" -type "double3" -0.69911263460900219 -0.1452200094091341 0.08103531566478317 ;
	setAttr ".sp" -type "double3" 0.19911261607722017 0.50000001853176079 -0.57252657446743038 ;
createNode transform -n "transform39" -p "pPipe10";
	rename -uid "9E33C569-4C20-764A-5469-F1BBEB3622EA";
	setAttr ".v" no;
createNode mesh -n "pPipeShape10" -p "transform39";
	rename -uid "77C60A10-4CC1-F828-E9E7-4FB3EF69434C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0 1 0.2 1 0.40000001
		 1 0.60000002 1 0.80000001 1 1 1 0 0.75 0.2 0.75 0.40000001 0.75 0.60000002 0.75 0.80000001
		 0.75 1 0.75 0 0.5 0.2 0.5 0.40000001 0.5 0.60000002 0.5 0.80000001 0.5 1 0.5 0 0.25
		 0.2 0.25 0.40000001 0.25 0.60000002 0.25 0.80000001 0.25 1 0.25 0 0 0.2 0 0.40000001
		 0 0.60000002 0 0.80000001 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.40000004 -0.5 -1.110223e-016 0.1236068 -0.5 -0.38042265
		 -0.32360685 -0.5 -0.23511411 -0.32360682 -0.5 0.23511416 0.12360685 -0.5 0.38042265
		 0.40000004 0.5 1.110223e-016 0.1236068 0.5 -0.38042265 -0.32360685 0.5 -0.23511411
		 -0.32360682 0.5 0.23511416 0.12360685 0.5 0.38042265 0.60000002 0.5 1.110223e-016
		 0.18541019 0.5 -0.57063395 -0.48541021 0.5 -0.35267115 -0.48541021 0.5 0.35267118
		 0.18541025 0.5 0.57063395 0.60000002 -0.5 -1.110223e-016 0.18541019 -0.5 -0.57063395
		 -0.48541021 -0.5 -0.35267115 -0.48541021 -0.5 0.35267118 0.18541025 -0.5 0.57063395;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 5 10 1 6 11 1 7 12 1 8 13 1 9 14 1
		 10 15 0 11 16 0 12 17 0 13 18 0 14 19 0 15 0 1 16 1 1 17 2 1 18 3 1 19 4 1;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 -1 20 5 -22
		mu 0 4 1 0 6 7
		f 4 -2 21 6 -23
		mu 0 4 2 1 7 8
		f 4 -3 22 7 -24
		mu 0 4 3 2 8 9
		f 4 -4 23 8 -25
		mu 0 4 4 3 9 10
		f 4 -5 24 9 -21
		mu 0 4 5 4 10 11
		f 4 -6 25 10 -27
		mu 0 4 7 6 12 13
		f 4 -7 26 11 -28
		mu 0 4 8 7 13 14
		f 4 -8 27 12 -29
		mu 0 4 9 8 14 15
		f 4 -9 28 13 -30
		mu 0 4 10 9 15 16
		f 4 -10 29 14 -26
		mu 0 4 11 10 16 17
		f 4 -11 30 15 -32
		mu 0 4 13 12 18 19
		f 4 -12 31 16 -33
		mu 0 4 14 13 19 20
		f 4 -13 32 17 -34
		mu 0 4 15 14 20 21
		f 4 -14 33 18 -35
		mu 0 4 16 15 21 22
		f 4 -15 34 19 -31
		mu 0 4 17 16 22 23
		f 4 -16 35 0 -37
		mu 0 4 19 18 24 25
		f 4 -17 36 1 -38
		mu 0 4 20 19 25 26
		f 4 -18 37 2 -39
		mu 0 4 21 20 26 27
		f 4 -19 38 3 -40
		mu 0 4 22 21 27 28
		f 4 -20 39 4 -36
		mu 0 4 23 22 28 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe11";
	rename -uid "E81C931D-4E0D-6403-5A41-1581DBFC12FA";
	setAttr ".rp" -type "double3" -1.820838451385498 0 0.10820910687704122 ;
	setAttr ".sp" -type "double3" -1.820838451385498 0 0.10820910687704122 ;
createNode transform -n "transform38" -p "pPipe11";
	rename -uid "EC9A4264-4CC9-1DA1-6956-14A8682A9E31";
	setAttr ".v" no;
createNode mesh -n "pPipe11Shape" -p "transform38";
	rename -uid "5326DA63-405A-6E8B-D44D-6E95F0158BD5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe12";
	rename -uid "AF664701-458C-D4C1-B82A-E0923A48F3E3";
	setAttr ".rp" -type "double3" -1.820838451385498 0 0.22514322865673808 ;
	setAttr ".sp" -type "double3" -1.820838451385498 0 0.22514322865673808 ;
createNode transform -n "transform41" -p "pPipe12";
	rename -uid "7A33E3A2-43E3-C212-5889-8DA6FC51158D";
	setAttr ".v" no;
createNode mesh -n "pPipe12Shape" -p "transform41";
	rename -uid "C1BFC2D2-4B12-9896-AD9A-EC960B88B47C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe13";
	rename -uid "62A4B264-4585-ED6E-0FB3-D7ACCD49DF1D";
	setAttr ".t" -type "double3" 1.820838451385498 0 4 ;
	setAttr ".r" -type "double3" 0 90.40000000000002 0 ;
	setAttr ".rp" -type "double3" 2.1793048469169092 0 0.00014329830240544791 ;
	setAttr ".rpt" -type "double3" -4.0001432983024072 0 -4.0001432983024054 ;
	setAttr ".sp" -type "double3" 2.1793048469169092 0 0.00014329830240544791 ;
createNode mesh -n "pPipe13Shape" -p "pPipe13";
	rename -uid "7175FADF-4796-23A3-1551-338923FFA1E9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49308833479881287 0.51100010052323341 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode polyReduce -n "polyReduce1";
	rename -uid "8DCDEE70-4773-0285-6F2A-83BAA219FE1E";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 35;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode groupParts -n "groupParts26";
	rename -uid "53831883-4007-DE34-0C10-1AACDD0393D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[320:1177]";
createNode groupParts -n "groupParts25";
	rename -uid "8DDB15A7-4D40-0C4D-8205-8289ABB6AD13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[240:319]";
createNode groupParts -n "groupParts24";
	rename -uid "36B0E863-4848-B55C-55A7-E782024258CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:239]";
createNode groupParts -n "groupParts23";
	rename -uid "2E952963-4013-D095-8E32-679D27AAF3A4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupParts -n "groupParts22";
	rename -uid "D8382B49-4431-17E5-4792-0991E09A8C2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode polyUnite -n "polyUnite8";
	rename -uid "F8652C52-4D84-1A8A-BBD4-949AC83E5771";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId30";
	rename -uid "ACAF2D74-47C2-A3B5-F1F5-C3AC99C753C8";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert5SG";
	rename -uid "CFC28055-431D-DC0B-9FA3-52AF7A2E3FB9";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 21 ".gn";
createNode materialInfo -n "materialInfo5";
	rename -uid "953781B6-40CC-3E5C-DF45-E9B42FB23579";
createNode file -n "file6";
	rename -uid "DE9D394D-4BA8-428B-AABD-50BCFC470FDD";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Downloads/spaceship_with_texture_-_Copy/weapon texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "BA8D9AB1-42D5-A549-986C-5E98E9B4BB0E";
createNode groupParts -n "groupParts21";
	rename -uid "73B87CA7-4198-0C18-CD46-B4AE9756DF7C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode polyPipe -n "polyPipe2";
	rename -uid "878070DD-4B0C-0331-CF93-D5BDD6152D20";
	setAttr ".sc" 0;
createNode groupId -n "groupId31";
	rename -uid "4712B6B7-44EC-D055-FBD6-33B8A985B6A5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "95366F16-453E-EE23-2A27-EF9C57F6465A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[240:1097]";
createNode groupParts -n "groupParts19";
	rename -uid "8E39DF52-42D9-8429-EF50-808376A2E546";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:239]";
createNode groupParts -n "groupParts18";
	rename -uid "BE54D281-4DE6-8CE2-6097-088CD99DC4EF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupParts -n "groupParts17";
	rename -uid "147DB6B9-400E-1202-507A-40B7BE15163A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode polyUnite -n "polyUnite7";
	rename -uid "CE78279B-43CD-30B4-D23D-FE820EC27DD7";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId24";
	rename -uid "311C3C74-4528-02AC-C5B7-1A8A29707548";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert4SG";
	rename -uid "A463C4A9-43B1-269E-6F61-CFB2B1503719";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 15 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "E2BBB76E-47A3-3AF6-5BDD-5DB1AC7DBCF8";
createNode file -n "file5";
	rename -uid "602A08C0-45A4-8095-185A-64B771889AAA";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Downloads/spaceship_with_texture_-_Copy/weapon texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "BD7FF132-480B-B229-35B6-CA81C5313BE4";
createNode groupId -n "groupId25";
	rename -uid "8143D4FB-4C7C-F338-AB60-4A809A151355";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "FFD65B5E-4681-934D-F3DD-87915DB55C30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:1017]";
createNode groupParts -n "groupParts15";
	rename -uid "41C8D64B-4173-625E-C031-5EA5D2836BF8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupParts -n "groupParts14";
	rename -uid "F6A77CBC-464C-BA0C-6EBA-62A1125CBD70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode polyUnite -n "polyUnite6";
	rename -uid "EBA883C3-4AA1-BE09-9BD8-A3BCA8B49927";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId19";
	rename -uid "4F8CFF34-4193-1B1B-E085-4792A63C6205";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert3SG";
	rename -uid "C5217060-438A-19A7-9FE4-9C8815AC16B4";
	setAttr ".ihi" 0;
	setAttr -s 16 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 16 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "C514919D-49AE-90DE-2C58-6CACAB84BD27";
createNode file -n "file4";
	rename -uid "1DC42E35-4B55-05D1-2B45-09A32157D753";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Downloads/spaceship_with_texture_-_Copy/weapon texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "7D4684BB-4CC8-27BD-3C8A-F6BE5ED315E9";
createNode groupParts -n "groupParts13";
	rename -uid "A5245E5F-4DCC-E709-1D6A-A79B1FFADC93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode polyPipe -n "polyPipe1";
	rename -uid "88D502C3-4D51-0555-E5D5-A5ACB44BF3BC";
	setAttr ".sc" 0;
createNode groupId -n "groupId20";
	rename -uid "58C63AC5-4A93-5871-23E5-F797524D7C36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "46BFE773-41AD-4C63-F90B-99A19D649DC9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:937]";
createNode groupParts -n "groupParts11";
	rename -uid "FFC2816D-4B4B-7643-4907-788B402AAEA8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode polyUnite -n "polyUnite5";
	rename -uid "FCDBA145-4554-9B11-5B33-9E89B73E54F6";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId13";
	rename -uid "A9026687-458D-6007-3AB6-248F0BA3BFE6";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert2SG";
	rename -uid "1C8298FD-4407-71D0-AA0E-9E953DA8AE21";
	setAttr ".ihi" 0;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 13 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "BA3F98F8-41BC-269D-29D7-48B7357474B8";
createNode file -n "file3";
	rename -uid "1DFFDCC4-4285-0268-4ED3-16A7332F0A92";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Downloads/spaceship_with_texture_-_Copy/weapon texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "811F85C6-4136-9127-F822-ED9B5E06F738";
createNode groupId -n "groupId14";
	rename -uid "7D2265A5-4CE4-7EC6-8D26-1C951225E902";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "52EA12E5-487C-D3FC-0A75-89A062C39C7D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:857]";
createNode polyUnite -n "polyUnite4";
	rename -uid "DE2ABA79-4A7E-E2B3-4002-A5A987E06538";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "groupParts6";
	rename -uid "775C3D6E-47DC-59AF-CCAB-EBAC31F95326";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:857]";
createNode polySeparate -n "polySeparate1";
	rename -uid "954615AE-4026-0854-64F5-49A38F305668";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "CBD0EFB9-43E0-5419-AB81-609C774DC33A";
	setAttr ".ics" -type "componentList" 1 "f[834]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 21.756664 2.4110892 0 ;
	setAttr ".rs" 62137;
	setAttr ".lt" -type "double3" 0 0 5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 21.756664276123047 0.26874732971191406 -5 ;
	setAttr ".cbx" -type "double3" 21.756664276123047 4.5534310340881348 5 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "C9C3DFF8-4F82-CA93-58B4-A8ACAB8BCFAF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[852:855]" -type "float3"  0 0.45205998 0 0 0.45205998
		 0 0 -0.77023047 0 0 -0.77023047 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "2E83EF32-4054-29D3-C88D-CFAD1376D069";
	setAttr ".ics" -type "componentList" 1 "f[824]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 21.756664 5.6152377 0 ;
	setAttr ".rs" 52574;
	setAttr ".lt" -type "double3" 0 0 5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 21.756664276123047 4.5534310340881348 -5 ;
	setAttr ".cbx" -type "double3" 21.756664276123047 6.6770448684692383 5 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "E19B90D5-4BC4-E417-2A64-3CA9EEF1F8E8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[848:851]" -type "float3"  0 1.27767038 0 0 1.27767038
		 0 0 -1.27300262 0 0 -1.27300262 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "842BCE5A-4DDD-9E74-711E-3890F4160F93";
	setAttr ".ics" -type "componentList" 1 "f[804]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 21.756664 8.4728956 0 ;
	setAttr ".rs" 42689;
	setAttr ".lt" -type "double3" 0 0 5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 21.756664276123047 6.6770443916320801 -5 ;
	setAttr ".cbx" -type "double3" 21.756664276123047 10.268747329711914 5 ;
createNode groupParts -n "groupParts5";
	rename -uid "38D915F0-496E-0E84-8A85-C0B160C94DD2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:845]";
createNode polyUnite -n "polyUnite2";
	rename -uid "36C9EE2E-4B16-AB8C-14E6-0284FB67FCBF";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "groupParts4";
	rename -uid "0F1CB807-45DD-A201-4FCA-72A1D05FC811";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode polyTorus -n "pasted__polyTorus1";
	rename -uid "16C092A7-4237-F39A-4D43-34A1DA3990C9";
createNode groupId -n "groupId6";
	rename -uid "0B477A5F-47D1-D065-AEDE-13A5BE15013B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "72FEBAE1-4F3F-F44A-BA9C-79A64D4BE21E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "F30AD811-4E2F-3E86-E094-0E9D98C7F79A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:445]";
createNode polyUnite -n "polyUnite1";
	rename -uid "FE5E19F3-4695-78CF-2C07-4BABE00E034E";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "D1AA2D0E-40B5-F0CA-089F-66BCAD437B03";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "41DE6A31-4280-128C-EDFA-03971B157CCB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode polyTorus -n "polyTorus1";
	rename -uid "85931B2D-4E73-A993-F7E3-78BCD29AC665";
createNode groupId -n "groupId2";
	rename -uid "77568FFA-4DD6-22D2-7403-E1AE6B146F1D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "81575B56-4E36-59DA-2AAE-0F8A3ADED212";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "FCF30031-47AF-4889-D1E9-53AFA0260C27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:45]";
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "EE75156B-467B-E6A0-EF62-4E87BA45F8D0";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 10 0 0 0 0 10 0 0 5.2687468242969739 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.284286 5.6091905 4 ;
	setAttr ".rs" 62912;
	setAttr ".lt" -type "double3" 0 0 10 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.900761604309082 4.542648704084419 3.9961764216423035 ;
	setAttr ".cbx" -type "double3" 6.6678106784820557 6.6757317495670545 4.4515824317932129 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "BB69F064-491A-3921-20CA-60BB1E4D35E7";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 10 0 0 0 0 10 0 0 5.2687468242969739 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.284286 5.60919 -4 ;
	setAttr ".rs" 65303;
	setAttr ".lt" -type "double3" -1.3322676295501878e-015 -4.1830572994502889e-016 
		10 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.900761604309082 4.5426481080379713 -4.541553258895874 ;
	setAttr ".cbx" -type "double3" 6.6678106784820557 6.6757317495670545 -4.1608589887619019 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "232E1449-4621-CAFA-660A-74984ED2CC5D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[4:5]" "e[18]" "e[26]" "e[34]" "e[36:37]" "e[49]" "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 10 0 0 0 0 10 0 0 5.2687468242969739 0 1;
	setAttr ".wt" 0.33138492703437805;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "F199AFDE-49A1-A4BA-D334-2E8301A18550";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[4:5]" "e[8:9]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 10 0 0 0 0 10 0 0 5.2687468242969739 0 1;
	setAttr ".wt" 0.3591703474521637;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "F013C215-4829-E0E9-174C-00A6D773B2A0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 10 0 0 0 0 10 0 0 5.2687468242969739 0 1;
	setAttr ".wt" 0.45367127656936646;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "9B2AC1BF-4E4A-6090-72EA-929ADFE9DDBE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 10 0 0 0 0 10 0 0 5.2687468242969739 0 1;
	setAttr ".wt" 0.338163822889328;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "0E509C49-4B23-10E6-10C1-39ACFC82FEFB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0.12851328 0 0 -0.18589371
		 0 0 -0.18589371 0 0 0.12851328 0;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "C7CBC342-464F-83FD-F612-39915425CE89";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 10 0 0 0 0 10 0 0 5.2687468242969739 0 1;
	setAttr ".wt" 0.53921842575073242;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "09518E6E-47B9-55DD-FEDC-A6A8B657E6AB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.3943505 -0.32916367 ;
	setAttr ".tk[2]" -type "float3" -1.4901161e-008 -0.27504173 -0.32916367 ;
	setAttr ".tk[4]" -type "float3" -1.4901161e-008 -0.27504173 0.27516249 ;
	setAttr ".tk[6]" -type "float3" 0 0.3943505 0.27516249 ;
createNode polyCube -n "polyCube1";
	rename -uid "C7521FFB-4C97-7BCA-14F7-5485458FEEFC";
	setAttr ".cuv" 4;
createNode groupId -n "groupId4";
	rename -uid "6AA52E2C-44E7-EDB5-6FD8-DCB502E7D24F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "FAC81EA5-4BCA-9F06-E1C1-E380F8B379DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "A82F774C-405D-0897-E468-72988DDABA1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "EF88F2BC-4AA0-DC0C-CA87-98B2DF468F9E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "088693C2-42B1-FCC2-E82A-2588A8356C9F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:457]";
createNode polyUnite -n "polyUnite3";
	rename -uid "F47A55E0-4824-476D-B9A3-5E972A46AD3B";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "groupParts7";
	rename -uid "B9C06DBF-4D0A-2D5B-F1EB-A38D61AF4532";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:857]";
createNode groupId -n "groupId10";
	rename -uid "1415A2D1-4AB8-A687-7822-AF9F186E2DBF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "C31B2B57-4BF8-DA40-A95F-9398F4DABCBB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:857]";
createNode groupId -n "groupId11";
	rename -uid "DC867961-4337-A521-4FD6-F68557437429";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "0E0A5AA8-4D56-0C0E-65C5-0D9769B57702";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "C8D16E9C-45D4-F3A8-DF21-93A97B84B91C";
	setAttr ".ihi" 0;
createNode shadingEngine -n "blinn1SG";
	rename -uid "67B6B7F8-450B-E207-9918-CC8C3334F710";
	setAttr ".ihi" 0;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 13 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "D49F0585-493F-5728-2D23-99B887C19508";
createNode file -n "file2";
	rename -uid "7081D844-414E-F6D6-4A5E-91886B8C7572";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Downloads/spaceship_with_texture_-_Copy/spaceship texture.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "310AB9EA-481B-E3EA-09FA-66A4F74882F8";
createNode groupId -n "groupId16";
	rename -uid "37A91213-4AB8-1436-B9D4-65A3EB0F0A43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "39179B83-4B59-3FBC-844D-75B18DDE2130";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "087D6E5F-47FF-44CE-F8A5-FAB11D3BAFD8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "6733986D-474B-6CAF-FA46-A5A12DF697EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "F6E16005-4171-49AF-2F5F-03A7DC02D1A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "3BD67D4F-42E5-2E59-16C6-BFBE8CAF1475";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "1F7DC3F3-4B5A-FC54-73E7-FCB0D27A001B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "2B97CAAA-4EB9-7E91-D1D8-85AA363649C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "9DD1B9AE-4710-FA5D-BF6D-0AA9AD4A3A43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "A04D9941-4557-51DB-BFB7-E49FFB275CB0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "5A35453A-4801-41A4-02E1-6CA2DC3A6E28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "28A1B48F-47BE-AF8A-62E8-26903889FA4F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "B233EDC6-4B1E-E28D-C377-C89FB08AAFFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "4E1D8402-494B-DE25-B812-599E404BC6AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "1343C891-4C71-6B05-D4CC-37A476393320";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C7A8FEFA-4455-6909-1916-6B92126D80A2";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E14967EE-4775-3134-EA45-4CA3C33295E5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "048FBB70-491E-FE0D-B050-45A215E8D0DF";
createNode displayLayerManager -n "layerManager";
	rename -uid "0AE2C35C-4A42-AAF8-4151-A1814C9F4E99";
createNode displayLayer -n "defaultLayer";
	rename -uid "9A79E999-4A82-34FE-E9A5-8D8D5C05995D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CC2EDEA1-4289-C0E6-A74F-1CAC15643F45";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7230FFB6-40DF-6D8F-CE2E-0AABD123BBB8";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "79CF46FD-4723-207D-6771-49A0F9F29A78";
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 858\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 858\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9D0A14F5-4D91-F2A1-131C-0D8A035D29E7";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySeparate -n "polySeparate2";
	rename -uid "61B3147C-4C2E-551B-0122-B4A6593EC084";
	setAttr ".ic" 7;
	setAttr -s 7 ".out";
createNode groupId -n "groupId37";
	rename -uid "FB392AED-4C99-E912-7FFF-4B8BBFDB1102";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "B4D328E1-435D-0271-70DA-A88B005E1BE8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId38";
	rename -uid "30BB2360-4793-BC8F-637A-29B5A06B7431";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "77213FB9-40C4-75F3-170B-A0B00CC32D82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupId -n "groupId39";
	rename -uid "C48B2A67-4929-3F64-06F3-F9B512882E76";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "532E8441-4ECF-DECD-DF59-B0BE356623ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:239]";
createNode groupId -n "groupId40";
	rename -uid "C5EEC30B-4983-B579-9800-AE8DBBAE323D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "99D0FD82-40E4-98F5-525E-C9BA7DF9D4C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[240:319]";
createNode groupId -n "groupId41";
	rename -uid "3C40C992-4E21-7CDC-9BA6-DE99776F1C0C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "3FB786DE-4C1C-CF99-EF26-0A8D4459B064";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[320:757]";
createNode groupId -n "groupId42";
	rename -uid "CD8F0BD2-4ED5-E586-B09B-84B077D9957E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "B7331F56-4162-996E-E98C-28A70E400646";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId43";
	rename -uid "AD779233-44BB-C88A-6ED1-4FB3FFC509F5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "B54C5059-4988-97E9-0898-64B210079113";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupId -n "groupId44";
	rename -uid "D1E4C55D-4D3F-0F00-C18B-91B1245AF0F5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "DA874F51-430E-1AAC-E58A-BBADB9513D82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:239]";
createNode groupId -n "groupId45";
	rename -uid "02371DDB-4B0B-CF71-1D53-BEBBC35F230E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "D2C3DEEE-4582-8DC9-45B9-D8B2ADD03EC2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[240:319]";
createNode groupId -n "groupId46";
	rename -uid "5AED2D61-4EB5-06DC-B084-91B61646326B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "1794BAB4-4EAB-4F1E-B2B3-949A45962342";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[320:757]";
createNode groupId -n "groupId47";
	rename -uid "C0D63955-4A3B-935F-D6FD-0393DCA1A4F3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "99B846DB-486E-0FC2-9CE4-BA8E1A9AD9A5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId48";
	rename -uid "85DA2FA6-4D17-D973-D23F-3BB87504C64E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "12E751F8-4E92-E98D-52F3-ED89BEF6462B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupId -n "groupId49";
	rename -uid "E275FAF9-417F-F4B9-5FBA-5DA61D7F12F7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "32EB8336-4B47-E761-CF79-158B8F856644";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:239]";
createNode groupId -n "groupId50";
	rename -uid "4C4E3087-46E6-13AE-E052-EDBDB8BD7DF0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "FCD795C4-447C-475D-4A31-2CA79AD7792F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[240:319]";
createNode groupId -n "groupId51";
	rename -uid "E075D6BA-4360-8376-3AE8-1FB0EC455F01";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "8E07829F-4027-C04A-BBAB-9393092C4A5D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[320:757]";
createNode groupId -n "groupId52";
	rename -uid "7444FE56-4635-CAC5-1843-B1B963C4C2CE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "8F07C2C4-4230-4E9B-6ED5-678F665AD788";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId53";
	rename -uid "50101C82-4E18-7C07-1924-F781BAE4FA82";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "56C52EC9-41B3-FC56-341D-B89757D9DBFF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupId -n "groupId54";
	rename -uid "42D9D0C7-43E6-862D-40CB-E193190C0C6B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "38CBC616-4233-2B27-D040-8E8C5CD50B72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:239]";
createNode groupId -n "groupId55";
	rename -uid "B33240B6-404B-A061-8050-81ADCD7A923F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "27FAE606-45B7-D477-2AD8-258B1FE8BC73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[240:319]";
createNode groupId -n "groupId56";
	rename -uid "8E1D1A77-4670-4635-F198-3FBC493FBF79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "298DD80E-4720-495A-A4C2-8082182BBBBB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[320:757]";
createNode groupId -n "groupId57";
	rename -uid "4AB8E1CA-4D82-7640-5E59-5F87B2C01B8E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "643E9343-4269-7E9A-71B3-F2BE058CC469";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId58";
	rename -uid "2C2B333F-40B7-A622-2DC0-09B5DA33092E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "51496637-496C-FF30-EB56-ECB72A4915B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupId -n "groupId59";
	rename -uid "DF490CB3-408F-51A0-64A1-7C8E70866DEC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "B3364161-44C5-06C6-359B-A3B89CC28A5D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:239]";
createNode groupId -n "groupId60";
	rename -uid "A177676A-4390-63AB-911B-838BB5D9BD8C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "698C918B-4DDB-2666-A22A-5A86CA9E2D1F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[240:319]";
createNode groupId -n "groupId61";
	rename -uid "0E0A7699-4B3E-43E5-424E-B6A7D31C9B70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "EDC303DB-4C56-CE0D-7AA9-FC8F3E8B7691";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[320:757]";
createNode groupId -n "groupId62";
	rename -uid "4779B653-46EA-7A24-C17B-63BC3943B24E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "21112BD2-4F5F-33C7-4499-FE8BBD32DE9F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId63";
	rename -uid "8EA2B896-44EE-FB78-64FF-5EA267C167B3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	rename -uid "28BC697B-4CE1-0AEC-027A-8DA0B85F86E5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupId -n "groupId64";
	rename -uid "51D15CB4-460E-941B-2FF2-4ABD59B59434";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "D7E2B891-419E-E4BA-ACAE-C180623E4EAA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:239]";
createNode groupId -n "groupId65";
	rename -uid "779FC434-4AEE-FE37-A0F8-C58B18AC47E6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	rename -uid "BBA0181A-46C3-1B26-B658-518F2ACA2646";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[240:319]";
createNode groupId -n "groupId66";
	rename -uid "6BE8E76E-437E-126E-EAFC-C7B747ECA02D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "C067A3BE-41E5-5FE5-E7A8-418623C1A887";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[320:757]";
createNode groupId -n "groupId67";
	rename -uid "E02AB66A-46E5-B0C8-A676-9B932727190E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	rename -uid "DB4CC240-4013-06DD-0738-AEBEE43D9B5B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId68";
	rename -uid "0CB50DE5-430C-4FCE-D9A2-64B74A67C3F9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "B34E381D-400B-CFDF-CDA1-98A58C7BE562";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:159]";
createNode groupId -n "groupId69";
	rename -uid "28833989-4359-F509-A1E7-C78E27C3AD9B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	rename -uid "A12DBBBF-460E-DF08-6662-02A331786BF0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[160:239]";
createNode groupId -n "groupId70";
	rename -uid "9987CED9-4625-7EFC-2C54-C3A4F119279B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	rename -uid "1FB4C523-415F-27FD-0F15-3FB0D3EAABED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[240:319]";
createNode groupId -n "groupId71";
	rename -uid "556DDC7D-4D0A-3182-51F4-87A3CFF25C9C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	rename -uid "B5FECAD4-459D-0839-87D7-D8810615AD70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[320:757]";
createNode polyUnite -n "polyUnite9";
	rename -uid "E4F82D46-48FC-A37A-F362-A4AAFDE67981";
	setAttr -s 7 ".ip";
	setAttr -s 7 ".im";
createNode groupId -n "groupId72";
	rename -uid "9D14BFC5-41BB-9F32-8AD5-419A24A36CA2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	rename -uid "F2D27088-4A01-1B4A-CEE7-E7B48DDF3996";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:137]" "f[238:317]" "f[438:757]";
createNode groupId -n "groupId73";
	rename -uid "F84F4495-4671-46D0-7592-B38619CE0258";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	rename -uid "7D9B488B-4CD3-A711-C50A-8CAC516AFFED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[138:217]" "f[318:397]";
createNode groupId -n "groupId74";
	rename -uid "523A301E-4891-8F64-0DCD-61BD767E9566";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	rename -uid "849D173F-4693-9F9F-DFEA-15B3605A7ED6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[218:237]" "f[398:437]";
createNode polySeparate -n "polySeparate3";
	rename -uid "0D452D4C-4322-A146-0899-11BD3995CCD4";
	setAttr ".ic" 7;
	setAttr -s 3 ".out";
createNode groupId -n "groupId75";
	rename -uid "698CD675-45E2-B653-19F7-F8BAEFF937CD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	rename -uid "268DE06A-4841-64DF-95E6-28B72FC51A2C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:137]" "f[238:317]" "f[438:757]";
createNode groupId -n "groupId76";
	rename -uid "7657A359-43D6-3112-5C56-9BA68E37831E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	rename -uid "05150059-4416-7B3B-7A47-1E85E3C72DF1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[138:217]" "f[318:397]";
createNode groupId -n "groupId77";
	rename -uid "D3CB1A46-4F19-B788-D7B6-1D91146F84DE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	rename -uid "7A1897EC-41E4-0961-2D24-CA95824947AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[218:237]" "f[398:437]";
createNode groupId -n "groupId84";
	rename -uid "7E61D0CC-4DC9-F25C-8C42-A0AA944BCC10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	rename -uid "026D7959-41E4-B831-DDC5-86892ED97284";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:137]" "f[238:317]" "f[438:757]";
createNode groupId -n "groupId85";
	rename -uid "6A12E57E-40C4-49BA-0859-2889D8FAD3F6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	rename -uid "69D595FC-4E36-68D6-49C4-3685F33173F0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[138:217]" "f[318:397]";
createNode groupId -n "groupId86";
	rename -uid "2E16C0EB-47A4-B466-7AD5-808A544138B5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	rename -uid "9A4B899D-45FF-DCBC-C787-509CE4148967";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[218:237]" "f[398:437]";
createNode groupId -n "groupId90";
	rename -uid "845CE4AF-4961-5DC1-E1CF-87AE832A5638";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	rename -uid "3695E3A7-49F8-1028-4170-EABE0B38D561";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:137]" "f[238:317]" "f[438:757]";
createNode groupId -n "groupId91";
	rename -uid "9C1DF89C-4ECB-755D-4AB8-2BA49F79CD01";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts81";
	rename -uid "B10D5422-4543-DFD1-49DA-F2853541A76E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[138:217]" "f[318:397]";
createNode groupId -n "groupId92";
	rename -uid "852FBF5F-4675-88A1-F3CA-5FA1893EDB1F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	rename -uid "0E9B6FF1-4D95-6F06-832E-6C98F05CE42D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[218:237]" "f[398:437]";
createNode polySplit -n "polySplit1";
	rename -uid "8ABC13B9-46FA-A267-743B-55B43AE2E471";
	setAttr -s 4 ".e[0:3]"  0.5 0.5 0.5 0.5;
	setAttr -s 4 ".d[0:3]"  -2147483642 -2147483608 -2147483588 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "A91BF3E9-4D62-2365-4B3C-A7B4ED3EE302";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 1 0.49999997 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483529 -2147483530 -2147483531 -2147483642 -2147483642 -2147483532 
		-2147483608 -2147483588 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube2";
	rename -uid "93484856-4A44-B349-8DED-C4B25C687354";
	setAttr ".h" 1.2;
	setAttr ".d" 0.45;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "D080E5EF-4D0D-3CB9-5EEC-6F8EEECC6183";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[5]" "e[7]" "e[9]" "e[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.496793796846787 0.077003574764306304 4 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak5";
	rename -uid "E498B0A9-4FEF-6E10-C8D5-AB9558575BDD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.018881679 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.018881679 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.018881679 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.018881679 0 ;
createNode polyUnite -n "polyUnite10";
	rename -uid "AFA29F5D-4843-B90A-52D7-23AC94FB8208";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId93";
	rename -uid "4A109E87-415D-CB60-36F4-D9B2BEB05A89";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts83";
	rename -uid "715866BC-45B2-77D6-ED29-5FA1B961BD99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "groupId94";
	rename -uid "3FE3A38D-4689-F094-8A3F-AF80BDDE89CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	rename -uid "8C6064B9-4D02-3FB9-57E0-BAA56F9FE8CB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	rename -uid "04B09DEE-4F19-F898-174F-3E825FF93D2A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "groupId96";
	rename -uid "0EE000D9-4548-34BD-486C-248A7712CD6E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts85";
	rename -uid "5DD19710-4E02-125D-63D9-EAB9678603B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:177]";
createNode groupId -n "groupId97";
	rename -uid "82FC76CA-4772-CA13-AD4D-278A4BFDD3CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	rename -uid "3DC1BEB9-4E91-EB5D-2E08-4991DCEEAD9C";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube3";
	rename -uid "94B9AA45-44AE-38A7-531B-2C85D398E6F0";
	setAttr ".h" 0.3;
	setAttr ".d" 4;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite11";
	rename -uid "A2CCCC3F-4F66-AB85-542B-B58C006B4A7A";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId99";
	rename -uid "E0BA7E98-4FF5-95BA-F748-68BFE90A3605";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	rename -uid "19B68761-4EDD-8F14-238C-999EE77FBAAE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId100";
	rename -uid "3AE2B0E6-42EA-AE24-86B7-CE9AD5A762CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	rename -uid "6F543194-4713-BC3A-FBAB-2498C5BCEC46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts87";
	rename -uid "2BC07938-465C-D270-A7AB-9397598AAECD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId102";
	rename -uid "ACD0B01E-4F2F-FE38-6702-0892B462A63F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	rename -uid "EA3A1AE3-4FA0-657D-4DC9-DF964D4047B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[10:76]";
createNode polySeparate -n "polySeparate4";
	rename -uid "CC00B513-45CE-0A51-D943-B2ADF79E2122";
	setAttr ".ic" 2;
createNode groupId -n "groupId105";
	rename -uid "2502D7F0-4D3B-0458-A43E-4A9D88FB9514";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts91";
	rename -uid "B4212BE3-4C5B-8DAD-7959-F8A146C63F71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId106";
	rename -uid "99B2FC98-4BE3-2BAE-8888-C89FC78CDD7C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts92";
	rename -uid "8A321C3C-47CD-F558-A32A-2287DF14562C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[10:76]";
createNode polyCube -n "polyCube4";
	rename -uid "F3F34D09-4998-D207-753E-A8AC10B6C17B";
	setAttr ".h" 0.42;
	setAttr ".d" 4;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite12";
	rename -uid "7D9CCFF5-4D3C-16F1-475A-B181DED44A93";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId107";
	rename -uid "65F69DF2-4A87-AD69-C792-0998F5034575";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts93";
	rename -uid "709B5989-4D74-49AB-8029-5B9AF1EE3522";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId108";
	rename -uid "249836EC-45B4-77FB-AED4-4EAEEB05C591";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	rename -uid "9B0302D7-41F2-C379-48CC-CCAC40376BE5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts94";
	rename -uid "CDC34934-4FEC-35E7-049E-0EAB3C6527BA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode groupId -n "groupId110";
	rename -uid "1D9DA541-4376-4E51-90FC-73BB0AE6691D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts95";
	rename -uid "48857A74-4D91-246F-3608-5B8B9083C3C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[20:76]";
createNode polyPipe -n "polyPipe3";
	rename -uid "48139D4D-46D2-E4CB-37A2-A098FA455CBA";
	setAttr ".r" 0.6;
	setAttr ".t" 0.2;
	setAttr ".sa" 5;
	setAttr ".sc" 0;
createNode polyUnite -n "polyUnite13";
	rename -uid "4C3BE495-4A7A-678A-F51B-2D96A99C8A66";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId111";
	rename -uid "5F78D4AD-4E3C-5E01-ED31-8B9BA8A0C379";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts96";
	rename -uid "5984E035-4702-98AF-8723-8BB31FF5D56D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode groupId -n "groupId112";
	rename -uid "F525A97D-4E16-52A6-920E-DC82A9752FA1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	rename -uid "0687B146-4A38-1692-4014-658FED11CF9A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts97";
	rename -uid "1FDC117A-44CA-52A8-E2C5-87B5A3DBA6F4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId114";
	rename -uid "8170F67F-4314-4877-59A1-A7A175463F95";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts98";
	rename -uid "4A09945D-4AD8-01E3-8AB7-17A1CD1AE6CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[40:96]";
createNode polyUnite -n "polyUnite14";
	rename -uid "715B7F4E-4EEE-6BFB-18E2-95AA3DF35025";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId115";
	rename -uid "6D24E681-43AF-2FDA-8A9C-DABDD2C6CC9D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts99";
	rename -uid "6145F122-4385-ED8C-A9E3-AA91B4E4870E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:39]" "f[97:114]";
createNode groupId -n "groupId116";
	rename -uid "BCA5DBB8-4AC0-1748-1188-73AE1C913AE8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts100";
	rename -uid "AD070FFB-4EEF-9FF2-35A7-D0BB07C3B970";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[40:96]" "f[115:274]";
createNode polyUnite -n "polyUnite15";
	rename -uid "4637D6D9-4248-A457-8FEF-55A3691F2433";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId117";
	rename -uid "0EDA89ED-4AD0-0A00-236D-6FA17FB42236";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	rename -uid "4FDAB8DC-4901-E191-AFFB-558AB51786F8";
	setAttr ".ihi" 0;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "0810E230-4745-78E8-AE01-6FB32AC45098";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:472]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 12.754963874816895 12.754963874816895 12.754963874816895 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyFlipUV -n "polyFlipUV1";
	rename -uid "5835D5E5-40D6-96BE-FEE3-1AB1EAC79B1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[33]" "f[37]" "f[41]" "f[45]" "f[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyFlipUV -n "polyFlipUV2";
	rename -uid "37CF5C94-43EA-3149-5A8E-3486B264C596";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "f[32]" "f[36]" "f[40]" "f[44]" "f[48]" "f[55]" "f[57:58]" "f[65:67]" "f[77]" "f[81]" "f[85]" "f[88:90]" "f[94:96]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "4ECAB77F-439A-BB75-2AA1-3C9F8745B019";
	setAttr ".uopa" yes;
	setAttr -s 106 ".uvtk";
	setAttr ".uvtk[476]" -type "float2" -0.2714152 0.14101645 ;
	setAttr ".uvtk[477]" -type "float2" -0.2714152 0.14101645 ;
	setAttr ".uvtk[478]" -type "float2" -0.2714152 0.14101645 ;
	setAttr ".uvtk[479]" -type "float2" -0.2714152 0.14101645 ;
	setAttr ".uvtk[480]" -type "float2" -0.2714152 0.14101645 ;
	setAttr ".uvtk[481]" -type "float2" -0.2714152 0.14101645 ;
	setAttr ".uvtk[482]" -type "float2" -0.2714152 0.14101645 ;
	setAttr ".uvtk[483]" -type "float2" -0.2714152 0.14101645 ;
	setAttr ".uvtk[484]" -type "float2" -0.2714152 0.14101645 ;
	setAttr ".uvtk[485]" -type "float2" -0.2714152 0.14101648 ;
	setAttr ".uvtk[486]" -type "float2" -0.2714152 0.14101648 ;
	setAttr ".uvtk[487]" -type "float2" -0.2714152 0.14101647 ;
	setAttr ".uvtk[488]" -type "float2" -0.2714152 0.14101647 ;
	setAttr ".uvtk[489]" -type "float2" -0.2714152 0.14101647 ;
	setAttr ".uvtk[490]" -type "float2" -0.2714152 0.14101647 ;
	setAttr ".uvtk[491]" -type "float2" -0.49749365 0.14101642 ;
	setAttr ".uvtk[492]" -type "float2" -0.49749365 0.14101645 ;
	setAttr ".uvtk[493]" -type "float2" -0.49749365 0.14101645 ;
	setAttr ".uvtk[494]" -type "float2" -0.49749365 0.14101642 ;
	setAttr ".uvtk[495]" -type "float2" -0.49749365 0.14101642 ;
	setAttr ".uvtk[496]" -type "float2" -0.49749365 0.14101648 ;
	setAttr ".uvtk[497]" -type "float2" -0.49749365 0.14101642 ;
	setAttr ".uvtk[498]" -type "float2" -0.49749365 0.14101645 ;
	setAttr ".uvtk[499]" -type "float2" -0.49749365 0.14101645 ;
	setAttr ".uvtk[500]" -type "float2" -0.49749365 0.14101647 ;
	setAttr ".uvtk[501]" -type "float2" -0.49749365 0.14101647 ;
	setAttr ".uvtk[502]" -type "float2" -0.49749365 0.14101645 ;
	setAttr ".uvtk[503]" -type "float2" -0.49749365 0.14101645 ;
	setAttr ".uvtk[504]" -type "float2" -0.49749365 0.14101645 ;
	setAttr ".uvtk[505]" -type "float2" -0.49749365 0.14101645 ;
	setAttr ".uvtk[514]" -type "float2" -0.051514786 -0.24269679 ;
	setAttr ".uvtk[515]" -type "float2" -0.051514786 -0.24269679 ;
	setAttr ".uvtk[516]" -type "float2" -0.051514786 -0.24269679 ;
	setAttr ".uvtk[517]" -type "float2" -0.051514786 -0.24269679 ;
	setAttr ".uvtk[518]" -type "float2" -0.039564956 -0.24269694 ;
	setAttr ".uvtk[519]" -type "float2" -0.039564956 -0.24269691 ;
	setAttr ".uvtk[520]" -type "float2" -0.039564956 -0.24269694 ;
	setAttr ".uvtk[521]" -type "float2" -0.039564956 -0.24269694 ;
	setAttr ".uvtk[834]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[835]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[836]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[837]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[838]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[839]" -type "float2" -0.30830428 0.14101639 ;
	setAttr ".uvtk[840]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[841]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[842]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[843]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[844]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[845]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[846]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[847]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[848]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[849]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[850]" -type "float2" -0.30830431 0.14101633 ;
	setAttr ".uvtk[851]" -type "float2" -0.30830431 0.14101633 ;
	setAttr ".uvtk[852]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[853]" -type "float2" -0.30830431 0.14101639 ;
	setAttr ".uvtk[854]" -type "float2" -0.30830431 0.14101633 ;
	setAttr ".uvtk[855]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[856]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[857]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[858]" -type "float2" -0.30830428 0.14101641 ;
	setAttr ".uvtk[859]" -type "float2" -0.30830431 0.14101633 ;
	setAttr ".uvtk[860]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[861]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[862]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[863]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[864]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[865]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[866]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[867]" -type "float2" -0.30830431 0.14101641 ;
	setAttr ".uvtk[868]" -type "float2" -0.53457767 0.14101645 ;
	setAttr ".uvtk[869]" -type "float2" -0.53457767 0.14101648 ;
	setAttr ".uvtk[870]" -type "float2" -0.53457767 0.14101648 ;
	setAttr ".uvtk[871]" -type "float2" -0.53457767 0.14101645 ;
	setAttr ".uvtk[872]" -type "float2" -0.53457767 0.14101645 ;
	setAttr ".uvtk[873]" -type "float2" -0.53457767 0.14101645 ;
	setAttr ".uvtk[874]" -type "float2" -0.53457767 0.14101648 ;
	setAttr ".uvtk[875]" -type "float2" -0.53457767 0.14101645 ;
	setAttr ".uvtk[876]" -type "float2" -0.53457767 0.14101639 ;
	setAttr ".uvtk[877]" -type "float2" -0.53457767 0.14101639 ;
	setAttr ".uvtk[878]" -type "float2" -0.53457767 0.14101648 ;
	setAttr ".uvtk[879]" -type "float2" -0.53457767 0.14101648 ;
	setAttr ".uvtk[880]" -type "float2" -0.53457767 0.14101645 ;
	setAttr ".uvtk[881]" -type "float2" -0.53457767 0.14101648 ;
	setAttr ".uvtk[882]" -type "float2" -0.53457767 0.14101645 ;
	setAttr ".uvtk[883]" -type "float2" -0.53457767 0.14101639 ;
	setAttr ".uvtk[884]" -type "float2" -0.53457767 0.14101639 ;
	setAttr ".uvtk[885]" -type "float2" -0.53457767 0.14101639 ;
	setAttr ".uvtk[886]" -type "float2" -0.53457767 0.14101647 ;
	setAttr ".uvtk[887]" -type "float2" -0.53457767 0.14101647 ;
	setAttr ".uvtk[888]" -type "float2" -0.53457767 0.14101645 ;
	setAttr ".uvtk[889]" -type "float2" -0.53457767 0.14101639 ;
	setAttr ".uvtk[890]" -type "float2" -0.53457767 0.14101639 ;
	setAttr ".uvtk[891]" -type "float2" -0.53457767 0.14101647 ;
	setAttr ".uvtk[892]" -type "float2" -0.53457767 0.14101647 ;
	setAttr ".uvtk[893]" -type "float2" -0.53457767 0.14101647 ;
	setAttr ".uvtk[894]" -type "float2" -0.53457767 0.14101648 ;
	setAttr ".uvtk[895]" -type "float2" -0.53457767 0.14101648 ;
	setAttr ".uvtk[896]" -type "float2" -0.53457767 0.14101639 ;
	setAttr ".uvtk[897]" -type "float2" -0.53457767 0.14101647 ;
	setAttr ".uvtk[898]" -type "float2" -0.53457767 0.14101647 ;
	setAttr ".uvtk[899]" -type "float2" -0.53457767 0.14101647 ;
	setAttr ".uvtk[900]" -type "float2" -0.53457767 0.14101647 ;
	setAttr ".uvtk[901]" -type "float2" -0.53457767 0.14101647 ;
createNode polyFlipUV -n "polyFlipUV3";
	rename -uid "CFC52780-4362-990F-D114-E183A0906585";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "1547BF32-42F1-1600-419F-4A8064DEA065";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[506:517]" -type "float2" -0.36815178 0.24739243 -0.36815178
		 0.24739242 -0.36815178 0.2473924 -0.36815178 0.24739243 -0.11104374 0.24739243 -0.11104374
		 0.24739243 -0.11104374 0.24739243 -0.11104374 0.2473924 -0.10000002 4.4703501e-008
		 -0.10000002 4.4703501e-008 -0.10000004 4.4703501e-008 -0.10000004 4.4703501e-008;
createNode polyFlipUV -n "polyFlipUV4";
	rename -uid "35850066-4769-4D5F-2F31-DCB31347EDBE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[70]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "D5E06808-41B5-D275-007D-8DB002798253";
	setAttr ".uopa" yes;
	setAttr -s 430 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 0.10782208 0.036060967 ;
	setAttr ".uvtk[21]" -type "float2" 0.10782208 0.036060974 ;
	setAttr ".uvtk[22]" -type "float2" 0.10782208 0.036060974 ;
	setAttr ".uvtk[23]" -type "float2" 0.10782208 0.036060967 ;
	setAttr ".uvtk[24]" -type "float2" 0.10782208 0.036060967 ;
	setAttr ".uvtk[25]" -type "float2" 0.10782208 0.036060967 ;
	setAttr ".uvtk[26]" -type "float2" 0.076638952 0.036060978 ;
	setAttr ".uvtk[27]" -type "float2" 0.076638952 0.036060978 ;
	setAttr ".uvtk[28]" -type "float2" 0.076638952 0.036060978 ;
	setAttr ".uvtk[29]" -type "float2" 0.076638952 0.036060978 ;
	setAttr ".uvtk[30]" -type "float2" 0.076638952 0.036060974 ;
	setAttr ".uvtk[31]" -type "float2" 0.076638952 0.036060974 ;
	setAttr ".uvtk[464]" -type "float2" 0.39251271 0.036061037 ;
	setAttr ".uvtk[465]" -type "float2" 0.39251271 0.036061037 ;
	setAttr ".uvtk[466]" -type "float2" 0.39251277 0.036061041 ;
	setAttr ".uvtk[467]" -type "float2" 0.39251277 0.036061041 ;
	setAttr ".uvtk[468]" -type "float2" 0.39251271 0.036061041 ;
	setAttr ".uvtk[469]" -type "float2" 0.39251271 0.036061041 ;
	setAttr ".uvtk[470]" -type "float2" 0.27947348 0.036061 ;
	setAttr ".uvtk[471]" -type "float2" 0.27947345 0.036061 ;
	setAttr ".uvtk[472]" -type "float2" 0.27947348 0.036061004 ;
	setAttr ".uvtk[473]" -type "float2" 0.27947351 0.036061004 ;
	setAttr ".uvtk[474]" -type "float2" 0.27947345 0.036061011 ;
	setAttr ".uvtk[475]" -type "float2" 0.27947348 0.036061011 ;
	setAttr ".uvtk[506]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[507]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[508]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[509]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[510]" -type "float2" -0.29999998 -0.35000002 ;
	setAttr ".uvtk[511]" -type "float2" -0.29999998 -0.34999999 ;
	setAttr ".uvtk[512]" -type "float2" -0.29999998 -0.34999999 ;
	setAttr ".uvtk[513]" -type "float2" -0.29999998 -0.34999999 ;
	setAttr ".uvtk[514]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[515]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[516]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[517]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[518]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[519]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[520]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[521]" -type "float2" -0.15000001 -0.34999999 ;
	setAttr ".uvtk[554]" -type "float2" -0.39993238 -0.002309233 ;
	setAttr ".uvtk[555]" -type "float2" -0.39993232 -0.002309233 ;
	setAttr ".uvtk[556]" -type "float2" -0.39993232 -0.0023092404 ;
	setAttr ".uvtk[557]" -type "float2" -0.39993238 -0.0023092404 ;
	setAttr ".uvtk[558]" -type "float2" -0.39993232 -0.002309233 ;
	setAttr ".uvtk[559]" -type "float2" -0.39993232 -0.0023092404 ;
	setAttr ".uvtk[560]" -type "float2" -0.39993232 -0.002309233 ;
	setAttr ".uvtk[561]" -type "float2" -0.39993232 -0.0023092404 ;
	setAttr ".uvtk[562]" -type "float2" -0.39993238 -0.002309233 ;
	setAttr ".uvtk[563]" -type "float2" -0.39993238 -0.0023092404 ;
	setAttr ".uvtk[564]" -type "float2" -0.39993232 -0.002309233 ;
	setAttr ".uvtk[565]" -type "float2" -0.39993232 -0.0023092404 ;
	setAttr ".uvtk[566]" -type "float2" -0.39993232 -0.002309233 ;
	setAttr ".uvtk[567]" -type "float2" -0.39993232 -0.0023092404 ;
	setAttr ".uvtk[568]" -type "float2" -0.37202358 -0.0023091286 ;
	setAttr ".uvtk[569]" -type "float2" -0.37202358 -0.0023091286 ;
	setAttr ".uvtk[570]" -type "float2" -0.37202358 -0.0023091212 ;
	setAttr ".uvtk[571]" -type "float2" -0.37202358 -0.0023091212 ;
	setAttr ".uvtk[572]" -type "float2" -0.37202358 -0.0023091286 ;
	setAttr ".uvtk[573]" -type "float2" -0.37202358 -0.0023091212 ;
	setAttr ".uvtk[574]" -type "float2" -0.37202364 -0.0023091286 ;
	setAttr ".uvtk[575]" -type "float2" -0.37202364 -0.0023091212 ;
	setAttr ".uvtk[576]" -type "float2" -0.37202358 -0.0023091286 ;
	setAttr ".uvtk[577]" -type "float2" -0.37202358 -0.0023091212 ;
	setAttr ".uvtk[578]" -type "float2" -0.37202364 -0.0023091286 ;
	setAttr ".uvtk[579]" -type "float2" -0.37202364 -0.0023091212 ;
	setAttr ".uvtk[580]" -type "float2" -0.37202358 -0.0023091286 ;
	setAttr ".uvtk[581]" -type "float2" -0.37202358 -0.0023091212 ;
	setAttr ".uvtk[582]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[583]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[584]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[585]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[586]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[587]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[588]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[589]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[590]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[591]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[592]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[593]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[594]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[595]" -type "float2" -0.28958604 -0.0023091435 ;
	setAttr ".uvtk[596]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[597]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[598]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[599]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[600]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[601]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[602]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[603]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[604]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[605]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[606]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[607]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[608]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[609]" -type "float2" -0.24603899 -0.0023092553 ;
	setAttr ".uvtk[610]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[611]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[612]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[613]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[614]" -type "float2" -0.19731762 0.16587882 ;
	setAttr ".uvtk[615]" -type "float2" -0.19731762 0.16587882 ;
	setAttr ".uvtk[616]" -type "float2" -0.19731762 0.16587882 ;
	setAttr ".uvtk[617]" -type "float2" -0.19731762 0.16587882 ;
	setAttr ".uvtk[618]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[619]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[620]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[621]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[622]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[623]" -type "float2" -0.19731767 0.16587882 ;
	setAttr ".uvtk[624]" -type "float2" -0.2265518 0.16587889 ;
	setAttr ".uvtk[625]" -type "float2" -0.2265518 0.16587889 ;
	setAttr ".uvtk[626]" -type "float2" -0.2265518 0.16587888 ;
	setAttr ".uvtk[627]" -type "float2" -0.2265518 0.16587888 ;
	setAttr ".uvtk[628]" -type "float2" -0.2265518 0.16587889 ;
	setAttr ".uvtk[629]" -type "float2" -0.2265518 0.16587888 ;
	setAttr ".uvtk[630]" -type "float2" -0.2265518 0.16587889 ;
	setAttr ".uvtk[631]" -type "float2" -0.2265518 0.16587888 ;
	setAttr ".uvtk[632]" -type "float2" -0.2265518 0.16587889 ;
	setAttr ".uvtk[633]" -type "float2" -0.2265518 0.16587888 ;
	setAttr ".uvtk[634]" -type "float2" -0.2265518 0.16587889 ;
	setAttr ".uvtk[635]" -type "float2" -0.2265518 0.16587888 ;
	setAttr ".uvtk[636]" -type "float2" -0.2265518 0.16587889 ;
	setAttr ".uvtk[637]" -type "float2" -0.2265518 0.16587888 ;
	setAttr ".uvtk[638]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[639]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[640]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[641]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[642]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[643]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[644]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[645]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[646]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[647]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[648]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[649]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[650]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[651]" -type "float2" -0.2103149 0.16587889 ;
	setAttr ".uvtk[652]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[653]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[654]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[655]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[656]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[657]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[658]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[659]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[660]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[661]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[662]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[663]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[664]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[665]" -type "float2" -0.25514087 0.16587882 ;
	setAttr ".uvtk[682]" -type "float2" -0.25702095 -0.0023090392 ;
	setAttr ".uvtk[683]" -type "float2" -0.25702089 -0.0023090392 ;
	setAttr ".uvtk[684]" -type "float2" -0.25702089 -0.0023090318 ;
	setAttr ".uvtk[685]" -type "float2" -0.25702095 -0.0023090318 ;
	setAttr ".uvtk[686]" -type "float2" -0.25702095 -0.0023090392 ;
	setAttr ".uvtk[687]" -type "float2" -0.25702095 -0.0023090318 ;
	setAttr ".uvtk[688]" -type "float2" -0.25702089 -0.0023090392 ;
	setAttr ".uvtk[689]" -type "float2" -0.25702089 -0.0023090318 ;
	setAttr ".uvtk[690]" -type "float2" -0.25702095 -0.0023090392 ;
	setAttr ".uvtk[691]" -type "float2" -0.25702095 -0.0023090318 ;
	setAttr ".uvtk[692]" -type "float2" -0.25702089 -0.0023090392 ;
	setAttr ".uvtk[693]" -type "float2" -0.25702089 -0.0023090318 ;
	setAttr ".uvtk[694]" -type "float2" -0.25702089 -0.0023090392 ;
	setAttr ".uvtk[695]" -type "float2" -0.25702089 -0.0023090318 ;
	setAttr ".uvtk[696]" -type "float2" -0.2291121 -0.0023091733 ;
	setAttr ".uvtk[697]" -type "float2" -0.22911216 -0.0023091733 ;
	setAttr ".uvtk[698]" -type "float2" -0.22911216 -0.0023091808 ;
	setAttr ".uvtk[699]" -type "float2" -0.2291121 -0.0023091808 ;
	setAttr ".uvtk[700]" -type "float2" -0.22911216 -0.0023091733 ;
	setAttr ".uvtk[701]" -type "float2" -0.22911216 -0.0023091808 ;
	setAttr ".uvtk[702]" -type "float2" -0.22911216 -0.0023091733 ;
	setAttr ".uvtk[703]" -type "float2" -0.22911216 -0.0023091808 ;
	setAttr ".uvtk[704]" -type "float2" -0.2291121 -0.0023091733 ;
	setAttr ".uvtk[705]" -type "float2" -0.2291121 -0.0023091808 ;
	setAttr ".uvtk[706]" -type "float2" -0.22911216 -0.0023091733 ;
	setAttr ".uvtk[707]" -type "float2" -0.22911216 -0.0023091808 ;
	setAttr ".uvtk[708]" -type "float2" -0.22911216 -0.0023091733 ;
	setAttr ".uvtk[709]" -type "float2" -0.22911216 -0.0023091808 ;
	setAttr ".uvtk[710]" -type "float2" -0.1466746 -0.061944708 ;
	setAttr ".uvtk[711]" -type "float2" -0.1466746 -0.061944708 ;
	setAttr ".uvtk[712]" -type "float2" -0.1466746 -0.061944693 ;
	setAttr ".uvtk[713]" -type "float2" -0.1466746 -0.061944693 ;
	setAttr ".uvtk[714]" -type "float2" -0.1466746 -0.061944708 ;
	setAttr ".uvtk[715]" -type "float2" -0.1466746 -0.061944693 ;
	setAttr ".uvtk[716]" -type "float2" -0.1466746 -0.061944708 ;
	setAttr ".uvtk[717]" -type "float2" -0.1466746 -0.061944693 ;
	setAttr ".uvtk[718]" -type "float2" -0.1466746 -0.061944708 ;
	setAttr ".uvtk[719]" -type "float2" -0.1466746 -0.061944693 ;
	setAttr ".uvtk[720]" -type "float2" -0.1466746 -0.061944708 ;
	setAttr ".uvtk[721]" -type "float2" -0.1466746 -0.061944693 ;
	setAttr ".uvtk[722]" -type "float2" -0.1466746 -0.061944708 ;
	setAttr ".uvtk[723]" -type "float2" -0.1466746 -0.061944693 ;
	setAttr ".uvtk[724]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[725]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[726]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[727]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[728]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[729]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[730]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[731]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[732]" -type "float2" -0.10312756 -0.061944693 ;
	setAttr ".uvtk[733]" -type "float2" -0.10312756 -0.061944693 ;
	setAttr ".uvtk[734]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[735]" -type "float2" -0.1031275 -0.061944693 ;
	setAttr ".uvtk[736]" -type "float2" -0.10312756 -0.061944693 ;
	setAttr ".uvtk[737]" -type "float2" -0.10312756 -0.061944693 ;
	setAttr ".uvtk[738]" -type "float2" -0.34543803 0.16587883 ;
	setAttr ".uvtk[739]" -type "float2" -0.34543797 0.16587883 ;
	setAttr ".uvtk[740]" -type "float2" -0.34543797 0.16587883 ;
	setAttr ".uvtk[741]" -type "float2" -0.34543803 0.16587883 ;
	setAttr ".uvtk[742]" -type "float2" -0.34543797 0.16587883 ;
	setAttr ".uvtk[743]" -type "float2" -0.34543797 0.16587883 ;
	setAttr ".uvtk[744]" -type "float2" -0.34543797 0.16587883 ;
	setAttr ".uvtk[745]" -type "float2" -0.34543797 0.16587883 ;
	setAttr ".uvtk[746]" -type "float2" -0.34543803 0.16587883 ;
	setAttr ".uvtk[747]" -type "float2" -0.34543803 0.16587883 ;
	setAttr ".uvtk[748]" -type "float2" -0.34543803 0.16587883 ;
	setAttr ".uvtk[749]" -type "float2" -0.34543803 0.16587883 ;
	setAttr ".uvtk[750]" -type "float2" -0.34543803 0.16587883 ;
	setAttr ".uvtk[751]" -type "float2" -0.34543803 0.16587883 ;
	setAttr ".uvtk[752]" -type "float2" -0.37467235 0.16587889 ;
	setAttr ".uvtk[753]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[754]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[755]" -type "float2" -0.37467235 0.16587889 ;
	setAttr ".uvtk[756]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[757]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[758]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[759]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[760]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[761]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[762]" -type "float2" -0.37467235 0.16587889 ;
	setAttr ".uvtk[763]" -type "float2" -0.37467235 0.16587889 ;
	setAttr ".uvtk[764]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[765]" -type "float2" -0.37467229 0.16587889 ;
	setAttr ".uvtk[766]" -type "float2" -0.35843536 0.16587891 ;
	setAttr ".uvtk[767]" -type "float2" -0.35843536 0.16587891 ;
	setAttr ".uvtk[768]" -type "float2" -0.35843536 0.16587889 ;
	setAttr ".uvtk[769]" -type "float2" -0.35843536 0.16587889 ;
	setAttr ".uvtk[770]" -type "float2" -0.35843536 0.16587891 ;
	setAttr ".uvtk[771]" -type "float2" -0.35843536 0.16587889 ;
	setAttr ".uvtk[772]" -type "float2" -0.35843536 0.16587891 ;
	setAttr ".uvtk[773]" -type "float2" -0.35843536 0.16587889 ;
	setAttr ".uvtk[774]" -type "float2" -0.35843536 0.16587891 ;
	setAttr ".uvtk[775]" -type "float2" -0.35843536 0.16587889 ;
	setAttr ".uvtk[776]" -type "float2" -0.35843536 0.16587891 ;
	setAttr ".uvtk[777]" -type "float2" -0.35843536 0.16587889 ;
	setAttr ".uvtk[778]" -type "float2" -0.35843536 0.16587891 ;
	setAttr ".uvtk[779]" -type "float2" -0.35843536 0.16587889 ;
	setAttr ".uvtk[780]" -type "float2" -0.38895053 -0.0023907572 ;
	setAttr ".uvtk[781]" -type "float2" -0.38895053 -0.0023907572 ;
	setAttr ".uvtk[782]" -type "float2" -0.38895053 -0.0023907572 ;
	setAttr ".uvtk[783]" -type "float2" -0.38895053 -0.0023907572 ;
	setAttr ".uvtk[784]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[785]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[786]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[787]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[788]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[789]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[790]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[791]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[792]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[793]" -type "float2" -0.38895059 -0.0023907572 ;
	setAttr ".uvtk[812]" -type "float2" -0.048063438 -0.018905504 ;
	setAttr ".uvtk[813]" -type "float2" -0.048063438 -0.018905504 ;
	setAttr ".uvtk[814]" -type "float2" -0.048063438 -0.018905504 ;
	setAttr ".uvtk[815]" -type "float2" -0.048063438 -0.018905504 ;
	setAttr ".uvtk[816]" -type "float2" -0.048063438 -0.018905504 ;
	setAttr ".uvtk[817]" -type "float2" -0.048063438 -0.018905504 ;
	setAttr ".uvtk[918]" -type "float2" -0.38597795 -0.0023092479 ;
	setAttr ".uvtk[919]" -type "float2" -0.38597795 -0.0023092479 ;
	setAttr ".uvtk[920]" -type "float2" -0.38597795 -0.0023092404 ;
	setAttr ".uvtk[921]" -type "float2" -0.38597795 -0.0023092404 ;
	setAttr ".uvtk[922]" -type "float2" -0.38597795 -0.0023092479 ;
	setAttr ".uvtk[923]" -type "float2" -0.38597795 -0.0023092404 ;
	setAttr ".uvtk[924]" -type "float2" -0.38597795 -0.0023092479 ;
	setAttr ".uvtk[925]" -type "float2" -0.38597795 -0.0023092404 ;
	setAttr ".uvtk[926]" -type "float2" -0.38597795 -0.0023092479 ;
	setAttr ".uvtk[927]" -type "float2" -0.38597795 -0.0023092404 ;
	setAttr ".uvtk[928]" -type "float2" -0.35806915 -0.0023090392 ;
	setAttr ".uvtk[929]" -type "float2" -0.35806915 -0.0023090392 ;
	setAttr ".uvtk[930]" -type "float2" -0.35806915 -0.0023090318 ;
	setAttr ".uvtk[931]" -type "float2" -0.35806915 -0.0023090318 ;
	setAttr ".uvtk[932]" -type "float2" -0.35806915 -0.0023090392 ;
	setAttr ".uvtk[933]" -type "float2" -0.35806915 -0.0023090318 ;
	setAttr ".uvtk[934]" -type "float2" -0.35806915 -0.0023090392 ;
	setAttr ".uvtk[935]" -type "float2" -0.35806915 -0.0023090318 ;
	setAttr ".uvtk[936]" -type "float2" -0.35806915 -0.0023090392 ;
	setAttr ".uvtk[937]" -type "float2" -0.35806915 -0.0023090318 ;
	setAttr ".uvtk[938]" -type "float2" -0.26781246 -0.0023090616 ;
	setAttr ".uvtk[939]" -type "float2" -0.26781246 -0.0023090616 ;
	setAttr ".uvtk[940]" -type "float2" -0.26781246 -0.0023090467 ;
	setAttr ".uvtk[941]" -type "float2" -0.26781246 -0.0023090467 ;
	setAttr ".uvtk[942]" -type "float2" -0.26781246 -0.0023090616 ;
	setAttr ".uvtk[943]" -type "float2" -0.26781246 -0.0023090467 ;
	setAttr ".uvtk[944]" -type "float2" -0.26781252 -0.0023090616 ;
	setAttr ".uvtk[945]" -type "float2" -0.26781252 -0.0023090467 ;
	setAttr ".uvtk[946]" -type "float2" -0.26781252 -0.0023090616 ;
	setAttr ".uvtk[947]" -type "float2" -0.26781252 -0.0023090467 ;
	setAttr ".uvtk[948]" -type "float2" -0.22426555 -0.0023092553 ;
	setAttr ".uvtk[949]" -type "float2" -0.22426555 -0.0023092553 ;
	setAttr ".uvtk[950]" -type "float2" -0.22426555 -0.0023092553 ;
	setAttr ".uvtk[951]" -type "float2" -0.22426555 -0.0023092553 ;
	setAttr ".uvtk[952]" -type "float2" -0.22426561 -0.0023092553 ;
	setAttr ".uvtk[953]" -type "float2" -0.22426561 -0.0023092553 ;
	setAttr ".uvtk[954]" -type "float2" -0.22426561 -0.0023092553 ;
	setAttr ".uvtk[955]" -type "float2" -0.22426561 -0.0023092553 ;
	setAttr ".uvtk[956]" -type "float2" -0.22426561 -0.0023092553 ;
	setAttr ".uvtk[957]" -type "float2" -0.22426561 -0.0023092553 ;
	setAttr ".uvtk[958]" -type "float2" -0.21167083 0.16587882 ;
	setAttr ".uvtk[959]" -type "float2" -0.21167083 0.16587882 ;
	setAttr ".uvtk[960]" -type "float2" -0.21167083 0.1658788 ;
	setAttr ".uvtk[961]" -type "float2" -0.21167083 0.1658788 ;
	setAttr ".uvtk[962]" -type "float2" -0.21167083 0.16587882 ;
	setAttr ".uvtk[963]" -type "float2" -0.21167083 0.1658788 ;
	setAttr ".uvtk[964]" -type "float2" -0.21167083 0.16587882 ;
	setAttr ".uvtk[965]" -type "float2" -0.21167083 0.1658788 ;
	setAttr ".uvtk[966]" -type "float2" -0.21167089 0.16587882 ;
	setAttr ".uvtk[967]" -type "float2" -0.21167089 0.1658788 ;
	setAttr ".uvtk[968]" -type "float2" -0.24090503 0.1658788 ;
	setAttr ".uvtk[969]" -type "float2" -0.24090509 0.1658788 ;
	setAttr ".uvtk[970]" -type "float2" -0.24090509 0.1658788 ;
	setAttr ".uvtk[971]" -type "float2" -0.24090503 0.1658788 ;
	setAttr ".uvtk[972]" -type "float2" -0.24090509 0.1658788 ;
	setAttr ".uvtk[973]" -type "float2" -0.24090509 0.1658788 ;
	setAttr ".uvtk[974]" -type "float2" -0.24090509 0.1658788 ;
	setAttr ".uvtk[975]" -type "float2" -0.24090509 0.1658788 ;
	setAttr ".uvtk[976]" -type "float2" -0.24090503 0.1658788 ;
	setAttr ".uvtk[977]" -type "float2" -0.24090503 0.1658788 ;
	setAttr ".uvtk[978]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[979]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[980]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[981]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[982]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[983]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[984]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[985]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[986]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[987]" -type "float2" -0.23317446 0.1658788 ;
	setAttr ".uvtk[988]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[989]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[990]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[991]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[992]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[993]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[994]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[995]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[996]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[997]" -type "float2" -0.27800035 0.1658788 ;
	setAttr ".uvtk[1006]" -type "float2" -0.2430665 -0.0023092479 ;
	setAttr ".uvtk[1007]" -type "float2" -0.24306656 -0.0023092479 ;
	setAttr ".uvtk[1008]" -type "float2" -0.24306656 -0.0023092404 ;
	setAttr ".uvtk[1009]" -type "float2" -0.2430665 -0.0023092404 ;
	setAttr ".uvtk[1010]" -type "float2" -0.2430665 -0.0023092479 ;
	setAttr ".uvtk[1011]" -type "float2" -0.2430665 -0.0023092404 ;
	setAttr ".uvtk[1012]" -type "float2" -0.24306656 -0.0023092479 ;
	setAttr ".uvtk[1013]" -type "float2" -0.24306656 -0.0023092404 ;
	setAttr ".uvtk[1014]" -type "float2" -0.2430665 -0.0023092479 ;
	setAttr ".uvtk[1015]" -type "float2" -0.2430665 -0.0023092404 ;
	setAttr ".uvtk[1016]" -type "float2" -0.21515767 -0.0023090392 ;
	setAttr ".uvtk[1017]" -type "float2" -0.21515773 -0.0023090392 ;
	setAttr ".uvtk[1018]" -type "float2" -0.21515773 -0.0023090318 ;
	setAttr ".uvtk[1019]" -type "float2" -0.21515767 -0.0023090318 ;
	setAttr ".uvtk[1020]" -type "float2" -0.21515767 -0.0023090392 ;
	setAttr ".uvtk[1021]" -type "float2" -0.21515767 -0.0023090318 ;
	setAttr ".uvtk[1022]" -type "float2" -0.21515773 -0.0023090392 ;
	setAttr ".uvtk[1023]" -type "float2" -0.21515773 -0.0023090318 ;
	setAttr ".uvtk[1024]" -type "float2" -0.21515767 -0.0023090392 ;
	setAttr ".uvtk[1025]" -type "float2" -0.21515767 -0.0023090318 ;
	setAttr ".uvtk[1026]" -type "float2" -0.12490103 -0.061944723 ;
	setAttr ".uvtk[1027]" -type "float2" -0.12490103 -0.061944723 ;
	setAttr ".uvtk[1028]" -type "float2" -0.12490103 -0.061944738 ;
	setAttr ".uvtk[1029]" -type "float2" -0.12490103 -0.061944738 ;
	setAttr ".uvtk[1030]" -type "float2" -0.12490103 -0.061944723 ;
	setAttr ".uvtk[1031]" -type "float2" -0.12490103 -0.061944738 ;
	setAttr ".uvtk[1032]" -type "float2" -0.12490103 -0.061944723 ;
	setAttr ".uvtk[1033]" -type "float2" -0.12490103 -0.061944738 ;
	setAttr ".uvtk[1034]" -type "float2" -0.12490103 -0.061944723 ;
	setAttr ".uvtk[1035]" -type "float2" -0.12490103 -0.061944738 ;
	setAttr ".uvtk[1036]" -type "float2" -0.081354089 -0.061944783 ;
	setAttr ".uvtk[1037]" -type "float2" -0.081354089 -0.061944783 ;
	setAttr ".uvtk[1038]" -type "float2" -0.081354089 -0.061944798 ;
	setAttr ".uvtk[1039]" -type "float2" -0.081354089 -0.061944798 ;
	setAttr ".uvtk[1040]" -type "float2" -0.081354029 -0.061944783 ;
	setAttr ".uvtk[1041]" -type "float2" -0.081354029 -0.061944798 ;
	setAttr ".uvtk[1042]" -type "float2" -0.081354029 -0.061944783 ;
	setAttr ".uvtk[1043]" -type "float2" -0.081354029 -0.061944798 ;
	setAttr ".uvtk[1044]" -type "float2" -0.081354089 -0.061944783 ;
	setAttr ".uvtk[1045]" -type "float2" -0.081354089 -0.061944798 ;
	setAttr ".uvtk[1046]" -type "float2" -0.35979119 0.16587882 ;
	setAttr ".uvtk[1047]" -type "float2" -0.35979119 0.16587882 ;
	setAttr ".uvtk[1048]" -type "float2" -0.35979119 0.1658788 ;
	setAttr ".uvtk[1049]" -type "float2" -0.35979119 0.1658788 ;
	setAttr ".uvtk[1050]" -type "float2" -0.35979119 0.16587882 ;
	setAttr ".uvtk[1051]" -type "float2" -0.35979119 0.1658788 ;
	setAttr ".uvtk[1052]" -type "float2" -0.35979119 0.16587882 ;
	setAttr ".uvtk[1053]" -type "float2" -0.35979119 0.1658788 ;
	setAttr ".uvtk[1054]" -type "float2" -0.35979119 0.16587882 ;
	setAttr ".uvtk[1055]" -type "float2" -0.35979119 0.1658788 ;
	setAttr ".uvtk[1056]" -type "float2" -0.38902539 0.1658788 ;
	setAttr ".uvtk[1057]" -type "float2" -0.38902545 0.1658788 ;
	setAttr ".uvtk[1058]" -type "float2" -0.38902545 0.1658788 ;
	setAttr ".uvtk[1059]" -type "float2" -0.38902539 0.1658788 ;
	setAttr ".uvtk[1060]" -type "float2" -0.38902545 0.1658788 ;
	setAttr ".uvtk[1061]" -type "float2" -0.38902545 0.1658788 ;
	setAttr ".uvtk[1062]" -type "float2" -0.38902545 0.1658788 ;
	setAttr ".uvtk[1063]" -type "float2" -0.38902545 0.1658788 ;
	setAttr ".uvtk[1064]" -type "float2" -0.38902539 0.1658788 ;
	setAttr ".uvtk[1065]" -type "float2" -0.38902539 0.1658788 ;
	setAttr ".uvtk[1066]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1067]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1068]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1069]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1070]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1071]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1072]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1073]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1074]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1075]" -type "float2" -0.38129482 0.1658788 ;
	setAttr ".uvtk[1076]" -type "float2" -0.36717707 -0.0023908243 ;
	setAttr ".uvtk[1077]" -type "float2" -0.36717707 -0.0023908243 ;
	setAttr ".uvtk[1078]" -type "float2" -0.36717707 -0.0023908392 ;
	setAttr ".uvtk[1079]" -type "float2" -0.36717707 -0.0023908392 ;
	setAttr ".uvtk[1080]" -type "float2" -0.36717707 -0.0023908243 ;
	setAttr ".uvtk[1081]" -type "float2" -0.36717707 -0.0023908392 ;
	setAttr ".uvtk[1082]" -type "float2" -0.36717707 -0.0023908243 ;
	setAttr ".uvtk[1083]" -type "float2" -0.36717707 -0.0023908392 ;
	setAttr ".uvtk[1084]" -type "float2" -0.36717707 -0.0023908243 ;
	setAttr ".uvtk[1085]" -type "float2" -0.36717707 -0.0023908392 ;
createNode polyFlipUV -n "polyFlipUV5";
	rename -uid "4803D80E-4219-D3D0-8EA3-F2B5B2A6CE0A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[11:12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "CB34E704-45D5-B785-069F-EA9D1F47F5FF";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[452]" -type "float2" -0.11042991 -0.018561015 ;
	setAttr ".uvtk[453]" -type "float2" -0.11042991 -0.018561015 ;
	setAttr ".uvtk[454]" -type "float2" -0.11042991 -0.018561015 ;
	setAttr ".uvtk[455]" -type "float2" -0.11042991 -0.018561015 ;
	setAttr ".uvtk[456]" -type "float2" -0.11042991 -0.018561015 ;
	setAttr ".uvtk[457]" -type "float2" -0.11042991 -0.018561015 ;
	setAttr ".uvtk[806]" -type "float2" -0.022796325 -0.018560983 ;
	setAttr ".uvtk[807]" -type "float2" -0.022796325 -0.018560983 ;
	setAttr ".uvtk[808]" -type "float2" -0.022796325 -0.018560983 ;
	setAttr ".uvtk[809]" -type "float2" -0.022796325 -0.018560983 ;
	setAttr ".uvtk[810]" -type "float2" -0.022796325 -0.018560983 ;
	setAttr ".uvtk[811]" -type "float2" -0.022796325 -0.018560983 ;
createNode polyFlipUV -n "polyFlipUV6";
	rename -uid "CF1D499D-4C07-CE48-B42F-75B8E6D5B1B2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[13:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "3BCBFBBD-4A09-2260-D4D2-50A5477E8ABF";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[458:463]" -type "float2" 0.16430315 -0.0785411 0.16430315
		 -0.0785411 0.16430315 -0.0785411 0.16430315 -0.0785411 0.16430315 -0.0785411 0.16430315
		 -0.0785411;
createNode polyFlipUV -n "polyFlipUV7";
	rename -uid "5B4BF72C-4431-97C4-9319-C8B38196873C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[464:465]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "AA047F0D-41EF-3C88-ECA6-6DA2228ED129";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk";
	setAttr ".uvtk[458]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[459]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[460]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[461]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[462]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[463]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[806]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[807]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[808]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[809]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[810]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[811]" -type "float2" -0.15000002 -5.9604637e-009 ;
	setAttr ".uvtk[822]" -type "float2" -0.034998108 -0.080744676 ;
	setAttr ".uvtk[823]" -type "float2" -0.034998108 -0.080744676 ;
	setAttr ".uvtk[824]" -type "float2" -0.034998108 -0.080744646 ;
	setAttr ".uvtk[825]" -type "float2" -0.034998108 -0.080744646 ;
	setAttr ".uvtk[910]" -type "float2" 0.096347287 -0.52500612 ;
	setAttr ".uvtk[911]" -type "float2" 0.096347228 -0.52500612 ;
	setAttr ".uvtk[912]" -type "float2" 0.096347228 -0.52500612 ;
	setAttr ".uvtk[913]" -type "float2" 0.096347287 -0.52500612 ;
	setAttr ".uvtk[914]" -type "float2" 0.15216406 -0.32500604 ;
	setAttr ".uvtk[915]" -type "float2" 0.15216406 -0.32500604 ;
	setAttr ".uvtk[916]" -type "float2" 0.15216406 -0.32500604 ;
	setAttr ".uvtk[917]" -type "float2" 0.15216406 -0.32500604 ;
	setAttr ".uvtk[998]" -type "float2" 0.2079808 -0.91509521 ;
	setAttr ".uvtk[999]" -type "float2" 0.2079808 -0.91509521 ;
	setAttr ".uvtk[1000]" -type "float2" 0.2079808 -0.91509521 ;
	setAttr ".uvtk[1001]" -type "float2" 0.2079808 -0.91509521 ;
	setAttr ".uvtk[1002]" -type "float2" 0.11379755 -0.91522819 ;
	setAttr ".uvtk[1003]" -type "float2" 0.11379755 -0.91522819 ;
	setAttr ".uvtk[1004]" -type "float2" 0.11379755 -0.91522819 ;
	setAttr ".uvtk[1005]" -type "float2" 0.11379755 -0.91522819 ;
	setAttr ".uvtk[1090]" -type "float2" 0.19563231 -0.14385104 ;
	setAttr ".uvtk[1091]" -type "float2" 0.19563231 -0.14385104 ;
	setAttr ".uvtk[1092]" -type "float2" 0.19563231 -0.14385104 ;
	setAttr ".uvtk[1093]" -type "float2" 0.19563231 -0.14385104 ;
createNode polyFlipUV -n "polyFlipUV8";
	rename -uid "26F24947-416F-FE00-048B-EC86F9DF60B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[284]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "558A124E-4088-84E9-4DC4-8E907384F1C9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[998:1001]" -type "float2" -3.576281e-008 0.099999957
		 -3.576281e-008 0.099999957 -3.576281e-008 0.099999957 -3.576281e-008 0.099999957;
createNode polyFlipUV -n "polyFlipUV9";
	rename -uid "CB5428B4-4215-4B03-0929-72B8A28F9A34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "6AFEDFF1-4D25-994D-7020-A691C6A170D1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[910]" -type "float2" 1.1920931e-008 0.20000002 ;
	setAttr ".uvtk[911]" -type "float2" 1.1920931e-008 0.20000002 ;
	setAttr ".uvtk[912]" -type "float2" 1.1920931e-008 0.20000002 ;
	setAttr ".uvtk[913]" -type "float2" 1.1920931e-008 0.20000002 ;
	setAttr ".uvtk[1002]" -type "float2" 0.15000004 0.099999987 ;
	setAttr ".uvtk[1003]" -type "float2" 0.15000004 0.099999987 ;
	setAttr ".uvtk[1004]" -type "float2" 0.15000004 0.099999979 ;
	setAttr ".uvtk[1005]" -type "float2" 0.15000004 0.099999979 ;
createNode polyFlipUV -n "polyFlipUV10";
	rename -uid "CEAD1784-4693-0756-34C7-508AF933579E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[106]" "f[108]" "f[284]" "f[286]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "76A28965-49D0-B2FA-7F7A-78972E8B6C38";
	setAttr ".uopa" yes;
	setAttr -s 108 ".uvtk";
	setAttr ".uvtk[32]" -type "float2" -0.19220611 -0.25141332 ;
	setAttr ".uvtk[33]" -type "float2" -0.19220611 -0.25141326 ;
	setAttr ".uvtk[34]" -type "float2" -0.19220611 -0.25141326 ;
	setAttr ".uvtk[35]" -type "float2" -0.19220611 -0.25141332 ;
	setAttr ".uvtk[36]" -type "float2" -0.20724395 -0.25141329 ;
	setAttr ".uvtk[37]" -type "float2" -0.20724395 -0.25141329 ;
	setAttr ".uvtk[38]" -type "float2" -0.20724395 -0.25141329 ;
	setAttr ".uvtk[39]" -type "float2" -0.20724395 -0.25141329 ;
	setAttr ".uvtk[40]" -type "float2" -0.22263533 -0.25141332 ;
	setAttr ".uvtk[41]" -type "float2" -0.22263533 -0.25141326 ;
	setAttr ".uvtk[42]" -type "float2" -0.22263533 -0.25141326 ;
	setAttr ".uvtk[43]" -type "float2" -0.22263533 -0.25141332 ;
	setAttr ".uvtk[44]" -type "float2" 0.41371921 -0.066882849 ;
	setAttr ".uvtk[45]" -type "float2" 0.41371915 -0.066882849 ;
	setAttr ".uvtk[46]" -type "float2" 0.41371915 -0.066882849 ;
	setAttr ".uvtk[47]" -type "float2" 0.41371921 -0.066882849 ;
	setAttr ".uvtk[48]" -type "float2" 0.47996229 -0.036411315 ;
	setAttr ".uvtk[49]" -type "float2" 0.47996229 -0.036411315 ;
	setAttr ".uvtk[50]" -type "float2" 0.47996229 -0.036411315 ;
	setAttr ".uvtk[51]" -type "float2" 0.47996229 -0.036411315 ;
	setAttr ".uvtk[52]" -type "float2" 0.51114547 -0.038832009 ;
	setAttr ".uvtk[53]" -type "float2" 0.51114547 -0.038832009 ;
	setAttr ".uvtk[54]" -type "float2" 0.51114547 -0.038832009 ;
	setAttr ".uvtk[55]" -type "float2" 0.51114547 -0.038832009 ;
	setAttr ".uvtk[56]" -type "float2" 0.34681365 -0.035228856 ;
	setAttr ".uvtk[57]" -type "float2" 0.34681365 -0.035228856 ;
	setAttr ".uvtk[58]" -type "float2" 0.34681365 -0.035228856 ;
	setAttr ".uvtk[59]" -type "float2" 0.34681362 -0.035228856 ;
	setAttr ".uvtk[68]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[69]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[70]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[71]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[72]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[73]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[74]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[75]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[76]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[77]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[78]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[79]" -type "float2" 0.048721924 -0.15352413 ;
	setAttr ".uvtk[248]" -type "float2" -0.017542498 -0.15352407 ;
	setAttr ".uvtk[249]" -type "float2" -0.017542498 -0.15352407 ;
	setAttr ".uvtk[250]" -type "float2" -0.017542498 -0.15352407 ;
	setAttr ".uvtk[251]" -type "float2" -0.017542498 -0.15352407 ;
	setAttr ".uvtk[252]" -type "float2" -0.017542498 -0.15352401 ;
	setAttr ".uvtk[253]" -type "float2" -0.017542498 -0.15352401 ;
	setAttr ".uvtk[254]" -type "float2" -0.017542498 -0.15352407 ;
	setAttr ".uvtk[255]" -type "float2" -0.017542498 -0.15352407 ;
	setAttr ".uvtk[256]" -type "float2" -0.017542498 -0.15352401 ;
	setAttr ".uvtk[257]" -type "float2" -0.017542498 -0.15352401 ;
	setAttr ".uvtk[258]" -type "float2" -0.017542498 -0.15352407 ;
	setAttr ".uvtk[259]" -type "float2" -0.017542498 -0.15352407 ;
	setAttr ".uvtk[506]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[507]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[508]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[509]" -type "float2" 5.9604646e-009 -8.9406953e-009 ;
	setAttr ".uvtk[510]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[511]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[512]" -type "float2" 5.9604646e-009 -8.9406953e-009 ;
	setAttr ".uvtk[513]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[514]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[515]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[516]" -type "float2" 5.9604646e-009 -8.9406953e-009 ;
	setAttr ".uvtk[517]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[518]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[519]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[520]" -type "float2" 5.9604646e-009 -8.9406971e-009 ;
	setAttr ".uvtk[521]" -type "float2" 5.9604646e-009 -8.9406953e-009 ;
	setAttr ".uvtk[522]" -type "float2" 0.011406736 -0.12595482 ;
	setAttr ".uvtk[523]" -type "float2" 0.011406736 -0.12595482 ;
	setAttr ".uvtk[524]" -type "float2" 0.011406744 -0.12595482 ;
	setAttr ".uvtk[525]" -type "float2" 0.011406744 -0.12595482 ;
	setAttr ".uvtk[526]" -type "float2" 0.073520452 -0.12595484 ;
	setAttr ".uvtk[527]" -type "float2" 0.073520452 -0.12595484 ;
	setAttr ".uvtk[528]" -type "float2" 0.073520452 -0.12595484 ;
	setAttr ".uvtk[529]" -type "float2" 0.073520452 -0.12595484 ;
	setAttr ".uvtk[530]" -type "float2" 0.12001874 -0.24190323 ;
	setAttr ".uvtk[531]" -type "float2" 0.12001874 -0.24190323 ;
	setAttr ".uvtk[532]" -type "float2" 0.12001874 -0.24190323 ;
	setAttr ".uvtk[533]" -type "float2" 0.12001874 -0.24190323 ;
	setAttr ".uvtk[534]" -type "float2" 0.057457361 -0.2419032 ;
	setAttr ".uvtk[535]" -type "float2" 0.057457361 -0.2419032 ;
	setAttr ".uvtk[536]" -type "float2" 0.057457361 -0.2419032 ;
	setAttr ".uvtk[537]" -type "float2" 0.057457361 -0.2419032 ;
	setAttr ".uvtk[902]" -type "float2" 0.33337155 -0.025954932 ;
	setAttr ".uvtk[903]" -type "float2" 0.33337158 -0.025954932 ;
	setAttr ".uvtk[904]" -type "float2" 0.33337155 -0.025954932 ;
	setAttr ".uvtk[905]" -type "float2" 0.33337158 -0.025954932 ;
	setAttr ".uvtk[906]" -type "float2" 0.46534157 0.074045062 ;
	setAttr ".uvtk[907]" -type "float2" 0.46534154 0.074045062 ;
	setAttr ".uvtk[908]" -type "float2" 0.46534151 0.074045062 ;
	setAttr ".uvtk[909]" -type "float2" 0.46534154 0.074045062 ;
	setAttr ".uvtk[910]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[911]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[912]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[913]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[914]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[915]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[916]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[917]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[998]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[999]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[1000]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[1001]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[1002]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[1003]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[1004]" -type "float2" 0.15000007 -0.2 ;
	setAttr ".uvtk[1005]" -type "float2" 0.15000007 -0.2 ;
createNode polyFlipUV -n "polyFlipUV11";
	rename -uid "3CA9125F-408E-657D-361B-80B4DE934DEA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[75]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "A1E57DCD-405F-F408-07D8-31B94C4328D8";
	setAttr ".uopa" yes;
	setAttr -s 96 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.084598146 -0.35134685 ;
	setAttr ".uvtk[1]" -type "float2" 0.084598146 -0.35134685 ;
	setAttr ".uvtk[2]" -type "float2" 0.084598146 -0.35134685 ;
	setAttr ".uvtk[3]" -type "float2" 0.084598146 -0.35134685 ;
	setAttr ".uvtk[4]" -type "float2" 0.084598176 -0.35134685 ;
	setAttr ".uvtk[5]" -type "float2" 0.084598176 -0.35134685 ;
	setAttr ".uvtk[6]" -type "float2" 0.084598176 -0.35134685 ;
	setAttr ".uvtk[7]" -type "float2" 0.084598176 -0.35134685 ;
	setAttr ".uvtk[8]" -type "float2" 0.084598176 -0.35134685 ;
	setAttr ".uvtk[9]" -type "float2" 0.084598146 -0.35134685 ;
	setAttr ".uvtk[10]" -type "float2" -0.083615154 0.13874233 ;
	setAttr ".uvtk[11]" -type "float2" -0.083615154 0.13874227 ;
	setAttr ".uvtk[12]" -type "float2" -0.083615154 0.1387423 ;
	setAttr ".uvtk[13]" -type "float2" -0.083615154 0.13874227 ;
	setAttr ".uvtk[14]" -type "float2" -0.083615154 0.13874227 ;
	setAttr ".uvtk[15]" -type "float2" -0.083615154 0.1387423 ;
	setAttr ".uvtk[16]" -type "float2" -0.083615154 0.13874233 ;
	setAttr ".uvtk[17]" -type "float2" -0.083615154 0.1387423 ;
	setAttr ".uvtk[18]" -type "float2" -0.083615154 0.1387423 ;
	setAttr ".uvtk[19]" -type "float2" -0.083615154 0.1387423 ;
	setAttr ".uvtk[56]" -type "float2" 0.10000003 0 ;
	setAttr ".uvtk[57]" -type "float2" 0.099999972 0 ;
	setAttr ".uvtk[58]" -type "float2" 0.10000003 0 ;
	setAttr ".uvtk[59]" -type "float2" 0.10000003 0 ;
	setAttr ".uvtk[60]" -type "float2" 0.031854082 -0.15352419 ;
	setAttr ".uvtk[61]" -type "float2" 0.031854082 -0.15352419 ;
	setAttr ".uvtk[62]" -type "float2" 0.031854082 -0.15352419 ;
	setAttr ".uvtk[63]" -type "float2" 0.031854082 -0.15352419 ;
	setAttr ".uvtk[64]" -type "float2" 0.031854082 -0.15352413 ;
	setAttr ".uvtk[65]" -type "float2" 0.031854082 -0.15352419 ;
	setAttr ".uvtk[66]" -type "float2" 0.031854082 -0.15352419 ;
	setAttr ".uvtk[67]" -type "float2" 0.031854082 -0.15352413 ;
	setAttr ".uvtk[240]" -type "float2" -0.034410257 -0.15352416 ;
	setAttr ".uvtk[241]" -type "float2" -0.034410227 -0.15352416 ;
	setAttr ".uvtk[242]" -type "float2" -0.034410227 -0.15352416 ;
	setAttr ".uvtk[243]" -type "float2" -0.034410227 -0.15352416 ;
	setAttr ".uvtk[244]" -type "float2" -0.034410227 -0.1535241 ;
	setAttr ".uvtk[245]" -type "float2" -0.034410227 -0.15352416 ;
	setAttr ".uvtk[246]" -type "float2" -0.034410227 -0.15352416 ;
	setAttr ".uvtk[247]" -type "float2" -0.034410257 -0.1535241 ;
	setAttr ".uvtk[420]" -type "float2" -0.15182851 0.13874233 ;
	setAttr ".uvtk[421]" -type "float2" -0.15182851 0.1387423 ;
	setAttr ".uvtk[422]" -type "float2" -0.15182851 0.1387423 ;
	setAttr ".uvtk[423]" -type "float2" -0.15182851 0.13874233 ;
	setAttr ".uvtk[424]" -type "float2" -0.15182851 0.1387423 ;
	setAttr ".uvtk[425]" -type "float2" -0.15182851 0.1387423 ;
	setAttr ".uvtk[426]" -type "float2" -0.15182851 0.13874233 ;
	setAttr ".uvtk[427]" -type "float2" -0.15182851 0.13874233 ;
	setAttr ".uvtk[428]" -type "float2" -0.15182851 0.1387423 ;
	setAttr ".uvtk[429]" -type "float2" -0.15182851 0.1387423 ;
	setAttr ".uvtk[430]" -type "float2" -0.1200418 0.12006801 ;
	setAttr ".uvtk[431]" -type "float2" -0.1200418 0.12006798 ;
	setAttr ".uvtk[432]" -type "float2" -0.1200418 0.12006798 ;
	setAttr ".uvtk[433]" -type "float2" -0.1200418 0.12006801 ;
	setAttr ".uvtk[434]" -type "float2" -0.1200418 0.12006798 ;
	setAttr ".uvtk[435]" -type "float2" -0.1200418 0.12006798 ;
	setAttr ".uvtk[436]" -type "float2" -0.1200418 0.12006801 ;
	setAttr ".uvtk[437]" -type "float2" -0.1200418 0.12006795 ;
	setAttr ".uvtk[438]" -type "float2" -0.1200418 0.12006798 ;
	setAttr ".uvtk[439]" -type "float2" -0.1200418 0.12006798 ;
	setAttr ".uvtk[538]" -type "float2" 0.038694277 -0.21647182 ;
	setAttr ".uvtk[539]" -type "float2" 0.038694277 -0.21647182 ;
	setAttr ".uvtk[540]" -type "float2" 0.038694277 -0.21647182 ;
	setAttr ".uvtk[541]" -type "float2" 0.038694277 -0.21647182 ;
	setAttr ".uvtk[542]" -type "float2" 0.038694277 -0.21647182 ;
	setAttr ".uvtk[543]" -type "float2" 0.038694277 -0.21647182 ;
	setAttr ".uvtk[544]" -type "float2" 0.038694277 -0.21647182 ;
	setAttr ".uvtk[545]" -type "float2" 0.038694277 -0.21647182 ;
	setAttr ".uvtk[546]" -type "float2" 0.0073687285 -0.21647179 ;
	setAttr ".uvtk[547]" -type "float2" 0.0073687285 -0.21647173 ;
	setAttr ".uvtk[548]" -type "float2" 0.0073686987 -0.21647173 ;
	setAttr ".uvtk[549]" -type "float2" 0.0073686987 -0.21647179 ;
	setAttr ".uvtk[550]" -type "float2" 0.0073686987 -0.21647179 ;
	setAttr ".uvtk[551]" -type "float2" 0.0073686987 -0.21647173 ;
	setAttr ".uvtk[552]" -type "float2" 0.0073687285 -0.21647179 ;
	setAttr ".uvtk[553]" -type "float2" 0.0073687285 -0.21647173 ;
	setAttr ".uvtk[666]" -type "float2" 0.10134544 -0.21647185 ;
	setAttr ".uvtk[667]" -type "float2" 0.10134544 -0.21647191 ;
	setAttr ".uvtk[668]" -type "float2" 0.10134544 -0.21647191 ;
	setAttr ".uvtk[669]" -type "float2" 0.10134544 -0.21647185 ;
	setAttr ".uvtk[670]" -type "float2" 0.10134544 -0.21647185 ;
	setAttr ".uvtk[671]" -type "float2" 0.10134544 -0.21647191 ;
	setAttr ".uvtk[672]" -type "float2" 0.10134544 -0.21647185 ;
	setAttr ".uvtk[673]" -type "float2" 0.10134544 -0.21647191 ;
	setAttr ".uvtk[674]" -type "float2" 0.070019878 -0.21647173 ;
	setAttr ".uvtk[675]" -type "float2" 0.070019878 -0.21647179 ;
	setAttr ".uvtk[676]" -type "float2" 0.070019878 -0.21647179 ;
	setAttr ".uvtk[677]" -type "float2" 0.070019878 -0.21647173 ;
	setAttr ".uvtk[678]" -type "float2" 0.070019849 -0.21647173 ;
	setAttr ".uvtk[679]" -type "float2" 0.070019849 -0.21647179 ;
	setAttr ".uvtk[680]" -type "float2" 0.070019878 -0.21647173 ;
	setAttr ".uvtk[681]" -type "float2" 0.070019878 -0.21647179 ;
	setAttr ".uvtk[902]" -type "float2" 0.099999994 0.099999979 ;
	setAttr ".uvtk[903]" -type "float2" 0.099999994 0.099999979 ;
	setAttr ".uvtk[904]" -type "float2" 0.099999964 0.099999979 ;
	setAttr ".uvtk[905]" -type "float2" 0.10000002 0.099999979 ;
createNode polyFlipUV -n "polyFlipUV12";
	rename -uid "CAD91D35-4ADC-EE59-6940-0AB2E8A4600F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[5:9]" "f[468:472]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "66ECA4C9-441E-2C8C-B92F-55807430AA4F";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[1]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[2]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[3]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[4]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[5]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[6]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[7]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[8]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[9]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[10]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[11]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[12]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[13]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[14]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[15]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[16]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[17]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[18]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[19]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[420]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[421]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[422]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[423]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[424]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[425]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[426]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[427]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[428]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[429]" -type "float2" 0.10000002 0.099999972 ;
	setAttr ".uvtk[430]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[431]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[432]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[433]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[434]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[435]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[436]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[437]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[438]" -type "float2" 7.4505806e-008 0.099999972 ;
	setAttr ".uvtk[439]" -type "float2" 7.4505806e-008 0.099999972 ;
createNode polyFlipUV -n "polyFlipUV13";
	rename -uid "4A22FD5A-4936-5C50-5FD3-75ABE3312AF9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[3:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "534D7A06-4E1F-164B-81EC-41BC7272F919";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk";
	setAttr ".uvtk[440]" -type "float2" -0.027872771 0.073519595 ;
	setAttr ".uvtk[441]" -type "float2" -0.027872771 0.073519595 ;
	setAttr ".uvtk[442]" -type "float2" -0.027872771 0.073519625 ;
	setAttr ".uvtk[443]" -type "float2" -0.027872771 0.073519625 ;
	setAttr ".uvtk[444]" -type "float2" -0.027872771 0.073519595 ;
	setAttr ".uvtk[445]" -type "float2" -0.027872771 0.073519625 ;
	setAttr ".uvtk[446]" -type "float2" 0.018762793 0.069255434 ;
	setAttr ".uvtk[447]" -type "float2" 0.018762793 0.069255434 ;
	setAttr ".uvtk[448]" -type "float2" 0.018762793 0.069255404 ;
	setAttr ".uvtk[449]" -type "float2" 0.018762793 0.069255404 ;
	setAttr ".uvtk[450]" -type "float2" 0.018762793 0.069255434 ;
	setAttr ".uvtk[451]" -type "float2" 0.018762793 0.069255404 ;
	setAttr ".uvtk[794]" -type "float2" 0.20275758 0.0089309216 ;
	setAttr ".uvtk[795]" -type "float2" 0.20275758 0.0089309216 ;
	setAttr ".uvtk[796]" -type "float2" 0.20275758 0.0089309514 ;
	setAttr ".uvtk[797]" -type "float2" 0.20275758 0.0089309514 ;
	setAttr ".uvtk[798]" -type "float2" 0.20275758 0.0089309216 ;
	setAttr ".uvtk[799]" -type "float2" 0.20275758 0.0089309514 ;
createNode polyFlipUV -n "polyFlipUV14";
	rename -uid "EAED1513-4FC6-ED66-09CC-CFB7A5E70E51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[456:457]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "7FA4354C-4ED1-42A6-0E5E-31AB9040D5BF";
	setAttr ".uopa" yes;
	setAttr -s 1094 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.1440317 0.29567552 0.14417708 0.3040098
		 0.14708126 0.30604327 0.1468631 0.29354185 0.13629577 0.30672354 0.13525927 0.31011391
		 0.13606045 0.29323846 0.13490617 0.2898863 0.13127932 0.30006647 0.12773454 0.30012828
		 0.14686301 0.29354191 0.14708126 0.30604309 0.14417708 0.30400962 0.14403161 0.29567552
		 0.13525918 0.31011373 0.13629577 0.30672342 0.13490611 0.2898863 0.1360603 0.29323834
		 0.12773454 0.30012828 0.13127929 0.30006641 -0.09680286 0.57543933 -0.09680286 0.53998631
		 -0.089357734 0.53998631 -0.089357734 0.57543933 -0.09680286 0.61089236 -0.089357734
		 0.61089236 -0.096802831 0.61089236 -0.096802831 0.57543939 -0.089357734 0.57543939
		 -0.089357734 0.61089236 -0.096802831 0.53998631 -0.089357734 0.53998631 0.74682748
		 -0.17440587 0.74682748 -0.19467556 0.74944091 -0.19467556 0.74944091 -0.17440587
		 0.74700272 -0.17440587 0.74700272 -0.19467556 0.74926555 -0.19467556 0.74926555 -0.17440587
		 0.74644899 -0.17440587 0.74644899 -0.19467556 0.74981928 -0.19467556 0.74981928 -0.17440587
		 0.16504493 -0.36693066 0.15749982 -0.36693066 0.15749982 -0.39699763 0.16504493 -0.39699763
		 0.15749314 -0.39795148 0.16505167 -0.39795148 0.16505167 -0.36597681 0.15749314 -0.36597681
		 0.16505167 -0.36521018 0.15749314 -0.36521018 0.15749314 -0.39871812 0.16505167 -0.39871812
		 0.15812901 -0.36635125 0.16567406 -0.36635125 0.16441581 -0.39757705 0.15687075 -0.39757705
		 0.39040098 -0.63043129 0.39040092 -0.63043129 0.39040104 -0.63043129 0.39040092 -0.63043129
		 0.39040092 -0.63043129 0.39040104 -0.63043129 0.39040092 -0.63043129 0.39040098 -0.63043129
		 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040104 -0.63043129
		 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040104 -0.63043129
		 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129
		 0.47167265 -0.73325807 0.47167265 -0.73325807 0.47167265 -0.73325807 0.47167253 -0.73325807
		 0.47167265 -0.73325807 0.47167259 -0.73325807 0.47167259 -0.73325807 0.47167259 -0.73325807
		 0.47167253 -0.73325807 0.47167259 -0.73325807 0.47167253 -0.73325807 0.47167253 -0.73325807
		 0.47167265 -0.73325807 0.47167265 -0.73325807 0.47167253 -0.73325807 0.47167253 -0.73325807
		 0.47167259 -0.73325807 0.47167259 -0.73325807 0.47167265 -0.73325807 0.47167265 -0.73325807
		 0.47167253 -0.73325807 0.47167253 -0.73325807 0.47167253 -0.73325807 0.47167253 -0.73325807
		 0.47167259 -0.73325807 0.47167259 -0.73325807 0.47167253 -0.73325807 0.47167253 -0.73325807
		 0.47167265 -0.73325807 0.47167259 -0.73325807 0.47167259 -0.73325807 0.47167259 -0.73325807
		 0.47167253 -0.73325807 0.47167259 -0.73325807 0.47167265 -0.73325807 0.47167253 -0.73325807
		 0.47167265 -0.73325807 0.47167259 -0.73325807 0.47167265 -0.73325807 0.47167265 -0.73325807
		 0.5001992 -0.75997543 0.50019932 -0.75997537 0.5001992 -0.75997537 0.50019926 -0.75997543
		 0.5001992 -0.75997543 0.50019926 -0.75997543 0.50019926 -0.75997543 0.50019926 -0.75997543
		 0.50019926 -0.75997543 0.50019926 -0.75997537 0.50019932 -0.75997537 0.50019926 -0.75997537
		 0.50019932 -0.75997537 0.50019926 -0.75997543 0.50019926 -0.75997537 0.5001992 -0.75997543
		 0.50019926 -0.75997543 0.5001992 -0.75997543 0.50019926 -0.75997543 0.50019926 -0.75997543
		 0.50019926 -0.75997537 0.50019926 -0.75997543 0.50019926 -0.75997537 0.5001992 -0.75997543
		 0.50019926 -0.75997543 0.5001992 -0.75997543 0.50019926 -0.75997537 0.5001992 -0.75997537
		 0.50019926 -0.75997537 0.5001992 -0.75997543 0.50019926 -0.75997543 0.50019926 -0.75997543
		 0.50019926 -0.75997543 0.50019926 -0.75997537 0.50019932 -0.75997543 0.5001992 -0.75997543
		 0.50019932 -0.75997543 0.5001992 -0.75997543 0.5001992 -0.75997537 0.50019926 -0.75997537
		 0.52872592 -0.75997531 0.52872592 -0.75997537 0.52872592 -0.75997537 0.52872586 -0.75997537
		 0.52872592 -0.75997537 0.52872586 -0.75997531 0.52872592 -0.75997537 0.52872592 -0.75997531
		 0.52872592 -0.75997531 0.52872592 -0.75997531 0.52872592 -0.75997531 0.52872586 -0.75997537
		 0.52872592 -0.75997537 0.52872586 -0.75997537 0.52872592 -0.75997537 0.52872592 -0.75997531
		 0.52872592 -0.75997531 0.52872592 -0.75997537 0.52872592 -0.75997531 0.52872592 -0.75997531
		 0.52872592 -0.75997537 0.52872592 -0.75997531 0.52872592 -0.75997537 0.52872586 -0.75997531
		 0.52872592 -0.75997531 0.52872586 -0.75997537 0.52872586 -0.75997531 0.52872598 -0.75997537
		 0.52872586 -0.75997537 0.52872598 -0.75997537 0.52872592 -0.75997537 0.52872592 -0.75997531
		 0.52872592 -0.75997531 0.52872592 -0.75997531 0.52872592 -0.75997531 0.52872586 -0.75997537
		 0.52872592 -0.75997537 0.52872586 -0.75997531 0.52872586 -0.75997537 0.52872586 -0.75997537
		 0.55725259 -0.73251599 0.55725259 -0.73251605 0.55725259 -0.73251605 0.55725259 -0.73251599
		 0.55725259 -0.73251599 0.55725259 -0.73251605 0.55725276 -0.73251605 0.55725259 -0.73251605
		 0.55725259 -0.73251599 0.55725259 -0.73251599 0.55725259 -0.73251605 0.55725276 -0.73251599
		 0.55725259 -0.73251605 0.55725276 -0.73251599 0.55725259 -0.73251605 0.55725265 -0.73251605
		 0.55725259 -0.73251605 0.55725265 -0.73251599 0.55725259 -0.73251605 0.55725259 -0.73251599
		 0.55725259 -0.73251599 0.55725259 -0.73251605 0.55725259 -0.73251605 0.55725259 -0.73251605
		 0.55725259 -0.73251605 0.55725259 -0.73251599 0.55725259 -0.73251605 0.55725259 -0.73251599
		 0.55725259 -0.73251599 0.55725259 -0.73251599 0.55725259 -0.73251605 0.55725259 -0.73251605
		 0.55725259 -0.73251599 0.55725259 -0.73251599 0.55725259 -0.73251599 0.55725259 -0.73251599
		 0.55725259 -0.73251599 0.55725259 -0.73251605 0.55725259 -0.73251605 0.55725259 -0.73251605
		 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040098 -0.63043129
		 0.39040098 -0.63043129 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040104 -0.63043129
		 0.39040104 -0.63043129 0.39040104 -0.63043129;
	setAttr ".uvtk[250:499]" 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040104
		 -0.63043129 0.39040104 -0.63043129 0.39040092 -0.63043129 0.39040092 -0.63043129
		 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129
		 0.58577925 -0.73735774 0.58577925 -0.73735774 0.58577925 -0.73735774 0.58577925 -0.73735774
		 0.58577931 -0.73735774 0.58577925 -0.73735774 0.58577925 -0.73735774 0.58577925 -0.73735774
		 0.58577925 -0.73735774 0.58577931 -0.73735774 0.58577931 -0.73735774 0.58577925 -0.73735774
		 0.58577925 -0.73735774 0.58577931 -0.73735774 0.58577925 -0.73735774 0.58577919 -0.73735774
		 0.58577931 -0.73735774 0.58577925 -0.73735774 0.58577931 -0.73735774 0.58577925 -0.73735774
		 0.58577925 -0.73735774 0.58577919 -0.73735774 0.58577925 -0.73735774 0.58577919 -0.73735774
		 0.58577931 -0.73735774 0.58577925 -0.73735774 0.58577931 -0.73735774 0.58577925 -0.73735774
		 0.58577925 -0.73735774 0.58577925 -0.73735774 0.58577925 -0.73735774 0.58577925 -0.73735774
		 0.58577925 -0.73735774 0.58577931 -0.73735774 0.58577925 -0.73735774 0.58577925 -0.73735774
		 0.58577931 -0.73735774 0.58577925 -0.73735774 0.58577925 -0.73735774 0.58577925 -0.73735774
		 0.61430579 -0.74350005 0.61430579 -0.74350005 0.61430579 -0.74350005 0.61430579 -0.74350005
		 0.61430585 -0.74350005 0.61430579 -0.74350005 0.61430585 -0.74350005 0.61430579 -0.74350005
		 0.61430579 -0.74350005 0.61430597 -0.74350005 0.61430579 -0.74350005 0.61430585 -0.74350005
		 0.61430579 -0.74350005 0.61430597 -0.74350005 0.61430585 -0.74350005 0.61430585 -0.74350005
		 0.61430579 -0.74350005 0.61430579 -0.74350005 0.61430579 -0.74350005 0.61430579 -0.74350005
		 0.61430579 -0.74350005 0.61430585 -0.74350005 0.61430585 -0.74350005 0.61430585 -0.74350005
		 0.61430579 -0.74350005 0.61430579 -0.74350005 0.61430579 -0.74350005 0.61430585 -0.74350005
		 0.61430597 -0.74350005 0.61430597 -0.74350005 0.61430585 -0.74350005 0.61430579 -0.74350005
		 0.61430579 -0.74350005 0.61430597 -0.74350005 0.61430579 -0.74350005 0.61430579 -0.74350005
		 0.61430585 -0.74350005 0.61430579 -0.74350005 0.61430579 -0.74350005 0.61430579 -0.74350005
		 0.64283246 -0.74349999 0.64283246 -0.74350005 0.64283246 -0.74349999 0.64283246 -0.74350005
		 0.64283246 -0.74349999 0.64283252 -0.74350005 0.64283246 -0.74349999 0.6428324 -0.74350005
		 0.6428324 -0.74349999 0.64283246 -0.74350005 0.64283246 -0.74349999 0.64283246 -0.74349999
		 0.64283246 -0.74349999 0.64283246 -0.74349999 0.6428324 -0.74349999 0.64283246 -0.74349999
		 0.64283246 -0.74349999 0.64283246 -0.74349999 0.64283246 -0.74349999 0.64283246 -0.74349999
		 0.64283246 -0.74349999 0.64283246 -0.74349999 0.6428324 -0.74349999 0.64283246 -0.74350005
		 0.64283246 -0.74349999 0.64283246 -0.74350005 0.64283246 -0.74350005 0.64283246 -0.74350005
		 0.64283246 -0.74350005 0.64283246 -0.74350005 0.64283246 -0.74349999 0.6428324 -0.74349999
		 0.6428324 -0.74349999 0.64283246 -0.74349999 0.64283246 -0.74350005 0.64283246 -0.74349999
		 0.64283246 -0.74350005 0.64283252 -0.74349999 0.64283246 -0.74349999 0.64283246 -0.74349999
		 0.67135912 -0.74349999 0.67135912 -0.74349993 0.67135912 -0.74349999 0.67135912 -0.74349993
		 0.67135912 -0.74349999 0.67135912 -0.74349993 0.67135912 -0.74349999 0.67135912 -0.74349993
		 0.67135912 -0.74349999 0.67135912 -0.74349993 0.67135912 -0.74349993 0.67135912 -0.74349993
		 0.67135912 -0.74349993 0.67135912 -0.74349993 0.67135918 -0.74349993 0.67135912 -0.74349993
		 0.67135912 -0.74349993 0.67135912 -0.74349993 0.67135918 -0.74349993 0.67135912 -0.74349993
		 0.67135912 -0.74349993 0.67135912 -0.74349993 0.67135918 -0.74349999 0.67135912 -0.74349993
		 0.67135912 -0.74349999 0.67135912 -0.74349993 0.67135912 -0.74349999 0.67135912 -0.74349999
		 0.67135912 -0.74349999 0.67135912 -0.74349999 0.67135912 -0.74349993 0.67135912 -0.74349993
		 0.67135912 -0.74349993 0.67135912 -0.74349993 0.67135912 -0.74349993 0.67135912 -0.74349999
		 0.67135912 -0.74349993 0.67135912 -0.74349999 0.67135912 -0.74349993 0.67135912 -0.74349993
		 0.1440317 0.30432463 0.14417708 0.29599047 0.14708126 0.29395694 0.1468631 0.30645818
		 0.13629577 0.29327661 0.13525927 0.28988618 0.13606045 0.30676168 0.13490617 0.31011385
		 0.13127932 0.29993361 0.12773454 0.29987174 0.14686307 0.30645818 0.14708132 0.29395694
		 0.14417714 0.29599047 0.14403161 0.30432457 0.13525918 0.28988618 0.13629583 0.29327661
		 0.13490617 0.31011385 0.1360603 0.30676168 0.1277346 0.29987174 0.13127929 0.29993361
		 -0.025596231 0.44113672 -0.017624944 0.44113672 -0.017624944 0.45886326 -0.025596231
		 0.45886326 -0.030377239 0.44113672 -0.030377239 0.45886326 -0.017552227 0.44113678
		 -0.02543363 0.44113678 -0.02543363 0.45886332 -0.017552227 0.45886332 -0.030450016
		 0.44113678 -0.030450016 0.45886332 0.022586226 0.59760749 0.022586226 0.6095643 0.040312827
		 0.6095643 0.040312827 0.59760749 0.022586226 0.5904358 0.040312827 0.5904358 0.022586226
		 0.60967338 0.022586226 0.59785134 0.040312827 0.59785134 0.040312827 0.60967338 0.022586226
		 0.59032661 0.040312827 0.59032661 -0.062311411 0.53998631 -0.044584841 0.53998631
		 -0.060515821 0.57543939 -0.078242362 0.57543939 -0.044584841 0.61089236 -0.062311411
		 0.61089236 -0.062311411 0.53998631 -0.044584841 0.53998631 -0.060515821 0.57543939
		 -0.078242362 0.57543939 -0.044584841 0.61089236 -0.062311411 0.61089236 0.38819262
		 0.096928954 0.38214514 0.00069118291 0.40772578 0.00069118291 0.40277359 0.096928954
		 0.39895859 0.10886097 0.39545164 0.11305058 0.39194468 0.10886097 0.38032675 -0.03177762
		 0.40924591 -0.03177762 0.37871221 -0.060606822 0.41059557 -0.060606822 0.38153562
		 -0.09532398 0.40745315 -0.09532398 0.38435957 -0.11305051 0.40462926 -0.11305051
		 0.55712473 0.096928775 0.56236249 0.0006910935 0.53678179 0.0006910935 0.54305649
		 0.096928775 0.54658139 0.10886091 0.55008829 0.11305037 0.55359524 0.10886091 0.56388259
		 -0.031777829 0.53496343 -0.031777829;
	setAttr ".uvtk[500:749]" 0.56523222 -0.060606852 0.53334886 -0.060606852 0.56208986
		 -0.09532398 0.53617227 -0.09532398 0.55926591 -0.11305054 0.53899622 -0.11305054
		 0.59853303 0.25580102 0.60044074 0.22697191 0.63050783 0.2375751 0.63050783 0.27302814
		 0.60044074 0.22697188 0.59853303 0.25580102 0.63050783 0.27302814 0.63050783 0.2375751
		 0.60004854 0.22697194 0.5977664 0.25580108 0.63127434 0.27302811 0.63127434 0.2375751
		 0.59776646 0.25580096 0.60004854 0.22697188 0.63127434 0.2375751 0.63127434 0.27302811
		 0.72343755 -0.16681421 0.72343755 -0.20226723 0.74116409 -0.19467556 0.74116409 -0.17440587
		 0.72343761 -0.16681427 0.72343761 -0.20226723 0.74116409 -0.19467556 0.74116409 -0.17440587
		 0.72343761 -0.16681427 0.72343761 -0.20226723 0.74116409 -0.19467562 0.74116409 -0.17440587
		 0.72343761 -0.16681421 0.72343761 -0.20226723 0.74116409 -0.19467562 0.74116409 -0.17440587
		 0.39040098 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129
		 0.39040104 -0.63043129 0.39040104 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129
		 0.39040098 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129
		 0.39040098 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129
		 0.31313661 -0.099999942 0.31313661 -0.099999942 0.31313661 -0.10000002 0.31313661
		 -0.10000002 0.31313661 -0.099999942 0.31313661 -0.10000002 0.31313661 -0.099999942
		 0.31313661 -0.10000002 0.31313661 -0.099999942 0.31313661 -0.10000002 0.31313661
		 -0.099999942 0.31313661 -0.10000002 0.31313661 -0.099999942 0.31313661 -0.10000002
		 0.31313661 -0.099999987 0.31313661 -0.099999987 0.31313661 -0.10000005 0.31313661
		 -0.10000005 0.31313661 -0.099999987 0.31313661 -0.10000005 0.31313661 -0.099999987
		 0.31313661 -0.10000005 0.31313661 -0.099999987 0.31313661 -0.10000005 0.31313661
		 -0.099999987 0.31313661 -0.10000005 0.31313661 -0.099999987 0.31313661 -0.10000005
		 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667
		 -0.099999972 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667 -0.10000002
		 0.31313667 -0.099999972 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667
		 -0.10000002 0.31313667 -0.099999972 0.31313667 -0.10000002 0.31313667 -0.099999972
		 0.31313667 -0.099999987 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313667
		 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987
		 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313661
		 -0.099999987 0.31313661 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002
		 0.31313661 -0.099999972 0.31313661 -0.099999972 0.31313661 -0.10000002 0.31313661
		 -0.10000002 0.31313661 -0.099999972 0.31313661 -0.10000002 0.31313661 -0.099999972
		 0.31313661 -0.10000002 0.31313661 -0.099999972 0.31313661 -0.10000002 0.31313661
		 -0.099999972 0.31313661 -0.10000002 0.31313661 -0.099999972 0.31313661 -0.10000002
		 0.31313667 -0.099999987 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313667
		 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987
		 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313667
		 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002
		 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667
		 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002
		 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667
		 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987
		 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667
		 -0.099999972 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667 -0.10000002
		 0.31313667 -0.099999972 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667
		 -0.10000002 0.31313667 -0.099999972 0.31313667 -0.10000002 0.31313667 -0.099999972
		 0.39040092 -0.63043129 0.39040092 -0.63043129 0.39040104 -0.63043129 0.39040104 -0.63043129
		 0.39040098 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129
		 0.39040092 -0.63043129 0.39040092 -0.63043129 0.39040104 -0.63043129 0.39040104 -0.63043129
		 0.39040092 -0.63043129 0.39040092 -0.63043129 0.39040098 -0.63043129 0.39040098 -0.63043129
		 0.31313661 -0.099999987 0.31313661 -0.099999987 0.31313661 -0.10000005 0.31313661
		 -0.10000005 0.31313661 -0.099999987 0.31313661 -0.10000005 0.31313661 -0.099999987
		 0.31313661 -0.10000005 0.31313661 -0.099999987 0.31313661 -0.10000005 0.31313661
		 -0.099999987 0.31313661 -0.10000005 0.31313661 -0.099999987 0.31313661 -0.10000005
		 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661
		 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002
		 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661
		 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.099999987
		 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002
		 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002
		 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002
		 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313661 -0.099999987 0.31313661
		 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.099999987
		 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313661
		 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002
		 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313667 -0.099999972 0.31313667
		 -0.099999972 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.099999972
		 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667 -0.10000002 0.31313667
		 -0.099999972 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667 -0.10000002;
	setAttr ".uvtk[750:999]" 0.31313667 -0.099999972 0.31313667 -0.10000002 0.31313661
		 -0.099999987 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.10000002
		 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661
		 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.099999987
		 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313667
		 -0.10000005 0.31313667 -0.10000005 0.31313667 -0.099999987 0.31313667 -0.099999987
		 0.31313667 -0.10000005 0.31313667 -0.099999987 0.31313667 -0.10000005 0.31313667
		 -0.099999987 0.31313667 -0.10000005 0.31313667 -0.099999987 0.31313667 -0.10000005
		 0.31313667 -0.099999987 0.31313667 -0.10000005 0.31313667 -0.099999987 0.31313661
		 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.099999972 0.31313661 -0.099999972
		 0.31313661 -0.10000002 0.31313661 -0.099999972 0.31313661 -0.10000002 0.31313661
		 -0.099999972 0.31313661 -0.10000002 0.31313661 -0.099999972 0.31313661 -0.10000002
		 0.31313661 -0.099999972 0.31313661 -0.10000002 0.31313661 -0.099999972 -0.025596231
		 0.44113672 -0.017625064 0.44113672 -0.017625064 0.45886326 -0.025596231 0.45886326
		 -0.030377239 0.44113672 -0.030377239 0.45886326 0.23184115 0.44728583 0.22395968
		 0.44728583 0.22395968 0.46501237 0.23184115 0.46501237 0.21894324 0.44728583 0.21894324
		 0.46501237 0.022586256 0.59760731 0.022586256 0.60956419 0.040312827 0.60956419 0.040312827
		 0.59760731 0.022586256 0.59043568 0.040312827 0.59043568 0.022586435 0.60967332 0.022586435
		 0.59785122 0.040312827 0.59785122 0.040312827 0.60967332 0.022586435 0.59032661 0.040312827
		 0.59032661 -0.11433443 0.57462627 -0.10600027 0.57462627 -0.10600027 0.59235281 -0.11433443
		 0.59235281 0.016416341 0.60886329 0.0039148927 0.60886329 0.0039148927 0.59113681
		 0.016416341 0.59113681 0.0090744495 0.52811873 0.0090744495 0.51039219 0.016519547
		 0.51039219 0.016519547 0.52811873 0.038720608 0.52742964 0.038720608 0.50970316 0.046165824
		 0.50970316 0.046165824 0.52742964 0.35898855 0.096928954 0.36020297 0.00069118291
		 0.37301254 0.00069118291 0.3631984 0.096928954 0.35649943 0.096928954 0.35262921
		 0.00069118291 0.36020729 -0.031777799 0.3729912 -0.031777799 0.36142778 0.10886097
		 0.35893604 0.10886097 0.35147738 0.096928954 0.3373481 0.00069118291 0.35264874 -0.031777799
		 0.35650143 0.10886097 0.36021116 -0.060606852 0.37297228 -0.060606852 0.36080965
		 0.11305058 0.35891902 0.11305058 0.33739826 -0.031777799 0.353248 0.10886097 0.35650206
		 0.11305058 0.36021581 -0.095323965 0.36818171 -0.095323965 0.35266608 -0.060606852
		 0.33744282 -0.060606852 0.35386613 0.11305058 0.35268694 -0.095323965 0.36203051
		 -0.11305055 0.36464399 -0.11305055 0.34226421 -0.095323965 0.35462651 -0.11305055
		 0.35688925 -0.11305055 0.34624353 -0.11305055 0.34961385 -0.11305055 0.3631984 0.096928954
		 0.37301254 0.00069118291 0.36020291 0.00069118291 0.35898855 0.096928954 0.3729912
		 -0.03177774 0.36020729 -0.03177774 0.35262918 0.00069118291 0.35649946 0.096928954
		 0.35893604 0.10886097 0.36142778 0.10886097 0.37297228 -0.060606882 0.36021116 -0.060606882
		 0.35264871 -0.03177774 0.3373481 0.00069118291 0.35147738 0.096928954 0.3565014 0.10886097
		 0.35891902 0.11305058 0.36080962 0.11305058 0.36818177 -0.095323965 0.36021581 -0.095323965
		 0.33739829 -0.03177774 0.353248 0.10886097 0.35650206 0.11305058 0.36464396 -0.11305055
		 0.36203051 -0.11305055 0.35268691 -0.095323965 0.35266605 -0.060606882 0.33744282
		 -0.060606882 0.35386613 0.11305058 0.35688928 -0.11305055 0.35462651 -0.11305055
		 0.34226418 -0.095323965 0.34961382 -0.11305055 0.34624353 -0.11305055 0.16441771
		 -0.39969069 0.16567215 -0.36423767 0.15811357 -0.36423767 0.15687266 -0.39969069
		 0.15749505 -0.36423761 0.15749118 -0.39969069 0.16503623 -0.39969069 0.16505364 -0.36423761
		 -0.21803777 0.16826414 -0.21803777 0.16826414 -0.21803777 0.16826414 -0.21803777
		 0.16826414 -0.21803777 0.16826414 -0.21803777 0.16826414 -0.21803777 0.16826414 -0.21803777
		 0.16826414 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667
		 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002
		 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.099999957
		 0.31313667 -0.099999957 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667
		 -0.099999957 0.31313667 -0.10000002 0.31313667 -0.099999957 0.31313667 -0.10000002
		 0.31313667 -0.099999957 0.31313667 -0.10000002 0.31313667 -0.10000005 0.31313667
		 -0.10000005 0.31313667 -0.099999957 0.31313667 -0.099999957 0.31313667 -0.10000005
		 0.31313667 -0.099999957 0.31313667 -0.10000005 0.31313667 -0.099999957 0.31313667
		 -0.10000005 0.31313667 -0.099999957 0.31313667 -0.099999987 0.31313667 -0.099999987
		 0.31313667 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667
		 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987
		 0.31313667 -0.10000002 0.31313661 -0.099999972 0.31313661 -0.099999972 0.31313661
		 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.099999972 0.31313661 -0.10000002
		 0.31313661 -0.099999972 0.31313661 -0.10000002 0.31313661 -0.099999972 0.31313661
		 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.099999987 0.31313661 -0.10000002
		 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313661
		 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002
		 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661
		 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002
		 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667
		 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.099999957 0.31313667 -0.099999957
		 0.31313661 -0.10000002 0.31313661 -0.099999957 0.31313661 -0.10000002 0.31313661
		 -0.099999957 0.31313661 -0.10000002 0.31313661 -0.099999957 -0.21803777 0.16826414
		 -0.21803777 0.16826414;
	setAttr ".uvtk[1000:1093]" -0.21803777 0.16826414 -0.21803777 0.16826414 -0.21803777
		 0.16826414 -0.21803777 0.16826414 -0.21803777 0.16826414 -0.21803777 0.16826414 0.31313661
		 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.10000002
		 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.10000002
		 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.099999957 0.31313661
		 -0.099999957 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.099999957
		 0.31313661 -0.10000002 0.31313661 -0.099999957 0.31313661 -0.10000002 0.31313661
		 -0.099999957 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661 -0.10000002
		 0.31313661 -0.099999942 0.31313661 -0.099999942 0.31313661 -0.10000002 0.31313661
		 -0.099999942 0.31313667 -0.10000002 0.31313667 -0.099999942 0.31313667 -0.10000002
		 0.31313667 -0.099999942 0.31313661 -0.10000002 0.31313661 -0.10000002 0.31313661
		 -0.099999942 0.31313661 -0.099999942 0.31313661 -0.10000002 0.31313661 -0.099999942
		 0.31313661 -0.10000002 0.31313661 -0.099999942 0.31313661 -0.10000002 0.31313661
		 -0.099999942 0.31313667 -0.099999972 0.31313667 -0.099999972 0.31313667 -0.10000002
		 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667 -0.10000002 0.31313667
		 -0.099999972 0.31313667 -0.10000002 0.31313667 -0.099999972 0.31313667 -0.10000002
		 0.31313661 -0.099999987 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313661
		 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313661 -0.099999987
		 0.31313661 -0.10000002 0.31313661 -0.099999987 0.31313661 -0.10000002 0.31313667
		 -0.10000002 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.099999987
		 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313667 -0.10000002 0.31313667
		 -0.099999987 0.31313667 -0.10000002 0.31313667 -0.099999987 0.31313661 -0.10000005
		 0.31313661 -0.10000005 0.31313661 -0.099999957 0.31313661 -0.099999957 0.31313667
		 -0.10000005 0.31313667 -0.099999957 0.31313667 -0.10000005 0.31313667 -0.099999957
		 0.31313667 -0.10000005 0.31313667 -0.099999957 0.069326222 0.50970316 0.077660471
		 0.50970316 0.077660471 0.52742964 0.069326222 0.52742964 0.016416222 0.60886329 0.0039149523
		 0.60886329 0.0039149523 0.59113669 0.016416222 0.59113669;
createNode phong -n "phong1";
	rename -uid "63EFB55C-4EAB-8C82-527F-61A7057BF190";
createNode shadingEngine -n "phong1SG";
	rename -uid "974D466C-47A5-E0F9-4595-D29DBEFE6A53";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "91F1D7D6-413F-6CCD-7FF4-498169F8AF39";
createNode file -n "file7";
	rename -uid "CE7638BF-4D2D-C24A-2B4C-E88C21D6E091";
	setAttr ".ftn" -type "string" "C:/Users/164347E/Desktop/SP2 OBJ/SP OBJ//images/EnemyShip.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "D6C74B94-407C-9DC8-C076-5282F6C46678";
createNode renderSetup -n "renderSetup";
	rename -uid "C746B323-41D7-86FB-925B-FC9C77DD5309";
createNode polyTriangulate -n "polyTriangulate1";
	rename -uid "8F65CD6D-49B0-BD24-1946-2F97C70EB79D";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "099126F1-4A7F-ABE5-ACAC-C1ABC2D95F91";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -327.38093937200267 -349.99998609225008 ;
	setAttr ".tgi[0].vh" -type "double2" -155.95237475539037 307.14284493809708 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -181.42857360839844;
	setAttr ".tgi[0].ni[0].y" 165.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 125.71428680419922;
	setAttr ".tgi[0].ni[1].y" 142.85714721679687;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -795.71429443359375;
	setAttr ".tgi[0].ni[2].y" 142.85714721679687;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -488.57144165039062;
	setAttr ".tgi[0].ni[3].y" 165.71427917480469;
	setAttr ".tgi[0].ni[3].nvs" 1923;
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
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 29 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 29 ".gn";
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
connectAttr "groupId3.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape1.i";
connectAttr "groupId4.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pTorusShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pTorusShape1.i";
connectAttr "groupId2.id" "pTorusShape1.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "pasted__pTorusShape1.i";
connectAttr "groupId6.id" "pasted__pTorusShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pTorusShape1.iog.og[0].gco";
connectAttr "groupId7.id" "pasted__pTorusShape1.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "pTorus2Shape.i";
connectAttr "groupId5.id" "pTorus2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorus2Shape.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape1.i";
connectAttr "groupId9.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape2.i";
connectAttr "groupId10.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts8.og" "polySurfaceShape3.i";
connectAttr "groupId11.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "polyExtrudeFace5.out" "pasted__pTorus1Shape.i";
connectAttr "groupId8.id" "pasted__pTorus1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pTorus1Shape.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurface2Shape.i";
connectAttr "groupId12.id" "polySurface2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface2Shape.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurface1Shape.i";
connectAttr "groupId15.id" "polySurface1Shape.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "polySurface1Shape.iog.og[1].gco";
connectAttr "groupId16.id" "polySurface1Shape.ciog.cog[0].cgid";
connectAttr "groupId19.id" "pPipeShape1.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPipeShape1.iog.og[0].gco";
connectAttr "groupParts13.og" "pPipeShape1.i";
connectAttr "groupId20.id" "pPipeShape1.ciog.cog[0].cgid";
connectAttr "groupId13.id" "pPipeShape2.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPipeShape2.iog.og[0].gco";
connectAttr "groupId14.id" "pPipeShape2.ciog.cog[0].cgid";
connectAttr "groupParts12.og" "pPipe3Shape.i";
connectAttr "groupId17.id" "pPipe3Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPipe3Shape.iog.og[0].gco";
connectAttr "groupId18.id" "pPipe3Shape.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "pPipe3Shape.iog.og[1].gco";
connectAttr "groupParts16.og" "pPipe4Shape.i";
connectAttr "groupId21.id" "pPipe4Shape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPipe4Shape.iog.og[0].gco";
connectAttr "groupId22.id" "pPipe4Shape.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pPipe4Shape.iog.og[1].gco";
connectAttr "groupId23.id" "pPipe4Shape.iog.og[2].gid";
connectAttr "blinn1SG.mwc" "pPipe4Shape.iog.og[2].gco";
connectAttr "groupId30.id" "pPipeShape3.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "pPipeShape3.iog.og[0].gco";
connectAttr "groupParts21.og" "pPipeShape3.i";
connectAttr "groupId31.id" "pPipeShape3.ciog.cog[0].cgid";
connectAttr "groupId24.id" "pPipeShape6.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "pPipeShape6.iog.og[0].gco";
connectAttr "groupId25.id" "pPipeShape6.ciog.cog[0].cgid";
connectAttr "groupParts20.og" "pPipe7Shape.i";
connectAttr "groupId26.id" "pPipe7Shape.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "pPipe7Shape.iog.og[0].gco";
connectAttr "groupId27.id" "pPipe7Shape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "pPipe7Shape.iog.og[1].gco";
connectAttr "groupId28.id" "pPipe7Shape.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "pPipe7Shape.iog.og[2].gco";
connectAttr "groupId29.id" "pPipe7Shape.iog.og[3].gid";
connectAttr "blinn1SG.mwc" "pPipe7Shape.iog.og[3].gco";
connectAttr "groupParts31.og" "polySurfaceShape4.i";
connectAttr "groupId37.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId38.id" "polySurfaceShape4.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape4.iog.og[1].gco";
connectAttr "groupId39.id" "polySurfaceShape4.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape4.iog.og[2].gco";
connectAttr "groupId40.id" "polySurfaceShape4.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape4.iog.og[3].gco";
connectAttr "groupId41.id" "polySurfaceShape4.iog.og[4].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape4.iog.og[4].gco";
connectAttr "groupParts36.og" "polySurfaceShape5.i";
connectAttr "groupId42.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupId43.id" "polySurfaceShape5.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape5.iog.og[1].gco";
connectAttr "groupId44.id" "polySurfaceShape5.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape5.iog.og[2].gco";
connectAttr "groupId45.id" "polySurfaceShape5.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape5.iog.og[3].gco";
connectAttr "groupId46.id" "polySurfaceShape5.iog.og[4].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape5.iog.og[4].gco";
connectAttr "groupParts41.og" "polySurfaceShape6.i";
connectAttr "groupId47.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupId48.id" "polySurfaceShape6.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape6.iog.og[1].gco";
connectAttr "groupId49.id" "polySurfaceShape6.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape6.iog.og[2].gco";
connectAttr "groupId50.id" "polySurfaceShape6.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape6.iog.og[3].gco";
connectAttr "groupId51.id" "polySurfaceShape6.iog.og[4].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape6.iog.og[4].gco";
connectAttr "groupParts46.og" "polySurfaceShape7.i";
connectAttr "groupId52.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId53.id" "polySurfaceShape7.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape7.iog.og[1].gco";
connectAttr "groupId54.id" "polySurfaceShape7.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape7.iog.og[2].gco";
connectAttr "groupId55.id" "polySurfaceShape7.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape7.iog.og[3].gco";
connectAttr "groupId56.id" "polySurfaceShape7.iog.og[4].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape7.iog.og[4].gco";
connectAttr "groupParts51.og" "polySurfaceShape8.i";
connectAttr "groupId57.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupId58.id" "polySurfaceShape8.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape8.iog.og[1].gco";
connectAttr "groupId59.id" "polySurfaceShape8.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape8.iog.og[2].gco";
connectAttr "groupId60.id" "polySurfaceShape8.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape8.iog.og[3].gco";
connectAttr "groupId61.id" "polySurfaceShape8.iog.og[4].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape8.iog.og[4].gco";
connectAttr "groupParts56.og" "polySurfaceShape9.i";
connectAttr "groupId62.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId63.id" "polySurfaceShape9.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape9.iog.og[1].gco";
connectAttr "groupId64.id" "polySurfaceShape9.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape9.iog.og[2].gco";
connectAttr "groupId65.id" "polySurfaceShape9.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape9.iog.og[3].gco";
connectAttr "groupId66.id" "polySurfaceShape9.iog.og[4].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape9.iog.og[4].gco";
connectAttr "groupParts61.og" "polySurfaceShape10.i";
connectAttr "groupId67.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupId68.id" "polySurfaceShape10.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape10.iog.og[1].gco";
connectAttr "groupId69.id" "polySurfaceShape10.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape10.iog.og[2].gco";
connectAttr "groupId70.id" "polySurfaceShape10.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape10.iog.og[3].gco";
connectAttr "groupId71.id" "polySurfaceShape10.iog.og[4].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape10.iog.og[4].gco";
connectAttr "polyReduce1.out" "pPipe8Shape.i";
connectAttr "groupId32.id" "pPipe8Shape.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "pPipe8Shape.iog.og[0].gco";
connectAttr "groupId33.id" "pPipe8Shape.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "pPipe8Shape.iog.og[1].gco";
connectAttr "groupId34.id" "pPipe8Shape.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "pPipe8Shape.iog.og[2].gco";
connectAttr "groupId35.id" "pPipe8Shape.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "pPipe8Shape.iog.og[3].gco";
connectAttr "groupId36.id" "pPipe8Shape.iog.og[4].gid";
connectAttr "blinn1SG.mwc" "pPipe8Shape.iog.og[4].gco";
connectAttr "polySplit2.out" "polySurfaceShape11.i";
connectAttr "groupId75.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupId76.id" "polySurfaceShape11.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape11.iog.og[1].gco";
connectAttr "groupId77.id" "polySurfaceShape11.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape11.iog.og[2].gco";
connectAttr "groupParts76.og" "polySurfaceShape14.i";
connectAttr "groupId84.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupId85.id" "polySurfaceShape14.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape14.iog.og[1].gco";
connectAttr "groupId86.id" "polySurfaceShape14.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape14.iog.og[2].gco";
connectAttr "groupParts82.og" "polySurfaceShape16.i";
connectAttr "groupId90.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupId91.id" "polySurfaceShape16.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape16.iog.og[1].gco";
connectAttr "groupId92.id" "polySurfaceShape16.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape16.iog.og[2].gco";
connectAttr "groupParts64.og" "polySurface10Shape.i";
connectAttr "groupId72.id" "polySurface10Shape.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurface10Shape.iog.og[0].gco";
connectAttr "groupId73.id" "polySurface10Shape.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurface10Shape.iog.og[1].gco";
connectAttr "groupId74.id" "polySurface10Shape.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurface10Shape.iog.og[2].gco";
connectAttr "groupId93.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts83.og" "pCubeShape2.i";
connectAttr "groupId94.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupParts85.og" "pCube3Shape.i";
connectAttr "groupId95.id" "pCube3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube3Shape.iog.og[0].gco";
connectAttr "groupId96.id" "pCube3Shape.iog.og[1].gid";
connectAttr "lambert5SG.mwc" "pCube3Shape.iog.og[1].gco";
connectAttr "groupId97.id" "pCube4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[0].gco";
connectAttr "groupId98.id" "pCube4Shape.iog.og[1].gid";
connectAttr "lambert5SG.mwc" "pCube4Shape.iog.og[1].gco";
connectAttr "groupId99.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts86.og" "pCubeShape3.i";
connectAttr "groupId100.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupParts92.og" "polySurfaceShape18.i";
connectAttr "groupId105.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupId106.id" "polySurfaceShape18.iog.og[1].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape18.iog.og[1].gco";
connectAttr "groupParts88.og" "pCube6Shape.i";
connectAttr "groupId101.id" "pCube6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube6Shape.iog.og[0].gco";
connectAttr "groupId102.id" "pCube6Shape.iog.og[1].gid";
connectAttr "lambert5SG.mwc" "pCube6Shape.iog.og[1].gco";
connectAttr "groupId107.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts93.og" "pCubeShape4.i";
connectAttr "groupId108.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupParts95.og" "pCube8Shape.i";
connectAttr "groupId109.id" "pCube8Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube8Shape.iog.og[0].gco";
connectAttr "groupId110.id" "pCube8Shape.iog.og[1].gid";
connectAttr "lambert5SG.mwc" "pCube8Shape.iog.og[1].gco";
connectAttr "groupId111.id" "pPipeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape7.iog.og[0].gco";
connectAttr "groupParts96.og" "pPipeShape7.i";
connectAttr "groupId112.id" "pPipeShape7.ciog.cog[0].cgid";
connectAttr "groupId117.id" "pPipeShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape10.iog.og[0].gco";
connectAttr "groupId118.id" "pPipeShape10.ciog.cog[0].cgid";
connectAttr "groupParts98.og" "pPipe11Shape.i";
connectAttr "groupId113.id" "pPipe11Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipe11Shape.iog.og[0].gco";
connectAttr "groupId114.id" "pPipe11Shape.iog.og[1].gid";
connectAttr "lambert5SG.mwc" "pPipe11Shape.iog.og[1].gco";
connectAttr "groupParts100.og" "pPipe12Shape.i";
connectAttr "groupId115.id" "pPipe12Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipe12Shape.iog.og[0].gco";
connectAttr "groupId116.id" "pPipe12Shape.iog.og[1].gid";
connectAttr "lambert5SG.mwc" "pPipe12Shape.iog.og[1].gco";
connectAttr "polyTriangulate1.out" "pPipe13Shape.i";
connectAttr "polyTweakUV13.uvtk[0]" "pPipe13Shape.uvst[0].uvtw";
connectAttr "groupParts26.og" "polyReduce1.ip";
connectAttr "groupParts25.og" "groupParts26.ig";
connectAttr "groupId36.id" "groupParts26.gi";
connectAttr "groupParts24.og" "groupParts25.ig";
connectAttr "groupId35.id" "groupParts25.gi";
connectAttr "groupParts23.og" "groupParts24.ig";
connectAttr "groupId34.id" "groupParts24.gi";
connectAttr "groupParts22.og" "groupParts23.ig";
connectAttr "groupId33.id" "groupParts23.gi";
connectAttr "polyUnite8.out" "groupParts22.ig";
connectAttr "groupId32.id" "groupParts22.gi";
connectAttr "pPipeShape3.o" "polyUnite8.ip[0]";
connectAttr "pPipe7Shape.o" "polyUnite8.ip[1]";
connectAttr "pPipeShape3.wm" "polyUnite8.im[0]";
connectAttr "pPipe7Shape.wm" "polyUnite8.im[1]";
connectAttr "pPipeShape3.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "pPipeShape3.ciog.cog[0]" "lambert5SG.dsm" -na;
connectAttr "pPipe8Shape.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurface10Shape.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "pCube3Shape.iog.og[1]" "lambert5SG.dsm" -na;
connectAttr "pCube4Shape.iog.og[1]" "lambert5SG.dsm" -na;
connectAttr "pCube6Shape.iog.og[1]" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[1]" "lambert5SG.dsm" -na;
connectAttr "pCube8Shape.iog.og[1]" "lambert5SG.dsm" -na;
connectAttr "pPipe11Shape.iog.og[1]" "lambert5SG.dsm" -na;
connectAttr "pPipe12Shape.iog.og[1]" "lambert5SG.dsm" -na;
connectAttr "groupId30.msg" "lambert5SG.gn" -na;
connectAttr "groupId31.msg" "lambert5SG.gn" -na;
connectAttr "groupId32.msg" "lambert5SG.gn" -na;
connectAttr "groupId37.msg" "lambert5SG.gn" -na;
connectAttr "groupId42.msg" "lambert5SG.gn" -na;
connectAttr "groupId47.msg" "lambert5SG.gn" -na;
connectAttr "groupId52.msg" "lambert5SG.gn" -na;
connectAttr "groupId57.msg" "lambert5SG.gn" -na;
connectAttr "groupId62.msg" "lambert5SG.gn" -na;
connectAttr "groupId67.msg" "lambert5SG.gn" -na;
connectAttr "groupId72.msg" "lambert5SG.gn" -na;
connectAttr "groupId75.msg" "lambert5SG.gn" -na;
connectAttr "groupId84.msg" "lambert5SG.gn" -na;
connectAttr "groupId90.msg" "lambert5SG.gn" -na;
connectAttr "groupId96.msg" "lambert5SG.gn" -na;
connectAttr "groupId98.msg" "lambert5SG.gn" -na;
connectAttr "groupId102.msg" "lambert5SG.gn" -na;
connectAttr "groupId106.msg" "lambert5SG.gn" -na;
connectAttr "groupId110.msg" "lambert5SG.gn" -na;
connectAttr "groupId114.msg" "lambert5SG.gn" -na;
connectAttr "groupId116.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo5.sg";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "polyPipe2.out" "groupParts21.ig";
connectAttr "groupId30.id" "groupParts21.gi";
connectAttr "groupParts19.og" "groupParts20.ig";
connectAttr "groupId29.id" "groupParts20.gi";
connectAttr "groupParts18.og" "groupParts19.ig";
connectAttr "groupId28.id" "groupParts19.gi";
connectAttr "groupParts17.og" "groupParts18.ig";
connectAttr "groupId27.id" "groupParts18.gi";
connectAttr "polyUnite7.out" "groupParts17.ig";
connectAttr "groupId26.id" "groupParts17.gi";
connectAttr "pPipeShape6.o" "polyUnite7.ip[0]";
connectAttr "pPipe4Shape.o" "polyUnite7.ip[1]";
connectAttr "pPipeShape6.wm" "polyUnite7.im[0]";
connectAttr "pPipe4Shape.wm" "polyUnite7.im[1]";
connectAttr "pPipeShape6.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "pPipeShape6.ciog.cog[0]" "lambert4SG.dsm" -na;
connectAttr "pPipe7Shape.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "pPipe8Shape.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurface10Shape.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "groupId24.msg" "lambert4SG.gn" -na;
connectAttr "groupId25.msg" "lambert4SG.gn" -na;
connectAttr "groupId26.msg" "lambert4SG.gn" -na;
connectAttr "groupId33.msg" "lambert4SG.gn" -na;
connectAttr "groupId38.msg" "lambert4SG.gn" -na;
connectAttr "groupId43.msg" "lambert4SG.gn" -na;
connectAttr "groupId48.msg" "lambert4SG.gn" -na;
connectAttr "groupId53.msg" "lambert4SG.gn" -na;
connectAttr "groupId58.msg" "lambert4SG.gn" -na;
connectAttr "groupId63.msg" "lambert4SG.gn" -na;
connectAttr "groupId68.msg" "lambert4SG.gn" -na;
connectAttr "groupId73.msg" "lambert4SG.gn" -na;
connectAttr "groupId76.msg" "lambert4SG.gn" -na;
connectAttr "groupId85.msg" "lambert4SG.gn" -na;
connectAttr "groupId91.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "groupParts15.og" "groupParts16.ig";
connectAttr "groupId23.id" "groupParts16.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId22.id" "groupParts15.gi";
connectAttr "polyUnite6.out" "groupParts14.ig";
connectAttr "groupId21.id" "groupParts14.gi";
connectAttr "pPipeShape1.o" "polyUnite6.ip[0]";
connectAttr "pPipe3Shape.o" "polyUnite6.ip[1]";
connectAttr "pPipeShape1.wm" "polyUnite6.im[0]";
connectAttr "pPipe3Shape.wm" "polyUnite6.im[1]";
connectAttr "pPipeShape1.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPipeShape1.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "pPipe4Shape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPipe7Shape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "pPipe8Shape.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurface10Shape.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "groupId19.msg" "lambert3SG.gn" -na;
connectAttr "groupId20.msg" "lambert3SG.gn" -na;
connectAttr "groupId21.msg" "lambert3SG.gn" -na;
connectAttr "groupId27.msg" "lambert3SG.gn" -na;
connectAttr "groupId34.msg" "lambert3SG.gn" -na;
connectAttr "groupId39.msg" "lambert3SG.gn" -na;
connectAttr "groupId44.msg" "lambert3SG.gn" -na;
connectAttr "groupId49.msg" "lambert3SG.gn" -na;
connectAttr "groupId54.msg" "lambert3SG.gn" -na;
connectAttr "groupId59.msg" "lambert3SG.gn" -na;
connectAttr "groupId64.msg" "lambert3SG.gn" -na;
connectAttr "groupId69.msg" "lambert3SG.gn" -na;
connectAttr "groupId74.msg" "lambert3SG.gn" -na;
connectAttr "groupId77.msg" "lambert3SG.gn" -na;
connectAttr "groupId86.msg" "lambert3SG.gn" -na;
connectAttr "groupId92.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo3.sg";
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
connectAttr "polyPipe1.out" "groupParts13.ig";
connectAttr "groupId19.id" "groupParts13.gi";
connectAttr "groupParts11.og" "groupParts12.ig";
connectAttr "groupId18.id" "groupParts12.gi";
connectAttr "polyUnite5.out" "groupParts11.ig";
connectAttr "groupId17.id" "groupParts11.gi";
connectAttr "pPipeShape2.o" "polyUnite5.ip[0]";
connectAttr "polySurface1Shape.o" "polyUnite5.ip[1]";
connectAttr "pPipeShape2.wm" "polyUnite5.im[0]";
connectAttr "polySurface1Shape.wm" "polyUnite5.im[1]";
connectAttr "pPipeShape2.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pPipeShape2.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "pPipe3Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pPipe4Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pPipe7Shape.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "pPipe8Shape.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "groupId13.msg" "lambert2SG.gn" -na;
connectAttr "groupId14.msg" "lambert2SG.gn" -na;
connectAttr "groupId17.msg" "lambert2SG.gn" -na;
connectAttr "groupId22.msg" "lambert2SG.gn" -na;
connectAttr "groupId28.msg" "lambert2SG.gn" -na;
connectAttr "groupId35.msg" "lambert2SG.gn" -na;
connectAttr "groupId40.msg" "lambert2SG.gn" -na;
connectAttr "groupId45.msg" "lambert2SG.gn" -na;
connectAttr "groupId50.msg" "lambert2SG.gn" -na;
connectAttr "groupId55.msg" "lambert2SG.gn" -na;
connectAttr "groupId60.msg" "lambert2SG.gn" -na;
connectAttr "groupId65.msg" "lambert2SG.gn" -na;
connectAttr "groupId70.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
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
connectAttr "polyUnite4.out" "groupParts10.ig";
connectAttr "groupId15.id" "groupParts10.gi";
connectAttr "polySurfaceShape1.o" "polyUnite4.ip[0]";
connectAttr "polySurface2Shape.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape1.wm" "polyUnite4.im[0]";
connectAttr "polySurface2Shape.wm" "polyUnite4.im[1]";
connectAttr "polySeparate1.out[0]" "groupParts6.ig";
connectAttr "groupId9.id" "groupParts6.gi";
connectAttr "pasted__pTorus1Shape.o" "polySeparate1.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "pasted__pTorus1Shape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "pasted__pTorus1Shape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "groupParts5.og" "polyExtrudeFace3.ip";
connectAttr "pasted__pTorus1Shape.wm" "polyExtrudeFace3.mp";
connectAttr "polyUnite2.out" "groupParts5.ig";
connectAttr "groupId8.id" "groupParts5.gi";
connectAttr "pasted__pTorusShape1.o" "polyUnite2.ip[0]";
connectAttr "pTorus2Shape.o" "polyUnite2.ip[1]";
connectAttr "pasted__pTorusShape1.wm" "polyUnite2.im[0]";
connectAttr "pTorus2Shape.wm" "polyUnite2.im[1]";
connectAttr "pasted__polyTorus1.out" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pTorusShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "pTorusShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "polyTorus1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyExtrudeFace2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polySplitRing5.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyUnite3.out" "groupParts9.ig";
connectAttr "groupId12.id" "groupParts9.gi";
connectAttr "polySurfaceShape2.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape2.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite3.im[1]";
connectAttr "polySeparate1.out[1]" "groupParts7.ig";
connectAttr "groupId10.id" "groupParts7.gi";
connectAttr "polySeparate1.out[2]" "groupParts8.ig";
connectAttr "groupId11.id" "groupParts8.gi";
connectAttr "polySurface1Shape.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "polySurface1Shape.ciog.cog[0]" "blinn1SG.dsm" -na;
connectAttr "pPipe3Shape.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "pPipe4Shape.iog.og[2]" "blinn1SG.dsm" -na;
connectAttr "pPipe7Shape.iog.og[3]" "blinn1SG.dsm" -na;
connectAttr "pPipe8Shape.iog.og[4]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[4]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[4]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[4]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[4]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[4]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[4]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[4]" "blinn1SG.dsm" -na;
connectAttr "groupId15.msg" "blinn1SG.gn" -na;
connectAttr "groupId16.msg" "blinn1SG.gn" -na;
connectAttr "groupId18.msg" "blinn1SG.gn" -na;
connectAttr "groupId23.msg" "blinn1SG.gn" -na;
connectAttr "groupId29.msg" "blinn1SG.gn" -na;
connectAttr "groupId36.msg" "blinn1SG.gn" -na;
connectAttr "groupId41.msg" "blinn1SG.gn" -na;
connectAttr "groupId46.msg" "blinn1SG.gn" -na;
connectAttr "groupId51.msg" "blinn1SG.gn" -na;
connectAttr "groupId56.msg" "blinn1SG.gn" -na;
connectAttr "groupId61.msg" "blinn1SG.gn" -na;
connectAttr "groupId66.msg" "blinn1SG.gn" -na;
connectAttr "groupId71.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pPipe8Shape.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts27.ig";
connectAttr "groupId37.id" "groupParts27.gi";
connectAttr "groupParts27.og" "groupParts28.ig";
connectAttr "groupId38.id" "groupParts28.gi";
connectAttr "groupParts28.og" "groupParts29.ig";
connectAttr "groupId39.id" "groupParts29.gi";
connectAttr "groupParts29.og" "groupParts30.ig";
connectAttr "groupId40.id" "groupParts30.gi";
connectAttr "groupParts30.og" "groupParts31.ig";
connectAttr "groupId41.id" "groupParts31.gi";
connectAttr "polySeparate2.out[1]" "groupParts32.ig";
connectAttr "groupId42.id" "groupParts32.gi";
connectAttr "groupParts32.og" "groupParts33.ig";
connectAttr "groupId43.id" "groupParts33.gi";
connectAttr "groupParts33.og" "groupParts34.ig";
connectAttr "groupId44.id" "groupParts34.gi";
connectAttr "groupParts34.og" "groupParts35.ig";
connectAttr "groupId45.id" "groupParts35.gi";
connectAttr "groupParts35.og" "groupParts36.ig";
connectAttr "groupId46.id" "groupParts36.gi";
connectAttr "polySeparate2.out[2]" "groupParts37.ig";
connectAttr "groupId47.id" "groupParts37.gi";
connectAttr "groupParts37.og" "groupParts38.ig";
connectAttr "groupId48.id" "groupParts38.gi";
connectAttr "groupParts38.og" "groupParts39.ig";
connectAttr "groupId49.id" "groupParts39.gi";
connectAttr "groupParts39.og" "groupParts40.ig";
connectAttr "groupId50.id" "groupParts40.gi";
connectAttr "groupParts40.og" "groupParts41.ig";
connectAttr "groupId51.id" "groupParts41.gi";
connectAttr "polySeparate2.out[3]" "groupParts42.ig";
connectAttr "groupId52.id" "groupParts42.gi";
connectAttr "groupParts42.og" "groupParts43.ig";
connectAttr "groupId53.id" "groupParts43.gi";
connectAttr "groupParts43.og" "groupParts44.ig";
connectAttr "groupId54.id" "groupParts44.gi";
connectAttr "groupParts44.og" "groupParts45.ig";
connectAttr "groupId55.id" "groupParts45.gi";
connectAttr "groupParts45.og" "groupParts46.ig";
connectAttr "groupId56.id" "groupParts46.gi";
connectAttr "polySeparate2.out[4]" "groupParts47.ig";
connectAttr "groupId57.id" "groupParts47.gi";
connectAttr "groupParts47.og" "groupParts48.ig";
connectAttr "groupId58.id" "groupParts48.gi";
connectAttr "groupParts48.og" "groupParts49.ig";
connectAttr "groupId59.id" "groupParts49.gi";
connectAttr "groupParts49.og" "groupParts50.ig";
connectAttr "groupId60.id" "groupParts50.gi";
connectAttr "groupParts50.og" "groupParts51.ig";
connectAttr "groupId61.id" "groupParts51.gi";
connectAttr "polySeparate2.out[5]" "groupParts52.ig";
connectAttr "groupId62.id" "groupParts52.gi";
connectAttr "groupParts52.og" "groupParts53.ig";
connectAttr "groupId63.id" "groupParts53.gi";
connectAttr "groupParts53.og" "groupParts54.ig";
connectAttr "groupId64.id" "groupParts54.gi";
connectAttr "groupParts54.og" "groupParts55.ig";
connectAttr "groupId65.id" "groupParts55.gi";
connectAttr "groupParts55.og" "groupParts56.ig";
connectAttr "groupId66.id" "groupParts56.gi";
connectAttr "polySeparate2.out[6]" "groupParts57.ig";
connectAttr "groupId67.id" "groupParts57.gi";
connectAttr "groupParts57.og" "groupParts58.ig";
connectAttr "groupId68.id" "groupParts58.gi";
connectAttr "groupParts58.og" "groupParts59.ig";
connectAttr "groupId69.id" "groupParts59.gi";
connectAttr "groupParts59.og" "groupParts60.ig";
connectAttr "groupId70.id" "groupParts60.gi";
connectAttr "groupParts60.og" "groupParts61.ig";
connectAttr "groupId71.id" "groupParts61.gi";
connectAttr "polySurfaceShape10.o" "polyUnite9.ip[0]";
connectAttr "polySurfaceShape9.o" "polyUnite9.ip[1]";
connectAttr "polySurfaceShape8.o" "polyUnite9.ip[2]";
connectAttr "polySurfaceShape7.o" "polyUnite9.ip[3]";
connectAttr "polySurfaceShape6.o" "polyUnite9.ip[4]";
connectAttr "polySurfaceShape5.o" "polyUnite9.ip[5]";
connectAttr "polySurfaceShape4.o" "polyUnite9.ip[6]";
connectAttr "polySurfaceShape10.wm" "polyUnite9.im[0]";
connectAttr "polySurfaceShape9.wm" "polyUnite9.im[1]";
connectAttr "polySurfaceShape8.wm" "polyUnite9.im[2]";
connectAttr "polySurfaceShape7.wm" "polyUnite9.im[3]";
connectAttr "polySurfaceShape6.wm" "polyUnite9.im[4]";
connectAttr "polySurfaceShape5.wm" "polyUnite9.im[5]";
connectAttr "polySurfaceShape4.wm" "polyUnite9.im[6]";
connectAttr "polyUnite9.out" "groupParts62.ig";
connectAttr "groupId72.id" "groupParts62.gi";
connectAttr "groupParts62.og" "groupParts63.ig";
connectAttr "groupId73.id" "groupParts63.gi";
connectAttr "groupParts63.og" "groupParts64.ig";
connectAttr "groupId74.id" "groupParts64.gi";
connectAttr "polySurface10Shape.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts65.ig";
connectAttr "groupId75.id" "groupParts65.gi";
connectAttr "groupParts65.og" "groupParts66.ig";
connectAttr "groupId76.id" "groupParts66.gi";
connectAttr "groupParts66.og" "groupParts67.ig";
connectAttr "groupId77.id" "groupParts67.gi";
connectAttr "polySeparate3.out[3]" "groupParts74.ig";
connectAttr "groupId84.id" "groupParts74.gi";
connectAttr "groupParts74.og" "groupParts75.ig";
connectAttr "groupId85.id" "groupParts75.gi";
connectAttr "groupParts75.og" "groupParts76.ig";
connectAttr "groupId86.id" "groupParts76.gi";
connectAttr "polySeparate3.out[5]" "groupParts80.ig";
connectAttr "groupId90.id" "groupParts80.gi";
connectAttr "groupParts80.og" "groupParts81.ig";
connectAttr "groupId91.id" "groupParts81.gi";
connectAttr "groupParts81.og" "groupParts82.ig";
connectAttr "groupId92.id" "groupParts82.gi";
connectAttr "groupParts67.og" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyTweak5.out" "polyBevel1.ip";
connectAttr "pCubeShape2.wm" "polyBevel1.mp";
connectAttr "polyCube2.out" "polyTweak5.ip";
connectAttr "pCubeShape2.o" "polyUnite10.ip[0]";
connectAttr "polySurfaceShape14.o" "polyUnite10.ip[1]";
connectAttr "polySurfaceShape16.o" "polyUnite10.ip[2]";
connectAttr "pCubeShape2.wm" "polyUnite10.im[0]";
connectAttr "polySurfaceShape14.wm" "polyUnite10.im[1]";
connectAttr "polySurfaceShape16.wm" "polyUnite10.im[2]";
connectAttr "polyBevel1.out" "groupParts83.ig";
connectAttr "groupId93.id" "groupParts83.gi";
connectAttr "polyUnite10.out" "groupParts84.ig";
connectAttr "groupId95.id" "groupParts84.gi";
connectAttr "groupParts84.og" "groupParts85.ig";
connectAttr "groupId96.id" "groupParts85.gi";
connectAttr "pCubeShape3.o" "polyUnite11.ip[0]";
connectAttr "polySurfaceShape11.o" "polyUnite11.ip[1]";
connectAttr "pCubeShape3.wm" "polyUnite11.im[0]";
connectAttr "polySurfaceShape11.wm" "polyUnite11.im[1]";
connectAttr "polyCube3.out" "groupParts86.ig";
connectAttr "groupId99.id" "groupParts86.gi";
connectAttr "polyUnite11.out" "groupParts87.ig";
connectAttr "groupId101.id" "groupParts87.gi";
connectAttr "groupParts87.og" "groupParts88.ig";
connectAttr "groupId102.id" "groupParts88.gi";
connectAttr "pCube6Shape.o" "polySeparate4.ip";
connectAttr "polySeparate4.out[1]" "groupParts91.ig";
connectAttr "groupId105.id" "groupParts91.gi";
connectAttr "groupParts91.og" "groupParts92.ig";
connectAttr "groupId106.id" "groupParts92.gi";
connectAttr "pCubeShape4.o" "polyUnite12.ip[0]";
connectAttr "polySurfaceShape18.o" "polyUnite12.ip[1]";
connectAttr "pCubeShape4.wm" "polyUnite12.im[0]";
connectAttr "polySurfaceShape18.wm" "polyUnite12.im[1]";
connectAttr "polyCube4.out" "groupParts93.ig";
connectAttr "groupId107.id" "groupParts93.gi";
connectAttr "polyUnite12.out" "groupParts94.ig";
connectAttr "groupId109.id" "groupParts94.gi";
connectAttr "groupParts94.og" "groupParts95.ig";
connectAttr "groupId110.id" "groupParts95.gi";
connectAttr "pPipeShape7.o" "polyUnite13.ip[0]";
connectAttr "pCube8Shape.o" "polyUnite13.ip[1]";
connectAttr "pPipeShape7.wm" "polyUnite13.im[0]";
connectAttr "pCube8Shape.wm" "polyUnite13.im[1]";
connectAttr "polyPipe3.out" "groupParts96.ig";
connectAttr "groupId111.id" "groupParts96.gi";
connectAttr "polyUnite13.out" "groupParts97.ig";
connectAttr "groupId113.id" "groupParts97.gi";
connectAttr "groupParts97.og" "groupParts98.ig";
connectAttr "groupId114.id" "groupParts98.gi";
connectAttr "pPipe11Shape.o" "polyUnite14.ip[0]";
connectAttr "pCube3Shape.o" "polyUnite14.ip[1]";
connectAttr "pPipe11Shape.wm" "polyUnite14.im[0]";
connectAttr "pCube3Shape.wm" "polyUnite14.im[1]";
connectAttr "polyUnite14.out" "groupParts99.ig";
connectAttr "groupId115.id" "groupParts99.gi";
connectAttr "groupParts99.og" "groupParts100.ig";
connectAttr "groupId116.id" "groupParts100.gi";
connectAttr "pPipe12Shape.o" "polyUnite15.ip[0]";
connectAttr "pCube4Shape.o" "polyUnite15.ip[1]";
connectAttr "pPipeShape10.o" "polyUnite15.ip[2]";
connectAttr "pPipe12Shape.wm" "polyUnite15.im[0]";
connectAttr "pCube4Shape.wm" "polyUnite15.im[1]";
connectAttr "pPipeShape10.wm" "polyUnite15.im[2]";
connectAttr "polyUnite15.out" "polyAutoProj1.ip";
connectAttr "pPipe13Shape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyFlipUV1.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV1.mp";
connectAttr "polyFlipUV1.out" "polyFlipUV2.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV2.mp";
connectAttr "polyFlipUV2.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyFlipUV3.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV3.mp";
connectAttr "polyFlipUV3.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyFlipUV4.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV4.mp";
connectAttr "polyFlipUV4.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyFlipUV5.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV5.mp";
connectAttr "polyFlipUV5.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyFlipUV6.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV6.mp";
connectAttr "polyFlipUV6.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyFlipUV7.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV7.mp";
connectAttr "polyFlipUV7.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyFlipUV8.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV8.mp";
connectAttr "polyFlipUV8.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyFlipUV9.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV9.mp";
connectAttr "polyFlipUV9.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyFlipUV10.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV10.mp";
connectAttr "polyFlipUV10.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyFlipUV11.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV11.mp";
connectAttr "polyFlipUV11.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyFlipUV12.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV12.mp";
connectAttr "polyFlipUV12.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyFlipUV13.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV13.mp";
connectAttr "polyFlipUV13.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyFlipUV14.ip";
connectAttr "pPipe13Shape.wm" "polyFlipUV14.mp";
connectAttr "polyFlipUV14.out" "polyTweakUV13.ip";
connectAttr "file7.oc" "phong1.c";
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "pPipe13Shape.iog" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo6.sg";
connectAttr "phong1.msg" "materialInfo6.m";
connectAttr "file7.msg" "materialInfo6.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr "polyTweakUV13.out" "polyTriangulate1.ip";
connectAttr "phong1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "phong1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "place2dTexture7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "file7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "pTorusShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorus2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pTorusShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pTorusShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pTorus1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube8Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipe11Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipe12Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape10.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId95.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId97.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId115.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId118.msg" ":initialShadingGroup.gn" -na;
// End of EnemyShip.ma
