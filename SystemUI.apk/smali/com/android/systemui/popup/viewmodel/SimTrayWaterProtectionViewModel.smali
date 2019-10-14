.class public Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;
.super Ljava/lang/Object;
.source "SimTrayWaterProtectionViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mSimTrayWaterProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mSimTrayWaterProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mSimTrayWaterProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_WATER_PROTECTION_POPUP"

    return-object v0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v1, "dismiss"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string/jumbo v3, "type"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v2, v1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getSimTrayDialog(I)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mSimTrayWaterProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mSimTrayWaterProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v2}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    :goto_0
    return-void
.end method
