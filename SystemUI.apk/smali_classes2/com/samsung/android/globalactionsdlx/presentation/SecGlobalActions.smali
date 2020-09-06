.class public interface abstract Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;
.super Ljava/lang/Object;
.source "SecGlobalActions.java"


# virtual methods
.method public abstract addAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
.end method

.method public abstract clearActions(Ljava/lang/String;)V
.end method

.method public abstract confirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
.end method

.method public abstract confirmSafeMode(I)V
.end method

.method public abstract dismissDialog(Z)V
.end method

.method public abstract getGlobalActionsView()Lcom/samsung/android/globalactionsdlx/presentation/view/ExtendableGlobalActionsView;
.end method

.method public abstract hideDialogOnSecureConfirm()V
.end method

.method public abstract isActionConfirming()Z
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract onCancelDialog()V
.end method

.method public abstract onShowDialog()V
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V
.end method

.method public abstract registerSecureConfirmAction(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
.end method

.method public abstract setDisabled()V
.end method

.method public abstract setKeyguardShowing(Z)V
.end method

.method public abstract setOverrideDefaultActions(Z)V
.end method
