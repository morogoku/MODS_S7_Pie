.class public final Lcom/android/systemui/statusbar/PanelStateNotifier;
.super Ljava/lang/Object;
.source "PanelStateNotifier.java"


# static fields
.field private static mBarState:I

.field private static mPanelExpandState:Z

.field private static mState:I

.field private static mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private static mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    const/4 v1, -0x1

    sput v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    sput-boolean v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mPanelExpandState:Z

    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    sput-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isKeyguardState(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isShadeLockedState(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isShadeState(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$notify$0(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic lambda$notify$1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static notify(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static notify(Landroid/content/Context;IZ)V
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    sget v2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget v2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-string v0, "com.samsung.systemui.statusbar.ANIMATING"

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    const-string v0, "com.samsung.systemui.statusbar.EXPANDED"

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_9

    const-string v0, "com.samsung.systemui.statusbar.COLLAPSED"

    const/4 v1, 0x0

    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$zoswDy1IfKd3vgFX7d2mQKRFi6k;

    invoke-direct {v5, v3, p0}, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$zoswDy1IfKd3vgFX7d2mQKRFi6k;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    if-eq p1, v2, :cond_8

    sget-boolean v2, Lcom/android/systemui/Rune;->NOTI_SUPPORT_PANEL_STATE_NOTIFIER_FOR_KDDI:Z

    if-eqz v2, :cond_5

    sget v2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeState(I)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.kddi.agent.action.STATUS_BAR_CONDITION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$G6Xzp5RBamI1bR4xXPcFsNzOUiI;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$G6Xzp5RBamI1bR4xXPcFsNzOUiI;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v2, :cond_6

    const-string/jumbo v2, "sem_statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemStatusBarManager;

    sput-object v2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/SemStatusBarManager;->setPanelExpandState(Z)V

    :cond_7
    sput-boolean v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mPanelExpandState:Z

    :cond_8
    return-void

    :cond_9
    const-string v2, "PanelStateNotifier"

    const-string v3, "Invalid panel open state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setQsExpanded(Landroid/content/Context;Z)V
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    :cond_1
    return-void
.end method

.method public static setStatusBarState(Landroid/content/Context;I)V
    .locals 3

    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    :cond_2
    :goto_0
    return-void
.end method
