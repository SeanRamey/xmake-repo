package("cglm")

	set_homepage("https://github.com/recp/cglm")
	set_description("Highly optimized 2D|3D math library, also known as OpenGL Mathematics (glm) for `C`. cglm provides lot of utils to help math operations to be fast and quick to write.")

	set_urls("https://github.com/recp/cglm/archive/v$(version).zip")

	add_versions("0.8.3", "3a3f935f9f2ed5a8cb6337e421bf6f3a699a72d8cfe26fde1bbb8fde5c1c8aaf")

	add_deps("cmake")

	on_install(function (package)
    	import("package.tools.cmake").install(package, {"-Dxxx=ON"})
	end)

	on_test(function (package)
        assert(package:has_cfuncs("glm_vec2", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_copy", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_zero", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_one", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_dot", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_cross", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_norm2", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_norm", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_add", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_adds", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_sub", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_subs", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_mul", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_scale", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_scale_as", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_div", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_divs", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_addadd", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_subadd", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_muladd", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_muladds", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_maxadd", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_minadd", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_negate", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_negate_to", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_normalize", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_normalize_to", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_rotate", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_distance2", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_distance", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_maxv", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_minv", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_clamp", {includes = "cglm/cglm.h"}))
		assert(package:has_cfuncs("glm_vec2_lerp", {includes = "cglm/cglm.h"}))

    end)
