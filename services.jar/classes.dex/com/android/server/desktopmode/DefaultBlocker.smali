.class Lcom/android/server/desktopmode/DefaultBlocker;
.super Ljava/lang/Object;
.source "DefaultBlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
    }
.end annotation


# static fields
.field static final REASON_KIDS_MODE:I = 0x8

.field static final REASON_KIOSK_MODE:I = 0x1

.field static final REASON_LOCK_TASK_MODE:I = 0x2

.field static final REASON_NOT_BLOCKED:I = 0x0

.field static final REASON_PRO_KIOSK_MODE:I = 0x3

.field static final REASON_SAFE_MODE:I = 0x4

.field static final REASON_SHARED_DEVICE_MODE:I = 0x5

.field static final REASON_SMART_VIEW:I = 0x9

.field static final REASON_UNAVAILABLE_USER:I = 0x6

.field static final REASON_UPDATING_POLICY_DATABASE:I = 0x7


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;-><init>(Lcom/android/server/desktopmode/DefaultBlocker;I)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isKidsLauncherMode()Z
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "com.sec.android.app.kidshome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    return v2
.end method

.method private isLockTaskMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private isProKioskMode()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private isSharedDeviceMode()Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "shared_device_status"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v4, 0x1

    nop

    :cond_17
    move v2, v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method private isSmartViewConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private isUnavailableUser(Lcom/android/server/desktopmode/State;)Z
    .registers 3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static reasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "REASON_SMART_VIEW"

    return-object v0

    :pswitch_18
    const-string v0, "REASON_KIDS_MODE"

    return-object v0

    :pswitch_1b
    const-string v0, "REASON_UPDATING_POLICY_DATABASE"

    return-object v0

    :pswitch_1e
    const-string v0, "REASON_UNAVAILABLE_USER"

    return-object v0

    :pswitch_21
    const-string v0, "REASON_SHARED_DEVICE_MODE"

    return-object v0

    :pswitch_24
    const-string v0, "REASON_SAFE_MODE"

    return-object v0

    :pswitch_27
    const-string v0, "REASON_PRO_KIOSK_MODE"

    return-object v0

    :pswitch_2a
    const-string v0, "REASON_LOCK_TASK_MODE"

    return-object v0

    :pswitch_2d
    const-string v0, "REASON_KIOSK_MODE"

    return-object v0

    :pswitch_30
    const-string v0, "REASON_NOT_BLOCKED"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method getBlocker(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto/16 :goto_76

    :cond_f
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_76

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isProKioskMode()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_76

    :cond_27
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_76

    :cond_39
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isSharedDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_76

    :cond_45
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DefaultBlocker;->isUnavailableUser(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_76

    :cond_51
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isLaunchPolicyDatabaseExist()Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_76

    :cond_5d
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isKidsLauncherMode()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_76

    :cond_6a
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isSmartViewConnected()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    :goto_76
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    return-object v0

    :cond_79
    const/4 v0, 0x0

    return-object v0
.end method
