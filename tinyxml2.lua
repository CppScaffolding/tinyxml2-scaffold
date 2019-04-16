-- scaffold geniefile for tinyxml2

tinyxml2_script = path.getabsolute(path.getdirectory(_SCRIPT))
tinyxml2_root = path.join(tinyxml2_script, "tinyxml2")

tinyxml2_includedirs = {
	path.join(tinyxml2_script, "config"),
	tinyxml2_root,
}

tinyxml2_libdirs = {}
tinyxml2_links = {}
tinyxml2_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { tinyxml2_includedirs }
	end,

	_add_defines = function()
		defines { tinyxml2_defines }
	end,

	_add_libdirs = function()
		libdirs { tinyxml2_libdirs }
	end,

	_add_external_links = function()
		links { tinyxml2_links }
	end,

	_add_self_links = function()
		links { "tinyxml2" }
	end,

	_create_projects = function()

project "tinyxml2"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		tinyxml2_includedirs,
	}

	defines {}

	files {
		path.join(tinyxml2_script, "config", "**.h"),
		path.join(tinyxml2_root, "**.h"),
		path.join(tinyxml2_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
