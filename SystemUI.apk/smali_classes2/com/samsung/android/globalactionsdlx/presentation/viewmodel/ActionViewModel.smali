.class public interface abstract Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;
.super Ljava/lang/Object;
.source "ActionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;
    }
.end annotation


# virtual methods
.method public abstract getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
.end method

.method public getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;
    .registers 2

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onLongPress()V
    .registers 1

    return-void
.end method

.method public abstract onPress()V
.end method

.method public onPressSecureConfirm()V
    .registers 1

    return-void
.end method

.method public abstract setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
.end method

.method public setIcon(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 2

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public setIntentAction(I)V
    .registers 2

    return-void
.end method

.method public setState(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .registers 2

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public updateState()V
    .registers 1

    return-void
.end method
