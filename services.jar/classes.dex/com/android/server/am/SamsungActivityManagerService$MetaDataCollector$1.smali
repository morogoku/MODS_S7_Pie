.class Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    # getter for: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z
    invoke-static {v1}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$200(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)Z

    move-result v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_21

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1b

    if-nez v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->loadInternal()V
    invoke-static {v0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$300(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->scheduleLoad()V
    invoke-static {v0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$100(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V

    return-void

    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method
