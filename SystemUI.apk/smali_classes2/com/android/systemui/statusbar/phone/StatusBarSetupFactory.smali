.class public Lcom/android/systemui/statusbar/phone/StatusBarSetupFactory;
.super Ljava/lang/Object;
.source "StatusBarSetupFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInitialInterfaces()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_INDICATOR_PLMN_LABEL:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarInstanceCountChecker;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getInstance()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarSettingInitialize;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSettingInitialize;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
