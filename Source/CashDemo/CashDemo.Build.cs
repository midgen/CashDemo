// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;

public class CashDemo : ModuleRules
{
	public CashDemo(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

        PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine", "InputCore", "CashGen", "UnrealFastNoisePlugin", "ProceduralMeshComponent" });

		PrivateDependencyModuleNames.AddRange(new string[] { });
	}
}
