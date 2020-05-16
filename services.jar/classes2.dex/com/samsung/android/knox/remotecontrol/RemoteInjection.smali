.class public Lcom/samsung/android/knox/remotecontrol/RemoteInjection;
.super Ljava/lang/Object;
.source "RemoteInjection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static gRemoteInjection:Lcom/samsung/android/knox/remotecontrol/RemoteInjection;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    if-nez v0, :cond_11

    const-string/jumbo v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    return-object v0
.end method


# virtual methods
.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 7

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "RemoteInjection.injectKeyEvent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->getService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    if-eqz v0, :cond_32

    :try_start_14
    iget-object v0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v0

    const-string v1, "RemoteInjection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error injecting key event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 7

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "RemoteInjection.injectPointerEvent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->getService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    if-eqz v0, :cond_32

    :try_start_14
    iget-object v0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v0

    const-string v1, "RemoteInjection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error injecting pointer event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 7

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "RemoteInjection.injectTrackballEvent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->getService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    if-eqz v0, :cond_32

    :try_start_14
    iget-object v0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v0

    const-string v1, "RemoteInjection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error injecting trackball event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    return v0
.end method
