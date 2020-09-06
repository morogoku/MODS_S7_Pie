.class public Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;
.super Ljava/lang/Object;
.source "DataConnectionViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private final mHasMobileDataFeature:Z

.field private final mHasVoiceCallingFeature:Z

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

.field private mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/popup/util/PopupUILogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p6, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasMobileDataFeature:Z

    iput-boolean p7, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    iput-object p4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    iput-object p5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    return-object v0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;->isNoSimState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string/jumbo v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v2, "no_signal_retry_enable"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v3, "no_signal_retry_intent"

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getDataConnectionDialog(IZLandroid/app/PendingIntent;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v3}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v4, "DataConnectionViewModel"

    const-string/jumbo v5, "show() invalid AlertDialog"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v1, "DataConnectionViewModel"

    const-string v2, "Not ready to show DataConnectionErrorDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    const v1, 0x7f12027d

    invoke-virtual {v0, v1}, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->makeToast(I)V

    return-void
.end method
