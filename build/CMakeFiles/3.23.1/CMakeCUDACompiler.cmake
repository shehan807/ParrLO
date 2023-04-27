set(CMAKE_CUDA_COMPILER "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/bin/nvcc")
set(CMAKE_CUDA_HOST_COMPILER "")
set(CMAKE_CUDA_HOST_LINK_LAUNCHER "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++")
set(CMAKE_CUDA_COMPILER_ID "NVIDIA")
set(CMAKE_CUDA_COMPILER_VERSION "11.7.64")
set(CMAKE_CUDA_DEVICE_LINKER "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/bin/nvlink")
set(CMAKE_CUDA_FATBINARY "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/bin/fatbinary")
set(CMAKE_CUDA_STANDARD_COMPUTED_DEFAULT "14")
set(CMAKE_CUDA_EXTENSIONS_COMPUTED_DEFAULT "ON")
set(CMAKE_CUDA_COMPILE_FEATURES "cuda_std_03;cuda_std_11;cuda_std_14;cuda_std_17")
set(CMAKE_CUDA03_COMPILE_FEATURES "cuda_std_03")
set(CMAKE_CUDA11_COMPILE_FEATURES "cuda_std_11")
set(CMAKE_CUDA14_COMPILE_FEATURES "cuda_std_14")
set(CMAKE_CUDA17_COMPILE_FEATURES "cuda_std_17")
set(CMAKE_CUDA20_COMPILE_FEATURES "")
set(CMAKE_CUDA23_COMPILE_FEATURES "")

set(CMAKE_CUDA_PLATFORM_ID "Linux")
set(CMAKE_CUDA_SIMULATE_ID "GNU")
set(CMAKE_CUDA_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_CUDA_SIMULATE_VERSION "10.3")



set(CMAKE_CUDA_COMPILER_ENV_VAR "CUDACXX")
set(CMAKE_CUDA_HOST_COMPILER_ENV_VAR "CUDAHOSTCXX")

set(CMAKE_CUDA_COMPILER_LOADED 1)
set(CMAKE_CUDA_COMPILER_ID_RUN 1)
set(CMAKE_CUDA_SOURCE_FILE_EXTENSIONS cu)
set(CMAKE_CUDA_LINKER_PREFERENCE 15)
set(CMAKE_CUDA_LINKER_PREFERENCE_PROPAGATES 1)

set(CMAKE_CUDA_SIZEOF_DATA_PTR "8")
set(CMAKE_CUDA_COMPILER_ABI "ELF")
set(CMAKE_CUDA_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_CUDA_LIBRARY_ARCHITECTURE "")

if(CMAKE_CUDA_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_CUDA_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_CUDA_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_CUDA_COMPILER_ABI}")
endif()

if(CMAKE_CUDA_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_CUDA_COMPILER_TOOLKIT_ROOT "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu")
set(CMAKE_CUDA_COMPILER_TOOLKIT_LIBRARY_ROOT "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu")
set(CMAKE_CUDA_COMPILER_TOOLKIT_VERSION "11.7.64")
set(CMAKE_CUDA_COMPILER_LIBRARY_ROOT "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu")

set(CMAKE_CUDA_ARCHITECTURES_ALL "35;37;50;52;53;60;61;62;70;72;75;80;86;87")
set(CMAKE_CUDA_ARCHITECTURES_ALL_MAJOR "35;50;60;70;80")

set(CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/targets/x86_64-linux/include")

set(CMAKE_CUDA_HOST_IMPLICIT_LINK_LIBRARIES "")
set(CMAKE_CUDA_HOST_IMPLICIT_LINK_DIRECTORIES "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/targets/x86_64-linux/lib/stubs;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/targets/x86_64-linux/lib")
set(CMAKE_CUDA_HOST_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")

set(CMAKE_CUDA_IMPLICIT_INCLUDE_DIRECTORIES "/usr/local/pace-apps/manual/packages/openmpi/4.1.4/gcc-10.3.0/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/boost-1.79.0-vkqkswusfqdtvposwgzsvkhbaxsi4tkr/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/python-3.9.12-rkxvr6vh25rasj7rrhxd3hpaasuqwcoy/include/python3.9;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/python-3.9.12-rkxvr6vh25rasj7rrhxd3hpaasuqwcoy/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/util-linux-uuid-2.36.2-6u5eni3a3a4qze23da6zkzdmma7dqdca/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/sqlite-3.38.5-sweldtw3ostzk3lel5jd7wu4bi67ilay/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libffi-3.4.2-bvfjiluz6ja5d7seef4jcjy3krwk4ulx/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gdbm-1.19-54ea7nncbgehsje6hmwppipr5heli563/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/readline-8.1-v3ivmohtytb4b3cmwpggt4eylmmpi34i/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/expat-2.4.8-kng6xltmj3d7q7ta6bqvirevyapa6jdt/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libbsd-0.11.5-j4ccxsygo4nmflnran77lfsjppi4xsth/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libmd-1.0.4-wdkbs3545pq4tgtd757dnq7afa3okp6i/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/bzip2-1.0.8-z5cmkainhpzc3abq5tsmwevrtp7fia5j/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libxml2-2.9.13-d4fgivwilgwkucth7kcsmpbcefmngewz/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libiconv-1.16-pbdcxjpgrdv3k3eaisme7cw5fnl7zjmh/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/zstd-1.5.2-726gdzljowscmdg6vy2txu3q5j3ncfc6/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/mpc-1.2.1-zoh6w2uzicslpz2vw6bp2cd3vawomaag/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/mpfr-4.1.0-32gcbvddeljaaw35yzaciq5ostd4o2d4/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gmp-6.2.1-mw6xsf4g4ul4v57rnyyxtufvcvwpao6p/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/openblas-0.3.20-7um3t6kt2ehks5bl2w7baqw3ampaq6a5/include;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/ncurses-6.2-qhoz4g3phdfhwu3ian4zdcx7uotuijrt/include;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/include/c++/10.3.0;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/include/c++/10.3.0/x86_64-pc-linux-gnu;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/include/c++/10.3.0/backward;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib/gcc/x86_64-pc-linux-gnu/10.3.0/include;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib/gcc/x86_64-pc-linux-gnu/10.3.0/include-fixed;/usr/local/include;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/include;/usr/include")
set(CMAKE_CUDA_IMPLICIT_LINK_LIBRARIES "cublas;cusparse;stdc++;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_CUDA_IMPLICIT_LINK_DIRECTORIES "/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/boost-1.79.0-vkqkswusfqdtvposwgzsvkhbaxsi4tkr/lib/libboost_program_options.so;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/targets/x86_64-linux/lib/stubs;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/targets/x86_64-linux/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib/gcc/x86_64-pc-linux-gnu/10.3.0;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib/gcc;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libffi-3.4.2-bvfjiluz6ja5d7seef4jcjy3krwk4ulx/lib64;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib64;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib64;/lib64;/usr/lib64;/usr/local/pace-apps/manual/packages/openmpi/4.1.4/gcc-10.3.0/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/boost-1.79.0-vkqkswusfqdtvposwgzsvkhbaxsi4tkr/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/python-3.9.12-rkxvr6vh25rasj7rrhxd3hpaasuqwcoy/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/util-linux-uuid-2.36.2-6u5eni3a3a4qze23da6zkzdmma7dqdca/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/sqlite-3.38.5-sweldtw3ostzk3lel5jd7wu4bi67ilay/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libffi-3.4.2-bvfjiluz6ja5d7seef4jcjy3krwk4ulx/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gdbm-1.19-54ea7nncbgehsje6hmwppipr5heli563/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/readline-8.1-v3ivmohtytb4b3cmwpggt4eylmmpi34i/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/expat-2.4.8-kng6xltmj3d7q7ta6bqvirevyapa6jdt/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libbsd-0.11.5-j4ccxsygo4nmflnran77lfsjppi4xsth/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libmd-1.0.4-wdkbs3545pq4tgtd757dnq7afa3okp6i/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/bzip2-1.0.8-z5cmkainhpzc3abq5tsmwevrtp7fia5j/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/lib64;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libxml2-2.9.13-d4fgivwilgwkucth7kcsmpbcefmngewz/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/libiconv-1.16-pbdcxjpgrdv3k3eaisme7cw5fnl7zjmh/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/zstd-1.5.2-726gdzljowscmdg6vy2txu3q5j3ncfc6/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/mpc-1.2.1-zoh6w2uzicslpz2vw6bp2cd3vawomaag/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/mpfr-4.1.0-32gcbvddeljaaw35yzaciq5ostd4o2d4/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gmp-6.2.1-mw6xsf4g4ul4v57rnyyxtufvcvwpao6p/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/openblas-0.3.20-7um3t6kt2ehks5bl2w7baqw3ampaq6a5/lib;/usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/ncurses-6.2-qhoz4g3phdfhwu3ian4zdcx7uotuijrt/lib;/storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib")
set(CMAKE_CUDA_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")

set(CMAKE_CUDA_RUNTIME_LIBRARY_DEFAULT "STATIC")

set(CMAKE_LINKER "/bin/ld")
set(CMAKE_AR "/bin/ar")
set(CMAKE_MT "")
