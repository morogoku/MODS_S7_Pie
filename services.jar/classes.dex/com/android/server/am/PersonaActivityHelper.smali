.class public Lcom/android/server/am/PersonaActivityHelper;
.super Ljava/lang/Object;
.source "PersonaActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;
    }
.end annotation


# static fields
.field private static final FINISH_APPS_FOR_USER_MSG:I = 0x25a

.field private static final SHOW_KNOX_SECURITY_TOAST:I = 0x259

.field private static final TAG:Ljava/lang/String; = "PersonaActivityHelper"

.field static final WINDOWING_MODE_ALL:I = -0x1


# instance fields
.field private exceptionalComponentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mLockscreenShown:Z

.field final mLooper:Landroid/os/Looper;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private mPersonaActivityHandler:Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;

.field mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mUserController:Lcom/android/server/am/UserController;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private mWms:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/UserController;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string v1, "com.sec.android.service.singlesignon.activity.KerberosLoginActivity"

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const-string v2, "com.samsung.android.knox.containerdesktop.common.MultiwindowLockActivity"

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const-string v3, "com.samsung.android.knox.containercore.common.MultiwindowLockActivity"

    const-string v4, "com.android.calendar.alerts.view.popupview.AlertPopupActivity"

    const-string v5, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string v6, "com.google.android.apps.hangouts.hangout.IncomingRingActivity"

    const-string v7, "com.google.android.apps.hangouts.elane.CallActivity"

    const-string v8, "com.samsung.android.knox.containeragent.EmptyKioskActivity"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->exceptionalComponentList:Ljava/util/List;

    new-instance v0, Lcom/android/server/am/PersonaActivityHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersonaActivityHelper$1;-><init>(Lcom/android/server/am/PersonaActivityHelper;)V

    iput-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/PersonaActivityHelper;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/PersonaActivityHelper;->mLooper:Landroid/os/Looper;

    iput-object p4, p0, Lcom/android/server/am/PersonaActivityHelper;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p4}, Lcom/android/server/am/UserController;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;-><init>(Lcom/android/server/am/PersonaActivityHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;

    return-void
.end method

.method private LockSecureFolderTask(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_37

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.container.LOCK_SECUREFOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "userid"

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "isHomeActivity"

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "componentName"

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_37
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PersonaActivityHelper;)Lcom/android/server/wallpaper/WallpaperManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/PersonaActivityHelper;Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-object p1
.end method

.method private canShowWhenLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, "com.google.android.packageinstaller/com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "PersonaActivityHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showWhenLocked is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " but need to ignore it for record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_33
    if-nez v0, :cond_7f

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v3, "com.samsung.android.incallui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v3, "com.android.server.telecom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, "com.android.calendar/.alerts.PopUpActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, "com.samsung.android.calendar/com.samsung.android.app.calendarnotification.AlertPopupActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, "com.cisco.im/com.cisco.jabber.telephony.call.CallIncomingActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.PreCallActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.InCallActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    goto :goto_7d

    :cond_7c
    goto :goto_7e

    :cond_7d
    :goto_7d
    const/4 v1, 0x1

    :goto_7e
    move v0, v1

    :cond_7f
    return v0
.end method

.method private changeIntentforKiosk(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p4, :cond_4

    return v0

    :cond_4
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "isKnoxKioskMode"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    if-nez p3, :cond_3b

    if-eqz p1, :cond_3b

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v2, 0x0

    :try_start_1e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const v4, 0x10400

    invoke-interface {v3, v1, p2, v4, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2d} :catch_30

    move-object v2, v4

    nop

    :cond_2f
    goto :goto_32

    :catch_30
    move-exception v3

    nop

    :goto_32
    if-eqz v2, :cond_3b

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->isAllowedtoLaunch(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_3b
    return v0
.end method

.method private checkKnoxFeatureEnabled()Z
    .registers 9

    const-string/jumbo v0, "persist.sys.knox.userinfo"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    const/4 v1, 0x0

    :cond_11
    iget-object v2, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/PersonaActivityHelper;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    if-eqz v1, :cond_25

    return v3

    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v2, 0x0

    :try_start_2a
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_43

    iget-object v6, p0, Lcom/android/server/am/PersonaActivityHelper;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6, v2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_43

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result v7
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3c} :catch_49
    .catchall {:try_start_2a .. :try_end_3c} :catchall_47

    if-eqz v7, :cond_43

    nop

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_43
    :goto_43
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4e

    :catchall_47
    move-exception v2

    goto :goto_4f

    :catch_49
    move-exception v3

    :try_start_4a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_47

    goto :goto_43

    :goto_4e
    return v2

    :goto_4f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getSemPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method


# virtual methods
.method public getRecentExcludedUsers()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/android/server/am/PersonaActivityHelper;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUserIds()[I

    move-result-object v1

    if-eqz v1, :cond_6a

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v2, :cond_6a

    aget v5, v1, v4

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_67

    iget-object v6, p0, Lcom/android/server/am/PersonaActivityHelper;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6, v5}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v6

    if-eqz v6, :cond_5e

    iget v7, v6, Lcom/android/server/am/UserState;->state:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_56

    iget v7, v6, Lcom/android/server/am/UserState;->state:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_34

    goto :goto_56

    :cond_34
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_67

    iget-object v7, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hide_secure_folder_flag"

    invoke-static {v7, v8, v3, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_4b

    const/4 v7, 0x1

    goto :goto_4c

    :cond_4b
    move v7, v3

    :goto_4c
    if-nez v7, :cond_55

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_55
    goto :goto_67

    :cond_56
    :goto_56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_5e
    if-nez v6, :cond_67

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_67
    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_6a
    return-object v0
.end method

.method getStacks()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/PersonaActivityHelper;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_30

    iget-object v3, p0, Lcom/android/server/am/PersonaActivityHelper;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_21
    if-ltz v4, :cond_2d

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public hideKnoxWindowsLocked(I)V
    .registers 34

    move-object/from16 v1, p0

    move/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget-object v15, v1, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    :try_start_17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    :goto_22
    move v12, v0

    if-ltz v12, :cond_283

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    move-object v11, v0

    if-eqz v11, :cond_279

    invoke-virtual {v11}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v13

    :goto_33
    move v10, v0

    if-ltz v10, :cond_279

    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    move-object v9, v0

    if-eqz v9, :cond_267

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v13

    :goto_47
    move v7, v0

    if-ltz v7, :cond_267

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    if-eqz v6, :cond_249

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    if-eqz v5, :cond_249

    iget v0, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_249

    iget v0, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v0, v14, :cond_249

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_7d

    nop

    move/from16 v20, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v26, v10

    move-object/from16 v21, v11

    move/from16 v28, v12

    move/from16 v29, v13

    goto/16 :goto_257

    :cond_7d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v3, v0

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    move/from16 v16, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isDexMode()Z

    move-result v0

    move/from16 v17, v0

    if-eqz v17, :cond_a0

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.containerdesktop"

    iget-object v4, v1, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const-string v4, "com.samsung.android.knox.containerdesktop.common.MultiwindowLockActivity"

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_ae

    :cond_a0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.containercore"

    iget-object v4, v1, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const-string v4, "com.samsung.android.knox.containercore.common.MultiwindowLockActivity"

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_ae
    const-string/jumbo v0, "userid"

    invoke-virtual {v3, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "taskDescription"

    iget-object v2, v1, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x20000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    move-object v2, v0

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_da

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_da
    if-eqz v2, :cond_ed

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_ed

    const-string v0, "appName"

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v1, Lcom/android/server/am/PersonaActivityHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_ed
    const-string/jumbo v0, "pkgName"

    iget-object v4, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    if-eqz v13, :cond_23a

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11f

    nop

    :cond_10f
    :goto_10f
    move/from16 v20, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v26, v10

    move-object/from16 v21, v11

    move/from16 v28, v12

    const/16 v29, 0x1

    goto/16 :goto_257

    :cond_11f
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    move-object/from16 v19, v4

    if-nez v19, :cond_12b

    goto :goto_10f

    :cond_12b
    iget-object v4, v1, Lcom/android/server/am/PersonaActivityHelper;->exceptionalComponentList:Ljava/util/List;

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    goto :goto_10f

    :cond_13e
    invoke-direct {v1, v5}, Lcom/android/server/am/PersonaActivityHelper;->canShowWhenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_157

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_157

    goto :goto_10f

    :cond_157
    if-nez v17, :cond_17e

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.skype.raider.Main"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.whatsapp.voipcalling.VoipActivityV2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    goto :goto_10f

    :cond_17e
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    move-object v4, v0

    iget v0, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    move-object/from16 v21, v11

    const/4 v0, 0x0

    const/4 v11, 0x1

    invoke-virtual {v4, v11, v0}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;
    :try_end_191
    .catchall {:try_start_17 .. :try_end_191} :catchall_2ac

    move-object v11, v4

    move-object v4, v0

    :try_start_193
    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_195} :catch_200
    .catchall {:try_start_193 .. :try_end_195} :catchall_2ac

    move-object/from16 v23, v2

    :try_start_197
    iget-object v2, v1, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v18

    iget-object v2, v1, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v20

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v27, 0x10000000

    const/16 v28, 0x0

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v29
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1b5} :catch_1e8
    .catchall {:try_start_197 .. :try_end_1b5} :catchall_2ac

    move-object v2, v0

    move-object/from16 v30, v3

    move-object/from16 v3, v18

    move-object/from16 v31, v5

    move-object/from16 v5, v30

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move/from16 v20, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v25

    move-object/from16 v25, v9

    move/from16 v9, v26

    move/from16 v26, v10

    move/from16 v10, v27

    move-object/from16 v22, v11

    const/16 v27, 0x1

    move-object/from16 v11, v28

    move/from16 v28, v12

    move-object/from16 v12, v29

    move/from16 v29, v27

    move-object/from16 v27, v13

    move v13, v14

    :try_start_1e1
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e4} :catch_1e6
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_2ac

    goto/16 :goto_257

    :catch_1e6
    move-exception v0

    goto :goto_219

    :catch_1e8
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v31, v5

    move-object/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v26, v10

    move-object/from16 v22, v11

    move/from16 v28, v12

    move-object/from16 v27, v13

    const/16 v29, 0x1

    goto :goto_219

    :catch_200
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v5

    move-object/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v26, v10

    move-object/from16 v22, v11

    move/from16 v28, v12

    move-object/from16 v27, v13

    const/16 v29, 0x1

    :goto_219
    :try_start_219
    const-string v2, "PersonaActivityHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception to start MultiwindowLockActivity for"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v31

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_257

    :cond_23a
    move/from16 v20, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v26, v10

    move-object/from16 v21, v11

    move/from16 v28, v12

    const/16 v29, 0x1

    goto :goto_257

    :cond_249
    move/from16 v20, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v26, v10

    move-object/from16 v21, v11

    move/from16 v28, v12

    move/from16 v29, v13

    :goto_257
    add-int/lit8 v0, v20, -0x1

    move-object/from16 v11, v21

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move/from16 v10, v26

    move/from16 v12, v28

    move/from16 v13, v29

    goto/16 :goto_47

    :cond_267
    move/from16 v26, v10

    move-object/from16 v21, v11

    move/from16 v28, v12

    move/from16 v29, v13

    add-int/lit8 v0, v26, -0x1

    move-object/from16 v11, v21

    move/from16 v12, v28

    move/from16 v13, v29

    goto/16 :goto_33

    :cond_279
    move/from16 v28, v12

    move/from16 v29, v13

    add-int/lit8 v0, v28, -0x1

    move/from16 v13, v29

    goto/16 :goto_22

    :cond_283
    const-string v0, "PersonaActivityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hideKnoxWindowsLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyTaskStackChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    monitor-exit v15
    :try_end_2a8
    .catchall {:try_start_219 .. :try_end_2a8} :catchall_2ac

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2ac
    move-exception v0

    :try_start_2ad
    monitor-exit v15
    :try_end_2ae
    .catchall {:try_start_2ad .. :try_end_2ae} :catchall_2ac

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isKnoxWindowVisibleLocked(ZIZII)Z
    .registers 21

    move-object v1, p0

    move/from16 v2, p5

    invoke-direct {v1}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b

    return v3

    :cond_b
    iget-object v4, v1, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/PersonaActivityHelper;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    :goto_19
    if-ltz v0, :cond_a5

    iget-object v6, v1, Lcom/android/server/am/PersonaActivityHelper;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v6
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_af

    if-eqz v6, :cond_9a

    const/4 v7, 0x2

    move/from16 v8, p4

    if-ne v8, v7, :cond_2c

    if-eq v0, v7, :cond_2c

    goto/16 :goto_9c

    :cond_2c
    :try_start_2c
    invoke-virtual {v6}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_31
    if-ltz v7, :cond_9c

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    if-eqz v9, :cond_8e

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v5

    :goto_42
    if-ltz v11, :cond_8e

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/TaskRecord;

    if-eqz v12, :cond_86

    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_86

    if-eqz p1, :cond_60

    iget v3, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_60

    :cond_5d
    move/from16 v5, p2

    goto :goto_66

    :cond_60
    :goto_60
    iget v3, v13, Lcom/android/server/am/ActivityRecord;->userId:I
    :try_end_62
    .catchall {:try_start_2c .. :try_end_62} :catchall_96

    move/from16 v5, p2

    if-ne v3, v5, :cond_84

    :goto_66
    if-eqz p3, :cond_6c

    :try_start_68
    iget-boolean v3, v13, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_72

    :cond_6c
    if-nez p3, :cond_84

    iget-boolean v3, v13, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_84

    :cond_72
    const/4 v3, -0x1

    if-eq v2, v3, :cond_7b

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v3

    if-eq v2, v3, :cond_7e

    :cond_7b
    const/4 v3, -0x1

    if-ne v2, v3, :cond_84

    :cond_7e
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v3, 0x1

    return v3

    :cond_84
    const/4 v3, 0x1

    goto :goto_89

    :cond_86
    move v3, v5

    move/from16 v5, p2

    :goto_89
    add-int/lit8 v11, v11, -0x1

    move v5, v3

    const/4 v3, 0x0

    goto :goto_42

    :cond_8e
    move v3, v5

    move/from16 v5, p2

    add-int/lit8 v7, v7, -0x1

    move v5, v3

    const/4 v3, 0x0

    goto :goto_31

    :catchall_96
    move-exception v0

    move/from16 v5, p2

    goto :goto_b4

    :cond_9a
    move/from16 v8, p4

    :cond_9c
    :goto_9c
    move v3, v5

    move/from16 v5, p2

    add-int/lit8 v0, v0, -0x1

    move v5, v3

    const/4 v3, 0x0

    goto/16 :goto_19

    :cond_a5
    move/from16 v5, p2

    move/from16 v8, p4

    :try_start_a9
    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_af
    move-exception v0

    move/from16 v5, p2

    move/from16 v8, p4

    :goto_b4
    :try_start_b4
    monitor-exit v4
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_b9
    move-exception v0

    goto :goto_b4
.end method

.method isLockscreenShown()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mLockscreenShown:Z

    return v0
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 22

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    if-nez v0, :cond_c

    return-void

    :cond_c
    iget v1, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v13

    move-object/from16 v14, p0

    iget-object v2, v14, Lcom/android/server/am/PersonaActivityHelper;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v15

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/PersonaActivityHelper;->canShowWhenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isDexMode()Z

    move-result v17

    if-eqz p2, :cond_42

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v2, :cond_40

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_42

    :cond_40
    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    move v10, v2

    move v2, v1

    move-object v3, v11

    move/from16 v4, v16

    move v5, v12

    move v6, v13

    move v7, v15

    move v8, v9

    move/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v2 .. v10}, Lcom/android/server/pm/PersonaServiceHelper;->notifyActivityDrawn(ILandroid/content/ComponentName;ZIIIZZZ)V

    return-void
.end method

.method notifyActivityResumedLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3e

    if-eqz v1, :cond_3d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-nez v2, :cond_22

    const-string/jumbo v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    :cond_22
    iget-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v2, :cond_3d

    iget-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentPersonaId()I

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "PersonaActivityHelper"

    const-string/jumbo v4, "notifyActivityResumedLocked: COM Container removed case. switchPersonaWallpaper for user 0"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchPersonaWallpaper(IZ)V

    :cond_3d
    return-void

    :cond_3e
    if-nez v1, :cond_41

    return-void

    :cond_41
    iget-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-nez v2, :cond_5e

    const-string/jumbo v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    :cond_5e
    if-eqz v1, :cond_6f

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v4, "ForwardIntentToManagedProfile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-nez v2, :cond_6f

    goto :goto_7a

    :cond_6f
    iget-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v2, :cond_7a

    iget-object v2, v0, Lcom/android/server/am/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchPersonaWallpaper(IZ)V

    :cond_7a
    :goto_7a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v2

    iget v13, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v16

    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_a5

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v5, :cond_a3

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_a5

    :cond_a3
    move v11, v4

    goto :goto_a6

    :cond_a5
    move v11, v3

    :goto_a6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/PersonaActivityHelper;->canShowWhenLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isDexMode()Z

    move-result v18

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v6, "com.samsung.android.knox.containercore/.common.MultiwindowLockActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PersonaActivityHelper;->isLockscreenShown()Z

    move-result v5

    if-eqz v5, :cond_c3

    iget-object v5, v0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService;->hideKnoxBadgeHelper()V

    :cond_c3
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v5, :cond_e3

    iget-object v5, v0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v17, :cond_d3

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-nez v6, :cond_d3

    move v7, v4

    goto :goto_d5

    :cond_d3
    nop

    move v7, v3

    :goto_d5
    move-object v4, v5

    move v5, v13

    move-object v6, v14

    move v8, v15

    move/from16 v9, v16

    move v10, v12

    move v3, v12

    move/from16 v12, v18

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/PersonaManagerService;->postActiveUserChange(ILandroid/content/ComponentName;ZIIZZZ)V

    goto :goto_e4

    :cond_e3
    move v3, v12

    :goto_e4
    return-void
.end method

.method public notifyKillForegroundAppsForUser(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1

    :cond_1f
    return v1
.end method

.method notifyMoveHomeStackTaskToTop(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/PersonaActivityHelper;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_13
    return-void
.end method

.method notifyResizeDockedStackLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_12

    nop

    goto :goto_1e

    :catch_12
    move-exception v0

    const-string v1, "PersonaActivityHelper"

    const-string/jumbo v2, "notifyResizeDockedStackLocked: NullPointerException Occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method notifyResolveActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .registers 8

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "crossProfileTargetUserId"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PersonaActivityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "targetUserId set :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-object v0
.end method

.method notifySetResumedActivityUncheckLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->setFocusedUser(I)V

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->shouldConfirmCredentials(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersonaActivityHelper;->hideKnoxWindowsLocked(I)V

    :cond_31
    invoke-direct {p0, p1}, Lcom/android/server/am/PersonaActivityHelper;->LockSecureFolderTask(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method notifyStartActivityAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 11

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/PersonaActivityHelper;->changeIntentforKiosk(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object p1

    :cond_1d
    :goto_1d
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.knox.containeragent"

    const-string v2, "com.samsung.android.knox.containeragent.EmptyKioskActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v2, 0x0

    :try_start_37
    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->getSemPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->getSemPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/PersonaActivityHelper;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4, v3}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v5
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4f} :catch_51

    move v2, v5

    :cond_50
    goto :goto_55

    :catch_51
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_55
    if-nez v2, :cond_65

    iget-object v3, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v4, 0x259

    invoke-virtual {v3, v4}, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/am/PersonaActivityHelper$PersonaActivityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6c

    :cond_65
    const-string v3, "PersonaActivityHelper"

    const-string v4, "Super lock case. do not show toast message."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    :goto_6c
    return-object v1
.end method

.method notifyStartActivityFromRecents(II)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x3

    if-ne p2, v0, :cond_24

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->shouldConfirmCredentials(I)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0, p1}, Lcom/android/server/am/PersonaActivityHelper;->hideKnoxWindowsLocked(I)V

    :cond_24
    return-void
.end method

.method onSystemReady()V
    .registers 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/PersonaActivityHelper;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/am/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_18

    return-void

    :cond_18
    iget-object v1, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v2

    if-lez v2, :cond_55

    :try_start_35
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/PersonaActivityHelper;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_55
    :goto_55
    return-void
.end method

.method setLockscreenShown(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/PersonaActivityHelper;->mLockscreenShown:Z

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/PersonaActivityHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iput-object p1, p0, Lcom/android/server/am/PersonaActivityHelper;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
