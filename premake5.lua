project "ImNodeFlow"
	kind "StaticLib"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/ImNodeFlow.h",
		"src/ImNodeFlow.cpp",
		"src/ImNodeFlow.inl",
		"src/imgui_extra_math.h",
		"src/imgui_extra_math.inl",
		"src/imgui_bezier_math.h",
		"src/imgui_bezier_math.inl",
		"src/context_wrapper.h"
	}

	includedirs {
		"include/",
		"%{wks.location}/Fuze/vendor/imgui",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"

	filter "configurations:Dist"
		runtime "Release"
		optimize "On"
		symbols "Off"
