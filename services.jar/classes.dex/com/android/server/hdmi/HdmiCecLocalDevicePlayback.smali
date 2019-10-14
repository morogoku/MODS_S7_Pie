.class final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;,
        Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    }
.end annotation


# static fields
.field private static final SET_MENU_LANGUAGE:Z

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevicePlayback"

.field private static final WAKE_ON_HOTPLUG:Z


# instance fields
.field private mAutoTvOff:Z

.field private mIsActiveSource:Z

.field private mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.hdmi.wake_on_hotplug"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->WAKE_ON_HOTPLUG:Z

    const-string/jumbo v0, "ro.hdmi.set_menu_language"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->SET_MENU_LANGUAGE:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 5

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v2, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_control_auto_device_off_enabled"

    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->writeBooleanSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    return v0
.end method

.method private getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    if-nez v0, :cond_28

    const-string/jumbo v0, "persist.sys.hdmi.keep_awake"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    goto :goto_28

    :cond_19
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    const-string v0, "No wakelock is used to keep the display on."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    return-object v0
.end method

.method private invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    :try_start_3
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_1e

    :catch_7
    move-exception v0

    const-string v1, "HdmiCecLocalDevicePlayback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method private mayResetActiveSource(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    if-eq p1, v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    :cond_c
    return-void
.end method

.method private maySendActiveSource(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_21
    return-void
.end method

.method private maySetActiveSource(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    return-void
.end method

.method private wakeUpIfActiveSource()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_19
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    :cond_1e
    return-void
.end method


# virtual methods
.method protected canGoToStandby()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->isHeld()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    if-nez p1, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->checkIfPendingActionsCleared()V

    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAutoTvOff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected findKeyReceiverAddress()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getPreferredAddress()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mayResetActiveSource(I)V

    const/4 v1, 0x1

    return v1
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySendActiveSource(I)V

    const/4 v0, 0x1

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySetActiveSource(I)V

    const/4 v1, 0x1

    return v1
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySetActiveSource(I)V

    const/4 v1, 0x1

    return v1
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 10
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    sget-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->SET_MENU_LANGUAGE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "US-ASCII"

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    return v4

    :cond_31
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    return v4

    :cond_61
    goto :goto_3f

    :cond_62
    const-string v4, "HdmiCecLocalDevicePlayback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t handle <Set Menu Language> of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_78} :catch_79

    return v1

    :catch_79
    move-exception v0

    const-string v2, "HdmiCecLocalDevicePlayback"

    const-string v3, "Can\'t handle <Set Menu Language>"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySetActiveSource(I)V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->maySendActiveSource(I)V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->wakeUpIfActiveSource()V

    const/4 v1, 0x1

    return v1
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->wakeUpIfActiveSource()V

    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method

.method protected onAddressAllocated(II)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDeviceType:I

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startQueuedActions()V

    return-void
.end method

.method onHotplug(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    sget-boolean v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->WAKE_ON_HOTPLUG:Z

    if-eqz v0, :cond_1b

    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    :cond_1b
    if-nez p2, :cond_24

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    :cond_24
    return-void
.end method

.method protected onStandby(ZI)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    if-nez p1, :cond_32

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    if-nez v0, :cond_12

    goto :goto_32

    :cond_12
    packed-switch p2, :pswitch_data_34

    goto :goto_31

    :pswitch_16
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_31

    :pswitch_24
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    nop

    :goto_31
    return-void

    :cond_32
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_24
        :pswitch_16
    .end packed-switch
.end method

.method oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    const-class v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    const-string v1, "HdmiCecLocalDevicePlayback"

    const-string/jumbo v3, "oneTouchPlay already in progress"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    :cond_22
    invoke-static {p0, v2, p1}, Lcom/android/server/hdmi/OneTouchPlayAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;

    move-result-object v1

    if-nez v1, :cond_34

    const-string v2, "HdmiCecLocalDevicePlayback"

    const-string v3, "Cannot initiate oneTouchPlay"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    invoke-direct {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    :cond_34
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    const-class v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    const-string v1, "HdmiCecLocalDevicePlayback"

    const-string/jumbo v3, "queryDisplayStatus already in progress"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    :cond_22
    invoke-static {p0, v2, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;

    move-result-object v1

    if-nez v1, :cond_34

    const-string v2, "HdmiCecLocalDevicePlayback"

    const-string v3, "Cannot initiate queryDisplayStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    invoke-direct {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    :cond_34
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method protected sendStandby(I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAddress:I

    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method setActiveSource(Z)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->acquire()V

    goto :goto_16

    :cond_f
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    :goto_16
    return-void
.end method

.method setAutoDeviceOff(Z)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mAutoTvOff:Z

    return-void
.end method

.method protected setPreferredAddress(I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->assertRunOnServiceThread()V

    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
