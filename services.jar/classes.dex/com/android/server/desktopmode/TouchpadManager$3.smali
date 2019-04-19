.class Lcom/android/server/desktopmode/TouchpadManager$3;
.super Landroid/content/BroadcastReceiver;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$3;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$3;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const-string/jumbo v2, "penInsert"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v3

    # setter for: Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$202(Lcom/android/server/desktopmode/TouchpadManager;Z)Z

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_3d

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/TouchpadManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsSPenDetached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/TouchpadManager$3;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z
    invoke-static {v3}, Lcom/android/server/desktopmode/TouchpadManager;->access$200(Lcom/android/server/desktopmode/TouchpadManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$3;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # invokes: Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V
    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$300(Lcom/android/server/desktopmode/TouchpadManager;)V

    :cond_42
    return-void
.end method
