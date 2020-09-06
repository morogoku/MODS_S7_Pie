.class Lcom/android/server/desktopmode/CoverStateManager$4;
.super Ljava/lang/Object;
.source "CoverStateManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$800(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onBlocked(), !mAuthComplete"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_14
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mKeyboardCoverEnabled:Z
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$600(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x10402a7

    :goto_1f
    goto :goto_56

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$700(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$300(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_62

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$300(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_43

    const v0, 0x10402a3

    goto :goto_1f

    :cond_43
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$300(Lcom/android/server/desktopmode/CoverStateManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_52

    const v0, 0x10402a4

    goto :goto_1f

    :cond_52
    const v0, 0x10402a5

    goto :goto_1f

    :goto_56
    nop

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$4;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$500(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_62
    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onBlocked(), Unknown reason"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
