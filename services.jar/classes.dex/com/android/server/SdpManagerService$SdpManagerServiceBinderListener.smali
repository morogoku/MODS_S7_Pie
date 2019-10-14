.class final Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
.super Ljava/lang/Object;
.source "SdpManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SdpManagerServiceBinderListener"
.end annotation


# instance fields
.field caller:I

.field mAlias:Ljava/lang/String;

.field final mListener:Landroid/os/ISdpListener;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Landroid/os/ISdpListener;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->caller:I

    iput-object p3, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    iput-object p2, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    const-string v0, "SdpManagerService"

    const-string v1, "An ISdpListener has died!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mAlias:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mAlias:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method getCaller()I
    .registers 2

    iget v0, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->caller:I

    return v0
.end method

.method setCaller(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->caller:I

    return-void
.end method
