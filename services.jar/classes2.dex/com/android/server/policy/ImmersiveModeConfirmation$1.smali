.class Lcom/android/server/policy/ImmersiveModeConfirmation$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 7

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_a

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v1, :cond_29

    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget v3, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x1

    if-ne v3, v2, :cond_13

    move v2, v4

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    # setter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mDexEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$002(Lcom/android/server/policy/ImmersiveModeConfirmation;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$100(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$100(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    :cond_29
    return-void
.end method
