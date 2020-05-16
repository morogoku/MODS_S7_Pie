.class public Lcom/android/systemui/splugins/ActivityManagerProxyImpl;
.super Ljava/lang/Object;
.source "ActivityManagerProxyImpl.java"

# interfaces
.implements Lcom/android/systemui/splugins/ActivityManagerProxy;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ActivityManagerProxyImpl"

    sput-object v0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->mUserId:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private register()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/splugins/ActivityManagerProxyImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/splugins/ActivityManagerProxyImpl$1;-><init>(Lcom/android/systemui/splugins/ActivityManagerProxyImpl;)V

    sget-object v2, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentUser()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->mUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->register()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->mUserId:I

    sget-object v0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "ActivityManager.getCurrentUser() called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
