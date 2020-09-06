.class Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WelcomeActivityListener"
.end annotation


# instance fields
.field private mPresentationShown:Z

.field private mShown:Z

.field private mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissPresentation(ZZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZII)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    return-void
.end method

.method private handleOnDismiss()V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    invoke-direct {p0, v0, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissPresentation(ZZ)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    if-nez v2, :cond_33

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v2

    invoke-direct {p0, v2, v4, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    :cond_33
    return-void
.end method

.method private handleOnShow()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissPresentation(ZZ)V

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v2

    const/16 v4, 0xa

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    :cond_31
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DesktopModeService;->cancelOngoingNotification()V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v2, v3}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method

.method public static synthetic lambda$cFdXMS5aTWTHWKPbEF4PVGsMdS8(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->handleOnDismiss()V

    return-void
.end method

.method public static synthetic lambda$fJAJLJbrS3gRZioWaDFMvZ0t4BA(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->handleOnShow()V

    return-void
.end method

.method private setDesktopModeState(ZII)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object v0

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v0

    :goto_13
    invoke-virtual {v0, p2, p3}, Lcom/android/server/desktopmode/ModeChanger;->setDesktopModeState(II)V

    return-void
.end method

.method private showOrDismissPresentation(ZZ)V
    .registers 7

    const/16 v0, 0x6f

    const/16 v1, 0x67

    if-eqz p1, :cond_3b

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    if-nez v2, :cond_3b

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_18

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "showing external presentation"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;
    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$4400(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/desktopmode/UiManager;->showPresentation(II)V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_6f

    if-eqz p2, :cond_6f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;
    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$4500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6f

    :cond_3b
    if-nez p1, :cond_6f

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    if-eqz v2, :cond_6f

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_4f

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dismissing external presentation"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;
    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$4400(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/desktopmode/UiManager;->dismissPresentation(II)V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_6f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;
    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$4500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6f
    :goto_6f
    return-void
.end method


# virtual methods
.method onClickButtonPositive()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3700(Lcom/android/server/desktopmode/DesktopModeService;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "hdmi_initial_connection_dialog_shown"

    invoke-static {v1, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_22
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "pogo_initial_connection_dialog_shown"

    invoke-static {v1, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_34
    return-void
.end method

.method onDismiss()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$4600(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$WelcomeActivityListener$cFdXMS5aTWTHWKPbEF4PVGsMdS8;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$WelcomeActivityListener$cFdXMS5aTWTHWKPbEF4PVGsMdS8;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onShow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$4600(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$WelcomeActivityListener$fJAJLJbrS3gRZioWaDFMvZ0t4BA;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$WelcomeActivityListener$fJAJLJbrS3gRZioWaDFMvZ0t4BA;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
