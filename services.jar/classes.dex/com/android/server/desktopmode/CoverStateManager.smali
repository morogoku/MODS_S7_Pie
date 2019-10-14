.class Lcom/android/server/desktopmode/CoverStateManager;
.super Ljava/lang/Object;
.source "CoverStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/CoverStateManager$Authenticator;
    }
.end annotation


# static fields
.field private static final ACTION_AUTH_STOPPED:Ljava/lang/String; = "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_STOPPED"

.field static final COVER_SUPPORT_STATE_FULL:I = 0x1

.field static final COVER_SUPPORT_STATE_NONE:I = 0x3

.field static final COVER_SUPPORT_STATE_PARTIAL:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthComplete:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBlockState:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field private final mContext:Landroid/content/Context;

.field private final mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverManagerDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCoverState:Lcom/samsung/android/cover/CoverState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverSupportState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDesktopDockConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mKeyboardCoverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mKeyboardCoverObserver:Landroid/database/ContentObserver;

.field private final mLock:Ljava/lang/Object;

.field private final mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mScreenMirroringDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field private final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlockState:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/CoverStateManager$1;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/CoverStateManager$2;-><init>(Lcom/android/server/desktopmode/CoverStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/CoverStateManager$3;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/CoverStateManager$4;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;-><init>(Lcom/android/server/desktopmode/CoverStateManager;Lcom/android/server/desktopmode/CoverStateManager$1;)V

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->initialize()V

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverStateManager;->initializeCoverState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/desktopmode/CoverStateManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/desktopmode/CoverStateManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/desktopmode/CoverStateManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/desktopmode/CoverStateManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static coverSupportStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "COVER_SUPPORT_STATE_NONE"

    return-object v0

    :pswitch_18
    const-string v0, "COVER_SUPPORT_STATE_PARTIAL"

    return-object v0

    :pswitch_1b
    const-string v0, "COVER_SUPPORT_STATE_FULL"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private getSettingMirroringSwitchDisabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mirroring_switch_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private goToSleep()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method

.method private initializeCoverState()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_d

    iput-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_d
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v2}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v3, v4}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    monitor-exit v0

    return v2

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private static isCoverUiTypeCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 4

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_18

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_18

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    nop

    :cond_18
    :goto_18
    return v1
.end method

.method private static isFlipTypeCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 4

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2c

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2c

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2c

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v0, v1, :cond_2c

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2c

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2c

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v1, 0x0

    nop

    :cond_2c
    :goto_2c
    return v1
.end method

.method private setMirroringSwitchDisabled(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mirroring_switch_disabled"

    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateCoverSupportStateLocked()Z
    .registers 7

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverEnabled:Z

    if-eqz v1, :cond_b

    goto :goto_2e

    :cond_b
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_2f

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->isFlipTypeCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_2c

    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-ne v1, v2, :cond_2a

    const/4 v0, 0x3

    goto :goto_2f

    :cond_2a
    const/4 v0, 0x2

    goto :goto_2f

    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v0, 0x3

    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    iget v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    if-eq v3, v0, :cond_52

    iput v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_41

    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    goto :goto_48

    :cond_41
    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    :goto_48
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    invoke-interface {v3, v4, v5}, Lcom/android/server/desktopmode/IStateManager;->setCoverState(Lcom/samsung/android/cover/CoverState;I)V

    :cond_52
    iget-boolean v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    if-eqz v3, :cond_5f

    iget v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5f

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/CoverStateManager;->setMirroringSwitchDisabled(Z)V

    goto :goto_67

    :cond_5f
    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    if-eqz v2, :cond_67

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/CoverStateManager;->setMirroringSwitchDisabled(Z)V

    :cond_67
    :goto_67
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_b0

    sget-object v2, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverSupportState(), mCoverSupportState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    invoke-static {v4}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mCoverState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mAuthComplete="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mKeyboardCoverEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mDesktopDockConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    return v1
.end method


# virtual methods
.method disableCoverManager(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    if-eq v0, p1, :cond_42

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableCoverManager()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2c
    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/cover/CoverManager;->disableCoverManager(Z)V

    if-nez p1, :cond_3d

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_3d
    monitor-exit v0

    goto :goto_42

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_3f

    throw v1

    :cond_42
    :goto_42
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_25
    const-string/jumbo v1, "mAuthComplete"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mCoverManagerDisabled"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mCoverState"

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mCoverSupportState"

    iget v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mDesktopDockConnected"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mKeyboardCoverEnabled"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mScreenMirroringDisabled"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_25 .. :try_end_8b} :catchall_8f

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method goToSleepIfFlipTypeCoverClosed()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goToSleepIfFlipTypeCoverClosed(), coverState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_34

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->isFlipTypeCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->isCoverUiTypeCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_34

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverStateManager;->goToSleep()V

    :cond_34
    return-void
.end method

.method initialize()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverStateManager;->getSettingMirroringSwitchDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
