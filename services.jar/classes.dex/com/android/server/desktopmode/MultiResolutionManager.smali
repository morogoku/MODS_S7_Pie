.class Lcom/android/server/desktopmode/MultiResolutionManager;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    }
.end annotation


# static fields
.field private static final DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final RESOLUTION_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private mDisplayRemovedOnEnablingDesktopMode:Z

.field private mIsForcedCustomResolution:Z

.field private mIsForcedSupportAllResolution:Z

.field private mLastDualModeMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private final mManualResolutionModeSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private final mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

.field private final mMultiDisplayManagerInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field private final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field private final mTabletDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "UWQHD"

    const/16 v2, 0x5a0

    const/16 v3, 0xa0

    const/16 v4, 0xd70

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "WQXGA"

    const/16 v4, 0x640

    const/16 v5, 0xa00

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "WQHD"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "UWFHD"

    const/16 v2, 0x438

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "WUXGA"

    const/16 v5, 0x780

    const/16 v6, 0x4b0

    invoke-direct {v0, v1, v5, v6, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "FHD"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "HD"

    const/16 v2, 0x384

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_MULTI_RATIO:Z

    if-eqz v0, :cond_98

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_98
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_MULTI_RATIO:Z

    if-eqz v0, :cond_bd

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bd
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$1;

    const-string/jumbo v2, "resolution_user_setting"

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$1;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mManualResolutionModeSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$2;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mManualResolutionModeSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p3, v1}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getInstance()Lcom/samsung/android/multidisplay/MultiDisplayManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManagerInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    move-result-object v1

    new-instance v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v3, "Tablet"

    aget v0, v1, v0

    const/4 v4, 0x1

    aget v4, v1, v4

    const/16 v5, 0x118

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    iput-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mTabletDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mTabletDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_75

    :cond_73
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    :goto_75
    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->handleReconnection(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/MultiResolutionManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/desktopmode/MultiResolutionManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->showToastResolutionChanged()V

    return-void
.end method

.method private getOriginalDisplaySizeDensity(I)[I
    .registers 9

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4b

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_4a

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_4a

    :try_start_26
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v3, :cond_41

    if-lez v5, :cond_41

    aput v3, v0, v2

    const/4 v6, 0x1

    aput v5, v0, v6
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_41} :catch_42

    :cond_41
    goto :goto_4a

    :catch_42
    move-exception v3

    sget-object v5, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string v6, "Failed to parse previous forced display size"

    invoke-static {v5, v6, v3}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_4a
    goto :goto_56

    :cond_4b
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_56

    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string v4, "No previous forced display size. Use default size instead."

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    :try_start_56
    iget-object v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "display_density_forced"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_64

    const/4 v3, 0x2

    aput v2, v0, v3
    :try_end_64
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_56 .. :try_end_64} :catch_65

    :cond_64
    goto :goto_71

    :catch_65
    move-exception v2

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_71

    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string v4, "No previous forced display density. Use default density instead."

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    :goto_71
    return-object v0
.end method

.method private getPreferredResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .registers 8

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_21

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreferredResolution(), displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_36

    :cond_2f
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_36
    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-lt v4, v5, :cond_61

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-lt v4, v5, :cond_61

    return-object v3

    :cond_61
    goto :goto_40

    :cond_62
    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object v1

    :cond_65
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object v0
.end method

.method private handleReconnection(Lcom/android/server/desktopmode/State;)V
    .registers 5

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_36

    :cond_e
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->isResolutionChangeNeeded(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    goto :goto_36

    :cond_20
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "No need to change resolution"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-eqz v1, :cond_36

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportResolution(Lcom/android/server/desktopmode/DisplayInfo;)V

    :cond_36
    :goto_36
    return-void
.end method

.method private restorePreviousSizeDensity(I)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->getOriginalDisplaySizeDensity(I)[I

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_38

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    aget v1, v0, v4

    aget v3, v0, v3

    aget v2, v0, v2

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    return-void
.end method

.method private setCurrentResolutionToDualModeDefault()V
    .registers 2

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-void
.end method

.method private setCurrentResolutionToTabletDefault()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mTabletDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-void
.end method

.method private setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeDensity(IIIIZZ)V

    return-void
.end method

.method private showToastResolutionChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showToastResolutionChanged()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402ac

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_34
    return-void
.end method

.method private updateDefaultDisplayResolution()V
    .registers 4

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    iget-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCurrentResolutionToTabletDefault()V

    :cond_c
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDefaultDisplayResolution()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method private updateDualDisplayResolution()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    if-eqz v1, :cond_11

    goto :goto_55

    :cond_11
    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    if-eqz v1, :cond_16

    return-void

    :cond_16
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_33

    :cond_24
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_33

    :cond_31
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    :goto_33
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_4e

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentResolution= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_69

    :cond_55
    :goto_55
    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    if-nez v1, :cond_69

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    if-nez v1, :cond_69

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCurrentResolutionToDualModeDefault()V

    :cond_69
    :goto_69
    return-void
.end method

.method private updateMaxSupportResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMaxSupportResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "resolution_max"

    iget-object v2, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateState()V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateState()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "resolution_user_setting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mCurrentResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mMaxSupportResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mUserSettingResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method getCurrentResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object v0
.end method

.method getCustomDensity()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    return v0
.end method

.method getOriginalDensity(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->getOriginalDisplaySizeDensity(I)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method isResolutionChangeNeeded(Lcom/android/server/desktopmode/State;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const/4 v0, 0x1

    :cond_16
    goto :goto_33

    :cond_17
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_32

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "This display does not support current resolution."

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x1

    :cond_33
    :goto_33
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isResolutionChangeNeeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return v0
.end method

.method onUserChanged(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateState()V

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    if-eqz p1, :cond_37

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    :cond_37
    return-void
.end method

.method setCurrentResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-eqz p1, :cond_63

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManagerInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v3, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget-object v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v4, v4, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v5, v5, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setNonDefaultDisplaySizeAndDensity(IIII)V

    :cond_63
    return-void
.end method

.method setCustomResolutionForAdbCommand(Ljava/io/PrintWriter;III)V
    .registers 7

    :try_start_0
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "ADB"

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCurrentResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_14

    nop

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    const-string v0, "Succeed. This change will be reset when power is off."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_14
    move-exception v0

    const-string v1, "Fail. width, height, and density must be greater than 0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method setDualDisplayResolutionDensity(Z)I
    .registers 6

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateState()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateDualDisplayResolution()V

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget-object v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v3, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->createOrWakeupDesktopDisplay(III)I

    move-result v0

    return v0

    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->sleepDesktopDisplay()I

    move-result v0

    return v0
.end method

.method setForcedDisplayResolutionDensity(Z)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateState()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateDefaultDisplayResolution()V

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget-object v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v3, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    return v0

    :cond_19
    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    if-nez v1, :cond_20

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCurrentResolutionToTabletDefault()V

    :cond_20
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->restorePreviousSizeDensity(I)V

    const/4 v0, -0x1

    return v0
.end method

.method setSupportAllResolution(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    return-void
.end method

.method updateMaxSupportResolution(Lcom/android/server/desktopmode/DisplayInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    return-void
.end method
