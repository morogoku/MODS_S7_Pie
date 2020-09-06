.class Lcom/android/server/wm/AspectRatioController$1;
.super Ljava/lang/Object;
.source "AspectRatioController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AspectRatioController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AspectRatioController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$1;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$1;->this$0:Lcom/android/server/wm/AspectRatioController;

    # getter for: Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AspectRatioController;->access$100(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$1;->this$0:Lcom/android/server/wm/AspectRatioController;

    # getter for: Lcom/android/server/wm/AspectRatioController;->mRestartTaskId:I
    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->access$000(Lcom/android/server/wm/AspectRatioController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$1;->this$0:Lcom/android/server/wm/AspectRatioController;

    # getter for: Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AspectRatioController;->access$100(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_45

    :catch_25
    move-exception v0

    const-string v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not open this task id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$1;->this$0:Lcom/android/server/wm/AspectRatioController;

    # getter for: Lcom/android/server/wm/AspectRatioController;->mRestartTaskId:I
    invoke-static {v3}, Lcom/android/server/wm/AspectRatioController;->access$000(Lcom/android/server/wm/AspectRatioController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_45
    return-void
.end method
