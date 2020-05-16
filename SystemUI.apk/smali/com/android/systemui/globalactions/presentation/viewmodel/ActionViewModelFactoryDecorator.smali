.class public Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;
.super Ljava/lang/Object;
.source "ActionViewModelFactoryDecorator.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field mDecoratedFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

.field mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field private final mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

.field mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mDecoratedFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    return-void
.end method


# virtual methods
.method public createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 12

    new-instance v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x47c42329

    if-eq v1, v2, :cond_2

    const v2, 0x1c824806

    if-eq v1, v2, :cond_1

    const v2, 0x7f650484

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "knox_custom"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "grace_bottom_icon"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "pro_kiosk"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mDecoratedFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    return-object v1

    :pswitch_0
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/GraceBottomIconActionViewModel;

    invoke-direct {v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/GraceBottomIconActionViewModel;-><init>()V

    const-string v2, "grace_bottom_icon"

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_PET_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    const-string v3, "device_ic_clover_view_cover"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_WHITE_THEME:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    const-string v3, "device_ic_white_theme_samsung"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    const-string v3, "device_ic_dark_theme_samsung"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    :goto_2
    invoke-interface {v1, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;-><init>(Landroid/content/Context;)V

    const-string v2, "knox_custom"

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_CUSTOM_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_2
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iget-object v9, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v11, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;-><init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/AlertDialogFactory;Lcom/samsung/android/globalactions/util/SystemController;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V

    const-string/jumbo v2, "pro_kiosk"

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_8P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_prokioskmode"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    invoke-interface {v1, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setState(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V

    return-object v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    return-void
.end method
