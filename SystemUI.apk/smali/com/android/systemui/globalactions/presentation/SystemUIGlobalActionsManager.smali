.class public Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;
.super Ljava/lang/Object;
.source "SystemUIGlobalActionsManager.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;


# instance fields
.field private final mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    return-void
.end method


# virtual methods
.method public isFOTAAvailableForGlobalActions()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->isFOTAAvailableForGlobalActions()Z

    move-result v0

    return v0
.end method

.method public onGlobalActionsHidden()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsHidden()V

    return-void
.end method

.method public onGlobalActionsShown()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsShown()V

    return-void
.end method

.method public reboot(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->shutdown()V

    return-void
.end method
