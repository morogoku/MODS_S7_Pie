.class public final Lcom/android/server/net/UrspOperatorService;
.super Landroid/os/Handler;
.source "UrspOperatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspOperatorService$UrspOperatorHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "UrspOperatorService"

.field private static final VDBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "start UrspOperatorService"

    invoke-static {v0}, Lcom/android/server/net/UrspOperatorService;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/net/UrspOperatorService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspOperatorService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v2, Lcom/android/server/net/UrspOperatorService$UrspOperatorHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspOperatorService$UrspOperatorHandler;-><init>(Lcom/android/server/net/UrspOperatorService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspOperatorService;->mHandler:Landroid/os/Handler;

    goto :goto_29

    :cond_23
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspOperatorService;->logn(Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspOperatorService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UrspOperatorService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getServerInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4f

    const-string v0, "KT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "getJsonBodyKey"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/String;

    const-string v1, "KTGameOnJSONBody"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1c
    const-string/jumbo v0, "getJsonBodyIV"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/String;

    const-string v1, "VETRKTGameOnJSBY"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2d
    const-string/jumbo v0, "getUsernameKey"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/String;

    const-string v1, "2018KTGameOnPass"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3e
    const-string/jumbo v0, "getUsernameIV"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/String;

    const-string v1, "VectorKTGameOnOK"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_4f
    const/4 v0, 0x0

    return-object v0
.end method
