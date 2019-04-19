.class Lcom/android/server/desktopmode/DisplayPortStateManager;
.super Ljava/lang/Object;
.source "DisplayPortStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDesktopModeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDisplayPortState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mExternalDisplayConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mHdmiAutoEnterEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHdmiAutoEnterListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private mHdmiModeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHdmiModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private final mLock:Ljava/lang/Object;

.field private final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DisplayPortStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DisplayPortStateManager$1;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    new-instance v0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;

    const-string/jumbo v1, "hdmi_mode"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager$2;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;

    const-string/jumbo v1, "hdmi_auto_enter"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager$3;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDesktopModeEnabled:Z

    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {p2, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiModeEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiModeEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->isHdmiModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->isHdmiAutoEnterEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDesktopModeEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDesktopModeEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/State;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->isDesktopModeEnabled(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/State;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->isExternalDisplayConnected(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    return-void
.end method

.method private isDesktopModeEnabled(Lcom/android/server/desktopmode/State;)Z
    .registers 5

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_18

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_16

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    :cond_16
    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private isExternalDisplayConnected(Lcom/android/server/desktopmode/State;)Z
    .registers 3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    return v0
.end method

.method private isHdmiAutoEnterEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hdmi_auto_enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isHdmiModeEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hdmi_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private setDisplayPortStateLocked(ZZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    if-eq v1, v0, :cond_2d

    iput v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_28

    sget-object v1, Lcom/android/server/desktopmode/DisplayPortStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDisplayPortState(), state=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-string v1, "/sys/class/dp_sec/dex"

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    :cond_2d
    return-void
.end method
