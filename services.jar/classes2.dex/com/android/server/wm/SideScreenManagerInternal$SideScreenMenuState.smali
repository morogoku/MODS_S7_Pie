.class Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;
.super Ljava/lang/Object;
.source "SideScreenManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SideScreenManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SideScreenMenuState"
.end annotation


# instance fields
.field mLastVisibility:Z

.field mWindow:Lcom/android/server/wm/WindowState;

.field final mWindowingMode:I

.field final synthetic this$0:Lcom/android/server/wm/SideScreenManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SideScreenManagerInternal;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->this$0:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindowingMode:I

    return-void
.end method


# virtual methods
.method reevaluateVisiblity(Z)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->this$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindowingMode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->this$0:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v4

    :goto_23
    iget-boolean v5, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mLastVisibility:Z

    if-ne v5, v3, :cond_2a

    if-nez p1, :cond_2a

    return v4

    :cond_2a
    iput-boolean v3, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mLastVisibility:Z

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->this$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-object v5, v5, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v5, v5, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v6, 0xca

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindowingMode:I

    if-eqz v3, :cond_3c

    move v4, v2

    goto :goto_3d

    :cond_3c
    nop

    :goto_3d
    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->this$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-object v5, v5, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v5, v5, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return v2
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method
