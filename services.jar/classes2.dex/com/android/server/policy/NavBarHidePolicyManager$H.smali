.class final Lcom/android/server/policy/NavBarHidePolicyManager$H;
.super Landroid/os/Handler;
.source "NavBarHidePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NavBarHidePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NavBarHidePolicyManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/NavBarHidePolicyManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/NavBarHidePolicyManager$H;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/NavBarHidePolicyManager;Lcom/android/server/policy/NavBarHidePolicyManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/NavBarHidePolicyManager$H;-><init>(Lcom/android/server/policy/NavBarHidePolicyManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_f

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager$H;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/policy/NavBarHidePolicyManager$H;->this$0:Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :goto_f
    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method
