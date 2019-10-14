.class public Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;
.super Ljava/lang/Object;
.source "ProKioskActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

.field private final mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

.field private final mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

.field private mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/AlertDialogFactory;Lcom/samsung/android/globalactions/util/SystemController;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    return-void
.end method

.method private disableProKioskMode()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->setProKioskState(ZLjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-virtual {v3}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;)V

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/util/SystemController;->goToHome()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onPress$0(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->disableProKioskMode()V

    return-void
.end method

.method public static synthetic lambda$onPress$1(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onPress()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    const-string v2, "611"

    const-string v3, "6111"

    const-string v4, "Pro kiosk"

    const-wide/16 v5, 0x7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$ProKioskActionViewModel$pFm7zjBNE4KZfZ88DYRFpTDKIqU;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$ProKioskActionViewModel$pFm7zjBNE4KZfZ88DYRFpTDKIqU;-><init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;)V

    new-instance v2, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$ProKioskActionViewModel$0x3jxZrfTBrxVUoor2gKFx9Ya0o;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$ProKioskActionViewModel$0x3jxZrfTBrxVUoor2gKFx9Ya0o;-><init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskModeDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v2, 0xdd

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getExitUI(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v3, 0xde

    invoke-virtual {v2, v3}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getExitUI(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/globalactions/util/SystemController;->startProKioskExitUI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    :cond_5
    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public setState(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .locals 6

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getProKioskString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getProKioskString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getProKioskString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v3, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v5, 0x10403c0

    invoke-virtual {v4, v5}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v5, 0x10403b1

    invoke-virtual {v4, v5}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v5, 0x10403b0

    invoke-virtual {v4, v5}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
