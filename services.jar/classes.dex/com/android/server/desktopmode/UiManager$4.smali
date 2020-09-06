.class Lcom/android/server/desktopmode/UiManager$4;
.super Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/UiManager;

.field final synthetic val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$4;->this$0:Lcom/android/server/desktopmode/UiManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onClickButtonNegative()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onClickButtonNegative()V

    :cond_9
    return-void
.end method

.method public onClickButtonPositive()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onClickButtonPositive()V

    :cond_9
    return-void
.end method

.method public onDismiss()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onDismiss()V

    :cond_9
    return-void
.end method

.method public onShow()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onShow()V

    :cond_9
    return-void
.end method
