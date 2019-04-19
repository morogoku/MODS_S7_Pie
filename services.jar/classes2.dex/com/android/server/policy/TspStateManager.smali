.class public Lcom/android/server/policy/TspStateManager;
.super Ljava/lang/Object;
.source "TspStateManager.java"

# interfaces
.implements Lcom/android/server/policy/TspStateManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/TspStateManager$TspDebug;,
        Lcom/android/server/policy/TspStateManager$H;,
        Lcom/android/server/policy/TspStateManager$SettingObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_3RDPARTY_DEAD_ZONE:I = 0xa

.field private static final DEFAULT_3RDPARTY_EDGE_ZONE:I = 0x28

.field private static final DEFAULT_VALUE_COMMAND_STRING:Ljava/lang/String; = "10,32,30%,10,60"

.field private static final DEFAULT_VALUE_COMMAND_STRING_EDGE_HOLE:Ljava/lang/String; = "0,0,0,0"

.field private static final MODE_EDGE_AND_HOLE:I = 0x2

.field private static final MODE_EDGE_ONLY:I = 0x1

.field private static final MODE_HOLE_ONLY:I = 0x0

.field private static final MODE_NONE:I = -0x1

.field private static final SETTING_TSP_DEBUG:Ljava/lang/String; = "setting_tsp_debug"

.field private static final SETTING_TSP_LAST_GRIP_CMD:Ljava/lang/String; = "setting_last_grip_cmd"

.field private static final SETTING_TSP_THRESHOLD:Ljava/lang/String; = "setting_tsp_threshold"

.field private static final SET_TUNNING_DATA:Ljava/lang/String; = "set_grip_data,"

.field private static final TAG:Ljava/lang/String; = "TspStateManagerInternal"

.field private static final TSP_COMMAND_TYPE_HOLE:I = 0x3

.field private static final TSP_COMMAND_TYPE_LAND:I = 0x2

.field private static final TSP_COMMAND_TYPE_PORT:I = 0x1

.field private static final TSP_COMMAND_TYPE_SAME:I = 0x4


# instance fields
.field private final m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private mContext:Landroid/content/Context;

.field private final mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

.field private final mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private final mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private final mH:Lcom/android/server/policy/TspStateManager$H;

.field private mHeight:I

.field private mHoleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mInitHeight:I

.field private mInitWidth:I

.field private mIsEnabledCustomSetting:Z

.field private mLastDeadZoneHole:Ljava/lang/String;

.field private mLastLandCmd:Ljava/lang/String;

.field private mLastPortCmd:Ljava/lang/String;

.field private mLetterBoxSize:I

.field private mMode:I

.field private mPortrait:Z

.field private mReserveLandCmd:Ljava/lang/String;

.field private mReservePortCmd:Ljava/lang/String;

.field private mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

.field private mTempLandCmd:Ljava/lang/String;

.field private mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/policy/TspStateManager;->mMode:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    new-instance v3, Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v3}, Lcom/android/server/policy/TspGripCommand;-><init>()V

    iput-object v3, v0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    new-instance v3, Lcom/android/server/policy/TspGripCommand;

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/16 v9, 0x28

    const/16 v10, 0x28

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/TspGripCommand;-><init>(IIIIII)V

    iput-object v3, v0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    new-instance v3, Lcom/android/server/policy/TspGripCommand;

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/android/server/policy/TspGripCommand;-><init>(IIIIII)V

    iput-object v3, v0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    new-instance v3, Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v3}, Lcom/android/server/policy/TspGripCommand;-><init>()V

    iput-object v3, v0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    const/16 v3, 0x5a0

    iput v3, v0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    const/16 v4, 0xa00

    iput v4, v0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    iput v3, v0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iput v4, v0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iput v2, v0, Lcom/android/server/policy/TspStateManager;->mLetterBoxSize:I

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/policy/TspStateManager$H;

    invoke-direct {v2, v0}, Lcom/android/server/policy/TspStateManager$H;-><init>(Lcom/android/server/policy/TspStateManager;)V

    iput-object v2, v0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_71

    const-string v3, "deadzone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_71

    iput v1, v0, Lcom/android/server/policy/TspStateManager;->mMode:I

    :cond_71
    return-void
.end method

.method private _updateInputMethodPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 11

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0}, Lcom/android/server/policy/TspGripCommand;->reset()V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v1, "SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_20
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    :cond_27
    if-eqz p1, :cond_3d

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;)Z

    :cond_3d
    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v1, :cond_67

    const-string v1, "TspStateManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInputMethodPolicy command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",inputMethodWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5c

    const/4 v3, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    :goto_5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-direct {p0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V

    return-void
.end method

.method private _updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, v1, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v3, v1, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_b5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_2b

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v3, v4, :cond_2b

    move v3, v5

    goto :goto_2c

    :cond_2b
    move v3, v6

    :goto_2c
    move v0, v3

    if-nez v0, :cond_88

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isHomeTask()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.launcher"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "com.sec.android.app.easylauncher"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_4e

    :cond_4c
    move v5, v6

    nop

    :cond_4e
    :goto_4e
    move v0, v5

    goto :goto_88

    :cond_50
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_69

    const-string v4, "com.sec.android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_68

    const-string v4, "com.samsung."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    :cond_68
    goto :goto_6a

    :cond_69
    move v5, v6

    :goto_6a
    move v4, v5

    if-nez v4, :cond_87

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDeviceDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_87

    :try_start_73
    iget-object v0, v1, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_81} :catch_83

    move v0, v5

    goto :goto_88

    :catch_83
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_87
    move v0, v4

    :cond_88
    :goto_88
    if-nez v0, :cond_91

    iget-object v3, v1, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v4, v1, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    :cond_91
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDefaultTspDeadzone()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget v6, v1, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v7, v1, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v8, v1, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v9, v1, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v4

    iget-object v10, v1, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget v11, v1, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v12, v1, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v13, v1, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v14, v1, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;)Z

    :cond_b5
    sget-boolean v3, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v3, :cond_ed

    const-string v3, "TspStateManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWindowPolicy focusedWindow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isDeviceDefault="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",command="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    :cond_ed
    move-object/from16 v5, p2

    :goto_ef
    iget-object v3, v1, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v1, v3}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/TspStateManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->createDebugObjectIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/TspStateManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/TspStateManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/TspStateManager;->_updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/TspStateManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/TspStateManager;->_updateInputMethodPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/TspStateManager;)Lcom/android/server/policy/TspStateManager$TspDebug;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/TspStateManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createDebugObjectIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_debug"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    if-nez v0, :cond_24

    new-instance v0, Lcom/android/server/policy/TspStateManager$TspDebug;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/TspStateManager$TspDebug;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    goto :goto_24

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    :cond_24
    :goto_24
    return-void
.end method

.method private initDefaultValue()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v3, v0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v4, v0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v5, v0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v6, v0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v7, v0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    invoke-direct {v0, v1}, Lcom/android/server/policy/TspStateManager;->parse3rdPartyCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v9, v0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v10, v0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v11, v0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v12, v0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move-object v13, v2

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    goto :goto_54

    :cond_38
    iget-object v13, v0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v14, v0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v15, v0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v2, v0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v3, v0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const-string v18, "10,32,30%,10,60"

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    iget-object v2, v0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v3, v0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, v0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/policy/TspGripCommand;->convertToRation(II)V

    :goto_54
    return-void
.end method

.method private makeLandCommandForEdge(II)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/TspStateManager;->mTempLandCmd:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mLetterBoxSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeLandCommandForHole(II)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeLandCommandForTemp(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makePortCommand(IIII)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parse3rdPartyCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_13

    return-object v1

    :cond_13
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private registerSettingObserver()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/server/policy/TspStateManager$SettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/TspStateManager$SettingObserver;-><init>(Lcom/android/server/policy/TspStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_threshold"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_debug"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private updateCustomValue()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TspStateManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDefaultValue customSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v7, 0x28

    const/16 v8, 0x28

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/policy/TspGripCommand;->set(IIIIII)V

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/TspGripCommand;->convertToRation(II)V

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_6e

    :cond_49
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const/4 v8, 0x0

    move-object v7, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/TspStateManager;->parse3rdPartyCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    return-void

    :cond_6e
    :goto_6e
    return-void
.end method

.method private updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {p1, v0}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    :cond_9
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iget v1, p1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iget v2, p1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iget v3, p1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/TspStateManager;->makePortCommand(IIII)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v1, :cond_27

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    :cond_27
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    const/4 v3, 0x2

    if-eq v1, v2, :cond_32

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    if-ne v1, v3, :cond_4d

    :cond_32
    iget v1, p1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    iget v2, p1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/TspStateManager;->makeLandCommandForEdge(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-nez v2, :cond_4b

    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    :cond_4b
    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    :cond_4d
    return-void
.end method

.method private updateTspState(Ljava/lang/String;I)V
    .registers 6

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/TspStateManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/TspStateManager$1;-><init>(Lcom/android/server/policy/TspStateManager;Ljava/lang/String;I)V

    const-string/jumbo v2, "tspStateManager"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_1d

    iput-object p1, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->registerSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    const-string v0, "0,0,0,0"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    :cond_1a
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->createDebugObjectIfNeeded()V

    :cond_1d
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "TspStateManagerInternal"

    const-string/jumbo v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    goto :goto_32

    :cond_24
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    :cond_32
    :goto_32
    return-void
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .registers 12

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    return-void

    :cond_b
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "TspStateManagerInternal"

    const-string/jumbo v1, "setPortraitDeadzoneHole "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-nez p1, :cond_22

    const-string v0, "TspStateManagerInternal"

    const-string/jumbo v1, "setPortraitDeadzoneHole: hole is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    const-string v0, "dead_zone_process_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    const-string v1, "TspStateManagerInternal"

    const-string/jumbo v2, "setPortraitDeadzoneHole: invalid name key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    const-string v1, "dead_zone_direction"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "dead_zone_port_y1"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "dead_zone_port_y2"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ltz v3, :cond_61

    if-ltz v4, :cond_61

    if-ne v3, v4, :cond_4e

    goto :goto_61

    :cond_4e
    if-ge v3, v4, :cond_56

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5b

    :cond_56
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_5b
    iget-object v6, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    :cond_61
    :goto_61
    iget-object v5, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    :goto_6e
    const v3, 0x7fffffff

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    nop

    :goto_79
    if-ge v2, v5, :cond_9a

    iget-object v6, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v6, :cond_97

    iget v7, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_9a
    if-nez v4, :cond_9d

    const/4 v1, 0x0

    :cond_9d
    const v2, 0x7fffffff

    if-ne v3, v2, :cond_a3

    move v3, v4

    :cond_a3
    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-static {v2, v6, v7, v8, v3}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(IIIII)I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-static {v3, v6, v7, v8, v4}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(IIIII)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v7, :cond_ff

    const-string v7, "TspStateManagerInternal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDeadzoneHole: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ff
    iget-object v7, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_108

    return-void

    :cond_108
    iput-object v6, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-direct {p0, v7, v8}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    return-void
.end method

.method public setInitialDisplaySize(IIII)V
    .registers 8

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_33

    const-string v0, "TspStateManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialDisplaySize initWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",initHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3f

    const-string v0, "TspStateManagerInternal"

    const-string v1, "TspStateManager not yet initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3f
    iput p1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iput p2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    iput p3, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iput p4, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v0, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_52

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    :cond_52
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/TspStateManager$TspDebug;->setInitDisplaySize(II)V

    :cond_5f
    return-void
.end method

.method public setLetterBox(IIII)V
    .registers 10

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "TspStateManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLetterBox : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v0, p4, p2

    if-gez v0, :cond_40

    const-string v1, "TspStateManagerInternal"

    const-string v2, "letter box size < 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez v0, :cond_53

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4c

    iput v2, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    goto :goto_53

    :cond_4c
    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_53

    iput v1, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    :cond_53
    :goto_53
    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mLetterBoxSize:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    if-ne v4, v2, :cond_80

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mTempLandCmd:Ljava/lang/String;

    if-nez v1, :cond_65

    return-void

    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/TspStateManager;->mTempLandCmd:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mLetterBoxSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8a

    :cond_80
    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    if-nez v4, :cond_8a

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mLetterBoxSize:I

    invoke-direct {p0, v4, v1}, Lcom/android/server/policy/TspStateManager;->makeLandCommandForHole(II)Ljava/lang/String;

    move-result-object v3

    :cond_8a
    :goto_8a
    iget-boolean v1, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-nez v1, :cond_9d

    if-eqz v3, :cond_9d

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    invoke-direct {p0, v3, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    :cond_9d
    iput-object v3, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    return-void
.end method

.method public setPortrait(Z)V
    .registers 6

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eq v0, p1, :cond_61

    iput-boolean p1, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    if-nez v0, :cond_26

    const-string v0, "TspStateManagerInternal"

    const-string/jumbo v2, "setPortrait: mReservePortCmd is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    if-ge v0, v1, :cond_25

    const-string v0, "2,0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    :cond_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    goto :goto_61

    :cond_3a
    const-string v0, "2,0"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    goto :goto_61

    :cond_41
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    const/4 v2, 0x2

    if-nez v0, :cond_58

    const-string v0, "TspStateManagerInternal"

    const-string/jumbo v3, "setPortrait: mReserveLandCmd is null."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    if-ge v0, v1, :cond_57

    const-string v0, "2,1,0,10,0,0"

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    :cond_57
    return-void

    :cond_58
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    :cond_61
    :goto_61
    return-void
.end method

.method public updateInputMethodPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4

    iget v0, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    :cond_21
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/TspStateManager$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lcom/android/server/policy/TspStateManager;->mMode:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    :cond_21
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/policy/TspStateManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
