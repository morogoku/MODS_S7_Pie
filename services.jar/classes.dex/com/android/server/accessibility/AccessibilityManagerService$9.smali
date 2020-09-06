.class Lcom/android/server/accessibility/AccessibilityManagerService$9;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTorchModeChanged mCameraId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cameraId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z
    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8402(Z)Z

    :cond_44
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 5

    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTorchModeUnavailable mCameraId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cameraId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8402(Z)Z

    :cond_3d
    return-void
.end method
