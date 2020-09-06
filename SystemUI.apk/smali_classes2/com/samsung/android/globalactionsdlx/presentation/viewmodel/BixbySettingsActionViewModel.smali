.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;
.super Ljava/lang/Object;
.source "BixbySettingsActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBixbyHandler:Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;

.field private final mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field private final mSettingsWrapper:Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

.field private final mThemeChecker:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BixbySettingsActionViewModel"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mBixbyHandler:Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mSettingsWrapper:Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mThemeChecker:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;

    iput-object p5, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onPress()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mBixbyHandler:Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mThemeChecker:Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/util/ThemeChecker;->getState()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mSettingsWrapper:Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->getCurrentBixbySettings()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->startBixbyGlobalSettingsActivity(Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1c

    :catch_12
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "BixbySettingsActionViewModel"

    const-string v3, "Activity not found exception!"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;->dismissDialog(Z)V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BixbySettingsActionViewModel;->mInfo:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
