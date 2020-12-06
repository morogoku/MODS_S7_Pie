.class public Lcom/android/systemui/aod/AODService;
.super Landroid/service/dreams/DreamService;
.source "AODService.java"

# interfaces
.implements Lcom/android/systemui/aod/AODMachine$Service;
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/dreams/DreamService;",
        "Lcom/android/systemui/aod/AODMachine$Service;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/SPlugin;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final USE_AOD_WINDOW:Z

.field private mAODMachine:Lcom/android/systemui/aod/AODMachine;

.field private mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

.field private mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

.field private mAlwaysOnDisplayConfig:Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;

.field private mClockPackPlugin:Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AODService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/aod/AODService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    invoke-static {}, Lcom/android/systemui/Rune;->useAODWindow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/aod/AODService;->USE_AOD_WINDOW:Z

    sget-boolean v0, Lcom/android/systemui/aod/AODService;->DEBUG:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/aod/AODService;->setDebug(Z)V

    return-void
.end method

.method private startAlwaysOnDisplay()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/aod/AODService;->USE_AOD_WINDOW:Z

    if-eqz v0, :cond_1

    const-string v0, "AODService"

    const-string/jumbo v1, "startAlwaysOnDisplay: USE_AOD_WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/aod/AODWindowDelegate;

    invoke-direct {v0, p0}, Lcom/android/systemui/aod/AODWindowDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

    invoke-virtual {v1}, Lcom/android/systemui/aod/AODWindowDelegate;->attach()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/aod/PluginAODManager;->getSysUIConfig()Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    invoke-virtual {v1, v0}, Lcom/android/systemui/aod/AODMachine;->setAODShowing(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/aod/AODFactory;->getHost(Lcom/android/systemui/aod/AODService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->getAODContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setCanPokeDrawLock(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/aod/PluginAODManager;->getSysUIConfig()Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    invoke-virtual {v3, v2}, Lcom/android/systemui/aod/AODMachine;->setAODShowing(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startClockPack()V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/aod/AODFactory;->getHost(Lcom/android/systemui/aod/AODService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    const-string v1, "AODService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startClockPack called dozeHost : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mClockPackPlugin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/aod/AODService;->mClockPackPlugin:Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mClockPackPlugin:Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->getAODContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/aod/AODService;->mClockPackPlugin:Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    invoke-interface {v2, v1}, Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;->onDreamingStarted(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private stopAlwaysOnDisplay()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->onDreamingStopped()V

    iput-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/aod/AODService;->USE_AOD_WINDOW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

    invoke-virtual {v0}, Lcom/android/systemui/aod/AODWindowDelegate;->detach()V

    iput-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

    :cond_1
    return-void
.end method

.method private stopClockPack()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mClockPackPlugin:Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mClockPackPlugin:Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;->onDreamingStopped()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/aod/AODService;->mClockPackPlugin:Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    invoke-virtual {v0, p2}, Lcom/android/systemui/aod/AODMachine;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0, p2}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->dump(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "AODService"

    const-string/jumbo v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/aod/AODService;->setWindowless(Z)V

    new-instance v0, Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/aod/AODService;->mAlwaysOnDisplayConfig:Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;

    invoke-static {p0}, Lcom/android/systemui/aod/AODFactory;->getHost(Lcom/android/systemui/aod/AODService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAlwaysOnDisplayConfig:Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;->alwaysOnDisplayAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    const-class v2, Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v0, p0, v2, v1}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    const-class v2, Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    invoke-interface {v0, p0, v2, v1}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    :goto_0
    new-instance v0, Lcom/android/systemui/aod/AODFactory;

    invoke-direct {v0}, Lcom/android/systemui/aod/AODFactory;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mAlwaysOnDisplayConfig:Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/aod/AODFactory;->assembleMachine(Lcom/android/systemui/aod/AODService;Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;)Lcom/android/systemui/aod/AODMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "AODService"

    const-string/jumbo v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    if-nez v0, :cond_0

    const-string v0, "AODService"

    const-string/jumbo v1, "onDreamingStarted: mAODMachine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "AODService"

    const-string/jumbo v1, "onDreamingStarted: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/AODMachine;->onRequestState(I)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAlwaysOnDisplayConfig:Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;->alwaysOnDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/aod/AODService;->startAlwaysOnDisplay()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/aod/AODService;->startClockPack()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->startDozing()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    if-nez v0, :cond_0

    const-string v0, "AODService"

    const-string/jumbo v1, "onDreamingStopped: mAODMachine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "AODService"

    const-string/jumbo v1, "onDreamingStopped: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/AODMachine;->onRequestState(I)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAlwaysOnDisplayConfig:Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;->alwaysOnDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/aod/AODService;->stopAlwaysOnDisplay()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/aod/AODService;->stopClockPack()V

    :goto_0
    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    if-nez v0, :cond_0

    const-string v0, "AODService"

    const-string/jumbo v1, "onPluginConnected: mAODMachine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    instance-of v0, p1, Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_1

    const-string v0, "AODService"

    const-string/jumbo v1, "onPluginConnected: PluginAOD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Lcom/samsung/systemui/splugins/aod/PluginAOD;

    iput-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/aod/AODFactory;->getHost(Lcom/android/systemui/aod/AODService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->setDozeHost(Lcom/android/systemui/doze/DozeHost;)V

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->setAODPlugin(Lcom/samsung/systemui/splugins/aod/PluginAOD;)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->setAODPluginCallback(Lcom/samsung/systemui/splugins/aod/PluginAOD$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getAODParameter()Lcom/samsung/systemui/splugins/aod/PluginAODParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/AODMachine;->setAODParameter(Lcom/samsung/systemui/splugins/aod/PluginAODParameter;)V

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/aod/AODService;->startAlwaysOnDisplay()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_2

    const-string v0, "AODService"

    const-string/jumbo v1, "onPluginConnected: PluginClockPack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    iput-object v0, p0, Lcom/android/systemui/aod/AODService;->mClockPackPlugin:Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mClockPackPlugin:Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODMachine:Lcom/android/systemui/aod/AODMachine;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;->setAODPluginCallback(Lcom/samsung/systemui/splugins/aod/PluginAOD$Callback;)V

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/aod/AODService;->startClockPack()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    const-string v0, "AODService"

    const-string/jumbo v1, "onPluginDisconnected: PluginAOD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->setDozeHost(Lcom/android/systemui/doze/DozeHost;)V

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->setAODPlugin(Lcom/samsung/systemui/splugins/aod/PluginAOD;)V

    invoke-direct {p0}, Lcom/android/systemui/aod/AODService;->stopAlwaysOnDisplay()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_1

    const-string v0, "AODService"

    const-string/jumbo v1, "onPluginDisconnected: PluginClockPack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/aod/AODService;->stopClockPack()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->getDozeScreenState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->setDozeScreenState(II)V

    :cond_0
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDozeScreenState(I)V

    return-void
.end method

.method public updateAODWindowLayoutParams()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODService;->mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

    invoke-virtual {v0}, Lcom/android/systemui/aod/AODWindowDelegate;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/cover/CoverHost;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/cover/CoverHost;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/cover/CoverHost;->isCoverViewShowing()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/aod/AODService;->mAODPlugin:Lcom/samsung/systemui/splugins/aod/PluginAOD;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4, v2}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V

    iget-object v3, p0, Lcom/android/systemui/aod/AODService;->mAODWindowDelegate:Lcom/android/systemui/aod/AODWindowDelegate;

    invoke-virtual {v3, v0}, Lcom/android/systemui/aod/AODWindowDelegate;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
