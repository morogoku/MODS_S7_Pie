.class public Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;
.super Ljava/lang/Object;
.source "MobileDeviceWarningViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mPopupCompleted:Z

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mPopupCompleted:Z

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    return-object v0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mPopupCompleted:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mPopupCompleted:Z

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    const v1, 0x7f1208c1

    invoke-virtual {v0, v1}, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->makeToast(I)V

    return-void
.end method
