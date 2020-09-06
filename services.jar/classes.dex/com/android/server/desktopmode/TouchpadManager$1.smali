.class Lcom/android/server/desktopmode/TouchpadManager$1;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
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

    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onDismiss()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # getter for: Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/desktopmode/Utils;->isSPenInBoxModel(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # setter for: Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$202(Lcom/android/server/desktopmode/TouchpadManager;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # invokes: Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V
    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$300(Lcom/android/server/desktopmode/TouchpadManager;)V

    :cond_17
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    # invokes: Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpad(Z)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$000(Lcom/android/server/desktopmode/TouchpadManager;Z)V

    return-void
.end method

.method onShow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpad(Z)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$000(Lcom/android/server/desktopmode/TouchpadManager;Z)V

    return-void
.end method
