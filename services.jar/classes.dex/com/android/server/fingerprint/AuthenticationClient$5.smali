.class Lcom/android/server/fingerprint/AuthenticationClient$5;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/AuthenticationClient;->start()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z
    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$600(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    :cond_1d
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    # setter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I
    invoke-static {v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$702(Lcom/android/server/fingerprint/AuthenticationClient;I)I

    sget-boolean v1, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    if-eqz v1, :cond_47

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDisplayState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I
    invoke-static {v3}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I
    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_59

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I
    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_70

    :cond_59
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$800(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$800(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$5;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->access$802(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_70
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
