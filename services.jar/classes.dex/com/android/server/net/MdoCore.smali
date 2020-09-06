.class public Lcom/android/server/net/MdoCore;
.super Lcom/android/server/net/UrspCore;
.source "MdoCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UrspService_MDO"

.field private static final mDefaultBlackListPkgName:[Ljava/lang/String;


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mCurrentUserId:I

.field private mIsSystemReady:Z

.field private mIsVpnConnected:Z

.field private mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

.field private mMdoNetId:I

.field private mMdoNotification:Lcom/android/server/net/MdoNotification;

.field private mMdoState:Z

.field private mMdoUidRule:Landroid/util/SparseBooleanArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mUrspAppListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IUrspAppListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private sUrspConnListener:Landroid/net/IUrspConnectionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "com.samsung.android.fast"

    const-string v1, "com.android.systemui"

    const-string v2, "com.samsung.android.messaging"

    const-string v3, "com.skt.prod.dialer"

    const-string v4, "com.skt.skaf.OA00199800"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/MdoCore;->mDefaultBlackListPkgName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/UrspService;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/net/UrspCore;-><init>(Lcom/android/server/net/UrspService;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    iput v0, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    iput-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    iput-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    iput v0, p0, Lcom/android/server/net/MdoCore;->mCurrentUserId:I

    new-instance v0, Lcom/android/server/net/MdoCore$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoCore$1;-><init>(Lcom/android/server/net/MdoCore;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/android/server/net/MdoCore$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoCore$2;-><init>(Lcom/android/server/net/MdoCore;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    new-instance v0, Lcom/android/server/net/MdoCore$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoCore$3;-><init>(Lcom/android/server/net/MdoCore;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/MdoCore$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoCore$4;-><init>(Lcom/android/server/net/MdoCore;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v3}, Lcom/android/server/net/UrspService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/net/MdoNotification;

    invoke-virtual {p1}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/net/MdoNotification;-><init>(Landroid/content/Context;Landroid/net/IUrspManager;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/MdoCore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/net/MdoCore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/net/MdoCore;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/net/MdoCore;)Lcom/android/server/net/MdoNotification;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/net/MdoCore;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/MdoCore;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/MdoCore;)I
    .registers 2

    iget v0, p0, Lcom/android/server/net/MdoCore;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/net/MdoCore;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/net/MdoCore;->mCurrentUserId:I

    return p1
.end method

.method private addDefaultMdoBlacklist()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "Apply default BlackList"

    invoke-static {v1}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/net/MdoCore;->mDefaultBlackListPkgName:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_72

    aget-object v5, v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    :try_start_2d
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_56

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add blackList ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7, v3}, Lcom/android/server/net/MdoCore;->setUrspBlackListUidRule(ZIZ)V
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_56} :catch_57

    :cond_56
    goto :goto_6f

    :catch_57
    move-exception v6

    const-string v7, "UrspService_MDO"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No ApplicationInfo for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_72
    return-void
.end method

.method private clearUrspBlackListUidRule(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_33

    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/UrspService;->sendBigData(II)V

    :cond_1a
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->addDefaultMdoBlacklist()V

    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_28
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    monitor-exit v0

    goto :goto_32

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2f

    throw v1

    :cond_32
    :goto_32
    return-void

    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mConnMgr:Landroid/net/ConnectivityManager;

    :cond_14
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private killApp(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "kill "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app, uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string/jumbo v1, "mdo"

    invoke-virtual {v0, p2, v1}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    return-void
.end method

.method private killApps()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v2, v1}, Lcom/android/server/net/UrspService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/net/MdoCore;->killApp(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspService_MDO"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspService_MDO"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerUserSwitchedReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterUserSwitchedReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public clearUrspBlackListUidRule()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/MdoCore;->clearUrspBlackListUidRule(Z)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    const-string v0, "Mobile data only: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "Mobile data only NetId: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string v0, "Mobile data only UIDs:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    const-string v2, "UID="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_37
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v1, "Mobile data only blacklist UIDs:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    nop

    :goto_46
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    const-string v1, "UID="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_5f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public factoryReset()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/MdoCore;->setUrspMode(Z)V

    invoke-virtual {p0}, Lcom/android/server/net/MdoCore;->getAllUrspRule()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/MdoCore;->setUrspRules(Z[I)V

    invoke-direct {p0, v0}, Lcom/android/server/net/MdoCore;->clearUrspBlackListUidRule(Z)V

    iget-boolean v1, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/UrspService;->sendBigData(II)V

    :cond_19
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2715

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getAllUrspBlackListUidsRule()[I
    .registers 7

    const/4 v0, 0x0

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v2}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    nop

    :goto_b
    :try_start_b
    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v1, v5

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2a
    monitor-exit v2

    return-object v1

    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public getAllUrspRule()[I
    .registers 7

    const/4 v0, 0x0

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v2}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    nop

    :goto_b
    :try_start_b
    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v1, v5

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2a
    monitor-exit v2

    return-object v1

    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public getUrspMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getUrspNetId()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isUrspRuleEnabled(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public registerUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public requestPduSession(IZLandroid/os/Messenger;Landroid/os/IBinder;)V
    .registers 5

    return-void
.end method

.method public setUrspBlackListUidRule(ZI)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/MdoCore;->setUrspBlackListUidRule(ZIZ)V

    return-void
.end method

.method public setUrspBlackListUidRule(ZIZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_11

    :try_start_9
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_16

    :catchall_f
    move-exception v1

    goto :goto_3e

    :cond_11
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_f

    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_28

    if-eqz p3, :cond_28

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_24

    const/4 v1, 0x3

    goto :goto_25

    :cond_24
    const/4 v1, 0x4

    :goto_25
    invoke-virtual {v0, v1, p2}, Lcom/android/server/net/UrspService;->sendBigData(II)V

    :cond_28
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_33
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    monitor-exit v0

    goto :goto_3d

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3a

    throw v1

    :cond_3d
    :goto_3d
    return-void

    :goto_3e
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_f

    throw v1
.end method

.method public setUrspMode(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "setUrspMode() ignore. vpn connected."

    invoke-static {v0}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    if-eq p1, v0, :cond_ae

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_16
    iput-boolean p1, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_ab

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/net/UrspConnectivityController;->requestConnection(ZII)V

    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/net/UrspConnectivityController;->registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    iput-boolean v2, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/MdoCore;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->registerUserSwitchedReceiver()V

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->startNotification()V

    goto :goto_92

    :cond_69
    iput v2, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetId(II)V

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/net/UrspConnectivityController;->unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-boolean v2, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->unregisterUserSwitchedReceiver()V

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->stopNotification()V

    :goto_92
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9d
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    monitor-exit v0

    goto :goto_a7

    :catchall_a4
    move-exception v1

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_a4

    throw v1

    :cond_a7
    :goto_a7
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->killApps()V

    goto :goto_ae

    :catchall_ab
    move-exception v1

    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v1

    :cond_ae
    :goto_ae
    return-void
.end method

.method public setUrspNetId(I)V
    .registers 5

    iput p1, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetId(II)V

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/net/MdoCore;->sendUrspAppBroadcast(Landroid/os/RemoteCallbackList;II)V

    return-void
.end method

.method public setUrspRule(ZI)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/MdoCore;->setUrspRule(ZIZ)V

    return-void
.end method

.method public setUrspRule(ZIZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_11

    :try_start_9
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_16

    :catchall_f
    move-exception v1

    goto :goto_7b

    :cond_11
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_f

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspRule(IIZ)V

    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2c
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw v1

    :cond_36
    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p2, :cond_65

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/net/MdoCore;->killApp(Ljava/lang/String;I)V

    :cond_65
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_75

    if-eqz p3, :cond_75

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x2

    :goto_72
    invoke-virtual {v0, v1, p2}, Lcom/android/server/net/UrspService;->sendBigData(II)V

    :cond_75
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    return-void

    :goto_7b
    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_f

    throw v1
.end method

.method public setUrspRules(Z[I)V
    .registers 9

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2c

    aget v3, p2, v2

    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v4}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-eqz p1, :cond_18

    :try_start_10
    iget-object v5, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1d

    :catchall_16
    move-exception v0

    goto :goto_2a

    :cond_18
    iget-object v5, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_1d
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_16

    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v4}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v4

    invoke-virtual {v4, v1, v3, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspRule(IIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :goto_2a
    :try_start_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_16

    throw v0

    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_37
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    monitor-exit v0

    goto :goto_41

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw v1

    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->killApps()V

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    return-void
.end method

.method public systemReady()V
    .registers 2

    const-string/jumbo v0, "systemReady()"

    invoke-static {v0}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->addDefaultMdoBlacklist()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    return-void
.end method

.method public unregisterUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public writePolicy(Ljava/io/FileOutputStream;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9

    :try_start_0
    const-string/jumbo v0, "mdo-policy"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "mdo-state"

    iget-boolean v2, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    invoke-static {p2, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_40

    :cond_28
    const-string/jumbo v5, "mdo-uid-policy"

    invoke-interface {p2, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "uid"

    invoke-static {p2, v5, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v5, "policy"

    invoke-static {p2, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v5, "mdo-uid-policy"

    invoke-interface {p2, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_43
    nop

    :goto_44
    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_76

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoBlackListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_73

    :cond_5b
    const-string/jumbo v4, "mdo-blacklist-policy"

    invoke-interface {p2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "uid"

    invoke-static {p2, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v4, "policy"

    invoke-static {p2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v4, "mdo-blacklist-policy"

    invoke-interface {p2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_76
    const-string/jumbo v0, "mdo-policy"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7c} :catch_7d

    goto :goto_93

    :catch_7d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to write policy file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    :goto_93
    return-void
.end method
