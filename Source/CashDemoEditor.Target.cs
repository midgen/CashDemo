// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class CashDemoEditorTarget : TargetRules
{
	public CashDemoEditorTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Editor;
		
		DefaultBuildSettings = BuildSettingsVersion.V5;
		IncludeOrderVersion = EngineIncludeOrderVersion.Unreal5_5;

        ExtraModuleNames.AddRange( new string[] 
		{ 
			"CashDemo",
			"CashGen",
			"UESVON",
			"UESVONEditor",
			"UnrealFastNoisePlugin",
            "ProceduralMeshComponent",
        } );
	}
}
