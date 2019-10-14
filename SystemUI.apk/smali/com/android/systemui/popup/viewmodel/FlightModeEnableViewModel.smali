.class public Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;
.super Ljava/lang/Object;
.source "FlightModeEnableViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mFlightModeEnableDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mPopupCompleted:Z

.field private mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mFlightModeEnableDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mFlightModeEnableDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    return-object v0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mPopupCompleted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;->isDataEncrypted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;->isFlightModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v1, "FlightModeEnableViewModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showFlightModeEnabledAlertDialog() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v3}, Lcom/android/systemui/popup/util/PopupUIUtil;->isFlightModeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mPopupCompleted:Z

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getFlightModeDialog()Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mFlightModeEnableDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/FlightModeEnableViewModel;->mFlightModeEnableDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
