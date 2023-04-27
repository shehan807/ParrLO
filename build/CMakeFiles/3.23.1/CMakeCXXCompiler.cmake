set(CMAKE_CXX_COMPILER "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++")
set(CMAKE_CXX_COMPILER_ARG1 "")
set(CMAKE_CXX_COMPILER_ID "GNU")
set(CMAKE_CXX_COMPILER_VERSION "10.3.0")
set(CMAKE_CXX_COMPILER_VERSION_INTERNAL "")
set(CMAKE_CXX_COMPILER_WRAPPER "")
set(CMAKE_CXX_STANDARD_COMPUTED_DEFAULT "14")
set(CMAKE_CXX_EXTENSIONS_COMPUTED_DEFAULT "ON")
set(CMAKE_CXX_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters;cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates;cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates;cxx_std_17;cxx_std_20")
set(CMAKE_CXX98_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters")
set(CMAKE_CXX11_COMPILE_FEATURES "cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates")
set(CMAKE_CXX14_COMPILE_FEATURES "cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates")
set(CMAKE_CXX17_COMPILE_FEATURES "cxx_std_17")
set(CMAKE_CXX20_COMPILE_FEATURES "cxx_std_20")
set(CMAKE_CXX23_COMPILE_FEATURES "")

set(CMAKE_CXX_PLATFORM_ID "Linux")
set(CMAKE_CXX_SIMULATE_ID "")
set(CMAKE_CXX_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_CXX_SIMULATE_VERSION "")




set(CMAKE_AR "/bin/ar")
set(CMAKE_CXX_COMPILER_AR "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/gcc-ar")
set(CMAKE_RANLIB "/bin/ranlib")
set(CMAKE_CXX_COMPILER_RANLIB "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/gcc-ranlib")
set(CMAKE_LINKER "/bin/ld")
set(CMAKE_MT "")
set(CMAKE_COMPILER_IS_GNUCXX 1)
set(CMAKE_CXX_COMPILER_LOADED 1)
set(CMAKE_CXX_COMPILER_WORKS TRUE)
set(CMAKE_CXX_ABI_COMPILED TRUE)

set(CMAKE_CXX_COMPILER_ENV_VAR "CXX")

set(CMAKE_CXX_COMPILER_ID_RUN 1)
set(CMAKE_CXX_SOURCE_FILE_EXTENSIONS C;M;c++;cc;cpp;cxx;m;mm;mpp;CPP;ixx;cppm)
set(CMAKE_CXX_IGNORE_EXTENSIONS inl;h;hpp;HPP;H;o;O;obj;OBJ;def;DEF;rc;RC)

foreach (lang C OBJC OBJCXX)
  if (CMAKE_${lang}_COMPILER_ID_RUN)
    foreach(extension IN LISTS CMAKE_${lang}_SOURCE_FILE_EXTENSIONS)
      list(REMOVE_ITEM CMAKE_CXX_SOURCE_FILE_EXTENSIONS ${extension})
    endforeach()
  endif()
endforeach()

set(CMAKE_CXX_LINKER_PREFERENCE 30)
set(CMAKE_CXX_LINKER_PREFERENCE_PROPAGATES 1)

# Save compiler ABI information.
set(CMAKE_CXX_SIZEOF_DATA_PTR "8")
set(CMAKE_CXX_COMPILER_ABI "ELF")
set(CMAKE_CXX_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_CXX_LIBRARY_ARCHITECTURE "")

if(CMAKE_CXX_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_CXX_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_CXX_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_CXX_COMPILER_ABI}")
endif()

if(CMAKE_CXX_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_CXX_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES "/usr/local/pace-apps/manual/packages/openmpi/4.1.4/gcc-10.3.0/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/boost-1.79.0-vkqkswusfqdtvposwgzsvkhbaxsi4tkr/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/python-3.9.12-rkxvr6vh25rasj7rrhxd3hpaasuqwcoy/include/python3.9;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/python-3.9.12-rkxvr6vh25rasj7rrhxd3hpaasuqwcoy/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/util-linux-uuid-2.36.2-6u5eni3a3a4qze23da6zkzdmma7dqdca/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/sqlite-3.38.5-sweldtw3ostzk3lel5jd7wu4bi67ilay/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libffi-3.4.2-bvfjiluz6ja5d7seef4jcjy3krwk4ulx/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gdbm-1.19-54ea7nncbgehsje6hmwppipr5heli563/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/readline-8.1-v3ivmohtytb4b3cmwpggt4eylmmpi34i/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/expat-2.4.8-kng6xltmj3d7q7ta6bqvirevyapa6jdt/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libbsd-0.11.5-j4ccxsygo4nmflnran77lfsjppi4xsth/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libmd-1.0.4-wdkbs3545pq4tgtd757dnq7afa3okp6i/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/bzip2-1.0.8-z5cmkainhpzc3abq5tsmwevrtp7fia5j/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libxml2-2.9.13-d4fgivwilgwkucth7kcsmpbcefmngewz/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libiconv-1.16-pbdcxjpgrdv3k3eaisme7cw5fnl7zjmh/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/zstd-1.5.2-726gdzljowscmdg6vy2txu3q5j3ncfc6/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/mpc-1.2.1-zoh6w2uzicslpz2vw6bp2cd3vawomaag/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/mpfr-4.1.0-32gcbvddeljaaw35yzaciq5ostd4o2d4/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gmp-6.2.1-mw6xsf4g4ul4v57rnyyxtufvcvwpao6p/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/openblas-0.3.20-7um3t6kt2ehks5bl2w7baqw3ampaq6a5/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/ncurses-6.2-qhoz4g3phdfhwu3ian4zdcx7uotuijrt/include;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/include/c++/10.3.0;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/include/c++/10.3.0/x86_64-pc-linux-gnu;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/include/c++/10.3.0/backward;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib/gcc/x86_64-pc-linux-gnu/10.3.0/include;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib/gcc/x86_64-pc-linux-gnu/10.3.0/include-fixed;/usr/local/include;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/include;/usr/include")
set(CMAKE_CXX_IMPLICIT_LINK_LIBRARIES "cudart;cudadevrt;cublas;cusparse;stdc++;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_CXX_IMPLICIT_LINK_DIRECTORIES "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/boost-1.79.0-vkqkswusfqdtvposwgzsvkhbaxsi4tkr/lib/libboost_program_options.so;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib/gcc/x86_64-pc-linux-gnu/10.3.0;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib/gcc;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libffi-3.4.2-bvfjiluz6ja5d7seef4jcjy3krwk4ulx/lib64;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib64;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib64;/lib64;/usr/lib64;/usr/local/pace-apps/manual/packages/openmpi/4.1.4/gcc-10.3.0/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/boost-1.79.0-vkqkswusfqdtvposwgzsvkhbaxsi4tkr/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/python-3.9.12-rkxvr6vh25rasj7rrhxd3hpaasuqwcoy/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/util-linux-uuid-2.36.2-6u5eni3a3a4qze23da6zkzdmma7dqdca/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/sqlite-3.38.5-sweldtw3ostzk3lel5jd7wu4bi67ilay/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libffi-3.4.2-bvfjiluz6ja5d7seef4jcjy3krwk4ulx/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gdbm-1.19-54ea7nncbgehsje6hmwppipr5heli563/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/readline-8.1-v3ivmohtytb4b3cmwpggt4eylmmpi34i/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/expat-2.4.8-kng6xltmj3d7q7ta6bqvirevyapa6jdt/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libbsd-0.11.5-j4ccxsygo4nmflnran77lfsjppi4xsth/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libmd-1.0.4-wdkbs3545pq4tgtd757dnq7afa3okp6i/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/bzip2-1.0.8-z5cmkainhpzc3abq5tsmwevrtp7fia5j/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/lib64;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libxml2-2.9.13-d4fgivwilgwkucth7kcsmpbcefmngewz/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libiconv-1.16-pbdcxjpgrdv3k3eaisme7cw5fnl7zjmh/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/zstd-1.5.2-726gdzljowscmdg6vy2txu3q5j3ncfc6/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/mpc-1.2.1-zoh6w2uzicslpz2vw6bp2cd3vawomaag/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/mpfr-4.1.0-32gcbvddeljaaw35yzaciq5ostd4o2d4/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gmp-6.2.1-mw6xsf4g4ul4v57rnyyxtufvcvwpao6p/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/openblas-0.3.20-7um3t6kt2ehks5bl2w7baqw3ampaq6a5/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/ncurses-6.2-qhoz4g3phdfhwu3ian4zdcx7uotuijrt/lib;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib")
set(CMAKE_CXX_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
