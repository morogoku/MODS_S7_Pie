.class Lcom/android/server/display/DisplayManagerService$LocalService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService$LocalService;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

.field final synthetic val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestDisplayState(IIII)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestedStateLimit:I
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6300(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestedState:I
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6400(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v0

    if-ne v0, p1, :cond_2a

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestedstateInternal:I
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6500(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v0

    if-ne v0, p2, :cond_2a

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestedDualScreenPolicy:I
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6600(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v0

    if-ne v0, p3, :cond_2a

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestedbrightness:I
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6700(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v0

    if-eq v0, p4, :cond_3b

    :cond_2a
    const-string v0, "DisplayManagerService"

    const-string v1, "Display state is changed when Limit mode is on"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # setter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mNeedUpdate:Z
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6802(Lcom/android/server/display/DisplayManagerService$LocalService;Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService$LocalService;->updateDisplayState(IIII)V

    :cond_3b
    const-string v0, "DisplayManagerService"

    const-string v1, "Ignore cause Display State Limit "

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService$LocalService;->updateDisplayState(IIII)V

    const/4 v0, 0x0

    if-ne p1, v2, :cond_57

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v3, p1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(IZ)V

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(IIII)V
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$6900(Lcom/android/server/display/DisplayManagerService;IIII)V

    :cond_57
    if-eq p1, v2, :cond_7e

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(IIII)V
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$6900(Lcom/android/server/display/DisplayManagerService;IIII)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingDualScreenPolicy:I
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$7000(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v4

    if-eq v4, p3, :cond_6f

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # setter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingDualScreenPolicy:I
    invoke-static {v4, p3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$7002(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    const/4 v3, 0x1

    :cond_6f
    if-ne p1, v1, :cond_79

    if-ne p2, v2, :cond_79

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v1, v2, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(IZ)V

    goto :goto_7e

    :cond_79
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(IZ)V

    :cond_7e
    :goto_7e
    return-void
.end method
