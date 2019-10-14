.class final Lcom/android/server/pm/BlackListPackagePolicy;
.super Ljava/lang/Object;
.source "BlackListPackagePolicy.java"


# static fields
.field static final mBlackListSet:[Ljava/lang/String;

.field static final mIsFactoryBinary:Z

.field static final mIsLduBinary:Z

.field static final mLduBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x137

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.futuremark.pcmark.android.benchmark"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "air.A3DChartsMobile"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "air.com.n2degames.bulletbenchmark"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "atg.iiimark.app"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "benchmark.packet"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "com.Bfield.CpuIdentifier"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "com.MadDog.LiveOceanBenchmark"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "com.Maniac.UnityBenchmark"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "com.OpenWorldGaming.CarDriving3DSimulator"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "com.almalence.opencam"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "com.antutu.ABenchMark"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "com.antutu.ABenchMark.GL2"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "com.antutu.ABenchMark.GL3"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "com.antutu.CpuMasterFree"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "com.antutu.powersaver"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "com.antutu.tester"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "com.aurorasoftworks.quadrant.ui.standard"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "com.ayros.bench"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "com.batterybench"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "com.cgollner.benchmark.free"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "com.cpuid.cpu_z"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "com.electronmagic"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "com.footballfight.burstyourscreen"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "com.futuremark.dmandroid.application"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "com.georgie.pi"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "com.glbenchmark.glbenchmark27"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "com.i6.FlightSimulatorAirplane3D"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "com.jcbgrnr.billioncounterv2"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "com.madfingergames.deadtrigger2"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "com.motorola.ledwidget"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "com.mtorres.phonetester"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "com.nemustech.regina"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "com.obkircherlukas.cpuprimebenchmark"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "com.os.project.norvigtorious"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "com.qb"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "com.qqfriends.com.music"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "com.re3.benchmark"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "com.redlicense.benchmark.sqlite"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "com.rejectedgames.bonsaibenchmark"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "com.rfo.esysinfo"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "com.roofgame.madagascar3d"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "com.rootgame.potaty"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "com.salapp.phoneinfo"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "com.skippy.gunship.helicopter.war"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "com.snowcold.benchmark"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "com.tapinator.boeing.cargoplane"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "com.threed.bowling"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "com.unstableapps.cpubenchmark"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "com.vbulletin.build_2152"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "com.virtualization.threedpalfreev"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "com.yes.game.mobile.boxing.game"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "de.ralischer.gpu_benchmark"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "fishnoodle.benchmark"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "it.sineo.android.noFrillsCPU"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "jp.flatlib.flatlib3.vfpbench"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "ru.rdmobile.bench"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "softweg.hw.performance"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "vog.com.aiv"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "zausan.zdevicetest"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "air.PerformanceDemoBenchmark"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "air.com.dustunited.StarlingBenchmark"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "air.com.flashfx.gfx.flame2d"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "ales.veluscek.sdtools"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "at.favre.app.blurbenchmark"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "bg.benchmark.sm"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "bms.main"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "boofcv.benchmark.android"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "carron.graphics.benchmark"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "com.CPUspeedPrimeNumber"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "com.JechBeat.Graphics_Bench_Extreme_Lite"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "com.Maniac.NewBench"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "com.Maniac.UBenchEnhanced"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "com.acreve.benchmark"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "com.agence3pp"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "com.akerskuuug.swedroidbenchmarks"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "com.allego.windmill"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "com.android.cm3"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "com.andromeda.androbench2"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "com.antutu.phoneprofilefree"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "com.app3ho.BenchMark"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "com.appbuilder.u117719p219766"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "com.appdroid.anycut"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "com.appems.hawkeye"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "com.benchmarkagrisk.app10"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "com.benchmarkemail.email"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "com.benchmarkemail.events"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "com.clarke.agnes.benchmark.android"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "com.compubench.rs"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "com.conduit.app_071bf747fb444b11af3c76c604cc8ffe.app"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "com.creativepsyco"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "com.dama.hardwareinfo"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "com.dms.benchmarkaudit"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "com.dnguyen.storebench"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "com.drolez.nbench"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "com.eembc.andebench"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "com.eembc.coremark"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "com.elevenbitstudios.anomaly2Benchmark"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "com.elohim.mtm"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "com.fi6869.godough"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "com.gg.pi"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "com.gpsbenchmark.android"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "com.greenecomputing.linpack"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "com.sqi.linpackbenchmark"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string/jumbo v1, "rs.pedjaapps.Linpack"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "com.hexwave.hexengine.benchmark"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "com.iTechGenius.porscheSPP"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "com.ifs.banking.fiid4241"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "com.kepsoftware.benchmark"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "com.kortenoeverdev.GPUbench"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "com.linderdaum.engine.vsdct"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "com.linebenchmark"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "com.machineworksnorthwest.mwalaskan"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "com.magicalgirl.RealSpeed_Limited"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "com.mobilityre.foursale"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "com.mot.multicore"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "com.ndroidsoft.graficos"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "com.okean.modelloader3dlite"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "com.particlebenchmark"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "com.passmark.pt_mobile"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "com.phosphorgames.DarkMeadow"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "com.plutonium.software"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "com.quicinc.vellamo"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "com.reflexgames.ultrabenchmarkdemo"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "com.rightware.BasemarkOSII"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "com.rightware.BasemarkX_Free"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "com.rightware.tdmm2v10jnifree"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "com.rsklnkv.uTest"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "com.simplecode.leafy.seadragon.android.benchmark.one"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "com.sofica.camspeed"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "com.sunidea.jme3aibench"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "com.tactel.electopia"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "com.threed.jpct.bench"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "com.threed.jpct.benchxl"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "com.tomaskimer.gles3mark"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "com.tutorial"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "com.wOpenGLGeometryHTMLTesting"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "com.wtsang02.sqliteutil.activities"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "de.kashban.android.kakerlake"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "de.mareas.android.sensmark"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "de.swagner.monjori"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "droidenschmiede.omega"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "esos.MobiBench"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "eu.chainfire.cfbench"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "gr.androiddev.BenchmarkPi"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "innovatussystems.benchmarkteam"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "it.JBench.bench"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "jp.kentarokodama.elementbenchmark.jitoff"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "jp.kentarokodama.elementbenchmark.jiton"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "jp.sin_dennou.SinD_Bench"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string/jumbo v1, "mdroid.benchmark"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string/jumbo v1, "name.duzenko.farfaraway"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.bsayiner.benchmark.SuperPi"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.danielroggen.rambench"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.danielroggen.scimark"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.fishlabs.vwscc2"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.simon.primebenchmark"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.hwbot.prime"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.noote.RayTracer"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.pierre.inputbenchmark"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.ruboto.benchmarks"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string/jumbo v1, "prime.of.the.moon.MikuMikuBench"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string/jumbo v1, "prime.of.the.moon.RinRinBench"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string/jumbo v1, "rs.in.luka.android.pi"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string/jumbo v1, "rt.wifirecption.wifireceptionbenchmark"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string/jumbo v1, "vik.teclever"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "com.qualcomm.qx.neocore"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "com.rightware.basemarkgui"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "com.smartbench.eleven"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "com.smartbench.twelve"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "com.smartbench"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string/jumbo v1, "se.nena.nenamark1"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string/jumbo v1, "se.nena.nenamark2"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "com.cpuid.cpu_z"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "com.dama.hardwareinfo"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "com.sysinfodroid"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string/jumbo v1, "pl.pawelbialecki.smartsysteminfo"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo.pro"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "com.inkwired.droidinfo"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "com.chillax.mydroid"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "com.bhi.systeminfo"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "com.indepico.sysinfo"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "com.jasoncalhoun.android.systeminfowidget"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "jp.co.brycen.android.systeminfoexcel"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "com.p_soft.sysmon"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "com.danijepg.hardwareinfoex"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "kr.smartools.sysinfo"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "com.andro.info"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "com.electricsheep.asipro"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "com.tellmewise.hardware"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "com.everbum.esy"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "com.BoshBashStudios.SystemInfoIDPro"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "com.tech.phoneinfos"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "ka.wo.maybe"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "eu.thedarken.sdm"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "com.rfo.esysinfo"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "com.touchtype.swiftkey"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "com.ryousaku.system_info"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "com.shlee.pi"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "eu.thedarken.diagnosis"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "com.github.beaufortfrancois.cog_chrome_app"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo.pre"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "jp.main.kurousa.android.livewallpaper.DeviceInfo"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string/jumbo v1, "ru.nfos.aura.body"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "air.com.eu.inove.sss2"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "com.ajeet.sysglance"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "com.gonext.systeminfo"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "in.nishitp.toolbox.sysinfo"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "com.cgollner.systemmonitor"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "cn.menue.phonepermance.international"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "com.sonyericsson.trackid"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.androtik.app.sysinfo"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "de.android.telnet"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "com.disney.TempleRunOz.goo"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "ccc71.pmw.pro"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "de.vrsinfo"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo.pro.widgets"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "com.cgollner.systemmonitor.lite"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string/jumbo v1, "stevesk.apps.solarsystem"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "com.apps.repairandroidsysteminnfo"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string/jumbo v1, "sysinfo.sysinfo.sysinfo"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string/jumbo v1, "pl.wp.android.news"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "fr.francetv.apps.info"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "com.alarmsystem.focus"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "de.screeninfotool"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "com.app.info"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "com.dynotes.miniinfo"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "com.stain46.sysinfonotifree"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string v1, "com.indepico.netstat"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string v1, "ds.cpuoverlay"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string v1, "jp.main.kurousa.android.livewallpaper.DeviceInfoEx"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string v1, "com.stain46.sysinfonoti"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo.nl.ee"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo.nl.ap"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo.nl.tw"

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo.nl.cn"

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo.nl.se"

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.uguess.android.sysinfo.nl.we"

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const-string v1, "com.bryancandi.sysi"

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const-string v1, "com.torosys.ldsinfo"

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const-string v1, "com.droidbs.wallpaper.live.systeminfo"

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.droidssystemsuite"

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const-string v1, "com.lathconsultants.PNR_status"

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const-string v1, "com.intelloware.apkinfo"

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const-string v1, "com.chillax.mydroid.adfree"

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const-string v1, "com.tgsoft.sysinfo"

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const-string v1, "com.trigonesoft.rsm"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const-string v1, "com.pgmsoft.library"

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const-string v1, "com.rookiestudio.systemmonitor"

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const-string v1, "com.mobigic.droidinfo"

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const-string v1, "com.rzdev.getsysteminfo.systeminfo"

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const-string v1, "com.electricsheep.asi"

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const-string v1, "com.primatelabs.geekbench"

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    const-string v1, "ca.primatelabs.geekbench2"

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    const-string v1, "com.emobile.flashlight"

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    const-string v1, "com.james.SmartTaskManager"

    const/16 v2, 0xff

    aput-object v1, v0, v2

    const-string v1, "com.antutu.videobench"

    const/16 v2, 0x100

    aput-object v1, v0, v2

    const-string/jumbo v1, "pavel.ugo.cpumonitor4"

    const/16 v2, 0x101

    aput-object v1, v0, v2

    const-string/jumbo v1, "mem.usage"

    const/16 v2, 0x102

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.neotech.app.tinycore"

    const/16 v2, 0x103

    aput-object v1, v0, v2

    const-string v1, "com.bigbro.ProcessProfiler"

    const/16 v2, 0x104

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.rjj.android.memorymonitor"

    const/16 v2, 0x105

    aput-object v1, v0, v2

    const-string v1, "com.tawkon.power"

    const/16 v2, 0x106

    aput-object v1, v0, v2

    const-string/jumbo v1, "nl.sogeti.android.deviceprofiler"

    const/16 v2, 0x107

    aput-object v1, v0, v2

    const-string v1, "com.OS_System_Monitor_209073"

    const/16 v2, 0x108

    aput-object v1, v0, v2

    const-string v1, "com.rotaryheart.fan.controller"

    const/16 v2, 0x109

    aput-object v1, v0, v2

    const-string v1, "com.phardera.evasysmon"

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    const-string v1, "com.digibites.m.sysmon"

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    const-string v1, "com.dev.system.monitor"

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    const-string v1, "com.scalersoft.widget"

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    const-string v1, "cz.raven4.MKSysMon1"

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    const-string v1, "cz.raven4.MKLight"

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    const-string v1, "de.steffrance.popupmonitor"

    const/16 v2, 0x110

    aput-object v1, v0, v2

    const-string v1, "com.rookiestudio.systemmonitor.donate"

    const/16 v2, 0x111

    aput-object v1, v0, v2

    const-string v1, "com.dp.sysmonitor.app"

    const/16 v2, 0x112

    aput-object v1, v0, v2

    const-string v1, "com.powervr.PVRMonitor"

    const/16 v2, 0x113

    aput-object v1, v0, v2

    const-string v1, "com.gmail.hanzomishima007.ap009performancemonitor"

    const/16 v2, 0x114

    aput-object v1, v0, v2

    const-string v1, "com.innovationm.myandroid"

    const/16 v2, 0x115

    aput-object v1, v0, v2

    const-string v1, "com.alienmanfc6.wheresmyandroid"

    const/16 v2, 0x116

    aput-object v1, v0, v2

    const-string v1, "com.checkmyandroid.app"

    const/16 v2, 0x117

    aput-object v1, v0, v2

    const-string v1, "com.mymobileprotection20"

    const/16 v2, 0x118

    aput-object v1, v0, v2

    const-string v1, "com.TMillerApps.CleanMyAndroid"

    const/16 v2, 0x119

    aput-object v1, v0, v2

    const-string v1, "com.usk.app.notifymyandroid"

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    const-string v1, "com.tools.power"

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    const-string v1, "com.uzumapps.wakelockdetector"

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    const-string v1, "com.uzumapps.wakelockdetector.full"

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    const-string v1, "com.ijinshan.kbatterydoctor_en"

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    const-string/jumbo v1, "om.asksven.betterbatterystats"

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    const-string v1, "com.asksven.betterbatterystats"

    const/16 v2, 0x120

    aput-object v1, v0, v2

    const-string v1, "com.zomut.watchdoglite"

    const/16 v2, 0x121

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.rgruet.android.g3watchdog"

    const/16 v2, 0x122

    aput-object v1, v0, v2

    const-string v1, "com.zomut.watchdog"

    const/16 v2, 0x123

    aput-object v1, v0, v2

    const-string/jumbo v1, "np.com.rts.networkwatchdog"

    const/16 v2, 0x124

    aput-object v1, v0, v2

    const-string v1, "com.smart.SmartMonitorLite"

    const/16 v2, 0x125

    aput-object v1, v0, v2

    const-string/jumbo v1, "ru.larkit.watchdog"

    const/16 v2, 0x126

    aput-object v1, v0, v2

    const-string v1, "com.aurorasoftworks.quadrant.ui.professional"

    const/16 v2, 0x127

    aput-object v1, v0, v2

    const-string v1, "com.aurorasoftworks.quadrant.ui.advanced"

    const/16 v2, 0x128

    aput-object v1, v0, v2

    const-string v1, "com.glbenchmark.glbenchmark27.corporate"

    const/16 v2, 0x129

    aput-object v1, v0, v2

    const-string v1, "com.glbenchmark.glbenchmark25"

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    const-string v1, "com.glbenchmark.glbenchmark25.corporate"

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    const-string v1, "com.glbenchmark.glbenchmark21"

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    const-string v1, "com.futuremark.dmandroid.slingshot"

    const/16 v2, 0x12d

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.kishonti.gfxbench.gl"

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    const-string v1, "com.primatelabs.geekbench4.corporate"

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.kishonti.gfxbench.gl.v40013.corporate"

    const/16 v2, 0x130

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.kishonti.gfxbench.gl.v40000.corporate"

    const/16 v2, 0x131

    aput-object v1, v0, v2

    const-string v1, "com.antutu.benchmark.full"

    const/16 v2, 0x132

    aput-object v1, v0, v2

    const-string v1, "com.samsung.sdet.benchmark"

    const/16 v2, 0x133

    aput-object v1, v0, v2

    const-string v1, "com.primatelabs.geekbench3"

    const/16 v2, 0x134

    aput-object v1, v0, v2

    const-string v1, "com.sdet.diagnoser4sdetbench"

    const/16 v2, 0x135

    aput-object v1, v0, v2

    const-string v1, "com.aurorasoftworks.quadrant.ui.advanced"

    const/16 v2, 0x136

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/pm/BlackListPackagePolicy;->mBlackListSet:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/server/pm/BlackListPackagePolicy;->mBlackListSet:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/BlackListPackagePolicy;->mLduBlacklist:Ljava/util/HashSet;

    const-string/jumbo v0, "ro.build.PDA"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LLK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BlackListPackagePolicy;->mIsLduBinary:Z

    const-string v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BlackListPackagePolicy;->mIsFactoryBinary:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklistEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/BlackListPackagePolicy;->mIsLduBinary:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/pm/BlackListPackagePolicy;->mIsFactoryBinary:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static isBlackListed(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/android/server/pm/BlackListPackagePolicy;->mLduBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
