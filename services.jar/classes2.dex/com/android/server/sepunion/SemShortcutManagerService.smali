.class public Lcom/android/server/sepunion/SemShortcutManagerService;
.super Lcom/samsung/android/app/ISemExecuteManager$Stub;
.source "SemShortcutManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_START_SCAN:I = 0x3e6

.field private static final SEND_MSG_DELAY_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SemExecuteManagerService"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mScanHandler:Landroid/os/Handler;

.field private final mSemExecutableInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutChangeListener:Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

.field private mShortcutChangedCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/app/ISemExecuteManager$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/sepunion/SemShortcutManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$1;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangeListener:Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    new-instance v0, Lcom/android/server/sepunion/SemShortcutManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService$2;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangeListener:Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    const-string v0, "SemExecuteManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- SemShortcutManagerService: start updateSemExecutableInfo() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    const-string v0, "SemExecuteManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- SemShortcutManagerService: end updateSemExecutableInfo() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/SemShortcutManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/SemShortcutManagerService;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/SemShortcutManagerService;->makeIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    return-void
.end method

.method private canAccessProfile(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectClearCallingIdentity()J

    move-result-wide v2

    :try_start_c
    iget-object v4, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_46

    const-string v1, "SemExecuteManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for another profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_79

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return v1

    :cond_46
    :try_start_46
    iget-object v5, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v5, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_5f

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v6, v7, :cond_5f

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_79

    if-ne v6, v7, :cond_5f

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    nop

    return v1

    :cond_5f
    :try_start_5f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for unrelated profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_79

    :catchall_79
    move-exception v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    throw v1
.end method

.method private canAccessProfile(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforeCallingPermission(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExecuteManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureShortcutPermission(Ljava/lang/String;)V
    .registers 3

    const-string v0, "ensureShortcutPermission"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    return-void
.end method

.method private getCallingUserId()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private isUserEnabled(I)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectClearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return v3

    :catchall_19
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method private isUserEnabled(Landroid/os/UserHandle;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result v0

    return v0
.end method

.method private makeIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.shortcut.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.shortcut.USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectClearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p2, p4, p1, p3}, Landroid/app/ActivityManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_f} :catch_33
    .catchall {:try_start_5 .. :try_end_f} :catchall_31

    if-eqz v4, :cond_16

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return v2

    :cond_16
    :try_start_16
    const-string v4, "SemExecuteManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t start activity, code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_2c} :catch_33
    .catchall {:try_start_16 .. :try_end_2c} :catchall_31

    nop

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return v2

    :catchall_31
    move-exception v2

    goto :goto_40

    :catch_33
    move-exception v3

    :try_start_34
    const-string v4, "SemExecuteManagerService"

    const-string v5, "SecurityException while launching intent"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_31

    nop

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return v2

    :goto_40
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method private declared-synchronized updateSemExecutableInfo()V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_67

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/SemExecutableInfo;->scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/SemExecutableInfo;

    iget-object v5, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/SemExecutableInfo;

    if-nez v5, :cond_38

    const/4 v1, 0x1

    goto :goto_3f

    :cond_38
    invoke-virtual {v5, v4}, Lcom/samsung/android/app/SemExecutableInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    :goto_3f
    goto :goto_1c

    :cond_40
    if-eqz v1, :cond_61

    iget-object v3, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/SemExecutableInfo;

    iget-object v5, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_64

    monitor-exit p0

    return-void

    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "SemExecuteManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\n##### SEM SHORTCUT MANAGER SERVICE #####\n##### (dumpsys sepunion execute) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot check package"

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    invoke-direct {p0, p4}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_19
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    nop

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, p2, p3, v0, v4}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2f

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_2f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/SemExecutableInfo;

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getExecutableInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 14

    const-string v0, "getShortcutIconFd"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const-string v0, "Cannot access shortcuts"

    invoke-direct {p0, p1, p5, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    invoke-direct {p0, p5}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result v0

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUserId()I

    move-result v3

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getShortcuts(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            "Landroid/content/ComponentName;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    const-string v3, "SemExecuteManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShortcuts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "getShortcuts"

    invoke-direct {v0, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const-string v3, "Cannot get shortcuts"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-direct {v0, v2}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_68

    :cond_30
    if-eqz p6, :cond_3d

    if-eqz p5, :cond_35

    goto :goto_3d

    :cond_35
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "To query by shortcut ID, package name must also be set"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3d
    :goto_3d
    new-instance v15, Landroid/content/pm/ParceledListSlice;

    iget-object v4, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUserId()I

    move-result v5

    invoke-virtual/range {p9 .. p9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object v0, v15

    move/from16 v15, v16

    invoke-virtual/range {v4 .. v15}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_68
    :goto_68
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "hasShortcutHostPermission"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method injectBinderCallingUid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUid()I

    move-result v0

    return v0
.end method

.method final injectCallingUserId()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method injectClearCallingIdentity()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method injectRestoreCallingIdentity(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_c

    new-instance v0, Lcom/android/server/sepunion/SemShortcutManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$3;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemShortcutManagerService$3;->start()V

    :cond_c
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public registerChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    :cond_1b
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .registers 20

    move-object v0, p0

    move/from16 v9, p7

    const-string/jumbo v1, "startShortcut"

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const-string v1, "Cannot start activity"

    move-object v10, p1

    invoke-direct {v0, v10, v9, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_14

    return v11

    :cond_14
    invoke-direct {v0, v9}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUserId()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "startShortcut"

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    :cond_31
    iget-object v1, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move v6, v9

    invoke-virtual/range {v1 .. v8}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_64

    array-length v2, v1

    if-nez v2, :cond_4e

    goto :goto_64

    :cond_4e
    aget-object v2, v1, v11

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    aget-object v2, v1, v11

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object v2, p3

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v4, v9}, Lcom/android/server/sepunion/SemShortcutManagerService;->startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v5

    return v5

    :cond_64
    :goto_64
    move-object v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    return v11

    :cond_6a
    move-object v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start a shortcut for disabled profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unRegisterChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_2e
    goto :goto_19

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method verifyCallingPackage(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const v2, 0xc2000

    invoke-static {}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move v0, v1

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    if-gez v0, :cond_2f

    const-string v1, "SemExecuteManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_36

    return-void

    :cond_36
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling package name mismatch"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
