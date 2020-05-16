.class public Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;
.super Ljava/lang/Object;
.source "SystemUIConditionChecker.java"

# interfaces
.implements Lcom/samsung/android/globalactions/util/ConditionChecker;


# instance fields
.field private final mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public isEnabled(Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->isCellularDataAllowed()Z

    move-result v1

    goto/16 :goto_0

    :cond_0
    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->isSettingsChangesAllowed()Z

    move-result v1

    goto/16 :goto_0

    :cond_1
    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->isPowerOffAllowed()Z

    move-result v1

    goto/16 :goto_0

    :cond_2
    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->isSafeModeAllowed()Z

    move-result v1

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getProkioskState()Z

    move-result v1

    goto/16 :goto_0

    :cond_4
    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->getPowerDialogCustomItemsState()Z

    move-result v1

    goto/16 :goto_0

    :cond_5
    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->isAllowedShowActions()Z

    move-result v1

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/CoverUtil;->isClearCoverClosed()Z

    move-result v1

    goto :goto_0

    :cond_7
    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/KioskModeWrapper;->isKioskMode()Z

    move-result v1

    goto :goto_0

    :cond_8
    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/StatusBarWrapper;->isStatusBarExpandDisabled()Z

    move-result v1

    goto :goto_0

    :cond_9
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-interface {v3, p1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v2, :cond_a

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v4, "SystemUIConditionChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v1
.end method
