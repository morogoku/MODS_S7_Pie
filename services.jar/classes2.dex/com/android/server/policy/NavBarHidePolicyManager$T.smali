.class final Lcom/android/server/policy/NavBarHidePolicyManager$T;
.super Ljava/lang/Thread;
.source "NavBarHidePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NavBarHidePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "T"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NavBarHidePolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NavBarHidePolicyManager;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/NavBarHidePolicyManager$T;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager$T;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/policy/NavBarHidePolicyManager$T;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    # invokes: Lcom/android/server/policy/NavBarHidePolicyManager;->savePolicies()V
    invoke-static {v1}, Lcom/android/server/policy/NavBarHidePolicyManager;->access$100(Lcom/android/server/policy/NavBarHidePolicyManager;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_16

    :try_start_d
    iget-object v1, p0, Lcom/android/server/policy/NavBarHidePolicyManager$T;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    goto :goto_14

    :catch_13
    move-exception v1

    :goto_14
    :try_start_14
    monitor-exit v0

    goto :goto_5

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_16

    throw v1
.end method
