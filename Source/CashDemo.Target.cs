// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;
using UnrealBuildTool.Rules;

public class CashDemoTarget : TargetRules
{
	public CashDemoTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		
		DefaultBuildSettings = BuildSettingsVersion.V4;
        IncludeOrderVersion = EngineIncludeOrderVersion.Unreal5_5;

        ExtraModuleNames.AddRange( new string[] 
		{ 
			"CashDemo",
			"CashGen",
			"UESVON",
			"UnrealFastNoisePlugin",
            "ProceduralMeshComponent",
        } );
	}
}
