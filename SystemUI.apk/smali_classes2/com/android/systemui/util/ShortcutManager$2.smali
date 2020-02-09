.class Lcom/android/systemui/util/ShortcutManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKidsModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$100(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v2}, Lcom/android/systemui/util/ShortcutManager;->access$200(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/util/ShortcutManager;->access$102(Lcom/android/systemui/util/ShortcutManager;Z)Z

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/util/ShortcutManager;->access$100(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    :cond_1
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    return-void
.end method
