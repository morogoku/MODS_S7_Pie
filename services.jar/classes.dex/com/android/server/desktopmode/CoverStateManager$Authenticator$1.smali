.class Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;
.super Ljava/lang/Object;
.source "CoverStateManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/desktopmode/CoverStateManager$Authenticator;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;->this$1:Lcom/android/server/desktopmode/CoverStateManager$Authenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUnverifiedCoverAttachChanged(JZ)V
    .registers 7

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUnverifiedCoverAttachChanged, attached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-nez p3, :cond_30

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;->this$1:Lcom/android/server/desktopmode/CoverStateManager$Authenticator;

    iget-object v0, v0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    # getter for: Lcom/android/server/desktopmode/CoverStateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$900(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;->this$1:Lcom/android/server/desktopmode/CoverStateManager$Authenticator;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthCompleteAndResetCallbacksReceiver()V

    :cond_30
    return-void
.end method
