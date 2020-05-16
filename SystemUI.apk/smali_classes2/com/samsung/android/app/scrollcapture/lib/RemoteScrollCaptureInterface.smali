.class public Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
.super Ljava/lang/Object;
.source "RemoteScrollCaptureInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ScrCap]_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    return-object p0
.end method

.method public static isPackageAvailable(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "com.samsung.android.app.smartcapture"

    invoke-static {p0, v0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.samsung.android.app.scrollcapture"

    invoke-static {p0, v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sget-object v3, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isPackageAvailable : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string v5, "available"

    goto :goto_1

    :cond_1
    const-string v5, "not available"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isSmartCaptureAvailable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isScrollCaptureAvailable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v3, "isPackageAvailable : Failed to get package manager!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    sget-object v4, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isPackageAvailable : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    const-string v6, "available"

    goto :goto_1

    :cond_2
    const-string v6, "not available"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isPackageAvailable : not available. e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z
    .locals 7

    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v4, "connect : Already connected"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v3, "connect : Connection already requested"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    new-instance v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;-><init>(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;J)V

    iput-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.app.smartcapture"

    invoke-static {v5, v6}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v6, "SmartCapture will be binded."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.android.app.smartcapture"

    const-string v6, "com.samsung.android.app.scrollcapture.core.ScrollCaptureRemoteService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v6, "ScrollCapture will be binded."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.android.app.scrollcapture"

    const-string v6, "com.samsung.android.app.scrollcapture.core.ScrollCaptureRemoteService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v2, v6, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v5, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v6, "connect : bindService failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    invoke-interface {v5, v4}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;->onConnectionResult(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->release()V

    :cond_4
    return v3
.end method

.method public disconnect()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect : e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "disconnect : No service connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->release()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "notifyGlobalScreenshotFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v2, "notifyGlobalScreenshotFinished : No service connection"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;->onGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyGlobalScreenshotFinished : e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public notifyGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "notifyGlobalScreenshotStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v2, "notifyGlobalScreenshotStarted : No service connection"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;->onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyGlobalScreenshotStarted : e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
