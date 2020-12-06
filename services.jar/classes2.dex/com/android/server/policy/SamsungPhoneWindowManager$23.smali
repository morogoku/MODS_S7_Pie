.class Lcom/android/server/policy/SamsungPhoneWindowManager$23;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$23;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTorchModeChanged mCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$23;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z
    invoke-static {v0, p2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2102(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    :cond_40
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 5

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTorchModeUnavailable mCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$23;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2102(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    :cond_39
    return-void
.end method
