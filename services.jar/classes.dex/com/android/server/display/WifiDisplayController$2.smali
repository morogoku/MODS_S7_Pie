.class Lcom/android/server/display/WifiDisplayController$2;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->sendDeviceVolumeKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$keyEvent:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput p2, p0, Lcom/android/server/display/WifiDisplayController$2;->val$keyEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/display/WifiDisplayController$2;->val$keyEvent:I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/ControllerUtils;

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    const/16 v0, 0xa

    goto :goto_34

    :cond_e
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$2;->val$keyEvent:I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/ControllerUtils;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/16 v0, 0xb

    goto :goto_34

    :cond_1b
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$2;->val$keyEvent:I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/ControllerUtils;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    const/16 v0, 0xc

    goto :goto_34

    :cond_28
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$2;->val$keyEvent:I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/ControllerUtils;

    const/4 v2, 0x3

    if-ne v1, v2, :cond_34

    const/16 v0, 0xd

    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
