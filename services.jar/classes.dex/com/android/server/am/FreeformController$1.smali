.class Lcom/android/server/am/FreeformController$1;
.super Landroid/content/BroadcastReceiver;
.source "FreeformController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreeformController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FreeformController;


# direct methods
.method constructor <init>(Lcom/android/server/am/FreeformController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/FreeformController$1;->this$0:Lcom/android/server/am/FreeformController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_14
    iget-object v1, p0, Lcom/android/server/am/FreeformController$1;->this$0:Lcom/android/server/am/FreeformController;

    # getter for: Lcom/android/server/am/FreeformController;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/FreeformController;->access$000(Lcom/android/server/am/FreeformController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1f
    return-void
.end method
