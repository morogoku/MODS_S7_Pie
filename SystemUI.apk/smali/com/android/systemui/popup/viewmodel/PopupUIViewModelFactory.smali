.class public Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;
.super Ljava/lang/Object;
.source "PopupUIViewModelFactory.java"


# instance fields
.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mHasMobileDataFeature:Z

.field private mHasVoiceCallingFeature:Z

.field private mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

.field private mViewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/PopupUIUtilFactory;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    iput-boolean p3, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mHasMobileDataFeature:Z

    iput-boolean p4, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mHasVoiceCallingFeature:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-direct {p0}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->createPopupUIViewModel()V

    return-void
.end method

.method private createPopupUIViewModel()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    new-instance v9, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getToastWrapper()Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getIntentWrapper()Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getUtils()Lcom/android/systemui/popup/util/PopupUIUtil;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mHasMobileDataFeature:Z

    iget-boolean v8, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mHasVoiceCallingFeature:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/popup/util/PopupUILogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;ZZ)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v3}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getIntentWrapper()Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/systemui/Rune;->POPUP_SUPPORT_MOBILE_DEVICE_WARNING_POPUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getToastWrapper()Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v3}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getIntentWrapper()Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;-><init>(Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPopupUIViewModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    return-object v0
.end method
