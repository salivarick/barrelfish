module Hakefiles where {
import RuleDefs;
import HakeTypes;
import Path;
import Args;
import qualified Config;
import qualified Data.List;
allfiles = ["./cscope.out","./cscope.po.out","./cscope.in.out","./LICENSE","./tags","./README_NETWORKING","./README","./AUTHORS","./tools/grub-qemu.img","./tools/debug.gdb","./tools/debugsim.sh","./tools/run-pdflatex.sh","./tools/gen-gdbscript.sh","./tools/debug.sh","./tools/debug.arm.gdb","./tools/arm-mkbootcpio.sh","./tools/arm-mkbootelf.sh","./tools/tracing/bfscope.py","./tools/tracing/analyze_traces.py","./tools/elver/elver.c","./tools/elver/Hakefile","./tools/elver/boot.S","./tools/elver/lib.c","./tools/mackerel/Space.hs","./tools/mackerel/README.txt","./tools/mackerel/TypeTable.hs","./tools/mackerel/MackerelParser.hs","./tools/mackerel/Fields.hs","./tools/mackerel/Attr.hs","./tools/mackerel/Main.hs","./tools/mackerel/RegisterTable.hs","./tools/mackerel/Hakefile","./tools/mackerel/Checks.hs","./tools/mackerel/ShiftDriver.hs","./tools/mackerel/Dev.hs","./tools/mackerel/CAbsSyntax.hs","./tools/mackerel/BitFieldDriver.hs","./tools/mackerel/CSyntax.hs","./tools/mackerel/TypeName.hs","./tools/mackerel/Poly.hs","./tools/mackerel/BUGS.txt","./tools/scc/watchall.sh","./tools/scc/barrelfish48.mt","./tools/scc/bootvector.dat","./tools/scc/bigimage.map","./tools/scc/bootscc.sh","./tools/scc/bootvector.map","./tools/arm_gem5/debug.gem5.gdb","./tools/arm_gem5/additional_notes.txt","./tools/arm_gem5/gem5Panda.py","./tools/arm_gem5/arm-core.xml","./tools/arm_gem5/arm-with-neon.xml","./tools/arm_gem5/debug.gem5.core1.gdb","./tools/arm_gem5/gem5_patches.patch","./tools/arm_gem5/O3_ARM_v7a.py","./tools/arm_gem5/boot.arm","./tools/arm_gem5/gem5script.py","./tools/arm_gem5/arm-vfpv3.xml","./tools/arm_gem5/RealView.py","./tools/arm_gem5/README","./tools/arm_gem5/Caches.py","./tools/arm_gem5/CacheConfig.py","./tools/mkrelease/executable_files","./tools/mkrelease/mkrelease.sh","./tools/pleco/Main.lhs","./tools/pleco/Hakefile","./tools/pleco/Makefile","./tools/pleco/Parser.hs","./tools/schedsim/hrt2.cfg","./tools/schedsim/hrtbe5.cfg","./tools/schedsim/be16.cfg","./tools/schedsim/be3.cfg","./tools/schedsim/be11.cfg","./tools/schedsim/be9.txt","./tools/schedsim/gang2.txt","./tools/schedsim/be15.cfg","./tools/schedsim/be11.txt","./tools/schedsim/be5.cfg","./tools/schedsim/be0.cfg","./tools/schedsim/be12.cfg","./tools/schedsim/be9.cfg","./tools/schedsim/be7.cfg","./tools/schedsim/be15.txt","./tools/schedsim/hrtbe4.txt","./tools/schedsim/gang1.txt","./tools/schedsim/hrtbe2.txt","./tools/schedsim/hrt0.cfg","./tools/schedsim/be8.cfg","./tools/schedsim/hrtbe3.txt","./tools/schedsim/hrt2.txt","./tools/schedsim/be14.cfg","./tools/schedsim/Hakefile","./tools/schedsim/gang0.txt","./tools/schedsim/be12.txt","./tools/schedsim/be2.txt","./tools/schedsim/be14.txt","./tools/schedsim/simulator.c","./tools/schedsim/be0.txt","./tools/schedsim/hrtbe0.txt","./tools/schedsim/hrtbe1.cfg","./tools/schedsim/gang2.cfg","./tools/schedsim/be1.cfg","./tools/schedsim/be13.cfg","./tools/schedsim/gang0.cfg","./tools/schedsim/be13.txt","./tools/schedsim/hrt0.txt","./tools/schedsim/be17.txt","./tools/schedsim/hrtbe3.cfg","./tools/schedsim/be4.cfg","./tools/schedsim/be7.txt","./tools/schedsim/hrtbe5.txt","./tools/schedsim/be8.txt","./tools/schedsim/be10.cfg","./tools/schedsim/be6.cfg","./tools/schedsim/be10.txt","./tools/schedsim/hrt4.cfg","./tools/schedsim/be6.txt","./tools/schedsim/be4.txt","./tools/schedsim/be17.cfg","./tools/schedsim/be3.txt","./tools/schedsim/hrt1.txt","./tools/schedsim/hrtbe2.cfg","./tools/schedsim/hrt3.txt","./tools/schedsim/be2.cfg","./tools/schedsim/hrt3.cfg","./tools/schedsim/be1.txt","./tools/schedsim/gang1.cfg","./tools/schedsim/be16.txt","./tools/schedsim/hrtbe1.txt","./tools/schedsim/hrt4.txt","./tools/schedsim/hrt1.cfg","./tools/schedsim/hrtbe4.cfg","./tools/schedsim/hrtbe0.cfg","./tools/schedsim/be5.txt","./tools/flounder/Main.lhs","./tools/flounder/MsgBuf.hs","./tools/flounder/AHCI.hs","./tools/flounder/BackendCommon.hs","./tools/flounder/notes.txt","./tools/flounder/Backend.lhs","./tools/flounder/LMP.hs","./tools/flounder/Multihop.hs","./tools/flounder/Hakefile","./tools/flounder/THCStubsBackend.hs","./tools/flounder/Parser.hs","./tools/flounder/RPCClient.hs","./tools/flounder/UMP.hs","./tools/flounder/GHBackend.hs","./tools/flounder/tutorial.lhs","./tools/flounder/THCBackend.hs","./tools/flounder/UMPCommon.hs","./tools/flounder/MsgFragments.hs","./tools/flounder/CAbsSyntax.hs","./tools/flounder/UMP_IPI.hs","./tools/flounder/Syntax.lhs","./tools/flounder/Loopback.hs","./tools/flounder/CSyntax.hs","./tools/flounder/GCBackend.hs","./tools/flounder/Arch.hs","./tools/flounder/intro.tex","./tools/demo/guide.pptx","./tools/demo/menu.demo.lst","./tools/demo/guide.pdf","./tools/demo/TestAquarium/TestAquarium.csproj","./tools/demo/TestAquarium/Program.cs","./tools/demo/TestAquarium/Properties/AssemblyInfo.cs","./tools/demo/bin/Aquarium.exe","./tools/demo/bin/Aquarium.pdb","./tools/demo/bin/TestAquarium.exe","./tools/demo/Aquarium/Events.cs","./tools/demo/Aquarium/Key.xaml.cs","./tools/demo/Aquarium/Dialogs.cs","./tools/demo/Aquarium/Window1.xaml","./tools/demo/Aquarium/App.xaml.cs","./tools/demo/Aquarium/barrelfish.png","./tools/demo/Aquarium/App.xaml","./tools/demo/Aquarium/Aquarium.csproj","./tools/demo/Aquarium/Window1.xaml.cs","./tools/demo/Aquarium/Key.xaml","./tools/demo/Aquarium/Resources/barrelfish.ico","./tools/demo/Aquarium/Properties/Settings.settings","./tools/demo/Aquarium/Properties/Settings.Designer.cs","./tools/demo/Aquarium/Properties/Resources.Designer.cs","./tools/demo/Aquarium/Properties/Resources.resx","./tools/demo/Aquarium/Properties/AssemblyInfo.cs","./tools/demo/logs/span15.7.log","./tools/demo/logs/demo.20.log","./tools/demo/logs/demo.9.log","./tools/demo/logs/span15.1.log","./tools/demo/logs/span15.8.log","./tools/demo/logs/demo.19.log","./tools/demo/logs/npc_1_1_1_8.8.log","./tools/demo/logs/span15.0.log","./tools/demo/logs/demo.3.log","./tools/demo/logs/npc_1_1_0_8.5.log","./tools/demo/logs/span15.2.log","./tools/demo/logs/span15.4.log","./tools/demo/logs/npc_1_1_0_8_1.0.log","./tools/demo/logs/npc_1_1_1_8.6.log","./tools/demo/logs/demo.17.log","./tools/demo/logs/npc_1_1_1_8.5.log","./tools/demo/logs/demo.14.log","./tools/demo/logs/demo.18.log","./tools/demo/logs/npc_1_1_0_8.3.log","./tools/demo/logs/demo.2.log","./tools/demo/logs/npc_tput.7.log","./tools/demo/logs/npc_tput.9.log","./tools/demo/logs/span15.6.log","./tools/demo/logs/npc_tput.8.log","./tools/demo/logs/demo.15.log","./tools/demo/logs/demo.11.log","./tools/demo/logs/npc_1_1_1_8","./tools/demo/logs/npc_1_1_0_8.9.log","./tools/demo/logs/npc_1_1_0_8_1.1.log","./tools/demo/logs/npc_1_1_0_8.8.log","./tools/demo/logs/demo.16.log","./tools/demo/logs/npc_1_1_0_8.1.log","./tools/demo/logs/npc_tput.2.log","./tools/demo/logs/npc_tput.5.log","./tools/demo/logs/demo.8.log","./tools/demo/logs/npc_1_1_0_8.0.log","./tools/demo/logs/npc_1_1_0_8.6.log","./tools/demo/logs/span15.5.log","./tools/demo/logs/npc_tput.3.log","./tools/demo/logs/demo.10.log","./tools/demo/logs/demo.13.log","./tools/demo/logs/npc_1_1_1_8.7.log","./tools/demo/logs/npc_tput.6.log","./tools/demo/logs/demo.5.log","./tools/demo/logs/demo.4.log","./tools/demo/logs/npc_1_1_1_8.4.log","./tools/demo/logs/span15.9.log","./tools/demo/logs/demo.12.log","./tools/demo/logs/demo.1.log","./tools/demo/logs/npc_1_1_0_8.4.log","./tools/demo/logs/bmp_bench.log","./tools/demo/logs/span15.3.log","./tools/demo/logs/npc_1_1_1_8.1.log","./tools/demo/logs/npc_1_1_0_8_1.3.log","./tools/demo/logs/npc_1_1_1_8.3.log","./tools/demo/logs/npc_1_1_0_8.7.log","./tools/demo/logs/npc_1_1_0_8.2.log","./tools/demo/logs/npc_tput.10.log","./tools/demo/logs/npc_1_1_1_8.2.log","./tools/demo/logs/npc_1_1_1_8.9.log","./tools/demo/logs/npc_1_1_0_8_1.4.log","./tools/demo/logs/demo.6.log","./tools/demo/logs/demo.7.log","./tools/demo/logs/npc_tput.4.log","./tools/demo/logs/npc_1_1_0_8_1.2.log","./tools/demo/logs/npc_tput.1.log","./tools/harness/results.py","./tools/harness/reprocess.py","./tools/harness/checkout.py","./tools/harness/barrelfish.py","./tools/harness/harness.py","./tools/harness/debug.py","./tools/harness/stats.py","./tools/harness/scalebench.py","./tools/harness/README","./tools/harness/machines/msrc_machinedata.py","./tools/harness/machines/qemu.py","./tools/harness/machines/gem5.py","./tools/harness/machines/eth.py","./tools/harness/machines/eth_machinedata.py","./tools/harness/machines/__init__.py","./tools/harness/machines/msrc.py","./tools/harness/tests/channel_cost.py","./tools/harness/tests/spawntest.py","./tools/harness/tests/bomp_sidebyside.py","./tools/harness/tests/TimerTest.py","./tools/harness/tests/bulktests.py","./tools/harness/tests/monitortest.py","./tools/harness/tests/rpctests.py","./tools/harness/tests/perfmontest.py","./tools/harness/tests/spantest.py","./tools/harness/tests/freemem.py","./tools/harness/tests/splash_bomp.py","./tools/harness/tests/rcce.py","./tools/harness/tests/vmkit.py","./tools/harness/tests/phases.py","./tools/harness/tests/clockdrift.py","./tools/harness/tests/mdbbench.py","./tools/harness/tests/echoserver.py","./tools/harness/tests/tracing.py","./tools/harness/tests/webserver.py","./tools/harness/tests/common.py","./tools/harness/tests/memtest.py","./tools/harness/tests/nfscat.py","./tools/harness/tests/multihoptests.py","./tools/harness/tests/tsctests.py","./tools/harness/tests/fputest.py","./tools/harness/tests/skew.py","./tools/harness/tests/__init__.py","./tools/harness/siteconfig/eth.py","./tools/harness/siteconfig/__init__.py","./tools/harness/siteconfig/msrc.py","./tools/molly/molly_init.c","./tools/molly/molly_ld_script","./tools/molly/Hakefile","./tools/molly/molly_boot.S","./tools/molly/m5script.py","./tools/fof/Main.lhs","./tools/fof/FiletOFish.lhs","./tools/fof/Constructs.lhs","./tools/fof/IntroLanguage.tex","./tools/fof/Introduction.tex","./tools/fof/Expressions.lhs-boot","./tools/fof/FiletOFish.bib","./tools/fof/Semantics.lhs","./tools/fof/Eval.lhs","./tools/fof/Constructs.lhs-boot","./tools/fof/FutureWork.tex","./tools/fof/PureExpressions.lhs","./tools/fof/Makefile","./tools/fof/Compile.lhs","./tools/fof/Expressions.lhs","./tools/fof/Libbarrelfish/MemToPhys.lhs","./tools/fof/Libbarrelfish/HasDescendants.lhs","./tools/fof/Libc/Assert.lhs","./tools/fof/Libc/Printf.lhs","./tools/fof/IL/Paka/Paka.lhs","./tools/fof/IL/Paka/Builders.lhs","./tools/fof/IL/Paka/Syntax.lhs","./tools/fof/IL/Paka/Compile.lhs","./tools/fof/IL/Paka/Optimizer.lhs","./tools/fof/IL/FoF/FoF.lhs","./tools/fof/IL/FoF/Run.lhs","./tools/fof/IL/FoF/Compile.lhs","./tools/fof/Constructs/Strings.lhs","./tools/fof/Constructs/References.lhs","./tools/fof/Constructs/Enumerations.lhs","./tools/fof/Constructs/Unions.lhs","./tools/fof/Constructs/Conditionals.lhs","./tools/fof/Constructs/Functions.lhs","./tools/fof/Constructs/Structures.lhs","./tools/fof/Constructs/Typedef.lhs","./tools/fof/Constructs/Arrays.lhs","./tools/fugu/Main.lhs","./tools/fugu/Hakefile","./tools/fugu/Makefile","./tools/fugu/Parser.hs","./tools/fugu/FuguBackend.lhs","./tools/hamlet/Main.lhs","./tools/hamlet/HamletBackend.lhs","./tools/hamlet/Hakefile","./tools/hamlet/Parser.hs","./tools/hamlet/Hamlet.lhs","./tools/hamlet/HamletAst.lhs","./tools/arm_molly/molly_init.c","./tools/arm_molly/Hakefile","./tools/arm_molly/molly_boot.S","./tools/arm_molly/molly_ld_script.in","./tools/arm_molly/lib.c","./tools/dite/elf.h","./tools/dite/elf32.c","./tools/dite/Hakefile","./tools/dite/elf64.c","./tools/dite/dite.c","./tools/asmoffsets/asmoffsets.c","./tools/asmoffsets/Hakefile","./capabilities/caps.hl","./capabilities/Hakefile","./include/signal.h","./include/libgen.h","./include/strings.h","./include/zlib.h","./include/x86emu.h","./include/values.h","./include/omap44xx_map.h","./include/netdb.h","./include/termios.h","./include/Hakefile","./include/dlfcn.h","./include/lwipopts.h","./include/posixcompat.h","./include/grp.h","./include/unistd.h","./include/fcntl.h","./include/zconf.h","./include/limits.h","./include/multicast.h","./include/k_r_malloc.h","./include/semaphore.h","./include/paths.h","./include/stdio_file.h","./include/utime.h","./include/nl_types.h","./include/cpiobin.h","./include/time.h","./include/usb/usb_device.h","./include/usb/usb_request.h","./include/usb/usb_xfer.h","./include/usb/usb_error.h","./include/usb/usb_transfer.h","./include/usb/usb_descriptor.h","./include/usb/usb.h","./include/usb/usb_driver.h","./include/usb/usb_parse.h","./include/usb/class/usb_hub.h","./include/usb/class/usb_hid.h","./include/vfs/mmap.h","./include/vfs/fdtab.h","./include/vfs/vfs_fd.h","./include/vfs/vfs.h","./include/vfs/vfs_path.h","./include/cpuid/cpuid.h","./include/cpuid/cpuid_spaces.h","./include/dmalloc/dmalloc.h","./include/mackerel/io.h","./include/mackerel/mackerel.h","./include/cxx/list","./include/cxx/csignal","./include/cxx/complex","./include/cxx/complex.h","./include/cxx/deque","./include/cxx/condition_variable","./include/cxx/cfloat","./include/cxx/thread","./include/cxx/locale","./include/cxx/cmath","./include/cxx/numeric","./include/cxx/sstream","./include/cxx/random","./include/cxx/stdexcept","./include/cxx/iostream","./include/cxx/stack","./include/cxx/cstdint","./include/cxx/vector","./include/cxx/cassert","./include/cxx/ctime","./include/cxx/ostream","./include/cxx/iterator","./include/cxx/cstdio","./include/cxx/cstdbool","./include/cxx/csetjmp","./include/cxx/__functional_base_03","./include/cxx/typeinfo","./include/cxx/memory","./include/cxx/climits","./include/cxx/forward_list","./include/cxx/cwctype","./include/cxx/initializer_list","./include/cxx/clocale","./include/cxx/queue","./include/cxx/__hash_table","./include/cxx/valarray","./include/cxx/ctgmath","./include/cxx/iomanip","./include/cxx/scoped_allocator","./include/cxx/functional","./include/cxx/unordered_map","./include/cxx/__sso_allocator","./include/cxx/utility","./include/cxx/exception","./include/cxx/__locale","./include/cxx/__functional_base","./include/cxx/type_traits","./include/cxx/algorithm","./include/cxx/istream","./include/cxx/future","./include/cxx/__functional_03","./include/cxx/limits","./include/cxx/cfenv","./include/cxx/tuple","./include/cxx/cstdarg","./include/cxx/system_error","./include/cxx/ciso646","./include/cxx/ios","./include/cxx/atomic","./include/cxx/regex","./include/cxx/iosfwd","./include/cxx/__tuple","./include/cxx/__std_stream","./include/cxx/codecvt","./include/cxx/__tree","./include/cxx/ratio","./include/cxx/typeindex","./include/cxx/__tuple_03","./include/cxx/__mutex_base","./include/cxx/__bit_reference","./include/cxx/__config","./include/cxx/strstream","./include/cxx/tgmath.h","./include/cxx/cerrno","./include/cxx/array","./include/cxx/cstddef","./include/cxx/string","./include/cxx/ccomplex","./include/cxx/cstdlib","./include/cxx/fstream","./include/cxx/mutex","./include/cxx/cinttypes","./include/cxx/chrono","./include/cxx/streambuf","./include/cxx/new","./include/cxx/set","./include/cxx/cctype","./include/cxx/map","./include/cxx/bitset","./include/cxx/cwchar","./include/cxx/unordered_set","./include/cxx/__split_buffer","./include/cxx/cstring","./include/cxx/ext/hash_map","./include/cxx/ext/hash_set","./include/pci/mem.h","./include/pci/pci.h","./include/pci/devids.h","./include/pci/confspace/pci_confspace.h","./include/pci/confspace/mackerelpci.h","./include/netif/etharp.h","./include/netif/loopif.h","./include/netif/bfeth.h","./include/netif/slipif.h","./include/sys/ipc.h","./include/sys/ttydefaults.h","./include/sys/dirent.h","./include/sys/socket.h","./include/sys/endian.h","./include/sys/types.h","./include/sys/ttycom.h","./include/sys/_types.h","./include/sys/file.h","./include/sys/ioctl.h","./include/sys/un.h","./include/sys/select.h","./include/sys/stat.h","./include/sys/shm.h","./include/sys/ioccom.h","./include/sys/_termios.h","./include/sys/unistd.h","./include/sys/param.h","./include/sys/uio.h","./include/sys/cdefs.h","./include/sys/wait.h","./include/sys/_iovec.h","./include/sys/times.h","./include/sys/_sigset.h","./include/sys/time.h","./include/getopt/getopt.h","./include/openssl/pkcs7.h","./include/openssl/dtls1.h","./include/openssl/des.h","./include/openssl/ssl23.h","./include/openssl/comp.h","./include/openssl/dsa.h","./include/openssl/whrlpool.h","./include/openssl/engine.h","./include/openssl/modes.h","./include/openssl/seed.h","./include/openssl/ocsp.h","./include/openssl/pem.h","./include/openssl/blowfish.h","./include/openssl/objects.h","./include/openssl/pqueue.h","./include/openssl/buffer.h","./include/openssl/x509.h","./include/openssl/asn1.h","./include/openssl/safestack.h","./include/openssl/aes.h","./include/openssl/bio.h","./include/openssl/ui.h","./include/openssl/conf_api.h","./include/openssl/conf.h","./include/openssl/ssl.h","./include/openssl/symhacks.h","./include/openssl/opensslv.h","./include/openssl/ssl3.h","./include/openssl/txt_db.h","./include/openssl/x509_vfy.h","./include/openssl/ui_compat.h","./include/openssl/crypto.h","./include/openssl/ec.h","./include/openssl/err.h","./include/openssl/obj_mac.h","./include/openssl/pkcs12.h","./include/openssl/pem2.h","./include/openssl/lhash.h","./include/openssl/ts.h","./include/openssl/kssl.h","./include/openssl/rc2.h","./include/openssl/md5.h","./include/openssl/asn1_mac.h","./include/openssl/rsa.h","./include/openssl/rand.h","./include/openssl/bn.h","./include/openssl/ecdh.h","./include/openssl/idea.h","./include/openssl/sha.h","./include/openssl/ssl2.h","./include/openssl/x509v3.h","./include/openssl/hmac.h","./include/openssl/opensslconf.h","./include/openssl/dso.h","./include/openssl/cast.h","./include/openssl/tls1.h","./include/openssl/des_old.h","./include/openssl/ripemd.h","./include/openssl/dh.h","./include/openssl/asn1t.h","./include/openssl/evp.h","./include/openssl/camellia.h","./include/openssl/stack.h","./include/openssl/mdc2.h","./include/openssl/krb5_asn.h","./include/openssl/ebcdic.h","./include/openssl/rc4.h","./include/openssl/ossl_typ.h","./include/openssl/ecdsa.h","./include/openssl/md4.h","./include/openssl/cms.h","./include/openssl/e_os2.h","./include/openssl/local/asn1_locl.h","./include/openssl/local/e_os.h","./include/openssl/local/cryptlib.h","./include/openssl/local/o_time.h","./include/openssl/local/md32_common.h","./include/openssl/local/evp_locl.h","./include/dist/start.h","./include/dist/barrier.h","./include/dist/args.h","./include/dist/service.h","./include/bfdmuxvm/vm.h","./include/pcre/pcreposix.h","./include/net_queue_manager/net_queue_manager.h","./include/flounder/flounder_support_ump.h","./include/flounder/flounder_support_caps.h","./include/flounder/flounder_support.h","./include/flounder/flounder_support_lmp.h","./include/flounder/flounder.h","./include/netinet/tcp.h","./include/netinet/ip.h","./include/netinet/in_systm.h","./include/netinet/in.h","./include/oldc/getopt.h","./include/oldc/complex.h","./include/oldc/errno.h","./include/oldc/dirent.h","./include/oldc/stdlib.h","./include/oldc/math.h","./include/oldc/iso646.h","./include/oldc/_ctype.h","./include/oldc/printf.h","./include/oldc/wctype.h","./include/oldc/ieeefp.h","./include/oldc/termios.h","./include/oldc/grp.h","./include/oldc/ctype.h","./include/oldc/setjmp.h","./include/oldc/assert.h","./include/oldc/pwd.h","./include/oldc/inttypes.h","./include/oldc/runetype.h","./include/oldc/fpmath.h","./include/oldc/string.h","./include/oldc/locale.h","./include/oldc/stdint.h","./include/oldc/wchar.h","./include/oldc/stdio.h","./include/oldc/time.h","./include/lwip/def.h","./include/lwip/dhcp.h","./include/lwip/tcp.h","./include/lwip/mem.h","./include/lwip/api.h","./include/lwip/stats.h","./include/lwip/sockets.h","./include/lwip/snmp_asn1.h","./include/lwip/arch.h","./include/lwip/opt.h","./include/lwip/barrelfish.h","./include/lwip/udp.h","./include/lwip/memp.h","./include/lwip/api_msg.h","./include/lwip/debug.h","./include/lwip/sio.h","./include/lwip/dns.h","./include/lwip/netdb.h","./include/lwip/err.h","./include/lwip/pbuf.h","./include/lwip/memp_std.h","./include/lwip/netbuf.h","./include/lwip/netifapi.h","./include/lwip/snmp_msg.h","./include/lwip/sys.h","./include/lwip/tcpip.h","./include/lwip/netif.h","./include/lwip/snmp_structs.h","./include/lwip/sock_serialise.h","./include/lwip/snmp.h","./include/lwip/raw.h","./include/lwip/init.h","./include/lwip/sock_chan_support.h","./include/trace/trace.h","./include/c/stddef.h","./include/c/stdbool.h","./include/c/stdarg.h","./include/arch/sys_arch.h","./include/arch/perf.h","./include/arch/ia64","./include/arch/mips","./include/arch/powerpc","./include/arch/cc.h","./include/arch/sparc64","./include/arch/arm/_fpmath.h","./include/arch/arm/float.h","./include/arch/arm/fenv.h","./include/arch/arm/arch/setjmp.h","./include/arch/arm/arch/inttypes.h","./include/arch/arm/arch/stdint.h","./include/arch/arm/machine/endian.h","./include/arch/arm/machine/_limits.h","./include/arch/arm/barrelfish_kpi/dispatcher_shared_arch.h","./include/arch/arm/barrelfish_kpi/flags_arch.h","./include/arch/arm/barrelfish_kpi/registers_arch.h","./include/arch/arm/barrelfish_kpi/asm_inlines_arch.h","./include/arch/arm/barrelfish_kpi/spinlocks_arch.h","./include/arch/arm/barrelfish_kpi/registers_pushed_arm_v7m.h","./include/arch/arm/barrelfish_kpi/generic_arch.h","./include/arch/arm/barrelfish_kpi/cpu_arch.h","./include/arch/arm/barrelfish_kpi/lmp_arch.h","./include/arch/arm/barrelfish_kpi/unknown_arch.h","./include/arch/arm/barrelfish_kpi/paging_arch.h","./include/arch/arm/bench/bench_arch.h","./include/arch/arm/barrelfish/curdispatcher_arch.h","./include/arch/arm/barrelfish/invocations_arch.h","./include/arch/arm/barrelfish/syscall_arch.h","./include/arch/arm/barrelfish/lmp_chan_arch.h","./include/arch/arm/barrelfish/dispatcher_arch.h","./include/arch/arm/barrelfish/core_state_arch.h","./include/arch/arm/barrelfish/cpu_arch.h","./include/arch/arm/barrelfish/bulk_transfer_arch.h","./include/arch/arm/barrelfish/pmap_arch.h","./include/arch/arm/omap44xx/device_registers.h","./include/arch/x86/barrelfish_kpi/asm_inlines_arch.h","./include/arch/x86/barrelfish_kpi/spinlocks_arch.h","./include/arch/x86/barrelfish_kpi/perfmon_amd.h","./include/arch/x86/barrelfish_kpi/perfmon.h","./include/arch/x86/bench/bench_arch.h","./include/arch/x86/barrelfish/iocap_arch.h","./include/arch/x86/barrelfish/core_state_arch.h","./include/arch/x86/barrelfish/ipi_notify.h","./include/arch/x86/barrelfish/bulk_transfer_arch.h","./include/arch/x86/barrelfish/perfmon.h","./include/arch/scc/barrelfish/cpu_arch.h","./include/arch/scc/barrelfish/bulk_transfer_arch.h","./include/arch/x86_32/_fpmath.h","./include/arch/x86_32/float.h","./include/arch/x86_32/fenv.h","./include/arch/x86_32/arch/setjmp.h","./include/arch/x86_32/arch/inttypes.h","./include/arch/x86_32/arch/stdint.h","./include/arch/x86_32/machine/endian.h","./include/arch/x86_32/machine/_limits.h","./include/arch/x86_32/barrelfish_kpi/dispatcher_shared_arch.h","./include/arch/x86_32/barrelfish_kpi/pic_arch.h","./include/arch/x86_32/barrelfish_kpi/registers_arch.h","./include/arch/x86_32/barrelfish_kpi/asm_inlines_arch.h","./include/arch/x86_32/barrelfish_kpi/spinlocks_arch.h","./include/arch/x86_32/barrelfish_kpi/eflags_arch.h","./include/arch/x86_32/barrelfish_kpi/generic_arch.h","./include/arch/x86_32/barrelfish_kpi/shared_mem_arch.h","./include/arch/x86_32/barrelfish_kpi/cpu_arch.h","./include/arch/x86_32/barrelfish_kpi/syscall_overflows_arch.h","./include/arch/x86_32/barrelfish_kpi/lmp_arch.h","./include/arch/x86_32/barrelfish_kpi/paging_arch.h","./include/arch/x86_32/bench/bench_arch.h","./include/arch/x86_32/barrelfish/curdispatcher_arch.h","./include/arch/x86_32/barrelfish/invocations_arch.h","./include/arch/x86_32/barrelfish/syscall_arch.h","./include/arch/x86_32/barrelfish/lmp_chan_arch.h","./include/arch/x86_32/barrelfish/dispatcher_arch.h","./include/arch/x86_32/barrelfish/core_state_arch.h","./include/arch/x86_32/barrelfish/cpu_arch.h","./include/arch/x86_32/barrelfish/bulk_transfer_arch.h","./include/arch/x86_32/barrelfish/pmap_arch.h","./include/arch/alpha/arch/inttypes.h","./include/arch/alpha/arch/stdint.h","./include/arch/powerpc64/arch/asm.h","./include/arch/powerpc64/arch/setjmp.h","./include/arch/powerpc64/arch/inttypes.h","./include/arch/powerpc64/arch/stdint.h","./include/arch/mips64/arch/setjmp.h","./include/arch/mips64/arch/inttypes.h","./include/arch/mips64/arch/stdint.h","./include/arch/x86_64/_fpmath.h","./include/arch/x86_64/float.h","./include/arch/x86_64/fenv.h","./include/arch/x86_64/arch/setjmp.h","./include/arch/x86_64/arch/inttypes.h","./include/arch/x86_64/arch/stdint.h","./include/arch/x86_64/concurrent/arch/cas.h","./include/arch/x86_64/machine/asm.h","./include/arch/x86_64/machine/endian.h","./include/arch/x86_64/machine/types.h","./include/arch/x86_64/machine/_limits.h","./include/arch/x86_64/machine/fpu.h","./include/arch/x86_64/barrelfish_kpi/dispatcher_shared_arch.h","./include/arch/x86_64/barrelfish_kpi/registers_arch.h","./include/arch/x86_64/barrelfish_kpi/asm_inlines_arch.h","./include/arch/x86_64/barrelfish_kpi/spinlocks_arch.h","./include/arch/x86_64/barrelfish_kpi/eflags_arch.h","./include/arch/x86_64/barrelfish_kpi/generic_arch.h","./include/arch/x86_64/barrelfish_kpi/cpu_arch.h","./include/arch/x86_64/barrelfish_kpi/lmp_arch.h","./include/arch/x86_64/barrelfish_kpi/paging_arch.h","./include/arch/x86_64/bench/bench_arch.h","./include/arch/x86_64/barrelfish/curdispatcher_arch.h","./include/arch/x86_64/barrelfish/invocations_arch.h","./include/arch/x86_64/barrelfish/ldt.h","./include/arch/x86_64/barrelfish/syscall_arch.h","./include/arch/x86_64/barrelfish/lmp_chan_arch.h","./include/arch/x86_64/barrelfish/dispatcher_arch.h","./include/arch/x86_64/barrelfish/core_state_arch.h","./include/arch/x86_64/barrelfish/cpu_arch.h","./include/arch/x86_64/barrelfish/bulk_transfer_arch.h","./include/arch/x86_64/barrelfish/pmap_arch.h","./include/elf/elf.h","./include/thc/thcsync.h","./include/thc/thcinternal.h","./include/thc/thcstubs.h","./include/thc/thc.h","./include/ipv6/lwip/ip.h","./include/ipv6/lwip/ip_addr.h","./include/ipv6/lwip/icmp.h","./include/ipv6/lwip/inet.h","./include/angler/angler.h","./include/term/defs.h","./include/term/server/server.h","./include/term/client/filter.h","./include/term/client/default_filters.h","./include/term/client/default_triggers.h","./include/term/client/trigger.h","./include/term/client/client.h","./include/term/client/session.h","./include/term/client/defs.h","./include/term/client/client_blocking.h","./include/ahci/ahci_util.h","./include/ahci/ahci_dma_pool.h","./include/ahci/ahci.h","./include/ahci/ahci_defs.h","./include/ahci/sata_fis.h","./include/x86emu/ops.h","./include/x86emu/types.h","./include/x86emu/debug.h","./include/x86emu/x86emui.h","./include/x86emu/fpu_regs.h","./include/x86emu/prim_asm.h","./include/x86emu/prim_ops.h","./include/x86emu/decode.h","./include/x86emu/regs.h","./include/x86emu/fpu.h","./include/rcce/RCCE_lib_pwr.h","./include/rcce/RCCE_lib.h","./include/rcce/RCCE.h","./include/rcce/RCCE_debug.h","./include/bfdmuxtools/filter.h","./include/bfdmuxtools/debug.h","./include/bfdmuxtools/tools.h","./include/bfdmuxtools/bfdmux.h","./include/bfdmuxtools/codegen.h","./include/concurrent/linked_list.h","./include/contmng/contmng.h","./include/contmng/netbench.h","./include/hashtable/dictionary.h","./include/hashtable/hashtable.h","./include/hashtable/multimap.h","./include/skb/skb.h","./include/octopus_server/query.h","./include/octopus_server/debug.h","./include/octopus_server/service.h","./include/octopus_server/init.h","./include/timer/timer.h","./include/collections/flipbuffer.h","./include/collections/list.h","./include/collections/hash_table.h","./include/collections/stack.h","./include/net_device_manager/net_device_manager.h","./include/net_device_manager/net_ports_service.h","./include/deputy/nodeputy.h","./include/ipv4/lwip/ip_frag.h","./include/ipv4/lwip/ip.h","./include/ipv4/lwip/ip_addr.h","./include/ipv4/lwip/igmp.h","./include/ipv4/lwip/inet_chksum.h","./include/ipv4/lwip/icmp.h","./include/ipv4/lwip/inet.h","./include/ipv4/lwip/autoip.h","./include/tweed/tweed.h","./include/nfs/nfs.h","./include/nfs/nfs_rpc.h","./include/nfs/mount_rpc.h","./include/nfs/xdr.h","./include/barrelfish_kpi/syscalls.h","./include/barrelfish_kpi/types.h","./include/barrelfish_kpi/legacy_idc_buffer.h","./include/barrelfish_kpi/sys_debug.h","./include/barrelfish_kpi/domain_params.h","./include/barrelfish_kpi/vmkit.h","./include/barrelfish_kpi/dispatcher_handle.h","./include/barrelfish_kpi/dispatcher_shared.h","./include/barrelfish_kpi/init.h","./include/barrelfish_kpi/capabilities.h","./include/barrelfish_kpi/cpu.h","./include/barrelfish_kpi/lmp.h","./include/bench/bench.h","./include/octopus/pubsub.h","./include/octopus/getset.h","./include/octopus/barrier.h","./include/octopus/octopus.h","./include/octopus/capability_storage.h","./include/octopus/trigger.h","./include/octopus/lock.h","./include/octopus/semaphores.h","./include/octopus/init.h","./include/octopus/definitions.h","./include/octopus/parser/ast.h","./include/procon/procon.h","./include/spawndomain/getopt.h","./include/spawndomain/spawndomain.h","./include/acpi_client/acpi_client.h","./include/barrelfish/caddr.h","./include/barrelfish/event_mutex.h","./include/barrelfish/dispatch.h","./include/barrelfish/static_assert.h","./include/barrelfish/ump_chan.h","./include/barrelfish/multihop_chan.h","./include/barrelfish/nameservice_client.h","./include/barrelfish/lmp_chan.h","./include/barrelfish/coreset.h","./include/barrelfish/morecore.h","./include/barrelfish/syscalls.h","./include/barrelfish/vspace_layout.h","./include/barrelfish/inthandler.h","./include/barrelfish/vregion.h","./include/barrelfish/barrelfish.h","./include/barrelfish/net_constants.h","./include/barrelfish/vspace_mmu_aware.h","./include/barrelfish/domain.h","./include/barrelfish/terminal.h","./include/barrelfish/types.h","./include/barrelfish/resource_ctrl.h","./include/barrelfish/pmap.h","./include/barrelfish/core_state.h","./include/barrelfish/debug.h","./include/barrelfish/slab.h","./include/barrelfish/ump_impl.h","./include/barrelfish/spawn_client.h","./include/barrelfish/waitset.h","./include/barrelfish/memobj.h","./include/barrelfish/bulk_transfer.h","./include/barrelfish/vspace_common.h","./include/barrelfish/ram_alloc.h","./include/barrelfish/sys_debug.h","./include/barrelfish/event_queue.h","./include/barrelfish/idc.h","./include/barrelfish/slot_alloc.h","./include/barrelfish/except.h","./include/barrelfish/monitor_client.h","./include/barrelfish/cspace.h","./include/barrelfish/threads.h","./include/barrelfish/deferred.h","./include/barrelfish/thread_sync.h","./include/barrelfish/waitset_chan.h","./include/barrelfish/idc_export.h","./include/barrelfish/vspace.h","./include/barrelfish/dispatcher.h","./include/barrelfish/msgbuf.h","./include/barrelfish/heap.h","./include/barrelfish/ump_endpoint.h","./include/barrelfish/cap_predicates.h","./include/barrelfish/lmp_endpoints.h","./include/barrelfish/capabilities.h","./include/mdb/types.h","./include/mdb/mdb.h","./include/mdb/mdb_tree.h","./include/driverkit/driverkit.h","./include/mm/slot_alloc.h","./include/mm/mm.h","./include/pager/pager.h","./include/target/arm/barrelfish_kpi/dispatcher_shared_target.h","./include/target/arm/barrelfish_kpi/paging_arm_v5.h","./include/target/arm/barrelfish_kpi/arm_core_data.h","./include/target/arm/barrelfish_kpi/paging_arm_v7m.h","./include/target/arm/barrelfish_kpi/paging_arm_v7.h","./include/target/arm/barrelfish/dispatcher_target.h","./include/target/arm/barrelfish/pmap_target.h","./include/target/x86/barrelfish_kpi/coredata_target.h","./include/target/x86/barrelfish/pmap_target.h","./include/target/x86_32/barrelfish_kpi/dispatcher_shared_target.h","./include/target/x86_32/barrelfish_kpi/registers_target.h","./include/target/x86_32/barrelfish_kpi/paging_target.h","./include/target/x86_32/barrelfish/dispatcher_target.h","./include/target/x86_32/barrelfish/pmap_target.h","./include/target/x86_64/barrelfish_kpi/dispatcher_shared_target.h","./include/target/x86_64/barrelfish_kpi/cpu_target.h","./include/target/x86_64/barrelfish_kpi/registers_target.h","./include/target/x86_64/barrelfish_kpi/paging_target.h","./include/target/x86_64/barrelfish/dispatcher_target.h","./include/target/x86_64/barrelfish/pmap_target.h","./include/arpa/inet.h","./if/skb_map.if","./if/rcce.if","./if/test.if","./if/net_ports.if","./if/monitor_mem.if","./if/bulkbench.if","./if/bfs.if","./if/interdisp.if","./if/glue_bench.if","./if/mem.if","./if/mouse.if","./if/fb.if","./if/empty.if","./if/bcache.if","./if/bench.if","./if/hpet.if","./if/monitor.if","./if/bcast.if","./if/lpc_kbd.if","./if/intermon.if","./if/monitor_blocking.if","./if/xmplthc.if","./if/nameservice.if","./if/ahci_mgmt.if","./if/replay.if","./if/xmplmsg.if","./if/skb.if","./if/xmplrpc.if","./if/ata_rw28.if","./if/Hakefile","./if/unixsock.if","./if/net_ARP.if","./if/usb_driver.if","./if/timer.if","./if/ping_pong.if","./if/net_queue_manager.if","./if/acpi.if","./if/trivfs.if","./if/xcorecapbench.if","./if/lock.if","./if/xcorecap.if","./if/usb_manager.if","./if/net_soft_filters.if","./if/terminal_config.if","./if/spawn.if","./if/pci.if","./if/types.if","./if/serial.if","./if/octopus.if","./if/xmplcr.if","./if/pixels.if","./if/keyboard.if","./if/dist_event.if","./if/terminal.if","./if/boot_perfmon.if","./if/terminal_session.if","./if/platform/armv7.if","./if/platform/xscale.if","./if/platform/x86_32.if","./if/platform/armv5.if","./if/platform/scc.if","./if/platform/armv7-m.if","./if/platform/x86_64.if","./if/arch/armv7.if","./if/arch/xscale.if","./if/arch/x86_32.if","./if/arch/armv5.if","./if/arch/scc.if","./if/arch/armv7-m.if","./if/arch/x86_64.if","./kernel/useraccess.c","./kernel/stdlib.c","./kernel/memset.c","./kernel/syscall.c","./kernel/printf.c","./kernel/paging_generic.c","./kernel/memmove.c","./kernel/Hakefile","./kernel/microbenchmarks.c","./kernel/string.c","./kernel/capabilities.c","./kernel/dispatch.c","./kernel/schedule_rbed.c","./kernel/schedule_rr.c","./kernel/wakeup.c","./kernel/timer.c","./kernel/gdb_stub.c","./kernel/startup.c","./kernel/arch/arm/misc.c","./kernel/arch/arm/exec.c","./kernel/arch/arm/exn.c","./kernel/arch/arm/phys_mmap.c","./kernel/arch/x86/perfmon_intel.c","./kernel/arch/x86/misc.c","./kernel/arch/x86/mcheck.c","./kernel/arch/x86/rtc.c","./kernel/arch/x86/perfmon_amd.c","./kernel/arch/x86/syscall.c","./kernel/arch/x86/pit.c","./kernel/arch/x86/debugregs.c","./kernel/arch/x86/timing.c","./kernel/arch/x86/cmos.c","./kernel/arch/x86/perfmon.c","./kernel/arch/x86/startup_x86.c","./kernel/arch/x86/ipi_notify.c","./kernel/arch/x86/apic.c","./kernel/arch/x86/start_aps.c","./kernel/arch/x86/pic.c","./kernel/arch/x86/serial.c","./kernel/arch/x86/init_ap_x86_64.S","./kernel/arch/x86/multiboot.c","./kernel/arch/x86/conio.c","./kernel/arch/x86/init_ap_x86_32.S","./kernel/arch/scc/rck.c","./kernel/arch/scc/boot.S","./kernel/arch/arm_gem5/gem5_serial.c","./kernel/arch/arm_gem5/pl011_uart.c","./kernel/arch/arm_gem5/paging.c","./kernel/arch/arm_gem5/integrator.c","./kernel/arch/arm_gem5/boot.S","./kernel/arch/arm_gem5/start_aps.c","./kernel/arch/arm_gem5/init.c","./kernel/arch/arm_gem5/startup_arch.c","./kernel/arch/x86_32/page_mappings_arch.c","./kernel/arch/x86_32/syscall.c","./kernel/arch/x86_32/gdb_arch.c","./kernel/arch/x86_32/paging.c","./kernel/arch/x86_32/exec.c","./kernel/arch/x86_32/microbenchmarks.c","./kernel/arch/x86_32/boot.S","./kernel/arch/x86_32/init.c","./kernel/arch/x86_32/debug.c","./kernel/arch/x86_32/irq.c","./kernel/arch/x86_32/entry.S","./kernel/arch/x86_32/startup_arch.c","./kernel/arch/x86_32/linker.lds.in","./kernel/arch/x86_32/pic.S","./kernel/arch/armv7/kludges.c","./kernel/arch/armv7/cp15.S","./kernel/arch/armv7/syscall.c","./kernel/arch/armv7/exceptions.S","./kernel/arch/armv7/kputchar.c","./kernel/arch/armv7/irq.c","./kernel/arch/armv7/gic.c","./kernel/arch/armv7/linker.lds.in","./kernel/arch/armv7/multiboot.c","./kernel/arch/armv7-m/paging.c","./kernel/arch/armv7-m/exec.c","./kernel/arch/armv7-m/omap.c","./kernel/arch/armv7-m/exceptions.S","./kernel/arch/armv7-m/boot.S","./kernel/arch/armv7-m/exn.c","./kernel/arch/armv7-m/init.c","./kernel/arch/armv7-m/linker.lds.in","./kernel/arch/armv5/kludges.c","./kernel/arch/armv5/syscall.c","./kernel/arch/armv5/gdb_arch.c","./kernel/arch/armv5/pl011_uart.c","./kernel/arch/armv5/paging.c","./kernel/arch/armv5/integrator.c","./kernel/arch/armv5/cp15.c","./kernel/arch/armv5/exceptions.S","./kernel/arch/armv5/microbenchmarks.c","./kernel/arch/armv5/boot.S","./kernel/arch/armv5/kputchar.c","./kernel/arch/armv5/init.c","./kernel/arch/armv5/startup_arch.c","./kernel/arch/armv5/linker.lds.in","./kernel/arch/xscale/ixp2800_integrator.c","./kernel/arch/xscale/ixp2800_paging.c","./kernel/arch/xscale/boot.S","./kernel/arch/xscale/kputchar.c","./kernel/arch/xscale/ixp2800_uart.c","./kernel/arch/xscale/linker.lds.in","./kernel/arch/x86_64/page_mappings_arch.c","./kernel/arch/x86_64/vmkit.c","./kernel/arch/x86_64/syscall.c","./kernel/arch/x86_64/gdb_arch.c","./kernel/arch/x86_64/paging.c","./kernel/arch/x86_64/exec.c","./kernel/arch/x86_64/microbenchmarks.c","./kernel/arch/x86_64/boot.S","./kernel/arch/x86_64/init.c","./kernel/arch/x86_64/debug.c","./kernel/arch/x86_64/irq.c","./kernel/arch/x86_64/entry.S","./kernel/arch/x86_64/startup_arch.c","./kernel/arch/x86_64/linker.lds.in","./kernel/arch/omap44xx/spinlock.c","./kernel/arch/omap44xx/omap_uart.c","./kernel/arch/omap44xx/paging.c","./kernel/arch/omap44xx/omap.c","./kernel/arch/omap44xx/boot.S","./kernel/arch/omap44xx/cortexm3_heteropanda.c","./kernel/arch/omap44xx/start_aps.c","./kernel/arch/omap44xx/init.c","./kernel/arch/omap44xx/startup_arch.c","./kernel/include/dispatch.h","./kernel/include/paging_kernel_helper.h","./kernel/include/paging_generic.h","./kernel/include/schedule.h","./kernel/include/startup.h","./kernel/include/microbenchmarks.h","./kernel/include/gdb_stub.h","./kernel/include/kernel.h","./kernel/include/diteinfo.h","./kernel/include/timer.h","./kernel/include/serial.h","./kernel/include/exec.h","./kernel/include/multiboot.h","./kernel/include/useraccess.h","./kernel/include/wakeup.h","./kernel/include/cap_predicates.h","./kernel/include/capabilities.h","./kernel/include/syscall.h","./kernel/include/arch/x86/startup_x86.h","./kernel/include/arch/x86/cmos.h","./kernel/include/arch/x86/debugregs.h","./kernel/include/arch/x86/timing.h","./kernel/include/arch/x86/start_aps.h","./kernel/include/arch/x86/kputchar.h","./kernel/include/arch/x86/apic.h","./kernel/include/arch/x86/debug.h","./kernel/include/arch/x86/perfmon_amd.h","./kernel/include/arch/x86/pit.h","./kernel/include/arch/x86/perfmon_intel.h","./kernel/include/arch/x86/global.h","./kernel/include/arch/x86/pic.h","./kernel/include/arch/x86/conio.h","./kernel/include/arch/x86/mcheck.h","./kernel/include/arch/x86/ipi_notify.h","./kernel/include/arch/x86/x86.h","./kernel/include/arch/x86/ia32_spaces.h","./kernel/include/arch/x86/rtc.h","./kernel/include/arch/x86/perfmon.h","./kernel/include/arch/x86/syscall.h","./kernel/include/arch/scc/rck.h","./kernel/include/arch/x86_32/offsets.h","./kernel/include/arch/x86_32/arch_gdb_stub.h","./kernel/include/arch/x86_32/kputchar.h","./kernel/include/arch/x86_32/misc.h","./kernel/include/arch/x86_32/irq.h","./kernel/include/arch/x86_32/paging_kernel_arch.h","./kernel/include/arch/x86_32/cpuid_spaces.h","./kernel/include/arch/x86_32/x86.h","./kernel/include/arch/x86_32/kernel_multiboot.h","./kernel/include/arch/x86_32/ia32_spaces.h","./kernel/include/arch/x86_32/init.h","./kernel/include/arch/x86_32/fpu.h","./kernel/include/arch/armv7/exceptions.h","./kernel/include/arch/armv7/offsets.h","./kernel/include/arch/armv7/startup_arch.h","./kernel/include/arch/armv7/ixp2800_uart.h","./kernel/include/arch/armv7/arch_gdb_stub.h","./kernel/include/arch/armv7/pl011_uart.h","./kernel/include/arch/armv7/start_aps.h","./kernel/include/arch/armv7/kputchar.h","./kernel/include/arch/armv7/spinlock.h","./kernel/include/arch/armv7/arm_hal.h","./kernel/include/arch/armv7/io.h","./kernel/include/arch/armv7/misc.h","./kernel/include/arch/armv7/irq.h","./kernel/include/arch/armv7/paging_kernel_arch.h","./kernel/include/arch/armv7/arm_core_data.h","./kernel/include/arch/armv7/cortexm3_heteropanda.h","./kernel/include/arch/armv7/gic.h","./kernel/include/arch/armv7/global.h","./kernel/include/arch/armv7/cp15.h","./kernel/include/arch/armv7/kernel_multiboot.h","./kernel/include/arch/armv7/phys_mmap.h","./kernel/include/arch/armv7/armv7_syscall.h","./kernel/include/arch/armv7/arm.h","./kernel/include/arch/armv7/init.h","./kernel/include/arch/armv7-m/exceptions.h","./kernel/include/arch/armv7-m/offsets.h","./kernel/include/arch/armv7-m/startup_arch.h","./kernel/include/arch/armv7-m/ixp2800_uart.h","./kernel/include/arch/armv7-m/arch_gdb_stub.h","./kernel/include/arch/armv7-m/pl011_uart.h","./kernel/include/arch/armv7-m/start_aps.h","./kernel/include/arch/armv7-m/kputchar.h","./kernel/include/arch/armv7-m/spinlock.h","./kernel/include/arch/armv7-m/arm_hal.h","./kernel/include/arch/armv7-m/io.h","./kernel/include/arch/armv7-m/misc.h","./kernel/include/arch/armv7-m/irq.h","./kernel/include/arch/armv7-m/paging_kernel_arch.h","./kernel/include/arch/armv7-m/arm_core_data.h","./kernel/include/arch/armv7-m/global.h","./kernel/include/arch/armv7-m/cp15.h","./kernel/include/arch/armv7-m/kernel_multiboot.h","./kernel/include/arch/armv7-m/phys_mmap.h","./kernel/include/arch/armv7-m/armv7_syscall.h","./kernel/include/arch/armv7-m/ti_i2c.h","./kernel/include/arch/armv7-m/arm.h","./kernel/include/arch/armv7-m/init.h","./kernel/include/arch/armv5/exceptions.h","./kernel/include/arch/armv5/offsets.h","./kernel/include/arch/armv5/arch_gdb_stub.h","./kernel/include/arch/armv5/pl011_uart.h","./kernel/include/arch/armv5/kputchar.h","./kernel/include/arch/armv5/arm_hal.h","./kernel/include/arch/armv5/misc.h","./kernel/include/arch/armv5/irq.h","./kernel/include/arch/armv5/paging_kernel_arch.h","./kernel/include/arch/armv5/cp15.h","./kernel/include/arch/armv5/phys_mmap.h","./kernel/include/arch/armv5/arm.h","./kernel/include/arch/armv5/init.h","./kernel/include/arch/xscale/exceptions.h","./kernel/include/arch/xscale/offsets.h","./kernel/include/arch/xscale/ixp2800_uart.h","./kernel/include/arch/xscale/arch_gdb_stub.h","./kernel/include/arch/xscale/kputchar.h","./kernel/include/arch/xscale/arm_hal.h","./kernel/include/arch/xscale/misc.h","./kernel/include/arch/xscale/irq.h","./kernel/include/arch/xscale/paging_kernel_arch.h","./kernel/include/arch/xscale/cp15.h","./kernel/include/arch/xscale/phys_mmap.h","./kernel/include/arch/xscale/arm.h","./kernel/include/arch/xscale/init.h","./kernel/include/arch/x86_64/offsets.h","./kernel/include/arch/x86_64/arch_gdb_stub.h","./kernel/include/arch/x86_64/kputchar.h","./kernel/include/arch/x86_64/misc.h","./kernel/include/arch/x86_64/irq.h","./kernel/include/arch/x86_64/paging_kernel_arch.h","./kernel/include/arch/x86_64/cpuid_spaces.h","./kernel/include/arch/x86_64/vmkit.h","./kernel/include/arch/x86_64/x86.h","./kernel/include/arch/x86_64/kernel_multiboot.h","./kernel/include/arch/x86_64/init.h","./kernel/include/arch/x86_64/fpu.h","./kernel/include/target/x86_32/offsets_target.h","./kernel/include/target/x86_32/paging_kernel_target.h","./kernel/include/target/x86_64/offsets_target.h","./kernel/include/target/x86_64/paging_kernel_target.h","./doc/Doxyfile.cmake","./doc/005-scc/SCC.tex","./doc/005-scc/Hakefile","./doc/005-scc/sloccount.txt","./doc/005-scc/figures/exp1.svg","./doc/005-scc/figures/exp2.svg","./doc/005-scc/figures/exp1.pdf","./doc/005-scc/figures/exp2.pdf","./doc/005-scc/plots/header.gnuplot","./doc/005-scc/plots/mpbbench/mpbbench_oneway.pdf","./doc/005-scc/plots/mpbbench/mpbbench_send.dat","./doc/005-scc/plots/mpbbench/plot-line.sh","./doc/005-scc/plots/mpbbench/Makefile","./doc/005-scc/plots/mpbbench/mpbbench_oneway.dat","./doc/005-scc/plots/mpbbench/mpbbench_recv.dat","./doc/005-scc/plots/rcce_bench/bt.dat","./doc/005-scc/plots/rcce_bench/rcce_lu_speedup.pdf","./doc/005-scc/plots/rcce_bench/plot-rcce.sh","./doc/005-scc/plots/rcce_bench/rcce_bt_speedup.pdf","./doc/005-scc/plots/rcce_bench/lu.dat","./doc/005-scc/plots/rcce_bench/Makefile","./doc/005-scc/plots/rcce_bench/plot-rcce-speedup.sh","./doc/005-scc/plots/rcce_bench/rcce_lu.pdf","./doc/005-scc/plots/rcce_bench/rcce_bt.pdf","./doc/008-tracing/Tracing.tex","./doc/008-tracing/Hakefile","./doc/008-tracing/images/aquarium.png","./doc/008-tracing/images/flush.pdf","./doc/008-tracing/images/boxplot.pdf","./doc/008-tracing/images/classdiag-input.png","./doc/008-tracing/images/pleco-process.pdf","./doc/008-tracing/images/aquarium-filters.png","./doc/008-tracing/images/ntp.pdf","./doc/008-tracing/images/aquarium-activities.png","./doc/008-tracing/images/classdiag-output.png","./doc/012-services/Services.tex","./doc/012-services/deptree2.py","./doc/012-services/README.txt","./doc/012-services/deptree.py","./doc/012-services/dep2-b-dot","./doc/012-services/priorities.txt","./doc/012-services/dep2-f-dot","./doc/012-services/status.txt","./doc/012-services/services.txt","./doc/012-services/dep2-i-dot.pdf","./doc/012-services/dep2-a-dot.pdf","./doc/012-services/dependencies.txt","./doc/012-services/Hakefile","./doc/012-services/services-desc.txt","./doc/012-services/questions.txt","./doc/012-services/dep2-b-dot.pdf","./doc/012-services/dep2-a-dot","./doc/012-services/layers.txt","./doc/012-services/dep2-i-dot","./doc/012-services/dep.txt","./doc/012-services/categories.txt","./doc/012-services/makedeptxt.sh","./doc/012-services/dep2-f-dot.pdf","./doc/002-mackerel/Mackerel.tex","./doc/002-mackerel/Hakefile","./doc/006-routing/vcis.dia","./doc/006-routing/api.h","./doc/006-routing/vcis.pdf","./doc/006-routing/many-to-many.pdf","./doc/006-routing/client-server.pdf","./doc/006-routing/overview_multihop_channel.pdf","./doc/006-routing/Hakefile","./doc/006-routing/many-to-many.vsd","./doc/006-routing/client-monitor.vsd","./doc/006-routing/Routing.tex","./doc/006-routing/client-server.vsd","./doc/006-routing/client-monitor.pdf","./doc/006-routing/overview_multihop_channel.dia","./doc/style/bfish-logo.png","./doc/style/bftn-template.tex","./doc/style/bftn.sty","./doc/style/defs.bib","./doc/style/barrelfish.bib","./doc/style/bfish-logo.pdf","./doc/014-bulk-transfer/Hakefile","./doc/014-bulk-transfer/bulk-transfer.tex","./doc/001-glossary/Main.hs","./doc/001-glossary/Hakefile","./doc/001-glossary/Glossary.tex","./doc/004-virtual_memory/VirtualMemory.tex","./doc/004-virtual_memory/Hakefile","./doc/015-disk-driver-arch/conclusion.tex","./doc/015-disk-driver-arch/flounder-ahci.tex","./doc/015-disk-driver-arch/blockdevfs.tex","./doc/015-disk-driver-arch/references.bib","./doc/015-disk-driver-arch/future.tex","./doc/015-disk-driver-arch/libahci.tex","./doc/015-disk-driver-arch/related.tex","./doc/015-disk-driver-arch/title-settings.tex","./doc/015-disk-driver-arch/abstract.tex","./doc/015-disk-driver-arch/Hakefile","./doc/015-disk-driver-arch/fat.tex","./doc/015-disk-driver-arch/xahcid.tex","./doc/015-disk-driver-arch/glossary.tex","./doc/015-disk-driver-arch/running.tex","./doc/015-disk-driver-arch/design.tex","./doc/015-disk-driver-arch/usage.tex","./doc/015-disk-driver-arch/intro.tex","./doc/015-disk-driver-arch/disk-driver-report.tex","./doc/015-disk-driver-arch/figures/h2d_fis.svg","./doc/015-disk-driver-arch/figures/cache_design.svg","./doc/015-disk-driver-arch/figures/rfis_area.svg","./doc/015-disk-driver-arch/figures/dma_pool_design.svg","./doc/015-disk-driver-arch/figures/fat32_layout.svg","./doc/015-disk-driver-arch/figures/mmap.svg","./doc/015-disk-driver-arch/figures/blockdevfs_list.svg","./doc/015-disk-driver-arch/figures/command_table.png","./doc/015-disk-driver-arch/figures/command_list_structure.png","./doc/015-disk-driver-arch/figures/fat16_layout.svg","./doc/015-disk-driver-arch/figures/pmem_overview.svg","./doc/015-disk-driver-arch/figures/hba_mem.png","./doc/015-disk-driver-arch/figures/fillbench.svg","./doc/015-disk-driver-arch/figures/architecture.svg","./doc/011-idc/Hakefile","./doc/011-idc/IDC.tex","./doc/011-idc/figures/ump_bind.svg","./doc/011-idc/figures/ump_bind.pdf","./doc/003-hake/Hakefile","./doc/003-hake/Hake.tex","./doc/000-overview/dcb.pdf","./doc/000-overview/Overview.tex","./doc/000-overview/LMP.pdf","./doc/000-overview/Hakefile","./doc/000-overview/cap_translation.pdf","./doc/000-overview/UMP.pdf","./doc/000-overview/os-arch.pdf","./doc/000-overview/cap_heirarchy.pdf","./doc/000-overview/graffle/UMP.graffle","./doc/000-overview/graffle/Overview.graffle","./doc/000-overview/graffle/Capabilities.graffle","./doc/000-overview/graffle/Dispatcher.graffle","./doc/000-overview/graffle/Capabilities_Addr.graffle","./doc/000-overview/graffle/LMP.graffle","./doc/009-notifications/umpnotify.pdf","./doc/009-notifications/Hakefile","./doc/009-notifications/umpnotify.svg","./doc/009-notifications/Notify.tex","./doc/010-spec/disp_states_simple_save_area_analysis.dot","./doc/010-spec/disp_states_simple.circo","./doc/010-spec/cap_types.dot","./doc/010-spec/Hakefile","./doc/010-spec/Spec.tex","./doc/010-spec/init_cspace.dot","./doc/010-spec/app_cspace.dot","./doc/016-serial-ports/Hakefile","./doc/016-serial-ports/Serial.tex","./doc/013-capability-mgmt/acks-problem.vsd","./doc/013-capability-mgmt/CapMgmt.tex","./doc/013-capability-mgmt/cap_types.dot","./doc/013-capability-mgmt/Hakefile","./doc/013-capability-mgmt/type_system.tex","./doc/013-capability-mgmt/acks-problem.pdf","./doc/013-capability-mgmt/causal-problem.pdf","./doc/013-capability-mgmt/causal-problem.vsd","./devices/tulip.dev","./devices/amd_vmcb.dev","./devices/pl011_uart.dev","./devices/pci_hdr0_mem.dev","./devices/ac97_base_audio.dev","./devices/fat_bpb.dev","./devices/ehci.dev","./devices/pc16550d_mem.dev","./devices/pci_hdr0.dev","./devices/arm_icp_pic0.dev","./devices/x2apic.dev","./devices/rtl8029as_spaces.dev","./devices/ht_config.dev","./devices/lpc_rtc.dev","./devices/ac97_ext_codec.dev","./devices/e10k.dev","./devices/ia32.dev","./devices/eMAC.dev","./devices/ixp2800_icp_pic0.dev","./devices/ac97_ext_audio.dev","./devices/ti_i2c.dev","./devices/sp804_pit.dev","./devices/sdhc.dev","./devices/lpc_pic.dev","./devices/uhci.dev","./devices/lpc_ioapic.dev","./devices/ti_twl6030.dev","./devices/Hakefile","./devices/pl130_gic.dev","./devices/fat16_ebpb.dev","./devices/lpc_kbd.dev","./devices/ohci.dev","./devices/lpc_bridge.dev","./devices/fat_direntry.dev","./devices/xapic.dev","./devices/ahci_port.dev","./devices/ac97_ext_modem.dev","./devices/cpuid.dev","./devices/lpc_rtc_spaces.dev","./devices/ixp2800_uart.dev","./devices/e10k_q.dev","./devices/ata_identify.dev","./devices/crb_sif.dev","./devices/fat32_ebpb.dev","./devices/cortex_a9_pit.dev","./devices/rtl8029as.dev","./devices/hpet.dev","./devices/ixp2800_icp_pit.dev","./devices/e1000.dev","./devices/rck.dev","./devices/pci_hdr1.dev","./devices/a9scu.dev","./devices/pc16550d.dev","./devices/lpc_pci_config.dev","./devices/amd64.dev","./devices/acpi_ec.dev","./devices/arm.dev","./devices/audio_nbm.dev","./devices/lpc_timer.dev","./devices/lpc_dma.dev","./devices/arm_icp_pit.dev","./devices/ahci_hba.dev","./devices/omap/omap44xx_dss_cm2.dev","./devices/omap/omap44xx_per_la.dev","./devices/omap/omap44xx_sgx.dev","./devices/omap/omap44xx_emif1.dev","./devices/omap/omap44xx_ckgen_prm.dev","./devices/omap/omap44xx_iss_ipipe.dev","./devices/omap/omap44xx_ivahd_prm.dev","./devices/omap/omap44xx_dispc_l4_per.dev","./devices/omap/omap44xx_slimbus1_dsp.dev","./devices/omap/omap44xx_gptimer2_l4interconnect.dev","./devices/omap/omap44xx_clk1_dmm1_targ.dev","./devices/omap/omap44xx_l3_ram_firewall.dev","./devices/omap/omap44xx_dsi1_pllctrl_l4_per.dev","./devices/omap/omap44xx_sdma.dev","./devices/omap/omap44xx_iss_ccp2.dev","./devices/omap/omap44xx_l3init_cm2.dev","./devices/omap/omap44xx_ctrlmod.dev","./devices/omap/omap44xx_ocp2scp.dev","./devices/omap/omap44xx_scrm.dev","./devices/omap/omap44xx_cmu.dev","./devices/omap/omap44xx_intrconn_socket_cm1.dev","./devices/omap/omap44xx_ma_firewall.dev","./devices/omap/omap44xx_dss_l4_per.dev","./devices/omap/omap44xx_dmm.dev","./devices/omap/ehci.dev","./devices/omap/omap44xx_iss_bte.dev","./devices/omap/omap44xx_iss_h3a.dev","./devices/omap/omap44xx_system_mailbox_l4_cfginterconnect.dev","./devices/omap/omap44xx_usbphy.dev","./devices/omap/omap44xx_iss_top.dev","./devices/omap/omap44xx_gpio.dev","./devices/omap/omap44xx_rfbi_l4_per.dev","./devices/omap/omap44xx_dsi1_phy_l4_per.dev","./devices/omap/omap44xx_dsp_cm1.dev","./devices/omap/omap44xx_wdtimer3_dsp.dev","./devices/omap/omap44xx_ivahd_cm2.dev","./devices/omap/omap44xx_i2c3.dev","./devices/omap/omap44xx_iss_isp5_sys2.dev","./devices/omap/omap44xx_hdq_1_wire.dev","./devices/omap/omap44xx_always_on_prm.dev","./devices/omap/omap44xx_iss_csi2_a_regs2.dev","./devices/omap/omap44xx_gptimer5_dsp.dev","./devices/omap/omap44xx_hsi_ports.dev","./devices/omap/omap44xx_cfg_ap.dev","./devices/omap/omap44xx_cam_prm.dev","./devices/omap/omap44xx_restore_cm1.dev","./devices/omap/omap44xx_usbtllhs_config.dev","./devices/omap/omap44xx_rot_l3interconnect.dev","./devices/omap/omap44xx_c2c_slave_niu_firewall.dev","./devices/omap/omap44xx_gpmc_firewall.dev","./devices/omap/omap44xx_mmu.dev","./devices/omap/omap44xx_l4per_prm.dev","./devices/omap/omap44xx_iss_ipipeif.dev","./devices/omap/omap44xx_instr_cm1.dev","./devices/omap/omap44xx_spinlock.dev","./devices/omap/omap44xx_uart1.dev","./devices/omap/omap44xx_emu_cm.dev","./devices/omap/omap44xx_sysctrl_padconf_core.dev","./devices/omap/omap44xx_wkup_prm.dev","./devices/omap/omap44xx_dsi1_protocol_engine_l4_per.dev","./devices/omap/omap44xx_dsp_prm.dev","./devices/omap/omap44xx_hsusbhost.dev","./devices/omap/omap44xx_sr_mpu.dev","./devices/omap/omap44xx_clk1_host_clk1.dev","./devices/omap/omap44xx_venc_l4_per.dev","./devices/omap/omap44xx_l4per_cm2.dev","./devices/omap/omap44xx_iss_resizer.dev","./devices/omap/omap44xx_abe_prm.dev","./devices/omap/omap44xx_always_on_cm2.dev","./devices/omap/omap44xx_mcbsp1_dsp.dev","./devices/omap/omap44xx_local_interconnect.dev","./devices/omap/omap44xx_usbconf.dev","./devices/omap/omap44xx_ckgen_cm2.dev","./devices/omap/omap_uart.dev","./devices/omap/omap44xx_cortex_m3_nvic.dev","./devices/omap/omap44xx_ckgen_cm1.dev","./devices/omap/omap44xx_sysctrl_general_core.dev","./devices/omap/omap44xx_dct_l3interconnect.dev","./devices/omap/omap44xx_uart3.dev","./devices/omap/ohci.dev","./devices/omap/omap44xx_gpio2.dev","./devices/omap/omap44xx_device_prm.dev","./devices/omap/omap44xx_iss_camerarx_core1.dev","./devices/omap/omap44xx_sysctrl_general_wkup.dev","./devices/omap/omap44xx_dsp_mmu.dev","./devices/omap/omap44xx_mmchs1.dev","./devices/omap/omap44xx_hsi_top.dev","./devices/omap/omap44xx_c2c_master_niu_firewall.dev","./devices/omap/omap44xx_cortexa9_socket_prcm.dev","./devices/omap/omap44xx_per_ia_0.dev","./devices/omap/omap44xx_mpu_prm.dev","./devices/omap/omap44xx_instr_cm2.dev","./devices/omap/omap44xx_cm2.dev","./devices/omap/omap44xx_mcspi1.dev","./devices/omap/omap44xx_slimbus2_l3interconnect.dev","./devices/omap/omap44xx_mmchs3.dev","./devices/omap/omap44xx_mcpdm_dsp.dev","./devices/omap/omap44xx_emif.dev","./devices/omap/omap44xx_sgx_firewall.dev","./devices/omap/omap44xx_ivahd_mailbox_icont.dev","./devices/omap/omap44xx_clk1_clk1_targ_pwr_disc_clk2.dev","./devices/omap/omap44xx_cm3_rw_table.dev","./devices/omap/omap44xx_dss_prm.dev","./devices/omap/omap44xx_sgx_cm2.dev","./devices/omap/omap44xx_wkup_cm.dev","./devices/omap/omap44xx_dma_cortex_m3.dev","./devices/omap/omap44xx_intrconn_socket_cm2.dev","./devices/omap/omap44xx_cam_cm2.dev","./devices/omap/omap44xx_sgx_prm.dev","./devices/omap/omap44xx_core_prm.dev","./devices/omap/omap44xx_restore_cm2.dev","./devices/omap/omap44xx_usbfshost.dev","./devices/omap/omap44xx_id.dev","./devices/omap/omap44xx_clk3_statcoll_sdram.dev","./devices/omap/omap44xx_mcasp_dsp.dev","./devices/omap/omap44xx_cortexm3_wkup.dev","./devices/omap/omap44xx_hwseq_l3interconnect.dev","./devices/omap/omap44xx_iss_isif.dev","./devices/omap/omap44xx_cortexa9_cpu0.dev","./devices/omap/omap44xx_core_cm2.dev","./devices/omap/omap44xx_mcspi2.dev","./devices/omap/omap44xx_iss_csi2_a_regs1.dev","./devices/omap/omap44xx_instr_prm.dev","./devices/omap/omap44xx_cortexa9_wugen.dev","./devices/omap/omap44xx_keyboard_controller.dev","./devices/omap/omap44xx_clk1_dss_bw_regulator.dev","./devices/omap/omap44xx_c2c.dev","./devices/omap/omap44xx_per_ap.dev","./devices/omap/omap44xx_elm.dev","./devices/omap/omap44xx_dmic_dsp.dev","./devices/omap/omap44xx_iss_tctrl.dev","./devices/omap/omap44xx_l3init_prm.dev","./devices/omap/omap44xx_hsi_dma_channels.dev","./devices/omap/omap44xx_cortexa9_prm.dev","./devices/omap/omap44xx_clk1_flagmux_clk1.dev","./devices/omap/omap44xx_sysctrl_icont.dev","./devices/omap/omap44xx_ehci.dev","./devices/omap/omap44xx_vlcdj_l3interconnect.dev","./devices/omap/omap44xx_simcop_control_l3interconnect.dev","./devices/omap/omap44xx_debug_firewall.dev","./devices/omap/omap44xx_clk1_rate_adapt_resp_32to128_clk1.dev","./devices/omap/omap44xx_per_ta_uart3.dev","./devices/omap/omap44xx_32ktimer.dev","./devices/omap/omap44xx_emu_prm.dev","./devices/omap/omap44xx_intrconn_socket_prm.dev","./devices/omap/omap44xx_hsusbotg.dev","./devices/omap/omap44xx_usbtllhs_ulpi.dev","./devices/omap/omap44xx_fdif.dev","./devices/omap/omap44xx_icr_mpu.dev","./devices/omap/omap44xx_abe_cm1.dev","./devices/omap/omap44xx_sysctrl_padconf_wkup.dev","./devices/omap/omap44xx_ohci.dev","./devices/omap/omap44xx_dma_l3interconnect.dev","./devices/omap/omap44xx_iss_isp5_sys1.dev","./devices/omap/omap44xx_iss_cbuff.dev","./devices/omap/omap44xx_clk3_statcoll_lat0.dev","./devices/omap/omap44xx_mpu_cm1.dev","./devices/omap/omap44xx_mcspi3.dev","./devices/omap/omap44xx_gpmc.dev","./trace_definitions/trace_defs.pleco","./trace_definitions/Hakefile","./usr/kaluga/start_cpu.h","./usr/kaluga/start_pci.h","./usr/kaluga/omap_startup.h","./usr/kaluga/start_cpu.c","./usr/kaluga/boot_modules.h","./usr/kaluga/driver_startup.h","./usr/kaluga/main.c","./usr/kaluga/debug.h","./usr/kaluga/queue.h","./usr/kaluga/start_pci.c","./usr/kaluga/queue.c","./usr/kaluga/Hakefile","./usr/kaluga/device_caps.c","./usr/kaluga/kaluga.h","./usr/kaluga/.start_cpu.c.swp","./usr/kaluga/boot_modules.c","./usr/kaluga/device_caps.h","./usr/kaluga/common.c","./usr/kaluga/driver_startup.c","./usr/kaluga/omap_startup.c","./usr/replay/master.c","./usr/replay/Hakefile","./usr/replay/Makefile","./usr/replay/Makefile.linux","./usr/replay/hash.c","./usr/replay/slave.c","./usr/replay/defs.h","./usr/replay/hash.h","./usr/vmkitmon/vmkitmon.c","./usr/vmkitmon/realmode.c","./usr/vmkitmon/pci_host.h","./usr/vmkitmon/lpc.h","./usr/vmkitmon/pc16550d.h","./usr/vmkitmon/vmkitmon.h","./usr/vmkitmon/pci_devices.h","./usr/vmkitmon/console.h","./usr/vmkitmon/svm.h","./usr/vmkitmon/lpc.c","./usr/vmkitmon/guest.h","./usr/vmkitmon/pc16550d.c","./usr/vmkitmon/apic.h","./usr/vmkitmon/Hakefile","./usr/vmkitmon/guest.c","./usr/vmkitmon/hdd.c","./usr/vmkitmon/apic.c","./usr/vmkitmon/pci_host.c","./usr/vmkitmon/pci.h","./usr/vmkitmon/keyboard.c","./usr/vmkitmon/x86.h","./usr/vmkitmon/keyboard.h","./usr/vmkitmon/hdd.h","./usr/vmkitmon/pci_hostbridge.c","./usr/vmkitmon/README","./usr/vmkitmon/console.c","./usr/vmkitmon/realmode.h","./usr/vmkitmon/pci.c","./usr/pci/pci_service.c","./usr/pci/ht_config.h","./usr/pci/Hakefile","./usr/pci/pcimain.c","./usr/pci/pci_debug.h","./usr/pci/pci.h","./usr/pci/pcie.c","./usr/pci/ht_config.c","./usr/pci/memsweep.c","./usr/pci/driver_mapping.h","./usr/pci/pci.c","./usr/slideshow/main.c","./usr/slideshow/Hakefile","./usr/slideshow/makeslides.sh","./usr/slideshow/bmp.h","./usr/slideshow/zlib_load.h","./usr/slideshow/slideshow.c","./usr/slideshow/slideshow.h","./usr/slideshow/zlib_load.c","./usr/slideshow/bmp.c","./usr/bomp_benchmark/wtime.c","./usr/bomp_benchmark/c_randdp.c","./usr/bomp_benchmark/lock_scalability.c","./usr/bomp_benchmark/ep.c","./usr/bomp_benchmark/npbparams.h","./usr/bomp_benchmark/wtime.h","./usr/bomp_benchmark/Hakefile","./usr/bomp_benchmark/Makefile","./usr/bomp_benchmark/scalability.c","./usr/bomp_benchmark/is.c","./usr/bomp_benchmark/ft.c","./usr/bomp_benchmark/global.h","./usr/bomp_benchmark/c_timers.c","./usr/bomp_benchmark/npb-C.h","./usr/bomp_benchmark/README","./usr/bomp_benchmark/run-benchmark.sh","./usr/bomp_benchmark/c_print_results.c","./usr/bomp_benchmark/cg.c","./usr/startd/README.txt","./usr/startd/internal.h","./usr/startd/spawn.c","./usr/startd/main.c","./usr/startd/Hakefile","./usr/netfile/README.txt","./usr/netfile/netfile.c","./usr/netfile/Hakefile","./usr/echoserver/echoserver.h","./usr/echoserver/tcpechoserver.c","./usr/echoserver/main.c","./usr/echoserver/Hakefile","./usr/echoserver/udpechoserver.c","./usr/ramfsd/service.c","./usr/ramfsd/main.c","./usr/ramfsd/Hakefile","./usr/ramfsd/ramfs.c","./usr/ramfsd/ramfs.h","./usr/spawnd/internal.h","./usr/spawnd/service.c","./usr/spawnd/ps.h","./usr/spawnd/main.c","./usr/spawnd/Hakefile","./usr/spawnd/bsp_bootup.c","./usr/spawnd/ps.c","./usr/phoenix_tests/kmeans.c","./usr/phoenix_tests/Hakefile","./usr/drivers/usb/usb_keyboard/usb_keyboard_driver.h","./usr/drivers/usb/usb_keyboard/usb_keyboard.c","./usr/drivers/usb/usb_keyboard/usb_keyboard_keymap.h","./usr/drivers/usb/usb_keyboard/Hakefile","./usr/drivers/usb/usb_keyboard/usb_keyboard_service.c","./usr/drivers/usb/usb_keyboard/usb_keyboard_service.h","./usr/drivers/usb/usb_keyboard/usb_keyboard_driver.c","./usr/drivers/usb/usb_manager/usb_manager.c","./usr/drivers/usb/usb_manager/usb_request.c","./usr/drivers/usb/usb_manager/usb_controller.c","./usr/drivers/usb/usb_manager/usb_manager_service.h","./usr/drivers/usb/usb_manager/usb_pipe.c","./usr/drivers/usb/usb_manager/usb_memory.c","./usr/drivers/usb/usb_manager/usb_transfer.c","./usr/drivers/usb/usb_manager/Hakefile","./usr/drivers/usb/usb_manager/usb_driver.c","./usr/drivers/usb/usb_manager/usb_xfer.c","./usr/drivers/usb/usb_manager/usb_endpoint.c","./usr/drivers/usb/usb_manager/usb_device.c","./usr/drivers/usb/usb_manager/usb_manager_service.c","./usr/drivers/usb/usb_manager/controller/xhci/usb_xhci.h","./usr/drivers/usb/usb_manager/controller/xhci/usb_xhci.c","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_memory.c","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_bus.c","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_queue.c","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_pipe.h","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_memory.h","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_xfer.c","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_queue.h","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_bus.h","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci.c","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_xfer.h","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_root_hub.h","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci.h","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_pipe.c","./usr/drivers/usb/usb_manager/controller/ehci/usb_ehci_root_hub.c","./usr/drivers/usb/usb_manager/controller/ehci/ehci_device.h","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci.h","./usr/drivers/usb/usb_manager/controller/ohci/ohci_device.h","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_pipe.c","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_xfer.h","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_pipe.h","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_memory.h","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_root_hub.h","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_bus.c","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci.c","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_root_hub.c","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_xfer.c","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_bus.h","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_queue.c","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_memory.c","./usr/drivers/usb/usb_manager/controller/ohci/usb_ohci_queue.h","./usr/drivers/usb/usb_manager/controller/uhci/usb_uhci.h","./usr/drivers/usb/usb_manager/controller/uhci/usb_uhci.c","./usr/drivers/usb/usb_manager/hub/usb_hub_request.c","./usr/drivers/usb/usb_manager/hub/usb_hub.c","./usr/drivers/usb/usb_manager/include/usb_device.h","./usr/drivers/usb/usb_manager/include/usb_request.h","./usr/drivers/usb/usb_manager/include/usb_controller.h","./usr/drivers/usb/usb_manager/include/usb_xfer.h","./usr/drivers/usb/usb_manager/include/usb_interface.h","./usr/drivers/usb/usb_manager/include/usb_hub.h","./usr/drivers/usb/usb_manager/include/usb_pipe.h","./usr/drivers/usb/usb_manager/include/usb_memory.h","./usr/drivers/usb/usb_manager/include/usb_transfer.h","./usr/drivers/usb/usb_manager/include/usb_driver.h","./usr/drivers/usb/usb_manager/include/usb_endpoint.h","./usr/drivers/serial/basic_service.c","./usr/drivers/serial/main.c","./usr/drivers/serial/Hakefile","./usr/drivers/serial/terminal_service.c","./usr/drivers/serial/serial_debug.h","./usr/drivers/serial/serial.c","./usr/drivers/serial/serial.h","./usr/drivers/lpc_timer/main.c","./usr/drivers/lpc_timer/Hakefile","./usr/drivers/lpc_timer/timer.h","./usr/drivers/lpc_timer/lpc_timer_debug.h","./usr/drivers/lpc_timer/timer.c","./usr/drivers/hpet/main.c","./usr/drivers/hpet/hpet.h","./usr/drivers/hpet/Hakefile","./usr/drivers/rtl8029/rtl8029.c","./usr/drivers/rtl8029/Hakefile","./usr/drivers/rtl8029/rtl8029_debug.h","./usr/drivers/rtl8029/rtl8029.h","./usr/drivers/vbe/main.c","./usr/drivers/vbe/Hakefile","./usr/drivers/vbe/int10.c","./usr/drivers/vbe/int10.h","./usr/drivers/vbe/vbe.h","./usr/drivers/vbe/vbe.c","./usr/drivers/lpc_kbd/mouse.c","./usr/drivers/lpc_kbd/lpc_kbd.h","./usr/drivers/lpc_kbd/main.c","./usr/drivers/lpc_kbd/Hakefile","./usr/drivers/lpc_kbd/lpc_kbd.c","./usr/drivers/eMAC/eMAC_driver.c","./usr/drivers/eMAC/eMAC_debug.c","./usr/drivers/eMAC/eMAC_debug.h","./usr/drivers/eMAC/Hakefile","./usr/drivers/eMAC/eMAC_hwinit.c","./usr/drivers/eMAC/eMAC_driver.h","./usr/drivers/eMAC/eMAC_spaces.h","./usr/drivers/e10k/e10k.c","./usr/drivers/e10k/sleep.h","./usr/drivers/e10k/e10k.h","./usr/drivers/e10k/Hakefile","./usr/drivers/e10k/helper.c","./usr/drivers/e10k/sleep.c","./usr/drivers/e10k/e10k_queue.h","./usr/drivers/uhci/notes.txt","./usr/drivers/uhci/Hakefile","./usr/drivers/uhci/uhci_debug.h","./usr/drivers/uhci/uhci.c","./usr/drivers/uhci/uhci.h","./usr/drivers/e1000/e1000n_debug.h","./usr/drivers/e1000/README.txt","./usr/drivers/e1000/e1000n_helpers.c","./usr/drivers/e1000/e1000n.c","./usr/drivers/e1000/e1000n.h","./usr/drivers/e1000/e1000n_hwinit.c","./usr/drivers/e1000/Hakefile","./usr/drivers/e1000/e1000n_hwinit.h","./usr/drivers/e1000/e1000n_desc.h","./usr/drivers/e1000/e1000n_debug.c","./usr/drivers/tulip/main.c","./usr/drivers/tulip/Hakefile","./usr/drivers/tulip/tulip.h","./usr/drivers/tulip/tulip.c","./usr/drivers/omap44xx/mmchs/mmchs.h","./usr/drivers/omap44xx/mmchs/omap44xx_cm2.h","./usr/drivers/omap44xx/mmchs/mmchs_debug.h","./usr/drivers/omap44xx/mmchs/service.c","./usr/drivers/omap44xx/mmchs/i2c.c","./usr/drivers/omap44xx/mmchs/main.c","./usr/drivers/omap44xx/mmchs/i2c.h","./usr/drivers/omap44xx/mmchs/Hakefile","./usr/drivers/omap44xx/mmchs/mmchs.c","./usr/drivers/omap44xx/mmchs/cm2.c","./usr/drivers/omap44xx/mmchs/twl6030.c","./usr/drivers/omap44xx/mmchs/ctrlmod.c","./usr/drivers/omap44xx/mmchs/twl6030.h","./usr/drivers/omap44xx/mmchs/omap44xx_ctrlmod.h","./usr/drivers/omap44xx/fdif/fdif.c","./usr/drivers/omap44xx/fdif/fdif.h","./usr/drivers/omap44xx/fdif/picture.c","./usr/drivers/omap44xx/fdif/Hakefile","./usr/drivers/sif/sif.h","./usr/drivers/sif/sif.c","./usr/drivers/sif/main.c","./usr/drivers/sif/Hakefile","./usr/drivers/rtc/rtc.c","./usr/drivers/rtc/main.c","./usr/drivers/rtc/rtc.h","./usr/init/mem_alloc.c","./usr/init/spawn.c","./usr/init/Hakefile","./usr/init/init.c","./usr/init/init.h","./usr/net-test/Hakefile","./usr/net-test/net-test.c","./usr/bfscope/Hakefile","./usr/bfscope/bfscope.c","./usr/mem_serv/mem_serv.c","./usr/mem_serv/Hakefile","./usr/angler/angler.c","./usr/angler/Hakefile","./usr/fish/fish.c","./usr/fish/Hakefile","./usr/fish/font.c","./usr/fish/fish_arm.c","./usr/boot_perfmon/internal.h","./usr/boot_perfmon/spawn.c","./usr/boot_perfmon/main.c","./usr/boot_perfmon/Hakefile","./usr/boot_perfmon/stats.c","./usr/boot_perfmon/tests.c","./usr/boot_perfmon/connections.c","./usr/boot_perfmon/relations.c","./usr/boot_perfmon/leader.c","./usr/device_managers/net_gen_dev/NGD_mng_debug.h","./usr/device_managers/net_gen_dev/NGD_mng.c","./usr/device_managers/net_gen_dev/Hakefile","./usr/examples/README.txt","./usr/examples/xmpl-thc-lang/README.txt","./usr/examples/xmpl-thc-lang/xmplthc.if","./usr/examples/xmpl-thc-lang/Hakefile","./usr/examples/xmpl-thc-lang/thc-lang.c","./usr/examples/xmpl-thc-lang/menu.lst","./usr/examples/xmpl-rpc/README.txt","./usr/examples/xmpl-rpc/rpc_rpc.c","./usr/examples/xmpl-rpc/rpc_msg.c","./usr/examples/xmpl-rpc/xmplrpc.if","./usr/examples/xmpl-rpc/Hakefile","./usr/examples/xmpl-rpc/menu.lst","./usr/examples/xmpl-spawn/spawn.c","./usr/examples/xmpl-spawn/Hakefile","./usr/examples/xmpl-spawn/menu.lst","./usr/examples/xmpl-trace/README.txt","./usr/examples/xmpl-trace/trace.c","./usr/examples/xmpl-trace/Hakefile","./usr/examples/xmpl-trace/atrace.trc","./usr/examples/xmpl-trace/menu.lst","./usr/examples/xmpl-call-response/README.txt","./usr/examples/xmpl-call-response/call-response.c","./usr/examples/xmpl-call-response/Hakefile","./usr/examples/xmpl-call-response/xmplcr.if","./usr/examples/xmpl-call-response/menu.lst","./usr/examples/xmpl-span/span.c","./usr/examples/xmpl-span/Hakefile","./usr/examples/xmpl-span/menu.lst","./usr/examples/xmpl-thread/thread-minimal.c","./usr/examples/xmpl-thread/Hakefile","./usr/examples/xmpl-thread/thread.c","./usr/examples/xmpl-thread/menu.lst","./usr/examples/xmpl-msg/README.txt","./usr/examples/xmpl-msg/xmplmsg.if","./usr/examples/xmpl-msg/Hakefile","./usr/examples/xmpl-msg/msg.c","./usr/examples/xmpl-msg/menu.lst","./usr/examples/xmpl-hello/hello.c","./usr/examples/xmpl-hello/Hakefile","./usr/examples/xmpl-hello/menu.lst","./usr/examples/xmpl-thc-binding/README.txt","./usr/examples/xmpl-thc-binding/xmplthc.if","./usr/examples/xmpl-thc-binding/thc-binding.c","./usr/examples/xmpl-thc-binding/Hakefile","./usr/examples/xmpl-thc-binding/menu.lst","./usr/ahcid/ahcid.c","./usr/ahcid/ahcid_hwinit.c","./usr/ahcid/ahcid_debug.h","./usr/ahcid/ahcid.h","./usr/ahcid/Hakefile","./usr/tests/thcminitest/Hakefile","./usr/tests/thcminitest/thcminitest.c","./usr/tests/mdbtests/Hakefile","./usr/tests/mdbtests/test_range_query.c","./usr/tests/mdbtests/test_addr_zero.c","./usr/tests/ahcialloctest/Hakefile","./usr/tests/ahcialloctest/ahcialloctest.c","./usr/tests/cxx/test.cpp","./usr/tests/cxx/Hakefile","./usr/tests/testdesc/testdesc.c","./usr/tests/testdesc/Hakefile","./usr/tests/testdesc/testdesc-child.c","./usr/tests/testdesc/testdesc.h","./usr/tests/shm/shm_server.c","./usr/tests/shm/shm_client.c","./usr/tests/shm/Hakefile","./usr/tests/idctest/Hakefile","./usr/tests/idctest/idctest.c","./usr/tests/schedtest/Hakefile","./usr/tests/schedtest/schedtest.c","./usr/tests/net_tests/openport_test/Hakefile","./usr/tests/net_tests/openport_test/net_openport_test.c","./usr/tests/net_tests/nfs_throughput/Hakefile","./usr/tests/net_tests/nfs_throughput/nfs_cat.c","./usr/tests/net_tests/posix-sockets/main.c","./usr/tests/net_tests/posix-sockets/Hakefile","./usr/tests/net_tests/udp_throughput/Hakefile","./usr/tests/net_tests/udp_throughput/udp_test.c","./usr/tests/fputest/Hakefile","./usr/tests/fputest/fputest.c","./usr/tests/disttest/barrier_test.c","./usr/tests/disttest/main.c","./usr/tests/disttest/disttest.h","./usr/tests/disttest/Hakefile","./usr/tests/multihoptest/multihoptest.c","./usr/tests/multihoptest/Hakefile","./usr/tests/multihoptest/latencytest.c","./usr/tests/testerror/testerror.c","./usr/tests/testerror/Hakefile","./usr/tests/nkm/nkmtest.c","./usr/tests/nkm/vspace_dump.c","./usr/tests/nkm/Hakefile","./usr/tests/nkm/vspace_dump.h","./usr/tests/thcidctest/Hakefile","./usr/tests/thcidctest/thcidctest.c","./usr/tests/filetests/fat_test.c","./usr/tests/filetests/fread_test.c","./usr/tests/filetests/Hakefile","./usr/tests/filetests/fscanf_test.c","./usr/tests/hellotest/hellotest.c","./usr/tests/hellotest/Hakefile","./usr/tests/terminalio/pty-test.c","./usr/tests/terminalio/terminal_input.c","./usr/tests/terminalio/Hakefile","./usr/tests/bomptest/sync.c","./usr/tests/bomptest/progress-new.c","./usr/tests/bomptest/cpu_bound.c","./usr/tests/bomptest/sync_progress.c","./usr/tests/bomptest/progress.c","./usr/tests/bomptest/test.c","./usr/tests/bomptest/Hakefile","./usr/tests/bomptest/Makefile","./usr/tests/thctest/thctest.c","./usr/tests/thctest/Hakefile","./usr/tests/yield_test/Hakefile","./usr/tests/yield_test/yield_test.c","./usr/tests/timer/Hakefile","./usr/tests/timer/timer.c","./usr/tests/ata_rw28_test/Hakefile","./usr/tests/ata_rw28_test/ata_rw28_test.c","./usr/tests/skb_tests/Hakefile","./usr/tests/skb_tests/mem_affinity.c","./usr/tests/semaphores/Hakefile","./usr/tests/semaphores/semtest.c","./usr/tests/spantest/spantest.c","./usr/tests/spantest/Hakefile","./usr/tests/tls/Hakefile","./usr/tests/tls/tls2.c","./usr/tests/tls/tls.c","./usr/tests/testconcurrent/Hakefile","./usr/tests/testconcurrent/testconcurrent.c","./usr/tests/octopus/d2sem.c","./usr/tests/octopus/d2locksimple.c","./usr/tests/octopus/common.h","./usr/tests/octopus/d2getset_idcap.c","./usr/tests/octopus/d2trigger.c","./usr/tests/octopus/d2bench.c","./usr/tests/octopus/d2getset.c","./usr/tests/octopus/d2bench1.c","./usr/tests/octopus/d2pubsub.c","./usr/tests/octopus/Hakefile","./usr/tests/octopus/d2bench3.c","./usr/tests/octopus/d2read.c","./usr/tests/octopus/d2bench2.c","./usr/tests/octopus/d2barrier.c","./usr/tests/vspace_tests/main.c","./usr/tests/vspace_tests/vspace_dump.c","./usr/tests/vspace_tests/Hakefile","./usr/tests/vspace_tests/vspace_dump.h","./usr/tests/tweedtest/tweedtest.c","./usr/tests/tweedtest/Hakefile","./usr/tests/xcorecaps/xcorecap.c","./usr/tests/xcorecaps/xcorecap.h","./usr/tests/xcorecaps/Hakefile","./usr/tests/xcorecaps/xcorecapserv.c","./usr/tests/pagertest/pagertest.c","./usr/tests/pagertest/Hakefile","./usr/tests/memtest/mem_alloc.c","./usr/tests/memtest/Hakefile","./usr/tests/memtest/mem_free.c","./usr/tests/memtest/memtest.c","./usr/tests/perfmontest/perfmon.c","./usr/tests/perfmontest/Hakefile","./usr/rcce/pingpong/Hakefile","./usr/rcce/pingpong/RCCE_pingpong.c","./usr/rcce/bt/initialize.c","./usr/rcce/bt/rhs.c","./usr/rcce/bt/inputbt.data.sample","./usr/rcce/bt/npbparams.h.A.16","./usr/rcce/bt/solve_subs.c","./usr/rcce/bt/common.h","./usr/rcce/bt/exact_solution.c","./usr/rcce/bt/y_solve.c","./usr/rcce/bt/work_lhs.h","./usr/rcce/bt/timers.h","./usr/rcce/bt/mpinpb.h","./usr/rcce/bt/npbparams.h.A.1","./usr/rcce/bt/adi.c","./usr/rcce/bt/npbparams.h.A.4","./usr/rcce/bt/set_constants.c","./usr/rcce/bt/print_results.c","./usr/rcce/bt/applu_macros.h","./usr/rcce/bt/npbparams.h.S.16","./usr/rcce/bt/define.c","./usr/rcce/bt/make_set.c","./usr/rcce/bt/npbparams.h","./usr/rcce/bt/verify.c","./usr/rcce/bt/setup_mpi.c","./usr/rcce/bt/Hakefile","./usr/rcce/bt/copy_faces.c","./usr/rcce/bt/header.h","./usr/rcce/bt/x_solve.c","./usr/rcce/bt/npbparams.h.A.25","./usr/rcce/bt/applu_share.h","./usr/rcce/bt/exact_rhs.c","./usr/rcce/bt/z_solve.c","./usr/rcce/bt/add.c","./usr/rcce/bt/timers.c","./usr/rcce/bt/npbparams.h.S.4","./usr/rcce/bt/error.c","./usr/rcce/bt/npbparams.h.A.9","./usr/rcce/bt/npbparams.h.A.36","./usr/rcce/bt/applu_protos.h","./usr/rcce/bt/npbparams.h.S.1","./usr/rcce/bt/npbparams.h.S.9","./usr/rcce/bt/bt.c","./usr/rcce/ipi_test/Hakefile","./usr/rcce/ipi_test/mainrc.c","./usr/rcce/lu/rhs.c","./usr/rcce/lu/setcoeff.c","./usr/rcce/lu/npbparams.h.A.16","./usr/rcce/lu/timers.h","./usr/rcce/lu/npbparams.h.S.32","./usr/rcce/lu/npbparams.h.A.1","./usr/rcce/lu/pintgr.c","./usr/rcce/lu/npbparams.h.A.4","./usr/rcce/lu/npbparams.h.A.64","./usr/rcce/lu/exchange_5.c","./usr/rcce/lu/blts.c","./usr/rcce/lu/print_results.c","./usr/rcce/lu/setbv.c","./usr/rcce/lu/applu_macros.h","./usr/rcce/lu/npbparams.h.S.2","./usr/rcce/lu/npbparams.h.S.16","./usr/rcce/lu/read_input.c","./usr/rcce/lu/nodedim.c","./usr/rcce/lu/exact.c","./usr/rcce/lu/jacu.c","./usr/rcce/lu/exchange_4.c","./usr/rcce/lu/npbparams.h","./usr/rcce/lu/exchange_1.c","./usr/rcce/lu/verify.c","./usr/rcce/lu/applu.h","./usr/rcce/lu/Hakefile","./usr/rcce/lu/npbparams.h.A.8","./usr/rcce/lu/init_comm.c","./usr/rcce/lu/applu_share.h","./usr/rcce/lu/proc_grid.c","./usr/rcce/lu/lu.c","./usr/rcce/lu/timers.c","./usr/rcce/lu/npbparams.h.S.4","./usr/rcce/lu/error.c","./usr/rcce/lu/setiv.c","./usr/rcce/lu/directions.h","./usr/rcce/lu/npbparams.h.A.32","./usr/rcce/lu/applu_protos.h","./usr/rcce/lu/exchange_3.c","./usr/rcce/lu/npbparams.h.A.2","./usr/rcce/lu/npbparams.h.S.8","./usr/rcce/lu/subdomain.c","./usr/rcce/lu/jacld.c","./usr/rcce/lu/l2norm.c","./usr/rcce/lu/neighbors.c","./usr/rcce/lu/ssor.c","./usr/rcce/lu/erhs.c","./usr/rcce/lu/exchange_6.c","./usr/rcce/lu/npbparams.h.S.1","./usr/rcce/lu/buts.c","./usr/acpi/acpi_service.c","./usr/acpi/lpc_ioapic_spaces.h","./usr/acpi/interrupts.c","./usr/acpi/buttons.c","./usr/acpi/Hakefile","./usr/acpi/acpi_shared.h","./usr/acpi/apic.c","./usr/acpi/acpi_ec.c","./usr/acpi/ioapic.h","./usr/acpi/ioapic.c","./usr/acpi/acpi_main.c","./usr/acpi/acpi.c","./usr/acpi/video.c","./usr/acpi/acpi_debug.h","./usr/acpi/lpc_ioapic_ioapic_impl.h","./usr/acpi/acpica_osglue.c","./usr/acpi/acpica/Hakefile","./usr/acpi/acpica/parser/psparse.c","./usr/acpi/acpica/parser/psscope.c","./usr/acpi/acpica/parser/pswalk.c","./usr/acpi/acpica/parser/psargs.c","./usr/acpi/acpica/parser/psxface.c","./usr/acpi/acpica/parser/psloop.c","./usr/acpi/acpica/parser/pstree.c","./usr/acpi/acpica/parser/psopcode.c","./usr/acpi/acpica/parser/psutils.c","./usr/acpi/acpica/tables/tbinstal.c","./usr/acpi/acpica/tables/tbxfroot.c","./usr/acpi/acpica/tables/tbutils.c","./usr/acpi/acpica/tables/tbxface.c","./usr/acpi/acpica/tables/tbfadt.c","./usr/acpi/acpica/tables/tbfind.c","./usr/acpi/acpica/include/amlresrc.h","./usr/acpi/acpica/include/acglobal.h","./usr/acpi/acpica/include/acmacros.h","./usr/acpi/acpica/include/aclocal.h","./usr/acpi/acpica/include/acdisasm.h","./usr/acpi/acpica/include/actables.h","./usr/acpi/acpica/include/achware.h","./usr/acpi/acpica/include/actbl1.h","./usr/acpi/acpica/include/acresrc.h","./usr/acpi/acpica/include/acapps.h","./usr/acpi/acpica/include/acparser.h","./usr/acpi/acpica/include/acrestyp.h","./usr/acpi/acpica/include/acinterp.h","./usr/acpi/acpica/include/actbl.h","./usr/acpi/acpica/include/acconfig.h","./usr/acpi/acpica/include/acobject.h","./usr/acpi/acpica/include/acevents.h","./usr/acpi/acpica/include/acdebug.h","./usr/acpi/acpica/include/acstruct.h","./usr/acpi/acpica/include/acpiosxf.h","./usr/acpi/acpica/include/accommon.h","./usr/acpi/acpica/include/acdispat.h","./usr/acpi/acpica/include/acnames.h","./usr/acpi/acpica/include/acpixf.h","./usr/acpi/acpica/include/acpredef.h","./usr/acpi/acpica/include/amlcode.h","./usr/acpi/acpica/include/actypes.h","./usr/acpi/acpica/include/actbl2.h","./usr/acpi/acpica/include/acexcep.h","./usr/acpi/acpica/include/acoutput.h","./usr/acpi/acpica/include/acutils.h","./usr/acpi/acpica/include/acopcode.h","./usr/acpi/acpica/include/acnamesp.h","./usr/acpi/acpica/include/acpi.h","./usr/acpi/acpica/include/platform/acintel.h","./usr/acpi/acpica/include/platform/acgcc.h","./usr/acpi/acpica/include/platform/acbarrelfish.h","./usr/acpi/acpica/include/platform/acenv.h","./usr/acpi/acpica/events/evxfevnt.c","./usr/acpi/acpica/events/evxfregn.c","./usr/acpi/acpica/events/evgpe.c","./usr/acpi/acpica/events/evxface.c","./usr/acpi/acpica/events/evevent.c","./usr/acpi/acpica/events/evregion.c","./usr/acpi/acpica/events/evmisc.c","./usr/acpi/acpica/events/evsci.c","./usr/acpi/acpica/events/evrgnini.c","./usr/acpi/acpica/events/evgpeblk.c","./usr/acpi/acpica/resources/rscalc.c","./usr/acpi/acpica/resources/rsaddr.c","./usr/acpi/acpica/resources/rsinfo.c","./usr/acpi/acpica/resources/rsmemory.c","./usr/acpi/acpica/resources/rsdump.c","./usr/acpi/acpica/resources/rsutils.c","./usr/acpi/acpica/resources/rsio.c","./usr/acpi/acpica/resources/rsmisc.c","./usr/acpi/acpica/resources/rscreate.c","./usr/acpi/acpica/resources/rsirq.c","./usr/acpi/acpica/resources/rsxface.c","./usr/acpi/acpica/resources/rslist.c","./usr/acpi/acpica/namespace/nsutils.c","./usr/acpi/acpica/namespace/nsparse.c","./usr/acpi/acpica/namespace/nsinit.c","./usr/acpi/acpica/namespace/nspredef.c","./usr/acpi/acpica/namespace/nsalloc.c","./usr/acpi/acpica/namespace/nssearch.c","./usr/acpi/acpica/namespace/nsdump.c","./usr/acpi/acpica/namespace/nsobject.c","./usr/acpi/acpica/namespace/nsaccess.c","./usr/acpi/acpica/namespace/nsnames.c","./usr/acpi/acpica/namespace/nsdumpdv.c","./usr/acpi/acpica/namespace/nsxfobj.c","./usr/acpi/acpica/namespace/nsxfeval.c","./usr/acpi/acpica/namespace/nsrepair.c","./usr/acpi/acpica/namespace/nswalk.c","./usr/acpi/acpica/namespace/nsxfname.c","./usr/acpi/acpica/namespace/nsload.c","./usr/acpi/acpica/namespace/nseval.c","./usr/acpi/acpica/executer/exregion.c","./usr/acpi/acpica/executer/exresop.c","./usr/acpi/acpica/executer/exresolv.c","./usr/acpi/acpica/executer/exstoren.c","./usr/acpi/acpica/executer/exmutex.c","./usr/acpi/acpica/executer/exoparg3.c","./usr/acpi/acpica/executer/exnames.c","./usr/acpi/acpica/executer/exutils.c","./usr/acpi/acpica/executer/exsystem.c","./usr/acpi/acpica/executer/exstorob.c","./usr/acpi/acpica/executer/exdump.c","./usr/acpi/acpica/executer/exstore.c","./usr/acpi/acpica/executer/exconvrt.c","./usr/acpi/acpica/executer/exoparg2.c","./usr/acpi/acpica/executer/excreate.c","./usr/acpi/acpica/executer/exconfig.c","./usr/acpi/acpica/executer/exprep.c","./usr/acpi/acpica/executer/exfldio.c","./usr/acpi/acpica/executer/exresnte.c","./usr/acpi/acpica/executer/exoparg1.c","./usr/acpi/acpica/executer/exoparg6.c","./usr/acpi/acpica/executer/exmisc.c","./usr/acpi/acpica/executer/exfield.c","./usr/acpi/acpica/utilities/utmath.c","./usr/acpi/acpica/utilities/utlock.c","./usr/acpi/acpica/utilities/utids.c","./usr/acpi/acpica/utilities/uttrack.c","./usr/acpi/acpica/utilities/utclib.c","./usr/acpi/acpica/utilities/utcopy.c","./usr/acpi/acpica/utilities/utdelete.c","./usr/acpi/acpica/utilities/utalloc.c","./usr/acpi/acpica/utilities/utstate.c","./usr/acpi/acpica/utilities/uteval.c","./usr/acpi/acpica/utilities/utmisc.c","./usr/acpi/acpica/utilities/utobject.c","./usr/acpi/acpica/utilities/utxface.c","./usr/acpi/acpica/utilities/utmutex.c","./usr/acpi/acpica/utilities/utglobal.c","./usr/acpi/acpica/utilities/utcache.c","./usr/acpi/acpica/utilities/utdebug.c","./usr/acpi/acpica/utilities/utinit.c","./usr/acpi/acpica/utilities/utresrc.c","./usr/acpi/acpica/hardware/hwtimer.c","./usr/acpi/acpica/hardware/hwacpi.c","./usr/acpi/acpica/hardware/hwregs.c","./usr/acpi/acpica/hardware/hwxface.c","./usr/acpi/acpica/hardware/hwsleep.c","./usr/acpi/acpica/hardware/hwvalid.c","./usr/acpi/acpica/hardware/hwgpe.c","./usr/acpi/acpica/dispatcher/dsmethod.c","./usr/acpi/acpica/dispatcher/dswload.c","./usr/acpi/acpica/dispatcher/dswstate.c","./usr/acpi/acpica/dispatcher/dswscope.c","./usr/acpi/acpica/dispatcher/dsobject.c","./usr/acpi/acpica/dispatcher/dsopcode.c","./usr/acpi/acpica/dispatcher/dswexec.c","./usr/acpi/acpica/dispatcher/dsutils.c","./usr/acpi/acpica/dispatcher/dsinit.c","./usr/acpi/acpica/dispatcher/dsfield.c","./usr/acpi/acpica/dispatcher/dsmthdat.c","./usr/mem_serv_dist/mem_bench_5.c","./usr/mem_serv_dist/skb.c","./usr/mem_serv_dist/README.txt","./usr/mem_serv_dist/hybrid_support.c","./usr/mem_serv_dist/no_steal.c","./usr/mem_serv_dist/mem_serv.h","./usr/mem_serv_dist/steal.h","./usr/mem_serv_dist/mem_bench_2.c","./usr/mem_serv_dist/sleep.h","./usr/mem_serv_dist/mem_bench.c","./usr/mem_serv_dist/mem_bench_4.c","./usr/mem_serv_dist/mem_serv.c","./usr/mem_serv_dist/Hakefile","./usr/mem_serv_dist/thc_support.c","./usr/mem_serv_dist/args.h","./usr/mem_serv_dist/menu-mem.lst","./usr/mem_serv_dist/memtest_trace.h","./usr/mem_serv_dist/skb.h","./usr/mem_serv_dist/mem_bench_3.c","./usr/mem_serv_dist/sleep.c","./usr/mem_serv_dist/memtest_trace.c","./usr/mem_serv_dist/steal.c","./usr/mem_serv_dist/mem_bench_6.c","./usr/mem_serv_dist/args.c","./usr/init_null/Hakefile","./usr/init_null/init_null.c","./usr/skb/shared_lib_dict.h","./usr/skb/skb_service.c","./usr/skb/queue.c","./usr/skb/Hakefile","./usr/skb/skb_main.c","./usr/skb/testapps/speed.c","./usr/skb/testapps/testrsa.h","./usr/skb/testapps/writemem.c","./usr/skb/testapps/apps.c","./usr/skb/testapps/cryptotest.c","./usr/skb/testapps/testdsa.h","./usr/skb/testapps/Hakefile","./usr/skb/testapps/apps.h","./usr/skb/testapps/map.c","./usr/skb/testapps/threadalloc.c","./usr/skb/testapps/aesevpexample.c","./usr/skb/testapps/matrix.c","./usr/skb/icparc_solver/bitmap.c","./usr/skb/icparc_solver/bitmap.h","./usr/skb/icparc_solver/ic.c","./usr/skb/icparc_solver/eplex_params.h","./usr/skb/icparc_solver/Hakefile","./usr/skb/icparc_solver/edge_finder.c","./usr/skb/icparc_solver/eregex.c","./usr/skb/icparc_solver/seplex.c","./usr/skb/icparc_solver/seplex.h","./usr/skb/legal/cmpl.txt","./usr/skb/legal/LEGAL","./usr/skb/legal/lgpl.txt","./usr/skb/legal/cmpl.html","./usr/skb/external_libraries/lib/ic_edge_finder.ecl","./usr/skb/external_libraries/lib/ic_sets.ecl","./usr/skb/external_libraries/lib/ic_probe_support.eco","./usr/skb/external_libraries/lib/ic_edge_finder3.ecl","./usr/skb/external_libraries/lib/lists.pl","./usr/skb/external_libraries/lib/ic_hybrid_sets.ecl","./usr/skb/external_libraries/lib/lists.eci","./usr/skb/external_libraries/lib/ic_gap_sbds.ecl","./usr/skb/external_libraries/lib/ic_probe_support.pl","./usr/skb/external_libraries/lib/ic_kernel.ecl","./usr/skb/external_libraries/lib/ic_make_overlap_bivs.pl","./usr/skb/external_libraries/lib/ic_constraints.ecl","./usr/skb/external_libraries/lib/ic_probing_for_scheduling.eci","./usr/skb/external_libraries/lib/ic_probe.eco","./usr/skb/external_libraries/lib/ic_sbds.eco","./usr/skb/external_libraries/lib/ic_generic_interface.ecl","./usr/skb/external_libraries/lib/ic_hybrid_sets.eci","./usr/skb/external_libraries/lib/ic_gap_sbds.eco","./usr/skb/external_libraries/lib/ic_probe_search.pl","./usr/skb/external_libraries/lib/ic_symbolic.eci","./usr/skb/external_libraries/lib/regex.ecl","./usr/skb/external_libraries/lib/ic_gap_sbds.eci","./usr/skb/external_libraries/lib/ic_generic_interface.eco","./usr/skb/external_libraries/lib/ic_kernel.eco","./usr/skb/external_libraries/lib/ic_edge_finder.eco","./usr/skb/external_libraries/lib/ic_symbolic.eco","./usr/skb/external_libraries/lib/ic_constraints.eco","./usr/skb/external_libraries/lib/ic.eco","./usr/skb/external_libraries/lib/ic_edge_finder.eci","./usr/skb/external_libraries/lib/ic_cumulative.eci","./usr/skb/external_libraries/lib/ic_edge_finder_common.eco","./usr/skb/external_libraries/lib/ic_edge_finder3.eci","./usr/skb/external_libraries/lib/ic_kernel.eci","./usr/skb/external_libraries/lib/linearize.eci","./usr/skb/external_libraries/lib/ic_symbolic.ecl","./usr/skb/external_libraries/lib/linearize.eco","./usr/skb/external_libraries/lib/ic_sets.eco","./usr/skb/external_libraries/lib/ic_probe_search.eci","./usr/skb/external_libraries/lib/ic_global.ecl","./usr/skb/external_libraries/lib/ic_sets.eci","./usr/skb/external_libraries/lib/ic_global.eci","./usr/skb/external_libraries/lib/ic_make_overlap_bivs.eco","./usr/skb/external_libraries/lib/ic_edge_finder3.eco","./usr/skb/external_libraries/lib/ic_probe_support.eci","./usr/skb/external_libraries/lib/ic_edge_finder_common.ecl","./usr/skb/external_libraries/lib/ic_search.eco","./usr/skb/external_libraries/lib/ic_probe.pl","./usr/skb/external_libraries/lib/lists.eco","./usr/skb/external_libraries/lib/ic_gap_sbdd.eco","./usr/skb/external_libraries/lib/linearize.pl","./usr/skb/external_libraries/lib/ic_gap_sbdd.ecl","./usr/skb/external_libraries/lib/ic.eci","./usr/skb/external_libraries/lib/ic_probe_search.eco","./usr/skb/external_libraries/lib/ic_sbds.ecl","./usr/skb/external_libraries/lib/ic.ecl","./usr/skb/external_libraries/lib/ic_sbds.eci","./usr/skb/external_libraries/lib/regex.eco","./usr/skb/external_libraries/lib/ic_global.eco","./usr/skb/external_libraries/lib/regex.eci","./usr/skb/external_libraries/lib/ic_search.ecl","./usr/skb/external_libraries/lib/ic_gap_sbdd.eci","./usr/skb/external_libraries/lib/ic_cumulative.eco","./usr/skb/external_libraries/lib/ic_probing_for_scheduling.pl","./usr/skb/external_libraries/lib/ic_cumulative.ecl","./usr/skb/external_libraries/lib/ic_make_overlap_bivs.eci","./usr/skb/external_libraries/lib/ic_probe.eci","./usr/skb/external_libraries/lib/ic_probing_for_scheduling.eco","./usr/skb/external_libraries/lib/ic_hybrid_sets.eco","./usr/skb/include/queue.h","./usr/skb/include/skb_debug.h","./usr/skb/include/skb_server.h","./usr/skb/Shm/DOC","./usr/skb/Shm/src/private_mem.c","./usr/skb/Shm/src/alloc.c","./usr/skb/Shm/src/shared_mem.c","./usr/skb/Shm/src/Hakefile","./usr/skb/Shm/src/config.h","./usr/skb/Shm/src/mutex.c","./usr/skb/Shm/src/example.c","./usr/skb/Shm/src/lock.S","./usr/skb/Shm/src/shmem_base.c","./usr/skb/Shm/src/memman.h","./usr/skb/Shm/src/lock_barrelfish.c","./usr/skb/predicates/queries.txt","./usr/skb/programs/data.txt","./usr/skb/programs/multicast.pl","./usr/skb/programs/bridge.pl","./usr/skb/programs/objecttests.tst","./usr/skb/programs/bridge_page.pl","./usr/skb/programs/algos_systems","./usr/skb/programs/testdevices2.txt","./usr/skb/programs/bindings.tst","./usr/skb/programs/mach","./usr/skb/programs/pubsub3.pl","./usr/skb/programs/globalthreadalloc.pl","./usr/skb/programs/device_db.pl","./usr/skb/programs/algos_systems.gnuplot.asplos2011","./usr/skb/programs/pci_queries.pl","./usr/skb/programs/bridge_postorder.pl","./usr/skb/programs/objects3.pl","./usr/skb/programs/pubsubtest.tst","./usr/skb/programs/dataskript","./usr/skb/programs/bridge_postorder_sorted.pl","./usr/skb/programs/irq_routing.pl","./usr/skb/programs/space_consumption.dat.asplos2011","./usr/skb/programs/count_loc_pci_linux","./usr/skb/programs/bridge_postorder_sorted_ascending.pl","./usr/skb/programs/test_algo.pl","./usr/skb/programs/threadallocation.pl","./usr/skb/programs/bridge_postorder_sorted_sum_ascending.pl","./usr/skb/programs/compute_required_resources.pl","./usr/skb/programs/bridge_postorder_sorted_sum.pl","./usr/skb/programs/scheduler.pl","./usr/skb/programs/bridge_linux.pl","./usr/skb/programs/loaddata.pl","./usr/skb/programs/bridge_page_orig_naturally_aligned.pl","./usr/skb/programs/t3.gnuplot","./usr/skb/programs/boardlayout.pl","./usr/skb/programs/db_partitions.pl","./usr/skb/programs/more_space_feasible","./usr/skb/programs/bindings.pl","./usr/skb/programs/algos_systems.dat.asplos2011","./usr/skb/programs/linux2skb_conversion","./usr/skb/programs/count_loc_c","./usr/skb/programs/route_tree_radix.pl","./usr/skb/programs/space_consumption.gnuplot.asplos2011","./usr/skb/programs/queries.pl","./usr/skb/programs/count_loc_prolog","./usr/skb/programs/testdevices.txt","./usr/skb/data/objects.txt","./usr/skb/eclipse_kernel/src/elipsys_fd.c","./usr/skb/eclipse_kernel/src/bip_db.c","./usr/skb/eclipse_kernel/src/whereami_default.c","./usr/skb/eclipse_kernel/src/lib3.c","./usr/skb/eclipse_kernel/src/mem.h","./usr/skb/eclipse_kernel/src/sepia.h","./usr/skb/eclipse_kernel/src/os_support.h","./usr/skb/eclipse_kernel/src/dummy_upcalls.c","./usr/skb/eclipse_kernel/src/wm.c","./usr/skb/eclipse_kernel/src/trace.h","./usr/skb/eclipse_kernel/src/emu_util.c","./usr/skb/eclipse_kernel/src/dlfcn_simple.h","./usr/skb/eclipse_kernel/src/external.h","./usr/skb/eclipse_kernel/src/bigrat.c","./usr/skb/eclipse_kernel/src/io_barrelfish.c","./usr/skb/eclipse_kernel/src/lgmp.c","./usr/skb/eclipse_kernel/src/lib6.c","./usr/skb/eclipse_kernel/src/scheduler.c","./usr/skb/eclipse_kernel/src/getwd.c","./usr/skb/eclipse_kernel/src/lbmsg.c","./usr/skb/eclipse_kernel/src/tkexdr.c","./usr/skb/eclipse_kernel/src/mem.c","./usr/skb/eclipse_kernel/src/module.h","./usr/skb/eclipse_kernel/src/lex.c","./usr/skb/eclipse_kernel/src/error.h","./usr/skb/eclipse_kernel/src/types.h","./usr/skb/eclipse_kernel/src/eclipse.h","./usr/skb/eclipse_kernel/src/eg_c_test.c","./usr/skb/eclipse_kernel/src/wm.h","./usr/skb/eclipse_kernel/src/bip_array.c","./usr/skb/eclipse_kernel/src/wm_interface.c","./usr/skb/eclipse_kernel/src/eg_c_handle.c","./usr/skb/eclipse_kernel/src/lib2.c","./usr/skb/eclipse_kernel/src/sch_types.h","./usr/skb/eclipse_kernel/src/emu_c_env.c","./usr/skb/eclipse_kernel/src/main.c","./usr/skb/eclipse_kernel/src/bip_mps.c","./usr/skb/eclipse_kernel/src/lib1.c","./usr/skb/eclipse_kernel/src/debug.h","./usr/skb/eclipse_kernel/src/emu_par.c","./usr/skb/eclipse_kernel/src/lib5.c","./usr/skb/eclipse_kernel/src/eclipseclass.h","./usr/skb/eclipse_kernel/src/io.h","./usr/skb/eclipse_kernel/src/handle.c","./usr/skb/eclipse_kernel/src/bip_misc.c","./usr/skb/eclipse_kernel/src/bip_shelf.c","./usr/skb/eclipse_kernel/src/printam.c","./usr/skb/eclipse_kernel/src/sch_eng_interface.h","./usr/skb/eclipse_kernel/src/emu_op_addr.h","./usr/skb/eclipse_kernel/src/proc_desc.c","./usr/skb/eclipse_kernel/src/property.h","./usr/skb/eclipse_kernel/src/trace.c","./usr/skb/eclipse_kernel/src/test.c","./usr/skb/eclipse_kernel/src/property.c","./usr/skb/eclipse_kernel/src/embed.c","./usr/skb/eclipse_kernel/src/Hakefile","./usr/skb/eclipse_kernel/src/dummy_bigrat.c","./usr/skb/eclipse_kernel/src/database.h","./usr/skb/eclipse_kernel/src/sch_util.c","./usr/skb/eclipse_kernel/src/ec_public.h","./usr/skb/eclipse_kernel/src/procedure.c","./usr/skb/eclipse_kernel/src/bip_bag.c","./usr/skb/eclipse_kernel/src/eg_c_basic.c","./usr/skb/eclipse_kernel/src/gencode.h","./usr/skb/eclipse_kernel/src/bip_load.c","./usr/skb/eclipse_kernel/src/bip_store.c","./usr/skb/eclipse_kernel/src/bip_arith.c","./usr/skb/eclipse_kernel/src/bip_heapevents.c","./usr/skb/eclipse_kernel/src/gc_stacks.c","./usr/skb/eclipse_kernel/src/types_external.c","./usr/skb/eclipse_kernel/src/bip_control.c","./usr/skb/eclipse_kernel/src/io.c","./usr/skb/eclipse_kernel/src/lamsg.c","./usr/skb/eclipse_kernel/src/bip_record.c","./usr/skb/eclipse_kernel/src/config.h","./usr/skb/eclipse_kernel/src/external.c","./usr/skb/eclipse_kernel/src/error.c","./usr/skb/eclipse_kernel/src/emu.c","./usr/skb/eclipse_kernel/src/names.h","./usr/skb/eclipse_kernel/src/emu_export.h","./usr/skb/eclipse_kernel/src/eg_c_mip.c","./usr/skb/eclipse_kernel/src/eg_c_sendmore.c","./usr/skb/eclipse_kernel/src/read.c","./usr/skb/eclipse_kernel/src/sha.c","./usr/skb/eclipse_kernel/src/example.c","./usr/skb/eclipse_kernel/src/sch_macros.h","./usr/skb/eclipse_kernel/src/bip_module.c","./usr/skb/eclipse_kernel/src/fd.h","./usr/skb/eclipse_kernel/src/init.c","./usr/skb/eclipse_kernel/src/bip_comp.c","./usr/skb/eclipse_kernel/src/eg_c_fail_loop.c","./usr/skb/eclipse_kernel/src/eclipsedir.c","./usr/skb/eclipse_kernel/src/worker.c","./usr/skb/eclipse_kernel/src/upcalls.c","./usr/skb/eclipse_kernel/src/write.c","./usr/skb/eclipse_kernel/src/wm_types.h","./usr/skb/eclipse_kernel/src/tkeclipse.c","./usr/skb/eclipse_kernel/src/eg_c_external.c","./usr/skb/eclipse_kernel/src/bip_delay.c","./usr/skb/eclipse_kernel/src/dict.h","./usr/skb/eclipse_kernel/src/dict.c","./usr/skb/eclipse_kernel/src/auxiliary.c","./usr/skb/eclipse_kernel/src/manual_examples.c","./usr/skb/eclipse_kernel/src/read.h","./usr/skb/eclipse_kernel/src/addrmap.c","./usr/skb/eclipse_kernel/src/intervals.c","./usr/skb/eclipse_kernel/src/handlers.c","./usr/skb/eclipse_kernel/src/lnsrv.c","./usr/skb/eclipse_kernel/src/lib4.c","./usr/skb/eclipse_kernel/src/wm_msgs.h","./usr/skb/eclipse_kernel/src/os_support.c","./usr/skb/eclipse_kernel/src/code.c","./usr/skb/eclipse_kernel/src/rounding_control.h","./usr/skb/eclipse_kernel/src/bip_io.c","./usr/skb/eclipse_kernel/src/dummy_mps.c","./usr/skb/eclipse_kernel/src/eg_c_main.c","./usr/skb/eclipse_kernel/src/opcode.h","./usr/skb/eclipse_kernel/src/operator.c","./usr/skb/eclipse_kernel/src/dlfcn_simple.c","./usr/skb/eclipse_kernel/src/tkcommon.h","./usr/skb/eclipse_kernel/src/lex.h","./usr/skb/eclipse_kernel/src/bip_strings.c","./usr/skb/eclipse_kernel/src/dummy_wm.c","./usr/skb/eclipse_kernel/src/embed.h","./usr/skb/eclipse_kernel/src/bip_domain.c","./usr/skb/eclipse_kernel/src/bip_tconv.c","./usr/skb/eclipse_kernel/src/memman.h","./usr/skb/eclipse_kernel/src/bip_parallel.c","./usr/skb/eclipse_kernel/src/lib7.c","./usr/skb/eclipse_kernel/src/times.h","./usr/skb/eclipse_kernel/src/intervals.h","./usr/skb/eclipse_kernel/src/dummy_par.c","./usr/skb/eclipse_kernel/lib/lips.pl","./usr/skb/eclipse_kernel/lib/asm.pl","./usr/skb/eclipse_kernel/lib/elipsys_fd.pl","./usr/skb/eclipse_kernel/lib/stat.pl","./usr/skb/eclipse_kernel/lib/var_name.ecl","./usr/skb/eclipse_kernel/lib/hash.eco","./usr/skb/eclipse_kernel/lib/dfid.pl","./usr/skb/eclipse_kernel/lib/lists.pl","./usr/skb/eclipse_kernel/lib/bsi.pl","./usr/skb/eclipse_kernel/lib/forall.pl","./usr/skb/eclipse_kernel/lib/http_server.pl","./usr/skb/eclipse_kernel/lib/tconv.pl","./usr/skb/eclipse_kernel/lib/suspend.pl","./usr/skb/eclipse_kernel/lib/suspend.eco","./usr/skb/eclipse_kernel/lib/util.pl","./usr/skb/eclipse_kernel/lib/pdb.pl","./usr/skb/eclipse_kernel/lib/tracer_tty.pl","./usr/skb/eclipse_kernel/lib/cio.pl","./usr/skb/eclipse_kernel/lib/development_support.pl","./usr/skb/eclipse_kernel/lib/iso.pl","./usr/skb/eclipse_kernel/lib/sorts.pl","./usr/skb/eclipse_kernel/lib/fd.pl","./usr/skb/eclipse_kernel/lib/kernel_bips.pl","./usr/skb/eclipse_kernel/lib/quintus_util.pl","./usr/skb/eclipse_kernel/lib/timeout.ecl","./usr/skb/eclipse_kernel/lib/systools.pl","./usr/skb/eclipse_kernel/lib/dynamic.pl","./usr/skb/eclipse_kernel/lib/source_storage.pl","./usr/skb/eclipse_kernel/lib/toplevel.pl","./usr/skb/eclipse_kernel/lib/http_client.pl","./usr/skb/eclipse_kernel/lib/http_method.pl","./usr/skb/eclipse_kernel/lib/quintus.pl","./usr/skb/eclipse_kernel/lib/atts.pl","./usr/skb/eclipse_kernel/lib/rationals.pl","./usr/skb/eclipse_kernel/lib/ptags.pl","./usr/skb/eclipse_kernel/lib/mixtus.pl","./usr/skb/eclipse_kernel/lib/apply.pl","./usr/skb/eclipse_kernel/lib/ecl_compiler.eco","./usr/skb/eclipse_kernel/lib/kernel.eco","./usr/skb/eclipse_kernel/lib/modes.pl","./usr/skb/eclipse_kernel/lib/profile.pl","./usr/skb/eclipse_kernel/lib/foreign.pl","./usr/skb/eclipse_kernel/lib/cprolog.pl","./usr/skb/eclipse_kernel/lib/queues.pl","./usr/skb/eclipse_kernel/lib/events.pl","./usr/skb/eclipse_kernel/lib/module_options.ecl","./usr/skb/eclipse_kernel/lib/mps.pl","./usr/skb/eclipse_kernel/lib/statistics.pl","./usr/skb/eclipse_kernel/lib/environment.pl","./usr/skb/eclipse_kernel/lib/compiler_map.eco","./usr/skb/eclipse_kernel/lib/compiler_codegen.eco","./usr/skb/eclipse_kernel/lib/version.pl","./usr/skb/eclipse_kernel/lib/make.pl","./usr/skb/eclipse_kernel/lib/numbervars.pl","./usr/skb/eclipse_kernel/lib/megalog.pl","./usr/skb/eclipse_kernel/lib/ordset.pl","./usr/skb/eclipse_kernel/lib/alldiff_strong.pl","./usr/skb/eclipse_kernel/lib/structures.pl","./usr/skb/eclipse_kernel/lib/compiler_indexing.eco","./usr/skb/eclipse_kernel/lib/remote_tools.pl","./usr/skb/eclipse_kernel/lib/cprof.pl","./usr/skb/eclipse_kernel/lib/compiler_normalise.eco","./usr/skb/eclipse_kernel/lib/t_all.pl","./usr/skb/eclipse_kernel/lib/pretty_print.pl","./usr/skb/eclipse_kernel/lib/kb.pl","./usr/skb/eclipse_kernel/lib/constraint_pools.ecl","./usr/skb/eclipse_kernel/lib/menu.tcl","./usr/skb/eclipse_kernel/lib/sockets.pl","./usr/skb/eclipse_kernel/lib/array.pl","./usr/skb/eclipse_kernel/lib/compiler_varclass.eco","./usr/skb/eclipse_kernel/lib/cp_min.pl","./usr/skb/eclipse_kernel/lib/sepia.pl","./usr/skb/eclipse_kernel/lib/notify_ports.ecl","./usr/skb/eclipse_kernel/lib/timeout.eco","./usr/skb/eclipse_kernel/lib/tracer.pl","./usr/skb/eclipse_kernel/lib/tracer_tcl.pl","./usr/skb/eclipse_kernel/lib/fd_elipsys.pl","./usr/skb/eclipse_kernel/lib/flexlm.ecl","./usr/skb/eclipse_kernel/lib/io.pl","./usr/skb/eclipse_kernel/lib/compiler_peephole.eco","./usr/skb/eclipse_kernel/lib/fd_arith.pl","./usr/skb/eclipse_kernel/lib/fcompile.ecl","./usr/skb/eclipse_kernel/lib/elipsys.pl","./usr/skb/eclipse_kernel/lib/hash.ecl","./usr/skb/eclipse_kernel/lib/matrix_util.pl","./usr/skb/eclipse_kernel/lib/db.pl","./usr/skb/eclipse_kernel/lib/notinstance.pl","./usr/skb/eclipse_kernel/lib/compiler_regassign.eco","./usr/skb/eclipse_kernel/lib/oldio.pl","./usr/skb/eclipse_kernel/lib/peval.pl","./usr/skb/eclipse_kernel/lib/apply_macros.pl","./usr/skb/eclipse_kernel/lib/compiler_analysis.eco","./usr/skb/eclipse_kernel/lib/fd_chip.pl","./usr/skb/eclipse_kernel/lib/document.ecl","./usr/skb/eclipse_kernel/lib/heaps.pl","./usr/skb/eclipse_kernel/lib/swi.ecl","./usr/skb/eclipse_kernel/lib/branch_and_bound.eco","./usr/skb/eclipse_kernel/lib/setof.pl","./usr/skb/eclipse_kernel/lib/cgi.pl","./usr/skb/eclipse_kernel/lib/strings.pl","./usr/skb/eclipse_kernel/lib/fromonto.pl","./usr/skb/eclipse_kernel/lib/goedel.pl","./usr/skb/eclipse_kernel/lib/sicstus.pl","./usr/skb/eclipse_kernel/lib/queens.pl","./usr/skb/eclipse_kernel/lib/anti_unify.pl","./usr/skb/eclipse_kernel/lib/paddy.pl","./usr/skb/eclipse_kernel/lib/multifile.ecl","./usr/skb/eclipse_kernel/lib/test_util.pl","./usr/skb/eclipse_kernel/lib/par_util.pl","./usr/skb/eclipse_kernel/lib/debug.pl","./usr/skb/eclipse_kernel/lib/history.pl","./usr/skb/eclipse_kernel/lib/varlists.pl","./usr/skb/eclipse_kernel/lib/asm.eco","./usr/skb/eclipse_kernel/lib/licensing.ecl","./usr/skb/eclipse_kernel/lib/eclipse_language.ecl","./usr/skb/eclipse_kernel/lib/fd_domain.pl","./usr/skb/eclipse_kernel/lib/idb.pl","./usr/skb/eclipse_kernel/lib/fd_util.pl","./usr/skb/eclipse_kernel/lib/meta.pl","./usr/skb/eclipse_kernel/lib/kernel.pl","./usr/skb/eclipse_kernel/lib/time_log.ecl","./usr/skb/eclipse_kernel/lib/http.pl","./usr/skb/eclipse_kernel/lib/source_processor.eco","./usr/skb/eclipse_kernel/lib/branch_and_bound.pl","./usr/skb/eclipse_kernel/lib/compiler_common.eco","./usr/skb/eclipse_kernel/lib/port_profiler.ecl","./usr/skb/eclipse_kernel/lib/module_options.eco","./usr/skb/eclipse_kernel/lib/define.pl","./usr/skb/eclipse_kernel/lib/calendar.pl","./usr/skb/eclipse_kernel/lib/make_ptags.pl","./usr/skb/eclipse_kernel/lib/http_grammar.pl","./usr/skb/eclipse_kernel/lib/eclipse_language.eco","./usr/skb/eclipse_kernel/lib/spell.pl","./usr/skb/skripts/funktionen_idx","./usr/skb/skripts/mkcpio","./usr/skb/octopus/skb_query.c","./usr/skb/octopus/bitfield.c","./usr/skb/octopus/code_generator.h","./usr/skb/octopus/code_generator.c","./usr/skb/octopus/fnv.h","./usr/skb/octopus/predicates.c","./usr/skb/octopus/skiplist.c","./usr/skb/octopus/bitfield.h","./usr/skb/octopus/predicates.h","./usr/skb/octopus/fnv.c","./usr/skb/octopus/skiplist.h","./usr/skb/skb_simple/main.c","./usr/skb/skb_simple/Hakefile","./usr/skb/skb_simple/octopus_stubs.c","./usr/skb/measurement/rtt_data.c","./usr/skb/measurement/datagatherer.c","./usr/skb/measurement/running_cores.c","./usr/skb/measurement/Hakefile","./usr/skb/measurement/datagatherer.h","./usr/skb/measurement/cpuid.c","./usr/monitor/rcap_db_common.c","./usr/monitor/monitor_server.c","./usr/monitor/connection.h","./usr/monitor/spawn.c","./usr/monitor/ram_alloc.c","./usr/monitor/intermon_bindings.c","./usr/monitor/main.c","./usr/monitor/ump_support.c","./usr/monitor/queue.h","./usr/monitor/rcap_db_twopc.c","./usr/monitor/queue.c","./usr/monitor/timing.c","./usr/monitor/rcap_db_common.h","./usr/monitor/Hakefile","./usr/monitor/rcap_db_null.c","./usr/monitor/inter.c","./usr/monitor/boot.c","./usr/monitor/resource_ctrl.c","./usr/monitor/monitor.h","./usr/monitor/bfscope_support.c","./usr/monitor/rcap_db_central.c","./usr/monitor/multihop_support.c","./usr/monitor/domain.c","./usr/monitor/monitor_rpc_server.c","./usr/monitor/trace_support.c","./usr/monitor/iref.c","./usr/monitor/invocations.c","./usr/monitor/arch/arm/monitor_server.c","./usr/monitor/arch/arm/inter.c","./usr/monitor/arch/arm/boot.c","./usr/monitor/arch/x86/monitor_server.c","./usr/monitor/arch/x86/inter.c","./usr/monitor/arch/x86/boot.c","./usr/monitor/arch/x86/notify_ipi.c","./usr/monitor/arch/scc/inter.c","./usr/monitor/arch/scc/boot.c","./usr/monitor/arch/armv7/monitor_server.c","./usr/monitor/arch/armv7/inter.c","./usr/monitor/arch/armv7/boot.c","./usr/monitor/arch/armv7/notify_ipi.c","./usr/monitor/include/arch/arm/monitor_invocations.h","./usr/monitor/include/arch/arm/notify_ipi.h","./usr/monitor/include/arch/x86/notify_ipi.h","./usr/monitor/include/arch/x86_32/monitor_invocations.h","./usr/monitor/include/arch/x86_64/monitor_invocations.h","./usr/netd/main.c","./usr/netd/lwipinit.c","./usr/netd/Hakefile","./usr/netd/netd.h","./usr/netd/netd_debug.h","./usr/netd/ARP_lookup_service.c","./usr/fbdemo/demo.c","./usr/fbdemo/main.c","./usr/fbdemo/Hakefile","./usr/fbdemo/lord_of_the_sith_bi0.h","./usr/fbdemo/bf_logo.h","./usr/fbdemo/demo.h","./usr/webserver/main.c","./usr/webserver/Hakefile","./usr/webserver/http_server.c","./usr/webserver/webserver_debug.h","./usr/webserver/http_cache.c","./usr/webserver/webserver_network.h","./usr/webserver/http_cache.h","./usr/webserver/webserver_session.h","./usr/chips/dictionary.h","./usr/chips/filter.h","./usr/chips/queue.h","./usr/chips/filter.c","./usr/chips/queue.c","./usr/chips/Hakefile","./usr/chips/framework.c","./usr/chips/framework.h","./usr/chips/hashtable.h","./usr/chips/hashtable.c","./usr/chips/multimap.h","./usr/bcached/service.c","./usr/bcached/main.c","./usr/bcached/bcached.h","./usr/bcached/Hakefile","./usr/bench/ipi_bench.c","./usr/bench/stsc_bench.c","./usr/bench/Hakefile","./usr/bench/lrpc_bench.c","./usr/bench/bench.c","./usr/bench/crt0.S","./usr/bench/tsc_bench.c","./usr/bench/vfs/Hakefile","./usr/bench/vfs/vfs_bench.c","./usr/bench/flounder_stubs/payload64.c","./usr/bench/flounder_stubs/empty.c","./usr/bench/flounder_stubs/buffer.c","./usr/bench/flounder_stubs/Hakefile","./usr/bench/flounder_stubs/payload_glue.c","./usr/bench/flounder_stubs/payload.c","./usr/bench/flounder_stubs/payload32.c","./usr/bench/mdb_bench/reset.c","./usr/bench/mdb_bench/old_mdb.c","./usr/bench/mdb_bench/measure.c","./usr/bench/mdb_bench/main.c","./usr/bench/mdb_bench/mdb_bench.h","./usr/bench/mdb_bench/Hakefile","./usr/bench/mdb_bench/old_mdb.h","./usr/bench/shared_mem_clock/Hakefile","./usr/bench/shared_mem_clock/bench.c","./usr/bench/shared_mem_clock/clock.h","./usr/bench/shared_mem_clock/clock.c","./usr/bench/freemem_bench/Hakefile","./usr/bench/freemem_bench/freemem.c","./usr/bench/xcorecap/xcorecapbench.c","./usr/bench/xcorecap/Hakefile","./usr/bench/ump_bench/throughput.c","./usr/bench/ump_bench/latency_cache.c","./usr/bench/ump_bench/main.c","./usr/bench/ump_bench/send.c","./usr/bench/ump_bench/Hakefile","./usr/bench/ump_bench/latency.c","./usr/bench/ump_bench/ump_bench.h","./usr/bench/ump_bench/exchange.c","./usr/bench/ump_bench/receive.c","./usr/bench/bomp_progress/sync.c","./usr/bench/bomp_progress/cpu_bound.c","./usr/bench/bomp_progress/Hakefile","./usr/bench/scheduling/placement.c","./usr/bench/scheduling/Hakefile","./usr/bench/scheduling/phases.c","./usr/bench/scheduling/phases_scale.c","./usr/bench/scheduling/clockdrift.c","./usr/bench/ahci/main.c","./usr/bench/ahci/Hakefile","./usr/bench/thc_v_flounder/empty.c","./usr/bench/thc_v_flounder/Hakefile","./usr/bench/mem_bench/membench.c","./usr/bench/mem_bench/Hakefile","./usr/bench/channel_cost/channel_cost.c","./usr/bench/channel_cost/Hakefile","./usr/bench/bulk_bench/bulkbench.c","./usr/bench/bulk_bench/Hakefile","./usr/routing_setup/rts.c","./usr/routing_setup/Hakefile","./usr/lshw/lshw.c","./usr/lshw/Hakefile","./usr/pixels/Hakefile","./usr/pixels/pixels.c","./usr/openssh/README_BARRELFISH","./usr/openssh/Hakefile","./usr/openssh/mkcpio","./usr/openssh/config.h","./usr/openssh/src/nchan.ms","./usr/openssh/src/OVERVIEW","./usr/openssh/src/deattack.c","./usr/openssh/src/moduli","./usr/openssh/src/packet.h","./usr/openssh/src/sftp.c","./usr/openssh/src/uuencode.h","./usr/openssh/src/sshd_config.5","./usr/openssh/src/dispatch.h","./usr/openssh/src/ssh-keysign.c","./usr/openssh/src/kexecdhc.c","./usr/openssh/src/misc.c","./usr/openssh/src/loginrec.c","./usr/openssh/src/ssh1.h","./usr/openssh/src/PROTOCOL.certkeys","./usr/openssh/src/md-sha256.c","./usr/openssh/src/auth2-jpake.c","./usr/openssh/src/sftp-client.h","./usr/openssh/src/rijndael.h","./usr/openssh/src/config.guess","./usr/openssh/src/auth2-passwd.c","./usr/openssh/src/ssh.h","./usr/openssh/src/roaming.h","./usr/openssh/src/ssh2.h","./usr/openssh/src/sandbox-rlimit.c","./usr/openssh/src/audit-linux.c","./usr/openssh/src/canohost.c","./usr/openssh/src/monitor_mm.h","./usr/openssh/src/canohost.h","./usr/openssh/src/kexdh.c","./usr/openssh/src/auth2-none.c","./usr/openssh/src/auth2-gss.c","./usr/openssh/src/auth-sia.c","./usr/openssh/src/channels.h","./usr/openssh/src/key.h","./usr/openssh/src/scp.0","./usr/openssh/src/sandbox-systrace.c","./usr/openssh/src/md5crypt.h","./usr/openssh/src/pkcs11.h","./usr/openssh/src/kexecdhs.c","./usr/openssh/src/auth-pam.c","./usr/openssh/src/INSTALL","./usr/openssh/src/serverloop.h","./usr/openssh/src/auth-bsdauth.c","./usr/openssh/src/README.platform","./usr/openssh/src/TODO","./usr/openssh/src/md5crypt.c","./usr/openssh/src/auth-options.c","./usr/openssh/src/progressmeter.c","./usr/openssh/src/config.sub","./usr/openssh/src/rsa.c","./usr/openssh/src/ssh-keygen.c","./usr/openssh/src/sshconnect.c","./usr/openssh/src/audit.c","./usr/openssh/src/platform.h","./usr/openssh/src/nchan.c","./usr/openssh/src/ssh-sandbox.h","./usr/openssh/src/Makefile.in","./usr/openssh/src/authfd.h","./usr/openssh/src/sshtty.c","./usr/openssh/src/sshconnect2.c","./usr/openssh/src/roaming_client.c","./usr/openssh/src/auth-rh-rsa.c","./usr/openssh/src/ssh-agent.c","./usr/openssh/src/ssh-pkcs11-client.c","./usr/openssh/src/auth-rsa.c","./usr/openssh/src/ssh-keyscan.1","./usr/openssh/src/kexgex.c","./usr/openssh/src/uidswap.h","./usr/openssh/src/auth2-chall.c","./usr/openssh/src/hostfile.h","./usr/openssh/src/addrmatch.c","./usr/openssh/src/ssh-rsa.c","./usr/openssh/src/ssh-pkcs11-helper.c","./usr/openssh/src/buffer.h","./usr/openssh/src/ssh-keysign.0","./usr/openssh/src/roaming_serv.c","./usr/openssh/src/kexgexc.c","./usr/openssh/src/sandbox-seccomp-filter.c","./usr/openssh/src/rijndael.c","./usr/openssh/src/scp.c","./usr/openssh/src/kexgexs.c","./usr/openssh/src/sftp.h","./usr/openssh/src/sshd_config.0","./usr/openssh/src/kex.c","./usr/openssh/src/sftp-common.h","./usr/openssh/src/sshlogin.c","./usr/openssh/src/survey.sh.in","./usr/openssh/src/auth2-pubkey.c","./usr/openssh/src/version.h","./usr/openssh/src/sshd.0","./usr/openssh/src/log.h","./usr/openssh/src/sandbox-null.c","./usr/openssh/src/xmalloc.h","./usr/openssh/src/buffer.c","./usr/openssh/src/ssh-gss.h","./usr/openssh/src/match.c","./usr/openssh/src/auth-passwd.c","./usr/openssh/src/fixprogs","./usr/openssh/src/sandbox-darwin.c","./usr/openssh/src/sftp.0","./usr/openssh/src/auth-chall.c","./usr/openssh/src/key.c","./usr/openssh/src/PROTOCOL.mux","./usr/openssh/src/sshd.8","./usr/openssh/src/CREDITS","./usr/openssh/src/compress.c","./usr/openssh/src/authfd.c","./usr/openssh/src/ssh-keygen.1","./usr/openssh/src/groupaccess.c","./usr/openssh/src/misc.h","./usr/openssh/src/install-sh","./usr/openssh/src/ssh-add.0","./usr/openssh/src/crc32.c","./usr/openssh/src/acss.h","./usr/openssh/src/includes.h","./usr/openssh/src/bufec.c","./usr/openssh/src/schnorr.h","./usr/openssh/src/auth2-hostbased.c","./usr/openssh/src/monitor_mm.c","./usr/openssh/src/cipher-bf1.c","./usr/openssh/src/dns.h","./usr/openssh/src/clientloop.h","./usr/openssh/src/monitor_wrap.c","./usr/openssh/src/platform.c","./usr/openssh/src/compat.h","./usr/openssh/src/ssh_config.0","./usr/openssh/src/session.c","./usr/openssh/src/sshconnect.h","./usr/openssh/src/auth-skey.c","./usr/openssh/src/ssh-ecdsa.c","./usr/openssh/src/nchan2.ms","./usr/openssh/src/auth-shadow.c","./usr/openssh/src/roaming_dummy.c","./usr/openssh/src/Hakefile","./usr/openssh/src/ssh-agent.0","./usr/openssh/src/LICENCE","./usr/openssh/src/PROTOCOL.agent","./usr/openssh/src/auth2-kbdint.c","./usr/openssh/src/scp.1","./usr/openssh/src/README.tun","./usr/openssh/src/openssh.xml.in","./usr/openssh/src/roaming_common.c","./usr/openssh/src/gss-genr.c","./usr/openssh/src/cipher.h","./usr/openssh/src/ssh-keygen.0","./usr/openssh/src/ssh-pkcs11-helper.0","./usr/openssh/src/ssh-add.c","./usr/openssh/src/myproposal.h","./usr/openssh/src/servconf.c","./usr/openssh/src/sftp.1","./usr/openssh/src/cleanup.c","./usr/openssh/src/ssh-pkcs11-helper.8","./usr/openssh/src/entropy.h","./usr/openssh/src/sshd.c","./usr/openssh/src/ttymodes.h","./usr/openssh/src/ssh_config.5","./usr/openssh/src/cipher.c","./usr/openssh/src/dns.c","./usr/openssh/src/ssh-keyscan.c","./usr/openssh/src/umac.h","./usr/openssh/src/ttymodes.c","./usr/openssh/src/cipher-ctr.c","./usr/openssh/src/README.dns","./usr/openssh/src/opensshd.init.in","./usr/openssh/src/ssh.c","./usr/openssh/src/sftp-server.c","./usr/openssh/src/kexdhs.c","./usr/openssh/src/uidswap.c","./usr/openssh/src/sshd_config","./usr/openssh/src/monitor.c","./usr/openssh/src/sshpty.h","./usr/openssh/src/configure","./usr/openssh/src/ssh.0","./usr/openssh/src/sshlogin.h","./usr/openssh/src/log.c","./usr/openssh/src/dispatch.c","./usr/openssh/src/umac.c","./usr/openssh/src/configure.ac","./usr/openssh/src/sftp-client.c","./usr/openssh/src/xmalloc.c","./usr/openssh/src/sshpty.c","./usr/openssh/src/audit.h","./usr/openssh/src/mac.h","./usr/openssh/src/rsa.h","./usr/openssh/src/ssh.1","./usr/openssh/src/match.h","./usr/openssh/src/pathnames.h","./usr/openssh/src/ssh-pkcs11.h","./usr/openssh/src/ssh-add.1","./usr/openssh/src/gss-serv-krb5.c","./usr/openssh/src/deattack.h","./usr/openssh/src/msg.h","./usr/openssh/src/groupaccess.h","./usr/openssh/src/cipher-3des1.c","./usr/openssh/src/ssh_config","./usr/openssh/src/ChangeLog","./usr/openssh/src/ssh-agent.1","./usr/openssh/src/cipher-aes.c","./usr/openssh/src/dh.c","./usr/openssh/src/monitor_fdpass.c","./usr/openssh/src/msg.c","./usr/openssh/src/kex.h","./usr/openssh/src/acss.c","./usr/openssh/src/serverloop.c","./usr/openssh/src/auth.h","./usr/openssh/src/authfile.c","./usr/openssh/src/auth.c","./usr/openssh/src/sftp-server.0","./usr/openssh/src/ssh-pkcs11.c","./usr/openssh/src/atomicio.c","./usr/openssh/src/jpake.h","./usr/openssh/src/moduli.0","./usr/openssh/src/auth-krb5.c","./usr/openssh/src/README","./usr/openssh/src/monitor_fdpass.h","./usr/openssh/src/kexecdh.c","./usr/openssh/src/monitor_wrap.h","./usr/openssh/src/monitor.h","./usr/openssh/src/progressmeter.h","./usr/openssh/src/compress.h","./usr/openssh/src/audit-bsm.c","./usr/openssh/src/dh.h","./usr/openssh/src/bufbn.c","./usr/openssh/src/channels.c","./usr/openssh/src/mkinstalldirs","./usr/openssh/src/gss-serv.c","./usr/openssh/src/bufaux.c","./usr/openssh/src/packet.c","./usr/openssh/src/sshconnect1.c","./usr/openssh/src/auth1.c","./usr/openssh/src/sftp-common.c","./usr/openssh/src/mdoc2man.awk","./usr/openssh/src/session.h","./usr/openssh/src/auth-rhosts.c","./usr/openssh/src/fixpaths","./usr/openssh/src/auth-sia.h","./usr/openssh/src/sftp-server-main.c","./usr/openssh/src/moduli.c","./usr/openssh/src/entropy.c","./usr/openssh/src/readpass.c","./usr/openssh/src/loginrec.h","./usr/openssh/src/README.privsep","./usr/openssh/src/mux.c","./usr/openssh/src/defines.h","./usr/openssh/src/jpake.c","./usr/openssh/src/kexdhc.c","./usr/openssh/src/schnorr.c","./usr/openssh/src/auth-pam.h","./usr/openssh/src/logintest.c","./usr/openssh/src/atomicio.h","./usr/openssh/src/uuencode.c","./usr/openssh/src/ssh-keyscan.0","./usr/openssh/src/PROTOCOL","./usr/openssh/src/sftp-server.8","./usr/openssh/src/authfile.h","./usr/openssh/src/config.h.in","./usr/openssh/src/readconf.h","./usr/openssh/src/compat.c","./usr/openssh/src/mac.c","./usr/openssh/src/crc32.h","./usr/openssh/src/auth-options.h","./usr/openssh/src/aclocal.m4","./usr/openssh/src/cipher-acss.c","./usr/openssh/src/auth2.c","./usr/openssh/src/fatal.c","./usr/openssh/src/clientloop.c","./usr/openssh/src/readconf.c","./usr/openssh/src/moduli.5","./usr/openssh/src/ssh-keysign.8","./usr/openssh/src/hostfile.c","./usr/openssh/src/sftp-glob.c","./usr/openssh/src/servconf.h","./usr/openssh/src/ssh-dss.c","./usr/openssh/src/regress/agent.sh","./usr/openssh/src/regress/addrmatch.sh","./usr/openssh/src/regress/keytype.sh","./usr/openssh/src/regress/connect-privsep.sh","./usr/openssh/src/regress/sftp-batch.sh","./usr/openssh/src/regress/rsa_openssh.prv","./usr/openssh/src/regress/cipher-speed.sh","./usr/openssh/src/regress/yes-head.sh","./usr/openssh/src/regress/host-expand.sh","./usr/openssh/src/regress/keygen-convert.sh","./usr/openssh/src/regress/key-options.sh","./usr/openssh/src/regress/keyscan.sh","./usr/openssh/src/regress/proto-mismatch.sh","./usr/openssh/src/regress/scp.sh","./usr/openssh/src/regress/cfgmatch.sh","./usr/openssh/src/regress/rekey.sh","./usr/openssh/src/regress/try-ciphers.sh","./usr/openssh/src/regress/brokenkeys.sh","./usr/openssh/src/regress/runtests.sh","./usr/openssh/src/regress/keygen-change.sh","./usr/openssh/src/regress/putty-kex.sh","./usr/openssh/src/regress/cert-userkey.sh","./usr/openssh/src/regress/stderr-after-eof.sh","./usr/openssh/src/regress/proto-version.sh","./usr/openssh/src/regress/agent-getpeereid.sh","./usr/openssh/src/regress/ssh-com-client.sh","./usr/openssh/src/regress/broken-pipe.sh","./usr/openssh/src/regress/ssh-com.sh","./usr/openssh/src/regress/localcommand.sh","./usr/openssh/src/regress/agent-pkcs11.sh","./usr/openssh/src/regress/exit-status.sh","./usr/openssh/src/regress/agent-timeout.sh","./usr/openssh/src/regress/forcecommand.sh","./usr/openssh/src/regress/reexec.sh","./usr/openssh/src/regress/kextype.sh","./usr/openssh/src/regress/t4.ok","./usr/openssh/src/regress/login-timeout.sh","./usr/openssh/src/regress/transfer.sh","./usr/openssh/src/regress/Makefile","./usr/openssh/src/regress/dynamic-forward.sh","./usr/openssh/src/regress/bsd.regress.mk","./usr/openssh/src/regress/proxy-connect.sh","./usr/openssh/src/regress/envpass.sh","./usr/openssh/src/regress/dsa_ssh2.prv","./usr/openssh/src/regress/scp-ssh-wrapper.sh","./usr/openssh/src/regress/t5.ok","./usr/openssh/src/regress/rsa_ssh2.prv","./usr/openssh/src/regress/README.regress","./usr/openssh/src/regress/putty-transfer.sh","./usr/openssh/src/regress/sshd-log-wrapper.sh","./usr/openssh/src/regress/sftp-glob.sh","./usr/openssh/src/regress/putty-ciphers.sh","./usr/openssh/src/regress/sftp-badcmds.sh","./usr/openssh/src/regress/stderr-data.sh","./usr/openssh/src/regress/connect.sh","./usr/openssh/src/regress/sftp-cmds.sh","./usr/openssh/src/regress/sftp.sh","./usr/openssh/src/regress/reconfigure.sh","./usr/openssh/src/regress/banner.sh","./usr/openssh/src/regress/cert-hostkey.sh","./usr/openssh/src/regress/conch-ciphers.sh","./usr/openssh/src/regress/rsa_openssh.pub","./usr/openssh/src/regress/ssh-com-sftp.sh","./usr/openssh/src/regress/portnum.sh","./usr/openssh/src/regress/forwarding.sh","./usr/openssh/src/regress/dsa_ssh2.pub","./usr/openssh/src/regress/ssh2putty.sh","./usr/openssh/src/regress/multiplex.sh","./usr/openssh/src/regress/ssh-com-keygen.sh","./usr/openssh/src/regress/agent-ptrace.sh","./usr/openssh/src/regress/test-exec.sh","./usr/openssh/src/contrib/ssh-copy-id","./usr/openssh/src/contrib/sshd.pam.generic","./usr/openssh/src/contrib/gnome-ssh-askpass2.c","./usr/openssh/src/contrib/Makefile","./usr/openssh/src/contrib/README","./usr/openssh/src/contrib/gnome-ssh-askpass1.c","./usr/openssh/src/contrib/ssh-copy-id.1","./usr/openssh/src/contrib/sshd.pam.freebsd","./usr/openssh/src/contrib/findssl.sh","./usr/openssh/src/contrib/cygwin/ssh-host-config","./usr/openssh/src/contrib/cygwin/ssh-user-config","./usr/openssh/src/contrib/cygwin/Makefile","./usr/openssh/src/contrib/cygwin/README","./usr/openssh/src/contrib/cygwin/sshd-inetd","./usr/openssh/src/contrib/suse/openssh.spec","./usr/openssh/src/contrib/suse/sysconfig.ssh","./usr/openssh/src/contrib/suse/rc.sshd","./usr/openssh/src/contrib/suse/rc.config.sshd","./usr/openssh/src/contrib/solaris/README","./usr/openssh/src/contrib/redhat/sshd.pam","./usr/openssh/src/contrib/redhat/gnome-ssh-askpass.csh","./usr/openssh/src/contrib/redhat/gnome-ssh-askpass.sh","./usr/openssh/src/contrib/redhat/sshd.init","./usr/openssh/src/contrib/redhat/sshd.init.old","./usr/openssh/src/contrib/redhat/openssh.spec","./usr/openssh/src/contrib/redhat/sshd.pam.old","./usr/openssh/src/contrib/caldera/sshd.pam","./usr/openssh/src/contrib/caldera/sshd.init","./usr/openssh/src/contrib/caldera/openssh.spec","./usr/openssh/src/contrib/caldera/ssh-host-keygen","./usr/openssh/src/contrib/hpux/egd","./usr/openssh/src/contrib/hpux/egd.rc","./usr/openssh/src/contrib/hpux/sshd.rc","./usr/openssh/src/contrib/hpux/sshd","./usr/openssh/src/contrib/hpux/README","./usr/openssh/src/contrib/aix/inventory.sh","./usr/openssh/src/contrib/aix/README","./usr/openssh/src/contrib/aix/pam.conf","./usr/openssh/src/openbsd-compat/getopt.c","./usr/openssh/src/openbsd-compat/xmmap.c","./usr/openssh/src/openbsd-compat/readpassphrase.h","./usr/openssh/src/openbsd-compat/bsd-asprintf.c","./usr/openssh/src/openbsd-compat/sha2.c","./usr/openssh/src/openbsd-compat/pwcache.c","./usr/openssh/src/openbsd-compat/strtoll.c","./usr/openssh/src/openbsd-compat/bsd-openpty.c","./usr/openssh/src/openbsd-compat/getrrsetbyname.h","./usr/openssh/src/openbsd-compat/bsd-poll.h","./usr/openssh/src/openbsd-compat/port-irix.h","./usr/openssh/src/openbsd-compat/bsd-poll.c","./usr/openssh/src/openbsd-compat/getgrouplist.c","./usr/openssh/src/openbsd-compat/rresvport.c","./usr/openssh/src/openbsd-compat/inet_ntoa.c","./usr/openssh/src/openbsd-compat/strnlen.c","./usr/openssh/src/openbsd-compat/bsd-closefrom.c","./usr/openssh/src/openbsd-compat/port-aix.h","./usr/openssh/src/openbsd-compat/sys-queue.h","./usr/openssh/src/openbsd-compat/sigact.c","./usr/openssh/src/openbsd-compat/bsd-misc.c","./usr/openssh/src/openbsd-compat/Makefile.in","./usr/openssh/src/openbsd-compat/strlcat.c","./usr/openssh/src/openbsd-compat/strtoul.c","./usr/openssh/src/openbsd-compat/getcwd.c","./usr/openssh/src/openbsd-compat/sha2.h","./usr/openssh/src/openbsd-compat/bsd-waitpid.h","./usr/openssh/src/openbsd-compat/bsd-misc.h","./usr/openssh/src/openbsd-compat/dirname.c","./usr/openssh/src/openbsd-compat/fmt_scaled.c","./usr/openssh/src/openbsd-compat/readpassphrase.c","./usr/openssh/src/openbsd-compat/port-tun.h","./usr/openssh/src/openbsd-compat/timingsafe_bcmp.c","./usr/openssh/src/openbsd-compat/xcrypt.c","./usr/openssh/src/openbsd-compat/strsep.c","./usr/openssh/src/openbsd-compat/bsd-statvfs.c","./usr/openssh/src/openbsd-compat/setenv.c","./usr/openssh/src/openbsd-compat/inet_ntop.c","./usr/openssh/src/openbsd-compat/glob.c","./usr/openssh/src/openbsd-compat/getrrsetbyname.c","./usr/openssh/src/openbsd-compat/port-tun.c","./usr/openssh/src/openbsd-compat/port-uw.c","./usr/openssh/src/openbsd-compat/mktemp.c","./usr/openssh/src/openbsd-compat/bsd-arc4random.c","./usr/openssh/src/openbsd-compat/bsd-cray.h","./usr/openssh/src/openbsd-compat/Hakefile","./usr/openssh/src/openbsd-compat/port-solaris.c","./usr/openssh/src/openbsd-compat/bsd-cray.c","./usr/openssh/src/openbsd-compat/bsd-cygwin_util.h","./usr/openssh/src/openbsd-compat/bsd-getpeereid.c","./usr/openssh/src/openbsd-compat/basename.c","./usr/openssh/src/openbsd-compat/bsd-nextstep.c","./usr/openssh/src/openbsd-compat/realpath.c","./usr/openssh/src/openbsd-compat/base64.h","./usr/openssh/src/openbsd-compat/inet_aton.c","./usr/openssh/src/openbsd-compat/sys-tree.h","./usr/openssh/src/openbsd-compat/glob.h","./usr/openssh/src/openbsd-compat/fake-rfc2553.c","./usr/openssh/src/openbsd-compat/port-solaris.h","./usr/openssh/src/openbsd-compat/bsd-nextstep.h","./usr/openssh/src/openbsd-compat/base64.c","./usr/openssh/src/openbsd-compat/port-linux.h","./usr/openssh/src/openbsd-compat/getrrsetbyname-ldns.c","./usr/openssh/src/openbsd-compat/port-aix.c","./usr/openssh/src/openbsd-compat/vis.c","./usr/openssh/src/openbsd-compat/strmode.c","./usr/openssh/src/openbsd-compat/port-linux.c","./usr/openssh/src/openbsd-compat/vis.h","./usr/openssh/src/openbsd-compat/openssl-compat.h","./usr/openssh/src/openbsd-compat/sigact.h","./usr/openssh/src/openbsd-compat/bindresvport.c","./usr/openssh/src/openbsd-compat/bsd-snprintf.c","./usr/openssh/src/openbsd-compat/openbsd-compat.h","./usr/openssh/src/openbsd-compat/port-irix.c","./usr/openssh/src/openbsd-compat/openssl-compat.c","./usr/openssh/src/openbsd-compat/strptime.c","./usr/openssh/src/openbsd-compat/charclass.h","./usr/openssh/src/openbsd-compat/bsd-waitpid.c","./usr/openssh/src/openbsd-compat/fake-rfc2553.h","./usr/openssh/src/openbsd-compat/bsd-statvfs.h","./usr/openssh/src/openbsd-compat/strlcpy.c","./usr/openssh/src/openbsd-compat/port-uw.h","./usr/openssh/src/openbsd-compat/strtonum.c","./usr/openssh/src/openbsd-compat/daemon.c","./usr/openssh/src/openbsd-compat/setproctitle.c","./usr/openssh/src/openbsd-compat/bsd-cygwin_util.c","./usr/openssh/src/openbsd-compat/regress/strtonumtest.c","./usr/openssh/src/openbsd-compat/regress/Makefile.in","./usr/openssh/src/openbsd-compat/regress/snprintftest.c","./usr/openssh/src/openbsd-compat/regress/strduptest.c","./usr/openssh/src/openbsd-compat/regress/closefromtest.c","./usr/openssh/ramdisk/ssh_host_rsa_key","./usr/openssh/ramdisk/id_rsa.pub","./usr/openssh/ramdisk/authorized_keys","./usr/openssh/ramdisk/id_rsa","./usr/openssh/ramdisk/ssh_host_dsa_key","./usr/openssh/ramdisk/ssh_host_ecdsa_key","./usr/openssh/ramdisk/ssh_host_rsa_key.pub","./usr/openssh/ramdisk/sshd_config","./usr/openssh/ramdisk/ssh_host_ecdsa_key.pub","./usr/openssh/ramdisk/ssh_host_dsa_key.pub","./lib/usb/usb_error.c","./lib/usb/usb_request.c","./lib/usb/usb_parse.c","./lib/usb/usb_transfer.c","./lib/usb/Hakefile","./lib/usb/usb_manager_client.h","./lib/usb/usb_manager_client.c","./lib/usb/usb_device.c","./lib/usb/class/usb_image.c","./lib/usb/class/usb_hid.c","./lib/usb/class/usb_ethernet.c","./lib/usb/class/usb_pid.c","./lib/usb/class/usb_printer.c","./lib/usb/class/usb_msc.c","./lib/usb/class/usb_hub.c","./lib/vfs/cache.c","./lib/vfs/vfs.c","./lib/vfs/vfs_blockdevfs_ata.c","./lib/vfs/vfs_fat_conv.h","./lib/vfs/vfs_blockdevfs_ahci.c","./lib/vfs/vfs_fd.c","./lib/vfs/vfs_fat_conv.c","./lib/vfs/vfs_fat.c","./lib/vfs/vfs_ramfs.c","./lib/vfs/vfs_cache.h","./lib/vfs/vfs_nfs.h","./lib/vfs/mmap.c","./lib/vfs/vfs_blockdevfs.c","./lib/vfs/Hakefile","./lib/vfs/fopen.c","./lib/vfs/vfs_blockdevfs.h","./lib/vfs/vfs_cache.c","./lib/vfs/fdtab.c","./lib/vfs/vfs_path.c","./lib/vfs/vfs_nfs.c","./lib/vfs/vfs_ops.h","./lib/vfs/vfs_backends.h","./lib/dmalloc/dmalloc.c","./lib/dmalloc/Hakefile","./lib/cxx/CREDITS.TXT","./lib/cxx/LICENSE.TXT","./lib/cxx/Hakefile","./lib/cxx/src/locale.cpp","./lib/cxx/src/typeinfo.cpp","./lib/cxx/src/string.cpp","./lib/cxx/src/condition_variable.cpp","./lib/cxx/src/algorithm.cpp","./lib/cxx/src/thread.cpp","./lib/cxx/src/stdexcept.cpp","./lib/cxx/src/system_error.cpp","./lib/cxx/src/iostream.cpp","./lib/cxx/src/regex.cpp","./lib/cxx/src/bind.cpp","./lib/cxx/src/new.cpp","./lib/cxx/src/strstream.cpp","./lib/cxx/src/chrono.cpp","./lib/cxx/src/exception.cpp","./lib/cxx/src/hash.cpp","./lib/cxx/src/random.cpp","./lib/cxx/src/utility.cpp","./lib/cxx/src/mutex.cpp","./lib/cxx/src/future.cpp","./lib/cxx/src/memory.cpp","./lib/cxx/src/ios.cpp","./lib/cxx/src/valarray.cpp","./lib/pci/mem.c","./lib/pci/Hakefile","./lib/pci/pci_client.c","./lib/pci/confspace/pci_confspace.c","./lib/pci/confspace/pcie_confspace.c","./lib/getopt/getopt.c","./lib/getopt/Hakefile","./lib/dist/barrier.c","./lib/dist/skb.c","./lib/dist/README.txt","./lib/dist/service.c","./lib/dist/start.c","./lib/dist/Hakefile","./lib/dist/skb.h","./lib/dist/args.c","./lib/bomp/bf_backend.c","./lib/bomp/parallel.c","./lib/bomp/processing.c","./lib/bomp/linux_backend.c","./lib/bomp/Hakefile","./lib/bomp/libbomp.h","./lib/bomp/Makefile","./lib/bomp/backend.h","./lib/bomp/omp.c","./lib/bomp/omp.h","./lib/bomp/spin.h","./lib/bomp/README","./lib/bfdmuxvm/Hakefile","./lib/bfdmuxvm/vm.c","./lib/pcre/pcre_ucd.c","./lib/pcre/ucp.h","./lib/pcre/pcre_dfa_exec.c","./lib/pcre/pcre_chartables.c","./lib/pcre/pcreposix.h","./lib/pcre/pcre_newline.c","./lib/pcre/pcre_tables.c","./lib/pcre/NON-UNIX-USE","./lib/pcre/pcre_internal.h","./lib/pcre/Hakefile","./lib/pcre/LICENCE","./lib/pcre/pcreposix.c","./lib/pcre/pcre_get.c","./lib/pcre/pcre_maketables.c","./lib/pcre/pcre_refcount.c","./lib/pcre/pcre_valid_utf8.c","./lib/pcre/config.h","./lib/pcre/pcre_try_flipped.c","./lib/pcre/pcre_printint.src","./lib/pcre/pcre_ord2utf8.c","./lib/pcre/pcre_version.c","./lib/pcre/pcre_exec.c","./lib/pcre/pcre_config.c","./lib/pcre/pcre_xclass.c","./lib/pcre/pcre_study.c","./lib/pcre/pcre.h","./lib/pcre/pcre_fullinfo.c","./lib/pcre/pcre_info.c","./lib/pcre/pcre_globals.c","./lib/pcre/pcre_compile.c","./lib/net_queue_manager/QM_benchmark.c","./lib/net_queue_manager/queue_manager.c","./lib/net_queue_manager/QM_benchmark.h","./lib/net_queue_manager/queue_manager_local.h","./lib/net_queue_manager/Hakefile","./lib/net_queue_manager/queue_manager_debug.h","./lib/net_queue_manager/frag.c","./lib/net_queue_manager/net_soft_filters_srv_impl.c","./lib/crt/crtbegin.c","./lib/crt/Hakefile","./lib/crt/crtend.c","./lib/crt/README","./lib/crt/arch/arm/crt0.S","./lib/crt/arch/x86_32/crt0.S","./lib/crt/arch/x86_64/crt0.S","./lib/oldc/Hakefile","./lib/oldc/package.cfg","./lib/oldc/test/test_libs_c.c","./lib/oldc/test/test_libs_c.h","./lib/oldc/test/fs-null/test_fs.c","./lib/oldc/src/ftell.c","./lib/oldc/src/getopt.c","./lib/oldc/src/strcspn.c","./lib/oldc/src/exit.c","./lib/oldc/src/fputs.c","./lib/oldc/src/vsnprintf.c","./lib/oldc/src/setbuf.c","./lib/oldc/src/rewind.c","./lib/oldc/src/strtoll.c","./lib/oldc/src/wmemchr.c","./lib/oldc/src/format.h","./lib/oldc/src/strdup.c","./lib/oldc/src/gmtime.c","./lib/oldc/src/strspn.c","./lib/oldc/src/memset.c","./lib/oldc/src/strncmp.c","./lib/oldc/src/strerror.c","./lib/oldc/src/local.h","./lib/oldc/src/fseek.c","./lib/oldc/src/difftime.c","./lib/oldc/src/getenv.c","./lib/oldc/src/fprintf.c","./lib/oldc/src/swprintf.c","./lib/oldc/src/fileno.c","./lib/oldc/src/snprintf.c","./lib/oldc/src/printf.c","./lib/oldc/src/strtoul.c","./lib/oldc/src/tmpfile.c","./lib/oldc/src/fgetc.c","./lib/oldc/src/wmemmove.c","./lib/oldc/src/strcat.c","./lib/oldc/src/scanf.c","./lib/oldc/src/putchar.c","./lib/oldc/src/wmemset.c","./lib/oldc/src/fputc.c","./lib/oldc/src/fflush.c","./lib/oldc/src/_srefill.c","./lib/oldc/src/clearerr.c","./lib/oldc/src/strtol.c","./lib/oldc/src/strlen.c","./lib/oldc/src/strxfrm.c","./lib/oldc/src/wcslen.c","./lib/oldc/src/puts.c","./lib/oldc/src/wmemcpy.c","./lib/oldc/src/xprintf_str.c","./lib/oldc/src/memmove.c","./lib/oldc/src/errno.c","./lib/oldc/src/strtoull.c","./lib/oldc/src/strcoll.c","./lib/oldc/src/malloc.c","./lib/oldc/src/vswprintf.c","./lib/oldc/src/fpclassify.c","./lib/oldc/src/sscanf.c","./lib/oldc/src/strftime.c","./lib/oldc/src/ungetc.c","./lib/oldc/src/bsearch.c","./lib/oldc/src/vfscanf.c","./lib/oldc/src/strrchr.c","./lib/oldc/src/feof.c","./lib/oldc/src/vprintf.c","./lib/oldc/src/strcpy.c","./lib/oldc/src/wcscmp.c","./lib/oldc/src/memcpy.c","./lib/oldc/src/getchar.c","./lib/oldc/src/localtime.c","./lib/oldc/src/memcmp.c","./lib/oldc/src/xprintf_float.c","./lib/oldc/src/ferror.c","./lib/oldc/src/strtok.c","./lib/oldc/src/xprintf_int.c","./lib/oldc/src/sprintf.c","./lib/oldc/src/wmemcmp.c","./lib/oldc/src/wcscpy.c","./lib/oldc/src/fscanf.c","./lib/oldc/src/msgcat.c","./lib/oldc/src/assert.c","./lib/oldc/src/wcscoll.c","./lib/oldc/src/memchr.c","./lib/oldc/src/strncpy.c","./lib/oldc/src/locale.c","./lib/oldc/src/fwrite.c","./lib/oldc/src/fread.c","./lib/oldc/src/mktime.c","./lib/oldc/src/fgets.c","./lib/oldc/src/wcsncpy.c","./lib/oldc/src/strchr.c","./lib/oldc/src/asctime.c","./lib/oldc/src/vsscanf.c","./lib/oldc/src/perror.c","./lib/oldc/src/realloc.c","./lib/oldc/src/rand.c","./lib/oldc/src/strstr.c","./lib/oldc/src/_fread.c","./lib/oldc/src/strtold.c","./lib/oldc/src/system.c","./lib/oldc/src/fclose.c","./lib/oldc/src/clock.c","./lib/oldc/src/calloc.c","./lib/oldc/src/strcmp.c","./lib/oldc/src/wcsxfrm.c","./lib/oldc/src/strncat.c","./lib/oldc/src/xprintf.c","./lib/oldc/src/strpbrk.c","./lib/oldc/src/strlcpy.c","./lib/oldc/src/vfprintf.c","./lib/oldc/src/floatio.h","./lib/oldc/src/qsort.c","./lib/oldc/src/arch-x86_32/asm.h","./lib/oldc/src/arch-x86_32/jmp.S","./lib/oldc/src/arch-x86_32/flt_rounds.c","./lib/oldc/src/arch-beehive/jmp.S","./lib/oldc/src/locale/tolower.c","./lib/oldc/src/locale/mbstowcs.c","./lib/oldc/src/locale/wctob.c","./lib/oldc/src/locale/wcsftime.c","./lib/oldc/src/locale/wcstol.c","./lib/oldc/src/locale/wcstoumax.c","./lib/oldc/src/locale/setlocale.h","./lib/oldc/src/locale/lmessages.h","./lib/oldc/src/locale/wcstod.c","./lib/oldc/src/locale/wctrans.c","./lib/oldc/src/locale/wctomb.c","./lib/oldc/src/locale/wcstombs.c","./lib/oldc/src/locale/wcsnrtombs.c","./lib/oldc/src/locale/mbsnrtowcs.c","./lib/oldc/src/locale/fix_grouping.c","./lib/oldc/src/locale/nomacros.c","./lib/oldc/src/locale/iswctype.c","./lib/oldc/src/locale/wcstoimax.c","./lib/oldc/src/locale/lmessages.c","./lib/oldc/src/locale/lmonetary.c","./lib/oldc/src/locale/nextwctype.c","./lib/oldc/src/locale/none.c","./lib/oldc/src/locale/mblen.c","./lib/oldc/src/locale/lnumeric.h","./lib/oldc/src/locale/collcmp.c","./lib/oldc/src/locale/wctype.c","./lib/oldc/src/locale/lmonetary.h","./lib/oldc/src/locale/lnumeric.c","./lib/oldc/src/locale/table.c","./lib/oldc/src/locale/ldpart.h","./lib/oldc/src/locale/wcsrtombs.c","./lib/oldc/src/locale/wcstoul.c","./lib/oldc/src/locale/un-namespace.h","./lib/oldc/src/locale/runefile.h","./lib/oldc/src/locale/wcstoll.c","./lib/oldc/src/locale/mbrlen.c","./lib/oldc/src/locale/mbsrtowcs.c","./lib/oldc/src/locale/btowc.c","./lib/oldc/src/locale/toupper.c","./lib/oldc/src/locale/wcstoull.c","./lib/oldc/src/locale/mbtowc.c","./lib/oldc/src/locale/setlocale.c","./lib/oldc/src/locale/mblocal.h","./lib/oldc/src/locale/mbrtowc.c","./lib/oldc/src/locale/mbsinit.c","./lib/oldc/src/locale/wcstold.c","./lib/oldc/src/locale/wcstof.c","./lib/oldc/src/locale/namespace.h","./lib/oldc/src/locale/runetype.c","./lib/oldc/src/locale/wcrtomb.c","./lib/oldc/src/locale/ascii.c","./lib/oldc/src/locale/collate.h","./lib/oldc/src/locale/collate.c","./lib/oldc/src/fs-null/fopen.c","./lib/oldc/src/gdtoa/hd_init.c","./lib/oldc/src/gdtoa/dtoa.c","./lib/oldc/src/gdtoa/misc.c","./lib/oldc/src/gdtoa/gdtoa_fltrnds.h","./lib/oldc/src/gdtoa/gdtoa.h","./lib/oldc/src/gdtoa/hexnan.c","./lib/oldc/src/gdtoa/strtod.c","./lib/oldc/src/gdtoa/strtord.c","./lib/oldc/src/gdtoa/ulp.c","./lib/oldc/src/gdtoa/gethex.c","./lib/oldc/src/gdtoa/_hdtoa.c","./lib/oldc/src/gdtoa/gdtoaimp.h","./lib/oldc/src/gdtoa/_hldtoa.c","./lib/oldc/src/gdtoa/sum.c","./lib/oldc/src/gdtoa/smisc.c","./lib/oldc/src/gdtoa/_ldtoa.c","./lib/oldc/src/gdtoa/strtof.c","./lib/oldc/src/gdtoa/gdtoa.c","./lib/oldc/src/gdtoa/dmisc.c","./lib/oldc/src/gdtoa/strtodg.c","./lib/oldc/src/gdtoa/gmisc.c","./lib/oldc/src/gdtoa/arm/gd_qnan.h","./lib/oldc/src/gdtoa/arm/arith.h","./lib/oldc/src/gdtoa/x86_32/gd_qnan.h","./lib/oldc/src/gdtoa/x86_32/arith.h","./lib/oldc/src/gdtoa/beehive/gd_qnan.h","./lib/oldc/src/gdtoa/beehive/arith.h","./lib/oldc/src/gdtoa/x86_64/gd_qnan.h","./lib/oldc/src/gdtoa/x86_64/arith.h","./lib/oldc/src/sys-barrelfish/sys_stdio.c","./lib/oldc/src/sys-barrelfish/icc.c","./lib/oldc/src/sys-barrelfish/sys_morecore.c","./lib/oldc/src/sys-barrelfish/sys_abort.c","./lib/oldc/src/sys-barrelfish/sys_tmpfile.c","./lib/oldc/src/sys-barrelfish/sys_exit.c","./lib/oldc/src/arch-mips64/jmp.S","./lib/oldc/src/arch-alpha/dispatch.S","./lib/oldc/src/arch-alpha/alpha-divrem.m4","./lib/oldc/src/arch-alpha/alpha-divrem.S","./lib/oldc/src/arch-alpha/halt.S","./lib/oldc/src/arch-powerpc64/jmp.S","./lib/oldc/src/fs-barrelfish/fopen.c","./lib/oldc/src/arch-x86_64/asm.h","./lib/oldc/src/arch-x86_64/jmp.S","./lib/oldc/src/arch-x86_64/flt_rounds.c","./lib/oldc/src/string/strcasecmp.c","./lib/oldc/src/arch-arm/asm.h","./lib/oldc/src/arch-arm/jmp.S","./lib/oldc/msun/Hakefile","./lib/oldc/msun/arm/fenv.c","./lib/oldc/msun/src/e_expf.c","./lib/oldc/msun/src/w_cabsl.c","./lib/oldc/msun/src/k_tan.c","./lib/oldc/msun/src/e_j1f.c","./lib/oldc/msun/src/s_cbrtf.c","./lib/oldc/msun/src/s_lroundf.c","./lib/oldc/msun/src/s_conjf.c","./lib/oldc/msun/src/s_truncf.c","./lib/oldc/msun/src/w_cabsf.c","./lib/oldc/msun/src/s_frexp.c","./lib/oldc/msun/src/e_cosh.c","./lib/oldc/msun/src/e_coshf.c","./lib/oldc/msun/src/s_scalbnl.c","./lib/oldc/msun/src/s_isnan.c","./lib/oldc/msun/src/s_finite.c","./lib/oldc/msun/src/e_sinh.c","./lib/oldc/msun/src/s_csqrtl.c","./lib/oldc/msun/src/s_modff.c","./lib/oldc/msun/src/s_nextafterl.c","./lib/oldc/msun/src/s_tanhf.c","./lib/oldc/msun/src/s_cosf.c","./lib/oldc/msun/src/s_fminl.c","./lib/oldc/msun/src/s_tan.c","./lib/oldc/msun/src/s_isnormal.c","./lib/oldc/msun/src/s_isinf.c","./lib/oldc/msun/src/s_frexpf.c","./lib/oldc/msun/src/s_fdim.c","./lib/oldc/msun/src/s_llrintf.c","./lib/oldc/msun/src/s_llroundf.c","./lib/oldc/msun/src/s_floor.c","./lib/oldc/msun/src/s_copysign.c","./lib/oldc/msun/src/e_acosh.c","./lib/oldc/msun/src/s_log1p.c","./lib/oldc/msun/src/s_frexpl.c","./lib/oldc/msun/src/s_logb.c","./lib/oldc/msun/src/s_nexttoward.c","./lib/oldc/msun/src/s_remquof.c","./lib/oldc/msun/src/s_tanf.c","./lib/oldc/msun/src/s_copysignl.c","./lib/oldc/msun/src/s_rintl.c","./lib/oldc/msun/src/s_fabsl.c","./lib/oldc/msun/src/w_dremf.c","./lib/oldc/msun/src/s_modf.c","./lib/oldc/msun/src/s_lround.c","./lib/oldc/msun/src/s_sin.c","./lib/oldc/msun/src/s_fmax.c","./lib/oldc/msun/src/e_lgammaf.c","./lib/oldc/msun/src/e_asinl.c","./lib/oldc/msun/src/s_roundl.c","./lib/oldc/msun/src/s_rint.c","./lib/oldc/msun/src/s_signbit.c","./lib/oldc/msun/src/s_ceil.c","./lib/oldc/msun/src/e_log10f.c","./lib/oldc/msun/src/s_logbl.c","./lib/oldc/msun/src/e_j1.c","./lib/oldc/msun/src/s_scalbln.c","./lib/oldc/msun/src/s_roundf.c","./lib/oldc/msun/src/e_gamma.c","./lib/oldc/msun/src/s_trunc.c","./lib/oldc/msun/src/s_fabs.c","./lib/oldc/msun/src/s_cimag.c","./lib/oldc/msun/src/k_sin.c","./lib/oldc/msun/src/e_sqrt.c","./lib/oldc/msun/src/s_floorf.c","./lib/oldc/msun/src/e_gammaf.c","./lib/oldc/msun/src/s_ilogb.c","./lib/oldc/msun/src/s_tgammaf.c","./lib/oldc/msun/src/w_drem.c","./lib/oldc/msun/src/s_ldexp.c","./lib/oldc/msun/src/s_cargf.c","./lib/oldc/msun/src/s_lrintf.c","./lib/oldc/msun/src/k_rem_pio2.c","./lib/oldc/msun/src/s_erff.c","./lib/oldc/msun/src/s_expm1f.c","./lib/oldc/msun/src/s_conjl.c","./lib/oldc/msun/src/s_llrint.c","./lib/oldc/msun/src/s_expm1.c","./lib/oldc/msun/src/s_significandf.c","./lib/oldc/msun/src/s_fmaxf.c","./lib/oldc/msun/src/e_acos.c","./lib/oldc/msun/src/w_cabs.c","./lib/oldc/msun/src/s_ilogbf.c","./lib/oldc/msun/src/s_scalbnf.c","./lib/oldc/msun/src/s_rintf.c","./lib/oldc/msun/src/e_scalbf.c","./lib/oldc/msun/src/e_remainder.c","./lib/oldc/msun/src/e_exp.c","./lib/oldc/msun/src/e_asinf.c","./lib/oldc/msun/src/s_csqrtf.c","./lib/oldc/msun/src/s_copysignf.c","./lib/oldc/msun/src/e_asin.c","./lib/oldc/msun/src/s_csqrt.c","./lib/oldc/msun/src/s_floorl.c","./lib/oldc/msun/src/e_gamma_r.c","./lib/oldc/msun/src/s_exp2f.c","./lib/oldc/msun/src/s_fma.c","./lib/oldc/msun/src/e_rem_pio2f.c","./lib/oldc/msun/src/s_ceilf.c","./lib/oldc/msun/src/s_cbrt.c","./lib/oldc/msun/src/s_nan.c","./lib/oldc/msun/src/s_truncl.c","./lib/oldc/msun/src/e_acosl.c","./lib/oldc/msun/src/s_erf.c","./lib/oldc/msun/src/e_gammaf_r.c","./lib/oldc/msun/src/s_sinl.c","./lib/oldc/msun/src/s_tanh.c","./lib/oldc/msun/src/k_tanf.c","./lib/oldc/msun/src/s_cproj.c","./lib/oldc/msun/src/s_fmaf.c","./lib/oldc/msun/src/s_creall.c","./lib/oldc/msun/src/s_isfinite.c","./lib/oldc/msun/src/e_logf.c","./lib/oldc/msun/src/e_j0f.c","./lib/oldc/msun/src/s_cimagl.c","./lib/oldc/msun/src/e_powf.c","./lib/oldc/msun/src/s_cos.c","./lib/oldc/msun/src/e_lgammaf_r.c","./lib/oldc/msun/src/s_cosl.c","./lib/oldc/msun/src/s_logbf.c","./lib/oldc/msun/src/s_fmal.c","./lib/oldc/msun/src/e_sqrtf.c","./lib/oldc/msun/src/e_log10.c","./lib/oldc/msun/src/s_ceill.c","./lib/oldc/msun/src/s_cargl.c","./lib/oldc/msun/src/s_asinhf.c","./lib/oldc/msun/src/e_atanhf.c","./lib/oldc/msun/src/s_carg.c","./lib/oldc/msun/src/s_scalbn.c","./lib/oldc/msun/src/e_pow.c","./lib/oldc/msun/src/s_lrint.c","./lib/oldc/msun/src/e_fmod.c","./lib/oldc/msun/src/e_atan2.c","./lib/oldc/msun/src/s_fmaxl.c","./lib/oldc/msun/src/s_llround.c","./lib/oldc/msun/src/s_atanf.c","./lib/oldc/msun/src/s_log1pf.c","./lib/oldc/msun/src/s_asinh.c","./lib/oldc/msun/src/s_round.c","./lib/oldc/msun/src/s_atan.c","./lib/oldc/msun/src/k_cosf.c","./lib/oldc/msun/src/e_sqrtl.c","./lib/oldc/msun/src/e_jnf.c","./lib/oldc/msun/src/math_private.h","./lib/oldc/msun/src/e_rem_pio2.c","./lib/oldc/msun/src/s_finitef.c","./lib/oldc/msun/src/e_atan2f.c","./lib/oldc/msun/src/s_tanl.c","./lib/oldc/msun/src/s_llroundl.c","./lib/oldc/msun/src/s_significand.c","./lib/oldc/msun/src/s_nextafterf.c","./lib/oldc/msun/src/s_conj.c","./lib/oldc/msun/src/s_cprojf.c","./lib/oldc/msun/src/e_fmodf.c","./lib/oldc/msun/src/s_cimagf.c","./lib/oldc/msun/src/s_nexttowardf.c","./lib/oldc/msun/src/s_cprojl.c","./lib/oldc/msun/src/s_sinf.c","./lib/oldc/msun/src/e_j0.c","./lib/oldc/msun/src/e_scalb.c","./lib/oldc/msun/src/s_signgam.c","./lib/oldc/msun/src/e_hypotf.c","./lib/oldc/msun/src/s_exp2.c","./lib/oldc/msun/src/k_sinf.c","./lib/oldc/msun/src/e_remainderl.c","./lib/oldc/msun/src/s_nearbyint.c","./lib/oldc/msun/src/e_atanh.c","./lib/oldc/msun/src/s_llrintl.c","./lib/oldc/msun/src/e_acoshf.c","./lib/oldc/msun/src/s_remquol.c","./lib/oldc/msun/src/e_acosf.c","./lib/oldc/msun/src/s_atanl.c","./lib/oldc/msun/src/s_crealf.c","./lib/oldc/msun/src/e_sinhf.c","./lib/oldc/msun/src/e_hypot.c","./lib/oldc/msun/src/k_cos.c","./lib/oldc/msun/src/e_atan2l.c","./lib/oldc/msun/src/s_ilogbl.c","./lib/oldc/msun/src/e_jn.c","./lib/oldc/msun/src/s_lrintl.c","./lib/oldc/msun/src/s_fmin.c","./lib/oldc/msun/src/e_remainderf.c","./lib/oldc/msun/src/s_fabsf.c","./lib/oldc/msun/src/e_lgamma.c","./lib/oldc/msun/src/s_creal.c","./lib/oldc/msun/src/s_lroundl.c","./lib/oldc/msun/src/e_hypotl.c","./lib/oldc/msun/src/s_fminf.c","./lib/oldc/msun/src/s_remquo.c","./lib/oldc/msun/src/e_lgamma_r.c","./lib/oldc/msun/src/s_nextafter.c","./lib/oldc/msun/src/e_fmodl.c","./lib/oldc/msun/src/s_modfl.c","./lib/oldc/msun/src/e_log.c","./lib/oldc/msun/ia64/s_fmaf.S","./lib/oldc/msun/ia64/fenv.c","./lib/oldc/msun/ia64/s_fmal.S","./lib/oldc/msun/ia64/s_fma.S","./lib/oldc/msun/beehive/fenv.c","./lib/oldc/msun/mips/fenv.c","./lib/oldc/msun/ld128/k_sinl.c","./lib/oldc/msun/ld128/k_cosl.c","./lib/oldc/msun/ld128/s_nanl.c","./lib/oldc/msun/ld128/invtrig.c","./lib/oldc/msun/ld128/invtrig.h","./lib/oldc/msun/ld128/s_exp2l.c","./lib/oldc/msun/ld128/k_tanl.c","./lib/oldc/msun/amd64/s_scalbnf.S","./lib/oldc/msun/amd64/s_llrint.S","./lib/oldc/msun/amd64/s_remquo.S","./lib/oldc/msun/amd64/e_sqrt.S","./lib/oldc/msun/amd64/s_llrintf.S","./lib/oldc/msun/amd64/fenv.c","./lib/oldc/msun/amd64/s_llrintl.S","./lib/oldc/msun/amd64/s_remquof.S","./lib/oldc/msun/amd64/e_sqrtf.S","./lib/oldc/msun/amd64/s_lrint.S","./lib/oldc/msun/amd64/s_remquol.S","./lib/oldc/msun/amd64/s_scalbn.S","./lib/oldc/msun/amd64/e_remainderf.S","./lib/oldc/msun/amd64/e_sqrtl.S","./lib/oldc/msun/amd64/s_lrintl.S","./lib/oldc/msun/amd64/s_lrintf.S","./lib/oldc/msun/amd64/s_scalbnl.S","./lib/oldc/msun/powerpc/fenv.c","./lib/oldc/msun/sparc64/e_sqrt.S","./lib/oldc/msun/sparc64/fenv.c","./lib/oldc/msun/sparc64/e_sqrtf.S","./lib/oldc/msun/ld80/k_sinl.c","./lib/oldc/msun/ld80/k_cosl.c","./lib/oldc/msun/ld80/s_nanl.c","./lib/oldc/msun/ld80/invtrig.c","./lib/oldc/msun/ld80/invtrig.h","./lib/oldc/msun/ld80/s_exp2l.c","./lib/oldc/msun/ld80/k_tanl.c","./lib/oldc/doc/filesystem_design","./lib/lwip/COPYING","./lib/lwip/Hakefile","./lib/lwip/CHANGELOG","./lib/lwip/FILES","./lib/lwip/README","./lib/lwip/src/sys_arch.c","./lib/lwip/src/FILES","./lib/lwip/src/netif/etharp.c","./lib/lwip/src/netif/slipif.c","./lib/lwip/src/netif/ethernetif.c","./lib/lwip/src/netif/FILES","./lib/lwip/src/netif/bfeth.c","./lib/lwip/src/netif/loopif.c","./lib/lwip/src/core/tcp.c","./lib/lwip/src/core/tcp_out.c","./lib/lwip/src/core/tcp_in.c","./lib/lwip/src/core/mem.c","./lib/lwip/src/core/netif.c","./lib/lwip/src/core/sys.c","./lib/lwip/src/core/dhcp.c","./lib/lwip/src/core/dns.c","./lib/lwip/src/core/stats.c","./lib/lwip/src/core/udp.c","./lib/lwip/src/core/memp.c","./lib/lwip/src/core/init.c","./lib/lwip/src/core/pbuf.c","./lib/lwip/src/core/raw.c","./lib/lwip/src/core/snmp/asn1_dec.c","./lib/lwip/src/core/snmp/msg_out.c","./lib/lwip/src/core/snmp/mib2.c","./lib/lwip/src/core/snmp/msg_in.c","./lib/lwip/src/core/snmp/mib_structs.c","./lib/lwip/src/core/snmp/asn1_enc.c","./lib/lwip/src/core/ipv6/ip6_addr.c","./lib/lwip/src/core/ipv6/ip6.c","./lib/lwip/src/core/ipv6/inet6.c","./lib/lwip/src/core/ipv6/icmp6.c","./lib/lwip/src/core/ipv6/README","./lib/lwip/src/core/ipv4/inet_chksum.c","./lib/lwip/src/core/ipv4/autoip.c","./lib/lwip/src/core/ipv4/icmp.c","./lib/lwip/src/core/ipv4/ip.c","./lib/lwip/src/core/ipv4/ip_addr.c","./lib/lwip/src/core/ipv4/igmp.c","./lib/lwip/src/core/ipv4/ip_frag.c","./lib/lwip/src/core/ipv4/inet.c","./lib/lwip/src/api/netbuf.c","./lib/lwip/src/api/netifapi.c","./lib/lwip/src/api/sockets.c","./lib/lwip/src/api/netdb.c","./lib/lwip/src/api/tcpip.c","./lib/lwip/src/api/api_lib.c","./lib/lwip/src/api/err.c","./lib/lwip/src/api/api_msg.c","./lib/lwip/src/barrelfish/idc_barrelfish.h","./lib/lwip/src/barrelfish/mem_barrelfish.h","./lib/lwip/src/barrelfish/mem_barrelfish.c","./lib/lwip/src/barrelfish/idc_net_control.c","./lib/lwip/src/barrelfish/ARP_lookup_client.c","./lib/lwip/src/barrelfish/idc_barrelfish.c","./lib/lwip/src/barrelfish/lwip_barrelfish_debug.h","./lib/lwip/doc/rawapi.txt","./lib/lwip/doc/FILES","./lib/lwip/doc/snmp_agent.txt","./lib/lwip/doc/contrib.txt","./lib/lwip/doc/sys_arch.txt","./lib/lwip/doc/savannah.txt","./lib/trace/trace.c","./lib/trace/Hakefile","./lib/trace/control.c","./lib/elf/elf.c","./lib/elf/elf32.c","./lib/elf/Hakefile","./lib/elf/elf64.c","./lib/thc/Hakefile","./lib/thc/thcstubs.c","./lib/thc/thc.c","./lib/thc/thcsync.c","./lib/angler/angler.c","./lib/angler/Hakefile","./lib/cpio/cpiobin.c","./lib/cpio/Hakefile","./lib/term/Hakefile","./lib/term/term_debug.h","./lib/term/server/server.c","./lib/term/client/filter_priv.h","./lib/term/client/default_triggers.c","./lib/term/client/filter.c","./lib/term/client/session.c","./lib/term/client/default_filters.c","./lib/term/client/trigger.c","./lib/term/client/client_blocking.c","./lib/term/client/client.c","./lib/term/client/trigger_priv.h","./lib/ahci/sata_fis.c","./lib/ahci/ahci_debug.h","./lib/ahci/Hakefile","./lib/ahci/ahci_util.c","./lib/ahci/ahci.c","./lib/ahci/ahci_dma_pool.c","./lib/ahci/ahci_internal.h","./lib/x86emu/ops2.c","./lib/x86emu/validate.c","./lib/x86emu/decode.c","./lib/x86emu/fpu.c","./lib/x86emu/ops.c","./lib/x86emu/sys.c","./lib/x86emu/Hakefile","./lib/x86emu/prim_ops.c","./lib/x86emu/debug.c","./lib/rcce/internal.h","./lib/rcce/RCCE_reduce.c","./lib/rcce/rcce.c","./lib/rcce/bcast.c","./lib/rcce/Hakefile","./lib/rcce/RCCE_debug.c","./lib/rcce/RCCE_comm.c","./lib/rcce/ring_barriers.c","./lib/bfdmuxtools/opdefs.c","./lib/bfdmuxtools/Hakefile","./lib/bfdmuxtools/opdefs.h","./lib/bfdmuxtools/tools.c","./lib/bfdmuxtools/codegen.c","./lib/concurrent/linked_list.c","./lib/concurrent/Hakefile","./lib/contmng/contmng.c","./lib/contmng/Hakefile","./lib/contmng/netbench.c","./lib/hashtable/Hakefile","./lib/hashtable/hashtable.c","./lib/skb/skb_functions.c","./lib/skb/skb.c","./lib/skb/Hakefile","./lib/skb/helper.c","./lib/skb/skb_debug.h","./lib/timer/Hakefile","./lib/timer/timer.c","./lib/collections/flipbuffer.c","./lib/collections/Hakefile","./lib/collections/hash_table.c","./lib/collections/stack.c","./lib/collections/list.c","./lib/net_device_manager/portalloc.h","./lib/net_device_manager/port_management_support.h","./lib/net_device_manager/device_manager.c","./lib/net_device_manager/portalloc.c","./lib/net_device_manager/Hakefile","./lib/net_device_manager/device_manager_debug.h","./lib/net_device_manager/port_service_impl.c","./lib/net_device_manager/soft_filt_cl_impl.c","./lib/phoenix/locality.c","./lib/phoenix/map_reduce.c","./lib/phoenix/iterator.h","./lib/phoenix/processor.h","./lib/phoenix/scheduler.c","./lib/phoenix/scheduler.h","./lib/phoenix/locality.h","./lib/phoenix/tpool.h","./lib/phoenix/queue.h","./lib/phoenix/map_reduce.h","./lib/phoenix/taskQ.c","./lib/phoenix/list.h","./lib/phoenix/taskQ.h","./lib/phoenix/tpool.c","./lib/phoenix/Hakefile","./lib/phoenix/iterator.c","./lib/phoenix/stddefines.h","./lib/phoenix/processor.c","./lib/phoenix/mcs.c","./lib/phoenix/pt_mutex.c","./lib/phoenix/synch.c","./lib/phoenix/memory.h","./lib/phoenix/synch.h","./lib/phoenix/struct.h","./lib/phoenix/defines.h","./lib/phoenix/memory.c","./lib/phoenix/atomic.h","./lib/posixcompat/ioctl.c","./lib/posixcompat/popen.c","./lib/posixcompat/close.c","./lib/posixcompat/signal.c","./lib/posixcompat/ttyname.c","./lib/posixcompat/chdir.c","./lib/posixcompat/sysconf.c","./lib/posixcompat/umask.c","./lib/posixcompat/termios.c","./lib/posixcompat/creat.c","./lib/posixcompat/select.c","./lib/posixcompat/pty.c","./lib/posixcompat/fstat.c","./lib/posixcompat/time.c","./lib/posixcompat/_exit.c","./lib/posixcompat/getgroups.c","./lib/posixcompat/inheritance.c","./lib/posixcompat/setitimer.c","./lib/posixcompat/alarm.c","./lib/posixcompat/kill.c","./lib/posixcompat/grp.c","./lib/posixcompat/geteuid.c","./lib/posixcompat/sockets.c","./lib/posixcompat/shm.c","./lib/posixcompat/stat.c","./lib/posixcompat/getcwd.c","./lib/posixcompat/dirname.c","./lib/posixcompat/fsync.c","./lib/posixcompat/open.c","./lib/posixcompat/pty.h","./lib/posixcompat/rmdir.c","./lib/posixcompat/getegid.c","./lib/posixcompat/readlink.c","./lib/posixcompat/timegm.c","./lib/posixcompat/utime.c","./lib/posixcompat/access.c","./lib/posixcompat/lseek.c","./lib/posixcompat/rename.c","./lib/posixcompat/Hakefile","./lib/posixcompat/readv.c","./lib/posixcompat/semaphore.c","./lib/posixcompat/basename.c","./lib/posixcompat/getpwent.c","./lib/posixcompat/posixcompat.h","./lib/posixcompat/wait.c","./lib/posixcompat/chmod.c","./lib/posixcompat/dlfcn.c","./lib/posixcompat/ftruncate.c","./lib/posixcompat/gettimeofday.c","./lib/posixcompat/pipe.c","./lib/posixcompat/read.c","./lib/posixcompat/gethostid.c","./lib/posixcompat/isatty.c","./lib/posixcompat/write.c","./lib/posixcompat/README","./lib/posixcompat/dup.c","./lib/posixcompat/unlink.c","./lib/posixcompat/setsid.c","./lib/posixcompat/mkdir.c","./lib/posixcompat/remove.c","./lib/posixcompat/link.c","./lib/posixcompat/getpid.c","./lib/posixcompat/chroot.c","./lib/posixcompat/fcntl.c","./lib/posixcompat/gethostname.c","./lib/posixcompat/random.c","./lib/posixcompat/unixsock.h","./lib/posixcompat/sbrk.c","./lib/posixcompat/userdb.h","./lib/posixcompat/dirent.c","./lib/tweed/tweed.c","./lib/tweed/Hakefile","./lib/nfs/portmap_rpc.h","./lib/nfs/nfs.c","./lib/nfs/mount.x","./lib/nfs/nfs_debug.h","./lib/nfs/xdr_pbuf.h","./lib/nfs/Hakefile","./lib/nfs/portmap_xdr.c","./lib/nfs/nfs_xdr.c","./lib/nfs/rpc_debug.h","./lib/nfs/portmap.x","./lib/nfs/rpc.c","./lib/nfs/nfs.x","./lib/nfs/mount_xdr.c","./lib/nfs/rpc.h","./lib/nfs/xdr_pbuf.c","./lib/nfs/xdr.c","./lib/zlib/adler32.c","./lib/zlib/inffixed.h","./lib/zlib/inffast.h","./lib/zlib/infback.c","./lib/zlib/trees.c","./lib/zlib/inflate.h","./lib/zlib/compress.c","./lib/zlib/trees.h","./lib/zlib/crc32.c","./lib/zlib/deflate.h","./lib/zlib/zutil.c","./lib/zlib/Hakefile","./lib/zlib/inftrees.h","./lib/zlib/uncompr.c","./lib/zlib/inflate.c","./lib/zlib/deflate.c","./lib/zlib/zutil.h","./lib/zlib/gzio.c","./lib/zlib/crc32.h","./lib/zlib/inftrees.c","./lib/zlib/inffast.c","./lib/bench/Hakefile","./lib/bench/bench.c","./lib/bench/arch/arm/bench_arch.c","./lib/bench/arch/x86/bench_arch.c","./lib/octopus/Hakefile","./lib/octopus/parser/parse.y","./lib/octopus/parser/flex.h","./lib/octopus/parser/scan.c","./lib/octopus/parser/test_parser.c","./lib/octopus/parser/ast.c","./lib/octopus/parser/scan.l","./lib/octopus/parser/Makefile","./lib/octopus/parser/read.c","./lib/octopus/parser/parse.c","./lib/octopus/parser/y.tab.h","./lib/octopus/server/service.c","./lib/octopus/server/capstorage.c","./lib/octopus/server/queue.h","./lib/octopus/server/queue.c","./lib/octopus/server/init.c","./lib/octopus/client/barriers.c","./lib/octopus/client/common.h","./lib/octopus/client/strnatcmp.c","./lib/octopus/client/octopus.c","./lib/octopus/client/handler.h","./lib/octopus/client/getset.c","./lib/octopus/client/pubsub.c","./lib/octopus/client/trigger.c","./lib/octopus/client/semaphores.c","./lib/octopus/client/capability_storage.c","./lib/octopus/client/locking.c","./lib/octopus/client/strnatcmp.h","./lib/octopus/client/nameservice_client.c","./lib/procon/Hakefile","./lib/procon/procon.c","./lib/spawndomain/getopt.c","./lib/spawndomain/arch.h","./lib/spawndomain/spawn.c","./lib/spawndomain/spawn_vspace.c","./lib/spawndomain/Hakefile","./lib/spawndomain/spawn.h","./lib/spawndomain/multiboot.c","./lib/spawndomain/arch/arm/spawn_arch.c","./lib/spawndomain/arch/x86/spawn_arch.c","./lib/acpi_client/acpi_client.c","./lib/acpi_client/Hakefile","./lib/barrelfish/flounder_glue_binding.c","./lib/barrelfish/event_queue.c","./lib/barrelfish/msgbuf.c","./lib/barrelfish/bulk_transfer.c","./lib/barrelfish/thread_sync.c","./lib/barrelfish/multihop_chan.c","./lib/barrelfish/slab.c","./lib/barrelfish/heap.c","./lib/barrelfish/ram_alloc.c","./lib/barrelfish/ump_endpoint.c","./lib/barrelfish/inthandler.c","./lib/barrelfish/monitor_client.c","./lib/barrelfish/terminal.c","./lib/barrelfish/lmp_chan.c","./lib/barrelfish/trace.c","./lib/barrelfish/waitset.c","./lib/barrelfish/idc.c","./lib/barrelfish/Hakefile","./lib/barrelfish/threads.c","./lib/barrelfish/ump_chan.c","./lib/barrelfish/capabilities.c","./lib/barrelfish/spawn_client.c","./lib/barrelfish/dispatch.c","./lib/barrelfish/event_mutex.c","./lib/barrelfish/init.c","./lib/barrelfish/flounder_support.c","./lib/barrelfish/resource_ctrl.c","./lib/barrelfish/idc_export.c","./lib/barrelfish/morecore.c","./lib/barrelfish/debug.c","./lib/barrelfish/coreset.c","./lib/barrelfish/nameservice_client.c","./lib/barrelfish/domain.c","./lib/barrelfish/lmp_endpoints.c","./lib/barrelfish/deferred.c","./lib/barrelfish/slot_alloc/multi_slot_alloc.c","./lib/barrelfish/slot_alloc/internal.h","./lib/barrelfish/slot_alloc/range_slot_alloc.c","./lib/barrelfish/slot_alloc/single_slot_alloc.c","./lib/barrelfish/slot_alloc/slot_alloc.c","./lib/barrelfish/arch/arm/syscalls.c","./lib/barrelfish/arch/arm/sys_debug.c","./lib/barrelfish/arch/arm/pmap_arch.c","./lib/barrelfish/arch/arm/dispatch.c","./lib/barrelfish/arch/arm/debug.c","./lib/barrelfish/arch/arm/entry.S","./lib/barrelfish/arch/arm/syscall.S","./lib/barrelfish/arch/x86/perfmon.c","./lib/barrelfish/arch/x86/ipi_notify.c","./lib/barrelfish/arch/x86/tls.c","./lib/barrelfish/arch/x86_32/syscalls.c","./lib/barrelfish/arch/x86_32/sys_debug.c","./lib/barrelfish/arch/x86_32/dispatch.c","./lib/barrelfish/arch/x86_32/debug.c","./lib/barrelfish/arch/x86_32/entry.S","./lib/barrelfish/arch/x86_64/syscalls.c","./lib/barrelfish/arch/x86_64/sys_debug.c","./lib/barrelfish/arch/x86_64/ldt.c","./lib/barrelfish/arch/x86_64/dispatch.c","./lib/barrelfish/arch/x86_64/debug.c","./lib/barrelfish/arch/x86_64/entry.S","./lib/barrelfish/include/waitset_chan_priv.h","./lib/barrelfish/include/threads_priv.h","./lib/barrelfish/include/init.h","./lib/barrelfish/include/arch/arm/arch/registers.h","./lib/barrelfish/include/arch/arm/arch/threads.h","./lib/barrelfish/include/arch/x86_32/arch/registers.h","./lib/barrelfish/include/arch/x86_32/arch/threads.h","./lib/barrelfish/include/arch/x86_32/arch/fpu.h","./lib/barrelfish/include/arch/x86_64/arch/registers.h","./lib/barrelfish/include/arch/x86_64/arch/ldt.h","./lib/barrelfish/include/arch/x86_64/arch/threads.h","./lib/barrelfish/include/arch/x86_64/arch/fpu.h","./lib/barrelfish/include/target/x86/pmap_x86.h","./lib/barrelfish/include/target/x86_32/registers_target.h","./lib/barrelfish/include/target/x86_64/registers_target.h","./lib/barrelfish/vspace/memobj_pinned.c","./lib/barrelfish/vspace/vregion.c","./lib/barrelfish/vspace/memobj_one_frame_lazy.c","./lib/barrelfish/vspace/vspace_internal.h","./lib/barrelfish/vspace/pinned.c","./lib/barrelfish/vspace/utils.c","./lib/barrelfish/vspace/memobj_one_frame.c","./lib/barrelfish/vspace/vspace.c","./lib/barrelfish/vspace/memobj_one_frame_one_map.c","./lib/barrelfish/vspace/mmu_aware.c","./lib/barrelfish/vspace/memobj_anon.c","./lib/barrelfish/vspace/arch/arm/layout.c","./lib/barrelfish/vspace/arch/x86_32/layout.c","./lib/barrelfish/vspace/arch/x86_64/layout.c","./lib/barrelfish/target/x86/pmap_x86.c","./lib/barrelfish/target/x86_32/pmap_target.c","./lib/barrelfish/target/x86_64/pmap_target.c","./lib/mdb/Hakefile","./lib/mdb/mdb_tree.c","./lib/mdb/mdb.c","./lib/driverkit/map_devices.c","./lib/driverkit/Hakefile","./lib/openssl-1.0.0d/ACKNOWLEDGMENTS","./lib/openssl-1.0.0d/Makefile.org","./lib/openssl-1.0.0d/INSTALL.W64","./lib/openssl-1.0.0d/openssl.spec","./lib/openssl-1.0.0d/Configure","./lib/openssl-1.0.0d/INSTALL","./lib/openssl-1.0.0d/CHANGES.SSLeay","./lib/openssl-1.0.0d/README.ENGINE","./lib/openssl-1.0.0d/NEWS","./lib/openssl-1.0.0d/PROBLEMS","./lib/openssl-1.0.0d/INSTALL.DJGPP","./lib/openssl-1.0.0d/FAQ","./lib/openssl-1.0.0d/makevms.com","./lib/openssl-1.0.0d/.cproject","./lib/openssl-1.0.0d/CHANGES","./lib/openssl-1.0.0d/Hakefile","./lib/openssl-1.0.0d/e_os.h","./lib/openssl-1.0.0d/INSTALL.WCE","./lib/openssl-1.0.0d/LICENSE","./lib/openssl-1.0.0d/Makefile","./lib/openssl-1.0.0d/INSTALL.MacOS","./lib/openssl-1.0.0d/.project","./lib/openssl-1.0.0d/INSTALL.NW","./lib/openssl-1.0.0d/INSTALL.VMS","./lib/openssl-1.0.0d/Makefile.shared","./lib/openssl-1.0.0d/README","./lib/openssl-1.0.0d/install.com","./lib/openssl-1.0.0d/config","./lib/openssl-1.0.0d/inklude_neu","./lib/openssl-1.0.0d/README.ASN1","./lib/openssl-1.0.0d/openssl.doxy","./lib/openssl-1.0.0d/INSTALL.W32","./lib/openssl-1.0.0d/INSTALL.OS2","./lib/openssl-1.0.0d/e_os2.h","./lib/openssl-1.0.0d/Makefile.bak","./lib/openssl-1.0.0d/tools/c_rehash.bak","./lib/openssl-1.0.0d/tools/c_rehash","./lib/openssl-1.0.0d/tools/c89.sh","./lib/openssl-1.0.0d/tools/c_info","./lib/openssl-1.0.0d/tools/Makefile","./lib/openssl-1.0.0d/tools/c_hash","./lib/openssl-1.0.0d/tools/c_issuer","./lib/openssl-1.0.0d/tools/c_rehash.in","./lib/openssl-1.0.0d/tools/c_name","./lib/openssl-1.0.0d/util/extract-section.pl","./lib/openssl-1.0.0d/util/tab_num.pl","./lib/openssl-1.0.0d/util/mkcerts.sh","./lib/openssl-1.0.0d/util/bat.sh","./lib/openssl-1.0.0d/util/mk1mf.pl","./lib/openssl-1.0.0d/util/mkfiles.pl","./lib/openssl-1.0.0d/util/shlib_wrap.sh","./lib/openssl-1.0.0d/util/mklink.pl","./lib/openssl-1.0.0d/util/do_ms.sh","./lib/openssl-1.0.0d/util/dirname.pl","./lib/openssl-1.0.0d/util/ck_errf.pl","./lib/openssl-1.0.0d/util/err-ins.pl","./lib/openssl-1.0.0d/util/libeay.num","./lib/openssl-1.0.0d/util/src-dep.pl","./lib/openssl-1.0.0d/util/sp-diff.pl","./lib/openssl-1.0.0d/util/install.sh","./lib/openssl-1.0.0d/util/mkdef.pl","./lib/openssl-1.0.0d/util/FreeBSD.sh","./lib/openssl-1.0.0d/util/clean-depend.pl","./lib/openssl-1.0.0d/util/ssleay.num","./lib/openssl-1.0.0d/util/perlpath.pl","./lib/openssl-1.0.0d/util/speed.sh","./lib/openssl-1.0.0d/util/point.sh","./lib/openssl-1.0.0d/util/pod2mantest","./lib/openssl-1.0.0d/util/selftest.pl","./lib/openssl-1.0.0d/util/fixNT.sh","./lib/openssl-1.0.0d/util/domd","./lib/openssl-1.0.0d/util/deleof.pl","./lib/openssl-1.0.0d/util/extract-names.pl","./lib/openssl-1.0.0d/util/add_cr.pl","./lib/openssl-1.0.0d/util/files.pl","./lib/openssl-1.0.0d/util/pod2man.pl","./lib/openssl-1.0.0d/util/opensslwrap.sh","./lib/openssl-1.0.0d/util/copy.pl","./lib/openssl-1.0.0d/util/mkerr.pl","./lib/openssl-1.0.0d/util/deltree.com","./lib/openssl-1.0.0d/util/mkdir-p.pl","./lib/openssl-1.0.0d/util/x86asm.sh","./lib/openssl-1.0.0d/util/mkrc.pl","./lib/openssl-1.0.0d/util/pod2mantest.pod","./lib/openssl-1.0.0d/util/cygwin.sh","./lib/openssl-1.0.0d/util/mkstack.pl","./lib/openssl-1.0.0d/util/pl/netware.pl","./lib/openssl-1.0.0d/util/pl/BC-32.pl","./lib/openssl-1.0.0d/util/pl/linux.pl","./lib/openssl-1.0.0d/util/pl/OS2-EMX.pl","./lib/openssl-1.0.0d/util/pl/Mingw32.pl","./lib/openssl-1.0.0d/util/pl/VC-32.pl","./lib/openssl-1.0.0d/util/pl/unix.pl","./lib/openssl-1.0.0d/util/pl/ultrix.pl","./lib/openssl-1.0.0d/test/casttest.c","./lib/openssl-1.0.0d/test/CAssdh.cnf","./lib/openssl-1.0.0d/test/pkcs7.pem","./lib/openssl-1.0.0d/test/tsid","./lib/openssl-1.0.0d/test/testss","./lib/openssl-1.0.0d/test/pkcs7-1.pem","./lib/openssl-1.0.0d/test/testsid.pem","./lib/openssl-1.0.0d/test/ectest.c","./lib/openssl-1.0.0d/test/mdc2test.c","./lib/openssl-1.0.0d/test/test_padlock","./lib/openssl-1.0.0d/test/bctest.com","./lib/openssl-1.0.0d/test/testrsa.pem","./lib/openssl-1.0.0d/test/testenc.com","./lib/openssl-1.0.0d/test/tpkcs7","./lib/openssl-1.0.0d/test/r160test.c","./lib/openssl-1.0.0d/test/CAssrsa.cnf","./lib/openssl-1.0.0d/test/tpkcs7d.com","./lib/openssl-1.0.0d/test/treq.com","./lib/openssl-1.0.0d/test/dsatest.c","./lib/openssl-1.0.0d/test/testp7.pem","./lib/openssl-1.0.0d/test/maketests.com","./lib/openssl-1.0.0d/test/Uss.cnf","./lib/openssl-1.0.0d/test/rc5test.c","./lib/openssl-1.0.0d/test/testca.com","./lib/openssl-1.0.0d/test/Sssdsa.cnf","./lib/openssl-1.0.0d/test/tx509","./lib/openssl-1.0.0d/test/testtsa.com","./lib/openssl-1.0.0d/test/test.cnf","./lib/openssl-1.0.0d/test/enginetest.c","./lib/openssl-1.0.0d/test/bftest.c","./lib/openssl-1.0.0d/test/md2test.c","./lib/openssl-1.0.0d/test/pkits-test.pl","./lib/openssl-1.0.0d/test/bctest","./lib/openssl-1.0.0d/test/trsa","./lib/openssl-1.0.0d/test/ideatest.c","./lib/openssl-1.0.0d/test/rsa_test.c","./lib/openssl-1.0.0d/test/md4test.c","./lib/openssl-1.0.0d/test/CAtsa.cnf","./lib/openssl-1.0.0d/test/igetest.c","./lib/openssl-1.0.0d/test/CAssdsa.cnf","./lib/openssl-1.0.0d/test/evptests.txt","./lib/openssl-1.0.0d/test/testtsa","./lib/openssl-1.0.0d/test/testcrl.pem","./lib/openssl-1.0.0d/test/dhtest.c","./lib/openssl-1.0.0d/test/v3-cert2.pem","./lib/openssl-1.0.0d/test/md5test.c","./lib/openssl-1.0.0d/test/testenc","./lib/openssl-1.0.0d/test/tpkcs7d","./lib/openssl-1.0.0d/test/rc2test.c","./lib/openssl-1.0.0d/test/P1ss.cnf","./lib/openssl-1.0.0d/test/v3-cert1.pem","./lib/openssl-1.0.0d/test/Makefile","./lib/openssl-1.0.0d/test/ecdsatest.c","./lib/openssl-1.0.0d/test/dummytest.c","./lib/openssl-1.0.0d/test/testsslproxy","./lib/openssl-1.0.0d/test/shatest.c","./lib/openssl-1.0.0d/test/randtest.c","./lib/openssl-1.0.0d/test/testca","./lib/openssl-1.0.0d/test/tverify.com","./lib/openssl-1.0.0d/test/testreq2.pem","./lib/openssl-1.0.0d/test/sha256t.c","./lib/openssl-1.0.0d/test/testgen","./lib/openssl-1.0.0d/test/destest.c","./lib/openssl-1.0.0d/test/bntest.c","./lib/openssl-1.0.0d/test/hmactest.c","./lib/openssl-1.0.0d/test/tcrl.com","./lib/openssl-1.0.0d/test/bntest.com","./lib/openssl-1.0.0d/test/tests.com","./lib/openssl-1.0.0d/test/testx509.pem","./lib/openssl-1.0.0d/test/smcont.txt","./lib/openssl-1.0.0d/test/treq","./lib/openssl-1.0.0d/test/asn1test.c","./lib/openssl-1.0.0d/test/sha1test.c","./lib/openssl-1.0.0d/test/cms-examples.pl","./lib/openssl-1.0.0d/test/P2ss.cnf","./lib/openssl-1.0.0d/test/ecdhtest.c","./lib/openssl-1.0.0d/test/tsid.com","./lib/openssl-1.0.0d/test/testssl.com","./lib/openssl-1.0.0d/test/evp_test.c","./lib/openssl-1.0.0d/test/tpkcs7.com","./lib/openssl-1.0.0d/test/rc4test.c","./lib/openssl-1.0.0d/test/testss.com","./lib/openssl-1.0.0d/test/testgen.com","./lib/openssl-1.0.0d/test/tcrl","./lib/openssl-1.0.0d/test/CAss.cnf","./lib/openssl-1.0.0d/test/VMSca-response.1","./lib/openssl-1.0.0d/test/tx509.com","./lib/openssl-1.0.0d/test/rmdtest.c","./lib/openssl-1.0.0d/test/cms-test.pl","./lib/openssl-1.0.0d/test/wp_test.c","./lib/openssl-1.0.0d/test/sha512t.c","./lib/openssl-1.0.0d/test/jpaketest.c","./lib/openssl-1.0.0d/test/exptest.c","./lib/openssl-1.0.0d/test/Sssrsa.cnf","./lib/openssl-1.0.0d/test/times","./lib/openssl-1.0.0d/test/testssl","./lib/openssl-1.0.0d/test/VMSca-response.2","./lib/openssl-1.0.0d/test/trsa.com","./lib/openssl-1.0.0d/test/methtest.c","./lib/openssl-1.0.0d/test/ssltest.c","./lib/openssl-1.0.0d/test/smime-certs/smrsa2.pem","./lib/openssl-1.0.0d/test/smime-certs/smdsa3.pem","./lib/openssl-1.0.0d/test/smime-certs/smdsa2.pem","./lib/openssl-1.0.0d/test/smime-certs/smdsa1.pem","./lib/openssl-1.0.0d/test/smime-certs/smrsa1.pem","./lib/openssl-1.0.0d/test/smime-certs/smdsap.pem","./lib/openssl-1.0.0d/test/smime-certs/smrsa3.pem","./lib/openssl-1.0.0d/test/smime-certs/smroot.pem","./lib/openssl-1.0.0d/engines/e_gmp_err.c","./lib/openssl-1.0.0d/engines/e_capi.ec","./lib/openssl-1.0.0d/engines/e_nuron.ec","./lib/openssl-1.0.0d/engines/e_sureware.c","./lib/openssl-1.0.0d/engines/e_ubsec_err.h","./lib/openssl-1.0.0d/engines/makeengines.com","./lib/openssl-1.0.0d/engines/e_gmp_err.h","./lib/openssl-1.0.0d/engines/e_padlock.ec","./lib/openssl-1.0.0d/engines/capierr.bat","./lib/openssl-1.0.0d/engines/e_nuron_err.c","./lib/openssl-1.0.0d/engines/e_capi_err.c","./lib/openssl-1.0.0d/engines/ia64.opt","./lib/openssl-1.0.0d/engines/e_gmp.ec","./lib/openssl-1.0.0d/engines/e_chil.c","./lib/openssl-1.0.0d/engines/e_aep_err.c","./lib/openssl-1.0.0d/engines/e_atalla.ec","./lib/openssl-1.0.0d/engines/e_padlock.c","./lib/openssl-1.0.0d/engines/e_atalla_err.h","./lib/openssl-1.0.0d/engines/e_4758cca.ec","./lib/openssl-1.0.0d/engines/e_aep_err.h","./lib/openssl-1.0.0d/engines/e_4758cca_err.c","./lib/openssl-1.0.0d/engines/engine_vector.mar","./lib/openssl-1.0.0d/engines/e_sureware.ec","./lib/openssl-1.0.0d/engines/Makefile","./lib/openssl-1.0.0d/engines/e_cswift.ec","./lib/openssl-1.0.0d/engines/alpha.opt","./lib/openssl-1.0.0d/engines/e_gmp.c","./lib/openssl-1.0.0d/engines/e_sureware_err.h","./lib/openssl-1.0.0d/engines/e_ubsec.ec","./lib/openssl-1.0.0d/engines/e_capi.c","./lib/openssl-1.0.0d/engines/e_chil_err.c","./lib/openssl-1.0.0d/engines/e_atalla_err.c","./lib/openssl-1.0.0d/engines/e_cswift_err.h","./lib/openssl-1.0.0d/engines/e_nuron_err.h","./lib/openssl-1.0.0d/engines/vax.opt","./lib/openssl-1.0.0d/engines/e_aep.ec","./lib/openssl-1.0.0d/engines/e_cswift_err.c","./lib/openssl-1.0.0d/engines/e_cswift.c","./lib/openssl-1.0.0d/engines/e_4758cca_err.h","./lib/openssl-1.0.0d/engines/e_nuron.c","./lib/openssl-1.0.0d/engines/e_ubsec.c","./lib/openssl-1.0.0d/engines/axp.opt","./lib/openssl-1.0.0d/engines/e_capi_err.h","./lib/openssl-1.0.0d/engines/e_chil.ec","./lib/openssl-1.0.0d/engines/e_4758cca.c","./lib/openssl-1.0.0d/engines/e_sureware_err.c","./lib/openssl-1.0.0d/engines/e_aep.c","./lib/openssl-1.0.0d/engines/e_chil_err.h","./lib/openssl-1.0.0d/engines/e_ubsec_err.c","./lib/openssl-1.0.0d/engines/e_atalla.c","./lib/openssl-1.0.0d/engines/vendor_defns/hw_ubsec.h","./lib/openssl-1.0.0d/engines/vendor_defns/sureware.h","./lib/openssl-1.0.0d/engines/vendor_defns/hwcryptohook.h","./lib/openssl-1.0.0d/engines/vendor_defns/cswift.h","./lib/openssl-1.0.0d/engines/vendor_defns/hw_4758_cca.h","./lib/openssl-1.0.0d/engines/vendor_defns/atalla.h","./lib/openssl-1.0.0d/engines/vendor_defns/aep.h","./lib/openssl-1.0.0d/engines/ccgost/gost_keywrap.c","./lib/openssl-1.0.0d/engines/ccgost/gost2001.c","./lib/openssl-1.0.0d/engines/ccgost/gost_keywrap.h","./lib/openssl-1.0.0d/engines/ccgost/gost_params.c","./lib/openssl-1.0.0d/engines/ccgost/README.gost","./lib/openssl-1.0.0d/engines/ccgost/e_gost_err.h","./lib/openssl-1.0.0d/engines/ccgost/gost94_keyx.c","./lib/openssl-1.0.0d/engines/ccgost/gost_crypt.c","./lib/openssl-1.0.0d/engines/ccgost/gost.ec","./lib/openssl-1.0.0d/engines/ccgost/gost_lcl.h","./lib/openssl-1.0.0d/engines/ccgost/gosthash.h","./lib/openssl-1.0.0d/engines/ccgost/gostsum.c","./lib/openssl-1.0.0d/engines/ccgost/gost89.h","./lib/openssl-1.0.0d/engines/ccgost/gost_md.c","./lib/openssl-1.0.0d/engines/ccgost/gost_ameth.c","./lib/openssl-1.0.0d/engines/ccgost/gosthash.c","./lib/openssl-1.0.0d/engines/ccgost/e_gost_err.proto","./lib/openssl-1.0.0d/engines/ccgost/gost_pmeth.c","./lib/openssl-1.0.0d/engines/ccgost/gost2001_keyx.c","./lib/openssl-1.0.0d/engines/ccgost/Makefile","./lib/openssl-1.0.0d/engines/ccgost/gost89.c","./lib/openssl-1.0.0d/engines/ccgost/gost2001_keyx.h","./lib/openssl-1.0.0d/engines/ccgost/gost_params.h","./lib/openssl-1.0.0d/engines/ccgost/gost_eng.c","./lib/openssl-1.0.0d/engines/ccgost/gost_asn1.c","./lib/openssl-1.0.0d/engines/ccgost/e_gost_err.c","./lib/openssl-1.0.0d/engines/ccgost/gost_ctl.c","./lib/openssl-1.0.0d/engines/ccgost/gost_sign.c","./lib/openssl-1.0.0d/crypto/LPdir_nyi.c","./lib/openssl-1.0.0d/crypto/opensslconf.h.in","./lib/openssl-1.0.0d/crypto/sparcv9cap.c","./lib/openssl-1.0.0d/crypto/LPdir_unix.c","./lib/openssl-1.0.0d/crypto/LPdir_win.c","./lib/openssl-1.0.0d/crypto/o_str.c","./lib/openssl-1.0.0d/crypto/o_dir.c","./lib/openssl-1.0.0d/crypto/crypto-lib.com","./lib/openssl-1.0.0d/crypto/ia64cpuid.S","./lib/openssl-1.0.0d/crypto/mem.c","./lib/openssl-1.0.0d/crypto/opensslconf.h.bak","./lib/openssl-1.0.0d/crypto/s390xcpuid.S","./lib/openssl-1.0.0d/crypto/cversion.c","./lib/openssl-1.0.0d/crypto/ex_data.c","./lib/openssl-1.0.0d/crypto/LPdir_win32.c","./lib/openssl-1.0.0d/crypto/cpt_err.c","./lib/openssl-1.0.0d/crypto/o_str.h","./lib/openssl-1.0.0d/crypto/x86cpuid.pl","./lib/openssl-1.0.0d/crypto/symhacks.h","./lib/openssl-1.0.0d/crypto/opensslv.h","./lib/openssl-1.0.0d/crypto/mem_dbg.c","./lib/openssl-1.0.0d/crypto/LPdir_vms.c","./lib/openssl-1.0.0d/crypto/Makefile","./lib/openssl-1.0.0d/crypto/crypto.h","./lib/openssl-1.0.0d/crypto/cryptlib.h","./lib/openssl-1.0.0d/crypto/ebcdic.c","./lib/openssl-1.0.0d/crypto/mem_clr.c","./lib/openssl-1.0.0d/crypto/alphacpuid.pl","./lib/openssl-1.0.0d/crypto/o_time.h","./lib/openssl-1.0.0d/crypto/md32_common.h","./lib/openssl-1.0.0d/crypto/s390xcap.c","./lib/openssl-1.0.0d/crypto/o_dir_test.c","./lib/openssl-1.0.0d/crypto/o_time.c","./lib/openssl-1.0.0d/crypto/opensslconf.h","./lib/openssl-1.0.0d/crypto/install.com","./lib/openssl-1.0.0d/crypto/o_dir.h","./lib/openssl-1.0.0d/crypto/ppccpuid.pl","./lib/openssl-1.0.0d/crypto/x86_64cpuid.pl","./lib/openssl-1.0.0d/crypto/ebcdic.h","./lib/openssl-1.0.0d/crypto/sparccpuid.S","./lib/openssl-1.0.0d/crypto/ossl_typ.h","./lib/openssl-1.0.0d/crypto/cryptlib.c","./lib/openssl-1.0.0d/crypto/uid.c","./lib/openssl-1.0.0d/crypto/LPdir_wince.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_attr.c","./lib/openssl-1.0.0d/crypto/pkcs12/pk12err.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_key.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_mutl.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_npas.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_p8d.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_utl.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_kiss.c","./lib/openssl-1.0.0d/crypto/pkcs12/Makefile","./lib/openssl-1.0.0d/crypto/pkcs12/p12_init.c","./lib/openssl-1.0.0d/crypto/pkcs12/pkcs12.h","./lib/openssl-1.0.0d/crypto/pkcs12/p12_decr.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_asn.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_add.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_crt.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_p8e.c","./lib/openssl-1.0.0d/crypto/pkcs12/p12_crpt.c","./lib/openssl-1.0.0d/crypto/asn1/a_utf8.c.alt","./lib/openssl-1.0.0d/crypto/asn1/tasn_enc.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_bool.c","./lib/openssl-1.0.0d/crypto/asn1/x_req.c","./lib/openssl-1.0.0d/crypto/asn1/x_attrib.c","./lib/openssl-1.0.0d/crypto/asn1/tasn_prn.c.alt","./lib/openssl-1.0.0d/crypto/asn1/evp_asn1.c","./lib/openssl-1.0.0d/crypto/asn1/x_pubkey.c","./lib/openssl-1.0.0d/crypto/asn1/nsseq.c","./lib/openssl-1.0.0d/crypto/asn1/t_bitst.c","./lib/openssl-1.0.0d/crypto/asn1/tasn_utl.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_bitstr.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_print.c.alt","./lib/openssl-1.0.0d/crypto/asn1/bio_asn1.c.alt","./lib/openssl-1.0.0d/crypto/asn1/bio_asn1.c","./lib/openssl-1.0.0d/crypto/asn1/tasn_enc.c","./lib/openssl-1.0.0d/crypto/asn1/f_enum.c.alt","./lib/openssl-1.0.0d/crypto/asn1/tasn_dec.c","./lib/openssl-1.0.0d/crypto/asn1/x_info.c.alt","./lib/openssl-1.0.0d/crypto/asn1/charmap.h","./lib/openssl-1.0.0d/crypto/asn1/a_time.c.alt","./lib/openssl-1.0.0d/crypto/asn1/tasn_fre.c","./lib/openssl-1.0.0d/crypto/asn1/i2d_pr.c","./lib/openssl-1.0.0d/crypto/asn1/a_sign.c","./lib/openssl-1.0.0d/crypto/asn1/asn_moid.c","./lib/openssl-1.0.0d/crypto/asn1/a_type.c","./lib/openssl-1.0.0d/crypto/asn1/a_enum.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_i2d_fp.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_exten.c.alt","./lib/openssl-1.0.0d/crypto/asn1/p5_pbev2.c.alt","./lib/openssl-1.0.0d/crypto/asn1/asn1_par.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_int.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_int.c","./lib/openssl-1.0.0d/crypto/asn1/ameth_lib.c","./lib/openssl-1.0.0d/crypto/asn1/a_bytes.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_verify.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_set.c.alt","./lib/openssl-1.0.0d/crypto/asn1/i2d_pu.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_utctm.c","./lib/openssl-1.0.0d/crypto/asn1/x_sig.c","./lib/openssl-1.0.0d/crypto/asn1/a_dup.c.alt","./lib/openssl-1.0.0d/crypto/asn1/tasn_dec.c.alt","./lib/openssl-1.0.0d/crypto/asn1/t_x509.c.alt","./lib/openssl-1.0.0d/crypto/asn1/asn1.h","./lib/openssl-1.0.0d/crypto/asn1/a_gentm.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_nx509.c.alt","./lib/openssl-1.0.0d/crypto/asn1/asn_mime.c","./lib/openssl-1.0.0d/crypto/asn1/f_int.c","./lib/openssl-1.0.0d/crypto/asn1/a_set.c","./lib/openssl-1.0.0d/crypto/asn1/a_strnid.c","./lib/openssl-1.0.0d/crypto/asn1/asn1_err.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_long.c.alt","./lib/openssl-1.0.0d/crypto/asn1/t_req.c","./lib/openssl-1.0.0d/crypto/asn1/tasn_fre.c.alt","./lib/openssl-1.0.0d/crypto/asn1/p8_pkey.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_attrib.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_spki.c.alt","./lib/openssl-1.0.0d/crypto/asn1/t_spki.c.alt","./lib/openssl-1.0.0d/crypto/asn1/d2i_pu.c","./lib/openssl-1.0.0d/crypto/asn1/asn1_par.c","./lib/openssl-1.0.0d/crypto/asn1/asn_pack.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_info.c","./lib/openssl-1.0.0d/crypto/asn1/p5_pbe.c","./lib/openssl-1.0.0d/crypto/asn1/a_digest.c","./lib/openssl-1.0.0d/crypto/asn1/x_crl.c.alt","./lib/openssl-1.0.0d/crypto/asn1/asn1_locl.h","./lib/openssl-1.0.0d/crypto/asn1/nsseq.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_bignum.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_d2i_fp.c","./lib/openssl-1.0.0d/crypto/asn1/x_x509.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_pkey.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_bignum.c","./lib/openssl-1.0.0d/crypto/asn1/i2d_pr.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_sign.c.alt","./lib/openssl-1.0.0d/crypto/asn1/t_pkey.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_verify.c","./lib/openssl-1.0.0d/crypto/asn1/Makefile","./lib/openssl-1.0.0d/crypto/asn1/x_crl.c","./lib/openssl-1.0.0d/crypto/asn1/a_utctm.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_long.c","./lib/openssl-1.0.0d/crypto/asn1/x_req.c.alt","./lib/openssl-1.0.0d/crypto/asn1/bio_ndef.c","./lib/openssl-1.0.0d/crypto/asn1/t_x509a.c","./lib/openssl-1.0.0d/crypto/asn1/a_d2i_fp.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_i2d_fp.c","./lib/openssl-1.0.0d/crypto/asn1/a_time.c","./lib/openssl-1.0.0d/crypto/asn1/x_sig.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_mbstr.c","./lib/openssl-1.0.0d/crypto/asn1/asn1_lib.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_spki.c","./lib/openssl-1.0.0d/crypto/asn1/t_pkey.c","./lib/openssl-1.0.0d/crypto/asn1/t_crl.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_enum.c","./lib/openssl-1.0.0d/crypto/asn1/evp_asn1.c.alt","./lib/openssl-1.0.0d/crypto/asn1/charmap.pl","./lib/openssl-1.0.0d/crypto/asn1/x_pkey.c","./lib/openssl-1.0.0d/crypto/asn1/a_utf8.c","./lib/openssl-1.0.0d/crypto/asn1/d2i_pu.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_nx509.c","./lib/openssl-1.0.0d/crypto/asn1/asn1_mac.h","./lib/openssl-1.0.0d/crypto/asn1/asn1_lib.c","./lib/openssl-1.0.0d/crypto/asn1/tasn_prn.c","./lib/openssl-1.0.0d/crypto/asn1/a_print.c","./lib/openssl-1.0.0d/crypto/asn1/tasn_typ.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_algor.c","./lib/openssl-1.0.0d/crypto/asn1/tasn_typ.c","./lib/openssl-1.0.0d/crypto/asn1/asn_pack.c","./lib/openssl-1.0.0d/crypto/asn1/a_object.c","./lib/openssl-1.0.0d/crypto/asn1/a_octet.c","./lib/openssl-1.0.0d/crypto/asn1/n_pkey.c.alt","./lib/openssl-1.0.0d/crypto/asn1/asn1_gen.c.alt","./lib/openssl-1.0.0d/crypto/asn1/asn_mime.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_strex.c","./lib/openssl-1.0.0d/crypto/asn1/x_x509a.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_octet.c.alt","./lib/openssl-1.0.0d/crypto/asn1/ameth_lib.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_dup.c","./lib/openssl-1.0.0d/crypto/asn1/a_object.c.alt","./lib/openssl-1.0.0d/crypto/asn1/t_x509a.c.alt","./lib/openssl-1.0.0d/crypto/asn1/p8_pkey.c","./lib/openssl-1.0.0d/crypto/asn1/f_string.c","./lib/openssl-1.0.0d/crypto/asn1/asn1_err.c","./lib/openssl-1.0.0d/crypto/asn1/x_val.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_algor.c.alt","./lib/openssl-1.0.0d/crypto/asn1/asn1_gen.c","./lib/openssl-1.0.0d/crypto/asn1/a_bytes.c","./lib/openssl-1.0.0d/crypto/asn1/x_val.c","./lib/openssl-1.0.0d/crypto/asn1/x_name.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_x509.c","./lib/openssl-1.0.0d/crypto/asn1/x_name.c","./lib/openssl-1.0.0d/crypto/asn1/p5_pbev2.c","./lib/openssl-1.0.0d/crypto/asn1/t_crl.c","./lib/openssl-1.0.0d/crypto/asn1/a_strex.c.alt","./lib/openssl-1.0.0d/crypto/asn1/asn1t.h","./lib/openssl-1.0.0d/crypto/asn1/x_x509a.c","./lib/openssl-1.0.0d/crypto/asn1/tasn_new.c.alt","./lib/openssl-1.0.0d/crypto/asn1/n_pkey.c","./lib/openssl-1.0.0d/crypto/asn1/t_bitst.c.alt","./lib/openssl-1.0.0d/crypto/asn1/t_req.c.alt","./lib/openssl-1.0.0d/crypto/asn1/i2d_pu.c","./lib/openssl-1.0.0d/crypto/asn1/a_digest.c.alt","./lib/openssl-1.0.0d/crypto/asn1/x_pubkey.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_type.c.alt","./lib/openssl-1.0.0d/crypto/asn1/bio_ndef.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_bitstr.c","./lib/openssl-1.0.0d/crypto/asn1/f_int.c.alt","./lib/openssl-1.0.0d/crypto/asn1/d2i_pr.c.alt","./lib/openssl-1.0.0d/crypto/asn1/f_string.c.alt","./lib/openssl-1.0.0d/crypto/asn1/a_gentm.c","./lib/openssl-1.0.0d/crypto/asn1/a_strnid.c.alt","./lib/openssl-1.0.0d/crypto/asn1/tasn_new.c","./lib/openssl-1.0.0d/crypto/asn1/asn_moid.c.alt","./lib/openssl-1.0.0d/crypto/asn1/t_x509.c","./lib/openssl-1.0.0d/crypto/asn1/a_mbstr.c.alt","./lib/openssl-1.0.0d/crypto/asn1/tasn_utl.c","./lib/openssl-1.0.0d/crypto/asn1/x_exten.c","./lib/openssl-1.0.0d/crypto/asn1/d2i_pr.c","./lib/openssl-1.0.0d/crypto/asn1/a_bool.c.alt","./lib/openssl-1.0.0d/crypto/asn1/p5_pbe.c.alt","./lib/openssl-1.0.0d/crypto/asn1/t_spki.c","./lib/openssl-1.0.0d/crypto/asn1/f_enum.c","./lib/openssl-1.0.0d/crypto/modes/ofb128.c","./lib/openssl-1.0.0d/crypto/modes/ctr128.c","./lib/openssl-1.0.0d/crypto/modes/modes.h","./lib/openssl-1.0.0d/crypto/modes/cts128.c","./lib/openssl-1.0.0d/crypto/modes/cfb128.c","./lib/openssl-1.0.0d/crypto/modes/Makefile","./lib/openssl-1.0.0d/crypto/modes/cbc128.c","./lib/openssl-1.0.0d/crypto/objects/o_names.c.alt","./lib/openssl-1.0.0d/crypto/objects/objxref.pl","./lib/openssl-1.0.0d/crypto/objects/obj_err.c","./lib/openssl-1.0.0d/crypto/objects/obj_xref.h","./lib/openssl-1.0.0d/crypto/objects/obj_lib.c.alt","./lib/openssl-1.0.0d/crypto/objects/obj_xref.c.alt","./lib/openssl-1.0.0d/crypto/objects/objects.h","./lib/openssl-1.0.0d/crypto/objects/objects.txt","./lib/openssl-1.0.0d/crypto/objects/obj_lib.c","./lib/openssl-1.0.0d/crypto/objects/obj_dat.c.alt","./lib/openssl-1.0.0d/crypto/objects/obj_err.c.alt","./lib/openssl-1.0.0d/crypto/objects/o_names.c","./lib/openssl-1.0.0d/crypto/objects/Makefile","./lib/openssl-1.0.0d/crypto/objects/objects.README","./lib/openssl-1.0.0d/crypto/objects/obj_mac.h","./lib/openssl-1.0.0d/crypto/objects/objects.pl","./lib/openssl-1.0.0d/crypto/objects/obj_dat.c","./lib/openssl-1.0.0d/crypto/objects/obj_mac.num","./lib/openssl-1.0.0d/crypto/objects/obj_dat.h","./lib/openssl-1.0.0d/crypto/objects/obj_xref.txt","./lib/openssl-1.0.0d/crypto/objects/obj_xref.c","./lib/openssl-1.0.0d/crypto/objects/obj_dat.pl","./lib/openssl-1.0.0d/crypto/lhash/lhash.c.alt","./lib/openssl-1.0.0d/crypto/lhash/lh_test.c.alt","./lib/openssl-1.0.0d/crypto/lhash/lh_stats.c","./lib/openssl-1.0.0d/crypto/lhash/Makefile","./lib/openssl-1.0.0d/crypto/lhash/lhash.h","./lib/openssl-1.0.0d/crypto/lhash/lh_stats.c.alt","./lib/openssl-1.0.0d/crypto/lhash/num.pl","./lib/openssl-1.0.0d/crypto/lhash/lh_test.c","./lib/openssl-1.0.0d/crypto/lhash/lhash.c","./lib/openssl-1.0.0d/crypto/rc4/rc4_enc.c.alt","./lib/openssl-1.0.0d/crypto/rc4/rrc4.doc","./lib/openssl-1.0.0d/crypto/rc4/rc4speed.c.alt","./lib/openssl-1.0.0d/crypto/rc4/rc4.c.alt","./lib/openssl-1.0.0d/crypto/rc4/rc4test.c.alt","./lib/openssl-1.0.0d/crypto/rc4/Makefile","./lib/openssl-1.0.0d/crypto/rc4/rc4_skey.c.alt","./lib/openssl-1.0.0d/crypto/rc4/rc4s.cpp","./lib/openssl-1.0.0d/crypto/rc4/rc4.c","./lib/openssl-1.0.0d/crypto/rc4/rc4_enc.c","./lib/openssl-1.0.0d/crypto/rc4/rc4_locl.h","./lib/openssl-1.0.0d/crypto/rc4/rc4test.c","./lib/openssl-1.0.0d/crypto/rc4/rc4.h","./lib/openssl-1.0.0d/crypto/rc4/rc4_skey.c","./lib/openssl-1.0.0d/crypto/rc4/rc4speed.c","./lib/openssl-1.0.0d/crypto/rc4/asm/rc4-x86_64.pl","./lib/openssl-1.0.0d/crypto/rc4/asm/rc4-s390x.pl","./lib/openssl-1.0.0d/crypto/rc4/asm/rc4-586.pl","./lib/openssl-1.0.0d/crypto/rc4/asm/rc4-ia64.pl","./lib/openssl-1.0.0d/crypto/stack/safestack.h","./lib/openssl-1.0.0d/crypto/stack/Makefile","./lib/openssl-1.0.0d/crypto/stack/stack.c.alt","./lib/openssl-1.0.0d/crypto/stack/stack.c","./lib/openssl-1.0.0d/crypto/stack/stack.h","./lib/openssl-1.0.0d/crypto/dsa/dsa_pmeth.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_lib.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa_ossl.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_gen.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa.h","./lib/openssl-1.0.0d/crypto/dsa/dsatest.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa_ossl.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsatest.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_depr.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa_gen.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_prn.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa_locl.h","./lib/openssl-1.0.0d/crypto/dsa/dsa_ameth.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_key.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsagen.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_err.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_vrf.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_sign.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa_asn1.c","./lib/openssl-1.0.0d/crypto/dsa/Makefile","./lib/openssl-1.0.0d/crypto/dsa/dsa_vrf.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa_prn.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_err.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa_key.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_asn1.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa_sign.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_lib.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_pmeth.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsa_depr.c","./lib/openssl-1.0.0d/crypto/dsa/dsa_ameth.c.alt","./lib/openssl-1.0.0d/crypto/dsa/dsagen.c.alt","./lib/openssl-1.0.0d/crypto/dsa/README","./lib/openssl-1.0.0d/crypto/dsa/fips186a.txt","./lib/openssl-1.0.0d/crypto/dh/dh_key.c","./lib/openssl-1.0.0d/crypto/dh/dh_check.c","./lib/openssl-1.0.0d/crypto/dh/dh_asn1.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh_check.c.alt","./lib/openssl-1.0.0d/crypto/dh/dhtest.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh192.pem","./lib/openssl-1.0.0d/crypto/dh/dh_ameth.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh_key.c.alt","./lib/openssl-1.0.0d/crypto/dh/generate","./lib/openssl-1.0.0d/crypto/dh/p512.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh_asn1.c","./lib/openssl-1.0.0d/crypto/dh/example","./lib/openssl-1.0.0d/crypto/dh/dh_err.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh_lib.c.alt","./lib/openssl-1.0.0d/crypto/dh/p1024.c","./lib/openssl-1.0.0d/crypto/dh/dhtest.c","./lib/openssl-1.0.0d/crypto/dh/dh_depr.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh_lib.c","./lib/openssl-1.0.0d/crypto/dh/Makefile","./lib/openssl-1.0.0d/crypto/dh/dh_ameth.c","./lib/openssl-1.0.0d/crypto/dh/dh_err.c","./lib/openssl-1.0.0d/crypto/dh/p192.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh_prn.c","./lib/openssl-1.0.0d/crypto/dh/dh4096.pem","./lib/openssl-1.0.0d/crypto/dh/dh512.pem","./lib/openssl-1.0.0d/crypto/dh/p512.c","./lib/openssl-1.0.0d/crypto/dh/p192.c","./lib/openssl-1.0.0d/crypto/dh/dh2048.pem","./lib/openssl-1.0.0d/crypto/dh/dh.h","./lib/openssl-1.0.0d/crypto/dh/dh_pmeth.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh1024.pem","./lib/openssl-1.0.0d/crypto/dh/dh_gen.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh_depr.c","./lib/openssl-1.0.0d/crypto/dh/p1024.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh_gen.c","./lib/openssl-1.0.0d/crypto/dh/dh_prn.c.alt","./lib/openssl-1.0.0d/crypto/dh/dh_pmeth.c","./lib/openssl-1.0.0d/crypto/krb5/Makefile","./lib/openssl-1.0.0d/crypto/krb5/krb5_asn.c","./lib/openssl-1.0.0d/crypto/krb5/krb5_asn.h","./lib/openssl-1.0.0d/crypto/ecdh/ech_locl.h","./lib/openssl-1.0.0d/crypto/ecdh/ech_ossl.c","./lib/openssl-1.0.0d/crypto/ecdh/ecdhtest.c.alt","./lib/openssl-1.0.0d/crypto/ecdh/ech_err.c","./lib/openssl-1.0.0d/crypto/ecdh/ech_lib.c","./lib/openssl-1.0.0d/crypto/ecdh/ech_key.c.alt","./lib/openssl-1.0.0d/crypto/ecdh/ech_key.c","./lib/openssl-1.0.0d/crypto/ecdh/Makefile","./lib/openssl-1.0.0d/crypto/ecdh/ech_err.c.alt","./lib/openssl-1.0.0d/crypto/ecdh/ecdh.h","./lib/openssl-1.0.0d/crypto/ecdh/ecdhtest.c","./lib/openssl-1.0.0d/crypto/ecdh/ech_ossl.c.alt","./lib/openssl-1.0.0d/crypto/ecdh/ech_lib.c.alt","./lib/openssl-1.0.0d/crypto/bio/bf_buff.c.alt","./lib/openssl-1.0.0d/crypto/bio/bss_null.c.alt","./lib/openssl-1.0.0d/crypto/bio/bss_file.c.alt","./lib/openssl-1.0.0d/crypto/bio/bio_err.c","./lib/openssl-1.0.0d/crypto/bio/bio_lcl.h","./lib/openssl-1.0.0d/crypto/bio/bss_mem.c","./lib/openssl-1.0.0d/crypto/bio/bss_fd.c.alt","./lib/openssl-1.0.0d/crypto/bio/bf_nbio.c","./lib/openssl-1.0.0d/crypto/bio/bss_log.c","./lib/openssl-1.0.0d/crypto/bio/bf_nbio.c.alt","./lib/openssl-1.0.0d/crypto/bio/bio_cb.c.alt","./lib/openssl-1.0.0d/crypto/bio/bss_sock.c.alt","./lib/openssl-1.0.0d/crypto/bio/bss_bio.c.alt","./lib/openssl-1.0.0d/crypto/bio/bss_acpt.c.alt","./lib/openssl-1.0.0d/crypto/bio/bio.h","./lib/openssl-1.0.0d/crypto/bio/bss_null.c","./lib/openssl-1.0.0d/crypto/bio/bss_fd.c","./lib/openssl-1.0.0d/crypto/bio/bss_sock.c","./lib/openssl-1.0.0d/crypto/bio/bss_acpt.c","./lib/openssl-1.0.0d/crypto/bio/bss_dgram.c","./lib/openssl-1.0.0d/crypto/bio/bio_lib.c.alt","./lib/openssl-1.0.0d/crypto/bio/b_sock.c","./lib/openssl-1.0.0d/crypto/bio/Makefile","./lib/openssl-1.0.0d/crypto/bio/b_sock.c.alt","./lib/openssl-1.0.0d/crypto/bio/b_dump.c","./lib/openssl-1.0.0d/crypto/bio/bio_cb.c","./lib/openssl-1.0.0d/crypto/bio/bss_rtcp.c","./lib/openssl-1.0.0d/crypto/bio/bss_conn.c","./lib/openssl-1.0.0d/crypto/bio/bss_mem.c.alt","./lib/openssl-1.0.0d/crypto/bio/bf_lbuf.c","./lib/openssl-1.0.0d/crypto/bio/bss_conn.c.alt","./lib/openssl-1.0.0d/crypto/bio/bf_lbuf.c.alt","./lib/openssl-1.0.0d/crypto/bio/bf_buff.c","./lib/openssl-1.0.0d/crypto/bio/bss_bio.c","./lib/openssl-1.0.0d/crypto/bio/bio_lib.c","./lib/openssl-1.0.0d/crypto/bio/b_dump.c.alt","./lib/openssl-1.0.0d/crypto/bio/bss_rtcp.c.alt","./lib/openssl-1.0.0d/crypto/bio/bio_err.c.alt","./lib/openssl-1.0.0d/crypto/bio/bss_dgram.c.alt","./lib/openssl-1.0.0d/crypto/bio/b_print.c.alt","./lib/openssl-1.0.0d/crypto/bio/b_print.c","./lib/openssl-1.0.0d/crypto/bio/bf_null.c","./lib/openssl-1.0.0d/crypto/bio/bss_file.c","./lib/openssl-1.0.0d/crypto/bio/bf_null.c.alt","./lib/openssl-1.0.0d/crypto/bio/bss_log.c.alt","./lib/openssl-1.0.0d/crypto/md5/md5test.c","./lib/openssl-1.0.0d/crypto/md5/md5.c","./lib/openssl-1.0.0d/crypto/md5/Makefile","./lib/openssl-1.0.0d/crypto/md5/md5_dgst.c","./lib/openssl-1.0.0d/crypto/md5/md5.h","./lib/openssl-1.0.0d/crypto/md5/md5_locl.h","./lib/openssl-1.0.0d/crypto/md5/md5_one.c","./lib/openssl-1.0.0d/crypto/md5/md5s.cpp","./lib/openssl-1.0.0d/crypto/md5/asm/md5-ia64.S","./lib/openssl-1.0.0d/crypto/md5/asm/md5-x86_64.pl","./lib/openssl-1.0.0d/crypto/md5/asm/md5-586.pl","./lib/openssl-1.0.0d/crypto/camellia/cmll_cbc.c","./lib/openssl-1.0.0d/crypto/camellia/cmll_ofb.c","./lib/openssl-1.0.0d/crypto/camellia/cmll_misc.c","./lib/openssl-1.0.0d/crypto/camellia/Makefile","./lib/openssl-1.0.0d/crypto/camellia/cmll_ctr.c","./lib/openssl-1.0.0d/crypto/camellia/camellia.c","./lib/openssl-1.0.0d/crypto/camellia/cmll_cfb.c","./lib/openssl-1.0.0d/crypto/camellia/camellia.h","./lib/openssl-1.0.0d/crypto/camellia/cmll_locl.h","./lib/openssl-1.0.0d/crypto/camellia/cmll_ecb.c","./lib/openssl-1.0.0d/crypto/camellia/asm/cmll-x86_64.pl","./lib/openssl-1.0.0d/crypto/camellia/asm/cmll-x86.pl","./lib/openssl-1.0.0d/crypto/bf/bf_cfb64.c","./lib/openssl-1.0.0d/crypto/bf/bfspeed.c","./lib/openssl-1.0.0d/crypto/bf/INSTALL","./lib/openssl-1.0.0d/crypto/bf/bf_cbc.c","./lib/openssl-1.0.0d/crypto/bf/blowfish.h","./lib/openssl-1.0.0d/crypto/bf/bftest.c","./lib/openssl-1.0.0d/crypto/bf/bfs.cpp","./lib/openssl-1.0.0d/crypto/bf/bf_opts.c","./lib/openssl-1.0.0d/crypto/bf/bf_locl.h","./lib/openssl-1.0.0d/crypto/bf/bf_ofb64.c","./lib/openssl-1.0.0d/crypto/bf/Makefile","./lib/openssl-1.0.0d/crypto/bf/bf_ecb.c","./lib/openssl-1.0.0d/crypto/bf/bf_enc.c","./lib/openssl-1.0.0d/crypto/bf/COPYRIGHT","./lib/openssl-1.0.0d/crypto/bf/README","./lib/openssl-1.0.0d/crypto/bf/bf_pi.h","./lib/openssl-1.0.0d/crypto/bf/bf_skey.c","./lib/openssl-1.0.0d/crypto/bf/VERSION","./lib/openssl-1.0.0d/crypto/bf/asm/bf-586.pl","./lib/openssl-1.0.0d/crypto/bf/asm/readme","./lib/openssl-1.0.0d/crypto/bf/asm/bf-686.pl","./lib/openssl-1.0.0d/crypto/err/err_all.c.alt","./lib/openssl-1.0.0d/crypto/err/err_all.c","./lib/openssl-1.0.0d/crypto/err/err_prn.c","./lib/openssl-1.0.0d/crypto/err/err.c.alt","./lib/openssl-1.0.0d/crypto/err/Makefile","./lib/openssl-1.0.0d/crypto/err/err.h","./lib/openssl-1.0.0d/crypto/err/err_prn.c.alt","./lib/openssl-1.0.0d/crypto/err/err.c","./lib/openssl-1.0.0d/crypto/err/openssl.ec","./lib/openssl-1.0.0d/crypto/dso/dso_openssl.c","./lib/openssl-1.0.0d/crypto/dso/dso_vms.c","./lib/openssl-1.0.0d/crypto/dso/dso_win32.c.alt","./lib/openssl-1.0.0d/crypto/dso/dso_vms.c.alt","./lib/openssl-1.0.0d/crypto/dso/dso_null.c.alt","./lib/openssl-1.0.0d/crypto/dso/dso_dl.c.alt","./lib/openssl-1.0.0d/crypto/dso/dso_beos.c","./lib/openssl-1.0.0d/crypto/dso/dso_dlfcn.c","./lib/openssl-1.0.0d/crypto/dso/dso_null.c","./lib/openssl-1.0.0d/crypto/dso/Makefile","./lib/openssl-1.0.0d/crypto/dso/dso_lib.c","./lib/openssl-1.0.0d/crypto/dso/dso_lib.c.alt","./lib/openssl-1.0.0d/crypto/dso/dso_err.c","./lib/openssl-1.0.0d/crypto/dso/dso_dl.c","./lib/openssl-1.0.0d/crypto/dso/dso_win32.c","./lib/openssl-1.0.0d/crypto/dso/dso_err.c.alt","./lib/openssl-1.0.0d/crypto/dso/dso.h","./lib/openssl-1.0.0d/crypto/dso/README","./lib/openssl-1.0.0d/crypto/dso/dso_beos.c.alt","./lib/openssl-1.0.0d/crypto/dso/dso_dlfcn.c.alt","./lib/openssl-1.0.0d/crypto/dso/dso_openssl.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec2_mult.c","./lib/openssl-1.0.0d/crypto/ec/ectest.c","./lib/openssl-1.0.0d/crypto/ec/ec_mult.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_key.c","./lib/openssl-1.0.0d/crypto/ec/ecp_smpl.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_check.c.alt","./lib/openssl-1.0.0d/crypto/ec/ectest.c.alt","./lib/openssl-1.0.0d/crypto/ec/ecp_nist.c","./lib/openssl-1.0.0d/crypto/ec/ec_curve.c","./lib/openssl-1.0.0d/crypto/ec/ecp_nist.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_cvt.c.alt","./lib/openssl-1.0.0d/crypto/ec/ecp_smpl.c","./lib/openssl-1.0.0d/crypto/ec/ec_ameth.c","./lib/openssl-1.0.0d/crypto/ec/ec_asn1.c","./lib/openssl-1.0.0d/crypto/ec/ec_lib.c","./lib/openssl-1.0.0d/crypto/ec/ec_mult.c","./lib/openssl-1.0.0d/crypto/ec/ec_ameth.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec2_smpl.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_pmeth.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_lib.c.alt","./lib/openssl-1.0.0d/crypto/ec/Makefile","./lib/openssl-1.0.0d/crypto/ec/ec.h","./lib/openssl-1.0.0d/crypto/ec/ec_err.c","./lib/openssl-1.0.0d/crypto/ec/ec_pmeth.c","./lib/openssl-1.0.0d/crypto/ec/ec2_mult.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_err.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_curve.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_asn1.c.alt","./lib/openssl-1.0.0d/crypto/ec/eck_prn.c","./lib/openssl-1.0.0d/crypto/ec/ec_key.c.alt","./lib/openssl-1.0.0d/crypto/ec/eck_prn.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_print.c.alt","./lib/openssl-1.0.0d/crypto/ec/ecp_mont.c.alt","./lib/openssl-1.0.0d/crypto/ec/ec_print.c","./lib/openssl-1.0.0d/crypto/ec/ec_cvt.c","./lib/openssl-1.0.0d/crypto/ec/ec_check.c","./lib/openssl-1.0.0d/crypto/ec/ec_lcl.h","./lib/openssl-1.0.0d/crypto/ec/ecp_mont.c","./lib/openssl-1.0.0d/crypto/ec/ec2_smpl.c","./lib/openssl-1.0.0d/crypto/hmac/hm_ameth.c.alt","./lib/openssl-1.0.0d/crypto/hmac/hmac.c","./lib/openssl-1.0.0d/crypto/hmac/hm_pmeth.c","./lib/openssl-1.0.0d/crypto/hmac/hm_ameth.c","./lib/openssl-1.0.0d/crypto/hmac/Makefile","./lib/openssl-1.0.0d/crypto/hmac/hmac.c.alt","./lib/openssl-1.0.0d/crypto/hmac/hmactest.c","./lib/openssl-1.0.0d/crypto/hmac/hm_pmeth.c.alt","./lib/openssl-1.0.0d/crypto/hmac/hmac.h","./lib/openssl-1.0.0d/crypto/hmac/hmactest.c.alt","./lib/openssl-1.0.0d/crypto/rand/rand_egd.c","./lib/openssl-1.0.0d/crypto/rand/randtest.c.alt","./lib/openssl-1.0.0d/crypto/rand/rand_egd.c.alt","./lib/openssl-1.0.0d/crypto/rand/rand_nw.c.alt","./lib/openssl-1.0.0d/crypto/rand/rand_os2.c.alt","./lib/openssl-1.0.0d/crypto/rand/randfile.c","./lib/openssl-1.0.0d/crypto/rand/rand_win.c.alt","./lib/openssl-1.0.0d/crypto/rand/rand_unix.c","./lib/openssl-1.0.0d/crypto/rand/rand_err.c","./lib/openssl-1.0.0d/crypto/rand/md_rand.c","./lib/openssl-1.0.0d/crypto/rand/rand_os2.c","./lib/openssl-1.0.0d/crypto/rand/Makefile","./lib/openssl-1.0.0d/crypto/rand/md_rand.c.alt","./lib/openssl-1.0.0d/crypto/rand/rand_err.c.alt","./lib/openssl-1.0.0d/crypto/rand/randtest.c","./lib/openssl-1.0.0d/crypto/rand/rand_win.c","./lib/openssl-1.0.0d/crypto/rand/rand.h","./lib/openssl-1.0.0d/crypto/rand/rand_vms.c.alt","./lib/openssl-1.0.0d/crypto/rand/rand_lib.c","./lib/openssl-1.0.0d/crypto/rand/rand_lcl.h","./lib/openssl-1.0.0d/crypto/rand/rand_unix.c.alt","./lib/openssl-1.0.0d/crypto/rand/rand_vms.c","./lib/openssl-1.0.0d/crypto/rand/rand_lib.c.alt","./lib/openssl-1.0.0d/crypto/rand/randfile.c.alt","./lib/openssl-1.0.0d/crypto/rand/rand_nw.c","./lib/openssl-1.0.0d/crypto/pem/pem_pkey.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_info.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_x509.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_x509.c","./lib/openssl-1.0.0d/crypto/pem/pvkfmt.c","./lib/openssl-1.0.0d/crypto/pem/pem.h","./lib/openssl-1.0.0d/crypto/pem/pem_pk8.c","./lib/openssl-1.0.0d/crypto/pem/pem_xaux.c","./lib/openssl-1.0.0d/crypto/pem/pem_all.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_pkey.c","./lib/openssl-1.0.0d/crypto/pem/pem_xaux.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_oth.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_all.c","./lib/openssl-1.0.0d/crypto/pem/pem_lib.c","./lib/openssl-1.0.0d/crypto/pem/pem_info.c","./lib/openssl-1.0.0d/crypto/pem/Makefile","./lib/openssl-1.0.0d/crypto/pem/message","./lib/openssl-1.0.0d/crypto/pem/pem2.h","./lib/openssl-1.0.0d/crypto/pem/pem_lib.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_err.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_sign.c.alt","./lib/openssl-1.0.0d/crypto/pem/pkcs7.lis","./lib/openssl-1.0.0d/crypto/pem/pem_seal.c.alt","./lib/openssl-1.0.0d/crypto/pem/pvkfmt.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_sign.c","./lib/openssl-1.0.0d/crypto/pem/pem_err.c","./lib/openssl-1.0.0d/crypto/pem/pem_pk8.c.alt","./lib/openssl-1.0.0d/crypto/pem/pem_oth.c","./lib/openssl-1.0.0d/crypto/pem/pem_seal.c","./lib/openssl-1.0.0d/crypto/ts/ts_req_utils.c","./lib/openssl-1.0.0d/crypto/ts/ts_rsp_sign.c","./lib/openssl-1.0.0d/crypto/ts/ts_verify_ctx.c","./lib/openssl-1.0.0d/crypto/ts/ts_req_print.c","./lib/openssl-1.0.0d/crypto/ts/ts_rsp_print.c","./lib/openssl-1.0.0d/crypto/ts/ts_lib.c","./lib/openssl-1.0.0d/crypto/ts/Makefile","./lib/openssl-1.0.0d/crypto/ts/ts.h","./lib/openssl-1.0.0d/crypto/ts/ts_conf.c","./lib/openssl-1.0.0d/crypto/ts/ts_err.c","./lib/openssl-1.0.0d/crypto/ts/ts_rsp_utils.c","./lib/openssl-1.0.0d/crypto/ts/ts_asn1.c","./lib/openssl-1.0.0d/crypto/ts/ts_rsp_verify.c","./lib/openssl-1.0.0d/crypto/store/str_locl.h","./lib/openssl-1.0.0d/crypto/store/str_mem.c","./lib/openssl-1.0.0d/crypto/store/Makefile","./lib/openssl-1.0.0d/crypto/store/str_meth.c","./lib/openssl-1.0.0d/crypto/store/str_lib.c","./lib/openssl-1.0.0d/crypto/store/str_err.c","./lib/openssl-1.0.0d/crypto/store/README","./lib/openssl-1.0.0d/crypto/store/store.h","./lib/openssl-1.0.0d/crypto/buffer/buf_err.c.alt","./lib/openssl-1.0.0d/crypto/buffer/buffer.h","./lib/openssl-1.0.0d/crypto/buffer/buffer.c","./lib/openssl-1.0.0d/crypto/buffer/Makefile","./lib/openssl-1.0.0d/crypto/buffer/buffer.c.alt","./lib/openssl-1.0.0d/crypto/buffer/buf_err.c","./lib/openssl-1.0.0d/crypto/pqueue/pqueue.h","./lib/openssl-1.0.0d/crypto/pqueue/pqueue.c","./lib/openssl-1.0.0d/crypto/pqueue/Makefile","./lib/openssl-1.0.0d/crypto/pqueue/pq_test.c","./lib/openssl-1.0.0d/crypto/des/FILES0","./lib/openssl-1.0.0d/crypto/des/fcrypt_b.c","./lib/openssl-1.0.0d/crypto/des/des.h","./lib/openssl-1.0.0d/crypto/des/str2key.c.alt","./lib/openssl-1.0.0d/crypto/des/Imakefile","./lib/openssl-1.0.0d/crypto/des/speed.c","./lib/openssl-1.0.0d/crypto/des/read_pwd.c","./lib/openssl-1.0.0d/crypto/des/ecb3_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/cfb_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/xcbc_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/dess.cpp","./lib/openssl-1.0.0d/crypto/des/xcbc_enc.c","./lib/openssl-1.0.0d/crypto/des/read2pwd.c.alt","./lib/openssl-1.0.0d/crypto/des/INSTALL","./lib/openssl-1.0.0d/crypto/des/cfb64ede.c","./lib/openssl-1.0.0d/crypto/des/set_key.c.alt","./lib/openssl-1.0.0d/crypto/des/cfb64enc.c.alt","./lib/openssl-1.0.0d/crypto/des/KERBEROS","./lib/openssl-1.0.0d/crypto/des/ede_cbcm_enc.c","./lib/openssl-1.0.0d/crypto/des/enc_read.c.alt","./lib/openssl-1.0.0d/crypto/des/des_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/fcrypt_b.c.alt","./lib/openssl-1.0.0d/crypto/des/speed.c.alt","./lib/openssl-1.0.0d/crypto/des/ecb_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/enc_writ.c","./lib/openssl-1.0.0d/crypto/des/des_enc.c","./lib/openssl-1.0.0d/crypto/des/makefile.bc","./lib/openssl-1.0.0d/crypto/des/options.txt","./lib/openssl-1.0.0d/crypto/des/ecb3_enc.c","./lib/openssl-1.0.0d/crypto/des/des_old2.c","./lib/openssl-1.0.0d/crypto/des/read_pwd.c.alt","./lib/openssl-1.0.0d/crypto/des/cbc_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/ecb_enc.c","./lib/openssl-1.0.0d/crypto/des/rpw.c.alt","./lib/openssl-1.0.0d/crypto/des/ofb64enc.c","./lib/openssl-1.0.0d/crypto/des/cbc_cksm.c.alt","./lib/openssl-1.0.0d/crypto/des/set_key.c","./lib/openssl-1.0.0d/crypto/des/des_old.c","./lib/openssl-1.0.0d/crypto/des/des_opts.c","./lib/openssl-1.0.0d/crypto/des/Makefile","./lib/openssl-1.0.0d/crypto/des/des.c.alt","./lib/openssl-1.0.0d/crypto/des/rand_key.c.alt","./lib/openssl-1.0.0d/crypto/des/cbc_enc.c","./lib/openssl-1.0.0d/crypto/des/pcbc_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/pcbc_enc.c","./lib/openssl-1.0.0d/crypto/des/qud_cksm.c.alt","./lib/openssl-1.0.0d/crypto/des/typemap","./lib/openssl-1.0.0d/crypto/des/ofb64ede.c","./lib/openssl-1.0.0d/crypto/des/rpc_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/des_opts.c.alt","./lib/openssl-1.0.0d/crypto/des/ofb_enc.c","./lib/openssl-1.0.0d/crypto/des/des3s.cpp","./lib/openssl-1.0.0d/crypto/des/destest.c","./lib/openssl-1.0.0d/crypto/des/ede_cbcm_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/ncbc_enc.c","./lib/openssl-1.0.0d/crypto/des/ofb64ede.c.alt","./lib/openssl-1.0.0d/crypto/des/cbc_cksm.c","./lib/openssl-1.0.0d/crypto/des/enc_writ.c.alt","./lib/openssl-1.0.0d/crypto/des/qud_cksm.c","./lib/openssl-1.0.0d/crypto/des/rpw.c","./lib/openssl-1.0.0d/crypto/des/cbc3_enc.c","./lib/openssl-1.0.0d/crypto/des/read2pwd.c","./lib/openssl-1.0.0d/crypto/des/COPYRIGHT","./lib/openssl-1.0.0d/crypto/des/des.pod","./lib/openssl-1.0.0d/crypto/des/README","./lib/openssl-1.0.0d/crypto/des/ofb64enc.c.alt","./lib/openssl-1.0.0d/crypto/des/des_old.h","./lib/openssl-1.0.0d/crypto/des/cfb_enc.c","./lib/openssl-1.0.0d/crypto/des/DES.xs","./lib/openssl-1.0.0d/crypto/des/rand_key.c","./lib/openssl-1.0.0d/crypto/des/fcrypt.c","./lib/openssl-1.0.0d/crypto/des/des.c","./lib/openssl-1.0.0d/crypto/des/rpc_enc.c","./lib/openssl-1.0.0d/crypto/des/des_old.c.alt","./lib/openssl-1.0.0d/crypto/des/DES.pm","./lib/openssl-1.0.0d/crypto/des/str2key.c","./lib/openssl-1.0.0d/crypto/des/des_ver.h","./lib/openssl-1.0.0d/crypto/des/destest.c.alt","./lib/openssl-1.0.0d/crypto/des/cfb64enc.c","./lib/openssl-1.0.0d/crypto/des/rpc_des.h","./lib/openssl-1.0.0d/crypto/des/ofb_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/enc_read.c","./lib/openssl-1.0.0d/crypto/des/des_locl.h","./lib/openssl-1.0.0d/crypto/des/des_old2.c.alt","./lib/openssl-1.0.0d/crypto/des/cfb64ede.c.alt","./lib/openssl-1.0.0d/crypto/des/spr.h","./lib/openssl-1.0.0d/crypto/des/des-lib.com","./lib/openssl-1.0.0d/crypto/des/cbc3_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/ncbc_enc.c.alt","./lib/openssl-1.0.0d/crypto/des/VERSION","./lib/openssl-1.0.0d/crypto/des/fcrypt.c.alt","./lib/openssl-1.0.0d/crypto/des/t/test","./lib/openssl-1.0.0d/crypto/des/asm/readme","./lib/openssl-1.0.0d/crypto/des/asm/desboth.pl","./lib/openssl-1.0.0d/crypto/des/asm/crypt586.pl","./lib/openssl-1.0.0d/crypto/des/asm/des_enc.m4","./lib/openssl-1.0.0d/crypto/des/asm/des-586.pl","./lib/openssl-1.0.0d/crypto/des/times/hpux.cc","./lib/openssl-1.0.0d/crypto/des/times/aix.cc","./lib/openssl-1.0.0d/crypto/des/times/686-200.fre","./lib/openssl-1.0.0d/crypto/des/times/usparc.cc","./lib/openssl-1.0.0d/crypto/des/times/alpha.cc","./lib/openssl-1.0.0d/crypto/des/times/486-50.sol","./lib/openssl-1.0.0d/crypto/des/times/586-100.lnx","./lib/openssl-1.0.0d/crypto/des/times/sparc.gcc","./lib/openssl-1.0.0d/crypto/comp/comp.h","./lib/openssl-1.0.0d/crypto/comp/Makefile","./lib/openssl-1.0.0d/crypto/comp/comp_err.c","./lib/openssl-1.0.0d/crypto/comp/c_rle.c","./lib/openssl-1.0.0d/crypto/comp/c_zlib.c","./lib/openssl-1.0.0d/crypto/comp/comp_lib.c","./lib/openssl-1.0.0d/crypto/md2/md2.h","./lib/openssl-1.0.0d/crypto/md2/md2test.c","./lib/openssl-1.0.0d/crypto/md2/Makefile","./lib/openssl-1.0.0d/crypto/md2/md2.c","./lib/openssl-1.0.0d/crypto/md2/md2_one.c","./lib/openssl-1.0.0d/crypto/md2/md2_dgst.c","./lib/openssl-1.0.0d/crypto/whrlpool/wp_dgst.c","./lib/openssl-1.0.0d/crypto/whrlpool/whrlpool.h","./lib/openssl-1.0.0d/crypto/whrlpool/wp_locl.h","./lib/openssl-1.0.0d/crypto/whrlpool/Makefile","./lib/openssl-1.0.0d/crypto/whrlpool/wp_block.c","./lib/openssl-1.0.0d/crypto/whrlpool/wp_test.c","./lib/openssl-1.0.0d/crypto/whrlpool/asm/wp-x86_64.pl","./lib/openssl-1.0.0d/crypto/whrlpool/asm/wp-mmx.pl","./lib/openssl-1.0.0d/crypto/bn/bn_mpi.c","./lib/openssl-1.0.0d/crypto/bn/bn_exp2.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_add.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_err.c.alt","./lib/openssl-1.0.0d/crypto/bn/divtest.c","./lib/openssl-1.0.0d/crypto/bn/bn.mul","./lib/openssl-1.0.0d/crypto/bn/bn_mont.c","./lib/openssl-1.0.0d/crypto/bn/exp.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_mod.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_nist.c","./lib/openssl-1.0.0d/crypto/bn/exp.c","./lib/openssl-1.0.0d/crypto/bn/bn_mpi.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_print.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_sqrt.c","./lib/openssl-1.0.0d/crypto/bn/bn_const.c","./lib/openssl-1.0.0d/crypto/bn/bn_shift.c.alt","./lib/openssl-1.0.0d/crypto/bn/bntest.c.alt","./lib/openssl-1.0.0d/crypto/bn/exptest.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_mod.c","./lib/openssl-1.0.0d/crypto/bn/bn_rand.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_recp.c","./lib/openssl-1.0.0d/crypto/bn/vms-helper.c","./lib/openssl-1.0.0d/crypto/bn/bn_word.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_sqrt.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_add.c","./lib/openssl-1.0.0d/crypto/bn/bn_kron.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_sqr.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_gf2m.c","./lib/openssl-1.0.0d/crypto/bn/bn_word.c","./lib/openssl-1.0.0d/crypto/bn/expspeed.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_lib.c","./lib/openssl-1.0.0d/crypto/bn/todo","./lib/openssl-1.0.0d/crypto/bn/bn_recp.c.alt","./lib/openssl-1.0.0d/crypto/bn/Makefile","./lib/openssl-1.0.0d/crypto/bn/bn_nist.c.alt","./lib/openssl-1.0.0d/crypto/bn/vms-helper.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_mul.c","./lib/openssl-1.0.0d/crypto/bn/bn_blind.c","./lib/openssl-1.0.0d/crypto/bn/divtest.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_exp2.c","./lib/openssl-1.0.0d/crypto/bn/bn_depr.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_prime.h","./lib/openssl-1.0.0d/crypto/bn/bn_sqr.c","./lib/openssl-1.0.0d/crypto/bn/bn_mul.c.alt","./lib/openssl-1.0.0d/crypto/bn/bnspeed.c","./lib/openssl-1.0.0d/crypto/bn/bn_kron.c","./lib/openssl-1.0.0d/crypto/bn/bn_blind.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_asm.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_exp.c","./lib/openssl-1.0.0d/crypto/bn/bn_ctx.c","./lib/openssl-1.0.0d/crypto/bn/bn_const.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_prime.pl","./lib/openssl-1.0.0d/crypto/bn/bn_gf2m.c.alt","./lib/openssl-1.0.0d/crypto/bn/bnspeed.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_prime.c","./lib/openssl-1.0.0d/crypto/bn/expspeed.c","./lib/openssl-1.0.0d/crypto/bn/bntest.c","./lib/openssl-1.0.0d/crypto/bn/bn_lib.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_mont.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_err.c","./lib/openssl-1.0.0d/crypto/bn/bn.h","./lib/openssl-1.0.0d/crypto/bn/bn_prime.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_print.c","./lib/openssl-1.0.0d/crypto/bn/bn_div.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_exp.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_gcd.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_shift.c","./lib/openssl-1.0.0d/crypto/bn/bn_gcd.c","./lib/openssl-1.0.0d/crypto/bn/bn_lcl.h","./lib/openssl-1.0.0d/crypto/bn/bn_depr.c","./lib/openssl-1.0.0d/crypto/bn/bn_div.c","./lib/openssl-1.0.0d/crypto/bn/bn_ctx.c.alt","./lib/openssl-1.0.0d/crypto/bn/bn_asm.c","./lib/openssl-1.0.0d/crypto/bn/bn_rand.c","./lib/openssl-1.0.0d/crypto/bn/exptest.c","./lib/openssl-1.0.0d/crypto/bn/asm/vms.mar","./lib/openssl-1.0.0d/crypto/bn/asm/ppc64-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/ppc.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86_64-gcc.c","./lib/openssl-1.0.0d/crypto/bn/asm/sparcv9-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/via-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86.pl","./lib/openssl-1.0.0d/crypto/bn/asm/pa-risc2.s","./lib/openssl-1.0.0d/crypto/bn/asm/armv4-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/mips3-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/bn-586.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86_64-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/pa-risc2W.s","./lib/openssl-1.0.0d/crypto/bn/asm/x86-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/s390x.S","./lib/openssl-1.0.0d/crypto/bn/asm/sparcv9a-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/alpha-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/sparcv8plus.S","./lib/openssl-1.0.0d/crypto/bn/asm/mips3.s","./lib/openssl-1.0.0d/crypto/bn/asm/sparcv8.S","./lib/openssl-1.0.0d/crypto/bn/asm/s390x-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/ppc-mont.pl","./lib/openssl-1.0.0d/crypto/bn/asm/ia64.S","./lib/openssl-1.0.0d/crypto/bn/asm/README","./lib/openssl-1.0.0d/crypto/bn/asm/co-586.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86/mul.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86/sqr.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86/f","./lib/openssl-1.0.0d/crypto/bn/asm/x86/add.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86/comba.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86/div.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86/mul_add.pl","./lib/openssl-1.0.0d/crypto/bn/asm/x86/sub.pl","./lib/openssl-1.0.0d/crypto/txt_db/txt_db.h","./lib/openssl-1.0.0d/crypto/txt_db/Makefile","./lib/openssl-1.0.0d/crypto/txt_db/txt_db.c","./lib/openssl-1.0.0d/crypto/x509/x509_err.c","./lib/openssl-1.0.0d/crypto/x509/x509_ext.c","./lib/openssl-1.0.0d/crypto/x509/by_file.c","./lib/openssl-1.0.0d/crypto/x509/x509cset.c","./lib/openssl-1.0.0d/crypto/x509/x509name.c","./lib/openssl-1.0.0d/crypto/x509/x509_att.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509spki.c","./lib/openssl-1.0.0d/crypto/x509/x509_err.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_obj.c","./lib/openssl-1.0.0d/crypto/x509/by_dir.c","./lib/openssl-1.0.0d/crypto/x509/x509_d2.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_trs.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_trs.c","./lib/openssl-1.0.0d/crypto/x509/x_all.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509.h","./lib/openssl-1.0.0d/crypto/x509/x509_req.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_def.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509type.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_lu.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_cmp.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_vpm.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_txt.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_r2x.c","./lib/openssl-1.0.0d/crypto/x509/x509_d2.c","./lib/openssl-1.0.0d/crypto/x509/by_dir.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_v3.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509cset.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_vfy.h","./lib/openssl-1.0.0d/crypto/x509/Makefile","./lib/openssl-1.0.0d/crypto/x509/x509_r2x.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_ext.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509rset.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509rset.c","./lib/openssl-1.0.0d/crypto/x509/x509type.c","./lib/openssl-1.0.0d/crypto/x509/x509_cmp.c","./lib/openssl-1.0.0d/crypto/x509/x509_txt.c","./lib/openssl-1.0.0d/crypto/x509/x509_att.c","./lib/openssl-1.0.0d/crypto/x509/x509_set.c.alt","./lib/openssl-1.0.0d/crypto/x509/x_all.c","./lib/openssl-1.0.0d/crypto/x509/x509_set.c","./lib/openssl-1.0.0d/crypto/x509/x509_obj.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_lu.c","./lib/openssl-1.0.0d/crypto/x509/x509_req.c","./lib/openssl-1.0.0d/crypto/x509/by_file.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_vpm.c","./lib/openssl-1.0.0d/crypto/x509/x509_vfy.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509_def.c","./lib/openssl-1.0.0d/crypto/x509/x509_v3.c","./lib/openssl-1.0.0d/crypto/x509/x509_vfy.c","./lib/openssl-1.0.0d/crypto/x509/x509spki.c.alt","./lib/openssl-1.0.0d/crypto/x509/x509name.c.alt","./lib/openssl-1.0.0d/crypto/ui/ui_locl.h","./lib/openssl-1.0.0d/crypto/ui/ui.h","./lib/openssl-1.0.0d/crypto/ui/ui_err.c","./lib/openssl-1.0.0d/crypto/ui/ui_compat.h","./lib/openssl-1.0.0d/crypto/ui/ui_compat.c","./lib/openssl-1.0.0d/crypto/ui/Makefile","./lib/openssl-1.0.0d/crypto/ui/ui_openssl.c","./lib/openssl-1.0.0d/crypto/ui/ui_lib.c","./lib/openssl-1.0.0d/crypto/ui/ui_util.c","./lib/openssl-1.0.0d/crypto/sha/sha256.c","./lib/openssl-1.0.0d/crypto/sha/sha512.c","./lib/openssl-1.0.0d/crypto/sha/sha1.c.alt","./lib/openssl-1.0.0d/crypto/sha/shatest.c.alt","./lib/openssl-1.0.0d/crypto/sha/sha_dgst.c.alt","./lib/openssl-1.0.0d/crypto/sha/sha256t.c.alt","./lib/openssl-1.0.0d/crypto/sha/sha_dgst.c","./lib/openssl-1.0.0d/crypto/sha/sha_locl.h","./lib/openssl-1.0.0d/crypto/sha/sha1test.c.alt","./lib/openssl-1.0.0d/crypto/sha/Makefile","./lib/openssl-1.0.0d/crypto/sha/shatest.c","./lib/openssl-1.0.0d/crypto/sha/sha1dgst.c.alt","./lib/openssl-1.0.0d/crypto/sha/sha1.c","./lib/openssl-1.0.0d/crypto/sha/sha256t.c","./lib/openssl-1.0.0d/crypto/sha/sha1dgst.c","./lib/openssl-1.0.0d/crypto/sha/sha_one.c.alt","./lib/openssl-1.0.0d/crypto/sha/sha.c","./lib/openssl-1.0.0d/crypto/sha/sha512.c.alt","./lib/openssl-1.0.0d/crypto/sha/sha.h","./lib/openssl-1.0.0d/crypto/sha/sha1test.c","./lib/openssl-1.0.0d/crypto/sha/sha.c.alt","./lib/openssl-1.0.0d/crypto/sha/sha1_one.c","./lib/openssl-1.0.0d/crypto/sha/sha_one.c","./lib/openssl-1.0.0d/crypto/sha/sha256.c.alt","./lib/openssl-1.0.0d/crypto/sha/sha512t.c","./lib/openssl-1.0.0d/crypto/sha/sha512t.c.alt","./lib/openssl-1.0.0d/crypto/sha/sha1_one.c.alt","./lib/openssl-1.0.0d/crypto/sha/asm/sha256-586.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha1-ppc.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha512-s390x.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha512-sparcv9.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha512-x86_64.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha1-s390x.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha256-armv4.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha1-armv4-large.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha1-sparcv9a.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha512-586.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha1-586.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha1-thumb.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha1-ia64.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha1-sparcv9.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha512-ia64.pl","./lib/openssl-1.0.0d/crypto/sha/asm/README","./lib/openssl-1.0.0d/crypto/sha/asm/sha1-x86_64.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha512-armv4.pl","./lib/openssl-1.0.0d/crypto/sha/asm/sha512-ppc.pl","./lib/openssl-1.0.0d/crypto/rc5/rc5_enc.c","./lib/openssl-1.0.0d/crypto/rc5/rc5test.c","./lib/openssl-1.0.0d/crypto/rc5/rc5speed.c","./lib/openssl-1.0.0d/crypto/rc5/rc5_skey.c","./lib/openssl-1.0.0d/crypto/rc5/Makefile","./lib/openssl-1.0.0d/crypto/rc5/rc5_ecb.c","./lib/openssl-1.0.0d/crypto/rc5/rc5s.cpp","./lib/openssl-1.0.0d/crypto/rc5/rc5ofb64.c","./lib/openssl-1.0.0d/crypto/rc5/rc5cfb64.c","./lib/openssl-1.0.0d/crypto/rc5/rc5_locl.h","./lib/openssl-1.0.0d/crypto/rc5/rc5.h","./lib/openssl-1.0.0d/crypto/rc5/asm/rc5-586.pl","./lib/openssl-1.0.0d/crypto/x509v3/v3_pci.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_prn.c","./lib/openssl-1.0.0d/crypto/x509v3/v3conf.c","./lib/openssl-1.0.0d/crypto/x509v3/pcy_node.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_pku.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_purp.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_skey.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_ia5.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/tabtest.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_int.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_utl.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_bcons.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/pcy_map.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_extku.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_bcons.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_pcons.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_lib.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_info.c","./lib/openssl-1.0.0d/crypto/x509v3/ext_dat.h","./lib/openssl-1.0.0d/crypto/x509v3/v3_akey.c","./lib/openssl-1.0.0d/crypto/x509v3/v3err.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_genn.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3prin.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_ocsp.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_addr.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_enum.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_addr.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_purp.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_crld.c","./lib/openssl-1.0.0d/crypto/x509v3/tabtest.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_conf.c","./lib/openssl-1.0.0d/crypto/x509v3/pcy_tree.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_akeya.c","./lib/openssl-1.0.0d/crypto/x509v3/v3err.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_asid.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_ncons.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_pku.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/Makefile","./lib/openssl-1.0.0d/crypto/x509v3/v3_extku.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_ia5.c","./lib/openssl-1.0.0d/crypto/x509v3/v3prin.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_bitst.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_genn.c","./lib/openssl-1.0.0d/crypto/x509v3/pcy_lib.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_utl.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_akeya.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/pcy_cache.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_cpols.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_conf.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_int.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/pcy_cache.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_enum.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/pcy_lib.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_pmaps.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_sxnet.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_alt.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_pcons.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_pci.c","./lib/openssl-1.0.0d/crypto/x509v3/x509v3.h","./lib/openssl-1.0.0d/crypto/x509v3/v3_bitst.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_lib.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_sxnet.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3conf.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_crld.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_pcia.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_akey.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/pcy_tree.c","./lib/openssl-1.0.0d/crypto/x509v3/pcy_data.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/pcy_int.h","./lib/openssl-1.0.0d/crypto/x509v3/v3_alt.c","./lib/openssl-1.0.0d/crypto/x509v3/pcy_node.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_ocsp.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_cpols.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/pcy_data.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_ncons.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_info.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_prn.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_pcia.c.alt","./lib/openssl-1.0.0d/crypto/x509v3/v3_skey.c","./lib/openssl-1.0.0d/crypto/x509v3/pcy_map.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_pmaps.c","./lib/openssl-1.0.0d/crypto/x509v3/v3_asid.c.alt","./lib/openssl-1.0.0d/crypto/threads/ptest.bat","./lib/openssl-1.0.0d/crypto/threads/mttest.c","./lib/openssl-1.0.0d/crypto/threads/profile.sh","./lib/openssl-1.0.0d/crypto/threads/pthreads-vms.com","./lib/openssl-1.0.0d/crypto/threads/pthread2.sh","./lib/openssl-1.0.0d/crypto/threads/th-lock.c","./lib/openssl-1.0.0d/crypto/threads/netware.bat","./lib/openssl-1.0.0d/crypto/threads/solaris.sh","./lib/openssl-1.0.0d/crypto/threads/README","./lib/openssl-1.0.0d/crypto/threads/purify.sh","./lib/openssl-1.0.0d/crypto/threads/win32.bat","./lib/openssl-1.0.0d/crypto/threads/pthread.sh","./lib/openssl-1.0.0d/crypto/idea/idea_lcl.h","./lib/openssl-1.0.0d/crypto/idea/idea_spd.c","./lib/openssl-1.0.0d/crypto/idea/i_ofb64.c","./lib/openssl-1.0.0d/crypto/idea/ideatest.c","./lib/openssl-1.0.0d/crypto/idea/i_ecb.c","./lib/openssl-1.0.0d/crypto/idea/Makefile","./lib/openssl-1.0.0d/crypto/idea/i_cfb64.c","./lib/openssl-1.0.0d/crypto/idea/idea.h","./lib/openssl-1.0.0d/crypto/idea/i_cbc.c","./lib/openssl-1.0.0d/crypto/idea/version","./lib/openssl-1.0.0d/crypto/idea/i_skey.c","./lib/openssl-1.0.0d/crypto/evp/e_seed.c","./lib/openssl-1.0.0d/crypto/evp/p_open.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_old.c","./lib/openssl-1.0.0d/crypto/evp/evp_lib.c","./lib/openssl-1.0.0d/crypto/evp/e_camellia.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_md5.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_acnf.c","./lib/openssl-1.0.0d/crypto/evp/evp_pkey.c","./lib/openssl-1.0.0d/crypto/evp/e_cast.c.alt","./lib/openssl-1.0.0d/crypto/evp/p_dec.c","./lib/openssl-1.0.0d/crypto/evp/p_open.c","./lib/openssl-1.0.0d/crypto/evp/pmeth_fn.c","./lib/openssl-1.0.0d/crypto/evp/bio_md.c","./lib/openssl-1.0.0d/crypto/evp/e_idea.c","./lib/openssl-1.0.0d/crypto/evp/e_dsa.c","./lib/openssl-1.0.0d/crypto/evp/bio_ok.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_err.c.alt","./lib/openssl-1.0.0d/crypto/evp/p_verify.c.alt","./lib/openssl-1.0.0d/crypto/evp/p_seal.c.alt","./lib/openssl-1.0.0d/crypto/evp/p5_crpt2.c","./lib/openssl-1.0.0d/crypto/evp/evp_pkey.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_camellia.c","./lib/openssl-1.0.0d/crypto/evp/m_dss1.c","./lib/openssl-1.0.0d/crypto/evp/m_md2.c","./lib/openssl-1.0.0d/crypto/evp/pmeth_lib.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_des3.c","./lib/openssl-1.0.0d/crypto/evp/names.c","./lib/openssl-1.0.0d/crypto/evp/e_des3.c.alt","./lib/openssl-1.0.0d/crypto/evp/bio_enc.c","./lib/openssl-1.0.0d/crypto/evp/m_md2.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_dss.c","./lib/openssl-1.0.0d/crypto/evp/m_sigver.c","./lib/openssl-1.0.0d/crypto/evp/e_rc5.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_mdc2.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_key.c","./lib/openssl-1.0.0d/crypto/evp/e_aes.c","./lib/openssl-1.0.0d/crypto/evp/bio_b64.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_null.c","./lib/openssl-1.0.0d/crypto/evp/m_sha1.c","./lib/openssl-1.0.0d/crypto/evp/e_null.c.alt","./lib/openssl-1.0.0d/crypto/evp/c_allc.c","./lib/openssl-1.0.0d/crypto/evp/m_null.c.alt","./lib/openssl-1.0.0d/crypto/evp/p5_crpt.c","./lib/openssl-1.0.0d/crypto/evp/p_seal.c","./lib/openssl-1.0.0d/crypto/evp/e_cast.c","./lib/openssl-1.0.0d/crypto/evp/e_old.c.alt","./lib/openssl-1.0.0d/crypto/evp/p_verify.c","./lib/openssl-1.0.0d/crypto/evp/openbsd_hw.c.alt","./lib/openssl-1.0.0d/crypto/evp/pmeth_fn.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_md5.c","./lib/openssl-1.0.0d/crypto/evp/evptests.txt","./lib/openssl-1.0.0d/crypto/evp/e_aes.c.alt","./lib/openssl-1.0.0d/crypto/evp/pmeth_gn.c","./lib/openssl-1.0.0d/crypto/evp/e_null.c","./lib/openssl-1.0.0d/crypto/evp/e_xcbc_d.c","./lib/openssl-1.0.0d/crypto/evp/c_all.c","./lib/openssl-1.0.0d/crypto/evp/p_enc.c","./lib/openssl-1.0.0d/crypto/evp/e_rc2.c.alt","./lib/openssl-1.0.0d/crypto/evp/encode.c.alt","./lib/openssl-1.0.0d/crypto/evp/Makefile","./lib/openssl-1.0.0d/crypto/evp/evp_pbe.c","./lib/openssl-1.0.0d/crypto/evp/m_ripemd.c","./lib/openssl-1.0.0d/crypto/evp/e_des.c","./lib/openssl-1.0.0d/crypto/evp/encode.c","./lib/openssl-1.0.0d/crypto/evp/p_lib.c.alt","./lib/openssl-1.0.0d/crypto/evp/names.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_lib.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_test.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_seed.c.alt","./lib/openssl-1.0.0d/crypto/evp/bio_b64.c","./lib/openssl-1.0.0d/crypto/evp/e_des.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_acnf.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_md4.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_rc4.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_ecdsa.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_idea.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_sha.c","./lib/openssl-1.0.0d/crypto/evp/m_dss1.c.alt","./lib/openssl-1.0.0d/crypto/evp/p_enc.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_sha1.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_mdc2.c","./lib/openssl-1.0.0d/crypto/evp/e_bf.c.alt","./lib/openssl-1.0.0d/crypto/evp/openbsd_hw.c","./lib/openssl-1.0.0d/crypto/evp/c_alld.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_bf.c","./lib/openssl-1.0.0d/crypto/evp/pmeth_gn.c.alt","./lib/openssl-1.0.0d/crypto/evp/bio_md.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_test.c","./lib/openssl-1.0.0d/crypto/evp/pmeth_lib.c","./lib/openssl-1.0.0d/crypto/evp/p_dec.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_wp.c","./lib/openssl-1.0.0d/crypto/evp/evp_err.c","./lib/openssl-1.0.0d/crypto/evp/evp.h","./lib/openssl-1.0.0d/crypto/evp/e_xcbc_d.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_sigver.c.alt","./lib/openssl-1.0.0d/crypto/evp/p_sign.c","./lib/openssl-1.0.0d/crypto/evp/m_wp.c.alt","./lib/openssl-1.0.0d/crypto/evp/p_sign.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_dsa.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_key.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_sha.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_enc.c.alt","./lib/openssl-1.0.0d/crypto/evp/digest.c","./lib/openssl-1.0.0d/crypto/evp/evp_locl.h","./lib/openssl-1.0.0d/crypto/evp/digest.c.alt","./lib/openssl-1.0.0d/crypto/evp/bio_ok.c","./lib/openssl-1.0.0d/crypto/evp/c_all.c.alt","./lib/openssl-1.0.0d/crypto/evp/c_allc.c.alt","./lib/openssl-1.0.0d/crypto/evp/evp_enc.c","./lib/openssl-1.0.0d/crypto/evp/bio_enc.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_md4.c","./lib/openssl-1.0.0d/crypto/evp/m_dss.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_rc2.c","./lib/openssl-1.0.0d/crypto/evp/c_alld.c","./lib/openssl-1.0.0d/crypto/evp/e_rc4.c","./lib/openssl-1.0.0d/crypto/evp/m_ripemd.c.alt","./lib/openssl-1.0.0d/crypto/evp/e_rc5.c","./lib/openssl-1.0.0d/crypto/evp/evp_pbe.c.alt","./lib/openssl-1.0.0d/crypto/evp/p5_crpt.c.alt","./lib/openssl-1.0.0d/crypto/evp/m_ecdsa.c","./lib/openssl-1.0.0d/crypto/evp/p5_crpt2.c.alt","./lib/openssl-1.0.0d/crypto/evp/p_lib.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_null.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_chk.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_saos.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_pss.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_none.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_saos.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_ssl.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_locl.h","./lib/openssl-1.0.0d/crypto/rsa/rsa_test.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_gen.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_sign.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_asn1.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_test.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_oaep.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_pk1.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_x931.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_lib.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_oaep.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_prn.c.alt","./lib/openssl-1.0.0d/crypto/rsa/Makefile","./lib/openssl-1.0.0d/crypto/rsa/rsa_x931.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_chk.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_lib.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_sign.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_ameth.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_ssl.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_prn.c","./lib/openssl-1.0.0d/crypto/rsa/rsa.h","./lib/openssl-1.0.0d/crypto/rsa/rsa_eay.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_err.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_err.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_depr.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_pmeth.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_null.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_pk1.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_depr.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_asn1.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_none.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_eay.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_pmeth.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_pss.c.alt","./lib/openssl-1.0.0d/crypto/rsa/rsa_gen.c","./lib/openssl-1.0.0d/crypto/rsa/rsa_ameth.c","./lib/openssl-1.0.0d/crypto/cms/cms_io.c","./lib/openssl-1.0.0d/crypto/cms/cms_att.c","./lib/openssl-1.0.0d/crypto/cms/cms_lib.c","./lib/openssl-1.0.0d/crypto/cms/cms_sd.c","./lib/openssl-1.0.0d/crypto/cms/cms_lcl.h","./lib/openssl-1.0.0d/crypto/cms/Makefile","./lib/openssl-1.0.0d/crypto/cms/cms_smime.c","./lib/openssl-1.0.0d/crypto/cms/cms_enc.c","./lib/openssl-1.0.0d/crypto/cms/cms_err.c","./lib/openssl-1.0.0d/crypto/cms/cms_ess.c","./lib/openssl-1.0.0d/crypto/cms/cms_dd.c","./lib/openssl-1.0.0d/crypto/cms/cms_cd.c","./lib/openssl-1.0.0d/crypto/cms/cms_env.c","./lib/openssl-1.0.0d/crypto/cms/cms_asn1.c","./lib/openssl-1.0.0d/crypto/cms/cms.h","./lib/openssl-1.0.0d/crypto/seed/seed_cfb.c","./lib/openssl-1.0.0d/crypto/seed/seed_ecb.c","./lib/openssl-1.0.0d/crypto/seed/seed_cbc.c","./lib/openssl-1.0.0d/crypto/seed/seed.h","./lib/openssl-1.0.0d/crypto/seed/seed_ofb.c","./lib/openssl-1.0.0d/crypto/seed/Makefile","./lib/openssl-1.0.0d/crypto/seed/seed_locl.h","./lib/openssl-1.0.0d/crypto/seed/seed.c","./lib/openssl-1.0.0d/crypto/aes/aes_ofb.c.alt","./lib/openssl-1.0.0d/crypto/aes/aes_misc.c.alt","./lib/openssl-1.0.0d/crypto/aes/aes_misc.c","./lib/openssl-1.0.0d/crypto/aes/aes_locl.h","./lib/openssl-1.0.0d/crypto/aes/aes_x86core.c.alt","./lib/openssl-1.0.0d/crypto/aes/aes.h","./lib/openssl-1.0.0d/crypto/aes/aes_cfb.c.alt","./lib/openssl-1.0.0d/crypto/aes/aes_cbc.c","./lib/openssl-1.0.0d/crypto/aes/aes_ige.c","./lib/openssl-1.0.0d/crypto/aes/aes_wrap.c.alt","./lib/openssl-1.0.0d/crypto/aes/Makefile","./lib/openssl-1.0.0d/crypto/aes/aes_ecb.c.alt","./lib/openssl-1.0.0d/crypto/aes/aes_ofb.c","./lib/openssl-1.0.0d/crypto/aes/aes_ctr.c.alt","./lib/openssl-1.0.0d/crypto/aes/aes_ecb.c","./lib/openssl-1.0.0d/crypto/aes/aes_cbc.c.alt","./lib/openssl-1.0.0d/crypto/aes/README","./lib/openssl-1.0.0d/crypto/aes/aes_ctr.c","./lib/openssl-1.0.0d/crypto/aes/aes_x86core.c","./lib/openssl-1.0.0d/crypto/aes/aes_cfb.c","./lib/openssl-1.0.0d/crypto/aes/aes_ige.c.alt","./lib/openssl-1.0.0d/crypto/aes/aes_core.c.alt","./lib/openssl-1.0.0d/crypto/aes/aes_wrap.c","./lib/openssl-1.0.0d/crypto/aes/aes_core.c","./lib/openssl-1.0.0d/crypto/aes/asm/aes-586.pl","./lib/openssl-1.0.0d/crypto/aes/asm/aes-armv4.pl","./lib/openssl-1.0.0d/crypto/aes/asm/aes-sparcv9.pl","./lib/openssl-1.0.0d/crypto/aes/asm/aes-s390x.pl","./lib/openssl-1.0.0d/crypto/aes/asm/aes-ia64.S","./lib/openssl-1.0.0d/crypto/aes/asm/aes-ppc.pl","./lib/openssl-1.0.0d/crypto/aes/asm/aes-x86_64.pl","./lib/openssl-1.0.0d/crypto/engine/eng_pkey.c","./lib/openssl-1.0.0d/crypto/engine/eng_init.c","./lib/openssl-1.0.0d/crypto/engine/tb_ecdh.c","./lib/openssl-1.0.0d/crypto/engine/tb_store.c","./lib/openssl-1.0.0d/crypto/engine/eng_table.c","./lib/openssl-1.0.0d/crypto/engine/engine.h","./lib/openssl-1.0.0d/crypto/engine/eng_cnf.c","./lib/openssl-1.0.0d/crypto/engine/tb_asnmth.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_init.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_lib.c","./lib/openssl-1.0.0d/crypto/engine/tb_pkmeth.c","./lib/openssl-1.0.0d/crypto/engine/eng_cryptodev.c","./lib/openssl-1.0.0d/crypto/engine/eng_fat.c","./lib/openssl-1.0.0d/crypto/engine/tb_pkmeth.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_ctrl.c","./lib/openssl-1.0.0d/crypto/engine/enginetest.c","./lib/openssl-1.0.0d/crypto/engine/tb_dsa.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_all.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_openssl.c","./lib/openssl-1.0.0d/crypto/engine/eng_int.h","./lib/openssl-1.0.0d/crypto/engine/tb_cipher.c","./lib/openssl-1.0.0d/crypto/engine/tb_rand.c","./lib/openssl-1.0.0d/crypto/engine/eng_dyn.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_ctrl.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_pkey.c.alt","./lib/openssl-1.0.0d/crypto/engine/tb_asnmth.c","./lib/openssl-1.0.0d/crypto/engine/Makefile","./lib/openssl-1.0.0d/crypto/engine/eng_cnf.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_table.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_lib.c.alt","./lib/openssl-1.0.0d/crypto/engine/tb_ecdsa.c.alt","./lib/openssl-1.0.0d/crypto/engine/enginetest.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_all.c","./lib/openssl-1.0.0d/crypto/engine/eng_list.c.alt","./lib/openssl-1.0.0d/crypto/engine/tb_ecdh.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_fat.c.alt","./lib/openssl-1.0.0d/crypto/engine/tb_store.c.alt","./lib/openssl-1.0.0d/crypto/engine/tb_dh.c","./lib/openssl-1.0.0d/crypto/engine/tb_rsa.c","./lib/openssl-1.0.0d/crypto/engine/eng_list.c","./lib/openssl-1.0.0d/crypto/engine/tb_digest.c.alt","./lib/openssl-1.0.0d/crypto/engine/tb_cipher.c.alt","./lib/openssl-1.0.0d/crypto/engine/README","./lib/openssl-1.0.0d/crypto/engine/eng_err.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_cryptodev.c.alt","./lib/openssl-1.0.0d/crypto/engine/eng_dyn.c","./lib/openssl-1.0.0d/crypto/engine/tb_rsa.c.alt","./lib/openssl-1.0.0d/crypto/engine/tb_digest.c","./lib/openssl-1.0.0d/crypto/engine/tb_dsa.c","./lib/openssl-1.0.0d/crypto/engine/eng_err.c","./lib/openssl-1.0.0d/crypto/engine/eng_openssl.c.alt","./lib/openssl-1.0.0d/crypto/engine/tb_ecdsa.c","./lib/openssl-1.0.0d/crypto/engine/tb_dh.c.alt","./lib/openssl-1.0.0d/crypto/engine/tb_rand.c.alt","./lib/openssl-1.0.0d/crypto/jpake/jpake_err.c","./lib/openssl-1.0.0d/crypto/jpake/Makefile","./lib/openssl-1.0.0d/crypto/jpake/jpake.h","./lib/openssl-1.0.0d/crypto/jpake/jpake.c","./lib/openssl-1.0.0d/crypto/jpake/jpaketest.c","./lib/openssl-1.0.0d/crypto/pkcs7/pkcs7.h","./lib/openssl-1.0.0d/crypto/pkcs7/dec.c","./lib/openssl-1.0.0d/crypto/pkcs7/pk7_mime.c","./lib/openssl-1.0.0d/crypto/pkcs7/example.h","./lib/openssl-1.0.0d/crypto/pkcs7/pk7_enc.c","./lib/openssl-1.0.0d/crypto/pkcs7/pk7_asn1.c","./lib/openssl-1.0.0d/crypto/pkcs7/bio_ber.c","./lib/openssl-1.0.0d/crypto/pkcs7/info.pem","./lib/openssl-1.0.0d/crypto/pkcs7/pk7_lib.c","./lib/openssl-1.0.0d/crypto/pkcs7/pk7_dgst.c","./lib/openssl-1.0.0d/crypto/pkcs7/pk7_attr.c","./lib/openssl-1.0.0d/crypto/pkcs7/verify.c","./lib/openssl-1.0.0d/crypto/pkcs7/es1.pem","./lib/openssl-1.0.0d/crypto/pkcs7/enc.c","./lib/openssl-1.0.0d/crypto/pkcs7/infokey.pem","./lib/openssl-1.0.0d/crypto/pkcs7/Makefile","./lib/openssl-1.0.0d/crypto/pkcs7/bio_pk7.c","./lib/openssl-1.0.0d/crypto/pkcs7/des.pem","./lib/openssl-1.0.0d/crypto/pkcs7/pkcs7err.c","./lib/openssl-1.0.0d/crypto/pkcs7/doc","./lib/openssl-1.0.0d/crypto/pkcs7/pk7_smime.c","./lib/openssl-1.0.0d/crypto/pkcs7/example.c","./lib/openssl-1.0.0d/crypto/pkcs7/sign.c","./lib/openssl-1.0.0d/crypto/pkcs7/server.pem","./lib/openssl-1.0.0d/crypto/pkcs7/pk7_doit.c","./lib/openssl-1.0.0d/crypto/pkcs7/t/msie-e","./lib/openssl-1.0.0d/crypto/pkcs7/t/msie-enc-01","./lib/openssl-1.0.0d/crypto/pkcs7/t/msie-s-a-e","./lib/openssl-1.0.0d/crypto/pkcs7/t/msie-enc-02.pem","./lib/openssl-1.0.0d/crypto/pkcs7/t/msie-enc-01.pem","./lib/openssl-1.0.0d/crypto/pkcs7/t/msie-enc-02","./lib/openssl-1.0.0d/crypto/pkcs7/t/3des.pem","./lib/openssl-1.0.0d/crypto/pkcs7/t/c.pem","./lib/openssl-1.0.0d/crypto/pkcs7/t/msie-s-a-e.pem","./lib/openssl-1.0.0d/crypto/pkcs7/t/msie-e.pem","./lib/openssl-1.0.0d/crypto/pkcs7/t/nav-smime","./lib/openssl-1.0.0d/crypto/pkcs7/t/server.pem","./lib/openssl-1.0.0d/crypto/pkcs7/t/3dess.pem","./lib/openssl-1.0.0d/crypto/pkcs7/t/s.pem","./lib/openssl-1.0.0d/crypto/pkcs7/t/ff","./lib/openssl-1.0.0d/crypto/pkcs7/p7/a1","./lib/openssl-1.0.0d/crypto/pkcs7/p7/a2","./lib/openssl-1.0.0d/crypto/pkcs7/p7/smime.p7s","./lib/openssl-1.0.0d/crypto/pkcs7/p7/smime.p7m","./lib/openssl-1.0.0d/crypto/pkcs7/p7/cert.p7c","./lib/openssl-1.0.0d/crypto/mdc2/mdc2dgst.c.alt","./lib/openssl-1.0.0d/crypto/mdc2/mdc2test.c","./lib/openssl-1.0.0d/crypto/mdc2/mdc2_one.c","./lib/openssl-1.0.0d/crypto/mdc2/mdc2test.c.alt","./lib/openssl-1.0.0d/crypto/mdc2/mdc2_one.c.alt","./lib/openssl-1.0.0d/crypto/mdc2/Makefile","./lib/openssl-1.0.0d/crypto/mdc2/mdc2dgst.c","./lib/openssl-1.0.0d/crypto/mdc2/mdc2.h","./lib/openssl-1.0.0d/crypto/perlasm/readme","./lib/openssl-1.0.0d/crypto/perlasm/x86asm.pl","./lib/openssl-1.0.0d/crypto/perlasm/x86_64-xlate.pl","./lib/openssl-1.0.0d/crypto/perlasm/x86nasm.pl","./lib/openssl-1.0.0d/crypto/perlasm/x86gas.pl","./lib/openssl-1.0.0d/crypto/perlasm/ppc-xlate.pl","./lib/openssl-1.0.0d/crypto/perlasm/cbc.pl","./lib/openssl-1.0.0d/crypto/perlasm/x86masm.pl","./lib/openssl-1.0.0d/crypto/md4/md4test.c","./lib/openssl-1.0.0d/crypto/md4/md4_one.c","./lib/openssl-1.0.0d/crypto/md4/Makefile","./lib/openssl-1.0.0d/crypto/md4/md4_dgst.c","./lib/openssl-1.0.0d/crypto/md4/md4_locl.h","./lib/openssl-1.0.0d/crypto/md4/md4s.cpp","./lib/openssl-1.0.0d/crypto/md4/md4.c","./lib/openssl-1.0.0d/crypto/md4/md4.h","./lib/openssl-1.0.0d/crypto/ecdsa/ecs_asn1.c","./lib/openssl-1.0.0d/crypto/ecdsa/ecs_ossl.c","./lib/openssl-1.0.0d/crypto/ecdsa/ecs_vrf.c","./lib/openssl-1.0.0d/crypto/ecdsa/Makefile","./lib/openssl-1.0.0d/crypto/ecdsa/ecdsatest.c","./lib/openssl-1.0.0d/crypto/ecdsa/ecs_lib.c","./lib/openssl-1.0.0d/crypto/ecdsa/ecs_err.c","./lib/openssl-1.0.0d/crypto/ecdsa/ecs_sign.c","./lib/openssl-1.0.0d/crypto/ecdsa/ecs_locl.h","./lib/openssl-1.0.0d/crypto/ecdsa/ecdsa.h","./lib/openssl-1.0.0d/crypto/ocsp/ocsp_prn.c","./lib/openssl-1.0.0d/crypto/ocsp/ocsp_err.c","./lib/openssl-1.0.0d/crypto/ocsp/ocsp_lib.c","./lib/openssl-1.0.0d/crypto/ocsp/ocsp.h","./lib/openssl-1.0.0d/crypto/ocsp/ocsp_vfy.c","./lib/openssl-1.0.0d/crypto/ocsp/Makefile","./lib/openssl-1.0.0d/crypto/ocsp/ocsp_srv.c","./lib/openssl-1.0.0d/crypto/ocsp/ocsp_cl.c","./lib/openssl-1.0.0d/crypto/ocsp/ocsp_ext.c","./lib/openssl-1.0.0d/crypto/ocsp/ocsp_ht.c","./lib/openssl-1.0.0d/crypto/ocsp/ocsp_asn.c","./lib/openssl-1.0.0d/crypto/rc2/rc2cfb64.c","./lib/openssl-1.0.0d/crypto/rc2/rrc2.doc","./lib/openssl-1.0.0d/crypto/rc2/rc2speed.c","./lib/openssl-1.0.0d/crypto/rc2/rc2_locl.h","./lib/openssl-1.0.0d/crypto/rc2/rc2test.c","./lib/openssl-1.0.0d/crypto/rc2/Makefile","./lib/openssl-1.0.0d/crypto/rc2/rc2_skey.c","./lib/openssl-1.0.0d/crypto/rc2/rc2.h","./lib/openssl-1.0.0d/crypto/rc2/rc2_cbc.c","./lib/openssl-1.0.0d/crypto/rc2/rc2_ecb.c","./lib/openssl-1.0.0d/crypto/rc2/tab.c","./lib/openssl-1.0.0d/crypto/rc2/version","./lib/openssl-1.0.0d/crypto/rc2/rc2ofb64.c","./lib/openssl-1.0.0d/crypto/cast/casttest.c","./lib/openssl-1.0.0d/crypto/cast/c_ofb64.c","./lib/openssl-1.0.0d/crypto/cast/casts.cpp","./lib/openssl-1.0.0d/crypto/cast/cast_spd.c","./lib/openssl-1.0.0d/crypto/cast/c_enc.c","./lib/openssl-1.0.0d/crypto/cast/cast_s.h","./lib/openssl-1.0.0d/crypto/cast/Makefile","./lib/openssl-1.0.0d/crypto/cast/c_cfb64.c","./lib/openssl-1.0.0d/crypto/cast/c_ecb.c","./lib/openssl-1.0.0d/crypto/cast/c_skey.c","./lib/openssl-1.0.0d/crypto/cast/cast.h","./lib/openssl-1.0.0d/crypto/cast/cast_lcl.h","./lib/openssl-1.0.0d/crypto/cast/castopts.c","./lib/openssl-1.0.0d/crypto/cast/asm/readme","./lib/openssl-1.0.0d/crypto/cast/asm/cast-586.pl","./lib/openssl-1.0.0d/crypto/conf/conf_mod.c","./lib/openssl-1.0.0d/crypto/conf/cnf_save.c.aus","./lib/openssl-1.0.0d/crypto/conf/conf_lib.c.aus","./lib/openssl-1.0.0d/crypto/conf/conf_api.c.aus","./lib/openssl-1.0.0d/crypto/conf/cnf_save.c","./lib/openssl-1.0.0d/crypto/conf/conf_sap.c.aus","./lib/openssl-1.0.0d/crypto/conf/test.c.alt","./lib/openssl-1.0.0d/crypto/conf/conf_err.c.alt","./lib/openssl-1.0.0d/crypto/conf/conf_mall.c.aus","./lib/openssl-1.0.0d/crypto/conf/conf_api.c.alt","./lib/openssl-1.0.0d/crypto/conf/conf_err.c","./lib/openssl-1.0.0d/crypto/conf/conf_err.c.aus","./lib/openssl-1.0.0d/crypto/conf/conf_api.h","./lib/openssl-1.0.0d/crypto/conf/conf.h","./lib/openssl-1.0.0d/crypto/conf/conf_lib.c.alt","./lib/openssl-1.0.0d/crypto/conf/test.c","./lib/openssl-1.0.0d/crypto/conf/ssleay.cnf","./lib/openssl-1.0.0d/crypto/conf/Makefile","./lib/openssl-1.0.0d/crypto/conf/conf_mod.c.aus","./lib/openssl-1.0.0d/crypto/conf/conf_def.c.alt","./lib/openssl-1.0.0d/crypto/conf/conf_sap.c","./lib/openssl-1.0.0d/crypto/conf/conf_def.c.aus","./lib/openssl-1.0.0d/crypto/conf/conf_def.h","./lib/openssl-1.0.0d/crypto/conf/conf_sap.c.alt","./lib/openssl-1.0.0d/crypto/conf/conf_mall.c","./lib/openssl-1.0.0d/crypto/conf/test.c.aus","./lib/openssl-1.0.0d/crypto/conf/README","./lib/openssl-1.0.0d/crypto/conf/conf_mod.c.alt","./lib/openssl-1.0.0d/crypto/conf/conf_def.c","./lib/openssl-1.0.0d/crypto/conf/conf_api.c","./lib/openssl-1.0.0d/crypto/conf/conf_mall.c.alt","./lib/openssl-1.0.0d/crypto/conf/conf_lib.c","./lib/openssl-1.0.0d/crypto/conf/cnf_save.c.alt","./lib/openssl-1.0.0d/crypto/conf/keysets.pl","./lib/openssl-1.0.0d/crypto/ripemd/rmdconst.h","./lib/openssl-1.0.0d/crypto/ripemd/rmd_locl.h","./lib/openssl-1.0.0d/crypto/ripemd/Makefile","./lib/openssl-1.0.0d/crypto/ripemd/README","./lib/openssl-1.0.0d/crypto/ripemd/ripemd.h","./lib/openssl-1.0.0d/crypto/ripemd/rmd_one.c","./lib/openssl-1.0.0d/crypto/ripemd/rmd_dgst.c","./lib/openssl-1.0.0d/crypto/ripemd/rmdtest.c","./lib/openssl-1.0.0d/crypto/ripemd/rmd160.c","./lib/openssl-1.0.0d/crypto/ripemd/asm/rmd-586.pl","./lib/openssl-1.0.0d/crypto/ripemd/asm/rips.cpp","./lib/openssl-1.0.0d/shlib/irix.sh","./lib/openssl-1.0.0d/shlib/sco5-shared.sh","./lib/openssl-1.0.0d/shlib/sco5-shared-gcc.sh","./lib/openssl-1.0.0d/shlib/sun.sh","./lib/openssl-1.0.0d/shlib/solaris-sc4.sh","./lib/openssl-1.0.0d/shlib/svr5-shared-gcc.sh","./lib/openssl-1.0.0d/shlib/Makefile.hpux10-cc","./lib/openssl-1.0.0d/shlib/svr5-shared.sh","./lib/openssl-1.0.0d/shlib/svr5-shared-installed","./lib/openssl-1.0.0d/shlib/solaris.sh","./lib/openssl-1.0.0d/shlib/hpux10-cc.sh","./lib/openssl-1.0.0d/shlib/README","./lib/openssl-1.0.0d/shlib/win32.bat","./lib/openssl-1.0.0d/shlib/win32dll.bat","./lib/openssl-1.0.0d/shlib/sco5-shared-installed","./lib/openssl-1.0.0d/VMS/ucx_shr_decc.opt","./lib/openssl-1.0.0d/VMS/tcpip_shr_decc.opt","./lib/openssl-1.0.0d/VMS/socketshr_shr.opt","./lib/openssl-1.0.0d/VMS/TODO","./lib/openssl-1.0.0d/VMS/ucx_shr_vaxc.opt","./lib/openssl-1.0.0d/VMS/ucx_shr_decc_log.opt","./lib/openssl-1.0.0d/VMS/openssl_utils.com","./lib/openssl-1.0.0d/VMS/mkshared.com","./lib/openssl-1.0.0d/VMS/VMSify-conf.pl","./lib/openssl-1.0.0d/VMS/WISHLIST.TXT","./lib/openssl-1.0.0d/VMS/install.com","./lib/openssl-1.0.0d/VMS/multinet_shr.opt","./lib/openssl-1.0.0d/VMS/test-includes.com","./lib/openssl-1.0.0d/certs/README.RootCerts","./lib/openssl-1.0.0d/certs/demo/ca-cert.pem","./lib/openssl-1.0.0d/certs/demo/pca-cert.pem","./lib/openssl-1.0.0d/certs/demo/dsa-pca.pem","./lib/openssl-1.0.0d/certs/demo/dsa-ca.pem","./lib/openssl-1.0.0d/certs/expired/ICE.crl","./lib/openssl-1.0.0d/demos/b64.c","./lib/openssl-1.0.0d/demos/selfsign.c","./lib/openssl-1.0.0d/demos/README","./lib/openssl-1.0.0d/demos/privkey.pem","./lib/openssl-1.0.0d/demos/b64.pl","./lib/openssl-1.0.0d/demos/spkigen.c","./lib/openssl-1.0.0d/demos/pkcs12/pkwrite.c","./lib/openssl-1.0.0d/demos/pkcs12/README","./lib/openssl-1.0.0d/demos/pkcs12/pkread.c","./lib/openssl-1.0.0d/demos/asn1/ocsp.c","./lib/openssl-1.0.0d/demos/asn1/README.ASN1","./lib/openssl-1.0.0d/demos/smime/cakey.pem","./lib/openssl-1.0.0d/demos/smime/cacert.pem","./lib/openssl-1.0.0d/demos/smime/signer2.pem","./lib/openssl-1.0.0d/demos/smime/sign.txt","./lib/openssl-1.0.0d/demos/smime/smver.c","./lib/openssl-1.0.0d/demos/smime/smenc.c","./lib/openssl-1.0.0d/demos/smime/encr.txt","./lib/openssl-1.0.0d/demos/smime/signer.pem","./lib/openssl-1.0.0d/demos/smime/smsign2.c","./lib/openssl-1.0.0d/demos/smime/smsign.c","./lib/openssl-1.0.0d/demos/smime/smdec.c","./lib/openssl-1.0.0d/demos/ssltest-ecc/ssltest.sh","./lib/openssl-1.0.0d/demos/ssltest-ecc/ECC-RSAcertgen.sh","./lib/openssl-1.0.0d/demos/ssltest-ecc/RSAcertgen.sh","./lib/openssl-1.0.0d/demos/ssltest-ecc/README","./lib/openssl-1.0.0d/demos/ssltest-ecc/ECCcertgen.sh","./lib/openssl-1.0.0d/demos/engines/cluster_labs/hw_cluster_labs_err.h","./lib/openssl-1.0.0d/demos/engines/cluster_labs/Makefile","./lib/openssl-1.0.0d/demos/engines/cluster_labs/hw_cluster_labs_err.c","./lib/openssl-1.0.0d/demos/engines/cluster_labs/hw_cluster_labs.ec","./lib/openssl-1.0.0d/demos/engines/cluster_labs/hw_cluster_labs.c","./lib/openssl-1.0.0d/demos/engines/cluster_labs/cluster_labs.h","./lib/openssl-1.0.0d/demos/engines/zencod/hw_zencod.h","./lib/openssl-1.0.0d/demos/engines/zencod/hw_zencod.c","./lib/openssl-1.0.0d/demos/engines/zencod/hw_zencod_err.c","./lib/openssl-1.0.0d/demos/engines/zencod/Makefile","./lib/openssl-1.0.0d/demos/engines/zencod/hw_zencod.ec","./lib/openssl-1.0.0d/demos/engines/zencod/hw_zencod_err.h","./lib/openssl-1.0.0d/demos/engines/ibmca/hw_ibmca.c","./lib/openssl-1.0.0d/demos/engines/ibmca/hw_ibmca_err.c","./lib/openssl-1.0.0d/demos/engines/ibmca/Makefile","./lib/openssl-1.0.0d/demos/engines/ibmca/hw_ibmca.ec","./lib/openssl-1.0.0d/demos/engines/ibmca/ica_openssl_api.h","./lib/openssl-1.0.0d/demos/engines/ibmca/hw_ibmca_err.h","./lib/openssl-1.0.0d/demos/engines/rsaref/rsaref_err.h","./lib/openssl-1.0.0d/demos/engines/rsaref/rsaref.c","./lib/openssl-1.0.0d/demos/engines/rsaref/rsaref.ec","./lib/openssl-1.0.0d/demos/engines/rsaref/Makefile","./lib/openssl-1.0.0d/demos/engines/rsaref/rsaref_err.c","./lib/openssl-1.0.0d/demos/engines/rsaref/README","./lib/openssl-1.0.0d/demos/prime/prime.c","./lib/openssl-1.0.0d/demos/prime/Makefile","./lib/openssl-1.0.0d/demos/bio/sconnect.c","./lib/openssl-1.0.0d/demos/bio/saccept.c","./lib/openssl-1.0.0d/demos/bio/Makefile","./lib/openssl-1.0.0d/demos/bio/README","./lib/openssl-1.0.0d/demos/bio/server.pem","./lib/openssl-1.0.0d/demos/eay/loadrsa.c","./lib/openssl-1.0.0d/demos/eay/conn.c","./lib/openssl-1.0.0d/demos/eay/Makefile","./lib/openssl-1.0.0d/demos/eay/base64.c","./lib/openssl-1.0.0d/demos/state_machine/Makefile","./lib/openssl-1.0.0d/demos/state_machine/state_machine.c","./lib/openssl-1.0.0d/demos/maurice/cert.pem","./lib/openssl-1.0.0d/demos/maurice/loadkeys.c","./lib/openssl-1.0.0d/demos/maurice/example4.c","./lib/openssl-1.0.0d/demos/maurice/Makefile","./lib/openssl-1.0.0d/demos/maurice/example3.c","./lib/openssl-1.0.0d/demos/maurice/example2.c","./lib/openssl-1.0.0d/demos/maurice/README","./lib/openssl-1.0.0d/demos/maurice/privkey.pem","./lib/openssl-1.0.0d/demos/maurice/example1.c","./lib/openssl-1.0.0d/demos/maurice/loadkeys.h","./lib/openssl-1.0.0d/demos/x509/mkcert.c","./lib/openssl-1.0.0d/demos/x509/mkreq.c","./lib/openssl-1.0.0d/demos/x509/README","./lib/openssl-1.0.0d/demos/tunala/breakage.c","./lib/openssl-1.0.0d/demos/tunala/INSTALL","./lib/openssl-1.0.0d/demos/tunala/A-client.pem","./lib/openssl-1.0.0d/demos/tunala/buffer.c","./lib/openssl-1.0.0d/demos/tunala/sm.c","./lib/openssl-1.0.0d/demos/tunala/autoungunk.sh","./lib/openssl-1.0.0d/demos/tunala/A-server.pem","./lib/openssl-1.0.0d/demos/tunala/cb.c","./lib/openssl-1.0.0d/demos/tunala/Makefile","./lib/openssl-1.0.0d/demos/tunala/configure.in","./lib/openssl-1.0.0d/demos/tunala/Makefile.am","./lib/openssl-1.0.0d/demos/tunala/ip.c","./lib/openssl-1.0.0d/demos/tunala/test.sh","./lib/openssl-1.0.0d/demos/tunala/README","./lib/openssl-1.0.0d/demos/tunala/tunala.h","./lib/openssl-1.0.0d/demos/tunala/autogunk.sh","./lib/openssl-1.0.0d/demos/tunala/tunala.c","./lib/openssl-1.0.0d/demos/tunala/CA.pem","./lib/openssl-1.0.0d/demos/cms/cakey.pem","./lib/openssl-1.0.0d/demos/cms/comp.txt","./lib/openssl-1.0.0d/demos/cms/cacert.pem","./lib/openssl-1.0.0d/demos/cms/cms_ver.c","./lib/openssl-1.0.0d/demos/cms/cms_uncomp.c","./lib/openssl-1.0.0d/demos/cms/signer2.pem","./lib/openssl-1.0.0d/demos/cms/sign.txt","./lib/openssl-1.0.0d/demos/cms/cms_ddec.c","./lib/openssl-1.0.0d/demos/cms/cms_sign.c","./lib/openssl-1.0.0d/demos/cms/encr.txt","./lib/openssl-1.0.0d/demos/cms/signer.pem","./lib/openssl-1.0.0d/demos/cms/cms_sign2.c","./lib/openssl-1.0.0d/demos/cms/cms_comp.c","./lib/openssl-1.0.0d/demos/cms/cms_enc.c","./lib/openssl-1.0.0d/demos/cms/cms_dec.c","./lib/openssl-1.0.0d/demos/cms/cms_denc.c","./lib/openssl-1.0.0d/demos/sign/cert.pem","./lib/openssl-1.0.0d/demos/sign/sig.txt","./lib/openssl-1.0.0d/demos/sign/sign.txt","./lib/openssl-1.0.0d/demos/sign/Makefile","./lib/openssl-1.0.0d/demos/sign/sign.c","./lib/openssl-1.0.0d/demos/sign/key.pem","./lib/openssl-1.0.0d/demos/easy_tls/cert.pem","./lib/openssl-1.0.0d/demos/easy_tls/easy-tls.c","./lib/openssl-1.0.0d/demos/easy_tls/test.h","./lib/openssl-1.0.0d/demos/easy_tls/easy-tls.h","./lib/openssl-1.0.0d/demos/easy_tls/test.c","./lib/openssl-1.0.0d/demos/easy_tls/Makefile","./lib/openssl-1.0.0d/demos/easy_tls/cacerts.pem","./lib/openssl-1.0.0d/demos/easy_tls/README","./lib/openssl-1.0.0d/demos/ssl/serv.cpp","./lib/openssl-1.0.0d/demos/ssl/inetdsrv.cpp","./lib/openssl-1.0.0d/demos/ssl/cli.cpp","./lib/openssl-1.0.0d/Netware/set_env.bat","./lib/openssl-1.0.0d/Netware/cpy_tests.bat","./lib/openssl-1.0.0d/Netware/globals.txt","./lib/openssl-1.0.0d/Netware/do_tests.pl","./lib/openssl-1.0.0d/Netware/readme.txt","./lib/openssl-1.0.0d/MacOS/mklinks.as.hqx","./lib/openssl-1.0.0d/MacOS/TODO","./lib/openssl-1.0.0d/MacOS/_MWERKS_GUSI_prefix.h","./lib/openssl-1.0.0d/MacOS/OpenSSL.mcp.hqx","./lib/openssl-1.0.0d/MacOS/Randomizer.h","./lib/openssl-1.0.0d/MacOS/opensslconf.h","./lib/openssl-1.0.0d/MacOS/GUSI_Init.cpp","./lib/openssl-1.0.0d/MacOS/Randomizer.cpp","./lib/openssl-1.0.0d/MacOS/_MWERKS_prefix.h","./lib/openssl-1.0.0d/MacOS/GetHTTPS.src/ErrorHandling.hpp","./lib/openssl-1.0.0d/MacOS/GetHTTPS.src/GetHTTPS.cpp","./lib/openssl-1.0.0d/MacOS/GetHTTPS.src/MacSocket.cpp","./lib/openssl-1.0.0d/MacOS/GetHTTPS.src/CPStringUtils.cpp","./lib/openssl-1.0.0d/MacOS/GetHTTPS.src/CPStringUtils.hpp","./lib/openssl-1.0.0d/MacOS/GetHTTPS.src/ErrorHandling.cpp","./lib/openssl-1.0.0d/MacOS/GetHTTPS.src/MacSocket.h","./lib/openssl-1.0.0d/doc/openssl-shared.txt","./lib/openssl-1.0.0d/doc/openssl_button.html","./lib/openssl-1.0.0d/doc/openssl_button.gif","./lib/openssl-1.0.0d/doc/c-indentation.el","./lib/openssl-1.0.0d/doc/fingerprints.txt","./lib/openssl-1.0.0d/doc/openssl.txt","./lib/openssl-1.0.0d/doc/README","./lib/openssl-1.0.0d/doc/standards.txt","./lib/openssl-1.0.0d/doc/ssleay.txt","./lib/openssl-1.0.0d/doc/HOWTO/keys.txt","./lib/openssl-1.0.0d/doc/HOWTO/proxy_certificates.txt","./lib/openssl-1.0.0d/doc/HOWTO/certificates.txt","./lib/openssl-1.0.0d/doc/crypto/bio.pod","./lib/openssl-1.0.0d/doc/crypto/evp.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_should_retry.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_DigestInit.pod","./lib/openssl-1.0.0d/doc/crypto/i2d_PKCS7_bio_stream.pod","./lib/openssl-1.0.0d/doc/crypto/OPENSSL_config.pod","./lib/openssl-1.0.0d/doc/crypto/ripemd.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_generate_parameters.pod","./lib/openssl-1.0.0d/doc/crypto/RAND_add.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_sign_add1_signer.pod","./lib/openssl-1.0.0d/doc/crypto/rc4.pod","./lib/openssl-1.0.0d/doc/crypto/ASN1_OBJECT_new.pod","./lib/openssl-1.0.0d/doc/crypto/md5.pod","./lib/openssl-1.0.0d/doc/crypto/ui.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_RSAPublicKey.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_VerifyInit.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_compress.pod","./lib/openssl-1.0.0d/doc/crypto/RAND_cleanup.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_X509_NAME.pod","./lib/openssl-1.0.0d/doc/crypto/CONF_modules_load_file.pod","./lib/openssl-1.0.0d/doc/crypto/BN_bn2bin.pod","./lib/openssl-1.0.0d/doc/crypto/DH_set_method.pod","./lib/openssl-1.0.0d/doc/crypto/BN_new.pod","./lib/openssl-1.0.0d/doc/crypto/X509_NAME_get_index_by_NID.pod","./lib/openssl-1.0.0d/doc/crypto/pem.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_CTX_new.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_DigestSignInit.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_get_ex_new_index.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_sign.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_SignInit.pod","./lib/openssl-1.0.0d/doc/crypto/des_modes.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_EncryptInit.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_private_encrypt.pod","./lib/openssl-1.0.0d/doc/crypto/X509_STORE_CTX_get_error.pod","./lib/openssl-1.0.0d/doc/crypto/BN_add.pod","./lib/openssl-1.0.0d/doc/crypto/X509_NAME_add_entry_by_txt.pod","./lib/openssl-1.0.0d/doc/crypto/DH_generate_key.pod","./lib/openssl-1.0.0d/doc/crypto/BN_mod_inverse.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_get_ex_new_index.pod","./lib/openssl-1.0.0d/doc/crypto/DH_size.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_ASN1_OBJECT.pod","./lib/openssl-1.0.0d/doc/crypto/SMIME_read_PKCS7.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_verify.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_load_strings.pod","./lib/openssl-1.0.0d/doc/crypto/DH_new.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_X509_SIG.pod","./lib/openssl-1.0.0d/doc/crypto/BN_mod_mul_montgomery.pod","./lib/openssl-1.0.0d/doc/crypto/X509_NAME_ENTRY_get_object.pod","./lib/openssl-1.0.0d/doc/crypto/PEM_write_bio_PKCS7_stream.pod","./lib/openssl-1.0.0d/doc/crypto/lhash.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_sign.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_X509_ALGOR.pod","./lib/openssl-1.0.0d/doc/crypto/RAND_set_rand_method.pod","./lib/openssl-1.0.0d/doc/crypto/RAND_load_file.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_push.pod","./lib/openssl-1.0.0d/doc/crypto/X509_STORE_CTX_new.pod","./lib/openssl-1.0.0d/doc/crypto/X509_STORE_set_verify_cb_func.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_keygen.pod","./lib/openssl-1.0.0d/doc/crypto/BN_copy.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_s_bio.pod","./lib/openssl-1.0.0d/doc/crypto/OpenSSL_add_all_algorithms.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_decrypt.pod","./lib/openssl-1.0.0d/doc/crypto/bn_internal.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_set_mark.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_DSAPublicKey.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_get0_SignerInfos.pod","./lib/openssl-1.0.0d/doc/crypto/dh.pod","./lib/openssl-1.0.0d/doc/crypto/PKCS12_parse.pod","./lib/openssl-1.0.0d/doc/crypto/X509_STORE_CTX_set_verify_cb.pod","./lib/openssl-1.0.0d/doc/crypto/DH_get_ex_new_index.pod","./lib/openssl-1.0.0d/doc/crypto/CONF_modules_free.pod","./lib/openssl-1.0.0d/doc/crypto/X509_VERIFY_PARAM_set_flags.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_generate_key.pod","./lib/openssl-1.0.0d/doc/crypto/blowfish.pod","./lib/openssl-1.0.0d/doc/crypto/BN_set_bit.pod","./lib/openssl-1.0.0d/doc/crypto/OBJ_nid2obj.pod","./lib/openssl-1.0.0d/doc/crypto/PKCS7_sign.pod","./lib/openssl-1.0.0d/doc/crypto/crypto.pod","./lib/openssl-1.0.0d/doc/crypto/CRYPTO_set_ex_data.pod","./lib/openssl-1.0.0d/doc/crypto/OPENSSL_load_builtin_modules.pod","./lib/openssl-1.0.0d/doc/crypto/rand.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_get0_type.pod","./lib/openssl-1.0.0d/doc/crypto/OPENSSL_Applink.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_f_buffer.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_get1_ReceiptRequest.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_derive.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_X509_REQ.pod","./lib/openssl-1.0.0d/doc/crypto/RAND_bytes.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_print_private.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_set_method.pod","./lib/openssl-1.0.0d/doc/crypto/x509.pod","./lib/openssl-1.0.0d/doc/crypto/mdc2.pod","./lib/openssl-1.0.0d/doc/crypto/BN_add_word.pod","./lib/openssl-1.0.0d/doc/crypto/dsa.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_new_CMS.pod","./lib/openssl-1.0.0d/doc/crypto/engine.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_get0_RecipientInfos.pod","./lib/openssl-1.0.0d/doc/crypto/buffer.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_X509_CRL.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_DHparams.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_SIG_new.pod","./lib/openssl-1.0.0d/doc/crypto/BN_zero.pod","./lib/openssl-1.0.0d/doc/crypto/ASN1_STRING_length.pod","./lib/openssl-1.0.0d/doc/crypto/X509_verify_cert.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_DigestVerifyInit.pod","./lib/openssl-1.0.0d/doc/crypto/ASN1_STRING_new.pod","./lib/openssl-1.0.0d/doc/crypto/SMIME_write_CMS.pod","./lib/openssl-1.0.0d/doc/crypto/BN_mod_mul_reciprocal.pod","./lib/openssl-1.0.0d/doc/crypto/BN_BLINDING_new.pod","./lib/openssl-1.0.0d/doc/crypto/threads.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_read.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_f_ssl.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_encrypt.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_SealInit.pod","./lib/openssl-1.0.0d/doc/crypto/BN_num_bytes.pod","./lib/openssl-1.0.0d/doc/crypto/X509_new.pod","./lib/openssl-1.0.0d/doc/crypto/OPENSSL_ia32cap.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_set1_RSA.pod","./lib/openssl-1.0.0d/doc/crypto/ASN1_generate_nconf.pod","./lib/openssl-1.0.0d/doc/crypto/OPENSSL_VERSION_NUMBER.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_s_file.pod","./lib/openssl-1.0.0d/doc/crypto/PKCS7_decrypt.pod","./lib/openssl-1.0.0d/doc/crypto/BN_generate_prime.pod","./lib/openssl-1.0.0d/doc/crypto/SMIME_write_PKCS7.pod","./lib/openssl-1.0.0d/doc/crypto/bn.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_verify_receipt.pod","./lib/openssl-1.0.0d/doc/crypto/ASN1_STRING_print_ex.pod","./lib/openssl-1.0.0d/doc/crypto/X509_NAME_print_ex.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_print.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_put_error.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_dup_DH.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_blinding_on.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_cmp.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_uncompress.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_load_crypto_strings.pod","./lib/openssl-1.0.0d/doc/crypto/rsa.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_s_socket.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_size.pod","./lib/openssl-1.0.0d/doc/crypto/ecdsa.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_new.pod","./lib/openssl-1.0.0d/doc/crypto/lh_stats.pod","./lib/openssl-1.0.0d/doc/crypto/PKCS7_verify.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_decrypt.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_find_type.pod","./lib/openssl-1.0.0d/doc/crypto/BN_CTX_start.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_verify.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_public_encrypt.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_clear_error.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_generate_key.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_sign.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_f_cipher.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_s_connect.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_sign_receipt.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_PKCS8PrivateKey.pod","./lib/openssl-1.0.0d/doc/crypto/des.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_check_key.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_get_error.pod","./lib/openssl-1.0.0d/doc/crypto/hmac.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_f_null.pod","./lib/openssl-1.0.0d/doc/crypto/BN_swap.pod","./lib/openssl-1.0.0d/doc/crypto/d2i_X509.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_add0_cert.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_BytesToKey.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_new.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_size.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_f_base64.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_remove_state.pod","./lib/openssl-1.0.0d/doc/crypto/PKCS7_encrypt.pod","./lib/openssl-1.0.0d/doc/crypto/PKCS7_sign_add_signer.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_s_mem.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_GET_LIB.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_set_method.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_padding_add_PKCS1_type_1.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_f_md.pod","./lib/openssl-1.0.0d/doc/crypto/DH_generate_parameters.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_CTX_ctrl.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_OpenInit.pod","./lib/openssl-1.0.0d/doc/crypto/BN_CTX_new.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_encrypt.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_print_errors.pod","./lib/openssl-1.0.0d/doc/crypto/RAND_egd.pod","./lib/openssl-1.0.0d/doc/crypto/PKCS12_create.pod","./lib/openssl-1.0.0d/doc/crypto/SMIME_read_CMS.pod","./lib/openssl-1.0.0d/doc/crypto/ERR_error_string.pod","./lib/openssl-1.0.0d/doc/crypto/BN_rand.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_s_fd.pod","./lib/openssl-1.0.0d/doc/crypto/i2d_CMS_bio_stream.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_new.pod","./lib/openssl-1.0.0d/doc/crypto/err.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_do_sign.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_add1_recipient_cert.pod","./lib/openssl-1.0.0d/doc/crypto/PEM_write_bio_CMS_stream.pod","./lib/openssl-1.0.0d/doc/crypto/sha.pod","./lib/openssl-1.0.0d/doc/crypto/CMS_final.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_get_default_digest.pod","./lib/openssl-1.0.0d/doc/crypto/BN_cmp.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_s_accept.pod","./lib/openssl-1.0.0d/doc/crypto/ui_compat.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_sign.pod","./lib/openssl-1.0.0d/doc/crypto/EVP_PKEY_verifyrecover.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_set_callback.pod","./lib/openssl-1.0.0d/doc/crypto/RSA_sign_ASN1_OCTET_STRING.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_ctrl.pod","./lib/openssl-1.0.0d/doc/crypto/X509_STORE_CTX_get_ex_new_index.pod","./lib/openssl-1.0.0d/doc/crypto/BIO_s_null.pod","./lib/openssl-1.0.0d/doc/crypto/DSA_new.pod","./lib/openssl-1.0.0d/doc/apps/verify.pod","./lib/openssl-1.0.0d/doc/apps/openssl.pod","./lib/openssl-1.0.0d/doc/apps/req.pod","./lib/openssl-1.0.0d/doc/apps/tsget.pod","./lib/openssl-1.0.0d/doc/apps/crl.pod","./lib/openssl-1.0.0d/doc/apps/spkac.pod","./lib/openssl-1.0.0d/doc/apps/genpkey.pod","./lib/openssl-1.0.0d/doc/apps/asn1parse.pod","./lib/openssl-1.0.0d/doc/apps/pkeyparam.pod","./lib/openssl-1.0.0d/doc/apps/dgst.pod","./lib/openssl-1.0.0d/doc/apps/version.pod","./lib/openssl-1.0.0d/doc/apps/dsaparam.pod","./lib/openssl-1.0.0d/doc/apps/x509v3_config.pod","./lib/openssl-1.0.0d/doc/apps/ts.pod","./lib/openssl-1.0.0d/doc/apps/ecparam.pod","./lib/openssl-1.0.0d/doc/apps/crl2pkcs7.pod","./lib/openssl-1.0.0d/doc/apps/dhparam.pod","./lib/openssl-1.0.0d/doc/apps/s_time.pod","./lib/openssl-1.0.0d/doc/apps/pkcs8.pod","./lib/openssl-1.0.0d/doc/apps/CA.pl.pod","./lib/openssl-1.0.0d/doc/apps/rand.pod","./lib/openssl-1.0.0d/doc/apps/pkey.pod","./lib/openssl-1.0.0d/doc/apps/speed.pod","./lib/openssl-1.0.0d/doc/apps/x509.pod","./lib/openssl-1.0.0d/doc/apps/dsa.pod","./lib/openssl-1.0.0d/doc/apps/ca.pod","./lib/openssl-1.0.0d/doc/apps/smime.pod","./lib/openssl-1.0.0d/doc/apps/pkcs7.pod","./lib/openssl-1.0.0d/doc/apps/rsa.pod","./lib/openssl-1.0.0d/doc/apps/genrsa.pod","./lib/openssl-1.0.0d/doc/apps/enc.pod","./lib/openssl-1.0.0d/doc/apps/passwd.pod","./lib/openssl-1.0.0d/doc/apps/ciphers.pod","./lib/openssl-1.0.0d/doc/apps/pkeyutl.pod","./lib/openssl-1.0.0d/doc/apps/cms.pod","./lib/openssl-1.0.0d/doc/apps/pkcs12.pod","./lib/openssl-1.0.0d/doc/apps/nseq.pod","./lib/openssl-1.0.0d/doc/apps/s_client.pod","./lib/openssl-1.0.0d/doc/apps/ec.pod","./lib/openssl-1.0.0d/doc/apps/config.pod","./lib/openssl-1.0.0d/doc/apps/gendsa.pod","./lib/openssl-1.0.0d/doc/apps/rsautl.pod","./lib/openssl-1.0.0d/doc/apps/errstr.pod","./lib/openssl-1.0.0d/doc/apps/sess_id.pod","./lib/openssl-1.0.0d/doc/apps/ocsp.pod","./lib/openssl-1.0.0d/doc/apps/s_server.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_ciphers.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CIPHER_get_name.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_SESSION_free.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_version.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_SSL_CTX.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_set_connect_state.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_current_cipher.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_free.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_set_session.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_alert_type_string.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_COMP_add_compression_method.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_client_CA_list.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_want.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_sess_set_get_cb.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_ex_new_index.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_use_psk_identity_hint.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_state_string.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_load_client_CA_file.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_get_verify_mode.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_cert_store.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_tmp_dh_callback.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_add_extra_chain_cert.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_use_certificate.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_psk_client_callback.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_new.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_SESSION_get_ex_new_index.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_session_cache_mode.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_mode.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_session.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_load_verify_locations.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_connect.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_do_handshake.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_clear.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_shutdown.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_set_fd.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_write.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_SESSION_get_time.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_read.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_library_init.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_max_cert_list.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_options.pod","./lib/openssl-1.0.0d/doc/ssl/ssl.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_rstate_string.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_verify.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_quiet_shutdown.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_get_ex_new_index.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_timeout.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_sess_set_cache_size.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_msg_callback.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_session_id_context.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_fd.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_client_CA_list.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_set_bio.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_verify_result.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_ssl_version.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_set_shutdown.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_flush_sessions.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_info_callback.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_ex_data_X509_STORE_CTX_idx.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_add_session.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_new.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_peer_certificate.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_session_reused.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_client_cert_cb.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_error.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_cert_verify_callback.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_accept.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_peer_cert_chain.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_default_timeout.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_pending.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_rbio.pod","./lib/openssl-1.0.0d/doc/ssl/d2i_SSL_SESSION.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_cipher_list.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_tmp_rsa_callback.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_set_verify_result.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_sess_number.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_free.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_default_passwd_cb.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_get_psk_identity.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_sessions.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_set_generate_session_id.pod","./lib/openssl-1.0.0d/doc/ssl/SSL_CTX_ctrl.pod","./lib/openssl-1.0.0d/os2/backwardify.pl","./lib/openssl-1.0.0d/os2/OS2-EMX.cmd","./lib/openssl-1.0.0d/apps/pca-cert.srl","./lib/openssl-1.0.0d/apps/dsa1024.pem","./lib/openssl-1.0.0d/apps/s1024req.pem","./lib/openssl-1.0.0d/apps/ca-key.pem","./lib/openssl-1.0.0d/apps/rsa8192.pem","./lib/openssl-1.0.0d/apps/speed.c","./lib/openssl-1.0.0d/apps/pkeyparam.c","./lib/openssl-1.0.0d/apps/testrsa.h","./lib/openssl-1.0.0d/apps/prime.c","./lib/openssl-1.0.0d/apps/s_socket.c","./lib/openssl-1.0.0d/apps/version.c","./lib/openssl-1.0.0d/apps/ca-req.pem","./lib/openssl-1.0.0d/apps/s512-req.pem","./lib/openssl-1.0.0d/apps/pca-key.pem","./lib/openssl-1.0.0d/apps/s_cb.c","./lib/openssl-1.0.0d/apps/apps.c","./lib/openssl-1.0.0d/apps/cert.pem","./lib/openssl-1.0.0d/apps/rsa.c","./lib/openssl-1.0.0d/apps/ecparam.c","./lib/openssl-1.0.0d/apps/pkeyutl.c","./lib/openssl-1.0.0d/apps/CA.pl","./lib/openssl-1.0.0d/apps/client.pem","./lib/openssl-1.0.0d/apps/CA.com","./lib/openssl-1.0.0d/apps/CA.sh","./lib/openssl-1.0.0d/apps/testCA.pem","./lib/openssl-1.0.0d/apps/dhparam.c","./lib/openssl-1.0.0d/apps/crl.c","./lib/openssl-1.0.0d/apps/smime.c","./lib/openssl-1.0.0d/apps/engine.c","./lib/openssl-1.0.0d/apps/gendh.c","./lib/openssl-1.0.0d/apps/gendsa.c","./lib/openssl-1.0.0d/apps/testdsa.h","./lib/openssl-1.0.0d/apps/s_client.c","./lib/openssl-1.0.0d/apps/progs.h","./lib/openssl-1.0.0d/apps/s_time.c","./lib/openssl-1.0.0d/apps/verify.c","./lib/openssl-1.0.0d/apps/s_apps.h","./lib/openssl-1.0.0d/apps/x509.c","./lib/openssl-1.0.0d/apps/dsa.c","./lib/openssl-1.0.0d/apps/apps.h","./lib/openssl-1.0.0d/apps/enc.c","./lib/openssl-1.0.0d/apps/ts.c","./lib/openssl-1.0.0d/apps/Makefile","./lib/openssl-1.0.0d/apps/ec.c","./lib/openssl-1.0.0d/apps/dsaparam.c","./lib/openssl-1.0.0d/apps/s_server.c","./lib/openssl-1.0.0d/apps/winrand.c","./lib/openssl-1.0.0d/apps/cms.c","./lib/openssl-1.0.0d/apps/CA.pl.bak","./lib/openssl-1.0.0d/apps/pkcs7.c","./lib/openssl-1.0.0d/apps/dgst.c","./lib/openssl-1.0.0d/apps/s512-key.pem","./lib/openssl-1.0.0d/apps/req.pem","./lib/openssl-1.0.0d/apps/timeouts.h","./lib/openssl-1.0.0d/apps/errstr.c","./lib/openssl-1.0.0d/apps/crl2p7.c","./lib/openssl-1.0.0d/apps/dh4096.pem","./lib/openssl-1.0.0d/apps/dsa512.pem","./lib/openssl-1.0.0d/apps/dh512.pem","./lib/openssl-1.0.0d/apps/rsautl.c","./lib/openssl-1.0.0d/apps/tsget","./lib/openssl-1.0.0d/apps/spkac.c","./lib/openssl-1.0.0d/apps/req.c","./lib/openssl-1.0.0d/apps/dh.c","./lib/openssl-1.0.0d/apps/ciphers.c","./lib/openssl-1.0.0d/apps/dsa-pca.pem","./lib/openssl-1.0.0d/apps/openssl.cnf","./lib/openssl-1.0.0d/apps/pca-req.pem","./lib/openssl-1.0.0d/apps/ca-cert.srl","./lib/openssl-1.0.0d/apps/nseq.c","./lib/openssl-1.0.0d/apps/CA.pl.in","./lib/openssl-1.0.0d/apps/asn1pars.c","./lib/openssl-1.0.0d/apps/dh2048.pem","./lib/openssl-1.0.0d/apps/progs.pl","./lib/openssl-1.0.0d/apps/s1024key.pem","./lib/openssl-1.0.0d/apps/server2.pem","./lib/openssl-1.0.0d/apps/passwd.c","./lib/openssl-1.0.0d/apps/openssl.c","./lib/openssl-1.0.0d/apps/privkey.pem","./lib/openssl-1.0.0d/apps/ocsp.c","./lib/openssl-1.0.0d/apps/install.com","./lib/openssl-1.0.0d/apps/makeapps.com","./lib/openssl-1.0.0d/apps/dh1024.pem","./lib/openssl-1.0.0d/apps/rand.c","./lib/openssl-1.0.0d/apps/pkey.c","./lib/openssl-1.0.0d/apps/pkcs12.c","./lib/openssl-1.0.0d/apps/server.pem","./lib/openssl-1.0.0d/apps/dsa-ca.pem","./lib/openssl-1.0.0d/apps/ca.c","./lib/openssl-1.0.0d/apps/server.srl","./lib/openssl-1.0.0d/apps/md4.c","./lib/openssl-1.0.0d/apps/pkcs8.c","./lib/openssl-1.0.0d/apps/openssl-vms.cnf","./lib/openssl-1.0.0d/apps/dsap.pem","./lib/openssl-1.0.0d/apps/sess_id.c","./lib/openssl-1.0.0d/apps/oid.cnf","./lib/openssl-1.0.0d/apps/genrsa.c","./lib/openssl-1.0.0d/apps/genpkey.c","./lib/openssl-1.0.0d/apps/app_rand.c","./lib/openssl-1.0.0d/apps/demoCA/serial","./lib/openssl-1.0.0d/apps/demoCA/cacert.pem","./lib/openssl-1.0.0d/apps/demoCA/index.txt","./lib/openssl-1.0.0d/apps/demoCA/private/cakey.pem","./lib/openssl-1.0.0d/apps/set/set-m-ca.pem","./lib/openssl-1.0.0d/apps/set/set_b_ca.pem","./lib/openssl-1.0.0d/apps/set/set-g-ca.pem","./lib/openssl-1.0.0d/apps/set/set_c_ca.pem","./lib/openssl-1.0.0d/apps/set/set_d_ct.pem","./lib/openssl-1.0.0d/apps/set/set_root.pem","./lib/openssl-1.0.0d/bugs/sgiccbug.c","./lib/openssl-1.0.0d/bugs/SSLv3","./lib/openssl-1.0.0d/bugs/MS","./lib/openssl-1.0.0d/bugs/dggccbug.c","./lib/openssl-1.0.0d/bugs/stream.c","./lib/openssl-1.0.0d/bugs/sslref.dif","./lib/openssl-1.0.0d/bugs/ultrixcc.c","./lib/openssl-1.0.0d/bugs/alpha.c","./lib/openssl-1.0.0d/ms/x86asm.bat","./lib/openssl-1.0.0d/ms/req2CA.ss","./lib/openssl-1.0.0d/ms/uplink-ia64.pl","./lib/openssl-1.0.0d/ms/cmp.pl","./lib/openssl-1.0.0d/ms/certCA.srl","./lib/openssl-1.0.0d/ms/do_ms.bat","./lib/openssl-1.0.0d/ms/certCA.ss","./lib/openssl-1.0.0d/ms/do_nt.bat","./lib/openssl-1.0.0d/ms/testpemce.bat","./lib/openssl-1.0.0d/ms/uplink-x86.pl","./lib/openssl-1.0.0d/ms/testpem.bat","./lib/openssl-1.0.0d/ms/test.bat","./lib/openssl-1.0.0d/ms/testenc.bat","./lib/openssl-1.0.0d/ms/uplink.pl","./lib/openssl-1.0.0d/ms/bcb4.bat","./lib/openssl-1.0.0d/ms/testce2.bat","./lib/openssl-1.0.0d/ms/uplink.h","./lib/openssl-1.0.0d/ms/uplink.c","./lib/openssl-1.0.0d/ms/keyU.ss","./lib/openssl-1.0.0d/ms/testssce.bat","./lib/openssl-1.0.0d/ms/tpem.bat","./lib/openssl-1.0.0d/ms/testce.bat","./lib/openssl-1.0.0d/ms/tpemce.bat","./lib/openssl-1.0.0d/ms/do_nasm.bat","./lib/openssl-1.0.0d/ms/uplink-common.pl","./lib/openssl-1.0.0d/ms/reqCA.ss","./lib/openssl-1.0.0d/ms/do_win64a.bat","./lib/openssl-1.0.0d/ms/uplink-x86_64.pl","./lib/openssl-1.0.0d/ms/mingw32.bat","./lib/openssl-1.0.0d/ms/mw.bat","./lib/openssl-1.0.0d/ms/testencce.bat","./lib/openssl-1.0.0d/ms/testss.bat","./lib/openssl-1.0.0d/ms/.rnd","./lib/openssl-1.0.0d/ms/certU.ss","./lib/openssl-1.0.0d/ms/speed32.bat","./lib/openssl-1.0.0d/ms/do_win64i.bat","./lib/openssl-1.0.0d/ms/tencce.bat","./lib/openssl-1.0.0d/ms/README","./lib/openssl-1.0.0d/ms/tenc.bat","./lib/openssl-1.0.0d/ms/reqU.ss","./lib/openssl-1.0.0d/ms/tlhelp32.h","./lib/openssl-1.0.0d/ms/keyCA.ss","./lib/openssl-1.0.0d/ms/applink.c","./lib/openssl-1.0.0d/ms/32all.bat","./lib/openssl-1.0.0d/ssl/dtls1.h","./lib/openssl-1.0.0d/ssl/ssl-lib.com","./lib/openssl-1.0.0d/ssl/t1_meth.c","./lib/openssl-1.0.0d/ssl/ssl_rsa.c","./lib/openssl-1.0.0d/ssl/ssl23.h","./lib/openssl-1.0.0d/ssl/s3_srvr.c","./lib/openssl-1.0.0d/ssl/ssl_ciph.c","./lib/openssl-1.0.0d/ssl/t1_reneg.c","./lib/openssl-1.0.0d/ssl/s2_srvr.c","./lib/openssl-1.0.0d/ssl/ssl_txt.c","./lib/openssl-1.0.0d/ssl/s23_lib.c","./lib/openssl-1.0.0d/ssl/d1_clnt.c","./lib/openssl-1.0.0d/ssl/d1_pkt.c","./lib/openssl-1.0.0d/ssl/s3_both.c","./lib/openssl-1.0.0d/ssl/ssl_task.c","./lib/openssl-1.0.0d/ssl/s23_clnt.c","./lib/openssl-1.0.0d/ssl/s3_pkt.c","./lib/openssl-1.0.0d/ssl/ssl_cert.c","./lib/openssl-1.0.0d/ssl/kssl_lcl.h","./lib/openssl-1.0.0d/ssl/s3_lib.c","./lib/openssl-1.0.0d/ssl/kssl.c","./lib/openssl-1.0.0d/ssl/t1_clnt.c","./lib/openssl-1.0.0d/ssl/ssl_err.c","./lib/openssl-1.0.0d/ssl/ssl_algs.c","./lib/openssl-1.0.0d/ssl/ssl.h","./lib/openssl-1.0.0d/ssl/d1_lib.c","./lib/openssl-1.0.0d/ssl/t1_enc.c","./lib/openssl-1.0.0d/ssl/d1_srvr.c","./lib/openssl-1.0.0d/ssl/s2_meth.c","./lib/openssl-1.0.0d/ssl/s23_srvr.c","./lib/openssl-1.0.0d/ssl/ssl3.h","./lib/openssl-1.0.0d/ssl/s2_enc.c","./lib/openssl-1.0.0d/ssl/Makefile","./lib/openssl-1.0.0d/ssl/s23_meth.c","./lib/openssl-1.0.0d/ssl/s2_clnt.c","./lib/openssl-1.0.0d/ssl/s2_lib.c","./lib/openssl-1.0.0d/ssl/ssl_err2.c","./lib/openssl-1.0.0d/ssl/s3_meth.c","./lib/openssl-1.0.0d/ssl/kssl.h","./lib/openssl-1.0.0d/ssl/d1_enc.c","./lib/openssl-1.0.0d/ssl/d1_both.c","./lib/openssl-1.0.0d/ssl/ssl_locl.h","./lib/openssl-1.0.0d/ssl/s23_pkt.c","./lib/openssl-1.0.0d/ssl/ssl2.h","./lib/openssl-1.0.0d/ssl/t1_srvr.c","./lib/openssl-1.0.0d/ssl/tls1.h","./lib/openssl-1.0.0d/ssl/s3_clnt.c","./lib/openssl-1.0.0d/ssl/s2_pkt.c","./lib/openssl-1.0.0d/ssl/install.com","./lib/openssl-1.0.0d/ssl/s3_enc.c","./lib/openssl-1.0.0d/ssl/ssl_stat.c","./lib/openssl-1.0.0d/ssl/t1_lib.c","./lib/openssl-1.0.0d/ssl/bio_ssl.c","./lib/openssl-1.0.0d/ssl/ssl_asn1.c","./lib/openssl-1.0.0d/ssl/ssl_lib.c","./lib/openssl-1.0.0d/ssl/d1_meth.c","./lib/openssl-1.0.0d/ssl/ssl_sess.c","./lib/openssl-1.0.0d/ssl/ssltest.c","./lib/openssl-1.0.0d/times/pent2.t","./lib/openssl-1.0.0d/times/aixold.t","./lib/openssl-1.0.0d/times/sparc.t","./lib/openssl-1.0.0d/times/readme","./lib/openssl-1.0.0d/times/L1","./lib/openssl-1.0.0d/times/R4400.t","./lib/openssl-1.0.0d/times/s586-100.nt","./lib/openssl-1.0.0d/times/200.lnx","./lib/openssl-1.0.0d/times/alpha.t","./lib/openssl-1.0.0d/times/alpha400.t","./lib/openssl-1.0.0d/times/hpux.t","./lib/openssl-1.0.0d/times/586-1002.lnx","./lib/openssl-1.0.0d/times/486-66.w31","./lib/openssl-1.0.0d/times/100.lnx","./lib/openssl-1.0.0d/times/586-100.ntx","./lib/openssl-1.0.0d/times/586-100.nt","./lib/openssl-1.0.0d/times/sparcLX.t","./lib/openssl-1.0.0d/times/686-200.lnx","./lib/openssl-1.0.0d/times/686-200.bsd","./lib/openssl-1.0.0d/times/sgi.t","./lib/openssl-1.0.0d/times/586-100.LN3","./lib/openssl-1.0.0d/times/sparc2","./lib/openssl-1.0.0d/times/dgux-x86.t","./lib/openssl-1.0.0d/times/R10000.t","./lib/openssl-1.0.0d/times/586-100.ln4","./lib/openssl-1.0.0d/times/686-200.nt","./lib/openssl-1.0.0d/times/586-100.NT2","./lib/openssl-1.0.0d/times/586p-100.lnx","./lib/openssl-1.0.0d/times/586-100.lnx","./lib/openssl-1.0.0d/times/100.nt","./lib/openssl-1.0.0d/times/hpux-kr.t","./lib/openssl-1.0.0d/times/aix.t","./lib/openssl-1.0.0d/times/cyrix100.lnx","./lib/openssl-1.0.0d/times/s586-100.lnx","./lib/openssl-1.0.0d/times/5.lnx","./lib/openssl-1.0.0d/times/586-100.dos","./lib/openssl-1.0.0d/times/p2.w95","./lib/openssl-1.0.0d/times/hpux-acc.t","./lib/openssl-1.0.0d/times/486-66.nt","./lib/openssl-1.0.0d/times/586-100.w31","./lib/openssl-1.0.0d/times/dgux.t","./lib/openssl-1.0.0d/times/486-66.dos","./lib/openssl-1.0.0d/times/usparc.t","./lib/openssl-1.0.0d/times/586-085i.nt","./lib/openssl-1.0.0d/times/x86/dess.cpp","./lib/openssl-1.0.0d/times/x86/casts.cpp","./lib/openssl-1.0.0d/times/x86/bfs.cpp","./lib/openssl-1.0.0d/times/x86/rc4s.cpp","./lib/openssl-1.0.0d/times/x86/sha1s.cpp","./lib/openssl-1.0.0d/times/x86/des3s.cpp","./lib/openssl-1.0.0d/times/x86/md4s.cpp","./lib/openssl-1.0.0d/times/x86/md5s.cpp","./lib/openssl-1.0.0d/times/090/586-100.nt","./lib/openssl-1.0.0d/times/091/alpha164.lnx","./lib/openssl-1.0.0d/times/091/mips-rel.pl","./lib/openssl-1.0.0d/times/091/alpha064.osf","./lib/openssl-1.0.0d/times/091/486-50.nt","./lib/openssl-1.0.0d/times/091/686-200.lnx","./lib/openssl-1.0.0d/times/091/alpha164.osf","./lib/openssl-1.0.0d/times/091/r3000.ult","./lib/openssl-1.0.0d/times/091/68000.bsd","./lib/openssl-1.0.0d/times/091/586-100.lnx","./lib/openssl-1.0.0d/times/091/r10000.irx","./lib/openssl-1.0.0d/times/091/r4400.irx","./lib/mm/mm.c","./lib/mm/Hakefile","./lib/mm/slot_alloc.c","./lib/newlib/setup.com","./lib/newlib/ltgcc.m4","./lib/newlib/README-maintainer-mode","./lib/newlib/mkdep","./lib/newlib/install-sh","./lib/newlib/Hakefile","./lib/newlib/configure","./lib/newlib/makefile.vms","./lib/newlib/ltoptions.m4","./lib/newlib/MAINTAINERS","./lib/newlib/ltversion.m4","./lib/newlib/lt~obsolete.m4","./lib/newlib/mkinstalldirs","./lib/newlib/move-if-change","./lib/newlib/ltsugar.m4","./lib/newlib/etc/configbuild.tin","./lib/newlib/etc/configdev.fig","./lib/newlib/etc/Makefile.in","./lib/newlib/etc/configbuild.fig","./lib/newlib/etc/configure.in","./lib/newlib/etc/configure","./lib/newlib/etc/add-log.vi","./lib/newlib/etc/configure.texi","./lib/newlib/etc/ChangeLog","./lib/newlib/etc/configbuild.ein","./lib/newlib/etc/make-stds.texi","./lib/newlib/etc/configdev.tin","./lib/newlib/etc/gnu-oids.texi","./lib/newlib/etc/configdev.ein","./lib/newlib/config/gxx-include-dir.m4","./lib/newlib/config/mh-pa","./lib/newlib/config/mt-mips16-compat","./lib/newlib/config/unwind_ipinfo.m4","./lib/newlib/config/proginstall.m4","./lib/newlib/config/mh-cygwin","./lib/newlib/config/mt-mep","./lib/newlib/config/stdint.m4","./lib/newlib/config/bootstrap-O1.mk","./lib/newlib/config/bootstrap-lto.mk","./lib/newlib/config/mh-cxux","./lib/newlib/config/mh-decstation","./lib/newlib/config/mt-ospace","./lib/newlib/config/mh-solaris","./lib/newlib/config/bootstrap-debug-lean.mk","./lib/newlib/config/tcl.m4","./lib/newlib/config/mt-netware","./lib/newlib/config/mh-x86omitfp","./lib/newlib/config/bootstrap-debug-ckovw.mk","./lib/newlib/config/depstand.m4","./lib/newlib/config/override.m4","./lib/newlib/config/mt-d30v","./lib/newlib/config/mt-wince","./lib/newlib/config/dfp.m4","./lib/newlib/config/mh-dgux386","./lib/newlib/config/bootstrap-O3.mk","./lib/newlib/config/mt-gnu","./lib/newlib/config/mh-pa-hpux10","./lib/newlib/config/tls.m4","./lib/newlib/config/multi.m4","./lib/newlib/config/mt-mips-elfoabi","./lib/newlib/config/mh-sysv5","./lib/newlib/config/mt-spu","./lib/newlib/config/mh-necv4","./lib/newlib/config/mh-ppc-aix","./lib/newlib/config/gettext-sister.m4","./lib/newlib/config/acinclude.m4","./lib/newlib/config/zlib.m4","./lib/newlib/config/mh-mingw","./lib/newlib/config/mh-sysv4","./lib/newlib/config/futex.m4","./lib/newlib/config/mh-djgpp","./lib/newlib/config/acx.m4","./lib/newlib/config/plugins.m4","./lib/newlib/config/mt-alphaieee","./lib/newlib/config/bootstrap-debug-lib.mk","./lib/newlib/config/mt-mips-gnu","./lib/newlib/config/extensions.m4","./lib/newlib/config/mh-lynxrs6k","./lib/newlib/config/enable.m4","./lib/newlib/config/mt-sde","./lib/newlib/config/mh-darwin","./lib/newlib/config/bootstrap-debug-big.mk","./lib/newlib/config/largefile.m4","./lib/newlib/config/bootstrap-debug.mk","./lib/newlib/config/mh-ncr3000","./lib/newlib/config/mh-sco","./lib/newlib/config/mt-v810","./lib/newlib/config/mh-interix","./lib/newlib/config/bootstrap-time.mk","./lib/newlib/config/no-executables.m4","./lib/newlib/newlib/stamp-h.in","./lib/newlib/newlib/Makefile.in","./lib/newlib/newlib/NEWS","./lib/newlib/newlib/HOWTO","./lib/newlib/newlib/newlib.hin","./lib/newlib/newlib/Hakefile","./lib/newlib/newlib/acconfig.h","./lib/newlib/newlib/acinclude.m4","./lib/newlib/newlib/configure.in","./lib/newlib/newlib/Makefile.am","./lib/newlib/newlib/MAINTAINERS","./lib/newlib/newlib/configure.host","./lib/newlib/newlib/Makefile.shared","./lib/newlib/newlib/aclocal.m4","./lib/newlib/newlib/confsubdir.m4","./lib/newlib/newlib/libm/Makefile.in","./lib/newlib/newlib/libm/Hakefile","./lib/newlib/newlib/libm/configure.in","./lib/newlib/newlib/libm/Makefile.am","./lib/newlib/newlib/libm/config.h.in","./lib/newlib/newlib/libm/aclocal.m4","./lib/newlib/newlib/libm/complex/casinhf.c","./lib/newlib/newlib/libm/complex/clog.c","./lib/newlib/newlib/libm/complex/complex.tex","./lib/newlib/newlib/libm/complex/creal.c","./lib/newlib/newlib/libm/complex/ccos.c","./lib/newlib/newlib/libm/complex/cephes_subrf.h","./lib/newlib/newlib/libm/complex/casinh.c","./lib/newlib/newlib/libm/complex/casin.c","./lib/newlib/newlib/libm/complex/catanh.c","./lib/newlib/newlib/libm/complex/cproj.c","./lib/newlib/newlib/libm/complex/Makefile.in","./lib/newlib/newlib/libm/complex/csinhf.c","./lib/newlib/newlib/libm/complex/cacosf.c","./lib/newlib/newlib/libm/complex/ccoshf.c","./lib/newlib/newlib/libm/complex/casinf.c","./lib/newlib/newlib/libm/complex/ccosf.c","./lib/newlib/newlib/libm/complex/carg.c","./lib/newlib/newlib/libm/complex/csin.c","./lib/newlib/newlib/libm/complex/cexpf.c","./lib/newlib/newlib/libm/complex/cabs.c","./lib/newlib/newlib/libm/complex/ctanf.c","./lib/newlib/newlib/libm/complex/ctan.c","./lib/newlib/newlib/libm/complex/cephes_subr.c","./lib/newlib/newlib/libm/complex/cimag.c","./lib/newlib/newlib/libm/complex/catanf.c","./lib/newlib/newlib/libm/complex/catanhf.c","./lib/newlib/newlib/libm/complex/cabsf.c","./lib/newlib/newlib/libm/complex/Hakefile","./lib/newlib/newlib/libm/complex/cpow.c","./lib/newlib/newlib/libm/complex/conjf.c","./lib/newlib/newlib/libm/complex/conj.c","./lib/newlib/newlib/libm/complex/csqrtf.c","./lib/newlib/newlib/libm/complex/Makefile.am","./lib/newlib/newlib/libm/complex/cimagf.c","./lib/newlib/newlib/libm/complex/crealf.c","./lib/newlib/newlib/libm/complex/cprojf.c","./lib/newlib/newlib/libm/complex/csinh.c","./lib/newlib/newlib/libm/complex/cacosh.c","./lib/newlib/newlib/libm/complex/ctanh.c","./lib/newlib/newlib/libm/complex/cpowf.c","./lib/newlib/newlib/libm/complex/catan.c","./lib/newlib/newlib/libm/complex/cacos.c","./lib/newlib/newlib/libm/complex/ctanhf.c","./lib/newlib/newlib/libm/complex/clogf.c","./lib/newlib/newlib/libm/complex/csqrt.c","./lib/newlib/newlib/libm/complex/cexp.c","./lib/newlib/newlib/libm/complex/cephes_subr.h","./lib/newlib/newlib/libm/complex/cargf.c","./lib/newlib/newlib/libm/complex/ccosh.c","./lib/newlib/newlib/libm/complex/cephes_subrf.c","./lib/newlib/newlib/libm/complex/csinf.c","./lib/newlib/newlib/libm/complex/cacoshf.c","./lib/newlib/newlib/libm/test/acos_vec.c","./lib/newlib/newlib/libm/test/atanh_vec.c","./lib/newlib/newlib/libm/test/logf_vec.c","./lib/newlib/newlib/libm/test/cosh_vec.c","./lib/newlib/newlib/libm/test/log10_vec.c","./lib/newlib/newlib/libm/test/convert.c","./lib/newlib/newlib/libm/test/gamma_vec.c","./lib/newlib/newlib/libm/test/coshf_vec.c","./lib/newlib/newlib/libm/test/j0f_vec.c","./lib/newlib/newlib/libm/test/fabs_vec.c","./lib/newlib/newlib/libm/test/asinhf_vec.c","./lib/newlib/newlib/libm/test/cosf_vec.c","./lib/newlib/newlib/libm/test/test_ieee.c","./lib/newlib/newlib/libm/test/floorf_vec.c","./lib/newlib/newlib/libm/test/gammaf_vec.c","./lib/newlib/newlib/libm/test/dvec.c","./lib/newlib/newlib/libm/test/floor_vec.c","./lib/newlib/newlib/libm/test/tanh_vec.c","./lib/newlib/newlib/libm/test/erfc_vec.c","./lib/newlib/newlib/libm/test/math2.c","./lib/newlib/newlib/libm/test/expf_vec.c","./lib/newlib/newlib/libm/test/acoshf_vec.c","./lib/newlib/newlib/libm/test/Makefile.in","./lib/newlib/newlib/libm/test/tanf_vec.c","./lib/newlib/newlib/libm/test/log10f_vec.c","./lib/newlib/newlib/libm/test/acosf_vec.c","./lib/newlib/newlib/libm/test/fmodf_vec.c","./lib/newlib/newlib/libm/test/erf_vec.c","./lib/newlib/newlib/libm/test/cos_vec.c","./lib/newlib/newlib/libm/test/hypot_vec.c","./lib/newlib/newlib/libm/test/ceilf_vec.c","./lib/newlib/newlib/libm/test/log2f_vec.c","./lib/newlib/newlib/libm/test/asin_vec.c","./lib/newlib/newlib/libm/test/sqrt_vec.c","./lib/newlib/newlib/libm/test/test.h","./lib/newlib/newlib/libm/test/test_is.c","./lib/newlib/newlib/libm/test/tanhf_vec.c","./lib/newlib/newlib/libm/test/test.c","./lib/newlib/newlib/libm/test/dcvt.c","./lib/newlib/newlib/libm/test/asinh_vec.c","./lib/newlib/newlib/libm/test/j1_vec.c","./lib/newlib/newlib/libm/test/math.c","./lib/newlib/newlib/libm/test/j0_vec.c","./lib/newlib/newlib/libm/test/y0_vec.c","./lib/newlib/newlib/libm/test/sinh_vec.c","./lib/newlib/newlib/libm/test/jnf_vec.c","./lib/newlib/newlib/libm/test/sprint_ivec.c","./lib/newlib/newlib/libm/test/string.c","./lib/newlib/newlib/libm/test/atanf_vec.c","./lib/newlib/newlib/libm/test/y1f_vec.c","./lib/newlib/newlib/libm/test/y0f_vec.c","./lib/newlib/newlib/libm/test/log1pf_vec.c","./lib/newlib/newlib/libm/test/sprint_vec.c","./lib/newlib/newlib/libm/test/jn_vec.c","./lib/newlib/newlib/libm/test/erff_vec.c","./lib/newlib/newlib/libm/test/y1_vec.c","./lib/newlib/newlib/libm/test/atan_vec.c","./lib/newlib/newlib/libm/test/yn_vec.c","./lib/newlib/newlib/libm/test/sinhf_vec.c","./lib/newlib/newlib/libm/test/iconv_vec.c","./lib/newlib/newlib/libm/test/asinf_vec.c","./lib/newlib/newlib/libm/test/atan2_vec.c","./lib/newlib/newlib/libm/test/log1p_vec.c","./lib/newlib/newlib/libm/test/sinf_vec.c","./lib/newlib/newlib/libm/test/acosh_vec.c","./lib/newlib/newlib/libm/test/atan2f_vec.c","./lib/newlib/newlib/libm/test/j1f_vec.c","./lib/newlib/newlib/libm/test/tan_vec.c","./lib/newlib/newlib/libm/test/sin_vec.c","./lib/newlib/newlib/libm/test/exp_vec.c","./lib/newlib/newlib/libm/test/ynf_vec.c","./lib/newlib/newlib/libm/test/fabsf_vec.c","./lib/newlib/newlib/libm/test/log2_vec.c","./lib/newlib/newlib/libm/test/hypotf_vec.c","./lib/newlib/newlib/libm/test/sqrtf_vec.c","./lib/newlib/newlib/libm/test/atanhf_vec.c","./lib/newlib/newlib/libm/test/conv_vec.c","./lib/newlib/newlib/libm/test/fmod_vec.c","./lib/newlib/newlib/libm/test/erfcf_vec.c","./lib/newlib/newlib/libm/test/ceil_vec.c","./lib/newlib/newlib/libm/test/log_vec.c","./lib/newlib/newlib/libm/common/fminl.c","./lib/newlib/newlib/libm/common/sf_isnan.c","./lib/newlib/newlib/libm/common/sf_copysign.c","./lib/newlib/newlib/libm/common/llroundl.c","./lib/newlib/newlib/libm/common/s_isnan.c","./lib/newlib/newlib/libm/common/s_finite.c","./lib/newlib/newlib/libm/common/sqrtl.c","./lib/newlib/newlib/libm/common/fmaxl.c","./lib/newlib/newlib/libm/common/erfl.c","./lib/newlib/newlib/libm/common/sf_trunc.c","./lib/newlib/newlib/libm/common/tanhl.c","./lib/newlib/newlib/libm/common/expl.c","./lib/newlib/newlib/libm/common/s_exp10.c","./lib/newlib/newlib/libm/common/fmal.c","./lib/newlib/newlib/libm/common/s_isinf.c","./lib/newlib/newlib/libm/common/s_log2.c","./lib/newlib/newlib/libm/common/s_fdim.c","./lib/newlib/newlib/libm/common/s_copysign.c","./lib/newlib/newlib/libm/common/local.h","./lib/newlib/newlib/libm/common/sf_fmax.c","./lib/newlib/newlib/libm/common/sf_nextafter.c","./lib/newlib/newlib/libm/common/s_log1p.c","./lib/newlib/newlib/libm/common/s_logb.c","./lib/newlib/newlib/libm/common/modfl.c","./lib/newlib/newlib/libm/common/acoshl.c","./lib/newlib/newlib/libm/common/ldexpl.c","./lib/newlib/newlib/libm/common/sinhl.c","./lib/newlib/newlib/libm/common/s_modf.c","./lib/newlib/newlib/libm/common/ilogbl.c","./lib/newlib/newlib/libm/common/Makefile.in","./lib/newlib/newlib/libm/common/sf_expm1.c","./lib/newlib/newlib/libm/common/fdlibm.h","./lib/newlib/newlib/libm/common/s_lround.c","./lib/newlib/newlib/libm/common/asinhl.c","./lib/newlib/newlib/libm/common/s_fmax.c","./lib/newlib/newlib/libm/common/sf_lround.c","./lib/newlib/newlib/libm/common/powl.c","./lib/newlib/newlib/libm/common/s_infinity.c","./lib/newlib/newlib/libm/common/s_rint.c","./lib/newlib/newlib/libm/common/s_signbit.c","./lib/newlib/newlib/libm/common/remainderl.c","./lib/newlib/newlib/libm/common/sf_modf.c","./lib/newlib/newlib/libm/common/s_scalbln.c","./lib/newlib/newlib/libm/common/s_trunc.c","./lib/newlib/newlib/libm/common/s_infconst.c","./lib/newlib/newlib/libm/common/isgreater.c","./lib/newlib/newlib/libm/common/fdiml.c","./lib/newlib/newlib/libm/common/log10l.c","./lib/newlib/newlib/libm/common/s_ilogb.c","./lib/newlib/newlib/libm/common/asinl.c","./lib/newlib/newlib/libm/common/sf_nan.c","./lib/newlib/newlib/libm/common/roundl.c","./lib/newlib/newlib/libm/common/nearbyintl.c","./lib/newlib/newlib/libm/common/sf_scalbln.c","./lib/newlib/newlib/libm/common/atanhl.c","./lib/newlib/newlib/libm/common/sf_exp10.c","./lib/newlib/newlib/libm/common/sf_infinity.c","./lib/newlib/newlib/libm/common/scalblnl.c","./lib/newlib/newlib/libm/common/s_isinfd.c","./lib/newlib/newlib/libm/common/s_llrint.c","./lib/newlib/newlib/libm/common/s_expm1.c","./lib/newlib/newlib/libm/common/remquol.c","./lib/newlib/newlib/libm/common/s_pow10.c","./lib/newlib/newlib/libm/common/cbrtl.c","./lib/newlib/newlib/libm/common/Hakefile","./lib/newlib/newlib/libm/common/sf_logb.c","./lib/newlib/newlib/libm/common/ceill.c","./lib/newlib/newlib/libm/common/s_fma.c","./lib/newlib/newlib/libm/common/sf_rint.c","./lib/newlib/newlib/libm/common/s_cbrt.c","./lib/newlib/newlib/libm/common/s_nan.c","./lib/newlib/newlib/libm/common/sf_scalbn.c","./lib/newlib/newlib/libm/common/exp2l.c","./lib/newlib/newlib/libm/common/sf_fdim.c","./lib/newlib/newlib/libm/common/sf_finite.c","./lib/newlib/newlib/libm/common/sf_fmin.c","./lib/newlib/newlib/libm/common/s_lib_ver.c","./lib/newlib/newlib/libm/common/sf_fpclassify.c","./lib/newlib/newlib/libm/common/Makefile.am","./lib/newlib/newlib/libm/common/sf_round.c","./lib/newlib/newlib/libm/common/s_scalbn.c","./lib/newlib/newlib/libm/common/s_lrint.c","./lib/newlib/newlib/libm/common/nanl.c","./lib/newlib/newlib/libm/common/logl.c","./lib/newlib/newlib/libm/common/sf_log1p.c","./lib/newlib/newlib/libm/common/fmodl.c","./lib/newlib/newlib/libm/common/s_llround.c","./lib/newlib/newlib/libm/common/sf_isnanf.c","./lib/newlib/newlib/libm/common/s_round.c","./lib/newlib/newlib/libm/common/rintl.c","./lib/newlib/newlib/libm/common/sf_cbrt.c","./lib/newlib/newlib/libm/common/erfcl.c","./lib/newlib/newlib/libm/common/llrintl.c","./lib/newlib/newlib/libm/common/sf_llround.c","./lib/newlib/newlib/libm/common/cosl.c","./lib/newlib/newlib/libm/common/sf_log2.c","./lib/newlib/newlib/libm/common/sf_fma.c","./lib/newlib/newlib/libm/common/acosl.c","./lib/newlib/newlib/libm/common/sinl.c","./lib/newlib/newlib/libm/common/coshl.c","./lib/newlib/newlib/libm/common/sf_isinff.c","./lib/newlib/newlib/libm/common/tanl.c","./lib/newlib/newlib/libm/common/s_isnand.c","./lib/newlib/newlib/libm/common/atan2l.c","./lib/newlib/newlib/libm/common/log1pl.c","./lib/newlib/newlib/libm/common/copysignl.c","./lib/newlib/newlib/libm/common/sf_remquo.c","./lib/newlib/newlib/libm/common/sf_pow10.c","./lib/newlib/newlib/libm/common/truncl.c","./lib/newlib/newlib/libm/common/lgammal.c","./lib/newlib/newlib/libm/common/s_nearbyint.c","./lib/newlib/newlib/libm/common/hypotl.c","./lib/newlib/newlib/libm/common/expm1l.c","./lib/newlib/newlib/libm/common/tgammal.c","./lib/newlib/newlib/libm/common/s_matherr.c","./lib/newlib/newlib/libm/common/atanl.c","./lib/newlib/newlib/libm/common/sf_ilogb.c","./lib/newlib/newlib/libm/common/sf_nearbyint.c","./lib/newlib/newlib/libm/common/lroundl.c","./lib/newlib/newlib/libm/common/frexpl.c","./lib/newlib/newlib/libm/common/s_fmin.c","./lib/newlib/newlib/libm/common/lrintl.c","./lib/newlib/newlib/libm/common/sf_lrint.c","./lib/newlib/newlib/libm/common/nextafterl.c","./lib/newlib/newlib/libm/common/fabsl.c","./lib/newlib/newlib/libm/common/sf_llrint.c","./lib/newlib/newlib/libm/common/s_fpclassify.c","./lib/newlib/newlib/libm/common/s_remquo.c","./lib/newlib/newlib/libm/common/s_nextafter.c","./lib/newlib/newlib/libm/common/floorl.c","./lib/newlib/newlib/libm/common/scalbnl.c","./lib/newlib/newlib/libm/common/sf_isinf.c","./lib/newlib/newlib/libm/mathfp/sf_asin.c","./lib/newlib/newlib/libm/mathfp/er_lgamma.c","./lib/newlib/newlib/libm/mathfp/s_cosh.c","./lib/newlib/newlib/libm/mathfp/s_fmod.c","./lib/newlib/newlib/libm/mathfp/zmath.h","./lib/newlib/newlib/libm/mathfp/sf_fabs.c","./lib/newlib/newlib/libm/mathfp/sf_sine.c","./lib/newlib/newlib/libm/mathfp/s_frexp.c","./lib/newlib/newlib/libm/mathfp/sf_floor.c","./lib/newlib/newlib/libm/mathfp/s_tan.c","./lib/newlib/newlib/libm/mathfp/s_sqrt.c","./lib/newlib/newlib/libm/mathfp/sf_acos.c","./lib/newlib/newlib/libm/mathfp/s_floor.c","./lib/newlib/newlib/libm/mathfp/sf_cosh.c","./lib/newlib/newlib/libm/mathfp/e_acosh.c","./lib/newlib/newlib/libm/mathfp/sf_exp2.c","./lib/newlib/newlib/libm/mathfp/erf_gamma.c","./lib/newlib/newlib/libm/mathfp/sf_erf.c","./lib/newlib/newlib/libm/mathfp/Makefile.in","./lib/newlib/newlib/libm/mathfp/ef_remainder.c","./lib/newlib/newlib/libm/mathfp/s_sin.c","./lib/newlib/newlib/libm/mathfp/s_ispos.c","./lib/newlib/newlib/libm/mathfp/s_sine.c","./lib/newlib/newlib/libm/mathfp/s_ceil.c","./lib/newlib/newlib/libm/mathfp/sf_sin.c","./lib/newlib/newlib/libm/mathfp/sf_asinh.c","./lib/newlib/newlib/libm/mathfp/s_sincos.c","./lib/newlib/newlib/libm/mathfp/e_j1.c","./lib/newlib/newlib/libm/mathfp/s_signif.c","./lib/newlib/newlib/libm/mathfp/s_fabs.c","./lib/newlib/newlib/libm/mathfp/sf_sincos.c","./lib/newlib/newlib/libm/mathfp/s_log.c","./lib/newlib/newlib/libm/mathfp/sf_tgamma.c","./lib/newlib/newlib/libm/mathfp/sf_fmod.c","./lib/newlib/newlib/libm/mathfp/w_drem.c","./lib/newlib/newlib/libm/mathfp/s_ldexp.c","./lib/newlib/newlib/libm/mathfp/mathfp.tex","./lib/newlib/newlib/libm/mathfp/sf_logarithm.c","./lib/newlib/newlib/libm/mathfp/sf_log.c","./lib/newlib/newlib/libm/mathfp/s_asin.c","./lib/newlib/newlib/libm/mathfp/sf_cos.c","./lib/newlib/newlib/libm/mathfp/s_exp.c","./lib/newlib/newlib/libm/mathfp/sf_ceil.c","./lib/newlib/newlib/libm/mathfp/sf_ispos.c","./lib/newlib/newlib/libm/mathfp/w_cabs.c","./lib/newlib/newlib/libm/mathfp/s_atan2.c","./lib/newlib/newlib/libm/mathfp/e_remainder.c","./lib/newlib/newlib/libm/mathfp/sf_log10.c","./lib/newlib/newlib/libm/mathfp/w_jn.c","./lib/newlib/newlib/libm/mathfp/s_mathcnst.c","./lib/newlib/newlib/libm/mathfp/erf_lgamma.c","./lib/newlib/newlib/libm/mathfp/sf_sineh.c","./lib/newlib/newlib/libm/mathfp/s_erf.c","./lib/newlib/newlib/libm/mathfp/er_gamma.c","./lib/newlib/newlib/libm/mathfp/s_tanh.c","./lib/newlib/newlib/libm/mathfp/sf_tanh.c","./lib/newlib/newlib/libm/mathfp/ef_j0.c","./lib/newlib/newlib/libm/mathfp/sf_asine.c","./lib/newlib/newlib/libm/mathfp/sf_atangent.c","./lib/newlib/newlib/libm/mathfp/s_cos.c","./lib/newlib/newlib/libm/mathfp/s_sinh.c","./lib/newlib/newlib/libm/mathfp/Makefile.am","./lib/newlib/newlib/libm/mathfp/s_sineh.c","./lib/newlib/newlib/libm/mathfp/s_logarithm.c","./lib/newlib/newlib/libm/mathfp/s_acos.c","./lib/newlib/newlib/libm/mathfp/wf_cabs.c","./lib/newlib/newlib/libm/mathfp/wf_drem.c","./lib/newlib/newlib/libm/mathfp/ef_j1.c","./lib/newlib/newlib/libm/mathfp/sf_pow.c","./lib/newlib/newlib/libm/mathfp/sf_signif.c","./lib/newlib/newlib/libm/mathfp/s_pow.c","./lib/newlib/newlib/libm/mathfp/sf_frexp.c","./lib/newlib/newlib/libm/mathfp/s_asinh.c","./lib/newlib/newlib/libm/mathfp/sf_exp.c","./lib/newlib/newlib/libm/mathfp/sf_tan.c","./lib/newlib/newlib/libm/mathfp/s_atan.c","./lib/newlib/newlib/libm/mathfp/s_numtest.c","./lib/newlib/newlib/libm/mathfp/s_log10.c","./lib/newlib/newlib/libm/mathfp/s_atangent.c","./lib/newlib/newlib/libm/mathfp/ef_scalb.c","./lib/newlib/newlib/libm/mathfp/sf_sqrt.c","./lib/newlib/newlib/libm/mathfp/sf_atan.c","./lib/newlib/newlib/libm/mathfp/ef_atanh.c","./lib/newlib/newlib/libm/mathfp/sf_numtest.c","./lib/newlib/newlib/libm/mathfp/s_sinf.c","./lib/newlib/newlib/libm/mathfp/e_j0.c","./lib/newlib/newlib/libm/mathfp/ef_acosh.c","./lib/newlib/newlib/libm/mathfp/e_scalb.c","./lib/newlib/newlib/libm/mathfp/s_exp2.c","./lib/newlib/newlib/libm/mathfp/sf_atan2.c","./lib/newlib/newlib/libm/mathfp/e_atanh.c","./lib/newlib/newlib/libm/mathfp/sf_sinh.c","./lib/newlib/newlib/libm/mathfp/s_tgamma.c","./lib/newlib/newlib/libm/mathfp/sf_ldexp.c","./lib/newlib/newlib/libm/mathfp/e_hypot.c","./lib/newlib/newlib/libm/mathfp/wf_jn.c","./lib/newlib/newlib/libm/mathfp/s_asine.c","./lib/newlib/newlib/libm/mathfp/ef_hypot.c","./lib/newlib/newlib/libm/machine/Makefile.in","./lib/newlib/newlib/libm/machine/configure.in","./lib/newlib/newlib/libm/machine/Makefile.am","./lib/newlib/newlib/libm/machine/aclocal.m4","./lib/newlib/newlib/libm/machine/spu/feupdateenv.c","./lib/newlib/newlib/libm/machine/spu/sf_isnan.c","./lib/newlib/newlib/libm/machine/spu/sf_fabs.c","./lib/newlib/newlib/libm/machine/spu/sf_copysign.c","./lib/newlib/newlib/libm/machine/spu/w_fmod.c","./lib/newlib/newlib/libm/machine/spu/s_frexp.c","./lib/newlib/newlib/libm/machine/spu/w_atan2.c","./lib/newlib/newlib/libm/machine/spu/llrint.c","./lib/newlib/newlib/libm/machine/spu/s_isnan.c","./lib/newlib/newlib/libm/machine/spu/fegetenv.c","./lib/newlib/newlib/libm/machine/spu/sf_trunc.c","./lib/newlib/newlib/libm/machine/spu/sf_floor.c","./lib/newlib/newlib/libm/machine/spu/w_atanh.c","./lib/newlib/newlib/libm/machine/spu/wf_acosh.c","./lib/newlib/newlib/libm/machine/spu/s_tan.c","./lib/newlib/newlib/libm/machine/spu/llround.c","./lib/newlib/newlib/libm/machine/spu/wf_remainder.c","./lib/newlib/newlib/libm/machine/spu/wf_exp2.c","./lib/newlib/newlib/libm/machine/spu/s_fdim.c","./lib/newlib/newlib/libm/machine/spu/s_floor.c","./lib/newlib/newlib/libm/machine/spu/s_copysign.c","./lib/newlib/newlib/libm/machine/spu/log2.c","./lib/newlib/newlib/libm/machine/spu/sf_fmax.c","./lib/newlib/newlib/libm/machine/spu/wf_sqrt.c","./lib/newlib/newlib/libm/machine/spu/sf_nextafter.c","./lib/newlib/newlib/libm/machine/spu/s_log1p.c","./lib/newlib/newlib/libm/machine/spu/w_sinh.c","./lib/newlib/newlib/libm/machine/spu/w_lgamma.c","./lib/newlib/newlib/libm/machine/spu/wf_fmod.c","./lib/newlib/newlib/libm/machine/spu/sf_erf.c","./lib/newlib/newlib/libm/machine/spu/Makefile.in","./lib/newlib/newlib/libm/machine/spu/sf_expm1.c","./lib/newlib/newlib/libm/machine/spu/s_lround.c","./lib/newlib/newlib/libm/machine/spu/w_log.c","./lib/newlib/newlib/libm/machine/spu/s_sin.c","./lib/newlib/newlib/libm/machine/spu/wf_lgamma.c","./lib/newlib/newlib/libm/machine/spu/s_fmax.c","./lib/newlib/newlib/libm/machine/spu/sf_lround.c","./lib/newlib/newlib/libm/machine/spu/w_hypot.c","./lib/newlib/newlib/libm/machine/spu/w_exp2.c","./lib/newlib/newlib/libm/machine/spu/s_rint.c","./lib/newlib/newlib/libm/machine/spu/s_ceil.c","./lib/newlib/newlib/libm/machine/spu/sf_sin.c","./lib/newlib/newlib/libm/machine/spu/sf_asinh.c","./lib/newlib/newlib/libm/machine/spu/s_trunc.c","./lib/newlib/newlib/libm/machine/spu/s_fabs.c","./lib/newlib/newlib/libm/machine/spu/fegetround.c","./lib/newlib/newlib/libm/machine/spu/s_ilogb.c","./lib/newlib/newlib/libm/machine/spu/s_ldexp.c","./lib/newlib/newlib/libm/machine/spu/sf_nan.c","./lib/newlib/newlib/libm/machine/spu/w_acos.c","./lib/newlib/newlib/libm/machine/spu/sf_cos.c","./lib/newlib/newlib/libm/machine/spu/s_expm1.c","./lib/newlib/newlib/libm/machine/spu/w_sincos.c","./lib/newlib/newlib/libm/machine/spu/sf_ceil.c","./lib/newlib/newlib/libm/machine/spu/w_asin.c","./lib/newlib/newlib/libm/machine/spu/wf_acos.c","./lib/newlib/newlib/libm/machine/spu/llrintf.c","./lib/newlib/newlib/libm/machine/spu/sf_logb.c","./lib/newlib/newlib/libm/machine/spu/s_fma.c","./lib/newlib/newlib/libm/machine/spu/wf_sincos.c","./lib/newlib/newlib/libm/machine/spu/sf_rint.c","./lib/newlib/newlib/libm/machine/spu/w_pow.c","./lib/newlib/newlib/libm/machine/spu/s_cbrt.c","./lib/newlib/newlib/libm/machine/spu/fe_dfl_env.c","./lib/newlib/newlib/libm/machine/spu/sf_scalbn.c","./lib/newlib/newlib/libm/machine/spu/wf_exp.c","./lib/newlib/newlib/libm/machine/spu/s_erf.c","./lib/newlib/newlib/libm/machine/spu/s_tanh.c","./lib/newlib/newlib/libm/machine/spu/wf_asin.c","./lib/newlib/newlib/libm/machine/spu/w_sqrt.c","./lib/newlib/newlib/libm/machine/spu/sf_fdim.c","./lib/newlib/newlib/libm/machine/spu/sf_tanh.c","./lib/newlib/newlib/libm/machine/spu/wf_atanh.c","./lib/newlib/newlib/libm/machine/spu/sf_finite.c","./lib/newlib/newlib/libm/machine/spu/sf_fmin.c","./lib/newlib/newlib/libm/machine/spu/s_cos.c","./lib/newlib/newlib/libm/machine/spu/fetestexcept.c","./lib/newlib/newlib/libm/machine/spu/configure.in","./lib/newlib/newlib/libm/machine/spu/w_cosh.c","./lib/newlib/newlib/libm/machine/spu/sf_fpclassify.c","./lib/newlib/newlib/libm/machine/spu/Makefile.am","./lib/newlib/newlib/libm/machine/spu/configure","./lib/newlib/newlib/libm/machine/spu/sf_round.c","./lib/newlib/newlib/libm/machine/spu/wf_tgamma.c","./lib/newlib/newlib/libm/machine/spu/wf_log10.c","./lib/newlib/newlib/libm/machine/spu/s_scalbn.c","./lib/newlib/newlib/libm/machine/spu/wf_log.c","./lib/newlib/newlib/libm/machine/spu/s_lrint.c","./lib/newlib/newlib/libm/machine/spu/fegetexceptflag.c","./lib/newlib/newlib/libm/machine/spu/sf_log1p.c","./lib/newlib/newlib/libm/machine/spu/sf_isnanf.c","./lib/newlib/newlib/libm/machine/spu/sf_frexp.c","./lib/newlib/newlib/libm/machine/spu/s_asinh.c","./lib/newlib/newlib/libm/machine/spu/s_round.c","./lib/newlib/newlib/libm/machine/spu/sf_cbrt.c","./lib/newlib/newlib/libm/machine/spu/w_tgamma.c","./lib/newlib/newlib/libm/machine/spu/sf_tan.c","./lib/newlib/newlib/libm/machine/spu/s_atan.c","./lib/newlib/newlib/libm/machine/spu/w_log10.c","./lib/newlib/newlib/libm/machine/spu/w_acosh.c","./lib/newlib/newlib/libm/machine/spu/sf_fma.c","./lib/newlib/newlib/libm/machine/spu/w_exp.c","./lib/newlib/newlib/libm/machine/spu/w_remainder.c","./lib/newlib/newlib/libm/machine/spu/sf_isinff.c","./lib/newlib/newlib/libm/machine/spu/wf_pow.c","./lib/newlib/newlib/libm/machine/spu/sf_atan.c","./lib/newlib/newlib/libm/machine/spu/llroundf.c","./lib/newlib/newlib/libm/machine/spu/sf_remquo.c","./lib/newlib/newlib/libm/machine/spu/s_nearbyint.c","./lib/newlib/newlib/libm/machine/spu/wf_hypot.c","./lib/newlib/newlib/libm/machine/spu/feraiseexcept.c","./lib/newlib/newlib/libm/machine/spu/sf_ldexp.c","./lib/newlib/newlib/libm/machine/spu/sf_ilogb.c","./lib/newlib/newlib/libm/machine/spu/sf_nearbyint.c","./lib/newlib/newlib/libm/machine/spu/log2f.c","./lib/newlib/newlib/libm/machine/spu/wf_cosh.c","./lib/newlib/newlib/libm/machine/spu/s_fmin.c","./lib/newlib/newlib/libm/machine/spu/wf_atan2.c","./lib/newlib/newlib/libm/machine/spu/aclocal.m4","./lib/newlib/newlib/libm/machine/spu/fesetexceptflag.c","./lib/newlib/newlib/libm/machine/spu/sf_lrint.c","./lib/newlib/newlib/libm/machine/spu/feholdexcept.c","./lib/newlib/newlib/libm/machine/spu/s_remquo.c","./lib/newlib/newlib/libm/machine/spu/wf_sinh.c","./lib/newlib/newlib/libm/machine/spu/s_nextafter.c","./lib/newlib/newlib/libm/machine/spu/fesetenv.c","./lib/newlib/newlib/libm/machine/spu/fesetround.c","./lib/newlib/newlib/libm/machine/spu/feclearexcept.c","./lib/newlib/newlib/libm/machine/spu/sf_isinf.c","./lib/newlib/newlib/libm/machine/spu/headers/ilogb.h","./lib/newlib/newlib/libm/machine/spu/headers/exp2d2.h","./lib/newlib/newlib/libm/machine/spu/headers/sin.h","./lib/newlib/newlib/libm/machine/spu/headers/rintf.h","./lib/newlib/newlib/libm/machine/spu/headers/tanf4.h","./lib/newlib/newlib/libm/machine/spu/headers/tan.h","./lib/newlib/newlib/libm/machine/spu/headers/nextafterf4.h","./lib/newlib/newlib/libm/machine/spu/headers/scalbnf.h","./lib/newlib/newlib/libm/machine/spu/headers/coshf4.h","./lib/newlib/newlib/libm/machine/spu/headers/log2f.h","./lib/newlib/newlib/libm/machine/spu/headers/asinhf.h","./lib/newlib/newlib/libm/machine/spu/headers/atand2.h","./lib/newlib/newlib/libm/machine/spu/headers/remquof.h","./lib/newlib/newlib/libm/machine/spu/headers/log1p.h","./lib/newlib/newlib/libm/machine/spu/headers/pow.h","./lib/newlib/newlib/libm/machine/spu/headers/frexp.h","./lib/newlib/newlib/libm/machine/spu/headers/expm1f4.h","./lib/newlib/newlib/libm/machine/spu/headers/sinhd2.h","./lib/newlib/newlib/libm/machine/spu/headers/scalbnf4.h","./lib/newlib/newlib/libm/machine/spu/headers/sincos.h","./lib/newlib/newlib/libm/machine/spu/headers/lgammaf4.h","./lib/newlib/newlib/libm/machine/spu/headers/sqrtf.h","./lib/newlib/newlib/libm/machine/spu/headers/fmaf.h","./lib/newlib/newlib/libm/machine/spu/headers/coshd2.h","./lib/newlib/newlib/libm/machine/spu/headers/cbrt.h","./lib/newlib/newlib/libm/machine/spu/headers/nearbyintf.h","./lib/newlib/newlib/libm/machine/spu/headers/copysign.h","./lib/newlib/newlib/libm/machine/spu/headers/remainderf.h","./lib/newlib/newlib/libm/machine/spu/headers/dom_chkf_negone_one.h","./lib/newlib/newlib/libm/machine/spu/headers/powf4.h","./lib/newlib/newlib/libm/machine/spu/headers/tgammad2.h","./lib/newlib/newlib/libm/machine/spu/headers/atanhf4.h","./lib/newlib/newlib/libm/machine/spu/headers/fesetround.h","./lib/newlib/newlib/libm/machine/spu/headers/cosh.h","./lib/newlib/newlib/libm/machine/spu/headers/feraiseexcept.h","./lib/newlib/newlib/libm/machine/spu/headers/trunc.h","./lib/newlib/newlib/libm/machine/spu/headers/divf4.h","./lib/newlib/newlib/libm/machine/spu/headers/sinhf4.h","./lib/newlib/newlib/libm/machine/spu/headers/atanhd2.h","./lib/newlib/newlib/libm/machine/spu/headers/coshf.h","./lib/newlib/newlib/libm/machine/spu/headers/fmaxf.h","./lib/newlib/newlib/libm/machine/spu/headers/log1pf4.h","./lib/newlib/newlib/libm/machine/spu/headers/atanf.h","./lib/newlib/newlib/libm/machine/spu/headers/acoshd2.h","./lib/newlib/newlib/libm/machine/spu/headers/lrintf.h","./lib/newlib/newlib/libm/machine/spu/headers/nearbyint.h","./lib/newlib/newlib/libm/machine/spu/headers/sinhf.h","./lib/newlib/newlib/libm/machine/spu/headers/lround.h","./lib/newlib/newlib/libm/machine/spu/headers/sind2.h","./lib/newlib/newlib/libm/machine/spu/headers/fdimf.h","./lib/newlib/newlib/libm/machine/spu/headers/asinh.h","./lib/newlib/newlib/libm/machine/spu/headers/asinf.h","./lib/newlib/newlib/libm/machine/spu/headers/logf4.h","./lib/newlib/newlib/libm/machine/spu/headers/log1pd2.h","./lib/newlib/newlib/libm/machine/spu/headers/copysignf.h","./lib/newlib/newlib/libm/machine/spu/headers/feclearexcept.h","./lib/newlib/newlib/libm/machine/spu/headers/fdim.h","./lib/newlib/newlib/libm/machine/spu/headers/sinf.h","./lib/newlib/newlib/libm/machine/spu/headers/cosf4.h","./lib/newlib/newlib/libm/machine/spu/headers/rintf4.h","./lib/newlib/newlib/libm/machine/spu/headers/truncf4.h","./lib/newlib/newlib/libm/machine/spu/headers/tanhf4.h","./lib/newlib/newlib/libm/machine/spu/headers/exp2f.h","./lib/newlib/newlib/libm/machine/spu/headers/round.h","./lib/newlib/newlib/libm/machine/spu/headers/acosf4.h","./lib/newlib/newlib/libm/machine/spu/headers/tanh.h","./lib/newlib/newlib/libm/machine/spu/headers/erfd2.h","./lib/newlib/newlib/libm/machine/spu/headers/logd2.h","./lib/newlib/newlib/libm/machine/spu/headers/log.h","./lib/newlib/newlib/libm/machine/spu/headers/atan2.h","./lib/newlib/newlib/libm/machine/spu/headers/tanhd2.h","./lib/newlib/newlib/libm/machine/spu/headers/nextafterd2.h","./lib/newlib/newlib/libm/machine/spu/headers/expf.h","./lib/newlib/newlib/libm/machine/spu/headers/atanf4.h","./lib/newlib/newlib/libm/machine/spu/headers/ceil.h","./lib/newlib/newlib/libm/machine/spu/headers/remainder.h","./lib/newlib/newlib/libm/machine/spu/headers/lgamma.h","./lib/newlib/newlib/libm/machine/spu/headers/erff.h","./lib/newlib/newlib/libm/machine/spu/headers/log10d2.h","./lib/newlib/newlib/libm/machine/spu/headers/fegetround.h","./lib/newlib/newlib/libm/machine/spu/headers/erf.h","./lib/newlib/newlib/libm/machine/spu/headers/cbrtf.h","./lib/newlib/newlib/libm/machine/spu/headers/asinhf4.h","./lib/newlib/newlib/libm/machine/spu/headers/fminf.h","./lib/newlib/newlib/libm/machine/spu/headers/erfc.h","./lib/newlib/newlib/libm/machine/spu/headers/asind2.h","./lib/newlib/newlib/libm/machine/spu/headers/fma.h","./lib/newlib/newlib/libm/machine/spu/headers/isnanf4.h","./lib/newlib/newlib/libm/machine/spu/headers/atanh.h","./lib/newlib/newlib/libm/machine/spu/headers/frexpf.h","./lib/newlib/newlib/libm/machine/spu/headers/acos.h","./lib/newlib/newlib/libm/machine/spu/headers/fesetenv.h","./lib/newlib/newlib/libm/machine/spu/headers/erf_utils.h","./lib/newlib/newlib/libm/machine/spu/headers/atan.h","./lib/newlib/newlib/libm/machine/spu/headers/vec_literal.h","./lib/newlib/newlib/libm/machine/spu/headers/expm1d2.h","./lib/newlib/newlib/libm/machine/spu/headers/expd2.h","./lib/newlib/newlib/libm/machine/spu/headers/atan2d2.h","./lib/newlib/newlib/libm/machine/spu/headers/dom_chkd_negone_one.h","./lib/newlib/newlib/libm/machine/spu/headers/hypotf4.h","./lib/newlib/newlib/libm/machine/spu/headers/fmax.h","./lib/newlib/newlib/libm/machine/spu/headers/recipf4.h","./lib/newlib/newlib/libm/machine/spu/headers/llround.h","./lib/newlib/newlib/libm/machine/spu/headers/dom_chkf_less_than.h","./lib/newlib/newlib/libm/machine/spu/headers/hypot.h","./lib/newlib/newlib/libm/machine/spu/headers/cosf.h","./lib/newlib/newlib/libm/machine/spu/headers/fmin.h","./lib/newlib/newlib/libm/machine/spu/headers/sqrt.h","./lib/newlib/newlib/libm/machine/spu/headers/fmod.h","./lib/newlib/newlib/libm/machine/spu/headers/log2f4.h","./lib/newlib/newlib/libm/machine/spu/headers/isnan.h","./lib/newlib/newlib/libm/machine/spu/headers/logf.h","./lib/newlib/newlib/libm/machine/spu/headers/roundf.h","./lib/newlib/newlib/libm/machine/spu/headers/isnanf.h","./lib/newlib/newlib/libm/machine/spu/headers/atanhf.h","./lib/newlib/newlib/libm/machine/spu/headers/atan2f.h","./lib/newlib/newlib/libm/machine/spu/headers/divd2.h","./lib/newlib/newlib/libm/machine/spu/headers/erff4.h","./lib/newlib/newlib/libm/machine/spu/headers/logbf.h","./lib/newlib/newlib/libm/machine/spu/headers/lgammad2.h","./lib/newlib/newlib/libm/machine/spu/headers/log1pf.h","./lib/newlib/newlib/libm/machine/spu/headers/ldexpd2.h","./lib/newlib/newlib/libm/machine/spu/headers/fmodf.h","./lib/newlib/newlib/libm/machine/spu/headers/tgammaf.h","./lib/newlib/newlib/libm/machine/spu/headers/signbit.h","./lib/newlib/newlib/libm/machine/spu/headers/fegetexceptflag.h","./lib/newlib/newlib/libm/machine/spu/headers/dom_chkd_less_than.h","./lib/newlib/newlib/libm/machine/spu/headers/expf4.h","./lib/newlib/newlib/libm/machine/spu/headers/lroundf.h","./lib/newlib/newlib/libm/machine/spu/headers/logbf4.h","./lib/newlib/newlib/libm/machine/spu/headers/asinhd2.h","./lib/newlib/newlib/libm/machine/spu/headers/tanhf.h","./lib/newlib/newlib/libm/machine/spu/headers/asinf4.h","./lib/newlib/newlib/libm/machine/spu/headers/powf.h","./lib/newlib/newlib/libm/machine/spu/headers/tgamma.h","./lib/newlib/newlib/libm/machine/spu/headers/ldexpf.h","./lib/newlib/newlib/libm/machine/spu/headers/sqrtf4.h","./lib/newlib/newlib/libm/machine/spu/headers/atan2f4.h","./lib/newlib/newlib/libm/machine/spu/headers/fesetexceptflag.h","./lib/newlib/newlib/libm/machine/spu/headers/powd2.h","./lib/newlib/newlib/libm/machine/spu/headers/isnand2.h","./lib/newlib/newlib/libm/machine/spu/headers/nextafter.h","./lib/newlib/newlib/libm/machine/spu/headers/llrint.h","./lib/newlib/newlib/libm/machine/spu/headers/erfcf.h","./lib/newlib/newlib/libm/machine/spu/headers/feupdateenv.h","./lib/newlib/newlib/libm/machine/spu/headers/rint.h","./lib/newlib/newlib/libm/machine/spu/headers/cos.h","./lib/newlib/newlib/libm/machine/spu/headers/floorf4.h","./lib/newlib/newlib/libm/machine/spu/headers/tand2.h","./lib/newlib/newlib/libm/machine/spu/headers/nextafterf.h","./lib/newlib/newlib/libm/machine/spu/headers/acoshf4.h","./lib/newlib/newlib/libm/machine/spu/headers/expm1.h","./lib/newlib/newlib/libm/machine/spu/headers/hypotd2.h","./lib/newlib/newlib/libm/machine/spu/headers/llroundf.h","./lib/newlib/newlib/libm/machine/spu/headers/fabsf.h","./lib/newlib/newlib/libm/machine/spu/headers/tanf.h","./lib/newlib/newlib/libm/machine/spu/headers/scalbn.h","./lib/newlib/newlib/libm/machine/spu/headers/log10.h","./lib/newlib/newlib/libm/machine/spu/headers/log10f.h","./lib/newlib/newlib/libm/machine/spu/headers/lrint.h","./lib/newlib/newlib/libm/machine/spu/headers/tgammaf4.h","./lib/newlib/newlib/libm/machine/spu/headers/exp2.h","./lib/newlib/newlib/libm/machine/spu/headers/exp.h","./lib/newlib/newlib/libm/machine/spu/headers/fefpscr.h","./lib/newlib/newlib/libm/machine/spu/headers/cosd2.h","./lib/newlib/newlib/libm/machine/spu/headers/remquo.h","./lib/newlib/newlib/libm/machine/spu/headers/signbitd2.h","./lib/newlib/newlib/libm/machine/spu/headers/fegetenv.h","./lib/newlib/newlib/libm/machine/spu/headers/floord2.h","./lib/newlib/newlib/libm/machine/spu/headers/erfcf4.h","./lib/newlib/newlib/libm/machine/spu/headers/fetestexcept.h","./lib/newlib/newlib/libm/machine/spu/headers/recipd2.h","./lib/newlib/newlib/libm/machine/spu/headers/acosf.h","./lib/newlib/newlib/libm/machine/spu/headers/acoshf.h","./lib/newlib/newlib/libm/machine/spu/headers/ldexpf4.h","./lib/newlib/newlib/libm/machine/spu/headers/ceilf.h","./lib/newlib/newlib/libm/machine/spu/headers/erfcd2.h","./lib/newlib/newlib/libm/machine/spu/headers/exp2f4.h","./lib/newlib/newlib/libm/machine/spu/headers/expm1f.h","./lib/newlib/newlib/libm/machine/spu/headers/floor.h","./lib/newlib/newlib/libm/machine/spu/headers/sqrtd2.h","./lib/newlib/newlib/libm/machine/spu/headers/sinh.h","./lib/newlib/newlib/libm/machine/spu/headers/ilogbf.h","./lib/newlib/newlib/libm/machine/spu/headers/sincosd2.h","./lib/newlib/newlib/libm/machine/spu/headers/asin.h","./lib/newlib/newlib/libm/machine/spu/headers/log2.h","./lib/newlib/newlib/libm/machine/spu/headers/fabs.h","./lib/newlib/newlib/libm/machine/spu/headers/sincosf.h","./lib/newlib/newlib/libm/machine/spu/headers/sincosf4.h","./lib/newlib/newlib/libm/machine/spu/headers/lgammaf.h","./lib/newlib/newlib/libm/machine/spu/headers/sinf4.h","./lib/newlib/newlib/libm/machine/spu/headers/floorf.h","./lib/newlib/newlib/libm/machine/spu/headers/feholdexcept.h","./lib/newlib/newlib/libm/machine/spu/headers/ldexp.h","./lib/newlib/newlib/libm/machine/spu/headers/llrintf.h","./lib/newlib/newlib/libm/machine/spu/headers/truncf.h","./lib/newlib/newlib/libm/machine/spu/headers/truncd2.h","./lib/newlib/newlib/libm/machine/spu/headers/acosd2.h","./lib/newlib/newlib/libm/machine/spu/headers/nearbyintf4.h","./lib/newlib/newlib/libm/machine/spu/headers/log2d2.h","./lib/newlib/newlib/libm/machine/spu/headers/hypotf.h","./lib/newlib/newlib/libm/machine/spu/headers/simdmath.h","./lib/newlib/newlib/libm/machine/spu/headers/cos_sin.h","./lib/newlib/newlib/libm/machine/spu/headers/acosh.h","./lib/newlib/newlib/libm/machine/i386/f_llrintl.c","./lib/newlib/newlib/libm/machine/i386/f_rintf.c","./lib/newlib/newlib/libm/machine/i386/i386mach.h","./lib/newlib/newlib/libm/machine/i386/f_log10f.S","./lib/newlib/newlib/libm/machine/i386/Makefile.in","./lib/newlib/newlib/libm/machine/i386/f_ldexpf.S","./lib/newlib/newlib/libm/machine/i386/f_math.h","./lib/newlib/newlib/libm/machine/i386/f_powf.c","./lib/newlib/newlib/libm/machine/i386/f_lrintl.c","./lib/newlib/newlib/libm/machine/i386/f_rint.c","./lib/newlib/newlib/libm/machine/i386/f_frexpf.S","./lib/newlib/newlib/libm/machine/i386/f_ldexp.S","./lib/newlib/newlib/libm/machine/i386/f_tanf.S","./lib/newlib/newlib/libm/machine/i386/f_lrint.c","./lib/newlib/newlib/libm/machine/i386/f_pow.c","./lib/newlib/newlib/libm/machine/i386/configure.in","./lib/newlib/newlib/libm/machine/i386/Makefile.am","./lib/newlib/newlib/libm/machine/i386/f_tan.S","./lib/newlib/newlib/libm/machine/i386/f_llrintf.c","./lib/newlib/newlib/libm/machine/i386/f_logf.S","./lib/newlib/newlib/libm/machine/i386/f_lrintf.c","./lib/newlib/newlib/libm/machine/i386/f_log.S","./lib/newlib/newlib/libm/machine/i386/f_expf.c","./lib/newlib/newlib/libm/machine/i386/f_frexp.S","./lib/newlib/newlib/libm/machine/i386/f_atan2f.S","./lib/newlib/newlib/libm/machine/i386/f_log10.S","./lib/newlib/newlib/libm/machine/i386/f_atan2.S","./lib/newlib/newlib/libm/machine/i386/f_rintl.c","./lib/newlib/newlib/libm/machine/i386/aclocal.m4","./lib/newlib/newlib/libm/machine/i386/f_llrint.c","./lib/newlib/newlib/libm/machine/i386/f_exp.c","./lib/newlib/newlib/libm/math/er_lgamma.c","./lib/newlib/newlib/libm/math/ef_jn.c","./lib/newlib/newlib/libm/math/k_tan.c","./lib/newlib/newlib/libm/math/ef_cosh.c","./lib/newlib/newlib/libm/math/wf_scalb.c","./lib/newlib/newlib/libm/math/sf_fabs.c","./lib/newlib/newlib/libm/math/w_fmod.c","./lib/newlib/newlib/libm/math/s_frexp.c","./lib/newlib/newlib/libm/math/e_cosh.c","./lib/newlib/newlib/libm/math/w_atan2.c","./lib/newlib/newlib/libm/math/ef_log.c","./lib/newlib/newlib/libm/math/kf_tan.c","./lib/newlib/newlib/libm/math/e_sinh.c","./lib/newlib/newlib/libm/math/sf_floor.c","./lib/newlib/newlib/libm/math/w_atanh.c","./lib/newlib/newlib/libm/math/wf_acosh.c","./lib/newlib/newlib/libm/math/w_gamma.c","./lib/newlib/newlib/libm/math/s_tan.c","./lib/newlib/newlib/libm/math/wrf_gamma.c","./lib/newlib/newlib/libm/math/wf_remainder.c","./lib/newlib/newlib/libm/math/wf_exp2.c","./lib/newlib/newlib/libm/math/s_floor.c","./lib/newlib/newlib/libm/math/e_acosh.c","./lib/newlib/newlib/libm/math/wf_sqrt.c","./lib/newlib/newlib/libm/math/w_sinh.c","./lib/newlib/newlib/libm/math/w_lgamma.c","./lib/newlib/newlib/libm/math/wf_fmod.c","./lib/newlib/newlib/libm/math/kf_cos.c","./lib/newlib/newlib/libm/math/erf_gamma.c","./lib/newlib/newlib/libm/math/sf_erf.c","./lib/newlib/newlib/libm/math/Makefile.in","./lib/newlib/newlib/libm/math/ef_remainder.c","./lib/newlib/newlib/libm/math/w_log.c","./lib/newlib/newlib/libm/math/s_sin.c","./lib/newlib/newlib/libm/math/wf_lgamma.c","./lib/newlib/newlib/libm/math/w_hypot.c","./lib/newlib/newlib/libm/math/w_exp2.c","./lib/newlib/newlib/libm/math/s_ceil.c","./lib/newlib/newlib/libm/math/sf_sin.c","./lib/newlib/newlib/libm/math/ef_atan2.c","./lib/newlib/newlib/libm/math/sf_asinh.c","./lib/newlib/newlib/libm/math/e_j1.c","./lib/newlib/newlib/libm/math/s_signif.c","./lib/newlib/newlib/libm/math/s_fabs.c","./lib/newlib/newlib/libm/math/ef_asin.c","./lib/newlib/newlib/libm/math/ef_acos.c","./lib/newlib/newlib/libm/math/k_sin.c","./lib/newlib/newlib/libm/math/e_sqrt.c","./lib/newlib/newlib/libm/math/w_drem.c","./lib/newlib/newlib/libm/math/s_ldexp.c","./lib/newlib/newlib/libm/math/w_acos.c","./lib/newlib/newlib/libm/math/kf_rem_pio2.c","./lib/newlib/newlib/libm/math/k_rem_pio2.c","./lib/newlib/newlib/libm/math/sf_cos.c","./lib/newlib/newlib/libm/math/w_scalb.c","./lib/newlib/newlib/libm/math/w_sincos.c","./lib/newlib/newlib/libm/math/wf_j1.c","./lib/newlib/newlib/libm/math/sf_ceil.c","./lib/newlib/newlib/libm/math/e_acos.c","./lib/newlib/newlib/libm/math/w_asin.c","./lib/newlib/newlib/libm/math/wf_acos.c","./lib/newlib/newlib/libm/math/kf_sin.c","./lib/newlib/newlib/libm/math/e_remainder.c","./lib/newlib/newlib/libm/math/e_exp.c","./lib/newlib/newlib/libm/math/ef_exp.c","./lib/newlib/newlib/libm/math/w_jn.c","./lib/newlib/newlib/libm/math/e_asin.c","./lib/newlib/newlib/libm/math/Hakefile","./lib/newlib/newlib/libm/math/wf_sincos.c","./lib/newlib/newlib/libm/math/erf_lgamma.c","./lib/newlib/newlib/libm/math/w_pow.c","./lib/newlib/newlib/libm/math/wf_exp.c","./lib/newlib/newlib/libm/math/ef_rem_pio2.c","./lib/newlib/newlib/libm/math/s_erf.c","./lib/newlib/newlib/libm/math/er_gamma.c","./lib/newlib/newlib/libm/math/s_tanh.c","./lib/newlib/newlib/libm/math/wf_asin.c","./lib/newlib/newlib/libm/math/w_sqrt.c","./lib/newlib/newlib/libm/math/sf_tanh.c","./lib/newlib/newlib/libm/math/wf_atanh.c","./lib/newlib/newlib/libm/math/ef_j0.c","./lib/newlib/newlib/libm/math/wr_gamma.c","./lib/newlib/newlib/libm/math/w_j1.c","./lib/newlib/newlib/libm/math/wf_gamma.c","./lib/newlib/newlib/libm/math/s_cos.c","./lib/newlib/newlib/libm/math/w_cosh.c","./lib/newlib/newlib/libm/math/e_log10.c","./lib/newlib/newlib/libm/math/Makefile.am","./lib/newlib/newlib/libm/math/wf_tgamma.c","./lib/newlib/newlib/libm/math/wf_log10.c","./lib/newlib/newlib/libm/math/wrf_lgamma.c","./lib/newlib/newlib/libm/math/wf_log.c","./lib/newlib/newlib/libm/math/e_pow.c","./lib/newlib/newlib/libm/math/e_fmod.c","./lib/newlib/newlib/libm/math/e_atan2.c","./lib/newlib/newlib/libm/math/wf_drem.c","./lib/newlib/newlib/libm/math/ef_j1.c","./lib/newlib/newlib/libm/math/k_standard.c","./lib/newlib/newlib/libm/math/w_j0.c","./lib/newlib/newlib/libm/math/sf_signif.c","./lib/newlib/newlib/libm/math/sf_frexp.c","./lib/newlib/newlib/libm/math/s_asinh.c","./lib/newlib/newlib/libm/math/w_tgamma.c","./lib/newlib/newlib/libm/math/sf_tan.c","./lib/newlib/newlib/libm/math/s_atan.c","./lib/newlib/newlib/libm/math/wf_j0.c","./lib/newlib/newlib/libm/math/w_log10.c","./lib/newlib/newlib/libm/math/e_rem_pio2.c","./lib/newlib/newlib/libm/math/w_acosh.c","./lib/newlib/newlib/libm/math/w_exp.c","./lib/newlib/newlib/libm/math/wr_lgamma.c","./lib/newlib/newlib/libm/math/w_remainder.c","./lib/newlib/newlib/libm/math/wf_pow.c","./lib/newlib/newlib/libm/math/ef_pow.c","./lib/newlib/newlib/libm/math/ef_scalb.c","./lib/newlib/newlib/libm/math/sf_atan.c","./lib/newlib/newlib/libm/math/ef_atanh.c","./lib/newlib/newlib/libm/math/ef_sqrt.c","./lib/newlib/newlib/libm/math/e_j0.c","./lib/newlib/newlib/libm/math/ef_acosh.c","./lib/newlib/newlib/libm/math/e_scalb.c","./lib/newlib/newlib/libm/math/math.tex","./lib/newlib/newlib/libm/math/e_atanh.c","./lib/newlib/newlib/libm/math/wf_hypot.c","./lib/newlib/newlib/libm/math/ef_sinh.c","./lib/newlib/newlib/libm/math/ef_fmod.c","./lib/newlib/newlib/libm/math/sf_ldexp.c","./lib/newlib/newlib/libm/math/e_hypot.c","./lib/newlib/newlib/libm/math/k_cos.c","./lib/newlib/newlib/libm/math/wf_jn.c","./lib/newlib/newlib/libm/math/wf_cosh.c","./lib/newlib/newlib/libm/math/e_jn.c","./lib/newlib/newlib/libm/math/ef_log10.c","./lib/newlib/newlib/libm/math/wf_atan2.c","./lib/newlib/newlib/libm/math/wf_sinh.c","./lib/newlib/newlib/libm/math/ef_hypot.c","./lib/newlib/newlib/libm/math/e_log.c","./lib/newlib/newlib/testsuite/newlib.stdlib/atexit.exp","./lib/newlib/newlib/testsuite/newlib.stdlib/atexit.c","./lib/newlib/newlib/testsuite/newlib.stdlib/size_max.c","./lib/newlib/newlib/testsuite/newlib.stdlib/stdlib.exp","./lib/newlib/newlib/testsuite/newlib.elix/elix.exp","./lib/newlib/newlib/testsuite/newlib.elix/tmmap.c","./lib/newlib/newlib/testsuite/newlib.string/memmove1.c","./lib/newlib/newlib/testsuite/newlib.string/string.exp","./lib/newlib/newlib/testsuite/newlib.string/tstring.c","./lib/newlib/newlib/testsuite/newlib.iconv/iconvru.c","./lib/newlib/newlib/testsuite/newlib.iconv/iconv.exp","./lib/newlib/newlib/testsuite/newlib.iconv/iconvjp.c","./lib/newlib/newlib/testsuite/newlib.iconv/iconvnm.c","./lib/newlib/newlib/testsuite/newlib.locale/UTF-8.exp","./lib/newlib/newlib/testsuite/newlib.locale/locale.exp","./lib/newlib/newlib/testsuite/newlib.locale/UTF-8.c","./lib/newlib/newlib/testsuite/include/check.h","./lib/newlib/newlib/testsuite/lib/newlib.exp","./lib/newlib/newlib/testsuite/lib/flags.exp","./lib/newlib/newlib/testsuite/lib/passfail.exp","./lib/newlib/newlib/testsuite/lib/checkoutput.exp","./lib/newlib/newlib/testsuite/newlib.search/hsearchtest.exp","./lib/newlib/newlib/testsuite/newlib.search/hsearchtest.c","./lib/newlib/newlib/testsuite/config/default.exp","./lib/newlib/newlib/testsuite/newlib.wctype/tiswctype.c","./lib/newlib/newlib/testsuite/newlib.wctype/twctype.c","./lib/newlib/newlib/testsuite/newlib.wctype/twctrans.c","./lib/newlib/newlib/testsuite/newlib.wctype/wctype.exp","./lib/newlib/newlib/doc/Makefile.in","./lib/newlib/newlib/doc/configure.in","./lib/newlib/newlib/doc/Makefile.am","./lib/newlib/newlib/doc/configure","./lib/newlib/newlib/doc/doc.str","./lib/newlib/newlib/doc/aclocal.m4","./lib/newlib/newlib/libc/sys.tex","./lib/newlib/newlib/libc/Makefile.in","./lib/newlib/newlib/libc/Hakefile","./lib/newlib/newlib/libc/configure.in","./lib/newlib/newlib/libc/Makefile.am","./lib/newlib/newlib/libc/saber","./lib/newlib/newlib/libc/aclocal.m4","./lib/newlib/newlib/libc/search/tsearch.c","./lib/newlib/newlib/libc/search/tdestroy.c","./lib/newlib/newlib/libc/search/twalk.c","./lib/newlib/newlib/libc/search/page.h","./lib/newlib/newlib/libc/search/db_local.h","./lib/newlib/newlib/libc/search/Makefile.in","./lib/newlib/newlib/libc/search/hcreate.3","./lib/newlib/newlib/libc/search/hcreate.c","./lib/newlib/newlib/libc/search/hcreate_r.c","./lib/newlib/newlib/libc/search/hash_func.c","./lib/newlib/newlib/libc/search/hash_buf.c","./lib/newlib/newlib/libc/search/Hakefile","./lib/newlib/newlib/libc/search/extern.h","./lib/newlib/newlib/libc/search/hash_log2.c","./lib/newlib/newlib/libc/search/hash_bigkey.c","./lib/newlib/newlib/libc/search/tsearch.3","./lib/newlib/newlib/libc/search/bsearch.c","./lib/newlib/newlib/libc/search/Makefile.am","./lib/newlib/newlib/libc/search/hash.c","./lib/newlib/newlib/libc/search/tfind.c","./lib/newlib/newlib/libc/search/tdelete.c","./lib/newlib/newlib/libc/search/hash_page.c","./lib/newlib/newlib/libc/search/qsort.c","./lib/newlib/newlib/libc/search/hash.h","./lib/newlib/newlib/libc/locale/locale.tex","./lib/newlib/newlib/libc/locale/setlocale.h","./lib/newlib/newlib/libc/locale/lmessages.h","./lib/newlib/newlib/libc/locale/fix_grouping.c","./lib/newlib/newlib/libc/locale/Makefile.in","./lib/newlib/newlib/libc/locale/timelocal.h","./lib/newlib/newlib/libc/locale/lctype.c","./lib/newlib/newlib/libc/locale/nl_langinfo.c","./lib/newlib/newlib/libc/locale/lmessages.c","./lib/newlib/newlib/libc/locale/lmonetary.c","./lib/newlib/newlib/libc/locale/lnumeric.h","./lib/newlib/newlib/libc/locale/lmonetary.h","./lib/newlib/newlib/libc/locale/lnumeric.c","./lib/newlib/newlib/libc/locale/Hakefile","./lib/newlib/newlib/libc/locale/ldpart.h","./lib/newlib/newlib/libc/locale/timelocal.c","./lib/newlib/newlib/libc/locale/ldpart.c","./lib/newlib/newlib/libc/locale/Makefile.am","./lib/newlib/newlib/libc/locale/nl_langinfo.3","./lib/newlib/newlib/libc/locale/lctype.h","./lib/newlib/newlib/libc/locale/locale.c","./lib/newlib/newlib/libc/xdr/xdr_reference.c","./lib/newlib/newlib/libc/xdr/xdr_mem.c","./lib/newlib/newlib/libc/xdr/Makefile.in","./lib/newlib/newlib/libc/xdr/xdr_private.c","./lib/newlib/newlib/libc/xdr/xdr_float_vax.c","./lib/newlib/newlib/libc/xdr/xdr_array.c","./lib/newlib/newlib/libc/xdr/xdr_stdio.c","./lib/newlib/newlib/libc/xdr/Makefile.am","./lib/newlib/newlib/libc/xdr/xdr_private.h","./lib/newlib/newlib/libc/xdr/xdr_float.c","./lib/newlib/newlib/libc/xdr/dummy.c","./lib/newlib/newlib/libc/xdr/xdr.c","./lib/newlib/newlib/libc/xdr/xdr_rec.c","./lib/newlib/newlib/libc/xdr/xdr_sizeof.c","./lib/newlib/newlib/libc/sys/barrelfish/dlmalloc.c","./lib/newlib/newlib/libc/sys/barrelfish/syscalls.c","./lib/newlib/newlib/libc/sys/barrelfish/oldmalloc.c","./lib/newlib/newlib/libc/sys/barrelfish/findfp.c","./lib/newlib/newlib/libc/sys/barrelfish/oldsys_morecore.c","./lib/newlib/newlib/libc/sys/barrelfish/oldcalloc.c","./lib/newlib/newlib/libc/sys/barrelfish/mallocr.c","./lib/newlib/newlib/libc/sys/barrelfish/Hakefile","./lib/newlib/newlib/libc/sys/barrelfish/posix_syscalls.c","./lib/newlib/newlib/libc/sys/barrelfish/oldrealloc.c","./lib/newlib/newlib/libc/sys/barrelfish/sbrk.c","./lib/newlib/newlib/libc/errno/Makefile.in","./lib/newlib/newlib/libc/errno/Hakefile","./lib/newlib/newlib/libc/errno/errno.c","./lib/newlib/newlib/libc/errno/Makefile.am","./lib/newlib/newlib/libc/syscalls/sysclose.c","./lib/newlib/newlib/libc/syscalls/sysfstat.c","./lib/newlib/newlib/libc/syscalls/syswait.c","./lib/newlib/newlib/libc/syscalls/sysfcntl.c","./lib/newlib/newlib/libc/syscalls/systimes.c","./lib/newlib/newlib/libc/syscalls/Makefile.in","./lib/newlib/newlib/libc/syscalls/sysread.c","./lib/newlib/newlib/libc/syscalls/sysstat.c","./lib/newlib/newlib/libc/syscalls/sysisatty.c","./lib/newlib/newlib/libc/syscalls/syslseek.c","./lib/newlib/newlib/libc/syscalls/sysopen.c","./lib/newlib/newlib/libc/syscalls/sysexecve.c","./lib/newlib/newlib/libc/syscalls/Makefile.am","./lib/newlib/newlib/libc/syscalls/syssbrk.c","./lib/newlib/newlib/libc/syscalls/sysgettod.c","./lib/newlib/newlib/libc/syscalls/sysunlink.c","./lib/newlib/newlib/libc/syscalls/syskill.c","./lib/newlib/newlib/libc/syscalls/sysgetpid.c","./lib/newlib/newlib/libc/syscalls/syslink.c","./lib/newlib/newlib/libc/syscalls/syswrite.c","./lib/newlib/newlib/libc/syscalls/sysfork.c","./lib/newlib/newlib/libc/iconv/Makefile.in","./lib/newlib/newlib/libc/iconv/iconv.tex","./lib/newlib/newlib/libc/iconv/Makefile.am","./lib/newlib/newlib/libc/iconv/encoding.aliases","./lib/newlib/newlib/libc/iconv/lib/ucsconv.h","./lib/newlib/newlib/libc/iconv/lib/conv.h","./lib/newlib/newlib/libc/iconv/lib/iconvnls.h","./lib/newlib/newlib/libc/iconv/lib/local.h","./lib/newlib/newlib/libc/iconv/lib/endian.h","./lib/newlib/newlib/libc/iconv/lib/Makefile.in","./lib/newlib/newlib/libc/iconv/lib/aliasesi.c","./lib/newlib/newlib/libc/iconv/lib/nullconv.c","./lib/newlib/newlib/libc/iconv/lib/encnames.h","./lib/newlib/newlib/libc/iconv/lib/ucsconv.c","./lib/newlib/newlib/libc/iconv/lib/Makefile.am","./lib/newlib/newlib/libc/iconv/lib/iconvnls.c","./lib/newlib/newlib/libc/iconv/lib/iconv.c","./lib/newlib/newlib/libc/iconv/lib/aliasesbi.c","./lib/newlib/newlib/libc/iconv/lib/encoding.deps","./lib/newlib/newlib/libc/iconv/ces/cesdeps.h","./lib/newlib/newlib/libc/iconv/ces/ucs-4.c","./lib/newlib/newlib/libc/iconv/ces/Makefile.in","./lib/newlib/newlib/libc/iconv/ces/table-pcs.c","./lib/newlib/newlib/libc/iconv/ces/euc.c","./lib/newlib/newlib/libc/iconv/ces/ucs-4-internal.c","./lib/newlib/newlib/libc/iconv/ces/table.c","./lib/newlib/newlib/libc/iconv/ces/mkdeps.pl","./lib/newlib/newlib/libc/iconv/ces/ucs-2.c","./lib/newlib/newlib/libc/iconv/ces/us-ascii.c","./lib/newlib/newlib/libc/iconv/ces/cesbi.h","./lib/newlib/newlib/libc/iconv/ces/Makefile.am","./lib/newlib/newlib/libc/iconv/ces/utf-16.c","./lib/newlib/newlib/libc/iconv/ces/ucs-2-internal.c","./lib/newlib/newlib/libc/iconv/ces/utf-8.c","./lib/newlib/newlib/libc/iconv/ces/cesbi.c","./lib/newlib/newlib/libc/iconv/ccs/mktbl.pl","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_11.c","./lib/newlib/newlib/libc/iconv/ccs/win_1253.c","./lib/newlib/newlib/libc/iconv/ccs/win_1256.c","./lib/newlib/newlib/libc/iconv/ccs/ccsbi.c","./lib/newlib/newlib/libc/iconv/ccs/jis_x0201_1976.c","./lib/newlib/newlib/libc/iconv/ccs/cp775.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_7.c","./lib/newlib/newlib/libc/iconv/ccs/koi8_ru.c","./lib/newlib/newlib/libc/iconv/ccs/big5.c","./lib/newlib/newlib/libc/iconv/ccs/koi8_r.c","./lib/newlib/newlib/libc/iconv/ccs/cns11643_plane1.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_10.c","./lib/newlib/newlib/libc/iconv/ccs/Makefile.in","./lib/newlib/newlib/libc/iconv/ccs/koi8_uni.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_13.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_14.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_9.c","./lib/newlib/newlib/libc/iconv/ccs/cns11643_plane2.c","./lib/newlib/newlib/libc/iconv/ccs/win_1251.c","./lib/newlib/newlib/libc/iconv/ccs/cp850.c","./lib/newlib/newlib/libc/iconv/ccs/win_1258.c","./lib/newlib/newlib/libc/iconv/ccs/ccsnames.h","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_1.c","./lib/newlib/newlib/libc/iconv/ccs/win_1255.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_8.c","./lib/newlib/newlib/libc/iconv/ccs/ksx1001.c","./lib/newlib/newlib/libc/iconv/ccs/iso_ir_111.c","./lib/newlib/newlib/libc/iconv/ccs/jis_x0212_1990.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_4.c","./lib/newlib/newlib/libc/iconv/ccs/Makefile.am","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_15.c","./lib/newlib/newlib/libc/iconv/ccs/koi8_u.c","./lib/newlib/newlib/libc/iconv/ccs/cp852.c","./lib/newlib/newlib/libc/iconv/ccs/cp855.c","./lib/newlib/newlib/libc/iconv/ccs/cns11643_plane14.c","./lib/newlib/newlib/libc/iconv/ccs/win_1257.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_6.c","./lib/newlib/newlib/libc/iconv/ccs/ccsbi.h","./lib/newlib/newlib/libc/iconv/ccs/cp866.c","./lib/newlib/newlib/libc/iconv/ccs/jis_x0208_1990.c","./lib/newlib/newlib/libc/iconv/ccs/win_1250.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_2.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_5.c","./lib/newlib/newlib/libc/iconv/ccs/ccs.h","./lib/newlib/newlib/libc/iconv/ccs/win_1254.c","./lib/newlib/newlib/libc/iconv/ccs/iso_8859_3.c","./lib/newlib/newlib/libc/iconv/ccs/win_1252.c","./lib/newlib/newlib/libc/iconv/ccs/binary/Makefile.in","./lib/newlib/newlib/libc/iconv/ccs/binary/Makefile.am","./lib/newlib/newlib/libc/argz/argz_extract.c","./lib/newlib/newlib/libc/argz/argz_delete.c","./lib/newlib/newlib/libc/argz/argz_append.c","./lib/newlib/newlib/libc/argz/Makefile.in","./lib/newlib/newlib/libc/argz/envz_strip.c","./lib/newlib/newlib/libc/argz/argz_next.c","./lib/newlib/newlib/libc/argz/argz_stringify.c","./lib/newlib/newlib/libc/argz/envz_remove.c","./lib/newlib/newlib/libc/argz/argz_insert.c","./lib/newlib/newlib/libc/argz/envz_get.c","./lib/newlib/newlib/libc/argz/argz_replace.c","./lib/newlib/newlib/libc/argz/buf_findstr.c","./lib/newlib/newlib/libc/argz/envz_entry.c","./lib/newlib/newlib/libc/argz/argz_create.c","./lib/newlib/newlib/libc/argz/Hakefile","./lib/newlib/newlib/libc/argz/argz_add.c","./lib/newlib/newlib/libc/argz/argz_add_sep.c","./lib/newlib/newlib/libc/argz/argz_count.c","./lib/newlib/newlib/libc/argz/Makefile.am","./lib/newlib/newlib/libc/argz/dummy.c","./lib/newlib/newlib/libc/argz/buf_findstr.h","./lib/newlib/newlib/libc/argz/argz_create_sep.c","./lib/newlib/newlib/libc/argz/envz_add.c","./lib/newlib/newlib/libc/argz/envz_merge.c","./lib/newlib/newlib/libc/stdio64/stdio64.c","./lib/newlib/newlib/libc/stdio64/freopen64.c","./lib/newlib/newlib/libc/stdio64/ftello64.c","./lib/newlib/newlib/libc/stdio64/fseeko64.c","./lib/newlib/newlib/libc/stdio64/fopen64.c","./lib/newlib/newlib/libc/stdio64/Makefile.in","./lib/newlib/newlib/libc/stdio64/tmpfile64.c","./lib/newlib/newlib/libc/stdio64/fgetpos64.c","./lib/newlib/newlib/libc/stdio64/Makefile.am","./lib/newlib/newlib/libc/stdio64/fsetpos64.c","./lib/newlib/newlib/libc/stdio64/dummy.c","./lib/newlib/newlib/libc/stdio64/fdopen64.c","./lib/newlib/newlib/libc/stdio64/stdio64.tex","./lib/newlib/newlib/libc/reent/readr.c","./lib/newlib/newlib/libc/reent/open64r.c","./lib/newlib/newlib/libc/reent/unlinkr.c","./lib/newlib/newlib/libc/reent/impure.c","./lib/newlib/newlib/libc/reent/statr.c","./lib/newlib/newlib/libc/reent/execr.c","./lib/newlib/newlib/libc/reent/isattyr.c","./lib/newlib/newlib/libc/reent/Makefile.in","./lib/newlib/newlib/libc/reent/fcntlr.c","./lib/newlib/newlib/libc/reent/signalr.c","./lib/newlib/newlib/libc/reent/linkr.c","./lib/newlib/newlib/libc/reent/gettimeofdayr.c","./lib/newlib/newlib/libc/reent/Hakefile","./lib/newlib/newlib/libc/reent/signgam.c","./lib/newlib/newlib/libc/reent/lseek64r.c","./lib/newlib/newlib/libc/reent/stat64r.c","./lib/newlib/newlib/libc/reent/Makefile.am","./lib/newlib/newlib/libc/reent/getreent.c","./lib/newlib/newlib/libc/reent/reent.tex","./lib/newlib/newlib/libc/reent/fstatr.c","./lib/newlib/newlib/libc/reent/reent.c","./lib/newlib/newlib/libc/reent/timesr.c","./lib/newlib/newlib/libc/reent/sbrkr.c","./lib/newlib/newlib/libc/reent/openr.c","./lib/newlib/newlib/libc/reent/lseekr.c","./lib/newlib/newlib/libc/reent/renamer.c","./lib/newlib/newlib/libc/reent/mkdirr.c","./lib/newlib/newlib/libc/reent/writer.c","./lib/newlib/newlib/libc/reent/closer.c","./lib/newlib/newlib/libc/reent/fstat64r.c","./lib/newlib/newlib/libc/misc/Makefile.in","./lib/newlib/newlib/libc/misc/misc.tex","./lib/newlib/newlib/libc/misc/__dprintf.c","./lib/newlib/newlib/libc/misc/fini.c","./lib/newlib/newlib/libc/misc/Hakefile","./lib/newlib/newlib/libc/misc/Makefile.am","./lib/newlib/newlib/libc/misc/init.c","./lib/newlib/newlib/libc/misc/ffs.c","./lib/newlib/newlib/libc/misc/unctrl.c","./lib/newlib/newlib/libc/ctype/tolower.c","./lib/newlib/newlib/libc/ctype/iswpunct.c","./lib/newlib/newlib/libc/ctype/iswlower.c","./lib/newlib/newlib/libc/ctype/utf8print.h","./lib/newlib/newlib/libc/ctype/toascii.c","./lib/newlib/newlib/libc/ctype/isblank.c","./lib/newlib/newlib/libc/ctype/isalpha.c","./lib/newlib/newlib/libc/ctype/wctrans.c","./lib/newlib/newlib/libc/ctype/isdigit.c","./lib/newlib/newlib/libc/ctype/local.h","./lib/newlib/newlib/libc/ctype/isprint.c","./lib/newlib/newlib/libc/ctype/iswctype.c","./lib/newlib/newlib/libc/ctype/Makefile.in","./lib/newlib/newlib/libc/ctype/iswprint.c","./lib/newlib/newlib/libc/ctype/iswdigit.c","./lib/newlib/newlib/libc/ctype/ctype_iso.h","./lib/newlib/newlib/libc/ctype/islower.c","./lib/newlib/newlib/libc/ctype/isascii.c","./lib/newlib/newlib/libc/ctype/iswcntrl.c","./lib/newlib/newlib/libc/ctype/iswalpha.c","./lib/newlib/newlib/libc/ctype/isalnum.c","./lib/newlib/newlib/libc/ctype/towctrans.c","./lib/newlib/newlib/libc/ctype/wctype.c","./lib/newlib/newlib/libc/ctype/isxdigit.c","./lib/newlib/newlib/libc/ctype/isupper.c","./lib/newlib/newlib/libc/ctype/iswxdigit.c","./lib/newlib/newlib/libc/ctype/utf8alpha.h","./lib/newlib/newlib/libc/ctype/iscntrl.c","./lib/newlib/newlib/libc/ctype/Hakefile","./lib/newlib/newlib/libc/ctype/iswupper.c","./lib/newlib/newlib/libc/ctype/iswblank.c","./lib/newlib/newlib/libc/ctype/ctype.tex","./lib/newlib/newlib/libc/ctype/ctype_.c","./lib/newlib/newlib/libc/ctype/iswalnum.c","./lib/newlib/newlib/libc/ctype/Makefile.am","./lib/newlib/newlib/libc/ctype/toupper.c","./lib/newlib/newlib/libc/ctype/jp2uc.h","./lib/newlib/newlib/libc/ctype/jp2uc.c","./lib/newlib/newlib/libc/ctype/iswgraph.c","./lib/newlib/newlib/libc/ctype/ctype_cp.h","./lib/newlib/newlib/libc/ctype/towupper.c","./lib/newlib/newlib/libc/ctype/isspace.c","./lib/newlib/newlib/libc/ctype/ispunct.c","./lib/newlib/newlib/libc/ctype/towlower.c","./lib/newlib/newlib/libc/ctype/iswspace.c","./lib/newlib/newlib/libc/include/getopt.h","./lib/newlib/newlib/libc/include/complex.h","./lib/newlib/newlib/libc/include/_ansi.h","./lib/newlib/newlib/libc/include/libgen.h","./lib/newlib/newlib/libc/include/strings.h","./lib/newlib/newlib/libc/include/alloca.h","./lib/newlib/newlib/libc/include/unctrl.h","./lib/newlib/newlib/libc/include/errno.h","./lib/newlib/newlib/libc/include/dirent.h","./lib/newlib/newlib/libc/include/stdlib.h","./lib/newlib/newlib/libc/include/envlock.h","./lib/newlib/newlib/libc/include/pthread.h","./lib/newlib/newlib/libc/include/math.h","./lib/newlib/newlib/libc/include/reent.h","./lib/newlib/newlib/libc/include/argz.h","./lib/newlib/newlib/libc/include/fastmath.h","./lib/newlib/newlib/libc/include/regex.h","./lib/newlib/newlib/libc/include/wctype.h","./lib/newlib/newlib/libc/include/utmp.h","./lib/newlib/newlib/libc/include/ieeefp.h","./lib/newlib/newlib/libc/include/langinfo.h","./lib/newlib/newlib/libc/include/termios.h","./lib/newlib/newlib/libc/include/envz.h","./lib/newlib/newlib/libc/include/glob.h","./lib/newlib/newlib/libc/include/process.h","./lib/newlib/newlib/libc/include/grp.h","./lib/newlib/newlib/libc/include/tar.h","./lib/newlib/newlib/libc/include/wordexp.h","./lib/newlib/newlib/libc/include/ctype.h","./lib/newlib/newlib/libc/include/setjmp.h","./lib/newlib/newlib/libc/include/regdef.h","./lib/newlib/newlib/libc/include/unistd.h","./lib/newlib/newlib/libc/include/fcntl.h","./lib/newlib/newlib/libc/include/assert.h","./lib/newlib/newlib/libc/include/_syslist.h","./lib/newlib/newlib/libc/include/pwd.h","./lib/newlib/newlib/libc/include/ar.h","./lib/newlib/newlib/libc/include/iconv.h","./lib/newlib/newlib/libc/include/search.h","./lib/newlib/newlib/libc/include/inttypes.h","./lib/newlib/newlib/libc/include/sched.h","./lib/newlib/newlib/libc/include/fnmatch.h","./lib/newlib/newlib/libc/include/limits.h","./lib/newlib/newlib/libc/include/string.h","./lib/newlib/newlib/libc/include/signal__.h","./lib/newlib/newlib/libc/include/locale.h","./lib/newlib/newlib/libc/include/malloc.h","./lib/newlib/newlib/libc/include/newlib.h","./lib/newlib/newlib/libc/include/stdint.h","./lib/newlib/newlib/libc/include/utime.h","./lib/newlib/newlib/libc/include/wchar.h","./lib/newlib/newlib/libc/include/stdio.h","./lib/newlib/newlib/libc/include/time.h","./lib/newlib/newlib/libc/include/sys/signal.h","./lib/newlib/newlib/libc/include/sys/syslimits.h","./lib/newlib/newlib/libc/include/sys/iconvnls.h","./lib/newlib/newlib/libc/include/sys/errno.h","./lib/newlib/newlib/libc/include/sys/features.h","./lib/newlib/newlib/libc/include/sys/dirent.h","./lib/newlib/newlib/libc/include/sys/reent.h","./lib/newlib/newlib/libc/include/sys/types.h","./lib/newlib/newlib/libc/include/sys/_types.h","./lib/newlib/newlib/libc/include/sys/file.h","./lib/newlib/newlib/libc/include/sys/dir.h","./lib/newlib/newlib/libc/include/sys/_default_fcntl.h","./lib/newlib/newlib/libc/include/sys/queue.h","./lib/newlib/newlib/libc/include/sys/custom_file.h","./lib/newlib/newlib/libc/include/sys/stat.h","./lib/newlib/newlib/libc/include/sys/config.h","./lib/newlib/newlib/libc/include/sys/lock.h","./lib/newlib/newlib/libc/include/sys/unistd.h","./lib/newlib/newlib/libc/include/sys/fcntl.h","./lib/newlib/newlib/libc/include/sys/param.h","./lib/newlib/newlib/libc/include/sys/sched.h","./lib/newlib/newlib/libc/include/sys/string.h","./lib/newlib/newlib/libc/include/sys/cdefs.h","./lib/newlib/newlib/libc/include/sys/wait.h","./lib/newlib/newlib/libc/include/sys/utime.h","./lib/newlib/newlib/libc/include/sys/times.h","./lib/newlib/newlib/libc/include/sys/stdio.h","./lib/newlib/newlib/libc/include/sys/time.h","./lib/newlib/newlib/libc/include/sys/timeb.h","./lib/newlib/newlib/libc/include/machine/stdlib.h","./lib/newlib/newlib/libc/include/machine/endian.h","./lib/newlib/newlib/libc/include/machine/types.h","./lib/newlib/newlib/libc/include/machine/_types.h","./lib/newlib/newlib/libc/include/machine/fastmath.h","./lib/newlib/newlib/libc/include/machine/ieeefp.h","./lib/newlib/newlib/libc/include/machine/termios.h","./lib/newlib/newlib/libc/include/machine/setjmp-dj.h","./lib/newlib/newlib/libc/include/machine/setjmp.h","./lib/newlib/newlib/libc/include/machine/_default_types.h","./lib/newlib/newlib/libc/include/machine/ansi.h","./lib/newlib/newlib/libc/include/machine/param.h","./lib/newlib/newlib/libc/include/machine/malloc.h","./lib/newlib/newlib/libc/include/machine/time.h","./lib/newlib/newlib/libc/include/rpc/types.h","./lib/newlib/newlib/libc/include/rpc/xdr.h","./lib/newlib/newlib/libc/machine/Makefile.in","./lib/newlib/newlib/libc/machine/configure.in","./lib/newlib/newlib/libc/machine/Makefile.am","./lib/newlib/newlib/libc/machine/aclocal.m4","./lib/newlib/newlib/libc/machine/mn10300/setjmp.S","./lib/newlib/newlib/libc/machine/mn10300/Makefile.in","./lib/newlib/newlib/libc/machine/mn10300/memset.S","./lib/newlib/newlib/libc/machine/mn10300/strcmp.S","./lib/newlib/newlib/libc/machine/mn10300/strcpy.S","./lib/newlib/newlib/libc/machine/mn10300/memchr.S","./lib/newlib/newlib/libc/machine/mn10300/configure.in","./lib/newlib/newlib/libc/machine/mn10300/Makefile.am","./lib/newlib/newlib/libc/machine/mn10300/configure","./lib/newlib/newlib/libc/machine/mn10300/memcmp.S","./lib/newlib/newlib/libc/machine/mn10300/strchr.S","./lib/newlib/newlib/libc/machine/mn10300/strlen.S","./lib/newlib/newlib/libc/machine/mn10300/aclocal.m4","./lib/newlib/newlib/libc/machine/mn10300/memcpy.S","./lib/newlib/newlib/libc/machine/arm/setjmp.S","./lib/newlib/newlib/libc/machine/arm/Makefile.in","./lib/newlib/newlib/libc/machine/arm/strlen.c","./lib/newlib/newlib/libc/machine/arm/access.c","./lib/newlib/newlib/libc/machine/arm/arm_asm.h","./lib/newlib/newlib/libc/machine/arm/configure.in","./lib/newlib/newlib/libc/machine/arm/Makefile.am","./lib/newlib/newlib/libc/machine/arm/configure","./lib/newlib/newlib/libc/machine/arm/strcpy.c","./lib/newlib/newlib/libc/machine/arm/strcmp.c","./lib/newlib/newlib/libc/machine/arm/aclocal.m4","./lib/newlib/newlib/libc/machine/arm/machine/param.h","./lib/newlib/newlib/libc/machine/h8300/setjmp.S","./lib/newlib/newlib/libc/machine/h8300/setarch.h","./lib/newlib/newlib/libc/machine/h8300/Makefile.in","./lib/newlib/newlib/libc/machine/h8300/memset.S","./lib/newlib/newlib/libc/machine/h8300/reg_memset.S","./lib/newlib/newlib/libc/machine/h8300/strcmp.S","./lib/newlib/newlib/libc/machine/h8300/reg_memcpy.S","./lib/newlib/newlib/libc/machine/h8300/configure.in","./lib/newlib/newlib/libc/machine/h8300/Makefile.am","./lib/newlib/newlib/libc/machine/h8300/configure","./lib/newlib/newlib/libc/machine/h8300/defines.h","./lib/newlib/newlib/libc/machine/h8300/h8sx_strcpy.S","./lib/newlib/newlib/libc/machine/h8300/aclocal.m4","./lib/newlib/newlib/libc/machine/h8300/memcpy.S","./lib/newlib/newlib/libc/machine/bfin/setjmp.S","./lib/newlib/newlib/libc/machine/bfin/Makefile.in","./lib/newlib/newlib/libc/machine/bfin/configure.in","./lib/newlib/newlib/libc/machine/bfin/Makefile.am","./lib/newlib/newlib/libc/machine/bfin/configure","./lib/newlib/newlib/libc/machine/bfin/longjmp.S","./lib/newlib/newlib/libc/machine/bfin/aclocal.m4","./lib/newlib/newlib/libc/machine/cr16/setjmp.S","./lib/newlib/newlib/libc/machine/cr16/getenv.c","./lib/newlib/newlib/libc/machine/cr16/Makefile.in","./lib/newlib/newlib/libc/machine/cr16/configure.in","./lib/newlib/newlib/libc/machine/cr16/Makefile.am","./lib/newlib/newlib/libc/machine/cr16/configure","./lib/newlib/newlib/libc/machine/cr16/aclocal.m4","./lib/newlib/newlib/libc/machine/cr16/sys/asm.h","./lib/newlib/newlib/libc/machine/cr16/sys/libh.h","./lib/newlib/newlib/libc/machine/cr16/sys/syscall.h","./lib/newlib/newlib/libc/machine/rx/strcat.S","./lib/newlib/newlib/libc/machine/rx/setjmp.S","./lib/newlib/newlib/libc/machine/rx/strncmp.S","./lib/newlib/newlib/libc/machine/rx/Makefile.in","./lib/newlib/newlib/libc/machine/rx/memset.S","./lib/newlib/newlib/libc/machine/rx/strcmp.S","./lib/newlib/newlib/libc/machine/rx/memmove.S","./lib/newlib/newlib/libc/machine/rx/strcpy.S","./lib/newlib/newlib/libc/machine/rx/memchr.S","./lib/newlib/newlib/libc/machine/rx/configure.in","./lib/newlib/newlib/libc/machine/rx/Makefile.am","./lib/newlib/newlib/libc/machine/rx/configure","./lib/newlib/newlib/libc/machine/rx/strncpy.S","./lib/newlib/newlib/libc/machine/rx/strlen.S","./lib/newlib/newlib/libc/machine/rx/aclocal.m4","./lib/newlib/newlib/libc/machine/rx/mempcpy.S","./lib/newlib/newlib/libc/machine/rx/strncat.S","./lib/newlib/newlib/libc/machine/rx/memcpy.S","./lib/newlib/newlib/libc/machine/z8k/setjmp.S","./lib/newlib/newlib/libc/machine/z8k/Makefile.in","./lib/newlib/newlib/libc/machine/z8k/memset.S","./lib/newlib/newlib/libc/machine/z8k/memmove.S","./lib/newlib/newlib/libc/machine/z8k/configure.in","./lib/newlib/newlib/libc/machine/z8k/Makefile.am","./lib/newlib/newlib/libc/machine/z8k/configure","./lib/newlib/newlib/libc/machine/z8k/args.h","./lib/newlib/newlib/libc/machine/z8k/memcmp.S","./lib/newlib/newlib/libc/machine/z8k/aclocal.m4","./lib/newlib/newlib/libc/machine/z8k/memcpy.S","./lib/newlib/newlib/libc/machine/m88k/setjmp.S","./lib/newlib/newlib/libc/machine/m88k/Makefile.in","./lib/newlib/newlib/libc/machine/m88k/configure.in","./lib/newlib/newlib/libc/machine/m88k/Makefile.am","./lib/newlib/newlib/libc/machine/m88k/configure","./lib/newlib/newlib/libc/machine/m88k/aclocal.m4","./lib/newlib/newlib/libc/machine/tic6x/setjmp.S","./lib/newlib/newlib/libc/machine/tic6x/Makefile.in","./lib/newlib/newlib/libc/machine/tic6x/configure.in","./lib/newlib/newlib/libc/machine/tic6x/Makefile.am","./lib/newlib/newlib/libc/machine/tic6x/configure","./lib/newlib/newlib/libc/machine/tic6x/aclocal.m4","./lib/newlib/newlib/libc/machine/mep/setjmp.S","./lib/newlib/newlib/libc/machine/mep/Makefile.in","./lib/newlib/newlib/libc/machine/mep/configure.in","./lib/newlib/newlib/libc/machine/mep/Makefile.am","./lib/newlib/newlib/libc/machine/mep/configure","./lib/newlib/newlib/libc/machine/mep/aclocal.m4","./lib/newlib/newlib/libc/machine/m32r/setjmp.S","./lib/newlib/newlib/libc/machine/m32r/Makefile.in","./lib/newlib/newlib/libc/machine/m32r/configure.in","./lib/newlib/newlib/libc/machine/m32r/Makefile.am","./lib/newlib/newlib/libc/machine/m32r/configure","./lib/newlib/newlib/libc/machine/m32r/aclocal.m4","./lib/newlib/newlib/libc/machine/sh/setjmp.S","./lib/newlib/newlib/libc/machine/sh/asm.h","./lib/newlib/newlib/libc/machine/sh/Makefile.in","./lib/newlib/newlib/libc/machine/sh/memset.S","./lib/newlib/newlib/libc/machine/sh/strcmp.S","./lib/newlib/newlib/libc/machine/sh/strcpy.S","./lib/newlib/newlib/libc/machine/sh/configure.in","./lib/newlib/newlib/libc/machine/sh/Makefile.am","./lib/newlib/newlib/libc/machine/sh/configure","./lib/newlib/newlib/libc/machine/sh/strncpy.S","./lib/newlib/newlib/libc/machine/sh/strlen.S","./lib/newlib/newlib/libc/machine/sh/aclocal.m4","./lib/newlib/newlib/libc/machine/sh/memcpy.S","./lib/newlib/newlib/libc/machine/mt/setjmp.S","./lib/newlib/newlib/libc/machine/mt/Makefile.in","./lib/newlib/newlib/libc/machine/mt/configure.in","./lib/newlib/newlib/libc/machine/mt/Makefile.am","./lib/newlib/newlib/libc/machine/mt/configure","./lib/newlib/newlib/libc/machine/mt/aclocal.m4","./lib/newlib/newlib/libc/machine/fr30/setjmp.S","./lib/newlib/newlib/libc/machine/fr30/Makefile.in","./lib/newlib/newlib/libc/machine/fr30/configure.in","./lib/newlib/newlib/libc/machine/fr30/Makefile.am","./lib/newlib/newlib/libc/machine/fr30/configure","./lib/newlib/newlib/libc/machine/fr30/aclocal.m4","./lib/newlib/newlib/libc/machine/d30v/setjmp.S","./lib/newlib/newlib/libc/machine/d30v/Makefile.in","./lib/newlib/newlib/libc/machine/d30v/configure.in","./lib/newlib/newlib/libc/machine/d30v/Makefile.am","./lib/newlib/newlib/libc/machine/d30v/configure","./lib/newlib/newlib/libc/machine/d30v/aclocal.m4","./lib/newlib/newlib/libc/machine/lm32/setjmp.S","./lib/newlib/newlib/libc/machine/lm32/Makefile.in","./lib/newlib/newlib/libc/machine/lm32/configure.in","./lib/newlib/newlib/libc/machine/lm32/Makefile.am","./lib/newlib/newlib/libc/machine/lm32/configure","./lib/newlib/newlib/libc/machine/lm32/aclocal.m4","./lib/newlib/newlib/libc/machine/necv70/setjmp.S","./lib/newlib/newlib/libc/machine/necv70/Makefile.in","./lib/newlib/newlib/libc/machine/necv70/fastmath.S","./lib/newlib/newlib/libc/machine/necv70/configure.in","./lib/newlib/newlib/libc/machine/necv70/Makefile.am","./lib/newlib/newlib/libc/machine/necv70/configure","./lib/newlib/newlib/libc/machine/necv70/necv70.tex","./lib/newlib/newlib/libc/machine/necv70/aclocal.m4","./lib/newlib/newlib/libc/machine/necv70/machine/registers.h","./lib/newlib/newlib/libc/machine/spu/ftell.c","./lib/newlib/newlib/libc/machine/spu/strcspn.c","./lib/newlib/newlib/libc/machine/spu/setjmp.S","./lib/newlib/newlib/libc/machine/spu/spu-gmon.c","./lib/newlib/newlib/libc/machine/spu/strpbrk_ea.c","./lib/newlib/newlib/libc/machine/spu/fputs.c","./lib/newlib/newlib/libc/machine/spu/free_ea.c","./lib/newlib/newlib/libc/machine/spu/vsprintf.c","./lib/newlib/newlib/libc/machine/spu/realloc_ea.c","./lib/newlib/newlib/libc/machine/spu/vsnprintf.c","./lib/newlib/newlib/libc/machine/spu/spu_timer_internal.h","./lib/newlib/newlib/libc/machine/spu/creat.c","./lib/newlib/newlib/libc/machine/spu/setbuf.c","./lib/newlib/newlib/libc/machine/spu/rewind.c","./lib/newlib/newlib/libc/machine/spu/gets.c","./lib/newlib/newlib/libc/machine/spu/mk_syscalls","./lib/newlib/newlib/libc/machine/spu/malloc_ea.c","./lib/newlib/newlib/libc/machine/spu/posix_memalign_ea.c","./lib/newlib/newlib/libc/machine/spu/freopen.c","./lib/newlib/newlib/libc/machine/spu/strspn.c","./lib/newlib/newlib/libc/machine/spu/strlen_ea.c","./lib/newlib/newlib/libc/machine/spu/impure.c","./lib/newlib/newlib/libc/machine/spu/memset.c","./lib/newlib/newlib/libc/machine/spu/strncmp.c","./lib/newlib/newlib/libc/machine/spu/strncmp_ea.c","./lib/newlib/newlib/libc/machine/spu/putc.c","./lib/newlib/newlib/libc/machine/spu/c99ppe.h","./lib/newlib/newlib/libc/machine/spu/fseek.c","./lib/newlib/newlib/libc/machine/spu/sscanf.S","./lib/newlib/newlib/libc/machine/spu/siprintf.S","./lib/newlib/newlib/libc/machine/spu/printf.S","./lib/newlib/newlib/libc/machine/spu/Makefile.in","./lib/newlib/newlib/libc/machine/spu/fileno.c","./lib/newlib/newlib/libc/machine/spu/vsiprintf.c","./lib/newlib/newlib/libc/machine/spu/tmpfile.c","./lib/newlib/newlib/libc/machine/spu/fgetc.c","./lib/newlib/newlib/libc/machine/spu/getc.c","./lib/newlib/newlib/libc/machine/spu/strcat.c","./lib/newlib/newlib/libc/machine/spu/spu_clock_stop.c","./lib/newlib/newlib/libc/machine/spu/fiscanf.S","./lib/newlib/newlib/libc/machine/spu/strstr_ea.c","./lib/newlib/newlib/libc/machine/spu/spu_clock_svcs.c","./lib/newlib/newlib/libc/machine/spu/putchar.c","./lib/newlib/newlib/libc/machine/spu/viprintf.c","./lib/newlib/newlib/libc/machine/spu/readv_ea.c","./lib/newlib/newlib/libc/machine/spu/scanf.S","./lib/newlib/newlib/libc/machine/spu/fputc.c","./lib/newlib/newlib/libc/machine/spu/fflush.c","./lib/newlib/newlib/libc/machine/spu/clearerr.c","./lib/newlib/newlib/libc/machine/spu/setvbuf.c","./lib/newlib/newlib/libc/machine/spu/memcmp_ea.c","./lib/newlib/newlib/libc/machine/spu/strlen.c","./lib/newlib/newlib/libc/machine/spu/strxfrm.c","./lib/newlib/newlib/libc/machine/spu/puts.c","./lib/newlib/newlib/libc/machine/spu/tmpnam.c","./lib/newlib/newlib/libc/machine/spu/vec_literal.h","./lib/newlib/newlib/libc/machine/spu/memmove.c","./lib/newlib/newlib/libc/machine/spu/strncpy_ea.c","./lib/newlib/newlib/libc/machine/spu/rename.c","./lib/newlib/newlib/libc/machine/spu/read_ea.c","./lib/newlib/newlib/libc/machine/spu/memmove_ea.c","./lib/newlib/newlib/libc/machine/spu/sniprintf.S","./lib/newlib/newlib/libc/machine/spu/munmap_ea.c","./lib/newlib/newlib/libc/machine/spu/pwrite_ea.c","./lib/newlib/newlib/libc/machine/spu/viscanf.c","./lib/newlib/newlib/libc/machine/spu/iscanf.S","./lib/newlib/newlib/libc/machine/spu/fopen.c","./lib/newlib/newlib/libc/machine/spu/spu_timer_stop.c","./lib/newlib/newlib/libc/machine/spu/fsetpos.c","./lib/newlib/newlib/libc/machine/spu/stdio.c","./lib/newlib/newlib/libc/machine/spu/mremap_ea.c","./lib/newlib/newlib/libc/machine/spu/vscanf.c","./lib/newlib/newlib/libc/machine/spu/spu_timer_flih.S","./lib/newlib/newlib/libc/machine/spu/iprintf.S","./lib/newlib/newlib/libc/machine/spu/vfiscanf.c","./lib/newlib/newlib/libc/machine/spu/fscanf.S","./lib/newlib/newlib/libc/machine/spu/ungetc.c","./lib/newlib/newlib/libc/machine/spu/fgetpos.c","./lib/newlib/newlib/libc/machine/spu/strcat_ea.c","./lib/newlib/newlib/libc/machine/spu/syscall.def","./lib/newlib/newlib/libc/machine/spu/configure.in","./lib/newlib/newlib/libc/machine/spu/vfscanf.c","./lib/newlib/newlib/libc/machine/spu/strrchr_ea.c","./lib/newlib/newlib/libc/machine/spu/strrchr.c","./lib/newlib/newlib/libc/machine/spu/feof.c","./lib/newlib/newlib/libc/machine/spu/Makefile.am","./lib/newlib/newlib/libc/machine/spu/configure","./lib/newlib/newlib/libc/machine/spu/straddr.h","./lib/newlib/newlib/libc/machine/spu/spu_timer_slih_reg.c","./lib/newlib/newlib/libc/machine/spu/vsiscanf.c","./lib/newlib/newlib/libc/machine/spu/spu_timer_free.c","./lib/newlib/newlib/libc/machine/spu/vprintf.c","./lib/newlib/newlib/libc/machine/spu/strcpy.c","./lib/newlib/newlib/libc/machine/spu/strncmp.h","./lib/newlib/newlib/libc/machine/spu/memcpy.c","./lib/newlib/newlib/libc/machine/spu/getchar.c","./lib/newlib/newlib/libc/machine/spu/strcpy_ea.c","./lib/newlib/newlib/libc/machine/spu/memcmp.c","./lib/newlib/newlib/libc/machine/spu/ferror.c","./lib/newlib/newlib/libc/machine/spu/ea_internal.h","./lib/newlib/newlib/libc/machine/spu/vsniprintf.c","./lib/newlib/newlib/libc/machine/spu/usleep.c","./lib/newlib/newlib/libc/machine/spu/spu_timer_slih.c","./lib/newlib/newlib/libc/machine/spu/assert.c","./lib/newlib/newlib/libc/machine/spu/sleep.c","./lib/newlib/newlib/libc/machine/spu/memchr_ea.c","./lib/newlib/newlib/libc/machine/spu/fdopen.c","./lib/newlib/newlib/libc/machine/spu/spu-mcount.S","./lib/newlib/newlib/libc/machine/spu/mmap_ea.c","./lib/newlib/newlib/libc/machine/spu/strcpy.h","./lib/newlib/newlib/libc/machine/spu/strchr_ea.c","./lib/newlib/newlib/libc/machine/spu/strncat_ea.c","./lib/newlib/newlib/libc/machine/spu/strncpy.c","./lib/newlib/newlib/libc/machine/spu/fwrite.c","./lib/newlib/newlib/libc/machine/spu/fread.c","./lib/newlib/newlib/libc/machine/spu/fgets.c","./lib/newlib/newlib/libc/machine/spu/writev_ea.c","./lib/newlib/newlib/libc/machine/spu/strcmp_ea.c","./lib/newlib/newlib/libc/machine/spu/strchr.c","./lib/newlib/newlib/libc/machine/spu/stack_reg_va.S","./lib/newlib/newlib/libc/machine/spu/vsscanf.c","./lib/newlib/newlib/libc/machine/spu/perror.c","./lib/newlib/newlib/libc/machine/spu/spu_timer_svcs.c","./lib/newlib/newlib/libc/machine/spu/spu_timebase.c","./lib/newlib/newlib/libc/machine/spu/remove.c","./lib/newlib/newlib/libc/machine/spu/fprintf.S","./lib/newlib/newlib/libc/machine/spu/fclose.c","./lib/newlib/newlib/libc/machine/spu/snprintf.S","./lib/newlib/newlib/libc/machine/spu/sprintf.S","./lib/newlib/newlib/libc/machine/spu/calloc_ea.c","./lib/newlib/newlib/libc/machine/spu/memcpy_ea.c","./lib/newlib/newlib/libc/machine/spu/strcspn_ea.c","./lib/newlib/newlib/libc/machine/spu/write_ea.c","./lib/newlib/newlib/libc/machine/spu/strcmp.c","./lib/newlib/newlib/libc/machine/spu/aclocal.m4","./lib/newlib/newlib/libc/machine/spu/msync_ea.c","./lib/newlib/newlib/libc/machine/spu/strncat.c","./lib/newlib/newlib/libc/machine/spu/memset_ea.c","./lib/newlib/newlib/libc/machine/spu/strspn_ea.c","./lib/newlib/newlib/libc/machine/spu/fiprintf.S","./lib/newlib/newlib/libc/machine/spu/strpbrk.c","./lib/newlib/newlib/libc/machine/spu/siscanf.S","./lib/newlib/newlib/libc/machine/spu/vfprintf.c","./lib/newlib/newlib/libc/machine/spu/vfiprintf.c","./lib/newlib/newlib/libc/machine/spu/pread_ea.c","./lib/newlib/newlib/libc/machine/spu/sys/errno.h","./lib/newlib/newlib/libc/machine/spu/sys/dirent.h","./lib/newlib/newlib/libc/machine/spu/sys/fenv.h","./lib/newlib/newlib/libc/machine/spu/sys/mman.h","./lib/newlib/newlib/libc/machine/spu/sys/custom_file.h","./lib/newlib/newlib/libc/machine/spu/sys/linux_syscalls.h","./lib/newlib/newlib/libc/machine/spu/sys/sched.h","./lib/newlib/newlib/libc/machine/spu/sys/uio.h","./lib/newlib/newlib/libc/machine/spu/sys/utime.h","./lib/newlib/newlib/libc/machine/spu/sys/syscall.h","./lib/newlib/newlib/libc/machine/spu/include/fenv.h","./lib/newlib/newlib/libc/machine/spu/include/ea.h","./lib/newlib/newlib/libc/machine/spu/include/spu_timer.h","./lib/newlib/newlib/libc/machine/spu/machine/_types.h","./lib/newlib/newlib/libc/machine/mips/setjmp.S","./lib/newlib/newlib/libc/machine/mips/memset.c","./lib/newlib/newlib/libc/machine/mips/Makefile.in","./lib/newlib/newlib/libc/machine/mips/strlen.c","./lib/newlib/newlib/libc/machine/mips/configure.in","./lib/newlib/newlib/libc/machine/mips/Makefile.am","./lib/newlib/newlib/libc/machine/mips/configure","./lib/newlib/newlib/libc/machine/mips/memcpy.c","./lib/newlib/newlib/libc/machine/mips/strncpy.c","./lib/newlib/newlib/libc/machine/mips/strcmp.c","./lib/newlib/newlib/libc/machine/mips/aclocal.m4","./lib/newlib/newlib/libc/machine/mips/machine/regdef.h","./lib/newlib/newlib/libc/machine/mn10200/setjmp.S","./lib/newlib/newlib/libc/machine/mn10200/Makefile.in","./lib/newlib/newlib/libc/machine/mn10200/configure.in","./lib/newlib/newlib/libc/machine/mn10200/Makefile.am","./lib/newlib/newlib/libc/machine/mn10200/configure","./lib/newlib/newlib/libc/machine/mn10200/aclocal.m4","./lib/newlib/newlib/libc/machine/i386/setjmp.S","./lib/newlib/newlib/libc/machine/i386/i386mach.h","./lib/newlib/newlib/libc/machine/i386/f_log10f.S","./lib/newlib/newlib/libc/machine/i386/Makefile.in","./lib/newlib/newlib/libc/machine/i386/memset.S","./lib/newlib/newlib/libc/machine/i386/f_ldexpf.S","./lib/newlib/newlib/libc/machine/i386/f_math.h","./lib/newlib/newlib/libc/machine/i386/f_powf.c","./lib/newlib/newlib/libc/machine/i386/f_frexpf.S","./lib/newlib/newlib/libc/machine/i386/f_ldexp.S","./lib/newlib/newlib/libc/machine/i386/memmove.S","./lib/newlib/newlib/libc/machine/i386/f_tanf.S","./lib/newlib/newlib/libc/machine/i386/f_pow.c","./lib/newlib/newlib/libc/machine/i386/memchr.S","./lib/newlib/newlib/libc/machine/i386/configure.in","./lib/newlib/newlib/libc/machine/i386/Makefile.am","./lib/newlib/newlib/libc/machine/i386/f_tan.S","./lib/newlib/newlib/libc/machine/i386/memcmp.S","./lib/newlib/newlib/libc/machine/i386/f_logf.S","./lib/newlib/newlib/libc/machine/i386/f_log.S","./lib/newlib/newlib/libc/machine/i386/f_expf.c","./lib/newlib/newlib/libc/machine/i386/f_frexp.S","./lib/newlib/newlib/libc/machine/i386/strchr.S","./lib/newlib/newlib/libc/machine/i386/f_atan2f.S","./lib/newlib/newlib/libc/machine/i386/strlen.S","./lib/newlib/newlib/libc/machine/i386/f_log10.S","./lib/newlib/newlib/libc/machine/i386/f_atan2.S","./lib/newlib/newlib/libc/machine/i386/aclocal.m4","./lib/newlib/newlib/libc/machine/i386/f_exp.c","./lib/newlib/newlib/libc/machine/i386/memcpy.S","./lib/newlib/newlib/libc/machine/i386/machine/fastmath.h","./lib/newlib/newlib/libc/machine/powerpc/setjmp.S","./lib/newlib/newlib/libc/machine/powerpc/atoufix64.c","./lib/newlib/newlib/libc/machine/powerpc/strtoufix64.c","./lib/newlib/newlib/libc/machine/powerpc/atosfix32.c","./lib/newlib/newlib/libc/machine/powerpc/ufix64toa.c","./lib/newlib/newlib/libc/machine/powerpc/strtosfix64.c","./lib/newlib/newlib/libc/machine/powerpc/Makefile.in","./lib/newlib/newlib/libc/machine/powerpc/times.c","./lib/newlib/newlib/libc/machine/powerpc/strtosfix32.c","./lib/newlib/newlib/libc/machine/powerpc/atoufix32.c","./lib/newlib/newlib/libc/machine/powerpc/strtosfix16.c","./lib/newlib/newlib/libc/machine/powerpc/simdldtoa.c","./lib/newlib/newlib/libc/machine/powerpc/atosfix16.c","./lib/newlib/newlib/libc/machine/powerpc/vec_mallocr.c","./lib/newlib/newlib/libc/machine/powerpc/atoufix16.c","./lib/newlib/newlib/libc/machine/powerpc/configure.in","./lib/newlib/newlib/libc/machine/powerpc/vfscanf.c","./lib/newlib/newlib/libc/machine/powerpc/fix64.h","./lib/newlib/newlib/libc/machine/powerpc/Makefile.am","./lib/newlib/newlib/libc/machine/powerpc/configure","./lib/newlib/newlib/libc/machine/powerpc/strtoufix16.c","./lib/newlib/newlib/libc/machine/powerpc/vec_free.c","./lib/newlib/newlib/libc/machine/powerpc/vec_malloc.c","./lib/newlib/newlib/libc/machine/powerpc/atosfix64.c","./lib/newlib/newlib/libc/machine/powerpc/vec_calloc.c","./lib/newlib/newlib/libc/machine/powerpc/aclocal.m4","./lib/newlib/newlib/libc/machine/powerpc/vec_realloc.c","./lib/newlib/newlib/libc/machine/powerpc/strtoufix32.c","./lib/newlib/newlib/libc/machine/powerpc/vfprintf.c","./lib/newlib/newlib/libc/machine/powerpc/machine/stdlib.h","./lib/newlib/newlib/libc/machine/powerpc/machine/malloc.h","./lib/newlib/newlib/libc/machine/h8500/psi.S","./lib/newlib/newlib/libc/machine/h8500/setjmp.S","./lib/newlib/newlib/libc/machine/h8500/Makefile.in","./lib/newlib/newlib/libc/machine/h8500/shifts.c","./lib/newlib/newlib/libc/machine/h8500/mulhi3.c","./lib/newlib/newlib/libc/machine/h8500/divsi3.c","./lib/newlib/newlib/libc/machine/h8500/configure.in","./lib/newlib/newlib/libc/machine/h8500/Makefile.am","./lib/newlib/newlib/libc/machine/h8500/configure","./lib/newlib/newlib/libc/machine/h8500/cmpsi.c","./lib/newlib/newlib/libc/machine/h8500/negsi2.c","./lib/newlib/newlib/libc/machine/h8500/mulsi3.c","./lib/newlib/newlib/libc/machine/h8500/divhi3.S","./lib/newlib/newlib/libc/machine/h8500/aclocal.m4","./lib/newlib/newlib/libc/machine/m68hc11/setjmp.S","./lib/newlib/newlib/libc/machine/m68hc11/Makefile.in","./lib/newlib/newlib/libc/machine/m68hc11/configure.in","./lib/newlib/newlib/libc/machine/m68hc11/Makefile.am","./lib/newlib/newlib/libc/machine/m68hc11/configure","./lib/newlib/newlib/libc/machine/m68hc11/aclocal.m4","./lib/newlib/newlib/libc/machine/i960/setjmp.S","./lib/newlib/newlib/libc/machine/i960/strlen_ca.S","./lib/newlib/newlib/libc/machine/i960/memcmp_ca.S","./lib/newlib/newlib/libc/machine/i960/strncmp.S","./lib/newlib/newlib/libc/machine/i960/strncat_ca.S","./lib/newlib/newlib/libc/machine/i960/memcpy_ca.S","./lib/newlib/newlib/libc/machine/i960/strrchr.S","./lib/newlib/newlib/libc/machine/i960/memccpy.S","./lib/newlib/newlib/libc/machine/i960/Makefile.in","./lib/newlib/newlib/libc/machine/i960/memset.S","./lib/newlib/newlib/libc/machine/i960/strpbrk.S","./lib/newlib/newlib/libc/machine/i960/strcmp.S","./lib/newlib/newlib/libc/machine/i960/strchr_ca.S","./lib/newlib/newlib/libc/machine/i960/strcspn.S","./lib/newlib/newlib/libc/machine/i960/strncmp_ca.S","./lib/newlib/newlib/libc/machine/i960/strcpy.S","./lib/newlib/newlib/libc/machine/i960/memccpy_ca.S","./lib/newlib/newlib/libc/machine/i960/memchr.S","./lib/newlib/newlib/libc/machine/i960/configure.in","./lib/newlib/newlib/libc/machine/i960/Makefile.am","./lib/newlib/newlib/libc/machine/i960/configure","./lib/newlib/newlib/libc/machine/i960/memchr_ca.S","./lib/newlib/newlib/libc/machine/i960/memcmp.S","./lib/newlib/newlib/libc/machine/i960/strncpy.S","./lib/newlib/newlib/libc/machine/i960/strdup.S","./lib/newlib/newlib/libc/machine/i960/strchr.S","./lib/newlib/newlib/libc/machine/i960/strncpy_ca.S","./lib/newlib/newlib/libc/machine/i960/strlen.S","./lib/newlib/newlib/libc/machine/i960/strcmp_ca.S","./lib/newlib/newlib/libc/machine/i960/aclocal.m4","./lib/newlib/newlib/libc/machine/i960/strncat.S","./lib/newlib/newlib/libc/machine/i960/strcpy_ca.S","./lib/newlib/newlib/libc/machine/i960/memcpy.S","./lib/newlib/newlib/libc/machine/tic80/setjmp.S","./lib/newlib/newlib/libc/machine/tic80/Makefile.in","./lib/newlib/newlib/libc/machine/tic80/configure.in","./lib/newlib/newlib/libc/machine/tic80/Makefile.am","./lib/newlib/newlib/libc/machine/tic80/configure","./lib/newlib/newlib/libc/machine/tic80/aclocal.m4","./lib/newlib/newlib/libc/machine/hppa/strcat.S","./lib/newlib/newlib/libc/machine/hppa/setjmp.S","./lib/newlib/newlib/libc/machine/hppa/strncmp.S","./lib/newlib/newlib/libc/machine/hppa/Makefile.in","./lib/newlib/newlib/libc/machine/hppa/memset.S","./lib/newlib/newlib/libc/machine/hppa/strcmp.S","./lib/newlib/newlib/libc/machine/hppa/strcpy.S","./lib/newlib/newlib/libc/machine/hppa/memchr.S","./lib/newlib/newlib/libc/machine/hppa/configure.in","./lib/newlib/newlib/libc/machine/hppa/Makefile.am","./lib/newlib/newlib/libc/machine/hppa/configure","./lib/newlib/newlib/libc/machine/hppa/pcc_prefix.s","./lib/newlib/newlib/libc/machine/hppa/memcmp.S","./lib/newlib/newlib/libc/machine/hppa/strncpy.S","./lib/newlib/newlib/libc/machine/hppa/DEFS.h","./lib/newlib/newlib/libc/machine/hppa/strlen.S","./lib/newlib/newlib/libc/machine/hppa/aclocal.m4","./lib/newlib/newlib/libc/machine/hppa/strncat.S","./lib/newlib/newlib/libc/machine/hppa/memcpy.S","./lib/newlib/newlib/libc/machine/d10v/setjmp.S","./lib/newlib/newlib/libc/machine/d10v/Makefile.in","./lib/newlib/newlib/libc/machine/d10v/configure.in","./lib/newlib/newlib/libc/machine/d10v/Makefile.am","./lib/newlib/newlib/libc/machine/d10v/configure","./lib/newlib/newlib/libc/machine/d10v/aclocal.m4","./lib/newlib/newlib/libc/machine/microblaze/setjmp.S","./lib/newlib/newlib/libc/machine/microblaze/Makefile.in","./lib/newlib/newlib/libc/machine/microblaze/strlen.c","./lib/newlib/newlib/libc/machine/microblaze/configure.in","./lib/newlib/newlib/libc/machine/microblaze/Makefile.am","./lib/newlib/newlib/libc/machine/microblaze/configure","./lib/newlib/newlib/libc/machine/microblaze/abort.c","./lib/newlib/newlib/libc/machine/microblaze/strcpy.c","./lib/newlib/newlib/libc/machine/microblaze/longjmp.S","./lib/newlib/newlib/libc/machine/microblaze/strcmp.c","./lib/newlib/newlib/libc/machine/microblaze/aclocal.m4","./lib/newlib/newlib/libc/machine/moxie/setjmp.S","./lib/newlib/newlib/libc/machine/moxie/Makefile.in","./lib/newlib/newlib/libc/machine/moxie/configure.in","./lib/newlib/newlib/libc/machine/moxie/Makefile.am","./lib/newlib/newlib/libc/machine/moxie/configure","./lib/newlib/newlib/libc/machine/moxie/aclocal.m4","./lib/newlib/newlib/libc/machine/xscale/setjmp.S","./lib/newlib/newlib/libc/machine/xscale/memset.c","./lib/newlib/newlib/libc/machine/xscale/Makefile.in","./lib/newlib/newlib/libc/machine/xscale/strlen.c","./lib/newlib/newlib/libc/machine/xscale/memmove.c","./lib/newlib/newlib/libc/machine/xscale/xscale.h","./lib/newlib/newlib/libc/machine/xscale/configure.in","./lib/newlib/newlib/libc/machine/xscale/Makefile.am","./lib/newlib/newlib/libc/machine/xscale/configure","./lib/newlib/newlib/libc/machine/xscale/strcpy.c","./lib/newlib/newlib/libc/machine/xscale/memcpy.c","./lib/newlib/newlib/libc/machine/xscale/memcmp.c","./lib/newlib/newlib/libc/machine/xscale/memchr.c","./lib/newlib/newlib/libc/machine/xscale/strchr.c","./lib/newlib/newlib/libc/machine/xscale/strcmp.c","./lib/newlib/newlib/libc/machine/xscale/aclocal.m4","./lib/newlib/newlib/libc/machine/xscale/machine/profile.h","./lib/newlib/newlib/libc/machine/x86_64/setjmp.S","./lib/newlib/newlib/libc/machine/x86_64/Makefile.in","./lib/newlib/newlib/libc/machine/x86_64/memset.S","./lib/newlib/newlib/libc/machine/x86_64/configure.in","./lib/newlib/newlib/libc/machine/x86_64/Makefile.am","./lib/newlib/newlib/libc/machine/x86_64/configure","./lib/newlib/newlib/libc/machine/x86_64/aclocal.m4","./lib/newlib/newlib/libc/machine/x86_64/x86_64mach.h","./lib/newlib/newlib/libc/machine/x86_64/memcpy.S","./lib/newlib/newlib/libc/machine/xstormy16/setjmp.S","./lib/newlib/newlib/libc/machine/xstormy16/Makefile.in","./lib/newlib/newlib/libc/machine/xstormy16/mallocr.c","./lib/newlib/newlib/libc/machine/xstormy16/tiny-malloc.c","./lib/newlib/newlib/libc/machine/xstormy16/configure.in","./lib/newlib/newlib/libc/machine/xstormy16/Makefile.am","./lib/newlib/newlib/libc/machine/xstormy16/configure","./lib/newlib/newlib/libc/machine/xstormy16/aclocal.m4","./lib/newlib/newlib/libc/machine/w65/lshrhi.S","./lib/newlib/newlib/libc/machine/w65/Makefile.in","./lib/newlib/newlib/libc/machine/w65/smulhi3.S","./lib/newlib/newlib/libc/machine/w65/sdivhi3.S","./lib/newlib/newlib/libc/machine/w65/divsi3.c","./lib/newlib/newlib/libc/machine/w65/configure.in","./lib/newlib/newlib/libc/machine/w65/Makefile.am","./lib/newlib/newlib/libc/machine/w65/configure","./lib/newlib/newlib/libc/machine/w65/cmpsi.c","./lib/newlib/newlib/libc/machine/w65/umodhi3.S","./lib/newlib/newlib/libc/machine/w65/udivhi3.S","./lib/newlib/newlib/libc/machine/w65/mulsi3.c","./lib/newlib/newlib/libc/machine/w65/aclocal.m4","./lib/newlib/newlib/libc/machine/tic4x/setjmp.S","./lib/newlib/newlib/libc/machine/tic4x/Makefile.in","./lib/newlib/newlib/libc/machine/tic4x/configure.in","./lib/newlib/newlib/libc/machine/tic4x/Makefile.am","./lib/newlib/newlib/libc/machine/tic4x/configure","./lib/newlib/newlib/libc/machine/tic4x/aclocal.m4","./lib/newlib/newlib/libc/machine/xc16x/setjmp.S","./lib/newlib/newlib/libc/machine/xc16x/Makefile.in","./lib/newlib/newlib/libc/machine/xc16x/putchar.c","./lib/newlib/newlib/libc/machine/xc16x/puts.c","./lib/newlib/newlib/libc/machine/xc16x/configure.in","./lib/newlib/newlib/libc/machine/xc16x/Makefile.am","./lib/newlib/newlib/libc/machine/xc16x/configure","./lib/newlib/newlib/libc/machine/xc16x/aclocal.m4","./lib/newlib/newlib/libc/machine/cris/memset.c","./lib/newlib/newlib/libc/machine/cris/Makefile.in","./lib/newlib/newlib/libc/machine/cris/memmove.c","./lib/newlib/newlib/libc/machine/cris/libcdtor.c","./lib/newlib/newlib/libc/machine/cris/configure.in","./lib/newlib/newlib/libc/machine/cris/Makefile.am","./lib/newlib/newlib/libc/machine/cris/configure","./lib/newlib/newlib/libc/machine/cris/memcpy.c","./lib/newlib/newlib/libc/machine/cris/setjmp.c","./lib/newlib/newlib/libc/machine/cris/aclocal.m4","./lib/newlib/newlib/libc/machine/cris/sys/signal.h","./lib/newlib/newlib/libc/machine/cris/sys/errno.h","./lib/newlib/newlib/libc/machine/cris/sys/fcntl.h","./lib/newlib/newlib/libc/machine/cris/include/pthread.h","./lib/newlib/newlib/libc/machine/a29k/Makefile.in","./lib/newlib/newlib/libc/machine/a29k/configure.in","./lib/newlib/newlib/libc/machine/a29k/Makefile.am","./lib/newlib/newlib/libc/machine/a29k/configure","./lib/newlib/newlib/libc/machine/a29k/aclocal.m4","./lib/newlib/newlib/libc/machine/frv/setjmp.S","./lib/newlib/newlib/libc/machine/frv/Makefile.in","./lib/newlib/newlib/libc/machine/frv/configure.in","./lib/newlib/newlib/libc/machine/frv/Makefile.am","./lib/newlib/newlib/libc/machine/frv/configure","./lib/newlib/newlib/libc/machine/frv/aclocal.m4","./lib/newlib/newlib/libc/machine/v850/setjmp.S","./lib/newlib/newlib/libc/machine/v850/Makefile.in","./lib/newlib/newlib/libc/machine/v850/configure.in","./lib/newlib/newlib/libc/machine/v850/Makefile.am","./lib/newlib/newlib/libc/machine/v850/configure","./lib/newlib/newlib/libc/machine/v850/aclocal.m4","./lib/newlib/newlib/libc/machine/sparc/setjmp.S","./lib/newlib/newlib/libc/machine/sparc/Makefile.in","./lib/newlib/newlib/libc/machine/sparc/scan.c","./lib/newlib/newlib/libc/machine/sparc/shuffle.c","./lib/newlib/newlib/libc/machine/sparc/configure.in","./lib/newlib/newlib/libc/machine/sparc/Makefile.am","./lib/newlib/newlib/libc/machine/sparc/configure","./lib/newlib/newlib/libc/machine/sparc/aclocal.m4","./lib/newlib/newlib/libc/machine/sparc/machine/sparclet.h","./lib/newlib/newlib/libc/machine/m68k/setjmp.S","./lib/newlib/newlib/libc/machine/m68k/m68kasm.h","./lib/newlib/newlib/libc/machine/m68k/Makefile.in","./lib/newlib/newlib/libc/machine/m68k/memset.S","./lib/newlib/newlib/libc/machine/m68k/strlen.c","./lib/newlib/newlib/libc/machine/m68k/configure.in","./lib/newlib/newlib/libc/machine/m68k/Makefile.am","./lib/newlib/newlib/libc/machine/m68k/configure","./lib/newlib/newlib/libc/machine/m68k/strcpy.c","./lib/newlib/newlib/libc/machine/m68k/aclocal.m4","./lib/newlib/newlib/libc/machine/m68k/memcpy.S","./lib/newlib/newlib/libc/machine/m32c/setjmp.S","./lib/newlib/newlib/libc/machine/m32c/Makefile.in","./lib/newlib/newlib/libc/machine/m32c/configure.in","./lib/newlib/newlib/libc/machine/m32c/Makefile.am","./lib/newlib/newlib/libc/machine/m32c/configure","./lib/newlib/newlib/libc/machine/m32c/aclocal.m4","./lib/newlib/newlib/libc/machine/iq2000/setjmp.S","./lib/newlib/newlib/libc/machine/iq2000/Makefile.in","./lib/newlib/newlib/libc/machine/iq2000/configure.in","./lib/newlib/newlib/libc/machine/iq2000/Makefile.am","./lib/newlib/newlib/libc/machine/iq2000/configure","./lib/newlib/newlib/libc/machine/iq2000/aclocal.m4","./lib/newlib/newlib/libc/machine/crx/setjmp.S","./lib/newlib/newlib/libc/machine/crx/getenv.c","./lib/newlib/newlib/libc/machine/crx/Makefile.in","./lib/newlib/newlib/libc/machine/crx/configure.in","./lib/newlib/newlib/libc/machine/crx/Makefile.am","./lib/newlib/newlib/libc/machine/crx/configure","./lib/newlib/newlib/libc/machine/crx/aclocal.m4","./lib/newlib/newlib/libc/machine/crx/sys/asm.h","./lib/newlib/newlib/libc/machine/crx/sys/libh.h","./lib/newlib/newlib/libc/machine/crx/sys/syscall.h","./lib/newlib/newlib/libc/stdio/svfprintf.c","./lib/newlib/newlib/libc/stdio/ftell.c","./lib/newlib/newlib/libc/stdio/vdprintf.c","./lib/newlib/newlib/libc/stdio/fpurge.c","./lib/newlib/newlib/libc/stdio/fputs.c","./lib/newlib/newlib/libc/stdio/asnprintf.c","./lib/newlib/newlib/libc/stdio/vsprintf.c","./lib/newlib/newlib/libc/stdio/vsnprintf.c","./lib/newlib/newlib/libc/stdio/vasniprintf.c","./lib/newlib/newlib/libc/stdio/makebuf.c","./lib/newlib/newlib/libc/stdio/setbuf.c","./lib/newlib/newlib/libc/stdio/rewind.c","./lib/newlib/newlib/libc/stdio/gets.c","./lib/newlib/newlib/libc/stdio/rget.c","./lib/newlib/newlib/libc/stdio/freopen.c","./lib/newlib/newlib/libc/stdio/fwscanf.c","./lib/newlib/newlib/libc/stdio/putc.c","./lib/newlib/newlib/libc/stdio/local.h","./lib/newlib/newlib/libc/stdio/siscanf.c","./lib/newlib/newlib/libc/stdio/putwchar.c","./lib/newlib/newlib/libc/stdio/fseek.c","./lib/newlib/newlib/libc/stdio/wscanf.c","./lib/newlib/newlib/libc/stdio/findfp.c","./lib/newlib/newlib/libc/stdio/fprintf.c","./lib/newlib/newlib/libc/stdio/fseeko.c","./lib/newlib/newlib/libc/stdio/swprintf.c","./lib/newlib/newlib/libc/stdio/getw.c","./lib/newlib/newlib/libc/stdio/vasprintf.c","./lib/newlib/newlib/libc/stdio/Makefile.in","./lib/newlib/newlib/libc/stdio/svfscanf.c","./lib/newlib/newlib/libc/stdio/asniprintf.c","./lib/newlib/newlib/libc/stdio/fileno.c","./lib/newlib/newlib/libc/stdio/vsiprintf.c","./lib/newlib/newlib/libc/stdio/snprintf.c","./lib/newlib/newlib/libc/stdio/printf.c","./lib/newlib/newlib/libc/stdio/vwprintf.c","./lib/newlib/newlib/libc/stdio/tmpfile.c","./lib/newlib/newlib/libc/stdio/fgetc.c","./lib/newlib/newlib/libc/stdio/vfwprintf.c","./lib/newlib/newlib/libc/stdio/asprintf.c","./lib/newlib/newlib/libc/stdio/getc.c","./lib/newlib/newlib/libc/stdio/flags.c","./lib/newlib/newlib/libc/stdio/scanf.c","./lib/newlib/newlib/libc/stdio/putchar.c","./lib/newlib/newlib/libc/stdio/putwc.c","./lib/newlib/newlib/libc/stdio/svfwprintf.c","./lib/newlib/newlib/libc/stdio/viprintf.c","./lib/newlib/newlib/libc/stdio/vswscanf.c","./lib/newlib/newlib/libc/stdio/vwscanf.c","./lib/newlib/newlib/libc/stdio/vfiwprintf.c","./lib/newlib/newlib/libc/stdio/fputc.c","./lib/newlib/newlib/libc/stdio/fflush.c","./lib/newlib/newlib/libc/stdio/fwide.c","./lib/newlib/newlib/libc/stdio/diprintf.c","./lib/newlib/newlib/libc/stdio/clearerr.c","./lib/newlib/newlib/libc/stdio/setvbuf.c","./lib/newlib/newlib/libc/stdio/puts.c","./lib/newlib/newlib/libc/stdio/asiprintf.c","./lib/newlib/newlib/libc/stdio/fvwrite.h","./lib/newlib/newlib/libc/stdio/tmpnam.c","./lib/newlib/newlib/libc/stdio/mktemp.c","./lib/newlib/newlib/libc/stdio/getdelim.c","./lib/newlib/newlib/libc/stdio/rename.c","./lib/newlib/newlib/libc/stdio/wbuf.c","./lib/newlib/newlib/libc/stdio/Hakefile","./lib/newlib/newlib/libc/stdio/fmemopen.c","./lib/newlib/newlib/libc/stdio/fputwc.c","./lib/newlib/newlib/libc/stdio/wprintf.c","./lib/newlib/newlib/libc/stdio/getwchar.c","./lib/newlib/newlib/libc/stdio/viscanf.c","./lib/newlib/newlib/libc/stdio/iprintf.c","./lib/newlib/newlib/libc/stdio/sccl.c","./lib/newlib/newlib/libc/stdio/vswprintf.c","./lib/newlib/newlib/libc/stdio/getline.c","./lib/newlib/newlib/libc/stdio/fcloseall.c","./lib/newlib/newlib/libc/stdio/fopen.c","./lib/newlib/newlib/libc/stdio/putw.c","./lib/newlib/newlib/libc/stdio/fsetpos.c","./lib/newlib/newlib/libc/stdio/stdio.c","./lib/newlib/newlib/libc/stdio/fopencookie.c","./lib/newlib/newlib/libc/stdio/vscanf.c","./lib/newlib/newlib/libc/stdio/fgetws.c","./lib/newlib/newlib/libc/stdio/iscanf.c","./lib/newlib/newlib/libc/stdio/vfiscanf.c","./lib/newlib/newlib/libc/stdio/sscanf.c","./lib/newlib/newlib/libc/stdio/ungetc.c","./lib/newlib/newlib/libc/stdio/fgetpos.c","./lib/newlib/newlib/libc/stdio/vfscanf.c","./lib/newlib/newlib/libc/stdio/vasnprintf.c","./lib/newlib/newlib/libc/stdio/feof.c","./lib/newlib/newlib/libc/stdio/getwc.c","./lib/newlib/newlib/libc/stdio/Makefile.am","./lib/newlib/newlib/libc/stdio/setlinebuf.c","./lib/newlib/newlib/libc/stdio/vsiscanf.c","./lib/newlib/newlib/libc/stdio/vprintf.c","./lib/newlib/newlib/libc/stdio/swscanf.c","./lib/newlib/newlib/libc/stdio/getchar.c","./lib/newlib/newlib/libc/stdio/ferror.c","./lib/newlib/newlib/libc/stdio/putchar_u.c","./lib/newlib/newlib/libc/stdio/sprintf.c","./lib/newlib/newlib/libc/stdio/vsniprintf.c","./lib/newlib/newlib/libc/stdio/svfiscanf.c","./lib/newlib/newlib/libc/stdio/fscanf.c","./lib/newlib/newlib/libc/stdio/vasiprintf.c","./lib/newlib/newlib/libc/stdio/open_memstream.c","./lib/newlib/newlib/libc/stdio/svfiwscanf.c","./lib/newlib/newlib/libc/stdio/ftello.c","./lib/newlib/newlib/libc/stdio/setbuffer.c","./lib/newlib/newlib/libc/stdio/fdopen.c","./lib/newlib/newlib/libc/stdio/fgetwc.c","./lib/newlib/newlib/libc/stdio/fwrite.c","./lib/newlib/newlib/libc/stdio/fread.c","./lib/newlib/newlib/libc/stdio/fgets.c","./lib/newlib/newlib/libc/stdio/funopen.c","./lib/newlib/newlib/libc/stdio/siprintf.c","./lib/newlib/newlib/libc/stdio/vsscanf.c","./lib/newlib/newlib/libc/stdio/perror.c","./lib/newlib/newlib/libc/stdio/wsetup.c","./lib/newlib/newlib/libc/stdio/dprintf.c","./lib/newlib/newlib/libc/stdio/remove.c","./lib/newlib/newlib/libc/stdio/fiscanf.c","./lib/newlib/newlib/libc/stdio/getc_u.c","./lib/newlib/newlib/libc/stdio/sniprintf.c","./lib/newlib/newlib/libc/stdio/fputws.c","./lib/newlib/newlib/libc/stdio/fclose.c","./lib/newlib/newlib/libc/stdio/ungetwc.c","./lib/newlib/newlib/libc/stdio/fwalk.c","./lib/newlib/newlib/libc/stdio/vfwscanf.c","./lib/newlib/newlib/libc/stdio/svfwscanf.c","./lib/newlib/newlib/libc/stdio/svfiwprintf.c","./lib/newlib/newlib/libc/stdio/svfiprintf.c","./lib/newlib/newlib/libc/stdio/stdio.tex","./lib/newlib/newlib/libc/stdio/fwprintf.c","./lib/newlib/newlib/libc/stdio/refill.c","./lib/newlib/newlib/libc/stdio/vfprintf.c","./lib/newlib/newlib/libc/stdio/vfieeefp.h","./lib/newlib/newlib/libc/stdio/fvwrite.c","./lib/newlib/newlib/libc/stdio/vdiprintf.c","./lib/newlib/newlib/libc/stdio/vfiwscanf.c","./lib/newlib/newlib/libc/stdio/fiprintf.c","./lib/newlib/newlib/libc/stdio/getchar_u.c","./lib/newlib/newlib/libc/stdio/floatio.h","./lib/newlib/newlib/libc/stdio/putc_u.c","./lib/newlib/newlib/libc/stdio/vfiprintf.c","./lib/newlib/newlib/libc/posix/execlp.c","./lib/newlib/newlib/libc/posix/popen.c","./lib/newlib/newlib/libc/posix/creat.c","./lib/newlib/newlib/libc/posix/execv.c","./lib/newlib/newlib/libc/posix/telldir.c","./lib/newlib/newlib/libc/posix/posix.tex","./lib/newlib/newlib/libc/posix/sysexits.h","./lib/newlib/newlib/libc/posix/readdir.c","./lib/newlib/newlib/libc/posix/closedir.c","./lib/newlib/newlib/libc/posix/Makefile.in","./lib/newlib/newlib/libc/posix/cname.h","./lib/newlib/newlib/libc/posix/cclass.h","./lib/newlib/newlib/libc/posix/rune.h","./lib/newlib/newlib/libc/posix/collcmp.c","./lib/newlib/newlib/libc/posix/engine.c","./lib/newlib/newlib/libc/posix/scandir.c","./lib/newlib/newlib/libc/posix/glob.c","./lib/newlib/newlib/libc/posix/readdir_r.c","./lib/newlib/newlib/libc/posix/execve.c","./lib/newlib/newlib/libc/posix/regfree.c","./lib/newlib/newlib/libc/posix/execl.c","./lib/newlib/newlib/libc/posix/_isatty.c","./lib/newlib/newlib/libc/posix/fnmatch.c","./lib/newlib/newlib/libc/posix/fnmatch.3","./lib/newlib/newlib/libc/posix/un-namespace.h","./lib/newlib/newlib/libc/posix/Makefile.am","./lib/newlib/newlib/libc/posix/wordexp.c","./lib/newlib/newlib/libc/posix/regex.3","./lib/newlib/newlib/libc/posix/seekdir.c","./lib/newlib/newlib/libc/posix/opendir.c","./lib/newlib/newlib/libc/posix/rewinddir.c","./lib/newlib/newlib/libc/posix/isatty.c","./lib/newlib/newlib/libc/posix/usleep.c","./lib/newlib/newlib/libc/posix/execle.c","./lib/newlib/newlib/libc/posix/glob.3","./lib/newlib/newlib/libc/posix/sleep.c","./lib/newlib/newlib/libc/posix/COPYRIGHT","./lib/newlib/newlib/libc/posix/runetype.h","./lib/newlib/newlib/libc/posix/regcomp.c","./lib/newlib/newlib/libc/posix/regex2.h","./lib/newlib/newlib/libc/posix/namespace.h","./lib/newlib/newlib/libc/posix/execvp.c","./lib/newlib/newlib/libc/posix/regerror.c","./lib/newlib/newlib/libc/posix/regexec.c","./lib/newlib/newlib/libc/posix/collate.h","./lib/newlib/newlib/libc/posix/collate.c","./lib/newlib/newlib/libc/posix/utils.h","./lib/newlib/newlib/libc/posix/wordfree.c","./lib/newlib/newlib/libc/unix/sigset.c","./lib/newlib/newlib/libc/unix/ttyname.c","./lib/newlib/newlib/libc/unix/Makefile.in","./lib/newlib/newlib/libc/unix/getcwd.c","./lib/newlib/newlib/libc/unix/dirname.c","./lib/newlib/newlib/libc/unix/ttyname_r.c","./lib/newlib/newlib/libc/unix/basename.c","./lib/newlib/newlib/libc/unix/getut.c","./lib/newlib/newlib/libc/unix/getpwent.c","./lib/newlib/newlib/libc/unix/Makefile.am","./lib/newlib/newlib/libc/unix/getlogin.c","./lib/newlib/newlib/libc/unix/getpass.c","./lib/newlib/newlib/libc/unix/pwrite.c","./lib/newlib/newlib/libc/unix/pread.c","./lib/newlib/newlib/libc/unix/ttyname.h","./lib/newlib/newlib/libc/stdlib/mbstowcs_r.c","./lib/newlib/newlib/libc/stdlib/getopt.c","./lib/newlib/newlib/libc/stdlib/sb_charsets.c","./lib/newlib/newlib/libc/stdlib/dtoa.c","./lib/newlib/newlib/libc/stdlib/callocr.c","./lib/newlib/newlib/libc/stdlib/mbstowcs.c","./lib/newlib/newlib/libc/stdlib/exit.c","./lib/newlib/newlib/libc/stdlib/msizer.c","./lib/newlib/newlib/libc/stdlib/pvallocr.c","./lib/newlib/newlib/libc/stdlib/wctob.c","./lib/newlib/newlib/libc/stdlib/gdtoa-gethex.c","./lib/newlib/newlib/libc/stdlib/reallocr.c","./lib/newlib/newlib/libc/stdlib/seed48.c","./lib/newlib/newlib/libc/stdlib/jrand48.c","./lib/newlib/newlib/libc/stdlib/atexit.h","./lib/newlib/newlib/libc/stdlib/strtoll.c","./lib/newlib/newlib/libc/stdlib/gdtoa.h","./lib/newlib/newlib/libc/stdlib/wcstol.c","./lib/newlib/newlib/libc/stdlib/cfreer.c","./lib/newlib/newlib/libc/stdlib/setenv_r.c","./lib/newlib/newlib/libc/stdlib/malign.c","./lib/newlib/newlib/libc/stdlib/l64a.c","./lib/newlib/newlib/libc/stdlib/std.h","./lib/newlib/newlib/libc/stdlib/wcstoull_r.c","./lib/newlib/newlib/libc/stdlib/__exp10.c","./lib/newlib/newlib/libc/stdlib/wcstod.c","./lib/newlib/newlib/libc/stdlib/drand48.c","./lib/newlib/newlib/libc/stdlib/__ten_mu.c","./lib/newlib/newlib/libc/stdlib/local.h","./lib/newlib/newlib/libc/stdlib/wctomb.c","./lib/newlib/newlib/libc/stdlib/wcstombs.c","./lib/newlib/newlib/libc/stdlib/wcsnrtombs.c","./lib/newlib/newlib/libc/stdlib/mbsnrtowcs.c","./lib/newlib/newlib/libc/stdlib/msize.c","./lib/newlib/newlib/libc/stdlib/__call_atexit.c","./lib/newlib/newlib/libc/stdlib/getenv.c","./lib/newlib/newlib/libc/stdlib/getenv_r.c","./lib/newlib/newlib/libc/stdlib/Makefile.in","./lib/newlib/newlib/libc/stdlib/ecvtbuf.c","./lib/newlib/newlib/libc/stdlib/wctomb_r.c","./lib/newlib/newlib/libc/stdlib/mrand48.c","./lib/newlib/newlib/libc/stdlib/strtoul.c","./lib/newlib/newlib/libc/stdlib/mbctype.h","./lib/newlib/newlib/libc/stdlib/a64l.c","./lib/newlib/newlib/libc/stdlib/malignr.c","./lib/newlib/newlib/libc/stdlib/mblen.c","./lib/newlib/newlib/libc/stdlib/mstats.c","./lib/newlib/newlib/libc/stdlib/efgcvt.c","./lib/newlib/newlib/libc/stdlib/gdtoa-hexnan.c","./lib/newlib/newlib/libc/stdlib/atoff.c","./lib/newlib/newlib/libc/stdlib/strtod.c","./lib/newlib/newlib/libc/stdlib/lrand48.c","./lib/newlib/newlib/libc/stdlib/atexit.c","./lib/newlib/newlib/libc/stdlib/vallocr.c","./lib/newlib/newlib/libc/stdlib/nrand48.c","./lib/newlib/newlib/libc/stdlib/abs.c","./lib/newlib/newlib/libc/stdlib/labs.c","./lib/newlib/newlib/libc/stdlib/setenv.c","./lib/newlib/newlib/libc/stdlib/_Exit.c","./lib/newlib/newlib/libc/stdlib/strtol.c","./lib/newlib/newlib/libc/stdlib/on_exit.c","./lib/newlib/newlib/libc/stdlib/mallocr.c","./lib/newlib/newlib/libc/stdlib/mallinfor.c","./lib/newlib/newlib/libc/stdlib/envlock.c","./lib/newlib/newlib/libc/stdlib/Hakefile","./lib/newlib/newlib/libc/stdlib/mprec.h","./lib/newlib/newlib/libc/stdlib/strtoull.c","./lib/newlib/newlib/libc/stdlib/wcstombs_r.c","./lib/newlib/newlib/libc/stdlib/rand48.c","./lib/newlib/newlib/libc/stdlib/wcsrtombs.c","./lib/newlib/newlib/libc/stdlib/lcong48.c","./lib/newlib/newlib/libc/stdlib/malloc.c","./lib/newlib/newlib/libc/stdlib/__adjust.c","./lib/newlib/newlib/libc/stdlib/mlock.c","./lib/newlib/newlib/libc/stdlib/putenv.c","./lib/newlib/newlib/libc/stdlib/wcstoul.c","./lib/newlib/newlib/libc/stdlib/cxa_finalize.c","./lib/newlib/newlib/libc/stdlib/freer.c","./lib/newlib/newlib/libc/stdlib/malloptr.c","./lib/newlib/newlib/libc/stdlib/wcstoll.c","./lib/newlib/newlib/libc/stdlib/mbrlen.c","./lib/newlib/newlib/libc/stdlib/mbsrtowcs.c","./lib/newlib/newlib/libc/stdlib/erand48.c","./lib/newlib/newlib/libc/stdlib/btowc.c","./lib/newlib/newlib/libc/stdlib/putenv_r.c","./lib/newlib/newlib/libc/stdlib/eprintf.c","./lib/newlib/newlib/libc/stdlib/mblen_r.c","./lib/newlib/newlib/libc/stdlib/valloc.c","./lib/newlib/newlib/libc/stdlib/atoll.c","./lib/newlib/newlib/libc/stdlib/Makefile.am","./lib/newlib/newlib/libc/stdlib/wcstoull.c","./lib/newlib/newlib/libc/stdlib/abort.c","./lib/newlib/newlib/libc/stdlib/mbtowc.c","./lib/newlib/newlib/libc/stdlib/dtoastub.c","./lib/newlib/newlib/libc/stdlib/div.c","./lib/newlib/newlib/libc/stdlib/cxa_atexit.c","./lib/newlib/newlib/libc/stdlib/environ.c","./lib/newlib/newlib/libc/stdlib/wcstoll_r.c","./lib/newlib/newlib/libc/stdlib/mbrtowc.c","./lib/newlib/newlib/libc/stdlib/srand48.c","./lib/newlib/newlib/libc/stdlib/mprec.c","./lib/newlib/newlib/libc/stdlib/mbsinit.c","./lib/newlib/newlib/libc/stdlib/assert.c","./lib/newlib/newlib/libc/stdlib/strtoull_r.c","./lib/newlib/newlib/libc/stdlib/wcstold.c","./lib/newlib/newlib/libc/stdlib/rand_r.c","./lib/newlib/newlib/libc/stdlib/gd_qnan.h","./lib/newlib/newlib/libc/stdlib/__atexit.c","./lib/newlib/newlib/libc/stdlib/atoi.c","./lib/newlib/newlib/libc/stdlib/mallstatsr.c","./lib/newlib/newlib/libc/stdlib/getsubopt.3","./lib/newlib/newlib/libc/stdlib/realloc.c","./lib/newlib/newlib/libc/stdlib/llabs.c","./lib/newlib/newlib/libc/stdlib/atof.c","./lib/newlib/newlib/libc/stdlib/rand.c","./lib/newlib/newlib/libc/stdlib/strtold.c","./lib/newlib/newlib/libc/stdlib/system.c","./lib/newlib/newlib/libc/stdlib/lldiv.c","./lib/newlib/newlib/libc/stdlib/ldiv.c","./lib/newlib/newlib/libc/stdlib/rand48.h","./lib/newlib/newlib/libc/stdlib/calloc.c","./lib/newlib/newlib/libc/stdlib/wcrtomb.c","./lib/newlib/newlib/libc/stdlib/reallocf.c","./lib/newlib/newlib/libc/stdlib/stdlib.tex","./lib/newlib/newlib/libc/stdlib/strtoll_r.c","./lib/newlib/newlib/libc/stdlib/mbtowc_r.c","./lib/newlib/newlib/libc/stdlib/mtrim.c","./lib/newlib/newlib/libc/stdlib/ldtoa.c","./lib/newlib/newlib/libc/stdlib/atol.c","./lib/newlib/newlib/libc/stdlib/getsubopt.c","./lib/newlib/newlib/libc/string/strcspn.c","./lib/newlib/newlib/libc/string/index.c","./lib/newlib/newlib/libc/string/wmemchr.c","./lib/newlib/newlib/libc/string/strdup.c","./lib/newlib/newlib/libc/string/strspn.c","./lib/newlib/newlib/libc/string/rindex.c","./lib/newlib/newlib/libc/string/memset.c","./lib/newlib/newlib/libc/string/strncmp.c","./lib/newlib/newlib/libc/string/strerror.c","./lib/newlib/newlib/libc/string/local.h","./lib/newlib/newlib/libc/string/wcsspn.c","./lib/newlib/newlib/libc/string/wcspbrk.c","./lib/newlib/newlib/libc/string/strdup_r.c","./lib/newlib/newlib/libc/string/strnlen.c","./lib/newlib/newlib/libc/string/strndup_r.c","./lib/newlib/newlib/libc/string/wcsncmp.c","./lib/newlib/newlib/libc/string/Makefile.in","./lib/newlib/newlib/libc/string/wcswidth.c","./lib/newlib/newlib/libc/string/strlcat.c","./lib/newlib/newlib/libc/string/wcsrchr.c","./lib/newlib/newlib/libc/string/wcpncpy.c","./lib/newlib/newlib/libc/string/swab.c","./lib/newlib/newlib/libc/string/wmemmove.c","./lib/newlib/newlib/libc/string/stpcpy.c","./lib/newlib/newlib/libc/string/strcat.c","./lib/newlib/newlib/libc/string/wcsnlen.c","./lib/newlib/newlib/libc/string/strndup.c","./lib/newlib/newlib/libc/string/wcsncasecmp.c","./lib/newlib/newlib/libc/string/wmemset.c","./lib/newlib/newlib/libc/string/strsep.c","./lib/newlib/newlib/libc/string/memmem.c","./lib/newlib/newlib/libc/string/strlen.c","./lib/newlib/newlib/libc/string/strxfrm.c","./lib/newlib/newlib/libc/string/wcslen.c","./lib/newlib/newlib/libc/string/wmemcpy.c","./lib/newlib/newlib/libc/string/memmove.c","./lib/newlib/newlib/libc/string/u_strerr.c","./lib/newlib/newlib/libc/string/wcstok.c","./lib/newlib/newlib/libc/string/wcscasecmp.c","./lib/newlib/newlib/libc/string/bcopy.c","./lib/newlib/newlib/libc/string/Hakefile","./lib/newlib/newlib/libc/string/strcoll.c","./lib/newlib/newlib/libc/string/str-two-way.h","./lib/newlib/newlib/libc/string/wcscspn.c","./lib/newlib/newlib/libc/string/bzero.c","./lib/newlib/newlib/libc/string/wcsstr.c","./lib/newlib/newlib/libc/string/strsignal.c","./lib/newlib/newlib/libc/string/wcsncat.c","./lib/newlib/newlib/libc/string/strrchr.c","./lib/newlib/newlib/libc/string/Makefile.am","./lib/newlib/newlib/libc/string/strtok_r.c","./lib/newlib/newlib/libc/string/strcpy.c","./lib/newlib/newlib/libc/string/wcscmp.c","./lib/newlib/newlib/libc/string/memcpy.c","./lib/newlib/newlib/libc/string/memcmp.c","./lib/newlib/newlib/libc/string/strtok.c","./lib/newlib/newlib/libc/string/wcslcpy.c","./lib/newlib/newlib/libc/string/wcscat.c","./lib/newlib/newlib/libc/string/wmemcmp.c","./lib/newlib/newlib/libc/string/wcscpy.c","./lib/newlib/newlib/libc/string/strerror_r.c","./lib/newlib/newlib/libc/string/strcasecmp.c","./lib/newlib/newlib/libc/string/strings.tex","./lib/newlib/newlib/libc/string/wcscoll.c","./lib/newlib/newlib/libc/string/memchr.c","./lib/newlib/newlib/libc/string/strupr.c","./lib/newlib/newlib/libc/string/mempcpy.c","./lib/newlib/newlib/libc/string/wcstrings.tex","./lib/newlib/newlib/libc/string/strncpy.c","./lib/newlib/newlib/libc/string/wcsncpy.c","./lib/newlib/newlib/libc/string/strchr.c","./lib/newlib/newlib/libc/string/strcasestr.c","./lib/newlib/newlib/libc/string/wcsdup.c","./lib/newlib/newlib/libc/string/strncasecmp.c","./lib/newlib/newlib/libc/string/wcschr.c","./lib/newlib/newlib/libc/string/strlwr.c","./lib/newlib/newlib/libc/string/wcwidth.c","./lib/newlib/newlib/libc/string/strstr.c","./lib/newlib/newlib/libc/string/wcpcpy.c","./lib/newlib/newlib/libc/string/stpncpy.c","./lib/newlib/newlib/libc/string/strcmp.c","./lib/newlib/newlib/libc/string/wcsxfrm.c","./lib/newlib/newlib/libc/string/strncat.c","./lib/newlib/newlib/libc/string/strpbrk.c","./lib/newlib/newlib/libc/string/strlcpy.c","./lib/newlib/newlib/libc/string/memccpy.c","./lib/newlib/newlib/libc/string/wcslcat.c","./lib/newlib/newlib/libc/string/bcmp.c","./lib/newlib/newlib/libc/signal/signal.c","./lib/newlib/newlib/libc/signal/Makefile.in","./lib/newlib/newlib/libc/signal/Hakefile","./lib/newlib/newlib/libc/signal/Makefile.am","./lib/newlib/newlib/libc/signal/raise.c","./lib/newlib/newlib/libc/signal/signal.tex","./lib/newlib/newlib/libc/time/wcsftime.c","./lib/newlib/newlib/libc/time/gmtime.c","./lib/newlib/newlib/libc/time/time.c","./lib/newlib/newlib/libc/time/local.h","./lib/newlib/newlib/libc/time/difftime.c","./lib/newlib/newlib/libc/time/Makefile.in","./lib/newlib/newlib/libc/time/tzset_r.c","./lib/newlib/newlib/libc/time/gmtime_r.c","./lib/newlib/newlib/libc/time/ctime_r.c","./lib/newlib/newlib/libc/time/tzlock.c","./lib/newlib/newlib/libc/time/time.tex","./lib/newlib/newlib/libc/time/tzvars.c","./lib/newlib/newlib/libc/time/Hakefile","./lib/newlib/newlib/libc/time/lcltime_r.c","./lib/newlib/newlib/libc/time/strftime.c","./lib/newlib/newlib/libc/time/Makefile.am","./lib/newlib/newlib/libc/time/ctime.c","./lib/newlib/newlib/libc/time/asctime_r.c","./lib/newlib/newlib/libc/time/lcltime.c","./lib/newlib/newlib/libc/time/mktime.c","./lib/newlib/newlib/libc/time/gettzinfo.c","./lib/newlib/newlib/libc/time/asctime.c","./lib/newlib/newlib/libc/time/strptime.c","./lib/newlib/newlib/libc/time/clock.c","./lib/newlib/newlib/libc/time/mktm_r.c","./lib/newlib/newlib/libc/time/tzset.c","./lib/pager/pager.c","./lib/pager/Hakefile","./hake/RuleDefs.hs","./hake/menu.lst.arm_gem5_mc","./hake/arm-mpcore-dM.txt","./hake/arm926ej-s-dM.txt","./hake/x86_32-dM.txt","./hake/menu.lst.x86_32","./hake/notes.txt","./hake/X86_32.hs","./hake/menu.lst.armv5","./hake/menu.lst.x86_64","./hake/menu.lst.arm_gem5_panda","./hake/Args.hs","./hake/XScale.hs","./hake/Main.hs","./hake/menu.lst.arm_gem5","./hake/Hakefile","./hake/hake.sh","./hake/menu.lst.m5","./hake/menu.lst.scc","./hake/Path.hs","./hake/SCC.hs","./hake/HakeTypes.hs","./hake/arm11mpcore-dM.txt","./hake/ARM11MP.hs","./hake/menu.lst.heteropanda_master","./hake/ArchDefaults.hs","./hake/symbolic_targets.mk","./hake/X86_64.hs","./hake/ARMv7_M.hs","./hake/menu.lst.armv7-m","./hake/menu.lst.xscale","./hake/menu.lst.pandaboard","./hake/ARMv5.hs","./hake/ARMv7.hs","./hake/Config.hs.template","./hake/x86_64-dM.txt","./errors/errno.fugu","./errors/Hakefile"];
hf = [
("./tools/elver/Hakefile", (let find fn arg = (fn allfiles "./tools/elver/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/elver/Hakefile" a in
{-# LINE 1 "../tools/elver/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /tools/elver
--
----------------------------------------------------------------------

--
-- This has to be rather low-level, since elver is indeed a module for
-- x86_64, but is built for 32-bits, so it's easiest to do this rather
-- explicitly.
-- 
let arch = "x86_64"
    opts = (options arch) { 
             optFlags = [ Str s | s <- [ "-fno-builtin",
                                           "-nostdinc",
                                           "-std=gnu99",
                                           "-m32",
                                           "-mno-red-zone",

					   -- avoid SSE instructions, SIMD is disabled
                                           "-mno-mmx",
                                           "-mno-sse",
                                           "-mno-sse2",
                                           "-mno-sse3",
                                           "-mno-sse4.1",
                                           "-mno-sse4.2",
                                           "-mno-sse4",
                                           "-mno-sse4a",
                                           "-mno-3dnow",

                                           "-fPIE",
                                           "-fno-stack-protector",
                                           "-U__linux__",
                                           "-Wall",
                                           "-Wshadow",
                                           "-Wstrict-prototypes",
                                           "-Wold-style-definition",
                                           "-Wmissing-prototypes",
                                           "-Wmissing-declarations",
                                           "-Wmissing-field-initializers",
                                           "-Wredundant-decls",
                                           "-Werror" ] ]
                          ++ [ Str "-imacros",
                               NoDep SrcTree "src" "/include/deputy/nodeputy.h" ],
             optIncludes = [ NoDep SrcTree "src" "/include",
                             NoDep SrcTree "src" "/include/oldc", 
                             NoDep SrcTree "src" "/include/c", 
                             NoDep SrcTree "src" "/include/arch/x86_32",
                             NoDep BuildTree arch "/include" ],
             optDefines = [],
             optLibs = [],
             optLdFlags = [ Str s | s <- [ "-m32", 
                                        "-fno-builtin", 
                                        "-nostdlib",
                                        "-Wl,--fatal-warnings",
                                        "-e start", 
                                        "-Wl,-Ttext,0x100000",
                                        "-Wl,--build-id=none" ]],
             optSuffix = "_for_elver" 
           }
    objs = [ objectFilePath opts f | f <- [ "boot.S", "elver.c", "lib.c",
                                            "../../lib/elf/elf64.c" ] ]
in 
  [ compileCFiles opts [ "elver.c", "lib.c", "../../lib/elf/elf64.c" ],
    assembleSFiles opts [ "boot.S" ],
    link opts objs [] "elver"
  ]
)))),
("./tools/mackerel/Hakefile", (let find fn arg = (fn allfiles "./tools/mackerel/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/mackerel/Hakefile" a in
{-# LINE 1 "../tools/mackerel/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /tools/mackerel
--
----------------------------------------------------------------------

[ compileHaskell "mackerel" "Main.hs" (find withSuffices [".hs",".lhs"]) ]
)))),
("./tools/pleco/Hakefile", (let find fn arg = (fn allfiles "./tools/pleco/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/pleco/Hakefile" a in
{-# LINE 1 "../tools/pleco/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /tools/pleco
--
----------------------------------------------------------------------

[ compileHaskellWithLibs "pleco" "Main.lhs" (find withSuffices [".hs",".lhs"])
  			 	["/tools/fof"] ]
)))),
("./tools/schedsim/Hakefile", (let find fn arg = (fn allfiles "./tools/schedsim/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/schedsim/Hakefile" a in
{-# LINE 1 "../tools/schedsim/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for scheduler simulator
--
----------------------------------------------------------------------

[ compileNativeC "simulator"
  [ "simulator.c" ]
  [ "-std=gnu99", "-g", "-Wall", "-Werror", "-DSCHEDULER_SIMULATOR" ]
  []
]
)))),
("./tools/flounder/Hakefile", (let find fn arg = (fn allfiles "./tools/flounder/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/flounder/Hakefile" a in
{-# LINE 1 "../tools/flounder/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /tools/flounder
--
----------------------------------------------------------------------

[ compileHaskell "flounder" "Main.lhs" (find withSuffices [".hs",".lhs"]) ]
)))),
("./tools/molly/Hakefile", (let find fn arg = (fn allfiles "./tools/molly/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/molly/Hakefile" a in
{-# LINE 1 "../tools/molly/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for molly
--
----------------------------------------------------------------------

[ compileNativeC "molly" ["build_multiboot.c"] ["-std=gnu99", "-g"] [] ]
)))),
("./tools/fugu/Hakefile", (let find fn arg = (fn allfiles "./tools/fugu/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/fugu/Hakefile" a in
{-# LINE 1 "../tools/fugu/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /tools/fugu
--
----------------------------------------------------------------------

[ compileHaskellWithLibs "fugu" "Main.lhs" (find withSuffices [".hs",".lhs"])
  			 	["/tools/fof"] ]
)))),
("./tools/hamlet/Hakefile", (let find fn arg = (fn allfiles "./tools/hamlet/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/hamlet/Hakefile" a in
{-# LINE 1 "../tools/hamlet/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /tools/hamlet
--
----------------------------------------------------------------------

[ compileHaskellWithLibs "hamlet" "Main.lhs" (find withSuffices [".hs",".lhs"])
  			 	["/tools/fof"] ]
)))),
("./tools/arm_molly/Hakefile", (let find fn arg = (fn allfiles "./tools/arm_molly/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/arm_molly/Hakefile" a in
{-# LINE 1 "../tools/arm_molly/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for molly
--
----------------------------------------------------------------------

[ compileNativeC "arm_molly" ["build_multiboot.c"] ["-std=gnu99", "-g", "-Iarmv7/include/"] [] ]
)))),
("./tools/dite/Hakefile", (let find fn arg = (fn allfiles "./tools/dite/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/dite/Hakefile" a in
{-# LINE 1 "../tools/dite/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, 2010, 2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for dite
--
----------------------------------------------------------------------

[ compileNativeC "dite" ["dite.c", "elf32.c", "elf64.c"] ["-std=gnu99", "-g"] [] ]
)))),
("./tools/asmoffsets/Hakefile", (let find fn arg = (fn allfiles "./tools/asmoffsets/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./tools/asmoffsets/Hakefile" a in
{-# LINE 1 "../tools/asmoffsets/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for tools/asmoffsets
--
--------------------------------------------------------------------------

concat [ let
    kopts = kernelOptions arch
    opts = kopts { -- Need this to exclude asmoffsets.h!
                   optDependencies = [d | d <- optDependencies kopts,
                                      d /= Dep InstallTree arch "/include/asmoffsets.h"]
                 }
   in
     [ Rule (makecToAssembler opts "src" "asmoffsets.c" "asmoffsets.s"), -- asmoffsets.s here is not the output it is the stem of the presumed output for the depenedency
       makeDependAssembler opts "src" "asmoffsets.c",
       Rule [ Str "grep -E '^#(if|ifndef|ifdef|define|undef|endif)'",
           In BuildTree arch (assemblerFilePath opts "asmoffsets.c"),
           Str "| sed 's/\\$$//'",
           Str "| sed -e 's_#\\([0-9]\\)_\\1_' >",
           Out arch "/include/asmoffsets.h" ]
     ] | arch <- allArchitectures]
)))),
("./capabilities/Hakefile", (let find fn arg = (fn allfiles "./capabilities/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./capabilities/Hakefile" a in
{-# LINE 1 "../capabilities/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /capabilities/
-- 
--------------------------------------------------------------------------

[ hamletFile (options arch) "caps" | arch <- allArchitectures ]
)))),
("./include/Hakefile", (let find fn arg = (fn allfiles "./include/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./include/Hakefile" a in
{-# LINE 1 "../include/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /include
-- 
--------------------------------------------------------------------------

[ includeFile (options arch) f
      | f <- [ 
   "cpiobin.h",
   "dlfcn.h",
   "lwipopts.h",
   "multicast.h",
   "utime.h",
   "values.h",
   "x86emu.h",
   "zconf.h",
   "zlib.h"
  ], arch <- allArchitectures ]
)))),
("./if/Hakefile", (let find fn arg = (fn allfiles "./if/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./if/Hakefile" a in
{-# LINE 1 "../if/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for if/
--
--------------------------------------------------------------------------

-- whereas these are using the new-style bindings
[ flounderGenDefs (options arch) f
      | f <- [ "ahci_mgmt",
               "ata_rw28",
               "bcast",
               "bench",
               "boot_perfmon",
               "bulkbench",
               "diskd",
               "ehci",
               "net_queue_manager",
               "net_ports",
               "net_soft_filters",
               "net_ARP",
               "fb",
               "glue_bench",
               "hpet",
               "interdisp",
               "intermon",
               "keyboard",
               "lock",
               "mem",
               "monitor",
               "monitor_blocking",
               "monitor_mem",
               "mouse",
               "nameservice",
--              "netd",
               "acpi",
               "pci",
               "ping_pong",
               "pixels",
               "rcce",
               "routing",
               "serial",
               "skb",
               "skb_map",
               "octopus",               
               "spawn",
               "terminal",
               "terminal_config",
               "terminal_session",
               "test",
               "timer",
               "trivfs",
               "usb_driver",  
               "usb_manager",
               "xcorecap",
               "xcorecapbench",
               "xmplcr",
               "xmplmsg",
               "xmplrpc",
               "xmplthc",
               "unixsock",
	       "bcache",
	       "replay",
	       "empty"],
             arch <- allArchitectures
] ++

-- these are for THC stubs
[ flounderTHCFile (options arch) f
      | f <- [ "bench",
               "ping_pong",
               "mem",
               "xmplthc",
               "octopus",
               "ata_rw28" ],
             arch <- allArchitectures
]
)))),
("./kernel/Hakefile", (let find fn arg = (fn allfiles "./kernel/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./kernel/Hakefile" a in
{-# LINE 1 "../kernel/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich. 
-- Attn: Systems Group.
--
-- Hakefile for Barrelfish CPU drivers
-- 
--------------------------------------------------------------------------

--
-- Missing from this new Hakefile is the rule to build kernel debug
-- symbols, since this requires some thinking about naming
-- conventions.  Here is the rule we need:
--
--                Rule ( [ Str "OBJDUMP=objdump",
--                         In SrcTree "src" "/tools/gen-gdbscript.sh",
--                         In SrcTree "src" "/tools/debug.gdb.in",
--                         In BuildTree arch "../sbin/cpu",
--                         Str ">", Out arch "/debug.gdb"
--                        ] )



let
  scheduler = case Config.scheduler of
      Config.RR   -> "schedule_rr.c"
      Config.RBED -> "schedule_rbed.c"
  common_c = [ "gdb_stub.c", 
               "capabilities.c", 
               "dispatch.c",
               scheduler, 
               "memset.c", 
               "memmove.c", 
               "paging_generic.c",
               "printf.c",
               "startup.c", 
               "stdlib.c", 
               "string.c", 
               "syscall.c",
               "wakeup.c", 
               "useraccess.c" ]
             ++ (if Config.microbenchmarks then ["microbenchmarks.c"] else [])
             ++ (if Config.oneshot_timer then ["timer.c"] else [])
  common_libs = [ "getopt", "mdb_kernel" ]
  
  link_cpudriver arg = linkKernel opts name objs libs
    where 
      opts = (kernelOptions $ head $ Args.architectures arg)
      suffix = if "cpu" == Args.target arg 
             then "" 
             else "_" ++ (Args.target arg)
      name = "cpu" ++ suffix
      objs = [ objectFilePath opts f 
             | f <- (Args.assemblyFiles arg) ++ (Args.cFiles arg) ++ common_c ] 
      libs = (Args.addLibraries arg) ++ common_libs
    
  cpudrivers arglist = 
    let 
      cafiles = Data.List.nub $ concat [ [ [ arch, cfile ] 
                                         | arch <- Args.architectures arg,
                                           cfile <- common_c ++ (Args.cFiles arg) ]
                                       | arg <- arglist ]
      safiles = Data.List.nub $ concat [ [ [ arch, sfile ]
                                         | arch <- Args.architectures arg,
                                           sfile <- Args.assemblyFiles arg ]
                                       | arg <- arglist ]
      mafiles = Data.List.nub $ concat [ [ [ arch, mfile ]
                                         | arch <- Args.architectures arg,
                                           mfile <- Args.mackerelDevices arg ]
                                       | arg <- arglist ]
    in
     ( [ compileCFile (kernelOptions a) f | [a,f] <- cafiles ]
       ++
       [ assembleSFile (kernelOptions a) f | [a,f] <- safiles ]
       ++
       [ mackerelDependencies (kernelOptions a) f [ c | [a,c] <- cafiles]  
       | [a,f] <- mafiles ]
       ++
       [ link_cpudriver arg | arg <- arglist ]
     )
         
  in cpudrivers [
  --
  -- Generic Intel/AMD amd64 64-bit x86 core
  --
  cpuDriver { 
     architectures = [ "x86_64" ],
     assemblyFiles = [ "arch/x86_64/boot.S", 
                       "arch/x86_64/entry.S", 
                       "arch/x86/init_ap_x86_64.S", 
                       "arch/x86/init_ap_x86_32.S" ],
     cFiles = [ "arch/x86_64/debug.c", 
                "arch/x86_64/gdb_arch.c", 
                "arch/x86_64/init.c", 
                "arch/x86_64/irq.c",
                "arch/x86_64/startup_arch.c", 
                "arch/x86_64/exec.c", 
                "arch/x86_64/syscall.c", 
                "arch/x86_64/paging.c",
                "arch/x86_64/vmkit.c" , 
                "arch/x86_64/page_mappings_arch.c",
                "arch/x86/apic.c", 
                "arch/x86/pic.c", 
                "arch/x86/start_aps.c", 
                "arch/x86/cmos.c", 
                "arch/x86/misc.c",
                "arch/x86/serial.c", 
                "arch/x86/multiboot.c", 
                "arch/x86/conio.c", 
                "arch/x86/syscall.c", 
                "arch/x86/debugregs.c",
                "arch/x86/perfmon.c", 
                "arch/x86/perfmon_intel.c", 
                "arch/x86/perfmon_amd.c", 
                "arch/x86/rtc.c", 
                "arch/x86/timing.c",
                "arch/x86/startup_x86.c", 
                "arch/x86/mcheck.c", 
                "arch/x86/ipi_notify.c"
              ],
     mackerelDevices = [ "lpc_pic", 
                         "pc16550d", 
                         "ia32", 
                         "amd64", 
                         "xapic", 
                         "amd_vmcb", 
                         "cpuid", 
                         "lpc_rtc" ],
     addLibraries = [ "elf_kernel" ]
     },
  --
  -- Generic Intel ia32 32-bit x86 core
  --
  cpuDriver { 
     architectures = [ "x86_32" ],
     assemblyFiles = [ "arch/x86_32/boot.S", 
                       "arch/x86_32/entry.S", 
                       "arch/x86_32/pic.S",
                       "arch/x86/init_ap_x86_64.S", 
                       "arch/x86/init_ap_x86_32.S" ],
     cFiles = [ "arch/x86_32/debug.c", 
                "arch/x86_32/gdb_arch.c", 
                "arch/x86_32/init.c", 
                "arch/x86_32/irq.c",
                "arch/x86_32/startup_arch.c", 
                "arch/x86_32/exec.c", 
                "arch/x86_32/syscall.c", 
                "arch/x86_32/paging.c",
                "arch/x86_32/page_mappings_arch.c",
                "arch/x86/apic.c", 
                "arch/x86/pic.c", 
                "arch/x86/start_aps.c", 
                "arch/x86/cmos.c", 
                "arch/x86/misc.c",
                "arch/x86/serial.c", 
                "arch/x86/multiboot.c", 
                "arch/x86/conio.c", 
                "arch/x86/syscall.c", 
                "arch/x86/debugregs.c",
                "arch/x86/perfmon.c", 
                "arch/x86/perfmon_intel.c", 
                "arch/x86/perfmon_amd.c", 
                "arch/x86/rtc.c", 
                "arch/x86/timing.c",
                "arch/x86/startup_x86.c", 
                "arch/x86/ipi_notify.c"
              ],
     mackerelDevices = [ "lpc_pic", 
                         "pc16550d", 
                         "ia32", 
                         "amd64", 
                         "xapic", 
                         "cpuid", 
                         "lpc_rtc" ],
     addLibraries = [ "elf_kernel" ]
     },
  --
  -- Intel Gauss Lake P54C core in the Rock Creek Single-Chip Cloud Computer
  --
  cpuDriver { 
     architectures = [ "scc" ],
     assemblyFiles = [ "arch/scc/boot.S",
                       "arch/x86_32/entry.S", 
                       "arch/x86_32/pic.S" ],
     cFiles = [ "arch/scc/rck.c",
                "arch/x86_32/debug.c", 
                "arch/x86_32/gdb_arch.c", 
                "arch/x86_32/init.c", 
                "arch/x86_32/irq.c",
                "arch/x86_32/startup_arch.c", 
                "arch/x86_32/exec.c", 
                "arch/x86_32/syscall.c", 
                "arch/x86_32/paging.c",
                "arch/x86_32/page_mappings_arch.c",
                "arch/x86/apic.c", 
                "arch/x86/misc.c",
                "arch/x86/serial.c", 
                "arch/x86/multiboot.c", 
                "arch/x86/syscall.c", 
                "arch/x86/debugregs.c",
                "arch/x86/timing.c",
                "arch/x86/startup_x86.c"
              ],
     mackerelDevices = [ "pc16550d", 
                         "ia32", 
                         "xapic", 
                         "rck", 
                         "eMAC", 
                         "cpuid", 
                         "lpc_rtc" ],
     addLibraries = [ "elf_kernel" ]
     },
  --
  -- Generic ARMv5 core, unused?
  --
  cpuDriver {
     architectures = [ "armv5" ],
     assemblyFiles = [ "arch/armv5/boot.S", 
                       "arch/armv5/exceptions.S" ],
     cFiles = [ "arch/arm/exn.c", 
                "arch/arm/exec.c", 
                "arch/arm/misc.c", 
                "arch/arm/phys_mmap.c", 
                "arch/armv5/init.c", 
                "arch/armv5/integrator.c", 
                "arch/armv5/kludges.c", 
                "arch/armv5/kputchar.c", 
                "arch/armv5/pl011_uart.c", 
                "arch/armv5/cp15.c",
                "arch/armv5/paging.c", 
                "arch/armv5/startup_arch.c", 
                "arch/armv5/syscall.c" ],
     mackerelDevices = [ "arm", 
                         "arm_icp_pit", 
                         "arm_icp_pic0", 
                         "pl011_uart" ],
     addLibraries = [ "elf", "cpio" ]
     },
  --
  -- ARM11MP ARMv6 core, currently unsupported.
  -- XXX: reorganize sources for ARMv6
  --
  cpuDriver {
     architectures = [ "arm11mp" ],
     assemblyFiles = [ "arch/armv5/boot.S", 
                       "arch/armv5/exceptions.S", 
                       "arch/paging_cp.S" ],
     cFiles = [ "arch/arm/exn.c", 
                "arch/arm/exec.c", 
                "arch/arm/misc.c", 
                "arch/arm/phys_mmap.c", 
                "arch/armv5/init.c", 
                "arch/armv5/integrator.c", 
                "arch/armv5/kludges.c", 
                "arch/armv5/kputchar.c", 
                "arch/armv5/pl011_uart.c", 
                "arch/armv5/paging.c", 
                "arch/armv5/startup_arch.c", 
                "arch/armv5/syscall.c" ],
     mackerelDevices = [ "arm", 
                         "arm_icp_pit", 
                         "arm_icp_pic0", 
                         "pl011_uart" ],
     addLibraries = [ "elf", "cpio" ]
     },
  --
  -- ARM Gem5 Cortex-A series ARMv7 core
  --
  cpuDriver { 
    target = "arm_gem5",
    architectures = [ "armv7" ],
    assemblyFiles = [ "arch/arm_gem5/boot.S",
                      "arch/armv7/cp15.S",
                      "arch/armv7/exceptions.S" ],
    cFiles = [ "arch/arm/exec.c", 
               "arch/arm/misc.c", 
               "arch/arm/phys_mmap.c",
               "arch/arm/exn.c", 
               "arch/arm_gem5/init.c", 
               "arch/arm_gem5/integrator.c", 
               "arch/arm_gem5/paging.c", 
               "arch/arm_gem5/gem5_serial.c", 
               "arch/arm_gem5/pl011_uart.c", 
               "arch/arm_gem5/startup_arch.c", 
               "arch/armv7/gic.c",
               "arch/armv7/kludges.c", 
               "arch/armv7/multiboot.c", 
               "arch/armv7/syscall.c",
               "arch/armv7/irq.c", 
               "arch/arm_gem5/start_aps.c", 
               "arch/armv7/kputchar.c" ],
    mackerelDevices = [ "arm", 
                        "arm_icp_pit", 
                        "pl011_uart", 
                        "pl130_gic", 
                        "sp804_pit", 
                        "cortex_a9_pit", 
                        "a9scu" ],
    addLibraries = [ "elf", "cpio" ]
    },
  --
  -- Intel ixp2800 XScale core
  --
  cpuDriver {
     target = "ixp2800",
     architectures = [ "xscale" ],
     assemblyFiles = [ "arch/xscale/boot.S", 
                       "arch/armv5/exceptions.S"  ],
     cFiles = [ "arch/arm/exn.c", 
                "arch/arm/exec.c", 
                "arch/arm/misc.c", 
                "arch/arm/phys_mmap.c", 
                -- according to the Xscale documentation, the MMU is a
                -- standard ARMv5 design, so we should be able to use
                -- the armv5 cp15 code. -SG, 8/1/13
                "arch/armv5/cp15.c",
                "arch/armv5/init.c", 
                "arch/armv5/kludges.c", 
                "arch/armv5/startup_arch.c", 
                "arch/armv5/syscall.c", 
                "arch/xscale/ixp2800_integrator.c", 
                "arch/xscale/ixp2800_uart.c", 
                "arch/xscale/ixp2800_paging.c", 
                "arch/xscale/kputchar.c" ],
     mackerelDevices = [ "arm", 
                         "ixp2800_icp_pit", 
                         "ixp2800_icp_pic0", 
                         "ixp2800_uart" ],
     addLibraries = [ "elf", "cpio" ]
     },
  --
  -- Broadcom OMAP44xx-series dual-core Cortex-A9 SoC
  --
  cpuDriver {
     target = "omap44xx",
     architectures = [ "armv7" ],
     assemblyFiles = [ "arch/omap44xx/boot.S",
                       "arch/armv7/cp15.S",
                       "arch/armv7/exceptions.S" ],
     cFiles = [ "arch/arm/exec.c", 
                "arch/arm/misc.c", 
                "arch/arm/exn.c", 
                "arch/arm/phys_mmap.c",
                "arch/armv7/gic.c",
                "arch/armv7/kludges.c", 
                "arch/armv7/multiboot.c", 
                "arch/armv7/syscall.c",
                "arch/armv7/irq.c",
                "arch/omap44xx/init.c", 
                "arch/omap44xx/omap.c", 
                "arch/omap44xx/paging.c", 
                "arch/omap44xx/startup_arch.c", 
                "arch/omap44xx/omap_uart.c", 
                "arch/omap44xx/start_aps.c",
                "arch/omap44xx/spinlock.c", 
                "arch/omap44xx/cortexm3_heteropanda.c", --will be empty if heteropanda = False
                "arch/armv7/kputchar.c"],
     mackerelDevices = [ "arm", 
                         "arm_icp_pit", 
                         "pl130_gic", 
                         "sp804_pit", 
                         "cortex_a9_pit", 
                         "a9scu", 
                         "omap/omap_uart", 
                         "omap/omap44xx_id", 
                         "omap/omap44xx_emif",
                         "omap/omap44xx_gpio",
                         "omap/omap44xx_sysctrl_padconf_core",
                         "omap/omap44xx_sysctrl_padconf_wkup",
                         "omap/omap44xx_hsusbhost",
                         "omap/omap44xx_usbtllhs_config",
                         "omap/omap44xx_scrm",
                         "omap/omap44xx_ehci",
                         "omap/omap44xx_ckgen_prm", 
                         "omap/omap44xx_l4per_cm2", 
                         "omap/omap44xx_l3init_cm2",
                         "omap/omap44xx_spinlock",
                         "omap/omap44xx_mmu",
                         "omap/omap44xx_gpio"],
     addLibraries = [ "elf", "cpio" ]
     },                            
  --
  -- Broadcom OMAP44xx-series dual-core Cortex-M3 Coprocessor,
  -- used to run a heterogenous system on the pandaboard 
  --

  cpuDriver {
     target = "omap44xx",
     architectures = [ "armv7-m" ],
     assemblyFiles = [ "arch/armv7-m/boot.S",
                       "arch/armv7-m/exceptions.S" ],
     cFiles = [ 
                "arch/armv7-m/exec.c", 
                "arch/arm/misc.c", 
                "arch/armv7-m/exn.c", 
                "arch/arm/phys_mmap.c",
                "arch/armv7/kludges.c", 
                "arch/armv7/multiboot.c", 
                "arch/armv7/syscall.c", 
                "arch/armv7-m/init.c", 
                "arch/armv7-m/omap.c", 
                "arch/armv7-m/paging.c", 
                "arch/omap44xx/startup_arch.c", 
                "arch/omap44xx/omap_uart.c", 
--                "arch/omap44xx/start_aps.c", 
                "arch/armv7/kputchar.c", 
                "arch/omap44xx/spinlock.c"
                ],
     mackerelDevices = [ "arm", 
                         "omap/omap44xx_cortex_m3_nvic", 
                         "omap/omap_uart", 
                         "omap/omap44xx_id", 
                         "omap/omap44xx_emif",
                         "omap/omap44xx_gpio",
                         "omap/omap44xx_mmu",
                         "omap/omap44xx_spinlock"],
     addLibraries = [ "elf", "cpio" ]
     }
  ]
)))),
("./doc/005-scc/Hakefile", (let find fn arg = (fn allfiles "./doc/005-scc/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/005-scc/Hakefile" a in
{-# LINE 1 "../doc/005-scc/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/005-scc
--
----------------------------------------------------------------------

[ buildTechNote "SCC.tex" "TN-005-SCC.pdf" True False
                    [ "figures/exp1", "figures/exp2",
                      "plots/mpbbench/mpbbench_oneway", 
                      "plots/rcce_bench/rcce_bt",
                      "plots/rcce_bench/rcce_bt_speedup",
                      "plots/rcce_bench/rcce_lu",
                      "plots/rcce_bench/rcce_lu_speedup" ]
]
)))),
("./doc/008-tracing/Hakefile", (let find fn arg = (fn allfiles "./doc/008-tracing/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/008-tracing/Hakefile" a in
{-# LINE 1 "../doc/008-tracing/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/008-tracing
--
----------------------------------------------------------------------

[ buildTechNote "Tracing.tex" "TN-008-Tracing.pdf" False False [] ]
)))),
("./doc/012-services/Hakefile", (let find fn arg = (fn allfiles "./doc/012-services/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/012-services/Hakefile" a in
{-# LINE 1 "../doc/012-services/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/012-services
--
----------------------------------------------------------------------

[ buildTechNote "Services.tex" "TN-012-Services.pdf" False False [] ]
--                    [ "cap_heirarchy", "cap_translation",
--                      "dcb", "LMP", "os-arch", "UMP" ] 
--]


  
)))),
("./doc/002-mackerel/Hakefile", (let find fn arg = (fn allfiles "./doc/002-mackerel/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/002-mackerel/Hakefile" a in
{-# LINE 1 "../doc/002-mackerel/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/002-mackerel
--
----------------------------------------------------------------------

[ buildTechNote "Mackerel.tex" "TN-002-Mackerel.pdf" False False [] ]
)))),
("./doc/006-routing/Hakefile", (let find fn arg = (fn allfiles "./doc/006-routing/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/006-routing/Hakefile" a in
{-# LINE 1 "../doc/006-routing/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/006-routing
--
----------------------------------------------------------------------

[ buildTechNote "Routing.tex" "TN-006-Routing.pdf" True False
                    [ "client-monitor", 
                      "client-server", 
                      "many-to-many" ]
]
)))),
("./doc/014-bulk-transfer/Hakefile", (let find fn arg = (fn allfiles "./doc/014-bulk-transfer/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/014-bulk-transfer/Hakefile" a in
{-# LINE 1 "../doc/014-bulk-transfer/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/014-bulk-transfer
--
----------------------------------------------------------------------

[ buildTechNote "bulk-transfer.tex" "TN-014-bulk-transfer.pdf" False False [] ]

)))),
("./doc/001-glossary/Hakefile", (let find fn arg = (fn allfiles "./doc/001-glossary/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/001-glossary/Hakefile" a in
{-# LINE 1 "../doc/001-glossary/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/001-glossary
--
----------------------------------------------------------------------

[ buildTechNoteWithDeps "Glossary.tex" "TN-001-Glossary.pdf" False False []
                            [ Str "runghc", In SrcTree "src" "Main.hs", Str ">", 
                              Out "tools" "/tmp/gloss-from-haskell.tex", NL ]
]
)))),
("./doc/004-virtual_memory/Hakefile", (let find fn arg = (fn allfiles "./doc/004-virtual_memory/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/004-virtual_memory/Hakefile" a in
{-# LINE 1 "../doc/004-virtual_memory/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/004-virtual_memory
--
----------------------------------------------------------------------

[ buildTechNote "VirtualMemory.tex" "TN-004-VirtualMemory.pdf" False False [] ]

)))),
("./doc/015-disk-driver-arch/Hakefile", (let find fn arg = (fn allfiles "./doc/015-disk-driver-arch/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/015-disk-driver-arch/Hakefile" a in
{-# LINE 1 "../doc/015-disk-driver-arch/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/015-disk-driver-arch
--
----------------------------------------------------------------------

let
  svg_sources = [ "architecture", "blockdevfs_list",
                  "cache_design", "dma_pool_design", "fat16_layout",
                  "fat32_layout", "fillbench", "h2d_fis", "mmap",
                  "pmem_overview", "rfis_area" ]

  figoutput f = "/tmp/" ++ f ++ ".pdf"

  -- Fix issues with modified LD_LIBRARY_PATH breaking inkscape, -SG, 9/1/13
  inkscape f = [ Str "LD_LIBRARY_PATH=", Str "inkscape", Str "-D", Str "-A",
                 Out "tools" (figoutput f), In SrcTree "src" ("figures/" ++ f ++ ".svg"), NL ]
  in 
 [ buildTechNoteWithDeps "disk-driver-report.tex" "TN-015-DiskDriverArchitecture.pdf" True True
   [] (concat [ inkscape f | f <- svg_sources ])
 ]

)))),
("./doc/011-idc/Hakefile", (let find fn arg = (fn allfiles "./doc/011-idc/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/011-idc/Hakefile" a in
{-# LINE 1 "../doc/011-idc/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/011-idc
--
----------------------------------------------------------------------

[ buildTechNote "IDC.tex" "TN-011-IDC.pdf" True False ["figures/ump_bind"]
]
)))),
("./doc/003-hake/Hakefile", (let find fn arg = (fn allfiles "./doc/003-hake/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/003-hake/Hakefile" a in
{-# LINE 1 "../doc/003-hake/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/003-hake
--
----------------------------------------------------------------------

[ buildTechNote "Hake.tex" "TN-003-Hake.pdf" False False [] ]

)))),
("./doc/000-overview/Hakefile", (let find fn arg = (fn allfiles "./doc/000-overview/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/000-overview/Hakefile" a in
{-# LINE 1 "../doc/000-overview/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/000-overview
--
----------------------------------------------------------------------

[ buildTechNote "Overview.tex" "TN-000-Overview.pdf" False False
                    [ "cap_heirarchy", "cap_translation",
                      "dcb", "LMP", "os-arch", "UMP" ] 
]


  
)))),
("./doc/009-notifications/Hakefile", (let find fn arg = (fn allfiles "./doc/009-notifications/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/009-notifications/Hakefile" a in
{-# LINE 1 "../doc/009-notifications/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/009-notifications
--
----------------------------------------------------------------------

[ buildTechNote "Notify.tex" "TN-009-Notifications.pdf" False False
                    [ "umpnotify" ] 
]

)))),
("./doc/010-spec/Hakefile", (let find fn arg = (fn allfiles "./doc/010-spec/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/010-spec/Hakefile" a in
{-# LINE 1 "../doc/010-spec/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/010-spec
--
----------------------------------------------------------------------

let
    figoutput f = "/tmp/" ++ f ++ ".pdf"
    circo f = [ Str "circo", Str "-Tpdf",
                In SrcTree "src" (f ++ ".circo"), Str "-o", Out "tools" (figoutput f), NL ]
    dot f = [ Str "dot", Str "-Tpdf",
              In SrcTree "src" (f ++ ".dot"), Str "-o", Out "tools" (figoutput f), NL ]
in
  [ buildTechNoteWithDeps "Spec.tex" "TN-010-Spec.pdf" True False []
    (concat [dot "app_cspace", circo "disp_states_simple",
             dot "disp_states_simple_save_area_analysis", dot "init_cspace"]
    ++ [ Str "hg", Str "-R", NoDep SrcTree "src" "/",
         Str "log -l 1 --template 'Revision {rev} of {date|shortdate}\\n'",
         In SrcTree "src" "Spec.tex", Str ">", Out "tools" "/tmp/specdate.tex", NL ])
  ]
)))),
("./doc/016-serial-ports/Hakefile", (let find fn arg = (fn allfiles "./doc/016-serial-ports/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/016-serial-ports/Hakefile" a in
{-# LINE 1 "../doc/016-serial-ports/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/016-serial-ports
--
----------------------------------------------------------------------

[ buildTechNote "Serial.tex" "TN-016-Serial.pdf" False False [] ]
)))),
("./doc/013-capability-mgmt/Hakefile", (let find fn arg = (fn allfiles "./doc/013-capability-mgmt/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./doc/013-capability-mgmt/Hakefile" a in
{-# LINE 1 "../doc/013-capability-mgmt/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /doc/004-virtual_memory
--
----------------------------------------------------------------------

let
  figoutput f = "/tmp/" ++ f ++ ".pdf"
  dot f = [ Str "dot", Str "-Tpdf",
            In SrcTree "src" (f ++ ".dot"), Str "-o", Out "tools" (figoutput f), NL ]
  in
 [ buildTechNoteWithDeps "CapMgmt.tex" "TN-013-CapabilityManagement.pdf" True False [] 
   (concat [dot "cap_types"])
 ]

)))),
("./devices/Hakefile", (let find fn arg = (fn allfiles "./devices/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./devices/Hakefile" a in
{-# LINE 1 "../devices/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for devices/
-- 
--------------------------------------------------------------------------

-- Mackerel 2 device descriptions
--
-- THIS is the place for new device descriptions.
--
[ mackerel2 (options arch) f
  | f <- [ "ac97_base_audio", 
           "ac97_ext_audio",
           "ac97_ext_codec",
           "ac97_ext_modem",
           "ahci_hba",
           "ahci_port",
           "acpi_ec",
           "arm",
           "ata_identify",
           "audio_nbm",
           "e1000",
           "e10k",
           "e10k_q",
           "ehci",
           "fat16_ebpb",
           "fat32_ebpb",
           "fat_bpb",
           "fat_direntry",
           "hpet",
           "ia32",
           "ixp2800_icp_pic0",
           "ixp2800_icp_pit",
           "ixp2800_uart",
           "lpc_bridge",
           "lpc_dma",
           "lpc_kbd",
           "lpc_pic",
           "lpc_pci_config",
           "lpc_rtc",
           "lpc_rtc_spaces",
           "ohci",
           "pc16550d",
           "rtl8029as",
           "tulip",
           "uhci",
           "xapic",
           "x2apic",
           "amd64",
           "pl130_gic",
           "sp804_pit",
           "cortex_a9_pit",
           "a9scu",
           "ti_i2c",
           "ti_twl6030",
           "sdhc",
           "omap/omap_uart",
           "omap/omap44xx_emif",
           "omap/omap44xx_gpio",
           "omap/omap44xx_id",
           "omap/omap44xx_usbconf",
           "omap/omap44xx_mmu",
           "omap/ohci",
           "omap/ehci",
           "omap/omap44xx_ctrlmod",
           "omap/omap44xx_cam_prm",
           "omap/omap44xx_cam_cm2",
           "omap/omap44xx_fdif",
           "omap/omap44xx_device_prm",
           "omap/omap44xx_mmchs",
           "omap/omap44xx_mmchs1",           
           "omap/omap44xx_l3init_cm2",
           "omap/omap44xx_ckgen_cm2",
           "omap/omap44xx_l4per_cm2",
           "omap/omap44xx_sysctrl_padconf_core",
           "omap/omap44xx_sysctrl_padconf_wkup",
           "omap/omap44xx_hsusbhost",
           "omap/omap44xx_usbtllhs_config",
           "omap/omap44xx_scrm",
           "omap/omap44xx_ehci",
           "omap/omap44xx_ckgen_prm", 
           "omap/omap44xx_l4per_cm2", 
           "omap/omap44xx_l3init_cm2",
           "omap/omap44xx_spinlock",
           "omap/omap44xx_cortex_m3_nvic"
         ], arch <- allArchitectures
] ++

-- Mackerel 1 device descriptions
-- 
-- DO NOT add new devices to this list - the interface is non-portable
-- and liable to break with new C compiler versions!
-- 
[ mackerel (options arch) f 
  | f <- [ "amd_vmcb",
           "arm_icp_pic0",
           "arm_icp_pit",
           "cpuid",
           "crb_sif",
           "eMAC",
           "ht_config",
           "lpc_ioapic",
           "lpc_timer",
           "pc16550d_mem",
           "pci_hdr0",
           "pci_hdr0_mem",
           "pci_hdr1",
           "pl011_uart",
           "rck"
         ], arch <- allArchitectures
]
)))),
("./trace_definitions/Hakefile", (let find fn arg = (fn allfiles "./trace_definitions/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./trace_definitions/Hakefile" a in
{-# LINE 1 "../trace_definitions/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /errors/
-- 
--------------------------------------------------------------------------

[ plecoFile (options arch) "trace_defs" | arch <- allArchitectures ]
)))),
("./usr/kaluga/Hakefile", (let find fn arg = (fn allfiles "./usr/kaluga/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/kaluga/Hakefile" a in
{-# LINE 1 "../usr/kaluga/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/kaluga
--
--------------------------------------------------------------------------

[ build application { target = "kaluga",
                      cFiles = (find withSuffices [".c"]),
          	          flounderDefs = [ "monitor" ],
                      flounderBindings = [ "octopus" ],
                      flounderExtraDefs = [ ("monitor_blocking",["rpcclient"]) ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = libDeps [ "skb", "octopus", "vfs", 
                                               "spawndomain", "elf", "mm" ],
                      architectures = [ "x86_64", "x86_32", "armv7" ] }
]
)))),
("./usr/replay/Hakefile", (let find fn arg = (fn allfiles "./usr/replay/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/replay/Hakefile" a in
{-# LINE 1 "../usr/replay/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/replay
--
--------------------------------------------------------------------------

[ build application { target = "replay",
  		      cFiles = [ "master.c", "hash.c" ],
		      flounderDefs = [ "replay" ],
		      flounderBindings = [ "replay" ],
		      addLibraries = [ "vfs", "nfs", "lwip", "contmng",
                      "procon", "hashtable" ]
                    },
build application { target = "replay-slave",
  		      cFiles = [ "slave.c" ],
		      flounderDefs = [ "replay" ],
		      flounderBindings = [ "replay" ],
		      addLibraries = [ "posixcompat", "vfs", "nfs", "lwip",
                      "contmng", "procon", "hashtable" ]
                    }
]
)))),
("./usr/vmkitmon/Hakefile", (let find fn arg = (fn allfiles "./usr/vmkitmon/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/vmkitmon/Hakefile" a in
{-# LINE 1 "../usr/vmkitmon/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for /usr/vmkitmon
--
--------------------------------------------------------------------------

[ build application { target = "vmkitmon",
                      cFiles = [ "vmkitmon.c", "guest.c", "realmode.c",
                                 "hdd.c", "keyboard.c", "console.c",
                                 "apic.c", "lpc.c", "pc16550d.c", "pci.c",
				 "pci_host.c", "pci_hostbridge.c" ],
                      mackerelDevices = [ "amd_vmcb", "lpc_timer",
                                          "pc16550d_mem", "pci_hdr0_mem" ],
                      flounderBindings = [ "serial" ],
                      flounderDefs = [ "monitor" ],
                      addLibraries = libDeps [ "spawndomain", "x86emu", "vfs"],
                      architectures = ["x86_64"]
                    }
]
)))),
("./usr/pci/Hakefile", (let find fn arg = (fn allfiles "./usr/pci/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/pci/Hakefile" a in
{-# LINE 1 "../usr/pci/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich. 
-- Attn: Systems Group.
--
-- Hakefile for /usr/pci, the PCI bus driver.
--
--------------------------------------------------------------------------

[  build application { target = "pci",
                      flounderDefs = [ "acpi", "monitor", "monitor_blocking" ],
                      flounderExtraDefs = [ ("monitor_blocking", ["rpcclient"]) ],
                      flounderTHCStubs = [ "octopus" ],
                      flounderBindings = [ "pci", "acpi", "octopus" ],
                      flounderExtraBindings = [("acpi", ["rpcclient"])],
                                            
                      mackerelDevices = [ "pci_hdr0", "pci_hdr1", "ht_config" ],
                      cFiles = [ "pcimain.c", "pci.c", "pci_service.c", 
                                 "ht_config.c", "pcie.c" ],
                      addCFlags = [ "-Wno-redundant-decls" ],
                      addLibraries = [ "skb", "pciconfspace", "acpi_client", 
                                       "octopus", "octopus_parser", "thc" ],
                      architectures = [ "x86_64", "x86_32" ]
                    }
]
)))),
("./usr/slideshow/Hakefile", (let find fn arg = (fn allfiles "./usr/slideshow/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/slideshow/Hakefile" a in
{-# LINE 1 "../usr/slideshow/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/slideshow
--
--------------------------------------------------------------------------

[ build application { target = "slideshow",
                      cFiles = [ "main.c", "slideshow.c", "bmp.c",
                                 "zlib_load.c" ],
		      flounderBindings = [ "keyboard", "fb" ],
		      flounderExtraBindings = [ ("fb", ["rpcclient"]) ],
              addLibraries = libDeps ["zlib", "vfs" ]
                    }
]
)))),
("./usr/bomp_benchmark/Hakefile", (let find fn arg = (fn allfiles "./usr/bomp_benchmark/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bomp_benchmark/Hakefile" a in
{-# LINE 1 "../usr/bomp_benchmark/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bomp_benchmark
--
--------------------------------------------------------------------------

let commonCFiles = [ "c_timers.c", "c_print_results.c", "c_randdp.c", "wtime.c"]
    template = application { omitCFlags = [ "-Wshadow", "-Wstrict-prototypes", 
                                        "-Wmissing-prototypes",
                                        "-Wmissing-declarations", "-Wall", 
                                        "-Werror" ],
                         addCFlags = [ "-DBOMP", "-fopenmp", "-Wno-unused", 
                                       "-Wno-old-style-definition", 
                                       "-Wno-implicit-function-declaration", 
                                       "-Wno-aggregate-return" ],
                         addIncludes = [ "/lib/bomp" ],
                         addLibraries = [ "bomp" ],
                         architectures = [ "x86_64" ]
                       }

in
  [ build template { target = "bomp_benchmark_cg", 
                     cFiles = "cg.c" : commonCFiles },
    build template { target = "bomp_benchmark_ft",
                     cFiles = "ft.c" : commonCFiles },
    build template { target = "bomp_benchmark_is",
                     cFiles = "is.c" : commonCFiles }
  ]
)))),
("./usr/startd/Hakefile", (let find fn arg = (fn allfiles "./usr/startd/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/startd/Hakefile" a in
{-# LINE 1 "../usr/startd/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/startd
--
--------------------------------------------------------------------------

[ build application { target = "startd",
  		      cFiles = [ "main.c", "spawn.c" ],
		      addLibraries = libDeps [ "spawndomain", "elf", "trace",
                                       "dist", "vfs"]
                   }
]
)))),
("./usr/netfile/Hakefile", (let find fn arg = (fn allfiles "./usr/netfile/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/netfile/Hakefile" a in
{-# LINE 1 "../usr/netfile/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/netfile
--
--------------------------------------------------------------------------

[ build application { target = "netfile",
  		      cFiles = [ "netfile.c" ],
		      addLibraries = [ "vfs", "nfs", "ahci", "lwip", "contmng",
                                        "procon"],
		      architectures = [ "x86_64" ]
                    }
]
)))),
("./usr/echoserver/Hakefile", (let find fn arg = (fn allfiles "./usr/echoserver/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/echoserver/Hakefile" a in
{-# LINE 1 "../usr/echoserver/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/echoserver
--
--------------------------------------------------------------------------

[ build application { target = "echoserver",
  		      cFiles = [ "main.c", "udpechoserver.c",
                                 "tcpechoserver.c" ],
		      addLibraries = [ "lwip", "contmng", "procon", "trace" ]
                    }
]
)))),
("./usr/ramfsd/Hakefile", (let find fn arg = (fn allfiles "./usr/ramfsd/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/ramfsd/Hakefile" a in
{-# LINE 1 "../usr/ramfsd/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for ramfsd
-- 
--------------------------------------------------------------------------

[ build application { target = "ramfsd",
                      cFiles = [ "main.c", "ramfs.c", "service.c" ],
		      flounderDefs = ["monitor"],
                      flounderExtraDefs = [ ("monitor_blocking",["rpcclient"]) ],
                      flounderBindings = [ "trivfs" ],
		      addLibraries = [ "spawndomain", "zlib", "cpio" ]
                    }
]
)))),
("./usr/spawnd/Hakefile", (let find fn arg = (fn allfiles "./usr/spawnd/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/spawnd/Hakefile" a in
{-# LINE 1 "../usr/spawnd/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/spawnd
--
--------------------------------------------------------------------------

[ build application { target = "spawnd",
  		      cFiles = [ "main.c", "bsp_bootup.c", "service.c", "ps.c" ],
		      addLibraries = libDeps [ "spawndomain", "elf", "trace", "skb",
                                       "dist", "vfs" ],
  		      flounderDefs = [ "monitor", "monitor_blocking" ],
                      flounderExtraDefs = [ ("monitor_blocking",["rpcclient"]) ],
  		      flounderBindings = [ "spawn" ]
                    }
]
)))),
("./usr/phoenix_tests/Hakefile", (let find fn arg = (fn allfiles "./usr/phoenix_tests/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/phoenix_tests/Hakefile" a in
{-# LINE 1 "../usr/phoenix_tests/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
--------------------------------------------------------------------------

let template = application {
		 omitCFlags = [ "-Wshadow", "-Wstrict-prototypes", 
                                "-Wmissing-prototypes",
                                "-Wmissing-declarations", "-Wall",
                                "-Werror" ],
                 addCFlags = [ "-Wno-unused", 
                               "-Wno-old-style-definition", 
                               "-Wno-implicit-function-declaration", 
                               "-Wno-aggregate-return" ],
    	         addIncludes = [ "/lib/phoenix" ],
                 addLibraries = [ "phoenix" ],
                 architectures = [ "x86_64" ]
               }

in
  [ build template { target = "phoenix_kmeans",
                     cFiles = [ "kmeans.c" ] }
  ]
)))),
("./usr/drivers/usb/usb_keyboard/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/usb/usb_keyboard/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/usb/usb_keyboard/Hakefile" a in
{-# LINE 1 "../usr/drivers/usb/usb_keyboard/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for drivers/usb/usb_keyboard
-- 
--------------------------------------------------------------------------

[ build application { target = "usb_keyboard",
                      cFiles = [ "usb_keyboard.c",
                                 "usb_keyboard_service.c", 
                                 "usb_keyboard_driver.c"],
                    flounderBindings = [ "keyboard"],
                      addLibraries = ["usb"],
                      architectures = allArchitectures
                    }
]
)))),
("./usr/drivers/usb/usb_manager/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/usb/usb_manager/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/usb/usb_manager/Hakefile" a in
{-# LINE 1 "../usr/drivers/usb/usb_manager/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for drivers/serial
-- 
--------------------------------------------------------------------------

[ build application { target = "usb_manager",
                      cFiles = [ "usb_manager.c", "usb_controller.c", 
                      "usb_device.c", "usb_endpoint.c",
                      "usb_memory.c","usb_xfer.c",
                      "usb_request.c", "usb_transfer.c",
                      "usb_pipe.c", "usb_driver.c",
                      -- OHCI Controller
                      "controller/ohci/usb_ohci_bus.c", 
                      "controller/ohci/usb_ohci_memory.c", 
                      "controller/ohci/usb_ohci_queue.c",
                      "controller/ohci/usb_ohci_pipe.c", 
                      "controller/ohci/usb_ohci_root_hub.c", 
                      "controller/ohci/usb_ohci_xfer.c", 
                      "controller/ohci/usb_ohci.c",
                      -- EHCI Controller
                      "controller/ehci/usb_ehci_bus.c", 
                      "controller/ehci/usb_ehci_memory.c", 
                      "controller/ehci/usb_ehci_queue.c",
                      "controller/ehci/usb_ehci_pipe.c", 
                      "controller/ehci/usb_ehci_root_hub.c", 
                      "controller/ehci/usb_ehci_xfer.c", 
                      "controller/ehci/usb_ehci.c",
                      -- USB hub
                      "hub/usb_hub.c",
                      "hub/usb_hub_request.c"
                      ],
                      
                      flounderDefs = [ "usb_manager", "usb_driver", "monitor_blocking" ],
                      flounderBindings = [ "usb_manager", "usb_driver" ],
                      flounderExtraBindings = [ ("usb_manager",["rpcclient"])],
                      
                      flounderExtraDefs = [ ("monitor_blocking", ["rpcclient"]) ],
                      
                      mackerelDevices = [ "ohci", "omap/ohci", 
                                          "ehci", "omap/ehci"],
                      addIncludes = [ "include"],
                      addLibraries = ["usb", "driverkit"],
                      architectures = allArchitectures
                    }
]
)))),
("./usr/drivers/serial/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/serial/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/serial/Hakefile" a in
{-# LINE 1 "../usr/drivers/serial/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for drivers/serial
-- 
--------------------------------------------------------------------------

[ build application { target = "serial",
                      cFiles = [ "serial.c", "main.c", "basic_service.c",
                                 "terminal_service.c" ],
                      flounderBindings = [ "serial" ],
                      flounderDefs = [ "terminal" , "terminal_config",
                                       "terminal_session" ],
                      mackerelDevices = [ "pc16550d" ],
                      addLibraries = [ "pci", "term_server" ]
                    }
]
)))),
("./usr/drivers/lpc_timer/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/lpc_timer/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/lpc_timer/Hakefile" a in
{-# LINE 1 "../usr/drivers/lpc_timer/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/lpc_timer
-- 
--------------------------------------------------------------------------

[ build application { target = "lpc_timer",
                      cFiles = [ "timer.c", "main.c" ],
                      flounderBindings = [ "timer" ],
                      mackerelDevices = [ "lpc_timer" ],
                      addLibraries = [ "pci" ]
                    }
]
)))),
("./usr/drivers/hpet/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/hpet/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/hpet/Hakefile" a in
{-# LINE 1 "../usr/drivers/hpet/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/hpet
-- 
--------------------------------------------------------------------------

[ build application { target = "hpet",
                      cFiles = [ "main.c" ],
                      architectures = [ "x86_64" ],
                      flounderBindings = [ "hpet" ],
                      addLibraries = [ "pci" ]
                    }
]
)))),
("./usr/drivers/rtl8029/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/rtl8029/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/rtl8029/Hakefile" a in
{-# LINE 1 "../usr/drivers/rtl8029/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for drivers/rtl8029
--
--------------------------------------------------------------------------

[ build application { target = "rtl8029",
                      cFiles = ["rtl8029.c"],
                      flounderBindings = [ "net_queue_manager",
                                            "net_soft_filters" ],
                      mackerelDevices = [ "rtl8029as" ],
                      addLibraries = libDeps [ "pci", "netQmng" ]
                    }
]

)))),
("./usr/drivers/vbe/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/vbe/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/vbe/Hakefile" a in
{-# LINE 1 "../usr/drivers/vbe/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/vbe
-- 
--------------------------------------------------------------------------

[ build application { target = "vbe",
                      cFiles = [ "main.c", "vbe.c", "int10.c" ],
                      architectures = [ "x86_64", "x86_32" ],
                      flounderBindings = ["fb"],
                      flounderExtraBindings = [ ("acpi", ["rpcclient"]) ],
                      addLibraries = [ "x86emu", "pci", "acpi_client" ]
                    }
]
)))),
("./usr/drivers/lpc_kbd/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/lpc_kbd/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/lpc_kbd/Hakefile" a in
{-# LINE 1 "../usr/drivers/lpc_kbd/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for usr/drivers/lpc_kbd
-- 
--------------------------------------------------------------------------

[ build application { target = "lpc_kbd",
                      cFiles = [ "lpc_kbd.c", "main.c", "mouse.c" ],
                      flounderBindings = [ "keyboard", "mouse" ],
                      mackerelDevices = [ "lpc_kbd" ],
                      addLibraries = [ "pci" ],
                      architectures = [ "x86_64", "x86_32" ]
                    }
]
)))),
("./usr/drivers/eMAC/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/eMAC/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/eMAC/Hakefile" a in
{-# LINE 1 "../usr/drivers/eMAC/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/eMAC
--
--------------------------------------------------------------------------

[ build application { target = "eMAC",
                      cFiles = [ "eMAC_driver.c", "eMAC_hwinit.c",
                                 "eMAC_debug.c"],
                      flounderBindings = [ "net_queue_manager",
                                            "net_soft_filters" ],
                      mackerelDevices = [ "eMAC" ],
                      addLibraries = libDeps [ "netQmng" ]
                    }
]

)))),
("./usr/drivers/e10k/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/e10k/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/e10k/Hakefile" a in
{-# LINE 1 "../usr/drivers/e10k/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/e10k
--
--------------------------------------------------------------------------

[ build application { target = "e10k",
                      cFiles = [ "e10k.c", "sleep.c", "helper.c"],
                      flounderBindings = [ "net_queue_manager",
                                            "net_soft_filters" ],
                      mackerelDevices = [ "e10k", "e10k_q" ],
                      addLibraries = libDeps [ "pci", "netQmng", "bench" ]
                    }
]

)))),
("./usr/drivers/uhci/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/uhci/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/uhci/Hakefile" a in
{-# LINE 1 "../usr/drivers/uhci/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetsstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/uhci
-- 
--------------------------------------------------------------------------

[ build application { target = "uhci",
                      cFiles = [ "uhci.c" ],
--                      flounderBindings = [ "uhci_mgmt" ],
                      mackerelDevices = [ "uhci" ],
                      addLibraries = [ "pci", "skb" ]
                    }
]

)))),
("./usr/drivers/e1000/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/e1000/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/e1000/Hakefile" a in
{-# LINE 1 "../usr/drivers/e1000/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/e1000_dev
--
--------------------------------------------------------------------------

[ build application { target = "e1000n",
                      cFiles = [ "e1000n.c", "e1000n_hwinit.c", "e1000n_helpers.c" ],
                      flounderBindings = [ "net_queue_manager",
                                            "net_soft_filters", "octopus" ],
                      flounderDefs = [ "octopus" ],
                      mackerelDevices = [ "e1000" ],
                      addLibraries = libDeps [ "pci", "netQmng", "trace", "octopus" ],
                      architectures = [ "x86_64", "x86_32" ]
                    }
]
)))),
("./usr/drivers/tulip/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/tulip/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/tulip/Hakefile" a in
{-# LINE 1 "../usr/drivers/tulip/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009,2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/tulip
-- 
--------------------------------------------------------------------------

[ build application { target = "tulip",
                      cFiles = [ "tulip.c" ],
                      flounderBindings = [ "net_queue_manager",
                                            "net_soft_filters" ],
                      mackerelDevices = [ "tulip" ],
                      addLibraries = libDeps [ "pci", "netQmng" ]
           }
]
)))),
("./usr/drivers/omap44xx/mmchs/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/omap44xx/mmchs/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/omap44xx/mmchs/Hakefile" a in
{-# LINE 1 "../usr/drivers/omap44xx/mmchs/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for omap44xx sd-card driver
-- 
--------------------------------------------------------------------------

[
    build application { target = "mmchs",
                        cFiles = [
                            "main.c", "cm2.c", "ctrlmod.c", 
                            "i2c.c", "mmchs.c", "twl6030.c",
                            "service.c"
                        ],
                        mackerelDevices = [
                            "ti_i2c",
                            "ti_twl6030",
                            "omap/omap44xx_mmchs1",
                            "omap/omap44xx_sysctrl_padconf_core",
                            "omap/omap44xx_l3init_cm2",
                            "omap/omap44xx_ckgen_cm2",
                            "omap/omap44xx_l4per_cm2"
                        ],

                        flounderDefs = [ "ata_rw28" ],
                        flounderBindings = [ "ata_rw28" ],
                        flounderTHCStubs = [ "ata_rw28" ],

                        addLibraries = [ "driverkit", "thc" ],
                        architectures = ["armv7"]
    }
])))),
("./usr/drivers/omap44xx/fdif/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/omap44xx/fdif/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/omap44xx/fdif/Hakefile" a in
{-# LINE 1 "../usr/drivers/omap44xx/fdif/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for omap44xx fdif driver
-- 
--------------------------------------------------------------------------

[
    build application { target = "fdif",
                    cFiles = (find withSuffices [".c"]),
                    mackerelDevices = [
                        "omap/omap44xx_cam_prm",
                        "omap/omap44xx_cam_cm2",
                        "omap/omap44xx_fdif",
                        "omap/omap44xx_device_prm" ],
                    addLibraries = ["driverkit"],
                    architectures = ["armv7", "armv7-m"]
                  }
]
)))),
("./usr/drivers/sif/Hakefile", (let find fn arg = (fn allfiles "./usr/drivers/sif/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/drivers/sif/Hakefile" a in
{-# LINE 1 "../usr/drivers/sif/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/vbe
-- 
--------------------------------------------------------------------------

[ build application { target = "sif",
                      cFiles = [ "main.c", "sif.c" ],
                      architectures = [ "x86_64" ],
                      addLibraries = [ "pci" ],
                      mackerelDevices = [ "crb_sif" ]
                    }
]
)))),
("./usr/init/Hakefile", (let find fn arg = (fn allfiles "./usr/init/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/init/Hakefile" a in
{-# LINE 1 "../usr/init/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/init
--
--------------------------------------------------------------------------

[ build application { target = "init",
  		      cFiles = [ "mem_alloc.c", "spawn.c", "init.c" ],
                      addLinkFlags = [ "-e _start_init"],
		      addLibraries = [ "spawndomain", "mm", "getopt", "trace", "elf" ],
                      architectures = allArchitectures
                    }
]
)))),
("./usr/net-test/Hakefile", (let find fn arg = (fn allfiles "./usr/net-test/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/net-test/Hakefile" a in
{-# LINE 1 "../usr/net-test/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/net-test
--
--------------------------------------------------------------------------

--
-- This application is not very portable across different libc
--

[ build application { target = "net-test",
                      cFiles = [ "net-test.c" ],
                      addLibraries = libDeps [ "vfs", "posixcompat" ],
                      architectures = [ "x86_64", "scc" ]
                   -- omitCFlags = [ "-Wredundant-decls" ]
                    }
]
)))),
("./usr/bfscope/Hakefile", (let find fn arg = (fn allfiles "./usr/bfscope/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bfscope/Hakefile" a in
{-# LINE 1 "../usr/bfscope/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bfscope
--
--------------------------------------------------------------------------

[ build application { target = "bfscope",
                      cFiles = [ "bfscope.c" ],
                      addLibraries = [ "lwip", "contmng", "trace" ],
                      flounderBindings = [ "empty" ]
                    }
]
)))),
("./usr/mem_serv/Hakefile", (let find fn arg = (fn allfiles "./usr/mem_serv/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/mem_serv/Hakefile" a in
{-# LINE 1 "../usr/mem_serv/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/mem_serv
--
--------------------------------------------------------------------------

[ build application { target = "mem_serv",
  		      cFiles = [ "mem_serv.c" ],
                      flounderDefs = [ "monitor", "mem" ],
                      addLibraries = [ "mm", "trace" ],
                      addLinkFlags = [ "-e _start_init"],
                      architectures = allArchitectures
                    }
]
)))),
("./usr/angler/Hakefile", (let find fn arg = (fn allfiles "./usr/angler/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/angler/Hakefile" a in
{-# LINE 1 "../usr/angler/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for usr/angler
--
--------------------------------------------------------------------------

[ build application { target = "angler",
                      cFiles = [ "angler.c" ],
                      addLibraries = libDeps [ "vfs", "angler" ]
                    } ]
)))),
("./usr/fish/Hakefile", (let find fn arg = (fn allfiles "./usr/fish/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/fish/Hakefile" a in
{-# LINE 1 "../usr/fish/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/fish
--
--------------------------------------------------------------------------

[ build application { target = "fish",
  		      cFiles = [ "fish.c", "font.c" ],
		      addLibraries = libDeps ["trace", "skb", "pci", "vfs", "acpi_client"],
                      flounderExtraBindings = [("acpi", ["rpcclient"])],
  		      flounderBindings = [ "pixels", "acpi" ],
  		      architectures = [ "x86_64", "x86_32" ]
                    },
  build application { target = "fish",
                      cFiles = [ "fish_arm.c", "font.c" ],
                      addLibraries = libDeps ["trace", "skb", "vfs" ],
                      flounderBindings = [ "pixels" ],
                      architectures = [  "armv7" ]
                    }
]
)))),
("./usr/boot_perfmon/Hakefile", (let find fn arg = (fn allfiles "./usr/boot_perfmon/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/boot_perfmon/Hakefile" a in
{-# LINE 1 "../usr/boot_perfmon/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
--------------------------------------------------------------------------

[ build application { target = "boot_perfmon",
  		      cFiles = [ "main.c" , "connections.c" , "leader.c" ,
                                 "spawn.c" , "tests.c" , "relations.c" ],
		      addLibraries = [ "bench" , "skb" ],
  		      flounderBindings = [ "boot_perfmon" ]
                    }
]
)))),
("./usr/device_managers/net_gen_dev/Hakefile", (let find fn arg = (fn allfiles "./usr/device_managers/net_gen_dev/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/device_managers/net_gen_dev/Hakefile" a in
{-# LINE 1 "../usr/device_managers/net_gen_dev/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/device_managers/net_gen_dev/NGD_mng
--
--------------------------------------------------------------------------

[ build application { target = "NGD_mng",
                        cFiles = [ "NGD_mng.c" ],
		        addLibraries = [ "contmng", "net_device_manager" ]
                    }
]

)))),
("./usr/examples/xmpl-thc-lang/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-thc-lang/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-thc-lang/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-thc-lang/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/examples/xmpl-thc-lang
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-thc-lang",
                      cFiles = [ "thc-lang.c" ],
		      flounderDefs = [ "xmplthc" ],
		      flounderBindings = [ "xmplthc" ],
		      flounderTHCStubs = [ "xmplthc" ],
		      addLibraries = [ "thc" ],
		      architectures = [ "x86_64", "x86_32" ]
                    }
]



)))),
("./usr/examples/xmpl-rpc/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-rpc/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-rpc/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-rpc/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/examples/xmpl-rpc
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-rpc_msg",
                      cFiles = [ "rpc_msg.c" ],
		      flounderBindings = [ "xmplrpc" ]
                    },
  build application { target = "examples/xmpl-rpc_rpc",
                      cFiles = [ "rpc_rpc.c" ],
		      flounderBindings = [ "xmplrpc" ],
		      flounderExtraBindings = [ ("xmplrpc",["rpcclient"]) ]
                    }
]



)))),
("./usr/examples/xmpl-spawn/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-spawn/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-spawn/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-spawn/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/examples/xmpl-spawn
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-spawn",
                      cFiles = [ "spawn.c" ]
                    }
]
)))),
("./usr/examples/xmpl-trace/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-trace/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-trace/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-trace/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/example/xmpl-trace
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-trace",
                      cFiles = [ "trace.c" ],
		      addLibraries = [ "trace" ]
                    }
]
)))),
("./usr/examples/xmpl-call-response/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-call-response/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-call-response/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-call-response/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/examples/xmpl-call-response
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-call-response",
                      cFiles = [ "call-response.c" ],
		      flounderBindings = [ "xmplcr" ]
                    }
]
)))),
("./usr/examples/xmpl-span/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-span/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-span/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-span/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/examples/xmpl-span
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-span",
                      cFiles = [ "span.c" ]
                    }
]
)))),
("./usr/examples/xmpl-thread/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-thread/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-thread/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-thread/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/examples/xmpl-thread
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-thread-min",
                      cFiles = [ "thread-minimal.c" ]
                    }, 
  build application { target = "examples/xmpl-thread",
                      cFiles = [ "thread.c" ]
                    }
]
)))),
("./usr/examples/xmpl-msg/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-msg/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-msg/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-msg/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/examples/xmpl-msg
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-msg",
                      cFiles = [ "msg.c" ],
		      flounderBindings = [ "xmplmsg" ]
                    }
]
)))),
("./usr/examples/xmpl-hello/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-hello/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-hello/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-hello/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/example/xmpl-hello
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-hello",
                      cFiles = [ "hello.c" ]
                    }
]
)))),
("./usr/examples/xmpl-thc-binding/Hakefile", (let find fn arg = (fn allfiles "./usr/examples/xmpl-thc-binding/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/examples/xmpl-thc-binding/Hakefile" a in
{-# LINE 1 "../usr/examples/xmpl-thc-binding/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/examples/xmpl-thc-binding
--
--------------------------------------------------------------------------

[ build application { target = "examples/xmpl-thc-binding",
                      cFiles = [ "thc-binding.c" ],
		      flounderDefs = [ "xmplthc" ],
		      flounderBindings = [ "xmplthc" ],
		      flounderTHCStubs = [ "xmplthc" ],
		      addLibraries = [ "thc" ]
                    }
]



)))),
("./usr/ahcid/Hakefile", (let find fn arg = (fn allfiles "./usr/ahcid/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/ahcid/Hakefile" a in
{-# LINE 1 "../usr/ahcid/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetsstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/ahci
-- 
--------------------------------------------------------------------------

[ build application { target = "ahcid",
                      cFiles = [ "ahcid.c", "ahcid_hwinit.c" ],
                      flounderBindings = [ "ahci_mgmt" ],
                      mackerelDevices = [ "ahci_hba", "ahci_port", "ata_identify" ],
                      addLibraries = [ "pci", "skb", "ahci" ]
                    }
]

)))),
("./usr/tests/thcminitest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/thcminitest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/thcminitest/Hakefile" a in
{-# LINE 1 "../usr/tests/thcminitest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for thcminitest
-- 
--------------------------------------------------------------------------

[ build application { target = "thcminitest",
                      cFiles = [ "thcminitest.c" ],
                      flounderDefs = [ "ping_pong" ],
                      flounderBindings = [ "ping_pong" ],
                      flounderTHCStubs = [ "ping_pong" ],
                      addLibraries = [ "thc" ]
                 }
]
)))),
("./usr/tests/mdbtests/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/mdbtests/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/mdbtests/Hakefile" a in
{-# LINE 1 "../usr/tests/mdbtests/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/mdbtests
--
-- mdb tests:
--  - randomized tests for mdb_find_range()
--
--------------------------------------------------------------------------

[
  build application { target = "mdbtest_range_query",
                      cFiles = [ "test_range_query.c" ],
                      addLibraries = [ "mdb", "cap_predicates" ]
                    },
  build application { target = "mdbtest_addr_zero",
                      cFiles = [ "test_addr_zero.c" ],
                      addLibraries = [ "mdb", "cap_predicates" ]
                    }
]
)))),
("./usr/tests/ahcialloctest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/ahcialloctest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/ahcialloctest/Hakefile" a in
{-# LINE 1 "../usr/tests/ahcialloctest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetsstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/ahci
-- 
--------------------------------------------------------------------------

[ build application { target = "ahcialloctest",
                      cFiles = [ "ahcialloctest.c" ],
                      addLibraries = [ "ahci" ]
                    }
]

)))),
("./usr/tests/cxx/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/cxx/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/cxx/Hakefile" a in
{-# LINE 1 "../usr/tests/cxx/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for cxxtest
-- 
--------------------------------------------------------------------------

[ build application { target = "cxxtest",
                      cxxFiles = [ "test.cpp" ],
                      addLibraries = [ "vfs", "nfs", "ahci", "lwip", "timer" ],
		      architectures = [ "x86_64" ]
                    }
]
)))),
("./usr/tests/testdesc/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/testdesc/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/testdesc/Hakefile" a in
{-# LINE 1 "../usr/tests/testdesc/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/testdesc
--
--------------------------------------------------------------------------

[ build application { target = "testdesc",
                      cFiles = [ "testdesc.c" ],
                      addLibraries = libDeps [ "posixcompat", "vfs" ],
                      flounderBindings = [ "unixsock" ]
--                    flounderExtraBindings = [ ("unixsock",["rpcclient"]) ]
                    },
  build application { target = "testdesc-child",
                      cFiles = [ "testdesc-child.c" ],
                      addLibraries = libDeps [ "posixcompat" ],
                      flounderBindings = [ "unixsock" ]
--                    flounderExtraBindings = [ ("unixsock",["rpcclient"]) ]
                    }
]
)))),
("./usr/tests/shm/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/shm/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/shm/Hakefile" a in
{-# LINE 1 "../usr/tests/shm/Hakefile" #-}
[ build application { target = "shm_client" ,
                      cFiles = [ "shm_client.c" ],
                      addLibraries = [ "posixcompat", "octopus", "thc"  ]
                    },
  build application { target = "shm_server" ,
                      cFiles = [ "shm_server.c" ],
                      addLibraries = [ "posixcompat", "octopus", "thc" ]
                    }
]
)))),
("./usr/tests/idctest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/idctest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/idctest/Hakefile" a in
{-# LINE 1 "../usr/tests/idctest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for idctest
-- 
--------------------------------------------------------------------------

[
build application { target = "idctest",
                  cFiles = [ "idctest.c" ],
                  flounderBindings = [ "test" ]
                 }
]
)))),
("./usr/tests/schedtest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/schedtest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/schedtest/Hakefile" a in
{-# LINE 1 "../usr/tests/schedtest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for schedtest
-- 
--------------------------------------------------------------------------

[ build application { target = "schedtest",
                      cFiles = [ "schedtest.c" ],
                      addLibraries = [ "bench" ]
                    }
]
)))),
("./usr/tests/net_tests/openport_test/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/net_tests/openport_test/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/net_tests/openport_test/Hakefile" a in
{-# LINE 1 "../usr/tests/net_tests/openport_test/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/net_openport_test
--
--------------------------------------------------------------------------

[ build application { target = "net_openport_test",
                      cFiles = [ "net_openport_test.c" ],
                      addLibraries = [ "lwip", "contmng", "procon", "timer" ]
                    }
]

)))),
("./usr/tests/net_tests/nfs_throughput/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/net_tests/nfs_throughput/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/net_tests/nfs_throughput/Hakefile" a in
{-# LINE 1 "../usr/tests/net_tests/nfs_throughput/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/webserver
--
--------------------------------------------------------------------------

[ build application { target = "netthroughput",
                      cFiles = [ "nfs_cat.c"],
                      addLibraries = libDeps ["vfs"]
                    }
]
)))),
("./usr/tests/net_tests/posix-sockets/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/net_tests/posix-sockets/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/net_tests/posix-sockets/Hakefile" a in
{-# LINE 1 "../usr/tests/net_tests/posix-sockets/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for /usr/tests/net-tests/posix-sockets
--
--------------------------------------------------------------------------

[ build application { target = "posix-sockets",
                      cFiles = [ "main.c" ],
                      addLibraries = libDeps [ "posixcompat", "lwip" ]
                    }
]
)))),
("./usr/tests/net_tests/udp_throughput/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/net_tests/udp_throughput/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/net_tests/udp_throughput/Hakefile" a in
{-# LINE 1 "../usr/tests/net_tests/udp_throughput/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/udp_throughput
--
--------------------------------------------------------------------------

[ build application {
        target = "udp_throughput",
        cFiles = [ "udp_test.c"],
        addLibraries = [ "lwip", "contmng", "procon", "trace" ]
    }
]
)))),
("./usr/tests/fputest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/fputest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/fputest/Hakefile" a in
{-# LINE 1 "../usr/tests/fputest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for fputest
-- 
--------------------------------------------------------------------------

[ build application { target = "fputest",
                      cFiles = [ "fputest.c" ]
                    }
]
)))),
("./usr/tests/disttest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/disttest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/disttest/Hakefile" a in
{-# LINE 1 "../usr/tests/disttest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/disttest
--
--------------------------------------------------------------------------

[ build application { target = "disttest", 
  		      cFiles = [ "main.c", "barrier_test.c" ],
		      addLibraries = [ "dist" ]
		    } 
]
)))),
("./usr/tests/multihoptest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/multihoptest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/multihoptest/Hakefile" a in
{-# LINE 1 "../usr/tests/multihoptest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for idctest
-- 
--------------------------------------------------------------------------

[
build application { target = "multihoptest",
                  cFiles = [ "multihoptest.c" ],
                  flounderBindings = [ "test" ]
                 },
                 
build application { target = "multihop_latency_bench",
  		      cFiles = [ "latencytest.c" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench", "trace"] }  
]
)))),
("./usr/tests/testerror/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/testerror/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/testerror/Hakefile" a in
{-# LINE 1 "../usr/tests/testerror/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/testerror
--
--------------------------------------------------------------------------

[ build application { target = "testerror", cFiles = [ "testerror.c" ] } ]
)))),
("./usr/tests/nkm/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/nkm/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/nkm/Hakefile" a in
{-# LINE 1 "../usr/tests/nkm/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/memtest
--
-- Diverse memory tests.
--
--------------------------------------------------------------------------

[ build application { target = "nkmtest",
                      cFiles = [ "nkmtest.c", "vspace_dump.c" ],
                      addLibraries = [ "cap_predicates" ]
                    }
]
)))),
("./usr/tests/thcidctest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/thcidctest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/thcidctest/Hakefile" a in
{-# LINE 1 "../usr/tests/thcidctest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for thcidctest
-- 
--------------------------------------------------------------------------

[ build application { target = "thcidctest",
                    cFiles = [ "thcidctest.c" ],
                    flounderDefs = [ "ping_pong" ],
                    flounderBindings = [ "ping_pong" ],
                    flounderTHCStubs = [ "ping_pong" ],
                    addLibraries = [ "thc" ]
                 }
]
)))),
("./usr/tests/filetests/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/filetests/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/filetests/Hakefile" a in
{-# LINE 1 "../usr/tests/filetests/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
--------------------------------------------------------------------------

[
  build application { target = "fread_test",
                      cFiles = [ "fread_test.c" ],
                      addLibraries = libDeps ["vfs"]
                    },
  build application { target = "fscanf_test",
                      cFiles = [ "fscanf_test.c" ],
                      addLibraries = libDeps ["vfs"]
                    },
  build application { target = "fat_test",
                      cFiles = [ "fat_test.c" ],
                      addLibraries = libDeps ["vfs"]
                    }
  ]
)))),
("./usr/tests/hellotest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/hellotest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/hellotest/Hakefile" a in
{-# LINE 1 "../usr/tests/hellotest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for hellotest
-- 
--------------------------------------------------------------------------

[ build application { target = "hellotest",
                      cFiles = [ "hellotest.c" ]
                 }
]
)))),
("./usr/tests/terminalio/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/terminalio/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/terminalio/Hakefile" a in
{-# LINE 1 "../usr/tests/terminalio/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, 2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for /usr/tests/terminalio
--------------------------------------------------------------------------

[ build application { target = "terminal_input_test",
                      cFiles = [ "terminal_input.c" ],
                      flounderDefs = [ "terminal", "terminal_config" ]
                     },
  build application { target = "pty-test",
                      cFiles = [ "pty-test.c" ],
                      addLibraries = libDeps [ "posixcompat", "angler", "vfs" ]
                    }
]
)))),
("./usr/tests/bomptest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/bomptest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/bomptest/Hakefile" a in
{-# LINE 1 "../usr/tests/bomptest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bomp_benchmark
--
--------------------------------------------------------------------------

let template = application { 
                         addCFlags = [ "-DBOMP", "-fopenmp" ],
                         addIncludes = [ "/lib/bomp" ],
                         addLibraries = [ "bomp", "bench", "trace" ],
                         architectures = [ "x86_64" ]
                       }

in
  [ build template { target = "bomp_sync", cFiles = [ "sync.c" ] },
    build template { target = "bomp_cpu_bound", cFiles = [ "cpu_bound.c" ] },
    build template { target = "bomp_test", cFiles = [ "test.c" ] }
  ]
)))),
("./usr/tests/thctest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/thctest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/thctest/Hakefile" a in
{-# LINE 1 "../usr/tests/thctest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for THCTest
-- 
--------------------------------------------------------------------------

[ 
  build application { target = "thctest",
                      cFiles = [ "thctest.c" ],
                      addLibraries = [ "thc" ] }
]
)))),
("./usr/tests/yield_test/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/yield_test/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/yield_test/Hakefile" a in
{-# LINE 1 "../usr/tests/yield_test/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/yield_test
--
--------------------------------------------------------------------------

[ build application { target = "yield_test", cFiles = [ "yield_test.c" ] } ]
)))),
("./usr/tests/timer/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/timer/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/timer/Hakefile" a in
{-# LINE 1 "../usr/tests/timer/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/timer
--
--------------------------------------------------------------------------

[ build application { target = "timer_test",
                      cFiles = [ "timer.c" ],
                      addLibraries = [ "timer" ],
                      flounderDefs = [ "timer" ]
                    }
]
)))),
("./usr/tests/ata_rw28_test/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/ata_rw28_test/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/ata_rw28_test/Hakefile" a in
{-# LINE 1 "../usr/tests/ata_rw28_test/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetsstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/drivers/ahci
-- 
--------------------------------------------------------------------------

[ build application { target = "ata_rw28_test",
                      cFiles = [ "ata_rw28_test.c" ],
                      flounderDefs = [ "ata_rw28" ],
                      flounderBindings = [ "ahci_mgmt", "ata_rw28" ],
                      flounderExtraBindings = [ ("ata_rw28", ["ahci", "rpcclient"]) ],
                      mackerelDevices = [ "ahci_port", "ata_identify" ],
                      addLibraries = [ "ahci" ]
                    }
]

)))),
("./usr/tests/skb_tests/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/skb_tests/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/skb_tests/Hakefile" a in
{-# LINE 1 "../usr/tests/skb_tests/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/skb_tests
--
--------------------------------------------------------------------------

[ build application { target = "mem_affinity" ,
                      cFiles = [ "mem_affinity.c" ],
                      addLibraries = [ "skb" ]
                    }
]
)))),
("./usr/tests/semaphores/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/semaphores/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/semaphores/Hakefile" a in
{-# LINE 1 "../usr/tests/semaphores/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for schedtest
-- 
--------------------------------------------------------------------------

[ build application { target = "semtest",
                      cFiles = [ "semtest.c" ],
		              addLibraries = [ "posixcompat", "vfs_nonfs", "ahci", "octopus", "thc" ]
                    }
]
)))),
("./usr/tests/spantest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/spantest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/spantest/Hakefile" a in
{-# LINE 1 "../usr/tests/spantest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/spantest
--
--------------------------------------------------------------------------

[ build application { target = "spantest" ,
                      cFiles = [ "spantest.c" ],
                      addLibraries = [ "trace" ],
                      flounderDefs = [ "monitor" ]
                    }
]
)))),
("./usr/tests/tls/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/tls/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/tls/Hakefile" a in
{-# LINE 1 "../usr/tests/tls/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for tlstest
-- 
--------------------------------------------------------------------------

[ build application { target = "tlstest",
                      cFiles = [ "tls.c", "tls2.c" ]
                    }
]
)))),
("./usr/tests/testconcurrent/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/testconcurrent/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/testconcurrent/Hakefile" a in
{-# LINE 1 "../usr/tests/testconcurrent/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/testconcurrent
--
--------------------------------------------------------------------------

[ build application { target = "testconcurrent" ,
                      cFiles = [ "testconcurrent.c" ],
                      addLibraries = [ "concurrent" ],
                      architectures = [ "x86_64" ]
                    }
]
)))),
("./usr/tests/octopus/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/octopus/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/octopus/Hakefile" a in
{-# LINE 1 "../usr/tests/octopus/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for /usr/tests/octopus
--
--------------------------------------------------------------------------

[ build application { target = "d2getset",
                      cFiles = [ "d2getset.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },

  build application { target = "d2getset_idcap",
                      cFiles = [ "d2getset_idcap.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },

  build application { target = "d2pubsub",
                      cFiles = [ "d2pubsub.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },

  
  build application { target = "d2trigger",
                      cFiles = [ "d2trigger.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },

  build application { target = "d2barrier",
                      cFiles = [ "d2barrier.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },
                                        
  build application { target = "d2locksimple",
                      cFiles = [ "d2locksimple.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },

  build application { target = "d2read",
                      cFiles = [ "d2read.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },
                    
  build application { target = "d2sem",
                      cFiles = [ "d2sem.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },
                    
  build application { target = "d2bench",
                      cFiles = [ "d2bench.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc", "bench" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },

  build application { target = "d2bench1",
                      cFiles = [ "d2bench1.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc", "bench" ],
                      architectures = [ "x86_64", "x86_32" ]
                    },
                    
  build application { target = "d2bench2",
                      cFiles = [ "d2bench2.c" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      addLibraries = [ "octopus", "octopus_parser", "thc", "bench" ],
                      architectures = [ "x86_64", "x86_32" ]
                    }    
]
)))),
("./usr/tests/vspace_tests/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/vspace_tests/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/vspace_tests/Hakefile" a in
{-# LINE 1 "../usr/tests/vspace_tests/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for hellotest
-- 
--------------------------------------------------------------------------

[ build application { target = "vspace_tests",
                      cFiles = [ "vspace_dump.c", "main.c" ]
                 }
]
)))),
("./usr/tests/tweedtest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/tweedtest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/tweedtest/Hakefile" a in
{-# LINE 1 "../usr/tests/tweedtest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for TweedTest
-- 
--------------------------------------------------------------------------

[ build application { target = "tweedtest",
                  cFiles = [ "tweedtest.c" ],
                  addLibraries = [ "tweed", "trace", "spawndomain" ],
                  architectures = [ arch ]
                }
  | arch <- [ "x86_64" ] ]
)))),
("./usr/tests/xcorecaps/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/xcorecaps/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/xcorecaps/Hakefile" a in
{-# LINE 1 "../usr/tests/xcorecaps/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for TweedTest
-- 
--------------------------------------------------------------------------

[ 
  build application { target = "xcorecap",
                      cFiles = [ "xcorecap.c" ],
                      flounderBindings = [ "xcorecap" ]
                    },
  build application { target = "xcorecapserv",
                      cFiles = [ "xcorecapserv.c" ],
                      flounderBindings = [ "xcorecap" ]
                    }
])))),
("./usr/tests/pagertest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/pagertest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/pagertest/Hakefile" a in
{-# LINE 1 "../usr/tests/pagertest/Hakefile" #-}

--------------------------------------------------------------------------
-- Copyright (c) 2012 ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/pagertest
--
--------------------------------------------------------------------------

[ build application { target = "pagertest",
                      cFiles = [ "pagertest.c" ],
                      addLibraries = [ "pager" ]
                    }
]
)))),
("./usr/tests/memtest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/memtest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/memtest/Hakefile" a in
{-# LINE 1 "../usr/tests/memtest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/tests/memtest
--
-- Diverse memory tests.
--
--------------------------------------------------------------------------

[ build application { target = "memtest", cFiles = [ "memtest.c" ] },
  build application { target = "mem_alloc", cFiles = [ "mem_alloc.c" ],
		      addLibraries = [ "rcce_nobulk" ] },
  build application { target = "mem_free", cFiles = [ "mem_free.c" ] }
]
)))),
("./usr/tests/perfmontest/Hakefile", (let find fn arg = (fn allfiles "./usr/tests/perfmontest/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/tests/perfmontest/Hakefile" a in
{-# LINE 1 "../usr/tests/perfmontest/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/perfmontest
--
--------------------------------------------------------------------------

[ build application { target = "perfmontest",
                      cFiles = [ "perfmon.c" ]
                    }
]
)))),
("./usr/rcce/pingpong/Hakefile", (let find fn arg = (fn allfiles "./usr/rcce/pingpong/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/rcce/pingpong/Hakefile" a in
{-# LINE 1 "../usr/rcce/pingpong/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/rcce/pingpong
--
--------------------------------------------------------------------------

[ build application { target = "rcce_pingpong",
                      cFiles = [ "RCCE_pingpong.c" ],
                      addLibraries = [ "rcce_nobulk" ]
                    }
]
)))),
("./usr/rcce/bt/Hakefile", (let find fn arg = (fn allfiles "./usr/rcce/bt/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/rcce/bt/Hakefile" a in
{-# LINE 1 "../usr/rcce/bt/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/rcce/bt
--
--------------------------------------------------------------------------

let commonCFlags = [ "-DCOPPERRIDGE", "-Wno-unused",
                     "-Wno-old-style-definition",
                     "-Wno-implicit-function-declaration",
                     "-Wno-missing-prototypes", "-Wno-shadow",
                     "-Wno-missing-declarations", "-Wno-parentheses",
                     "-Wno-strict-prototypes", "-Wno-uninitialized",
                     "-Wno-error" ]
    template = application {
      cFiles = [ "bt.c", "add.c", "adi.c", "copy_faces.c", "define.c",
                 "error.c", "exact_rhs.c", "exact_solution.c",
                 "initialize.c", "make_set.c", "print_results.c",
                 "rhs.c", "set_constants.c", "setup_mpi.c",
                 "solve_subs.c", "timers.c", "verify.c", "x_solve.c",
                 "y_solve.c", "z_solve.c" ],
      addLibraries = [ "rcce"] ,
      addIncludes = [ "/include/rcce" ]
      }

  in
 [ build template { target = "rcce_bt_A1",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=1 -Wno-array-bounds" : commonCFlags },
   build template { target = "rcce_bt_A4",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=4" : commonCFlags },
   build template { target = "rcce_bt_A9",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=9" : commonCFlags },
   build template { target = "rcce_bt_A16",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=16" : commonCFlags },
   build template { target = "rcce_bt_A25",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=25" : commonCFlags },
   build template { target = "rcce_bt_A36",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=36" : commonCFlags }
 ]
)))),
("./usr/rcce/ipi_test/Hakefile", (let find fn arg = (fn allfiles "./usr/rcce/ipi_test/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/rcce/ipi_test/Hakefile" a in
{-# LINE 1 "../usr/rcce/ipi_test/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/rcce/ipi_test
--
--------------------------------------------------------------------------

[ build application { target = "ipirc_test",
                      cFiles = [ "mainrc.c" ],
                      addLibraries = [ "rcce_nobulk" ],
		      flounderDefs = [ "rcce" ]
                    }
]
)))),
("./usr/rcce/lu/Hakefile", (let find fn arg = (fn allfiles "./usr/rcce/lu/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/rcce/lu/Hakefile" a in
{-# LINE 1 "../usr/rcce/lu/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
--------------------------------------------------------------------------

let commonCFlags = [ "-DCOPPERRIDGE", "-Wno-unused",
                     "-Wno-strict-prototypes", "-Wno-shadow",
                     "-Wno-old-style-definition",
                     "-Wno-redundant-decls",
                     "-Wno-missing-declarations",
                     "-Wno-missing-prototypes", "-Wno-uninitialized" ]
    template = application {
      cFiles = [ "blts.c", "buts.c", "erhs.c", "error.c", "exact.c",
                 "exchange_1.c", "exchange_3.c", "exchange_4.c",
                 "exchange_5.c", "exchange_6.c", "init_comm.c",
                 "jacld.c", "jacu.c", "l2norm.c", "lu.c", 
                 "neighbors.c", "nodedim.c", "pintgr.c",
                 "print_results.c", "proc_grid.c", "read_input.c",
                 "rhs.c", "setbv.c", "setcoeff.c", "setiv.c",
                 "ssor.c", "subdomain.c", "timers.c", "verify.c" ],
      addLibraries = [ "rcce"],
      addIncludes = [ "/include/rcce" ]
      }

  in
 [ build template { target = "rcce_lu_A1",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=1" : commonCFlags },
   build template { target = "rcce_lu_A2",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=2" : commonCFlags },
   build template { target = "rcce_lu_A4",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=4" : commonCFlags },
   build template { target = "rcce_lu_A8",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=8" : commonCFlags },
   build template { target = "rcce_lu_A16",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=16" : commonCFlags },
   build template { target = "rcce_lu_A32",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=32" : commonCFlags },
   build template { target = "rcce_lu_A64",
                    addCFlags = "-DUSE_CLASS=A -DUSE_CPUS=64" : commonCFlags },
   build template { target = "rcce_lu_S1",
                    addCFlags = "-DUSE_CLASS=S -DUSE_CPUS=1" : commonCFlags },
   build template { target = "rcce_lu_S2",
                    addCFlags = "-DUSE_CLASS=S -DUSE_CPUS=2" : commonCFlags },
   build template { target = "rcce_lu_S4",
                    addCFlags = "-DUSE_CLASS=S -DUSE_CPUS=4" : commonCFlags },
   build template { target = "rcce_lu_S8",
                    addCFlags = "-DUSE_CLASS=S -DUSE_CPUS=8" : commonCFlags },
   build template { target = "rcce_lu_S16",
                    addCFlags = "-DUSE_CLASS=S -DUSE_CPUS=16" : commonCFlags },
   build template { target = "rcce_lu_S32",
                    addCFlags = "-DUSE_CLASS=S -DUSE_CPUS=32" : commonCFlags }
  ]
)))),
("./usr/acpi/Hakefile", (let find fn arg = (fn allfiles "./usr/acpi/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/acpi/Hakefile" a in
{-# LINE 1 "../usr/acpi/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/pci
--
--------------------------------------------------------------------------

[  build application { target = "acpi",
                       flounderBindings = [ "acpi" ],
                       flounderDefs = [ "monitor", "monitor_blocking", "octopus" ],
                       flounderExtraDefs = [ ("monitor_blocking", ["rpcclient"]) ],
                       flounderTHCStubs = [ "octopus" ],
                       mackerelDevices = [ "acpi_ec", "lpc_ioapic" ],                      
                       cFiles = [ "acpi_main.c", "acpi.c","acpica_osglue.c",
                                  "video.c", "buttons.c", "acpi_ec.c",
                                  "acpi_service.c", "interrupts.c", 
                                  "ioapic.c" ],
                       addIncludes = [ "acpica/include" ],
                       addCFlags = [ "-Wno-redundant-decls" ],
                       addLibraries = [ "mm", "acpica", "skb", "pciconfspace", 
                                        "octopus", "octopus_parser", "thc", "acpi_client" ],
                       architectures = [ "x86_64", "x86_32" ] }
]
)))),
("./usr/acpi/acpica/Hakefile", (let find fn arg = (fn allfiles "./usr/acpi/acpica/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/acpi/acpica/Hakefile" a in
{-# LINE 1 "../usr/acpi/acpica/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for usr/pci/acpica
-- 
--------------------------------------------------------------------------
let subdirs = [ "dispatcher",
                "events",
                "executer",
                "hardware",
                "namespace",
                "parser",
                "resources",
                "tables",
                "utilities" ]
in
  [ build library { target = "acpica",
  		    cFiles = concat [ find cInDir sd | sd <- subdirs ],
                    addCFlags =  [ "-Wno-redundant-decls", 
                                   "-fno-strict-aliasing" ],
                    addIncludes = [ "include" ],
                    architectures = [ "x86_64", "x86_32" ]
                  }
  ]

)))),
("./usr/mem_serv_dist/Hakefile", (let find fn arg = (fn allfiles "./usr/mem_serv_dist/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/mem_serv_dist/Hakefile" a in
{-# LINE 1 "../usr/mem_serv_dist/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/mem_serv_dist
--
--------------------------------------------------------------------------

[
-- no stealing
  build application { target = "mem_serv_dist_ns",
                      cFiles = [ "mem_serv.c", "no_steal.c", "hybrid_support.c", "skb.c", "args.c", "memtest_trace.c" ],
                      flounderDefs = [ "monitor", "monitor_blocking", "mem", "spawn" ],
                      flounderExtraDefs = [ ("mem", ["rpcclient"]), 
                                                ("spawn", ["rpcclient"]),
                                                ("monitor_blocking", ["rpcclient"])],
                      addLibraries = [ "mm", "trace", "skb", "dist" ]
                    },
-- hybrid thc
  build application { target = "mem_serv_dist",
		      cFiles = [ "mem_serv.c", "steal.c", "hybrid_support.c", "skb.c", "args.c", "memtest_trace.c" ],
                      flounderDefs = [ "monitor", "monitor_blocking", "mem", "spawn" ],
                      flounderTHCStubs = [ "mem" ],
                      flounderExtraDefs = [ ("mem", ["rpcclient"]),
                                                ("spawn", ["rpcclient"]), 
                                                ("monitor_blocking", ["rpcclient"])],
                      addLibraries = [ "mm", "trace", "skb", "dist", "thc" ],
		      architectures = [ "x86_64", "x86_32", "scc" ]
                    },

-- fully thc
  build application { target = "mem_serv_dist_thc",
		      cFiles = [ "mem_serv.c", "steal.c", "thc_support.c", "skb.c", "args.c", "memtest_trace.c" ],
                      flounderDefs = [ "monitor", "monitor_blocking", "mem", "spawn" ],
                      flounderTHCStubs = [ "mem" ],
                      flounderExtraDefs = [ ("mem", ["rpcclient"]),
                                                ("spawn", ["rpcclient"]),
                                                ("monitor_blocking", ["rpcclient"])],
                      addLibraries = [ "mm", "trace", "skb", "dist", "thc" ],
                      architectures = [ "x86_64", "x86_32", "scc" ]
                    },
  build application { target = "mem_bench",
  		      cFiles = [ "mem_bench.c", "memtest_trace.c" ],
    		      addLibraries = [ "trace" ]
		    },		
  build application { target = "mem_bench_2",
  		      cFiles = [ "mem_bench_2.c", "memtest_trace.c" ],
    		      addLibraries = [ "trace" ]
		    },		
  build application { target = "mem_bench_3",
  		      cFiles = [ "mem_bench_3.c", "sleep.c", "memtest_trace.c" ],
    		      addLibraries = [ "trace", "bench" ]
		    },
  build application { target = "mem_bench_4",
  		      cFiles = [ "mem_bench_4.c", "sleep.c", "memtest_trace.c" ],
    		      addLibraries = [ "trace", "bench" ]
		    },
  build application { target = "mem_bench_5",
  		      cFiles = [ "mem_bench_5.c", "sleep.c", "memtest_trace.c" ],
    		      addLibraries = [ "trace", "bench" ]
		    },
  build application { target = "mem_bench_6",
  		      cFiles = [ "mem_bench_6.c", "sleep.c", "memtest_trace.c" ],
    		      addLibraries = [ "trace", "bench" ]
		    }
]
)))),
("./usr/init_null/Hakefile", (let find fn arg = (fn allfiles "./usr/init_null/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/init_null/Hakefile" a in
{-# LINE 1 "../usr/init_null/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/init
--
--------------------------------------------------------------------------

[ build application { target = "init_null",
  		      cFiles = [ "init_null.c" ],
                      addLinkFlags = [ "-e _start_init"],
		      addLibraries = [ "mm", "getopt", "trace", "elf" ],
		      architectures = allArchitectures
                    }
]
)))),
("./usr/skb/Hakefile", (let find fn arg = (fn allfiles "./usr/skb/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/skb/Hakefile" a in
{-# LINE 1 "../usr/skb/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/skb
--
--------------------------------------------------------------------------

let ramfs_files = find inDir "eclipse_kernel/lib" ".eco"
                  ++
                  find inDir "programs" ".pl"
                  ++
                  find inDir "external_libraries/lib" ".eco"
    ramdisk = "skb_ramfs.cpio.gz"
    args arch = application {
                        target = "skb",
  		                cFiles = [ "skb_main.c", "skb_service.c", "queue.c",
                                   "octopus/code_generator.c",
                                   "octopus/predicates.c", "octopus/skb_query.c", 
                                   "octopus/skiplist.c", "octopus/fnv.c", "octopus/bitfield.c" ],
                        -- some include files cause problems...
                        omitCFlags = [ "-Wshadow", "-Wstrict-prototypes" ],
                        -- force optimisations on, without them we blow the stack
                        addCFlags = [ "-O2" ],
                        flounderBindings = [ "skb", "octopus" ],
                        addIncludes = [ "eclipse_kernel/src"],
                        addLibraries = libDeps [ "eclipse", "shm", "dummies",
                                                 "icsolver", "vfs",
                                                 "posixcompat", "hashtable", "pcre", 
                                                 "octopus_server", "octopus_parser", "skb",
                                                 "bench", "dmalloc" ],
                       architectures = [ arch ]
                }
in
  [ Rules [build (args arch) | arch <- [ "x86_64", "x86_32" ]],
    Rule ( [ Str "bash",
             In SrcTree "src" "skripts/mkcpio",
             NoDep SrcTree "src" "", Out "root" ramdisk]
             ++ [ In SrcTree "src" f | f <- ramfs_files ] )
  ]
)))),
("./usr/skb/testapps/Hakefile", (let find fn arg = (fn allfiles "./usr/skb/testapps/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/skb/testapps/Hakefile" a in
{-# LINE 1 "../usr/skb/testapps/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/skb/testapps
--
--------------------------------------------------------------------------

[ build application { target = "matrix", 
                      cFiles = [ "matrix.c" ],
                      addLibraries = [ "skb" ]
                    },
  build application { target = "map", 
                      cFiles = [ "map.c" ],
                      flounderDefs = [ "skb_map" ],
                      addLibraries = [ "skb" ]
                    },

  build application { target = "threadalloc", 
                      cFiles = [ "threadalloc.c" ],
                      addLibraries = [ "skb", "posixcompat" ]
                    },

  build application { target = "writemem", 
                      cFiles = [ "writemem.c" ]
                    },

  build application { target = "cryptotest", 
                      cFiles = [ "cryptotest.c" ],
                      addLibraries = [ "crypto", "posixcompat" ],
                      addIncludes = [ "openssl-1.0.0d/include" ]
                    },

  build application { target = "speed", 
                      cFiles = [ "speed.c", "apps.c" ],
                  omitCFlags = [ "-Werror", "-Wshadow",
                                 "-Wstrict-prototypes",
                                 "-Wold-style-definition",
                                 "-Wmissing-prototypes",
                                 "-Wmissing-declarations",
                                 "-Wmissing-field-initializers",
                                 "-Wredundant-decls", "-std=c99" ],
                      addLibraries = [ "crypto", "posixcompat",
                                       "vfs", "nfs", "timer", "lwip" ],
                      addIncludes = [ "openssl" ]
                    }
]
)))),
("./usr/skb/icparc_solver/Hakefile", (let find fn arg = (fn allfiles "./usr/skb/icparc_solver/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/skb/icparc_solver/Hakefile" a in
{-# LINE 1 "../usr/skb/icparc_solver/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/skb/icparc_solver
--
--------------------------------------------------------------------------

[ build library { target = "icsolver", 
                  cFiles = [ "ic.c", "bitmap.c", "edge_finder.c", "eregex.c" ],
                  -- force optimisations on, without them we blow the stack
                  addCFlags = [ "-O2" ] ++ if Config.libc == "newlib"
                                           then ["-DHAVE_FINITE"]
                                           else [],
                  addIncludes = [ "/usr/skb/eclipse_kernel/src" ],
                  omitCFlags =[ "-Werror", "-Wall", "-Wshadow",
                                "-Wstrict-prototypes",
                                "-Wold-style-definition",
                                "-Wmissing-prototypes",
                                "-Wmissing-declarations",
                                "-Wmissing-field-initializers",
                                "-Wredundant-decls", "-std=c99" ],
                  architectures = [ "x86_64", "x86_32", "scc" ]
                    }
]

)))),
("./usr/skb/Shm/src/Hakefile", (let find fn arg = (fn allfiles "./usr/skb/Shm/src/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/skb/Shm/src/Hakefile" a in
{-# LINE 1 "../usr/skb/Shm/src/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/skb/Shm/src/
--
--------------------------------------------------------------------------

[ build library { target = "shm",
                  -- force optimisations on, without them we blow the stack
                  addCFlags = [ "-O2" ],
  	          cFiles = [ "alloc.c", "mutex.c", "private_mem.c",
                             "shared_mem.c", "shmem_base.c", 
                             "lock_barrelfish.c" ],
                  omitCFlags = [ "-Werror", "-Wshadow",
                                 "-Wstrict-prototypes",
                                 "-Wold-style-definition",
                                 "-Wmissing-prototypes",
                                 "-Wmissing-declarations",
                                 "-Wmissing-field-initializers",
                                 "-Wredundant-decls", "-std=c99" ],
                 architectures = [ "x86_64", "x86_32", "scc" ]
                }
]
)))),
("./usr/skb/eclipse_kernel/src/Hakefile", (let find fn arg = (fn allfiles "./usr/skb/eclipse_kernel/src/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/skb/eclipse_kernel/src/Hakefile" a in
{-# LINE 1 "../usr/skb/eclipse_kernel/src/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/skb/eclipse_kernel/src
--
--------------------------------------------------------------------------

let includes = ["../../include" ]

    unflags= [ "-Werror", "-Wshadow", "-Wstrict-prototypes",
               "-Wold-style-definition", "-Wmissing-prototypes",
               "-Wmissing-declarations",
               "-Wmissing-field-initializers", "-Wredundant-decls",
               "-std=c99" ]

in
  [ build library { target = "eclipse", 
                    -- force optimisations on, without them we blow the stack
                    addCFlags = [ "-O2", "-DPRINTAM" ] ++
                                if Config.libc == "newlib"
                                then ["-DHAVE_FINITE"]
                                else [],
                    cFiles = [ "dict.c", "read.c", "lex.c", "emu.c",
  	                       "proc_desc.c", "bip_tconv.c",
  	                       "io_barrelfish.c", "write.c",
  	                       "bip_comp.c", "mem.c", "operator.c",
  	                       "bip_record.c", "bip_bag.c",
  	                       "bip_heapevents.c", "bip_shelf.c",
  	                       "bip_store.c", "bip_array.c",
  	                       "bip_strings.c", "bip_db.c",
  	                       "property.c", "bip_io.c",
  	                       "procedure.c", "handle.c", "bigrat.c",
  	                       "bip_module.c", "bip_control.c",
  	                       "bip_delay.c", "bip_domain.c",
  	                       "elipsys_fd.c", "code.c", "init.c",
  	                       "emu_c_env.c", "emu_util.c", "error.c",
  	                       "external.c", "gc_stacks.c",
  	                       "printam.c", "addrmap.c",
  	                       "eclipsedir.c", "embed.c",
  	                       "os_support.c", "intervals.c",
  	                       "bip_arith.c", "bip_misc.c",
  	                       "bip_load.c", "handlers.c"],
                  addIncludes = includes,
                  omitCFlags = unflags,
                  architectures = [ "x86_64", "x86_32", "scc" ]
                },
    build library { target = "dummies",
                    cFiles = [ "lib1.c", "lib2.c", "lib3.c", "lib4.c",
                               "lib5.c", "lib6.c", "lib7.c",
                               "dummy_mps.c", "dummy_par.c",
                               "dummy_upcalls.c", "dummy_wm.c",
                               "whereami_default.c", "dummy_bigrat.c" ],
                  addIncludes = includes,
                  omitCFlags = unflags,
                  architectures = [ "x86_64", "x86_32", "scc" ]
                  }
  ]
)))),
("./usr/skb/skb_simple/Hakefile", (let find fn arg = (fn allfiles "./usr/skb/skb_simple/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/skb/skb_simple/Hakefile" a in
{-# LINE 1 "../usr/skb/skb_simple/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/skb/skb_simple
--
--------------------------------------------------------------------------

[  build application { target = "skb",
                       flounderBindings = [ "octopus" ],
                       flounderDefs = [ "monitor", "monitor_blocking", "octopus" ],
                       flounderExtraDefs = [ ("monitor_blocking", ["rpcclient"]) ],
                       mackerelDevices = [ "acpi_ec", "lpc_ioapic" ],                      
                       cFiles = [ "main.c", "octopus_stubs.c" ],
                       addLibraries = [ "octopus_server", "octopus_parser" ],
                       architectures = [ "armv5", "armv7","armv7-m", "xscale", "scc" ]
   }
]
)))),
("./usr/skb/measurement/Hakefile", (let find fn arg = (fn allfiles "./usr/skb/measurement/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/skb/measurement/Hakefile" a in
{-# LINE 1 "../usr/skb/measurement/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/skb/measurement
--
--------------------------------------------------------------------------

[ build application { target = "datagatherer", 
                      cFiles = [ "datagatherer.c", "cpuid.c",
                                 "running_cores.c" ],
                      addIncludes = [ "/include/cpuid" ],
                      flounderDefs = [ "monitor" ],
                      mackerelDevices = [ "cpuid" ],
                      addLibraries = [ "skb" ]
                    }
]
)))),
("./usr/monitor/Hakefile", (let find fn arg = (fn allfiles "./usr/monitor/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/monitor/Hakefile" a in
{-# LINE 1 "../usr/monitor/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/monitor
--
--------------------------------------------------------------------------

[(let
     arch_dir = "arch" ./. archFamily arch

     arch_dirs "x86_32" = [ arch_dir, "arch/x86" ]
     arch_dirs "x86_64" = [ arch_dir, "arch/x86" ]
     arch_dirs "scc"    = [ arch_dir, "arch/x86" ]
     arch_dirs _        = [ arch_dir ]

     rcap_db = case Config.rcap_db of
                        Config.RCAP_DB_NULL   -> "rcap_db_null.c"
                        Config.RCAP_DB_CENTRAL-> "rcap_db_central.c"
                        Config.RCAP_DB_TWOPC  -> "rcap_db_twopc.c"
     rcap_db_libs = case Config.rcap_db of
                        Config.RCAP_DB_NULL   -> []
                        Config.RCAP_DB_CENTRAL-> [ "collections" ]
                        Config.RCAP_DB_TWOPC  -> [ "collections", "cap_predicates" ]
     common_srcs = [ "trace_support.c", "bfscope_support.c", "ram_alloc.c", "inter.c", "spawn.c", "invocations.c", "iref.c",
                     "main.c", "monitor_server.c", "monitor_rpc_server.c",
		     "boot.c", "queue.c", "domain.c", "intermon_bindings.c",
		     "rcap_db_common.c", "resource_ctrl.c", "timing.c", rcap_db ]

     arch_srcs "x86_32"  = [ "arch/x86/boot.c", "arch/x86/inter.c", "arch/x86/monitor_server.c", "arch/x86/notify_ipi.c" ]
     arch_srcs "x86_64"  = [ "arch/x86/boot.c", "arch/x86/inter.c", "arch/x86/monitor_server.c", "arch/x86/notify_ipi.c" ]
     arch_srcs "scc"     = [ "arch/scc/boot.c", "arch/scc/inter.c", "arch/x86/monitor_server.c", "arch/x86/notify_ipi.c" ]
     arch_srcs "armv5"   = [ "arch/arm/boot.c", "arch/arm/inter.c", "arch/arm/monitor_server.c" ]
     arch_srcs "xscale"  = [ "arch/arm/boot.c", "arch/arm/inter.c", "arch/arm/monitor_server.c" ]
     arch_srcs "armv7"   = [ "arch/armv7/boot.c", "arch/armv7/inter.c", "arch/armv7/monitor_server.c", "arch/armv7/notify_ipi.c" ]
     arch_srcs "armv7-m"   = [ "arch/armv7/boot.c", "arch/armv7/inter.c", "arch/armv7/monitor_server.c", "arch/armv7/notify_ipi.c" ]
     arch_srcs _         = []

     idc_srcs = concat $ map getsrcs $ optInterconnectDrivers $ options arch
          where
            getsrcs "ump" = [ "ump_support.c" ]
            getsrcs "multihop" = [ "multihop_support.c" ]
            getsrcs _     = []
            
     idc_libraries = concat $ map getsrcs $ optInterconnectDrivers $ options arch
          where
            getsrcs "multihop" = [ "collections" ]
            getsrcs _     = []
                     
  in
    build application { target = "monitor",
                        architectures = [arch],
                        cFiles = common_srcs ++ arch_srcs arch ++ idc_srcs,
                        flounderDefs = [ "mem", "monitor", "monitor_blocking" ],
                        flounderBindings = [ "monitor_mem", "intermon" ],
                        flounderExtraBindings = [ ("monitor", ["loopback"]),
                                                  ("monitor_mem", ["rpcclient"]),
                                                  ("mem", ["rpcclient"]) ],
                        addLinkFlags = [ "-e _start_init" ],
                        addIncludes = [ "include" ./. a | a <- arch_dirs arch ],
                        addLibraries = (
 			    [ "spawndomain", "bench", "trace", "elf" ]
                            ++ rcap_db_libs ++ idc_libraries)
                      }
 ) | arch <- allArchitectures ]
)))),
("./usr/netd/Hakefile", (let find fn arg = (fn allfiles "./usr/netd/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/netd/Hakefile" a in
{-# LINE 1 "../usr/netd/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/netd
--
--------------------------------------------------------------------------

[ build application { target = "netd",
  cFiles = [ "main.c", "lwipinit.c", "ARP_lookup_service.c" ],
                      flounderBindings = [ "net_ARP" ],
                      flounderDefs = [ "net_ARP" ],
		      addLibraries = [ "lwip", "contmng", "procon", "timer",
                      "trace" ]
                    }
]

)))),
("./usr/fbdemo/Hakefile", (let find fn arg = (fn allfiles "./usr/fbdemo/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/fbdemo/Hakefile" a in
{-# LINE 1 "../usr/fbdemo/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/fbdemo
--
--------------------------------------------------------------------------

[ build application { target = "fbdemo",
  		      cFiles = [ "demo.c", "main.c" ],
  		      flounderBindings = [ "fb" ],
		      flounderExtraBindings = [ ("fb", ["rpcclient"]) ],
          omitCFlags = [ "-Wredundant-decls" ]
                    }
]
)))),
("./usr/webserver/Hakefile", (let find fn arg = (fn allfiles "./usr/webserver/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/webserver/Hakefile" a in
{-# LINE 1 "../usr/webserver/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/webserver
--
--------------------------------------------------------------------------

[ build application { target = "webserver",
                      cFiles = [ "main.c", "http_cache.c", "http_server.c" ],
                      addLibraries = [ "lwip", "contmng", "procon", "nfs",
                      "timer", "trace" ]
                    }
]
)))),
("./usr/chips/Hakefile", (let find fn arg = (fn allfiles "./usr/chips/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/chips/Hakefile" a in
{-# LINE 1 "../usr/chips/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/chips
--
--------------------------------------------------------------------------

[ build application { cFiles = [ "framework.c", "filter.c", "hashtable.c", "queue.c" ],
                      flounderBindings = [ "nameservice" ],
                      flounderDefs = [ "monitor", "nameservice" ],
                      target = "chips" 
                    }
]
)))),
("./usr/bcached/Hakefile", (let find fn arg = (fn allfiles "./usr/bcached/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bcached/Hakefile" a in
{-# LINE 1 "../usr/bcached/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bcached
--
--------------------------------------------------------------------------

[ build application { target = "bcached",
  		      cFiles = [ "main.c", "service.c" ],
		      addLibraries = [ "dmalloc", "hashtable" ],
  		      flounderBindings = [ "bcache" ]
                    }
]
)))),
("./usr/bench/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/Hakefile" a in
{-# LINE 1 "../usr/bench/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bench
--
--------------------------------------------------------------------------

[ build application { target = "bench", cFiles = [ "bench.c"] },

  build application { target = "ipi_bench", cFiles = ["ipi_bench.c"] },

  build application { target = "stsc_bench",
                      cFiles = ["stsc_bench.c"],
                      addLibraries = [ "rcce" ]
                    },

  build application { target = "lrpc_bench",
                      cFiles = [ "lrpc_bench.c" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },

  build application { target = "tsc_bench",
                      cFiles = [ "tsc_bench.c" ],
                      addCFlags = [ "-DCACHE_BENCH" ],
                      flounderBindings = [ "hpet" ],
                      addLibraries = ["bench"]
                    }
]
)))),
("./usr/bench/vfs/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/vfs/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/vfs/Hakefile" a in
{-# LINE 1 "../usr/bench/vfs/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for /usr/bench/vfs
--
--------------------------------------------------------------------------

[ build application { target = "vfs_bench",
                      cFiles = [ "vfs_bench.c" ],
                      addLibraries = libDeps [ "bench", "vfs" ]
                    }
]
)))),
("./usr/bench/flounder_stubs/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/flounder_stubs/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/flounder_stubs/Hakefile" a in
{-# LINE 1 "../usr/bench/flounder_stubs/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bench/flounder_stubs
--
--------------------------------------------------------------------------

[
  build application { target = "flounder_stubs_empty_bench",
  		      cFiles = [ "empty.c" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },

  build application { target = "flounder_stubs_buffer_bench",
  		      cFiles = [ "buffer.c" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },

  build application { target = "flounder_stubs_payload_bench",
  		      cFiles = [ "payload.c" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },
                      
  build application { target = "flounder_stubs_payload32_bench",
  		      cFiles = [ "payload32.c" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },

  build application { target = "flounder_stubs_payload64_bench",
  		      cFiles = [ "payload64.c" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] }

  -- build application { target = "flounder_stubs_payload_glue_bench",
  --  		      cFiles = [ "payload_glue.c" ],
  --		      flounderBindings = [ "glue_bench" ],
  --                  addLibraries = ["bench"] }
]
)))),
("./usr/bench/mdb_bench/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/mdb_bench/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/mdb_bench/Hakefile" a in
{-# LINE 1 "../usr/bench/mdb_bench/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bench/mdbbench
--
--------------------------------------------------------------------------

[
  build application { target = "mdb_bench",
                      cFiles = [ "main.c", "reset.c", "measure.c" ],
                      addLibraries = [ "mdb", "cap_predicates", "bench" ],
                      addIncludes = [ "/include/barrelfish" ]
                    },
  build application { target = "mdb_bench_old",
                      cFiles = [ "main.c", "old_mdb.c", "reset.c", "measure.c" ],
                      addLibraries = [ "mdb", "cap_predicates", "bench" ],
                      addIncludes = [ "/include/barrelfish" ],
                      addCFlags = [ "-DOLD_MDB" ]
                    }
]
)))),
("./usr/bench/shared_mem_clock/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/shared_mem_clock/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/shared_mem_clock/Hakefile" a in
{-# LINE 1 "../usr/bench/shared_mem_clock/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bench
--
--------------------------------------------------------------------------

[
  build application { target = "shared_mem_clock_bench",
                      cFiles = [ "bench.c" , "clock.c" ],
                      flounderDefs = [ "monitor" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] }
]
)))),
("./usr/bench/freemem_bench/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/freemem_bench/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/freemem_bench/Hakefile" a in
{-# LINE 1 "../usr/bench/freemem_bench/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for hellotest
-- 
--------------------------------------------------------------------------

[ build application { target = "freemem",
                      cFiles = [ "freemem.c" ]
                 }
]
)))),
("./usr/bench/xcorecap/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/xcorecap/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/xcorecap/Hakefile" a in
{-# LINE 1 "../usr/bench/xcorecap/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for xcorecap benchmark
-- 
--------------------------------------------------------------------------

[ 
  build application { target = "xcorecapbench",
                      cFiles = [ "xcorecapbench.c" ],
		      addLibraries = [ "bench" ],
                      flounderBindings = [ "xcorecapbench" ]
                    }
]
)))),
("./usr/bench/ump_bench/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/ump_bench/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/ump_bench/Hakefile" a in
{-# LINE 1 "../usr/bench/ump_bench/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bench/ump_bench
--
--------------------------------------------------------------------------

[ build application { target = "ump_latency", cFiles = [ "main.c" , "latency.c" ],
                      flounderDefs = [ "monitor" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },

  build application { target = "ump_latency_cache", cFiles = [ "main.c" , "latency_cache.c" ],
                      flounderDefs = [ "monitor" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },

  build application { target = "ump_throughput", cFiles = [ "main.c" , "throughput.c" ],
                      flounderDefs = [ "monitor" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },

  build application { target = "ump_send", cFiles = [ "main.c" , "send.c" ],
                      flounderDefs = [ "monitor" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },

  build application { target = "ump_receive", cFiles = [ "main.c" , "receive.c" ],
                      flounderDefs = [ "monitor" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] },

  build application { target = "ump_exchange", cFiles = [ "exchange.c" ],
                      flounderDefs = [ "monitor" ],
                      flounderBindings = [ "bench" ],
                      addLibraries = ["bench"] }
]
)))),
("./usr/bench/bomp_progress/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/bomp_progress/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/bomp_progress/Hakefile" a in
{-# LINE 1 "../usr/bench/bomp_progress/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bomp_benchmark
--
--------------------------------------------------------------------------

let template = application { 
                         addCFlags = [ "-DBOMP", "-fopenmp" ],
                         addIncludes = [ "/lib/bomp" ],
                         addLibraries = [ "bomp", "bench", "trace" ],
                         architectures = [ "x86_64" ]
                       }

in
  [ build template { target = "bomp_sync_progress", cFiles = [ "sync.c" ] },
    build template { target = "bomp_cpu_bound_progress", cFiles = [ "cpu_bound.c" ] }
  ]
)))),
("./usr/bench/scheduling/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/scheduling/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/scheduling/Hakefile" a in
{-# LINE 1 "../usr/bench/scheduling/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bomp_benchmark
--
--------------------------------------------------------------------------

let template = application { 
      addLibraries = [ "bench" ],
      architectures = [ "x86_64" ]
      }
in
  [ build template { target = "phases_bench", cFiles = [ "phases.c" ] },
    build template { target = "apicdrift_bench", cFiles = [ "clockdrift.c" ] },
    build template { target = "phases_scale_bench", cFiles = [ "phases_scale.c" ] },
    build application {
                target = "placement_bench",
                cFiles = [ "placement.c" ],
                addLibraries = [ "bench", "rcce" ],
                architectures = [ "x86_64" ]
              }
  ]
)))),
("./usr/bench/ahci/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/ahci/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/ahci/Hakefile" a in
{-# LINE 1 "../usr/bench/ahci/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for bmp_bench
-- 
--------------------------------------------------------------------------

[
build application { target = "ahci_bench",
                  cFiles = [ "main.c" ],
                  addLibraries = libDeps [ "pci", "trace", "skb", "vfs"]
                 }
]
)))),
("./usr/bench/thc_v_flounder/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/thc_v_flounder/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/thc_v_flounder/Hakefile" a in
{-# LINE 1 "../usr/bench/thc_v_flounder/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/bench/thc_stubs
--
--------------------------------------------------------------------------

[
  build application { target = "thc_v_flounder_empty",
  		      cFiles = [ "empty.c" ],
                      flounderDefs = [ "monitor" ],
                      flounderBindings = [ "bench" ],
                      flounderTHCStubs = [ "bench" ],
                      addLibraries = [ "bench", "thc" ] }
]
)))),
("./usr/bench/mem_bench/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/mem_bench/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/mem_bench/Hakefile" a in
{-# LINE 1 "../usr/bench/mem_bench/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for bmp_bench
-- 
--------------------------------------------------------------------------

[
build application { target = "mem_kpi_bench",
                  cFiles = [ "membench.c" ],
                  addLibraries = [ "bench"]
                  }
]
)))),
("./usr/bench/channel_cost/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/channel_cost/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/channel_cost/Hakefile" a in
{-# LINE 1 "../usr/bench/channel_cost/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for bmp_bench
-- 
--------------------------------------------------------------------------

[
build application { target = "channel_cost_bench",
                  cFiles = [ "channel_cost.c" ],
                  flounderBindings = [ "ping_pong" ],
                  addLibraries = [ "bench" , "trace" ]
                 }
]
)))),
("./usr/bench/bulk_bench/Hakefile", (let find fn arg = (fn allfiles "./usr/bench/bulk_bench/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/bench/bulk_bench/Hakefile" a in
{-# LINE 1 "../usr/bench/bulk_bench/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/slideshow
--
--------------------------------------------------------------------------

[ build application { target = "bulkbench",
                      cFiles = [ "bulkbench.c" ],
		      flounderDefs = [ "bulkbench" ],
		      flounderBindings = [ "bulkbench" ],
		      addLibraries = [ "bench" ]
                    } ]
)))),
("./usr/routing_setup/Hakefile", (let find fn arg = (fn allfiles "./usr/routing_setup/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/routing_setup/Hakefile" a in
{-# LINE 1 "../usr/routing_setup/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for RTS (routing table set-up)
-- 
--------------------------------------------------------------------------

[
build application { target = "routing_setup",
                  cFiles = [ "rts.c" ],
                  flounderDefs = [ "monitor", "skb" ],
		      	  addLibraries = ["skb"]
                 }
])))),
("./usr/lshw/Hakefile", (let find fn arg = (fn allfiles "./usr/lshw/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/lshw/Hakefile" a in
{-# LINE 1 "../usr/lshw/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/lshw
--
--------------------------------------------------------------------------

[ build application { target = "lshw",
                      cFiles = [ "lshw.c" ],
                      addLibraries = libDeps [ "octopus" ],
                      flounderDefs = [ "octopus" ],
                      flounderBindings = [ "octopus" ],
                      flounderTHCStubs = [ "octopus" ],
                      architectures = thcArchitectures
        }
]
)))),
("./usr/pixels/Hakefile", (let find fn arg = (fn allfiles "./usr/pixels/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/pixels/Hakefile" a in
{-# LINE 1 "../usr/pixels/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/pixels
--
--------------------------------------------------------------------------

[ build application { target = "pixels",
  		      cFiles = [ "pixels.c" ],
		      addLibraries = [ "barrelfish", "trace" ],
  		      flounderBindings = [ "pixels" ]
                    }
]
)))),
("./usr/openssh/Hakefile", (let find fn arg = (fn allfiles "./usr/openssh/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/openssh/Hakefile" a in
{-# LINE 1 "../usr/openssh/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for usr/openssh/
--
--------------------------------------------------------------------------

-- create ramdisk of all files contained in /usr/openssh/ramdisk
-- the files are placed under /etc/ssh in the running system

let ramdisk_files = find inDir "ramdisk" ""
    ramdisk = "sshd_ramfs.cpio.gz"
in
  [ Rule ( [ Str "bash",
             In SrcTree "src" "mkcpio",
             NoDep SrcTree "src" "", Out "root" ramdisk]
             ++ [ In SrcTree "src" f | f <- ramdisk_files ] )
  ]
)))),
("./usr/openssh/src/Hakefile", (let find fn arg = (fn allfiles "./usr/openssh/src/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/openssh/src/Hakefile" a in
{-# LINE 1 "../usr/openssh/src/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for usr/openssh/src
--
--------------------------------------------------------------------------

[
    build library { target = "ssh",
                    addCFlags = [ "-Wpointer-arith",
                                  "-Wuninitialized",
                                  "-Wsign-compare",
                                  "-Wformat-security",
                                  "-Wno-pointer-sign",
                                  "-Wno-unused-result",
                                  "-fno-strict-aliasing",
                                  "-D_FORTIFY_SOURCE=2",
                                  "-DHAVE_CONFIG_H" ],
                    omitCFlags = [ "-Wredundant-decls",
                                   "-Werror" ],
                    cFiles = [ "acss.c",
                               "addrmatch.c",
                               "atomicio.c",
                               "authfd.c",
                               "authfile.c",
                               "bufaux.c",
                               "bufbn.c",
                               "bufec.c",
                               "buffer.c",
                               "canohost.c",
                               "channels.c",
                               "cipher-3des1.c",
                               "cipher-acss.c",
                               "cipher-aes.c",
                               "cipher-bf1.c",
                               "cipher.c",
                               "cipher-ctr.c",
                               "cleanup.c",
                               "compat.c",
                               "compress.c",
                               "crc32.c",
                               "deattack.c",
                               "dh.c",
                               "dispatch.c",
                               "dns.c",
                               "entropy.c",
                               "fatal.c",
                               "gss-genr.c",
                               "hostfile.c",
                               "jpake.c",
                               "kex.c",
                               "kexdh.c",
                               "kexdhc.c",
                               "kexecdh.c",
                               "kexecdhc.c",
                               "kexgex.c",
                               "kexgexc.c",
                               "key.c",
                               "log.c",
                               "mac.c",
                               "match.c",
                               "md-sha256.c",
                               "misc.c",
                               "moduli.c",
                               "monitor_fdpass.c",
                               "msg.c",
                               "nchan.c",
                               "packet.c",
                               "progressmeter.c",
                               "readpass.c",
                               "rijndael.c",
                               "rsa.c",
                               "schnorr.c",
                               "ssh-dss.c",
                               "ssh-ecdsa.c",
                               "ssh-pkcs11.c",
                               "ssh-rsa.c",
                               "ttymodes.c",
                               "uidswap.c",
                               "umac.c",
                               "uuencode.c",
                               "xmalloc.c"
                             ],
                    addIncludes = [ "../" ] -- for config.h
                  },

    build application { target = "sshd",
                        addCFlags = [ "-Wpointer-arith",
                                      "-Wuninitialized",
                                      "-Wsign-compare",
                                      "-Wformat-security",
                                      "-Wno-pointer-sign",
                                      "-Wno-unused-result",
                                      "-fno-strict-aliasing",
                                      "-D_FORTIFY_SOURCE=2",
                                      "-DHAVE_CONFIG_H" ],
                        omitCFlags = [ "-Wredundant-decls",
                                       "-Werror" ],
                        cFiles = [ "audit-bsm.c",
                                   "audit.c",
                                   "audit-linux.c",
                                   "auth1.c",
                                   "auth2.c",
                                   "auth2-chall.c",
                                   "auth2-gss.c",
                                   "auth2-hostbased.c",
                                   "auth2-jpake.c",
                                   "auth2-kbdint.c",
                                   "auth2-none.c",
                                   "auth2-passwd.c",
                                   "auth2-pubkey.c",
                                   "auth-bsdauth.c",
                                   "auth.c",
                                   "auth-chall.c",
                                   "auth-krb5.c",
                                   "auth-options.c",
                                   "auth-pam.c",
                                   "auth-passwd.c",
                                   "auth-rhosts.c",
                                   "auth-rh-rsa.c",
                                   "auth-rsa.c",
                                   "auth-shadow.c",
                                   "auth-sia.c",
                                   "auth-skey.c",
                                   "groupaccess.c",
                                   "gss-serv.c",
                                   "gss-serv-krb5.c",
                                   "kexdhs.c",
                                   "kexecdhs.c",
                                   "kexgexs.c",
                                   "loginrec.c",
                                   "md5crypt.c",
                                   "monitor.c",
                                   "monitor_mm.c",
                                   "monitor_wrap.c",
                                   "platform.c",
                                   "roaming_common.c",
                                   "roaming_serv.c",
                                   "sandbox-darwin.c",
                                   "sandbox-null.c",
                                   "sandbox-rlimit.c",
                                   "sandbox-seccomp-filter.c",
                                   "sandbox-systrace.c",
                                   "servconf.c",
                                   "serverloop.c",
                                   "session.c",
                                   "sftp-common.c",
                                   "sftp-server.c",
                                   "sshd.c",
                                   "sshlogin.c",
                                   "sshpty.c"
                                 ],
                        addLibraries = libDeps [ "angler",
                                                 "crypto",
                                                 "lwip",
                                                 "openbsdcompat",
                                                 "posixcompat",
                                                 "ssh",
                                                 "vfs"
                                               ],
                        -- The library lwip is directly used for lwip_init_auto.
                        -- The library vfs is directly used for vfs_init.
                        addIncludes = [ "../" ] -- for config.h
                      },

    build application { target = "ssh-keygen",
                        addCFlags = [ "-Wpointer-arith",
                                      "-Wuninitialized",
                                      "-Wsign-compare",
                                      "-Wformat-security",
                                      "-Wno-pointer-sign",
                                      "-Wno-unused-result",
                                      "-fno-strict-aliasing",
                                      "-D_FORTIFY_SOURCE=2",
                                      "-DHAVE_CONFIG_H" ],
                        omitCFlags = [ "-Werror" ],
                        cFiles = [ "ssh-keygen.c" ],
                        addLibraries = libDeps [ "crypto",
                                                 "posixcompat",
                                                 "openbsdcompat",
                                                 "ssh"
                                               ],
                        addIncludes = [ "../" ] -- for config.h
                      }
]
)))),
("./usr/openssh/src/openbsd-compat/Hakefile", (let find fn arg = (fn allfiles "./usr/openssh/src/openbsd-compat/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./usr/openssh/src/openbsd-compat/Hakefile" a in
{-# LINE 1 "../usr/openssh/src/openbsd-compat/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for usr/openssh/src/openbsdcompat
--
--------------------------------------------------------------------------

[
    build library { target = "openbsdcompat",
                    addCFlags = [ "-Wpointer-arith",
                                  "-Wuninitialized",
                                  "-Wsign-compare",
                                  "-Wformat-security",
                                  "-Wno-pointer-sign",
                                  "-Wno-unused-result",
                                  "-fno-strict-aliasing",
                                  "-D_FORTIFY_SOURCE=2",
                                  "-DHAVE_CONFIG_H" ],
                    omitCFlags = [ "-Wredundant-decls",
                                   "-Wmissing-prototypes",
                                   "-Wmissing-declarations",
                                   "-Wold-style-definition",
                                   "-Werror" ],
                    cFiles = [ -- OPENBSD
                               "base64.c",
                               "basename.c",
                               "bindresvport.c",
                               "daemon.c",
                               "dirname.c",
                               "fmt_scaled.c",
                               "getcwd.c",
                               "getgrouplist.c",
                               "getopt.c",
                               "getrrsetbyname.c",
                               "glob.c",
                               "inet_aton.c",
                               "inet_ntoa.c",
                               "inet_ntop.c",
                               "mktemp.c",
                               "pwcache.c",
                               "readpassphrase.c",
                               "realpath.c",
                               "rresvport.c",
                               "setenv.c",
                               "setproctitle.c",
                               "sha2.c",
                               "sigact.c",
                               "strlcat.c",
                               "strlcpy.c",
                               "strmode.c",
                               "strnlen.c",
                               "strptime.c",
                               "strsep.c",
                               "strtonum.c",
                               "strtoll.c",
                               "strtoul.c",
                               "timingsafe_bcmp.c",
                               "vis.c",
                               -- COMPAT
                               "bsd-arc4random.c",
                               "bsd-asprintf.c",
                               "bsd-closefrom.c",
                               "bsd-cray.c",
                               "bsd-cygwin_util.c",
                               "bsd-getpeereid.c",
                               "getrrsetbyname-ldns.c",
                               "bsd-misc.c",
                               "bsd-nextstep.c",
                               "bsd-openpty.c",
                               "bsd-poll.c",
                               "bsd-snprintf.c",
                               "bsd-statvfs.c",
                               "bsd-waitpid.c",
                               "fake-rfc2553.c",
                               "openssl-compat.c",
                               "xmmap.c",
                               "xcrypt.c",
                               -- PORTS
                               "port-aix.c",
                               "port-irix.c",
                               "port-linux.c",
                               "port-solaris.c",
                               "port-tun.c",
                               "port-uw.c"
                               ],
                    addIncludes = [ "../",    -- for includes.h
                                    "../../"  -- for config.h
                                  ]
    }
]
)))),
("./lib/usb/Hakefile", (let find fn arg = (fn allfiles "./lib/usb/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/usb/Hakefile" a in
{-# LINE 1 "../lib/usb/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/memusb
-- 
--------------------------------------------------------------------------

[ build library { target = "usb", 
        cFiles = [ "class/usb_hub.c", 
                    "class/usb_hid.c", 
                    "usb_parse.c",
                    "usb_manager_client.c",
                    "usb_error.c",
                    "usb_device.c",
                    "usb_request.c", 
                    "usb_transfer.c" 
        ], flounderDefs = [ "usb_manager", "usb_driver" ],
        flounderBindings = [ "usb_manager", "usb_driver" ],
        flounderExtraBindings = [ ("usb_manager", ["rpcclient"]) ]
    } 
]
)))),
("./lib/vfs/Hakefile", (let find fn arg = (fn allfiles "./lib/vfs/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/vfs/Hakefile" a in
{-# LINE 1 "../lib/vfs/Hakefile" #-}

--------------------------------------------------------------------------
-- Copyright (c) 2007-2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/vfs
-- 
--------------------------------------------------------------------------

[ build library { target = "vfs",
                  cFiles = [ "vfs.c", "vfs_path.c", "fopen.c", "mmap.c",
                             "vfs_nfs.c", "vfs_ramfs.c", "cache.c",
                             "vfs_blockdevfs.c", "vfs_blockdevfs_ahci.c",
                             "vfs_blockdevfs_ata.c", "vfs_cache.c", "vfs_fat.c",
                             "vfs_fat_conv.c", "fdtab.c", "vfs_fd.c"
                           ],
                  mackerelDevices = [ "ata_identify", "fat_bpb", "fat16_ebpb",
                                      "fat32_ebpb", "fat_direntry", "ahci_port",
                                      "ahci_hba"
                                    ],
                  flounderBindings = [ "trivfs", "bcache", "ahci_mgmt", "ata_rw28" ],
                  flounderExtraBindings = [ ("trivfs", ["rpcclient"]),
                                            ("bcache", ["rpcclient"]),
                                            ("ahci_mgmt", ["rpcclient"]),
                                            ("ata_rw28", ["ahci", "rpcclient"])
                                          ],
                  flounderDefs = [ "monitor" ]
                },
  build library { target = "vfs_nonfs",
                  cFiles = [ "vfs.c", "vfs_path.c", "fopen.c", "vfs_ramfs.c",
                             "cache.c", "vfs_blockdevfs.c",
                             "vfs_blockdevfs_ahci.c", "vfs_blockdevfs_ata.c",
                             "vfs_cache.c", "vfs_fat.c", "vfs_fat_conv.c"
                           ],
                  addCFlags = [ "-DDISABLE_NFS" ],
                  mackerelDevices = [ "ata_identify", "fat_bpb", "fat16_ebpb",
                                      "fat32_ebpb", "fat_direntry", "ahci_port",
                                      "ahci_hba"
                                    ],
                  flounderBindings = [ "trivfs", "bcache", "ahci_mgmt" ],
                  flounderExtraBindings = [ ("trivfs", ["rpcclient"]),
                                            ("bcache", ["rpcclient"]),
                                            ("ahci_mgmt", ["rpcclient"]),
                                            ("ata_rw28", ["ahci", "rpcclient"])
                                          ],
                  flounderDefs = [ "monitor" ]
                }
]
)))),
("./lib/dmalloc/Hakefile", (let find fn arg = (fn allfiles "./lib/dmalloc/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/dmalloc/Hakefile" a in
{-# LINE 1 "../lib/dmalloc/Hakefile" #-}

--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/dmalloc
-- 
--------------------------------------------------------------------------

[ build library { target = "dmalloc",
  		  cFiles = [ "dmalloc.c" ]
                }
]
)))),
("./lib/cxx/Hakefile", (let find fn arg = (fn allfiles "./lib/cxx/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/cxx/Hakefile" a in
{-# LINE 1 "../lib/cxx/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /lib/cxx
--
--------------------------------------------------------------------------
[(
  let subdirs =  [ "src" ]
      args = library { target = "cxx",
                    cxxFiles = concat [ find cxxInDir dir | dir <- subdirs ],
                    architectures = [a],
                    omitCxxFlags = [ "-Werror", "-Wshadow", "-Wmissing-declarations",
                                     "-Wmissing-field-initializers", "-Wredundant-decls" ],
                    addCxxFlags = [ "-Wno-unused-parameter", "-Wwrite-strings",
                                    "-Wno-long-long" ]
                  }
      defaultopts = libGetOptionsForArch a args
  in
    Rules [Rules [compileCxxFile defaultopts s | s <- (Args.cxxFiles args)],
           staticLibrary defaultopts (Args.target args) (allObjectPaths defaultopts args) [] ]
) | a <- [ "x86_64" ] ]
)))),
("./lib/pci/Hakefile", (let find fn arg = (fn allfiles "./lib/pci/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/pci/Hakefile" a in
{-# LINE 1 "../lib/pci/Hakefile" #-}

--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/pci
-- 
--------------------------------------------------------------------------

[ build library { target = "pci",
                  cFiles = [ "mem.c", "pci_client.c" ],
                  flounderBindings = [ "pci" ],
                  flounderExtraBindings = [ ("pci", ["rpcclient"]) ],
                  flounderExtraDefs = [ ("monitor_blocking",["rpcclient"]) ],
                  architectures = [ "x86_64", "x86_32" ]
                },
  
  -- XXX: This library is a bit weird right now.
  -- I added this to avoid code duplication in acpi/pci because they both have to
  -- read/write the PCI configuration space (see acpi_osglue.c).
  -- It would be best if we can completely avoid doing any PCI stuff in ACPI
  build library { target = "pciconfspace",
                  flounderExtraDefs = [ ("acpi", ["rpcclient"]) ],
                  cFiles = [ "confspace/pci_confspace.c", "confspace/pcie_confspace.c" ],
                  architectures = [ "x86_64", "x86_32" ]
                }
]
)))),
("./lib/getopt/Hakefile", (let find fn arg = (fn allfiles "./lib/getopt/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/getopt/Hakefile" a in
{-# LINE 1 "../lib/getopt/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/getopt
-- 
--------------------------------------------------------------------------

[ build library { target = "getopt", cFiles = [ "getopt.c" ] } ]

)))),
("./lib/dist/Hakefile", (let find fn arg = (fn allfiles "./lib/dist/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/dist/Hakefile" a in
{-# LINE 1 "../lib/dist/Hakefile" #-}

--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/dist
-- 
--------------------------------------------------------------------------

[ build library { target = "dist",
  		  cFiles = [ "barrier.c", "args.c", "skb.c", "service.c", 
		  	     "start.c" ],
                  addLibraries = [ "skb" ]
                }
]
)))),
("./lib/bomp/Hakefile", (let find fn arg = (fn allfiles "./lib/bomp/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/bomp/Hakefile" a in
{-# LINE 1 "../lib/bomp/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/bomp
-- 
--------------------------------------------------------------------------

[ build library { target = "bomp", 
                  cFiles = [ "bf_backend.c", "processing.c", "parallel.c", 
                             "omp.c" ]
                } 
] 

)))),
("./lib/bfdmuxvm/Hakefile", (let find fn arg = (fn allfiles "./lib/bfdmuxvm/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/bfdmuxvm/Hakefile" a in
{-# LINE 1 "../lib/bfdmuxvm/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/bfdmuxvm
--
--------------------------------------------------------------------------

[ build library { target = "bfdmuxvm",
                  cFiles = [ "vm.c" ]
                }
]
)))),
("./lib/pcre/Hakefile", (let find fn arg = (fn allfiles "./lib/pcre/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/pcre/Hakefile" a in
{-# LINE 1 "../lib/pcre/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/zlib
-- 
--------------------------------------------------------------------------

[ build library { target = "pcre",
                  cFiles = [ "pcre_chartables.c", "pcre_compile.c", "pcre_config.c", 
                             "pcre_dfa_exec.c", "pcre_exec.c", "pcre_fullinfo.c", 
                             "pcre_get.c", "pcre_globals.c", "pcre_info.c", 
                             "pcre_maketables.c", "pcre_newline.c", "pcre_ord2utf8.c", 
                             "pcreposix.c", "pcre_refcount.c", "pcre_study.c", 
                             "pcre_tables.c", "pcre_try_flipped.c", "pcre_ucd.c",
                             "pcre_valid_utf8.c", "pcre_version.c", "pcre_xclass.c" ],
                  addCFlags = [ "-DHAVE_CONFIG_H" ]
                }
]
)))),
("./lib/net_queue_manager/Hakefile", (let find fn arg = (fn allfiles "./lib/net_queue_manager/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/net_queue_manager/Hakefile" a in
{-# LINE 1 "../lib/net_queue_manager/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/net_queue_manager
--
--------------------------------------------------------------------------

[ build library { target = "net_queue_manager",
                  cFiles = [ "queue_manager.c", "frag.c",
                        "net_soft_filters_srv_impl.c", "QM_benchmark.c" ],
                  flounderBindings = [ "net_queue_manager",
                                       "net_soft_filters" ],
                  addLibraries = [ "contmng", "procon", "bfdmuxvm"] }
]
)))),
("./lib/crt/Hakefile", (let find fn arg = (fn allfiles "./lib/crt/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/crt/Hakefile" a in
{-# LINE 1 "../lib/crt/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/crt
-- 
--------------------------------------------------------------------------

-- Description of crt*.o files generated:
-- crt0.o: startup for all C/C++ programs
-- crtbegin.o .ctors section header (for C++ ABI compatibility)
-- crtend.o .ctors section footer (for C++ ABI compatibility)

[(
let 
    opts = (options arch) { 
             extraDependencies = [ Dep BuildTree arch "/include/asmoffsets.h" ],
             extraDefines = [ "-Wno-array-bounds" ]
           }
    adir = "arch" ./. archFamily arch
in
    Rules [assembleSFile opts (adir  ./. "crt0.S"),
           copy opts (adir ./. "crt0.o") "/lib/crt0.o",
           compileCFile opts ("crtbegin.c"),
           copy opts "crtbegin.o" "/lib/crtbegin.o",
           compileCFile opts ("crtend.c"),
           copy opts "crtend.o" "/lib/crtend.o" ]
) | arch <- allArchitectures ]
)))),
("./lib/oldc/Hakefile", (let find fn arg = (fn allfiles "./lib/oldc/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/oldc/Hakefile" a in
{-# LINE 1 "../lib/oldc/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /lib/c
--
--------------------------------------------------------------------------
if Config.libc == "oldc" then
[(
  let
      -- architecture independent source files
      generic_src = [ "src" ./. f | f <- [
        "asctime.c",    "fseek.c",         "getchar.c",   "strncpy.c",
        "assert.c",     "ftell.c",         "getenv.c",    "rewind.c",   "strpbrk.c",
        "calloc.c",     "fwrite.c",        "getopt.c",    "scanf.c",    "strrchr.c",
        "clearerr.c",   "gdtoa/dmisc.c",   "gmtime.c",    "setbuf.c",   "strspn.c",
        "clock.c",      "gdtoa/dtoa.c",    "locale.c",    "snprintf.c", "strstr.c",
        "difftime.c",   "gdtoa/gdtoa.c",   "localtime.c", "sprintf.c",  "strtok.c",
        "errno.c",      "gdtoa/gethex.c",  "malloc.c",    "strtol.c",   "fileno.c",
        "exit.c",       "gdtoa/gmisc.c",   "memchr.c",    "_srefill.c", "strtoll.c",
        "fclose.c",     "gdtoa/hd_init.c", "memcmp.c",    "sscanf.c",   "strtoul.c",
        "feof.c",       "gdtoa/_hdtoa.c",  "memcpy.c",    "strcat.c",   "system.c",
        "ferror.c",     "gdtoa/hexnan.c",  "memmove.c",   "strchr.c",
        "fflush.c",     "gdtoa/_hldtoa.c", "memset.c",    "strcmp.c",   "tmpfile.c",
        "fgetc.c",      "gdtoa/_ldtoa.c",  "mktime.c",    "strcoll.c",  "ungetc.c",
        "fgets.c",      "gdtoa/misc.c",    "perror.c",    "strcpy.c",   "vfprintf.c",
        "fpclassify.c", "gdtoa/smisc.c",   "printf.c",    "strcspn.c",  "vfscanf.c",
        "fprintf.c",    "gdtoa/strtod.c",  "putchar.c",   "strdup.c",   "vprintf.c",
        "fputc.c",      "gdtoa/strtodg.c", "puts.c",      "strerror.c", "vsnprintf.c",
        "fputs.c",      "gdtoa/strtof.c",  "qsort.c",     "strftime.c", "xprintf.c",
        "_fread.c",     "gdtoa/strtord.c", "rand.c",      "strlen.c",   "xprintf_float.c",
        "fread.c",      "gdtoa/sum.c",     "realloc.c",   "strncat.c",  "xprintf_int.c",
        "fscanf.c",     "gdtoa/ulp.c",     "strncmp.c",  "xprintf_str.c",
        "msgcat.c", "strlcpy.c", "strtold.c", "strtoull.c", "strxfrm.c",
        "swprintf.c", "vsscanf.c", "vswprintf.c", "wcscmp.c", "wcscoll.c", "wcscpy.c",
        "wcslen.c", "wcsncpy.c", "wcsxfrm.c", "wmemchr.c", "wmemcmp.c", "wmemcpy.c",
        "wmemmove.c", "wmemset.c", "bsearch.c",
        "fs-barrelfish/fopen.c", "sys-barrelfish/sys_exit.c", "sys-barrelfish/sys_stdio.c",
        "sys-barrelfish/sys_abort.c", "sys-barrelfish/sys_morecore.c",
        "sys-barrelfish/sys_tmpfile.c",
        "locale/ascii.c", "locale/btowc.c", "locale/collate.c",
        "locale/collcmp.c", "locale/fix_grouping.c", "locale/iswctype.c",
        "locale/lmessages.c", "locale/lmonetary.c", "locale/lnumeric.c",
        "locale/mblen.c", "locale/mbrlen.c", "locale/mbrtowc.c",
        "locale/mbsinit.c", "locale/mbsnrtowcs.c", "locale/mbsrtowcs.c",
        "locale/mbstowcs.c", "locale/mbtowc.c", "locale/nextwctype.c",
        "locale/nomacros.c", "locale/none.c", "locale/runetype.c",
        "locale/setlocale.c", "locale/table.c", "locale/tolower.c",
        "locale/toupper.c", "locale/wcrtomb.c", "locale/wcsftime.c",
        "locale/wcsnrtombs.c", "locale/wcsrtombs.c", "locale/wcstod.c",
        "locale/wcstof.c", "locale/wcstoimax.c", "locale/wcstol.c",
        "locale/wcstold.c", "locale/wcstoll.c", "locale/wcstombs.c",
        "locale/wcstoul.c", "locale/wcstoull.c", "locale/wcstoumax.c",
        "locale/wctob.c", "locale/wctomb.c", "locale/wctrans.c",
        "locale/wctype.c", "string/strcasecmp.c" ]]

      -- architecture-dependent source files (relative to arch family)
      archfam_src a = [ ("src/arch-" ++ a) ./. f | f <- archfam_files a ]
      archfam_files "x86_64" = ["flt_rounds.c"]
      archfam_files "x86_32" = ["flt_rounds.c"]
      archfam_files _ = []

      args = library { target = "oldc",
                    cFiles = generic_src ++ (archfam_src (archFamily a)),
                    architectures = [a],
                    addIncludes = [ "src/gdtoa", "src/gdtoa" ./. archFamily a,
                                    "src/locale" ],
                    addCFlags = [ "-DNO_FENV_H", "-DNO_ERRNO", "-DHAVE_WCHAR" ],
                    assemblyFiles = [ ("src/arch-" ++ archFamily a) ./. "jmp.S" ]
                  }
      defaultopts = libGetOptionsForArch a args

      -- build gdtoa with -fno-strict-aliasing
      mkopts s
        | isPrefixOf "src/gdtoa" s = defaultopts { extraFlags = ["-fno-strict-aliasing"] ++ (extraFlags defaultopts) }
        | otherwise                = defaultopts

      -- this is in the List module, but I can't do an import from a Hakefile. sigh.
      isPrefixOf              :: (Eq a) => [a] -> [a] -> Bool
      isPrefixOf [] _         =  True
      isPrefixOf _  []        =  False
      isPrefixOf (x:xs) (y:ys)=  x == y && isPrefixOf xs ys

  in
    Rules [Rules [compileCFile (mkopts s)  s | s <- (Args.cFiles args)],
           assembleSFiles defaultopts (Args.assemblyFiles args),
           staticLibrary defaultopts (Args.target args) (allObjectPaths defaultopts args) 
             [ libraryPath "msun" ] ]
) | a <- allArchitectures ]
else []
)))),
("./lib/oldc/msun/Hakefile", (let find fn arg = (fn allfiles "./lib/oldc/msun/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/oldc/msun/Hakefile" a in
{-# LINE 1 "../lib/oldc/msun/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/msun
--
--------------------------------------------------------------------------

if Config.libc == "oldc" then
[(
  let
    common_src = ["src" ./. f | f <- [
        "e_acos.c", "e_acosf.c", "e_acosh.c", "e_acoshf.c", "e_asin.c", "e_asinf.c",
        "e_atan2.c", "e_atan2f.c", "e_atanh.c", "e_atanhf.c", "e_cosh.c", "e_coshf.c", "e_exp.c",
        "e_expf.c", "e_fmod.c", "e_fmodf.c", "e_gamma.c", "e_gamma_r.c", "e_gammaf.c",
        "e_gammaf_r.c", "e_hypot.c", "e_hypotf.c", "e_j0.c", "e_j0f.c", "e_j1.c", "e_j1f.c",
        "e_jn.c", "e_jnf.c", "e_lgamma.c", "e_lgamma_r.c", "e_lgammaf.c", "e_lgammaf_r.c",
        "e_log.c", "e_log10.c", "e_log10f.c", "e_logf.c", "e_pow.c", "e_powf.c", "e_rem_pio2.c",
        "e_rem_pio2f.c", "e_remainder.c", "e_remainderf.c", "e_scalb.c", "e_scalbf.c",
        "e_sinh.c", "e_sinhf.c", "e_sqrt.c", "e_sqrtf.c",
        "k_cos.c", "k_cosf.c", "k_rem_pio2.c", "k_sin.c", "k_sinf.c",
        "k_tan.c", "k_tanf.c",
        "s_asinh.c", "s_asinhf.c", "s_atan.c", "s_atanf.c", "s_carg.c", "s_cargf.c", "s_cargl.c",
        "s_cbrt.c", "s_cbrtf.c", "s_ceil.c", "s_ceilf.c",
        "s_copysign.c", "s_copysignf.c", "s_cos.c", "s_cosf.c",
        "s_csqrt.c", "s_csqrtf.c", "s_erf.c", "s_erff.c",
        "s_exp2.c", "s_exp2f.c", "s_expm1.c", "s_expm1f.c", "s_fabsf.c", "s_fdim.c",
        "s_finite.c", "s_finitef.c",
        "s_floor.c", "s_floorf.c", "s_fma.c", "s_fmaf.c",
        "s_fmax.c", "s_fmaxf.c", "s_fmaxl.c", "s_fmin.c",
        "s_fminf.c", "s_fminl.c", "s_frexpf.c", "s_ilogb.c", "s_ilogbf.c",
        "s_ilogbl.c", "s_isfinite.c", "s_isinf.c", "s_isnormal.c",
        "s_llrint.c", "s_llrintf.c", "s_llround.c", "s_llroundf.c", "s_llroundl.c",
        "s_log1p.c", "s_log1pf.c", "s_logb.c", "s_logbf.c", "s_lrint.c", "s_lrintf.c",
        "s_lround.c", "s_lroundf.c", "s_lroundl.c", "s_modff.c",
        "s_nan.c", "s_nearbyint.c", "s_nextafter.c", "s_nextafterf.c",
        "s_nexttowardf.c", "s_remquo.c", "s_remquof.c",
        "s_rint.c", "s_rintf.c", "s_round.c", "s_roundf.c", "s_roundl.c",
        "s_scalbln.c", "s_scalbn.c", "s_scalbnf.c", "s_signbit.c",
        "s_signgam.c", "s_significand.c", "s_significandf.c", "s_sin.c", "s_sinf.c",
        "s_tan.c", "s_tanf.c", "s_tanh.c", "s_tanhf.c", "s_tgammaf.c", "s_trunc.c", "s_truncf.c",
        "w_cabs.c", "w_cabsf.c", "w_drem.c", "w_dremf.c",

        -- The BSD source of MSUN provides these but doenst compile them
        -- claiming that libc provides them, but in barrelfish we seem to need them
        "s_fabs.c", "s_frexp.c", "s_isnan.c", "s_ldexp.c", "s_modf.c"]]

    (longdouble_dir, arch_csrc, arch_asmsrc) = case a of
        "x86_64" -> ("ld80", ["amd64/fenv.c"], ["amd64" ./. f | f <- [
                        "e_remainderf.S", "e_sqrt.S", "s_llrintf.S",
                        "s_lrintf.S", "s_remquof.S", "s_scalbnf.S", "e_sqrtf.S",
                        "s_llrintl.S", "s_lrintl.S", "s_remquol.S",
                        "s_scalbnl.S", "e_sqrtl.S", "s_llrint.S", "s_lrint.S",
                        "s_remquo.S", "s_scalbn.S"]])
        _ -> ("", [], [])

    longdouble_src = if longdouble_dir == "" then [] else (
        [longdouble_dir ./. f | f <- [
                "invtrig.c", "k_cosl.c", "k_sinl.c", "k_tanl.c",
                "s_exp2l.c", "s_nanl.c"]]
        ++
        ["src" ./. f | f <- [
                "e_acosl.c", "e_asinl.c", "e_atan2l.c", "e_fmodl.c",
                "e_hypotl.c", "e_remainderl.c", "e_sqrtl.c",
                "s_atanl.c", "s_ceill.c", "s_cosl.c", "s_cprojl.c", "s_csqrtl.c",
                "s_floorl.c", "s_fmal.c",
                "s_frexpl.c", "s_logbl.c", "s_nextafterl.c", "s_nexttoward.c",
                "s_remquol.c", "s_rintl.c", "s_scalbnl.c",
                "s_sinl.c", "s_tanl.c", "s_truncl.c", "w_cabsl.c"]])
  in
    build library { target = "msun",
                  cFiles = arch_csrc ++ common_src ++ longdouble_src,
                  assemblyFiles = arch_asmsrc,
                  architectures = [ a ],
                  addIncludes = ["src"] ++ (
                          if longdouble_dir == "" then [] else [longdouble_dir])
                }
) | a <- allArchitectures ]
else []
)))),
("./lib/lwip/Hakefile", (let find fn arg = (fn allfiles "./lib/lwip/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/lwip/Hakefile" a in
{-# LINE 1 "../lib/lwip/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2011, 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for lib/lwip
--
--------------------------------------------------------------------------


let subdirs = [ "src/core", "src/core/ipv4", "src/barrelfish", "src/api" ]
    srcs = concat [ find cInDir sd | sd <- subdirs ]
           ++ [ "src/netif/bfeth.c", "src/netif/etharp.c", "src/sys_arch.c" ]
in
  [ build library { target = "lwip",
                    cFiles = srcs,
                    flounderBindings = [ "net_queue_manager", "net_ports",
                                "net_ARP" ],
                    omitCFlags = [ "-Werror" ],
                    flounderExtraBindings = [ ("net_ports", ["rpcclient"]),
                     ("net_ARP", ["rpcclient"]) ],
                    addCFlags =  [ "-Wno-redundant-decls",
                                   "-DBF_LWIP_CHAN_SUPPORT" ],
                    addIncludes = [ "src/barrelfish" ],
                    addLibraries = [ "contmng", "procon"]
                  }
  ]
)))),
("./lib/trace/Hakefile", (let find fn arg = (fn allfiles "./lib/trace/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/trace/Hakefile" a in
{-# LINE 1 "../lib/trace/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/trace
-- 
--------------------------------------------------------------------------

[ build library { 
	target = "trace",
	cFiles = [ "trace.c", "control.c" ],
	flounderDefs = [ "monitor" ]
} ]
)))),
("./lib/elf/Hakefile", (let find fn arg = (fn allfiles "./lib/elf/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/elf/Hakefile" a in
{-# LINE 1 "../lib/elf/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/elf
-- 
--------------------------------------------------------------------------

[
 build library { target = "elf", cFiles = [ "elf.c", "elf64.c", "elf32.c" ] },

 -- CPU driver version of ELF library. Built without SSE on x86.
 build library {
             target = "elf_kernel",
             cFiles = [ "elf.c", "elf64.c", "elf32.c" ],
             addCFlags = [ "-mno-mmx", "-mno-sse", "-mno-sse2",
                           "-mno-sse3", "-mno-ssse3", "-mno-sse4.1",
                           "-mno-sse4.2", "-mno-sse4", "-mno-sse4a",
                           "-mno-3dnow" ],
             architectures = [ "x86_64", "x86_32", "scc" ]
           }
]
)))),
("./lib/thc/Hakefile", (let find fn arg = (fn allfiles "./lib/thc/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/thc/Hakefile" a in
{-# LINE 1 "../lib/thc/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/thc
-- 
--------------------------------------------------------------------------

[ build library { target = "thc",
                  cFiles = [ "thc.c", "thcsync.c", "thcstubs.c" ]
                } ]
)))),
("./lib/angler/Hakefile", (let find fn arg = (fn allfiles "./lib/angler/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/angler/Hakefile" a in
{-# LINE 1 "../lib/angler/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for lib/angler
--
--------------------------------------------------------------------------

[ build library { target = "angler",
                  cFiles = [ "angler.c" ],
                  flounderDefs = [ "monitor" ],
                  flounderBindings = [ "octopus", "terminal_session" ],
                  flounderExtraDefs = [ ( "octopus", [ "rpcclient" ] ) ],
                  flounderExtraBindings = [ ( "terminal_session",
                                              [ "rpcclient" ] ) ]
                } ]
)))),
("./lib/cpio/Hakefile", (let find fn arg = (fn allfiles "./lib/cpio/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/cpio/Hakefile" a in
{-# LINE 1 "../lib/cpio/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/cpio
-- 
--------------------------------------------------------------------------

[ build library { target = "cpio", cFiles = [ "cpiobin.c" ] } ]
)))),
("./lib/term/Hakefile", (let find fn arg = (fn allfiles "./lib/term/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/term/Hakefile" a in
{-# LINE 1 "../lib/term/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2012, 2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for lib/term
--
--------------------------------------------------------------------------

[
    build library { target = "term_server",
                    cFiles = [ "server/server.c" ],
                    flounderBindings = [ "terminal",
                                         "terminal_config",
                                         "terminal_session" ],
                    flounderDefs = [ "monitor" ]
                  },

    build library { target = "term_client",
                    cFiles = [ "client/client.c",
                               "client/client_blocking.c",
                               "client/default_filters.c",
                               "client/default_triggers.c",
                               "client/filter.c",
                               "client/session.c",
                               "client/trigger.c" ],
                    addIncludes = [ "client/" ],
                    flounderBindings = [ "terminal",
                                         "terminal_config",
                                         "terminal_session" ],
                    flounderExtraBindings = [ ( "octopus", [ "rpcclient" ] ) ],
                    flounderDefs = [ "monitor", "octopus" ]
                  }
]
)))),
("./lib/ahci/Hakefile", (let find fn arg = (fn allfiles "./lib/ahci/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/ahci/Hakefile" a in
{-# LINE 1 "../lib/ahci/Hakefile" #-}

--------------------------------------------------------------------------
-- Copyright (c) 2007-2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/ahci
-- 
--------------------------------------------------------------------------

[ build library { target = "ahci",
                      cFiles = [ "ahci.c", "ahci_util.c", "sata_fis.c", "ahci_dma_pool.c" ],
                      flounderBindings = [ "ahci_mgmt" ],
                      flounderExtraBindings = [ ("ahci_mgmt", ["rpcclient"]) ],
                      mackerelDevices = [ "ata_identify", "ahci_port", "ahci_hba" ],
                      addLibraries = [ ]
                }
]
)))),
("./lib/x86emu/Hakefile", (let find fn arg = (fn allfiles "./lib/x86emu/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/x86emu/Hakefile" a in
{-# LINE 1 "../lib/x86emu/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/x86emu
-- 
--------------------------------------------------------------------------

[ build library { target = "x86emu",
                  cFiles = [ "debug.c", "decode.c", "fpu.c", "ops2.c",
    	                     "ops.c", "prim_ops.c", "sys.c"],
                  addCFlags = ["-Wno-shadow" ]
                }
]
)))),
("./lib/rcce/Hakefile", (let find fn arg = (fn allfiles "./lib/rcce/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/rcce/Hakefile" a in
{-# LINE 1 "../lib/rcce/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/rcce
-- 
--------------------------------------------------------------------------

[ build library { target = "rcce",
                  cFiles = [ "rcce.c", "RCCE_reduce.c", "RCCE_comm.c",
                             "RCCE_debug.c", "bcast.c", "ring_barriers.c" ],
                  addIncludes = [ "/include/rcce" ],
                  addCFlags = [ "-DCOPPERRIDGE", "-Wno-parentheses",
                                "-Wno-unused", "-DBULK_TRANSFER_ENABLED" ],
                  flounderDefs = [ "rcce", "monitor" ],
		  flounderBindings = [ "rcce" ]
                },
  build library { target = "rcce_nobulk",
                  cFiles = [ "rcce.c", "RCCE_reduce.c", "RCCE_comm.c",
                             "RCCE_debug.c", "bcast.c", "ring_barriers.c" ],
                  addIncludes = [ "/include/rcce" ],
                  addCFlags = [ "-DCOPPERRIDGE", "-Wno-parentheses",
                                "-Wno-unused" ],
                  flounderDefs = [ "rcce", "monitor" ],
		  flounderBindings = [ "rcce" ]
                }
]
)))),
("./lib/bfdmuxtools/Hakefile", (let find fn arg = (fn allfiles "./lib/bfdmuxtools/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/bfdmuxtools/Hakefile" a in
{-# LINE 1 "../lib/bfdmuxtools/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/bfdmuxtools
-- 
--------------------------------------------------------------------------

[ build library { target = "bfdmuxtools",
                  cFiles = [ "codegen.c", "opdefs.c", "tools.c"]
                }
]
)))),
("./lib/concurrent/Hakefile", (let find fn arg = (fn allfiles "./lib/concurrent/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/concurrent/Hakefile" a in
{-# LINE 1 "../lib/concurrent/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/concurrent
-- 
--------------------------------------------------------------------------

[ build library { target = "concurrent",
                  cFiles = [ "linked_list.c" ],
                  architectures = [ arch ]
                }
  | arch <- [ "x86_64" ] ]
)))),
("./lib/contmng/Hakefile", (let find fn arg = (fn allfiles "./lib/contmng/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/contmng/Hakefile" a in
{-# LINE 1 "../lib/contmng/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/contmng
--
--------------------------------------------------------------------------

[ build library { target = "contmng",
                  cFiles = [ "contmng.c", "netbench.c" ]
                }
]

)))),
("./lib/hashtable/Hakefile", (let find fn arg = (fn allfiles "./lib/hashtable/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/hashtable/Hakefile" a in
{-# LINE 1 "../lib/hashtable/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
--------------------------------------------------------------------------

[ build library { target = "hashtable",
                  cFiles = [ "hashtable.c" ]
                }
]
)))),
("./lib/skb/Hakefile", (let find fn arg = (fn allfiles "./lib/skb/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/skb/Hakefile" a in
{-# LINE 1 "../lib/skb/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/skb
-- 
--------------------------------------------------------------------------

[ build library { target = "skb",
                  cFiles = [ "skb.c", "skb_functions.c", "helper.c" ],
                  flounderBindings = [ "skb" ],
                  flounderExtraBindings = [ ("skb", ["rpcclient"]) ]
                }
]
)))),
("./lib/timer/Hakefile", (let find fn arg = (fn allfiles "./lib/timer/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/timer/Hakefile" a in
{-# LINE 1 "../lib/timer/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/timer
-- 
--------------------------------------------------------------------------

[ build library { target = "timer",
                  cFiles = [ "timer.c"],
                  flounderBindings = ["timer"]
                }
]
)))),
("./lib/collections/Hakefile", (let find fn arg = (fn allfiles "./lib/collections/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/collections/Hakefile" a in
{-# LINE 1 "../lib/collections/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/concurrent
-- 
--------------------------------------------------------------------------

[ build library { target = "collections",
                  cFiles = [ "list.c", "hash_table.c", "stack.c",
                             "flipbuffer.c" ]
                }
]
)))),
("./lib/net_device_manager/Hakefile", (let find fn arg = (fn allfiles "./lib/net_device_manager/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/net_device_manager/Hakefile" a in
{-# LINE 1 "../lib/net_device_manager/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/net_device_manager
--
--------------------------------------------------------------------------

[ build library { target = "net_device_manager",
                  cFiles = [ "port_service_impl.c", "device_manager.c",
                  "soft_filt_cl_impl.c", "portalloc.c" ],
                  flounderBindings = [ "net_soft_filters", "net_ports" ],
                  addLibraries = [ "contmng", "bfdmuxtools"
-- try to get rid of "lwip" as it is only used for hton[s/l]
                    , "lwip"
                  ]
                 }
]

)))),
("./lib/phoenix/Hakefile", (let find fn arg = (fn allfiles "./lib/phoenix/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/phoenix/Hakefile" a in
{-# LINE 1 "../lib/phoenix/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
--------------------------------------------------------------------------

[ build library { target = "phoenix",
                  cFiles = [ "iterator.c", "locality.c", "map_reduce.c",
                           "mcs.c", "memory.c", "processor.c", "pt_mutex.c",
                           "scheduler.c", "synch.c", "taskQ.c", "tpool.c" ],
		  omitCFlags = [ "-Wshadow", "-Wstrict-prototypes", 
                                 "-Wmissing-prototypes",
                                 "-Wmissing-declarations",
                                 "-Werror", "-Wold-style-definitions",
                                 "-Wmissing-field-initializers",
                                 "-Wredundant-decls", "-std=c99" ],
                  addCFlags = [ "-Wno-unused", 
                                "-Wno-old-style-definition", 
                                "-Wno-implicit-function-declaration", 
                                "-Wno-aggregate-return", "-std=gnu99" ],
                  architectures = [ "x86_64" ]
                }
]
)))),
("./lib/posixcompat/Hakefile", (let find fn arg = (fn allfiles "./lib/posixcompat/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/posixcompat/Hakefile" a in
{-# LINE 1 "../lib/posixcompat/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, 2011, 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for lib/posixcompat
-- 
--------------------------------------------------------------------------

[ build library { target = "posixcompat",
                  cFiles = [ "access.c",
                             "alarm.c",
                             "basename.c",
                             "chdir.c",
                             "chmod.c",
                             "chroot.c",
                             "close.c",
                             "creat.c",
                             "dirent.c",
                             "dirname.c",
                             "dlfcn.c",
                             "dup.c",
                             "_exit.c",
                             "fcntl.c",
                             "fstat.c",
                             "fsync.c",
                             "ftruncate.c",
                             "getcwd.c",
                             "getegid.c",
                             "geteuid.c",
                             "getgroups.c",
                             "gethostid.c",
                             "gethostname.c",
                             "getpid.c",
                             "getpwent.c",
                             "gettimeofday.c",
                             "grp.c",
                             "inheritance.c",
                             "ioctl.c",
                             "isatty.c",
                             "kill.c",
                             "link.c",
                             "lseek.c",
                             "mkdir.c",
                             "open.c",
                             "pipe.c",
                             "popen.c",
                             "pty.c",
                             "random.c",
                             "read.c",
                             "readlink.c",
                             "readv.c",
                             "remove.c",
                             "rename.c",
                             "rmdir.c",
                             "sbrk.c",
                             "select.c",
                             "semaphore.c",
                             "setitimer.c",
                             "setsid.c",
                             "shm.c",
                             "signal.c",
                             "sockets.c",
                             "stat.c",
                             "sysconf.c",
                             "termios.c",
                             "time.c",
                             "timegm.c",
                             "ttyname.c",
                             "umask.c",
                             "unlink.c",
                             "utime.c",
                             "wait.c",
                             "write.c" ],
                  flounderDefs = [ "unixsock", "octopus", "monitor" ],
                  flounderBindings = [ "unixsock", "octopus" ],
		  flounderExtraBindings = [ ("octopus", [ "rpcclient" ]) ],
                  flounderTHCStubs = [ "octopus" ]
                }
]
)))),
("./lib/tweed/Hakefile", (let find fn arg = (fn allfiles "./lib/tweed/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/tweed/Hakefile" a in
{-# LINE 1 "../lib/tweed/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/tweed
-- 
--------------------------------------------------------------------------

[ build library { target = "tweed",
                  cFiles = [ "tweed.c" ],
                  architectures = [ arch ]
                }
  | arch <- [ "x86_64" ] ]
  
)))),
("./lib/nfs/Hakefile", (let find fn arg = (fn allfiles "./lib/nfs/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/nfs/Hakefile" a in
{-# LINE 1 "../lib/nfs/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/nfs
-- 
--------------------------------------------------------------------------

[ build library { target = "nfs",
                  cFiles = [ "rpc.c", "xdr.c", "mount_xdr.c", "nfs_xdr.c",  
    	                     "portmap_xdr.c", "xdr_pbuf.c", "nfs.c" ]
                }
]
)))),
("./lib/zlib/Hakefile", (let find fn arg = (fn allfiles "./lib/zlib/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/zlib/Hakefile" a in
{-# LINE 1 "../lib/zlib/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/zlib
-- 
--------------------------------------------------------------------------

[ build library { target = "zlib",
                  -- gzio.c has been removed for missing fdopen()
                  -- call, which is POSIX.
                  cFiles = [ "adler32.c", "compress.c", "crc32.c", 
                             "uncompr.c", "deflate.c", "trees.c", 
                             "zutil.c", "inflate.c", "infback.c", 
                             "inftrees.c", "inffast.c" ],
                  addCFlags = [ "-Wno-old-style-definition" ]
                }
]
)))),
("./lib/bench/Hakefile", (let find fn arg = (fn allfiles "./lib/bench/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/bench/Hakefile" a in
{-# LINE 1 "../lib/bench/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/bench
-- 
--------------------------------------------------------------------------

[(let
     common_srcs = [ "bench.c" ]

     arch_srcs "x86_32"  	= [ "arch/x86/bench_arch.c" ]
     arch_srcs "x86_64"  	= [ "arch/x86/bench_arch.c" ]
     arch_srcs "arm"     	= [ "arch/arm/bench_arch.c" ]
     arch_srcs _         	= []
  in
    build library { target = "bench",
                    architectures = [arch],
                    cFiles = common_srcs ++ arch_srcs (archFamily arch)
                  }
 ) | arch <- allArchitectures ]
)))),
("./lib/octopus/Hakefile", (let find fn arg = (fn allfiles "./lib/octopus/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/octopus/Hakefile" a in
{-# LINE 1 "../lib/octopus/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/octopus
-- 
--------------------------------------------------------------------------

[
    build library { target = "octopus_parser",
                    addCFlags = [ "-O3",
                                  "-Wno-unused-value", 
                                  "-Wno-redundant-decls", 
                                  "-Wno-missing-declarations",
                                  "-Wno-missing-prototypes",
                                  "-Wno-implicit-function-declaration" ],
                    cFiles = [ "parser/ast.c", "parser/parse.c", 
                               "parser/scan.c", "parser/read.c" ] },
     -- no-missing-declarations & no-missing-prototypes Bug: 
     -- https://bugzilla.redhat.com/show_bug.cgi?id=612465
     -- no-implicit-function-declaration:
     -- warning: implicit declaration of function 'yylex'

     build library { target = "octopus",
                     addCFlags = [ "-O2" ],
                    cFiles = [ "client/octopus.c", "client/getset.c", 
                               "client/pubsub.c",
                               "client/barriers.c", "client/trigger.c",
                               "client/locking.c", "client/semaphores.c", 
                               "client/capability_storage.c", 
                               "client/strnatcmp.c" ],
                    flounderDefs = [ "octopus", "monitor" ],
                    flounderBindings = [ "octopus" ],
                    flounderExtraBindings = [ ("octopus", ["rpcclient"]) ],
                    flounderTHCStubs = [ "octopus" ],
                    addLibraries = ["octopus_parser", "thc"]
                  },
                  
    build library { target = "octopus_server",
                    addCFlags = [ "-O2" ],
                    cFiles = [ "server/service.c", "server/init.c", 
                               "server/queue.c", "server/capstorage.c" ],
                    flounderDefs = [ "octopus", "monitor" ],
                    flounderBindings = [ "octopus" ],
                    addLibraries = [ "skb", "hashtable" ] 
                   }
]
)))),
("./lib/procon/Hakefile", (let find fn arg = (fn allfiles "./lib/procon/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/procon/Hakefile" a in
{-# LINE 1 "../lib/procon/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/procon
--
--------------------------------------------------------------------------

[ build library { target = "procon",
                  cFiles = [ "procon.c"]
                }
]
)))),
("./lib/spawndomain/Hakefile", (let find fn arg = (fn allfiles "./lib/spawndomain/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/spawndomain/Hakefile" a in
{-# LINE 1 "../lib/spawndomain/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/spawndomain
-- 
--------------------------------------------------------------------------

[(let
     common_srcs = [ "spawn_vspace.c", "spawn.c", "getopt.c", "multiboot.c" ]

     arch_srcs "x86_32"  = [ "arch/x86/spawn_arch.c" ]
     arch_srcs "x86_64"  = [ "arch/x86/spawn_arch.c" ]
     arch_srcs "arm"     = [ "arch/arm/spawn_arch.c" ]
     arch_srcs _         = []

  in
    build library { target = "spawndomain",
                    cFiles = common_srcs ++ arch_srcs (archFamily arch),
                    addIncludes = [ "/lib/barrelfish/include/arch" 
                                    ./. archFamily arch ],
                    flounderDefs = [ "monitor" ],
                    architectures = [ arch ],
                    addLibraries = [ "trace" ]
                }
 )  | arch <- allArchitectures ]
)))),
("./lib/acpi_client/Hakefile", (let find fn arg = (fn allfiles "./lib/acpi_client/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/acpi_client/Hakefile" a in
{-# LINE 1 "../lib/acpi_client/Hakefile" #-}

--------------------------------------------------------------------------
-- Copyright (c) 2007-2010, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/pci
-- 
--------------------------------------------------------------------------

[ build library { target = "acpi_client",
                  cFiles = [ "acpi_client.c" ],
                  flounderBindings = [ "acpi" ],
                  flounderExtraBindings = [ ("acpi", ["rpcclient"]) ],
                  flounderExtraDefs = [ ("monitor_blocking", ["rpcclient"]) ],
                  architectures = [ "x86_64", "x86_32" ]
                }
]
)))),
("./lib/barrelfish/Hakefile", (let find fn arg = (fn allfiles "./lib/barrelfish/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/barrelfish/Hakefile" a in
{-# LINE 1 "../lib/barrelfish/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2012, ETH Zurich
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, CAB F.78, Universitaetstr. 6, CH-8092 Zurich,
-- Attn: Systems Group.
--
-- Hakefile for lib/barrelfish
-- 
--------------------------------------------------------------------------

[(let arch_dir = "arch" ./. archFamily arch
      common_srcs = [ "capabilities.c", "init.c", "dispatch.c", "threads.c",
                      "thread_sync.c", "slab.c", "domain.c", "idc.c",
                      "waitset.c", "event_queue.c", "event_mutex.c",
                      "idc_export.c", "nameservice_client.c", "msgbuf.c",
                      "monitor_client.c", "flounder_support.c", "flounder_glue_binding.c",
                      "morecore.c", "debug.c", "heap.c", "ram_alloc.c",
                      "terminal.c", "spawn_client.c", "vspace/vspace.c", 
                      "vspace/vregion.c", "vspace/memobj_one_frame.c",
                      "vspace/memobj_one_frame_lazy.c",
                      "vspace/utils.c",
                      "vspace/memobj_one_frame_one_map.c", "vspace/mmu_aware.c",
                      "slot_alloc/single_slot_alloc.c", "slot_alloc/multi_slot_alloc.c",
                      "slot_alloc/slot_alloc.c", "slot_alloc/range_slot_alloc.c",
                      "bulk_transfer.c", "trace.c", "resource_ctrl.c", "coreset.c",
                      "inthandler.c", "deferred.c"
                    ]

      idc_srcs = concat $ map getsrcs $ optInterconnectDrivers $ options arch
          where
            getsrcs "lmp" = [ "lmp_chan.c", "lmp_endpoints.c" ]
            getsrcs "ump" = [ "ump_chan.c", "ump_endpoint.c" ]
            getsrcs "multihop" = [ "multihop_chan.c" ]
            getsrcs _ = []

      -- sources specific to the architecture family
      archfam_srcs "x86_32"  = [ "arch/x86_32/debug.c" ,
                              "arch/x86_32/dispatch.c" , "arch/x86_32/syscalls.c" ,
                              "arch/x86_32/sys_debug.c", "target/x86_32/pmap_target.c",
                              "target/x86/pmap_x86.c",
                              "vspace/arch/x86_32/layout.c" , "vspace/memobj_pinned.c" ,
                              "vspace/pinned.c", "vspace/memobj_anon.c",
                              "arch/x86/perfmon.c", "arch/x86/tls.c"]
      archfam_srcs "x86_64"  = [ "arch/x86_64/debug.c", "arch/x86_64/dispatch.c" ,
                                 "arch/x86_64/syscalls.c", "arch/x86_64/sys_debug.c",
                                 "arch/x86_64/ldt.c",
                                 "target/x86_64/pmap_target.c", "target/x86/pmap_x86.c",
                                 "vspace/arch/x86_64/layout.c",
                                 "vspace/memobj_pinned.c", "vspace/pinned.c", "vspace/memobj_anon.c",
                                 "arch/x86/perfmon.c", "arch/x86/tls.c"]
      archfam_srcs "arm"     = [ "arch/arm/debug.c", "arch/arm/dispatch.c", 
                                 "arch/arm/pmap_arch.c", "arch/arm/sys_debug.c",
                                 "arch/arm/syscalls.c", "vspace/memobj_pinned.c" ,
                                 "vspace/pinned.c", "vspace/memobj_anon.c",
                                 "vspace/arch/arm/layout.c" ]
      archfam_srcs _         = []

      -- sources specific to the architecture
      arch_srcs "scc" = [ "arch/x86/ipi_notify.c" ]
      arch_srcs "x86_32" = [ "arch/x86/ipi_notify.c" ]
      arch_srcs "x86_64" = [ "arch/x86/ipi_notify.c" ]
      arch_srcs _     = []

      arch_assembly "x86_32"  = [ "arch/x86_32/entry.S" ]
      arch_assembly "x86_64"  = [ "arch/x86_64/entry.S" ]
      arch_assembly "arm"     = [ "arch/arm/entry.S", "arch/arm/syscall.S" ]
      arch_assembly "armv7-m" = [ "arch/arm/entry.S", "arch/arm/syscall.S" ]
      arch_assembly _         = []

  in
    build library { target = "barrelfish",
                    architectures = [arch],
                    cFiles = arch_srcs arch ++ archfam_srcs (archFamily arch)
                             ++ common_srcs ++ idc_srcs,
                    assemblyFiles = arch_assembly (archFamily arch),
                    flounderBindings = [ "mem", "octopus", "interdisp", "spawn",
                                         "terminal" ],
                    -- only makes sense to compile monitor binding for lmp
                    flounderTHCStubs = [ "octopus" ],
                    flounderExtraBindings = [ ("monitor", ["lmp"]),
		    			      ("monitor_blocking", ["lmp", "rpcclient"]),
                                              ("mem", ["rpcclient"]),
                                              ("octopus", ["rpcclient"]),
                                              ("spawn", ["rpcclient"])],
                    addIncludes = [ "include", "include" ./. arch_dir ],
                    addGeneratedDependencies = [ "/include/asmoffsets.h" ]
                  }
 ) | arch <- allArchitectures ]
)))),
("./lib/mdb/Hakefile", (let find fn arg = (fn allfiles "./lib/mdb/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/mdb/Hakefile" a in
{-# LINE 1 "../lib/mdb/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2011, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/mdb
-- 
--------------------------------------------------------------------------

[
  build library {
    target = "mdb",
    cFiles = [ "mdb_tree.c", "mdb.c" ],
    addLibraries = [ "barrelfish" ],
    addIncludes = [ "/include/barrelfish" ]
  },

  let
    buildKernelMdbFn allfiles filename args =
      Rules [ buildKernelMdb allfiles filename args arch
              | arch <- architectures args ]
    buildKernelMdb allfiles filename args arch =
      let kopts = kernelOptions arch
          libopts = libGetOptionsForArch arch args
          opts = kopts {
              extraIncludes = extraIncludes libopts,
              optSuffix = optSuffix libopts
            }
          predicatesFile = "/capabilities/cap_predicates.c"
          predicatesObj = objectFilePath opts predicatesFile
          csrcs = cFiles args
          objectFiles = predicatesObj : (allObjectPaths opts args)
      in Rules [
        compileCFiles opts csrcs,
        compileGeneratedCFile opts predicatesFile,
        staticLibrary opts (target args) (objectFiles) []
      ]
  in
    build Args.defaultArgs {
      buildFunction = buildKernelMdbFn,
      target = "mdb_kernel",
      cFiles = [ "mdb_tree.c", "mdb.c" ]
    }
]
)))),
("./lib/driverkit/Hakefile", (let find fn arg = (fn allfiles "./lib/driverkit/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/driverkit/Hakefile" a in
{-# LINE 1 "../lib/driverkit/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2013, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Universitaetstr. 6, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/driverkit
-- 
-- Provides common functions used to build device drivers.
--
--------------------------------------------------------------------------

[
    build library { 
        target = "driverkit",
        cFiles = (find withSuffices [".c"])
    }
])))),
("./lib/openssl-1.0.0d/Hakefile", (let find fn arg = (fn allfiles "./lib/openssl-1.0.0d/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/openssl-1.0.0d/Hakefile" a in
{-# LINE 1 "../lib/openssl-1.0.0d/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /usr/skb/Shm/src/
--
--------------------------------------------------------------------------
-- file list generated with this command:
-- asq@schlaptop2:~/tmp/openssl/compile_linux/openssl-1.0.0d/crypto$ \
-- for i in [ `objdump -f libcrypto.a |sed -e '/o:/!d' -e 's/o:.*/c/' `; \ 
-- do find . -name $i; done |sed -e 's/^/"/'|sed -e 's/$/",/' >> \
-- /home/asq/hg/barrelfish.dyn_adpt/usr/skb/testapps/openssl-1.0.0d/crypto/Hakefile 



[ build library { target = "crypto",
                  -- force optimisations on, without them we blow the stack
                  addCFlags = [ "-O2" ],
  	          cFiles = [
"./crypto/cryptlib.c",
"./crypto/mem.c",
"./crypto/mem_dbg.c",
"./crypto/cversion.c",
"./crypto/ex_data.c",
"./crypto/cpt_err.c",
"./crypto/ebcdic.c",
"./crypto/uid.c",
"./crypto/o_time.c",
"./crypto/o_str.c",
"./crypto/o_dir.c",
"./crypto/mem_clr.c",
"./crypto/objects/o_names.c",
"./crypto/objects/obj_dat.c",
"./crypto/objects/obj_lib.c",
"./crypto/objects/obj_err.c",
"./crypto/objects/obj_xref.c",
"./crypto/md4/md4_dgst.c",
"./crypto/md4/md4_one.c",
"./crypto/md5/md5_dgst.c",
"./crypto/md5/md5_one.c",
"./crypto/sha/sha_dgst.c",
"./crypto/sha/sha1dgst.c",
"./crypto/sha/sha_one.c",
"./crypto/sha/sha1_one.c",
"./crypto/sha/sha256.c",
"./crypto/sha/sha512.c",
"./crypto/mdc2/mdc2dgst.c",
"./crypto/mdc2/mdc2_one.c",
"./crypto/hmac/hmac.c",
"./crypto/hmac/hm_ameth.c",
"./crypto/hmac/hm_pmeth.c",
"./crypto/whrlpool/wp_dgst.c",
"./crypto/whrlpool/wp_block.c",
"./crypto/des/set_key.c",
"./crypto/des/ecb_enc.c",
"./crypto/des/cbc_enc.c",
"./crypto/des/ecb3_enc.c",
"./crypto/des/cfb64enc.c",
"./crypto/des/cfb64ede.c",
"./crypto/des/cfb_enc.c",
"./crypto/des/ofb64ede.c",
"./crypto/des/enc_read.c",
"./crypto/des/enc_writ.c",
"./crypto/des/ofb64enc.c",
"./crypto/des/ofb_enc.c",
"./crypto/des/str2key.c",
"./crypto/des/pcbc_enc.c",
"./crypto/des/qud_cksm.c",
"./crypto/des/rand_key.c",
"./crypto/des/des_enc.c",
"./crypto/des/fcrypt_b.c",
"./crypto/des/fcrypt.c",
"./crypto/des/xcbc_enc.c",
"./crypto/des/rpc_enc.c",
"./crypto/des/cbc_cksm.c",
"./crypto/des/ede_cbcm_enc.c",
"./crypto/des/des_old.c",
"./crypto/des/des_old2.c",
"./crypto/des/read2pwd.c",
"./crypto/aes/aes_misc.c",
"./crypto/aes/aes_ecb.c",
"./crypto/aes/aes_cfb.c",
"./crypto/aes/aes_ofb.c",
"./crypto/aes/aes_ctr.c",
"./crypto/aes/aes_ige.c",
"./crypto/aes/aes_wrap.c",
"./crypto/aes/aes_core.c",
"./crypto/aes/aes_cbc.c",
"./crypto/rc2/rc2_ecb.c",
"./crypto/rc2/rc2_skey.c",
"./crypto/rc2/rc2_cbc.c",
"./crypto/rc2/rc2cfb64.c",
"./crypto/rc2/rc2ofb64.c",
"./crypto/rc4/rc4_enc.c",
"./crypto/rc4/rc4_skey.c",
"./crypto/idea/i_cbc.c",
"./crypto/idea/i_cfb64.c",
"./crypto/idea/i_ofb64.c",
"./crypto/idea/i_ecb.c",
"./crypto/idea/i_skey.c",
"./crypto/bf/bf_skey.c",
"./crypto/bf/bf_ecb.c",
"./crypto/bf/bf_enc.c",
"./crypto/bf/bf_cfb64.c",
"./crypto/bf/bf_ofb64.c",
"./crypto/cast/c_skey.c",
"./crypto/cast/c_ecb.c",
"./crypto/cast/c_enc.c",
"./crypto/cast/c_cfb64.c",
"./crypto/cast/c_ofb64.c",
"./crypto/camellia/cmll_ecb.c",
"./crypto/camellia/cmll_ofb.c",
"./crypto/camellia/cmll_cfb.c",
"./crypto/camellia/cmll_ctr.c",
"./crypto/camellia/camellia.c",
"./crypto/camellia/cmll_misc.c",
"./crypto/camellia/cmll_cbc.c",
"./crypto/seed/seed.c",
"./crypto/seed/seed_ecb.c",
"./crypto/seed/seed_cbc.c",
"./crypto/seed/seed_cfb.c",
"./crypto/seed/seed_ofb.c",
"./crypto/modes/cbc128.c",
"./crypto/modes/ctr128.c",
"./crypto/modes/cts128.c",
"./crypto/modes/cfb128.c",
"./crypto/modes/ofb128.c",
"./crypto/bn/bn_add.c",
"./crypto/bn/bn_div.c",
"./crypto/bn/bn_exp.c",
"./crypto/bn/bn_lib.c",
"./crypto/bn/bn_ctx.c",
"./crypto/bn/bn_mul.c",
"./crypto/bn/bn_mod.c",
"./crypto/bn/bn_print.c",
"./crypto/bn/bn_rand.c",
"./crypto/bn/bn_shift.c",
"./crypto/bn/bn_word.c",
"./crypto/bn/bn_blind.c",
"./crypto/bn/bn_kron.c",
"./crypto/bn/bn_sqrt.c",
"./crypto/bn/bn_gcd.c",
"./crypto/bn/bn_prime.c",
"./crypto/bn/bn_err.c",
"./crypto/bn/bn_sqr.c",
"./crypto/bn/bn_asm.c",
"./crypto/bn/bn_recp.c",
"./crypto/bn/bn_mont.c",
"./crypto/bn/bn_mpi.c",
"./crypto/bn/bn_exp2.c",
"./crypto/bn/bn_gf2m.c",
"./crypto/bn/bn_nist.c",
"./crypto/bn/bn_depr.c",
"./crypto/bn/bn_const.c",
"./crypto/ec/ec_lib.c",
"./crypto/ec/ecp_smpl.c",
"./crypto/ec/ecp_mont.c",
"./crypto/ec/ecp_nist.c",
"./crypto/ec/ec_cvt.c",
"./crypto/ec/ec_mult.c",
"./crypto/ec/ec_err.c",
"./crypto/ec/ec_curve.c",
"./crypto/ec/ec_check.c",
"./crypto/ec/ec_print.c",
"./crypto/ec/ec_asn1.c",
"./crypto/ec/ec_key.c",
"./crypto/ec/ec2_smpl.c",
"./crypto/ec/ec2_mult.c",
"./crypto/ec/ec_ameth.c",
"./crypto/ec/ec_pmeth.c",
"./crypto/ec/eck_prn.c",
"./crypto/rsa/rsa_eay.c",
"./crypto/rsa/rsa_gen.c",
"./crypto/rsa/rsa_lib.c",
"./crypto/rsa/rsa_sign.c",
"./crypto/rsa/rsa_saos.c",
"./crypto/rsa/rsa_err.c",
"./crypto/rsa/rsa_pk1.c",
"./crypto/rsa/rsa_ssl.c",
"./crypto/rsa/rsa_none.c",
"./crypto/rsa/rsa_oaep.c",
"./crypto/rsa/rsa_chk.c",
"./crypto/rsa/rsa_null.c",
"./crypto/rsa/rsa_pss.c",
"./crypto/rsa/rsa_x931.c",
"./crypto/rsa/rsa_asn1.c",
"./crypto/rsa/rsa_depr.c",
"./crypto/rsa/rsa_ameth.c",
"./crypto/rsa/rsa_prn.c",
"./crypto/rsa/rsa_pmeth.c",
"./crypto/dsa/dsa_gen.c",
"./crypto/dsa/dsa_key.c",
"./crypto/dsa/dsa_lib.c",
"./crypto/dsa/dsa_asn1.c",
"./crypto/dsa/dsa_vrf.c",
"./crypto/dsa/dsa_sign.c",
"./crypto/dsa/dsa_err.c",
"./crypto/dsa/dsa_ossl.c",
"./crypto/dsa/dsa_depr.c",
"./crypto/dsa/dsa_ameth.c",
"./crypto/dsa/dsa_pmeth.c",
"./crypto/dsa/dsa_prn.c",
"./crypto/ecdsa/ecs_lib.c",
"./crypto/ecdsa/ecs_asn1.c",
"./crypto/ecdsa/ecs_ossl.c",
"./crypto/ecdsa/ecs_sign.c",
"./crypto/ecdsa/ecs_vrf.c",
"./crypto/ecdsa/ecs_err.c",
"./crypto/dh/dh_asn1.c",
"./crypto/dh/dh_gen.c",
"./crypto/dh/dh_key.c",
"./crypto/dh/dh_lib.c",
"./crypto/dh/dh_check.c",
"./crypto/dh/dh_err.c",
"./crypto/dh/dh_depr.c",
"./crypto/dh/dh_ameth.c",
"./crypto/dh/dh_pmeth.c",
"./crypto/dh/dh_prn.c",
"./crypto/ecdh/ech_lib.c",
"./crypto/ecdh/ech_ossl.c",
"./crypto/ecdh/ech_key.c",
"./crypto/ecdh/ech_err.c",
"./crypto/dso/dso_dl.c",
"./crypto/dso/dso_dlfcn.c",
"./crypto/dso/dso_err.c",
"./crypto/dso/dso_lib.c",
"./crypto/dso/dso_null.c",
"./crypto/dso/dso_openssl.c",
"./crypto/dso/dso_win32.c",
"./crypto/dso/dso_vms.c",
"./crypto/dso/dso_beos.c",
"./crypto/engine/eng_err.c",
"./crypto/engine/eng_lib.c",
"./crypto/engine/eng_list.c",
"./crypto/engine/eng_init.c",
"./crypto/engine/eng_ctrl.c",
"./crypto/engine/eng_table.c",
"./crypto/engine/eng_pkey.c",
"./crypto/engine/eng_fat.c",
"./crypto/engine/eng_all.c",
"./crypto/engine/tb_rsa.c",
"./crypto/engine/tb_dsa.c",
"./crypto/engine/tb_ecdsa.c",
"./crypto/engine/tb_dh.c",
"./crypto/engine/tb_ecdh.c",
"./crypto/engine/tb_rand.c",
"./crypto/engine/tb_store.c",
"./crypto/engine/tb_cipher.c",
"./crypto/engine/tb_digest.c",
"./crypto/engine/tb_pkmeth.c",
"./crypto/engine/tb_asnmth.c",
"./crypto/engine/eng_openssl.c",
"./crypto/engine/eng_cnf.c",
"./crypto/engine/eng_dyn.c",
"./crypto/engine/eng_cryptodev.c",
"./crypto/buffer/buffer.c",
"./crypto/buffer/buf_err.c",
"./crypto/bio/bio_lib.c",
"./crypto/bio/bio_cb.c",
"./crypto/bio/bio_err.c",
"./crypto/bio/bss_mem.c",
"./crypto/bio/bss_null.c",
"./crypto/bio/bss_fd.c",
"./crypto/bio/bss_file.c",
"./crypto/bio/bss_sock.c",
"./crypto/bio/bss_conn.c",
"./crypto/bio/bf_null.c",
"./crypto/bio/bf_buff.c",
"./crypto/bio/b_print.c",
"./crypto/bio/b_dump.c",
"./crypto/bio/b_sock.c",
"./crypto/bio/bss_acpt.c",
"./crypto/bio/bf_nbio.c",
"./crypto/bio/bss_log.c",
"./crypto/bio/bss_bio.c",
"./crypto/bio/bss_dgram.c",
"./crypto/stack/stack.c",
"./crypto/lhash/lhash.c",
"./crypto/lhash/lh_stats.c",
"./crypto/rand/md_rand.c",
"./crypto/rand/randfile.c",
"./crypto/rand/rand_lib.c",
"./crypto/rand/rand_err.c",
"./crypto/rand/rand_egd.c",
"./crypto/rand/rand_win.c",
"./crypto/rand/rand_unix.c",
"./crypto/rand/rand_os2.c",
"./crypto/rand/rand_nw.c",
"./crypto/err/err.c",
"./crypto/err/err_all.c",
"./crypto/err/err_prn.c",
"./crypto/evp/encode.c",
"./crypto/evp/digest.c",
"./crypto/evp/evp_enc.c",
"./crypto/evp/evp_key.c",
"./crypto/evp/evp_acnf.c",
"./crypto/evp/e_des.c",
"./crypto/evp/e_bf.c",
"./crypto/evp/e_idea.c",
"./crypto/evp/e_des3.c",
"./crypto/evp/e_camellia.c",
"./crypto/evp/e_rc4.c",
"./crypto/evp/e_aes.c",
"./crypto/evp/names.c",
"./crypto/evp/e_seed.c",
"./crypto/evp/e_xcbc_d.c",
"./crypto/evp/e_rc2.c",
"./crypto/evp/e_cast.c",
"./crypto/evp/e_rc5.c",
"./crypto/evp/m_null.c",
"./crypto/evp/m_md2.c",
"./crypto/evp/m_md4.c",
"./crypto/evp/m_md5.c",
"./crypto/evp/m_sha.c",
"./crypto/evp/m_sha1.c",
"./crypto/evp/m_wp.c",
"./crypto/evp/m_dss.c",
"./crypto/evp/m_dss1.c",
"./crypto/evp/m_mdc2.c",
"./crypto/evp/m_ripemd.c",
"./crypto/evp/m_ecdsa.c",
"./crypto/evp/p_open.c",
"./crypto/evp/p_seal.c",
"./crypto/evp/p_sign.c",
"./crypto/evp/p_verify.c",
"./crypto/evp/p_lib.c",
"./crypto/evp/p_enc.c",
"./crypto/evp/p_dec.c",
"./crypto/evp/bio_md.c",
"./crypto/evp/bio_b64.c",
"./crypto/evp/bio_enc.c",
"./crypto/evp/evp_err.c",
"./crypto/evp/e_null.c",
"./crypto/evp/c_all.c",
"./crypto/evp/c_allc.c",
"./crypto/evp/c_alld.c",
"./crypto/evp/evp_lib.c",
"./crypto/evp/bio_ok.c",
"./crypto/evp/evp_pkey.c",
"./crypto/evp/evp_pbe.c",
"./crypto/evp/p5_crpt.c",
"./crypto/evp/p5_crpt2.c",
"./crypto/evp/e_old.c",
"./crypto/evp/pmeth_lib.c",
"./crypto/evp/pmeth_fn.c",
"./crypto/evp/pmeth_gn.c",
"./crypto/evp/m_sigver.c",
"./crypto/asn1/a_object.c",
"./crypto/asn1/a_bitstr.c",
"./crypto/asn1/a_utctm.c",
"./crypto/asn1/a_gentm.c",
"./crypto/asn1/a_time.c",
"./crypto/asn1/a_int.c",
"./crypto/asn1/a_octet.c",
"./crypto/asn1/a_print.c",
"./crypto/asn1/a_type.c",
"./crypto/asn1/a_set.c",
"./crypto/asn1/a_dup.c",
"./crypto/asn1/a_d2i_fp.c",
"./crypto/asn1/a_i2d_fp.c",
"./crypto/asn1/a_enum.c",
"./crypto/asn1/a_utf8.c",
"./crypto/asn1/a_sign.c",
"./crypto/asn1/a_digest.c",
"./crypto/asn1/a_verify.c",
"./crypto/asn1/a_mbstr.c",
"./crypto/asn1/a_strex.c",
"./crypto/asn1/x_algor.c",
"./crypto/asn1/x_val.c",
"./crypto/asn1/x_pubkey.c",
"./crypto/asn1/x_sig.c",
"./crypto/asn1/x_req.c",
"./crypto/asn1/x_attrib.c",
"./crypto/asn1/x_bignum.c",
"./crypto/asn1/x_long.c",
"./crypto/asn1/x_name.c",
"./crypto/asn1/x_x509.c",
"./crypto/asn1/x_x509a.c",
"./crypto/asn1/x_crl.c",
"./crypto/asn1/x_info.c",
"./crypto/asn1/x_spki.c",
"./crypto/asn1/nsseq.c",
"./crypto/asn1/x_nx509.c",
"./crypto/asn1/d2i_pu.c",
"./crypto/asn1/d2i_pr.c",
"./crypto/asn1/i2d_pu.c",
"./crypto/asn1/i2d_pr.c",
"./crypto/asn1/t_req.c",
"./crypto/asn1/t_x509.c",
"./crypto/asn1/t_x509a.c",
"./crypto/asn1/t_crl.c",
"./crypto/asn1/t_pkey.c",
"./crypto/asn1/t_spki.c",
"./crypto/asn1/t_bitst.c",
"./crypto/asn1/tasn_new.c",
"./crypto/asn1/tasn_fre.c",
"./crypto/asn1/tasn_enc.c",
"./crypto/asn1/tasn_dec.c",
"./crypto/asn1/tasn_utl.c",
"./crypto/asn1/tasn_typ.c",
"./crypto/asn1/tasn_prn.c",
"./crypto/asn1/ameth_lib.c",
"./crypto/asn1/f_int.c",
"./crypto/asn1/f_string.c",
"./crypto/asn1/n_pkey.c",
"./crypto/asn1/f_enum.c",
"./crypto/asn1/x_pkey.c",
"./crypto/asn1/a_bool.c",
"./crypto/asn1/x_exten.c",
"./crypto/asn1/bio_asn1.c",
"./crypto/asn1/bio_ndef.c",
"./crypto/asn1/asn_mime.c",
"./crypto/asn1/asn1_gen.c",
"./crypto/asn1/asn1_par.c",
"./crypto/asn1/asn1_lib.c",
"./crypto/asn1/asn1_err.c",
"./crypto/asn1/a_bytes.c",
"./crypto/asn1/a_strnid.c",
"./crypto/asn1/evp_asn1.c",
"./crypto/asn1/asn_pack.c",
"./crypto/asn1/p5_pbe.c",
"./crypto/asn1/p5_pbev2.c",
"./crypto/asn1/p8_pkey.c",
"./crypto/asn1/asn_moid.c",
"./crypto/pem/pem_sign.c",
"./crypto/pem/pem_seal.c",
"./crypto/pem/pem_info.c",
"./crypto/pem/pem_lib.c",
"./crypto/pem/pem_all.c",
"./crypto/pem/pem_err.c",
"./crypto/pem/pem_x509.c",
"./crypto/pem/pem_xaux.c",
"./crypto/pem/pem_oth.c",
"./crypto/pem/pem_pk8.c",
"./crypto/pem/pem_pkey.c",
"./crypto/pem/pvkfmt.c",
"./crypto/x509/x509_def.c",
"./crypto/x509/x509_d2.c",
"./crypto/x509/x509_r2x.c",
"./crypto/x509/x509_cmp.c",
"./crypto/x509/x509_obj.c",
"./crypto/x509/x509_req.c",
"./crypto/x509/x509spki.c",
"./crypto/x509/x509_vfy.c",
"./crypto/x509/x509_set.c",
"./crypto/x509/x509cset.c",
"./crypto/x509/x509rset.c",
"./crypto/x509/x509_err.c",
"./crypto/x509/x509name.c",
"./crypto/x509/x509_v3.c",
"./crypto/x509/x509_ext.c",
"./crypto/x509/x509_att.c",
"./crypto/x509/x509type.c",
"./crypto/x509/x509_lu.c",
"./crypto/x509/x_all.c",
"./crypto/x509/x509_txt.c",
"./crypto/x509/x509_trs.c",
"./crypto/x509/by_file.c",
"./crypto/x509/by_dir.c",
"./crypto/x509/x509_vpm.c",
"./crypto/x509v3/v3_bcons.c",
"./crypto/x509v3/v3_bitst.c",
"./crypto/x509v3/v3_conf.c",
"./crypto/x509v3/v3_extku.c",
"./crypto/x509v3/v3_ia5.c",
"./crypto/x509v3/v3_lib.c",
"./crypto/x509v3/v3_prn.c",
"./crypto/x509v3/v3_utl.c",
"./crypto/x509v3/v3err.c",
"./crypto/x509v3/v3_genn.c",
"./crypto/x509v3/v3_alt.c",
"./crypto/x509v3/v3_skey.c",
"./crypto/x509v3/v3_akey.c",
"./crypto/x509v3/v3_pku.c",
"./crypto/x509v3/v3_int.c",
"./crypto/x509v3/v3_enum.c",
"./crypto/x509v3/v3_sxnet.c",
"./crypto/x509v3/v3_cpols.c",
"./crypto/x509v3/v3_crld.c",
"./crypto/x509v3/v3_purp.c",
"./crypto/x509v3/v3_info.c",
"./crypto/x509v3/v3_ocsp.c",
"./crypto/x509v3/v3_akeya.c",
"./crypto/x509v3/v3_pmaps.c",
"./crypto/x509v3/v3_pcons.c",
"./crypto/x509v3/v3_ncons.c",
"./crypto/x509v3/v3_pcia.c",
"./crypto/x509v3/v3_pci.c",
"./crypto/x509v3/pcy_cache.c",
"./crypto/x509v3/pcy_node.c",
"./crypto/x509v3/pcy_data.c",
"./crypto/x509v3/pcy_map.c",
"./crypto/x509v3/pcy_tree.c",
"./crypto/x509v3/pcy_lib.c",
"./crypto/x509v3/v3_asid.c",
"./crypto/x509v3/v3_addr.c",
"./crypto/conf/conf_err.c",
"./crypto/conf/conf_lib.c",
"./crypto/conf/conf_api.c",
"./crypto/conf/conf_def.c",
"./crypto/conf/conf_mod.c",
"./crypto/conf/conf_mall.c",
"./crypto/conf/conf_sap.c",
"./crypto/txt_db/txt_db.c",
"./crypto/pkcs7/pk7_asn1.c",
"./crypto/pkcs7/pk7_lib.c",
"./crypto/pkcs7/pkcs7err.c",
"./crypto/pkcs7/pk7_doit.c",
"./crypto/pkcs7/pk7_smime.c",
"./crypto/pkcs7/pk7_attr.c",
"./crypto/pkcs7/pk7_mime.c",
"./crypto/pkcs7/bio_pk7.c",
"./crypto/pkcs12/p12_add.c",
"./crypto/pkcs12/p12_asn.c",
"./crypto/pkcs12/p12_attr.c",
"./crypto/pkcs12/p12_crpt.c",
"./crypto/pkcs12/p12_crt.c",
"./crypto/pkcs12/p12_decr.c",
"./crypto/pkcs12/p12_init.c",
"./crypto/pkcs12/p12_key.c",
"./crypto/pkcs12/p12_kiss.c",
"./crypto/pkcs12/p12_mutl.c",
"./crypto/pkcs12/p12_utl.c",
"./crypto/pkcs12/p12_npas.c",
"./crypto/pkcs12/pk12err.c",
"./crypto/pkcs12/p12_p8d.c",
"./crypto/pkcs12/p12_p8e.c",
"./crypto/comp/comp_lib.c",
"./crypto/comp/comp_err.c",
"./crypto/comp/c_rle.c",
"./crypto/comp/c_zlib.c",
"./crypto/ocsp/ocsp_asn.c",
"./crypto/ocsp/ocsp_ext.c",
"./crypto/ocsp/ocsp_ht.c",
"./crypto/ocsp/ocsp_lib.c",
"./crypto/ocsp/ocsp_cl.c",
"./crypto/ocsp/ocsp_srv.c",
"./crypto/ocsp/ocsp_prn.c",
"./crypto/ocsp/ocsp_vfy.c",
"./crypto/ocsp/ocsp_err.c",
"./crypto/krb5/krb5_asn.c",
"./crypto/cms/cms_lib.c",
"./crypto/cms/cms_asn1.c",
"./crypto/cms/cms_att.c",
"./crypto/cms/cms_io.c",
"./crypto/cms/cms_smime.c",
"./crypto/cms/cms_err.c",
"./crypto/cms/cms_sd.c",
"./crypto/cms/cms_dd.c",
"./crypto/cms/cms_cd.c",
"./crypto/cms/cms_env.c",
"./demos/cms/cms_enc.c",
"./crypto/cms/cms_enc.c",
"./crypto/cms/cms_ess.c",
"./crypto/pqueue/pqueue.c",
"./crypto/ts/ts_err.c",
"./crypto/ts/ts_req_utils.c",
"./crypto/ts/ts_req_print.c",
"./crypto/ts/ts_rsp_utils.c",
"./crypto/ts/ts_rsp_print.c",
"./crypto/ts/ts_rsp_sign.c",
"./crypto/ts/ts_rsp_verify.c",
"./crypto/ts/ts_verify_ctx.c",
"./crypto/ts/ts_lib.c",
"./crypto/ts/ts_conf.c",
"./crypto/ts/ts_asn1.c",
"./crypto/ui/ui_err.c",
"./crypto/ui/ui_lib.c",
"./crypto/ui/ui_openssl.c",
"./crypto/ui/ui_util.c",
"./crypto/ui/ui_compat.c",
"./crypto/ripemd/rmd_dgst.c",
"./crypto/ripemd/rmd_one.c",
"./engines/e_4758cca.c",
"./engines/e_aep.c",
"./engines/e_atalla.c",
"./engines/e_cswift.c",
"./engines/e_gmp.c",
"./engines/e_chil.c",
"./engines/e_nuron.c",
"./engines/e_sureware.c",
"./engines/e_ubsec.c",
"./engines/e_padlock.c",
"./engines/e_capi.c",
"./engines/ccgost/e_gost_err.c",
"./engines/ccgost/gost2001_keyx.c",
"./engines/ccgost/gost2001.c",
"./engines/ccgost/gost89.c",
"./engines/ccgost/gost94_keyx.c",
"./engines/ccgost/gost_ameth.c",
"./engines/ccgost/gost_asn1.c",
"./engines/ccgost/gost_crypt.c",
"./engines/ccgost/gost_ctl.c",
"./engines/ccgost/gost_eng.c",
"./engines/ccgost/gosthash.c",
"./engines/ccgost/gost_keywrap.c",
"./engines/ccgost/gost_md.c",
"./engines/ccgost/gost_params.c",
"./engines/ccgost/gost_pmeth.c",
"./engines/ccgost/gost_sign.c"
                       ],
                  omitCFlags = [ "-Werror", "-Wshadow",
                                 "-Wstrict-prototypes",
                                 "-Wold-style-definition",
                                 "-Wmissing-prototypes",
                                 "-Wmissing-declarations",
                                 "-Wmissing-field-initializers",
                                 "-Wredundant-decls", "-std=c99" ],
                 architectures = [ "x86_64", "x86_32" ]
                }
]


-- "./demos/tunala/buffer.c",


)))),
("./lib/mm/Hakefile", (let find fn arg = (fn allfiles "./lib/mm/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/mm/Hakefile" a in
{-# LINE 1 "../lib/mm/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for lib/mm
-- 
--------------------------------------------------------------------------

[ build library { target = "mm", cFiles = [ "mm.c", "slot_alloc.c" ] } ]

)))),
("./lib/newlib/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/Hakefile" a in
{-# LINE 1 "../lib/newlib/Hakefile" #-}
if Config.libc == "newlib" then
[ build library { 
  target = "newlib",
  addLibraries = [ "newlib_" ]
   }
]
else []
)))),
("./lib/newlib/newlib/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/Hakefile" #-}
if Config.libc == "newlib" then
[ build library { 
  target = "newlib_",
  addLibraries = [ "newc", "m" ]
   }
]
else []
)))),
("./lib/newlib/newlib/libm/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libm/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libm/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libm/Hakefile" #-}
if Config.libc == "newlib" then
[ build library { 
  target = "m",
  addLibraries = [ "math", "common", "complex" ]
   }
]
else []
)))),
("./lib/newlib/newlib/libm/complex/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libm/complex/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libm/complex/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libm/complex/Hakefile" #-}
if Config.libc == "newlib" then
[ build library { 
  target = "complex",
  cFiles = [ 
    "cabs.c",
    "cacos.c",
    "cacosh.c",
    "carg.c",
    "casin.c",
    "casinh.c",
    "catan.c",
    "catanh.c",
    "ccos.c",
    "ccosh.c",
    "cephes_subr.c",
    "cexp.c",
    "cimag.c",
    "clog.c",
    "conj.c",
    "cpow.c",
    "cproj.c",
    "creal.c",
    "csin.c",
    "csinh.c",
    "csqrt.c",
    "ctan.c",
    "ctanh.c",
    "cabsf.c",
    "casinf.c",
    "ccosf.c",
    "cimagf.c",
    "cprojf.c",
    "csqrtf.c",
    "cacosf.c",
    "casinhf.c",
    "ccoshf.c",
    "clogf.c",
    "crealf.c",
    "ctanf.c",
    "cacoshf.c",
    "catanf.c",
    "cephes_subrf.c",
    "conjf.c",
    "csinf.c",
    "ctanhf.c",
    "cargf.c",
    "catanhf.c",
    "cexpf.c",
    "cpowf.c",
    "csinhf.c"
        ],
      addCFlags = [ "-DPACKAGE_NAME=\"newlib\"", "-DPACKAGE_TARNAME=\"newlib\"", "-DPACKAGE_VERSION=\"1.19.0\"", "-DPACKAGE_BUGREPORT=\"\"", "-DPACKAGE_URL=\"\"", "-D_I386MACH_ALLOW_HW_INTERRUPTS", "-DMISSING_SYSCALL_NAMES" ],
  omitCFlags = [ "-std=c99", "-Wmissing-prototypes", "-Wmissing-declarations", "-Wimplicit-function-declaration", "-Werror" ]
   }
]
else []
)))),
("./lib/newlib/newlib/libm/common/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libm/common/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libm/common/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libm/common/Hakefile" #-}
if Config.libc == "newlib" then
[ build library { 
  target = "common",
  cFiles = [ 
    "s_finite.c",
    "s_copysign.c",
    "s_modf.c",
    "s_scalbn.c",
    "s_cbrt.c",
    "s_exp10.c",
    "s_expm1.c",
    "s_ilogb.c",
    "s_infconst.c",
    "s_infinity.c",
    "s_isinf.c",
    "s_isinfd.c",
    "s_isnan.c",
    "s_isnand.c",
    "s_log1p.c",
    "s_nan.c",
    "s_nextafter.c",
    "s_pow10.c",
    "s_rint.c",
    "s_logb.c",
    "s_log2.c",
    "s_matherr.c",
    "s_lib_ver.c",
    "s_fdim.c",
    "s_fma.c",
    "s_fmax.c",
    "s_fmin.c",
    "s_fpclassify.c",
    "s_lrint.c",
    "s_llrint.c",
    "s_lround.c",
    "s_llround.c",
    "s_nearbyint.c",
    "s_remquo.c",
    "s_round.c",
    "s_scalbln.c",
    "s_signbit.c",
    "s_trunc.c",
    "sf_finite.c",
    "sf_copysign.c",
    "sf_modf.c",
    "sf_scalbn.c",
    "sf_cbrt.c",
    "sf_exp10.c",
    "sf_expm1.c",
    "sf_ilogb.c",
    "sf_infinity.c",
    "sf_isinf.c",
    "sf_isinff.c",
    "sf_isnan.c",
    "sf_isnanf.c",
    "sf_log1p.c",
    "sf_nan.c",
    "sf_nextafter.c",
    "sf_pow10.c",
    "sf_rint.c",
    "sf_logb.c",
    "sf_log2.c",
    "sf_fdim.c",
    "sf_fma.c",
    "sf_fmax.c",
    "sf_fmin.c",
    "sf_fpclassify.c",
    "sf_lrint.c",
    "sf_llrint.c",
    "sf_lround.c",
    "sf_llround.c",
    "sf_nearbyint.c",
    "sf_remquo.c",
    "sf_round.c",
    "sf_scalbln.c",
    "sf_trunc.c",
    "atanl.c",
    "cosl.c",
    "sinl.c",
    "tanl.c",
    "tanhl.c",
    "frexpl.c",
    "modfl.c",
    "ceill.c",
    "fabsl.c",
    "floorl.c",
    "log1pl.c",
    "expm1l.c",
    "acosl.c",
    "asinl.c",
    "atan2l.c",
    "coshl.c",
    "sinhl.c",
    "expl.c",
    "ldexpl.c",
    "logl.c",
    "log10l.c",
    "powl.c",
    "sqrtl.c",
    "fmodl.c",
    "hypotl.c",
    "copysignl.c",
    "nanl.c",
    "ilogbl.c",
    "asinhl.c",
    "cbrtl.c",
    "nextafterl.c",
    "rintl.c",
    "scalbnl.c",
    "exp2l.c",
    "scalblnl.c",
    "tgammal.c",
    "nearbyintl.c",
    "lrintl.c",
    "llrintl.c",
    "roundl.c",
    "lroundl.c",
    "llroundl.c",
    "truncl.c",
    "remquol.c",
    "fdiml.c",
    "fmaxl.c",
    "fminl.c",
    "fmal.c",
    "acoshl.c",
    "atanhl.c",
    "remainderl.c",
    "lgammal.c",
    "erfl.c",
    "erfcl.c"
        ],
      addCFlags = [ "-DPACKAGE_NAME=\"newlib\"", "-DPACKAGE_TARNAME=\"newlib\"", "-DPACKAGE_VERSION=\"1.19.0\"", "-DPACKAGE_BUGREPORT=\"\"", "-DPACKAGE_URL=\"\"", "-D_I386MACH_ALLOW_HW_INTERRUPTS", "-DMISSING_SYSCALL_NAMES" ],
  omitCFlags = [ "-std=c99", "-Wmissing-prototypes", "-Wmissing-declarations", "-Wimplicit-function-declaration", "-Werror" ]
   }
]
else []
)))),
("./lib/newlib/newlib/libm/math/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libm/math/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libm/math/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libm/math/Hakefile" #-}
if Config.libc == "newlib" then
[ build library { 
  target = "math",
  cFiles = [ 
    "k_standard.c",
    "k_rem_pio2.c",
    "k_cos.c",
    "k_sin.c",
    "k_tan.c",
    "e_acos.c",
    "e_acosh.c",
    "e_asin.c",
    "e_atan2.c",
    "e_atanh.c",
    "e_cosh.c",
    "e_exp.c",
    "e_fmod.c",
    "er_gamma.c",
    "e_hypot.c",
    "e_j0.c",
    "e_j1.c",
    "e_jn.c",
    "er_lgamma.c",
    "e_log.c",
    "e_log10.c",
    "e_pow.c",
    "e_rem_pio2.c",
    "e_remainder.c",
    "e_scalb.c",
    "e_sinh.c",
    "e_sqrt.c",
    "w_acos.c",
    "w_acosh.c",
    "w_asin.c",
    "w_atan2.c",
    "w_atanh.c",
    "w_cosh.c",
    "w_exp.c",
    "w_fmod.c",
    "w_gamma.c",
    "wr_gamma.c",
    "w_hypot.c",
    "w_j0.c",
    "w_j1.c",
    "w_jn.c",
    "w_lgamma.c",
    "wr_lgamma.c",
    "w_log.c",
    "w_log10.c",
    "w_pow.c",
    "w_remainder.c",
    "w_scalb.c",
    "w_sinh.c",
    "w_sqrt.c",
    "w_sincos.c",
    "w_drem.c",
    "s_asinh.c",
    "s_atan.c",
    "s_ceil.c",
    "s_cos.c",
    "s_erf.c",
    "s_fabs.c",
    "s_floor.c",
    "s_frexp.c",
    "s_ldexp.c",
    "s_signif.c",
    "s_sin.c",
    "s_tan.c",
    "s_tanh.c",
    "w_exp2.c",
    "w_tgamma.c",
    "kf_rem_pio2.c",
    "kf_cos.c",
    "kf_sin.c",
    "kf_tan.c",
    "ef_acos.c",
    "ef_acosh.c",
    "ef_asin.c",
    "ef_atan2.c",
    "ef_atanh.c",
    "ef_cosh.c",
    "ef_exp.c",
    "ef_fmod.c",
    "erf_gamma.c",
    "ef_hypot.c",
    "ef_j0.c",
    "ef_j1.c",
    "ef_jn.c",
    "erf_lgamma.c",
    "ef_log.c",
    "ef_log10.c",
    "ef_pow.c",
    "ef_rem_pio2.c",
    "ef_remainder.c",
    "ef_scalb.c",
    "ef_sinh.c",
    "ef_sqrt.c",
    "wf_acos.c",
    "wf_acosh.c",
    "wf_asin.c",
    "wf_atan2.c",
    "wf_atanh.c",
    "wf_cosh.c",
    "wf_exp.c",
    "wf_fmod.c",
    "wf_gamma.c",
    "wrf_gamma.c",
    "wf_hypot.c",
    "wf_j0.c",
    "wf_j1.c",
    "wf_jn.c",
    "wf_lgamma.c",
    "wrf_lgamma.c",
    "wf_log.c",
    "wf_log10.c",
    "wf_pow.c",
    "wf_remainder.c",
    "wf_scalb.c",
    "wf_sinh.c",
    "wf_sqrt.c",
    "wf_sincos.c",
    "wf_drem.c",
    "sf_asinh.c",
    "sf_atan.c",
    "sf_ceil.c",
    "sf_cos.c",
    "sf_erf.c",
    "sf_fabs.c",
    "sf_floor.c",
    "sf_frexp.c",
    "sf_ldexp.c",
    "sf_signif.c",
    "sf_sin.c",
    "sf_tan.c",
    "sf_tanh.c",
    "wf_exp2.c",
    "wf_tgamma.c"
        ],
  addCFlags = [ "-DPACKAGE_NAME=\"newlib\"", "-DPACKAGE_TARNAME=\"newlib\"", "-DPACKAGE_VERSION=\"1.19.0\"", "-DPACKAGE_BUGREPORT=\"\"", "-DPACKAGE_URL=\"\"", "-D_I386MACH_ALLOW_HW_INTERRUPTS", "-DMISSING_SYSCALL_NAMES" ],
  addIncludes = [ "../common" ],
  omitCFlags = [ "-std=c99", "-Wmissing-prototypes", "-Wmissing-declarations", "-Wimplicit-function-declaration", "-Werror" ]
   }
]
else []
)))),
("./lib/newlib/newlib/libc/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/Hakefile" #-}
if Config.libc == "newlib" then
let
    arch_srcs "x86_64"  = [ "machine/x86_64/" ++ x | x <- ["setjmp.S", "memcpy.S", "memset.S"]]
    arch_srcs "x86_32"  = [ "machine/i386/" ++ x   | x <- ["setjmp.S", "memcpy.S", "memset.S"]]
    arch_srcs "scc"     = [ "machine/i386/" ++ x   | x <- ["setjmp.S", "memcpy.S", "memset.S"]]
    arch_srcs "armv5"   = [ "machine/arm/setjmp.S" ]
    arch_srcs "arm11mp" = [ "machine/arm/setjmp.S" ]
    arch_srcs "xscale"  = [ "machine/arm/setjmp.S" ]
    arch_srcs "armv7"   = [ "machine/arm/setjmp.S" ]
    arch_srcs "armv7-m" = [ "machine/arm/setjmp.S" ]
    arch_srcs  x        = error ("Unknown architecture for newlib: " ++ x)
in
[ build library {
  target = "newc",
  addCFlags  = Config.newlibAddCFlags,
  omitCFlags = [ "-Wmissing-prototypes",
                 "-Wmissing-declarations",
                 "-Wimplicit-function-declaration",
                 "-Werror"],
  addLibraries = [
      "ctype"
    , "search"
    , "string"
    , "argz"
    , "stdlib"
    , "stdio"
--  , "signal"
    , "time"
    , "locale"
    , "reent"
    , "errno"
    , "misc"
    , "sys" ],
  cFiles = arch_srcs arch,
  architectures = [arch]
} | arch <- allArchitectures ]
else []
)))),
("./lib/newlib/newlib/libc/search/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/search/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/search/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/search/Hakefile" #-}
if Config.libc == "newlib" then [ build library {
  target = "search",
  cFiles = [
    "bsearch.c",
    "qsort.c",
    "hash.c",
    "hash_bigkey.c",
    "hash_buf.c",
    "hash_func.c",
    "hash_log2.c",
    "hash_page.c",
    "hcreate.c",
    "hcreate_r.c",
    "tdelete.c",
    "tdestroy.c",
    "tfind.c",
    "tsearch.c",
    "twalk.c"],
  addCFlags  = Config.newlibAddCFlags,
  omitCFlags = [ "-Wold-style-definition",
                 "-Wstrict-prototypes",
                 "-Wredundant-decls",
                 "-Werror" ]
}] else []
)))),
("./lib/newlib/newlib/libc/locale/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/locale/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/locale/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/locale/Hakefile" #-}
if Config.libc == "newlib" then [ build library {
  target = "locale",
  cFiles = [
    "locale.c",
    "fix_grouping.c",
    "ldpart.c",
    "lmessages.c",
    "lnumeric.c",
    "lmonetary.c",
    "nl_langinfo.c",
    "timelocal.c",
    "lctype.c" ],
  addCFlags = Config.newlibAddCFlags,
  omitCFlags = [ "-Wmissing-prototypes",
                 "-Wmissing-declarations",
                 "-Wimplicit-function-declaration",
                 "-Werror" ]
}] else []
)))),
("./lib/newlib/newlib/libc/sys/barrelfish/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/sys/barrelfish/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/sys/barrelfish/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/sys/barrelfish/Hakefile" #-}
if Config.libc == "newlib" then
let
    -- selection of malloc() implementation.
    -- Note that the default is "oldmalloc", and the other two options are (in
    -- the time of this writting) problematic:
    --   - "sbrk" uses sbrk() system call and does not return memory to the OS
    --   - "dlmalloc" does not seem to be work for low-level services like the memory allocator
    malloc_files = case Config.newlib_malloc of
        "dlmalloc"  -> ["dlmalloc.c", "mallocr.c"]
        "oldmalloc" -> ["oldmalloc.c", "oldcalloc.c", "oldrealloc.c", "oldsys_morecore.c", "mallocr.c"]
        "sbrk"      -> ["sbrk.c"]
in [ build library {
   target = "sys",
   addCFlags  = Config.newlibAddCFlags,
   cFiles     = [ "syscalls.c" , "findfp.c" , "posix_syscalls.c"]
                ++ malloc_files,
 omitCFlags   = [ "-Wmissing-prototypes",
                  "-Wmissing-declarations",
                  "-Wimplicit-function-declaration",
                  "-Werror" ]
}] else []
)))),
("./lib/newlib/newlib/libc/errno/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/errno/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/errno/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/errno/Hakefile" #-}
if Config.libc == "newlib" then [ build library {
  target = "errno",
  cFiles = [ "errno.c" ],
  addCFlags = Config.newlibAddCFlags,
  omitCFlags = [ "-Wmissing-prototypes",
                 "-Wmissing-declarations",
                 "-Wimplicit-function-declaration",
                 "-Werror" ]
}] else []
)))),
("./lib/newlib/newlib/libc/argz/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/argz/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/argz/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/argz/Hakefile" #-}
if Config.libc == "newlib" then [ build library {
  target = "argz",
  cFiles = [
          "argz_add.c",
          "argz_add_sep.c",
          "argz_append.c",
          "argz_count.c",
          "argz_create.c",
          "argz_create_sep.c",
          "argz_delete.c",
          "argz_extract.c",
          "argz_insert.c",
          "argz_next.c",
          "argz_replace.c",
          "argz_stringify.c",
          "buf_findstr.c",
          "dummy.c",
          "envz_add.c",
          "envz_entry.c",
          "envz_get.c",
          "envz_merge.c",
          "envz_remove.c",
          "envz_strip.c"
        ],
      addCFlags =  Config.newlibAddCFlags,
      omitCFlags = [ "-Wmissing-prototypes",
                     "-Wmissing-declarations",
                     "-Wimplicit-function-declaration",
                     "-Werror" ]
} ] else []
)))),
("./lib/newlib/newlib/libc/reent/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/reent/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/reent/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/reent/Hakefile" #-}
if Config.libc == "newlib" then
let
    sbrk_files = case Config.newlib_malloc of
     "sbrk"      -> ["sbrkr.c"]
     "dlmalloc"  -> []
     "oldmalloc" -> []
in
[ build library {
  target = "reent",
  cFiles = [
    "reent.c",
    "impure.c",
    --"fcntlr.c",
    "getreent.c"
    --"gettimeofdayr.c",
    --"isattyr.c",
    --"linkr.c",
    --"mkdirr.c",
    --"renamer.c",
    --"signalr.c",
    --"signgam.c",
    --"sbrkr.c"
    --"statr.c",
    --"timesr.c"
    --"openr.c",
    --"fstatr.c",
    --"unlinkr.c",
    --"lseekr.c",
    --"writer.c",
    --"closer.c",
    --"readr.c",
    --"execr.c"
   ] ++ sbrk_files,
    addCFlags = Config.newlibAddCFlags,
    omitCFlags = [ "-Wmissing-prototypes",
                   "-Wmissing-declarations",
                   "-Wimplicit-function-declaration",
                   "-Werror"]
}] else []
)))),
("./lib/newlib/newlib/libc/misc/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/misc/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/misc/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/misc/Hakefile" #-}
if Config.libc == "newlib" then [ build library {
  target = "misc",
  cFiles = [
          "__dprintf.c",
          "unctrl.c",
          "ffs.c",
          "init.c",
          "fini.c"
        ],
  addCFlags = Config.newlibAddCFlags,
  omitCFlags = [ "-Wmissing-prototypes",
                 "-Wmissing-declarations",
                 "-Wimplicit-function-declaration",
                 "-Werror" ]
} ] else []
)))),
("./lib/newlib/newlib/libc/ctype/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/ctype/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/ctype/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/ctype/Hakefile" #-}
if Config.libc == "newlib" then [ build library {
  target = "ctype",
  cFiles = [
    "ctype_.c",
    "isalnum.c",
    "isalpha.c",
    "iscntrl.c",
    "isdigit.c",
    "islower.c",
    "isupper.c",
    "isprint.c",
    "ispunct.c",
    "isspace.c",
    "isxdigit.c",
    "tolower.c",
    "toupper.c",
    "isascii.c",
    "isblank.c",
    "iswalnum.c",
    "iswalpha.c",
    "iswblank.c",
    "iswcntrl.c",
    "iswctype.c",
    "iswdigit.c",
    "iswgraph.c",
    "iswlower.c",
    "iswprint.c",
    "iswpunct.c",
    "iswspace.c",
    "iswupper.c",
    "iswxdigit.c",
    "jp2uc.c",
    "toascii.c",
    "towctrans.c",
    "towlower.c",
    "towupper.c",
    "wctrans.c",
    "wctype.c"], 
  addCFlags  = Config.newlibAddCFlags,
  omitCFlags = [ "-std=c99", "-Wmissing-declarations", "-Wmissing-prototypes", "-Werror"]
}] else []
)))),
("./lib/newlib/newlib/libc/stdio/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/stdio/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/stdio/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/stdio/Hakefile" #-}
let
  common_cflags = Config.newlibAddCFlags
  common_omitcflags = [
        "-std=c99",
        "-Wredundant-decls",
        "-Wmissing-prototypes",
        "-Wmissing-declarations",
        "-Wimplicit-function-declaration",
        "-Werror" ]
in
  if Config.libc == "newlib" then
  [
    build library {
      target = "stdio_si",
      cFiles = [ "svfiprintf.c", "svfiscanf.c", "svfiwprintf.c", "svfiwscanf.c"  ],
      addCFlags = common_cflags ++ [ "-DINTEGER_ONLY", "-DSTRING_ONLY" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdio_i",
      cFiles = [ "vfiprintf.c", "vfiscanf.c", "vfiwprintf.c", "vfiwscanf.c"  ],
      addCFlags = common_cflags ++ [ "-DINTEGER_ONLY" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdio_s",
      cFiles = [ "svfprintf.c", "svfscanf.c", "svfwprintf.c", "svfwscanf.c"  ],
      addCFlags = common_cflags ++ [ "-DSTRING_ONLY" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdio",
      cFiles = [
      "clearerr.c",
      "fclose.c",
      "fdopen.c",
      "feof.c",
      "ferror.c",
      "fflush.c",
      "fgetc.c",
      "fgetpos.c",
      "fgets.c",
      "fileno.c",
      --"findfp.c",
      "fiprintf.c",
      "flags.c",
      "fopen.c",
      "fprintf.c",
      "fputc.c",
      "fputs.c",
      "fread.c",
      "freopen.c",
      "fscanf.c",
      "fiscanf.c",
      "fseek.c",
      "fsetpos.c",
      "ftell.c",
      "fvwrite.c",
      "fwalk.c",
      "fwrite.c",
      "getc.c",
      "getchar.c",
      "getc_u.c",
      "getchar_u.c",
      "getdelim.c",
      "getline.c",
      "gets.c",
      "iprintf.c",
      "iscanf.c",
      "makebuf.c",
      "perror.c",
      "printf.c",
      "putc.c",
      "putchar.c",
      "putc_u.c",
      "putchar_u.c",
      "puts.c",
      "refill.c",
      "remove.c",
      "rename.c",
      "rewind.c",
      "rget.c",
      "scanf.c",
      "sccl.c",
      "setbuf.c",
      "setbuffer.c",
      "setlinebuf.c",
      "setvbuf.c",
      "siprintf.c",
      "siscanf.c",
      "sniprintf.c",
      "snprintf.c",
      "sprintf.c",
      "sscanf.c",
      "stdio.c",
      "tmpfile.c",
      "tmpnam.c",
      "ungetc.c",
      "vdiprintf.c",
      "vdprintf.c",
      "viprintf.c",
      "viscanf.c",
      "vprintf.c",
      "vscanf.c",
      "vsiprintf.c",
      "vsiscanf.c",
      "vsnprintf.c",
      "vsniprintf.c",
      "vsprintf.c",
      "vsscanf.c",
      "wbuf.c",
      "wsetup.c",
      "asiprintf.c",
      "asprintf.c",
      "fcloseall.c",
      "fseeko.c",
      "ftello.c",
      "getw.c",
      "mktemp.c",
      "putw.c",
      "vasiprintf.c",
      "vasprintf.c",
      "asniprintf.c",
      "asnprintf.c",
      "diprintf.c",
      "dprintf.c",
      "fgetwc.c",
      "fgetws.c",
      "fmemopen.c",
      "fopencookie.c",
      "fpurge.c",
      "fputwc.c",
      "fputws.c",
      "funopen.c",
      "fwide.c",
      "fwprintf.c",
      "fwscanf.c",
      "getwc.c",
      "getwchar.c",
      "open_memstream.c",
      "putwc.c",
      "putwchar.c",
      "swprintf.c",
      "swscanf.c",
      "ungetwc.c",
      "vasniprintf.c",
      "vasnprintf.c",
      "vswprintf.c",
      "vswscanf.c",
      "vwprintf.c",
      "vwscanf.c",
      "wprintf.c",
      "wscanf.c",
      "vfwscanf.c", "vfscanf.c", "vfprintf.c", "vfwprintf.c"
    ],
    addCFlags = common_cflags,
    addLibraries = [ "stdio_si", "stdio_s", "stdio_i" ],
    omitCFlags = common_omitcflags
  }
]
else []
)))),
("./lib/newlib/newlib/libc/stdlib/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/stdlib/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/stdlib/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/stdlib/Hakefile" #-}
let
  malloc_provided = case Config.newlib_malloc of
    "sbrk"      -> False
    "dlmalloc"  -> True
    "oldmalloc" -> True
  common_cflags = Config.newlibAddCFlags
                  ++ if malloc_provided then ["-DMALLOC_PROVIDED"] else []
  common_omitcflags = [ "-std=c99",
                        "-Wredundant-decls",
                        "-Wmissing-prototypes",
                        "-Wmissing-declarations",
                        "-Wimplicit-function-declaration",
                        "-Werror" ]
in
  if Config.libc == "newlib" then
  [
    build library {
      target = "stdlib_free",
      cFiles = [ "freer.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_FREE" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_realloc",
      cFiles = [ "reallocr.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_REALLOC" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_calloc",
      cFiles = [ "callocr.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_CALLOC" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_cfree",
      cFiles = [ "cfreer.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_CFREE" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_mallinfo",
      cFiles = [ "mallinfor.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_MALLINFO" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_mallstats",
      cFiles = [ "mallstatsr.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_MALLOC_STATS" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_msize",
      cFiles = [ "msizer.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_MALLOC_USABLE_SIZE" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_malloc",
      cFiles = [ "mallocr.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_MALLOC" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_malign",
      cFiles = [ "malignr.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_MEMALIGN" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_mallopt",
      cFiles = [ "malloptr.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_MALLOPT" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_pvalloc",
      cFiles = [ "pvallocr.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_PVALLOC" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib_valloc",
      cFiles = [ "vallocr.c" ],
      addCFlags = common_cflags ++ [ "-DINTERNAL_NEWLIB", "-DDEFINE_VALLOC" ],
      omitCFlags = common_omitcflags
    },

    build library {
      target = "stdlib",
      cFiles = [
        "__adjust.c" ,
        "__atexit.c" ,
        "__call_atexit.c" ,
        "__exp10.c" ,
        "__ten_mu.c" ,
        --"_Exit.c" ,
        --"abort.c" ,
        "abs.c" ,
        "assert.c" ,
        "atexit.c" ,
        "atof.c" ,
        "atoff.c" ,
        "atoi.c" ,
        "atol.c" ,
        "calloc.c" ,
        "div.c" ,
        "dtoa.c" ,
        "dtoastub.c" ,
        "environ.c" ,
        "envlock.c" ,
        "eprintf.c" ,
        "exit.c" ,
        "gdtoa-gethex.c" ,
        "gdtoa-hexnan.c" ,
        "getenv.c" ,
        "getenv_r.c" ,
        "labs.c" ,
        "ldiv.c" ,
        "ldtoa.c",
        "malloc.c",
        "mblen.c",
        "mblen_r.c",
        "mbstowcs.c",
        "mbstowcs_r.c",
        "mbtowc.c",
        "mbtowc_r.c",
        "mlock.c",
        "mprec.c",
        "mstats.c",
        "rand.c",
        "rand_r.c",
        "realloc.c",
        "reallocf.c",
        "sb_charsets.c",
        "strtod.c",
        "strtol.c",
        "strtoul.c",
        "wcstod.c",
        "wcstol.c",
        "wcstoul.c",
        "wcstombs.c",
        "wcstombs_r.c",
        "wctomb.c",
        "wctomb_r.c",
        "strtold.c",
        "wcstold.c",
        "cxa_atexit.c",
        "cxa_finalize.c",
        "drand48.c",
        "ecvtbuf.c",
        "efgcvt.c",
        "erand48.c",
        "jrand48.c",
        "lcong48.c",
        "lrand48.c",
        "mrand48.c",
        "msize.c",
        "mtrim.c",
        "nrand48.c",
        "rand48.c",
        "seed48.c",
        "srand48.c",
        "strtoll.c",
        "strtoll_r.c",
        "strtoull.c",
        "strtoull_r.c",
        "wcstoll.c",
        "wcstoll_r.c",
        "wcstoull.c",
        "wcstoull_r.c",
        "atoll.c",
        "llabs.c",
        "lldiv.c",
        "a64l.c",
        "btowc.c",
        "getopt.c",
        "getsubopt.c",
        "l64a.c",
        "malign.c",
        "mbrlen.c",
        "mbrtowc.c",
        "mbsinit.c",
        "mbsnrtowcs.c",
        "mbsrtowcs.c",
        "on_exit.c",
        "valloc.c",
        "wcrtomb.c",
        "wcsnrtombs.c",
        "wcsrtombs.c",
        "wctob.c",
        "putenv.c",
        "putenv_r.c",
        "setenv.c",
        "setenv_r.c"
        --"system.c"
        ],
      addCFlags = common_cflags,
      addLibraries = [ "stdlib_free", "stdlib_realloc", "stdlib_calloc", "stdlib_cfree", "stdlib_mallinfo", "stdlib_mallstats", "stdlib_msize", "stdlib_malloc", "stdlib_malign", "stdlib_mallopt", "stdlib_pvalloc", "stdlib_valloc" ],
      omitCFlags = common_omitcflags
    } ]
else []
)))),
("./lib/newlib/newlib/libc/string/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/string/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/string/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/string/Hakefile" #-}
if Config.libc == "newlib" then [ build library {
  target = "string",
  cFiles = [
    "bcopy.c",
    "bzero.c",
    "index.c",
    "memchr.c",
    "memcmp.c",
    "memcpy.c",
    "memmove.c",
    "memset.c",
    "rindex.c",
    "strcasecmp.c",
    "strcat.c",
    "strchr.c",
    "strcmp.c",
    "strcoll.c",
    "strcpy.c",
    "strcspn.c",
    "strdup.c",
    "strdup_r.c",
    "strerror.c",
    "strerror_r.c",
    "strlcat.c",
    "strlcpy.c",
    "strlen.c",
    "strlwr.c",
    "strncasecmp.c",
    "strncat.c",
    "strncmp.c",
    "strncpy.c",
    "strnlen.c",
    "strpbrk.c",
    "strrchr.c",
    "strsep.c",
    "strsignal.c",
    "strspn.c",
    "strtok.c",
    "strtok_r.c",
    "strupr.c",
    "strxfrm.c",
    "strstr.c",
    "swab.c",
    "u_strerr.c",
    "wcscat.c",
    "wcschr.c",
    "wcscmp.c",
    "wcscoll.c",
    "wcscpy.c",
    "wcscspn.c",
    "wcslcat.c",
    "wcslcpy.c",
    "wcslen.c",
    "wcsncat.c",
    "wcsncmp.c",
    "wcsncpy.c",
    "wcsnlen.c",
    "wcspbrk.c",
    "wcsrchr.c",
    "wcsspn.c",
    "wcsstr.c",
    "wcstok.c",
    "wcswidth.c",
    "wcsxfrm.c",
    "wcwidth.c",
    "wmemchr.c",
    "wmemcmp.c",
    "wmemcpy.c",
    "wmemmove.c",
    "wmemset.c",
    "bcmp.c",
    "memccpy.c",
    "mempcpy.c",
    "stpcpy.c",
    "stpncpy.c",
    "strndup.c",
    "strcasestr.c",
    "strndup_r.c",
    "wcpcpy.c",
    "wcpncpy.c",
    "wcsdup.c",
    "memmem.c",
    "wcscasecmp.c",
    "wcsncasecmp.c"],
  addCFlags = Config.newlibAddCFlags,
  omitCFlags = [ "-Wmissing-prototypes",
                 "-Wmissing-declarations",
                 "-Wimplicit-function-declaration",
                 "-Werror" ]
}] else []
)))),
("./lib/newlib/newlib/libc/signal/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/signal/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/signal/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/signal/Hakefile" #-}
if Config.libc == "newlib" then [ build library {
  target     = "signal",
  cFiles     = [ "raise.c", "signal.c" ],
  addCFlags  = Config.newlibAddCFlags,
  omitCFlags = [ "-Wmissing-prototypes",
                 "-Wmissing-declarations",
                 "-Wimplicit-function-declaration",
                 "-Werror" ]
} ] else []
)))),
("./lib/newlib/newlib/libc/time/Hakefile", (let find fn arg = (fn allfiles "./lib/newlib/newlib/libc/time/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/newlib/newlib/libc/time/Hakefile" a in
{-# LINE 1 "../lib/newlib/newlib/libc/time/Hakefile" #-}
if Config.libc == "newlib" then
[ build library {
  target = "time",
  cFiles = [
    "asctime.c",
    "asctime_r.c",
    "clock.c",
    "ctime.c",
    "ctime_r.c",
    "difftime.c",
    "gettzinfo.c",
    "gmtime.c",
    "gmtime_r.c",
    "lcltime.c",
    "lcltime_r.c",
    "mktime.c",
    "mktm_r.c",
    "strftime.c",
    "strptime.c",
    "time.c",
    "tzlock.c",
    "tzset.c",
    "tzset_r.c",
    "tzvars.c",
    "wcsftime.c" ],
  addCFlags = Config.newlibAddCFlags,
  omitCFlags = [ "-std=c99",
                 "-Wmissing-prototypes",
                 "-Wmissing-declarations",
                 "-Wimplicit-function-declaration",
                 "-Werror" ]
   }
]
else []
)))),
("./lib/pager/Hakefile", (let find fn arg = (fn allfiles "./lib/pager/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./lib/pager/Hakefile" a in
{-# LINE 1 "../lib/pager/Hakefile" #-}

[ build library { target = "pager",
  		  cFiles = [ "pager.c" ]
                }
]
)))),
("./hake/Hakefile", (let find fn arg = (fn allfiles "./hake/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./hake/Hakefile" a in
{-# LINE 1 "../hake/Hakefile" #-}
----------------------------------------------------------------------
-- Copyright (c) 2009, 2011, 2012, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK CAB F.78, Universitaetstr 6, CH-8092 Zurich. 
-- Attn: Systems Group.
--
-- Hakefile for /hake
--
----------------------------------------------------------------------

let
  hsInDir af tf dir = inDir af tf dir ".hs"
  hakesrc = find hsInDir "."
in
[ Rule ([ Str "ghc -O --make -XDeriveDataTypeable",
          Str "-package ghc",
          Str "-package ghc-paths",
          Str "-rtsopts=all",
          Str "-with-rtsopts=\"-K32m\"",
          Str "-o", Out "hake" "/hake",
          Str "-outputdir", NoDep BuildTree "hake" "/",
          NStr "-i", NoDep SrcTree "src" "",
          NStr "-i", NoDep BuildTree "hake" "/",
          In SrcTree "src" "Main.hs",
          Dep InstallTree "" "Config.hs",
          Str "$(LDFLAGS)"
        ] 
        ++ [Dep SrcTree "src" f | f <- hakesrc] 
        ++ [NL, Str "rm", NoDep BuildTree "hake" "/ARMv5.o" ]),
  Rule [ Str "cp", 
         In SrcTree "src" "symbolic_targets.mk",
         Out "root" "symbolic_targets.mk" 
       ],

  -- copy default menu.lst file for the first architecture
  -- XXX: this should be per-platform, if hake knew about them
  Rule [ Str "cp -p -b ", In SrcTree "src" "menu.lst.$(word 1, $(HAKE_ARCHS))", Out "root" "menu.lst" ]
]
)))),
("./errors/Hakefile", (let find fn arg = (fn allfiles "./errors/Hakefile" arg) in
Rules ((let build a = (buildFunction a) allfiles "./errors/Hakefile" a in
{-# LINE 1 "../errors/Hakefile" #-}
--------------------------------------------------------------------------
-- Copyright (c) 2007-2009, ETH Zurich.
-- All rights reserved.
--
-- This file is distributed under the terms in the attached LICENSE file.
-- If you do not find this file, copies can be found by writing to:
-- ETH Zurich D-INFK, Haldeneggsteig 4, CH-8092 Zurich. Attn: Systems Group.
--
-- Hakefile for /errors/
-- 
--------------------------------------------------------------------------

[ fuguFile (options arch) "errno" | arch <- allArchitectures ]
))))];
}
