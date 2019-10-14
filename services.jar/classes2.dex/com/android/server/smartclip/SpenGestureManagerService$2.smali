.class Lcom/android/server/smartclip/SpenGestureManagerService$2;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1002(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto :goto_21

    :cond_14
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1002(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    :goto_21
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cover_opened"

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    :cond_4a
    return-void
.end method
