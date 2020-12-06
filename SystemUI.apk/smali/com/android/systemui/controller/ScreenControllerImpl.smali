.class public Lcom/android/systemui/controller/ScreenControllerImpl;
.super Ljava/lang/Object;
.source "ScreenControllerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/ScreenController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;
    }
.end annotation


# instance fields
.field private final mInstrumentation:Landroid/app/Instrumentation;

.field private final mScreenCaptureHandler:Landroid/os/Handler;

.field private mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

.field private mTryCount:I

.field private mWinodwManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mInstrumentation:Landroid/app/Instrumentation;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenCaptureHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/controller/ScreenControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/controller/ScreenControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/systemui/controller/ScreenControllerImpl;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/controller/ScreenControllerImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/controller/ScreenControllerImpl;->hasUtteranceWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/controller/ScreenControllerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenCaptureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/controller/ScreenControllerImpl;Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    return-object p1
.end method

.method private hasUtteranceWindow()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    const-string v0, "ScreenControllerImpl"

    const-string v1, "mWMS was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->getVisibleWindowInfo()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    const-string v4, "com.samsung.android.bixby.agent/com.samsung.android.bixby.agent.mainui.lightweight.LightWeightWindow"

    iget-object v5, v3, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ScreenControllerImpl"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "ScreenControllerImpl"

    const-string v4, "Fail to check windows by RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    nop

    :goto_1
    return v1

    :cond_3
    const-string v0, "ScreenControllerImpl"

    const-string v2, "mWMS is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    new-instance v0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenCaptureHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "ScreenControllerImpl"

    const-string v1, "Another screenshot is doing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z
    .locals 8

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p3, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarController()Lcom/android/systemui/bar/BarController;

    move-result-object v1

    const-string v2, "Brightness"

    invoke-virtual {v1, v2}, Lcom/android/systemui/bar/BarController;->getBarItem(Ljava/lang/String;)Lcom/android/systemui/bar/BarItem;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BrightnessBar;

    invoke-virtual {v1}, Lcom/android/systemui/bar/BrightnessBar;->getToggleSlider()Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/settings/ToggleSlider;->getSlider()Landroid/widget/SeekBar;

    move-result-object v2

    const-string v3, "max"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMin()I

    move-result v3

    :goto_0
    goto :goto_3

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMin()I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMin()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int v3, v5, v6

    goto :goto_3

    :catch_0
    move-exception v3

    return v4

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result v5

    sub-int/2addr v3, v5

    :goto_2
    goto :goto_0

    :goto_3
    nop

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMin()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    if-ne v3, v5, :cond_5

    return v4

    :cond_5
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    const-string v6, "ScreenControllerImpl"

    const-string v7, "expand panel RemoteException "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_6
    :goto_4
    nop

    :goto_5
    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    return v5
.end method


# virtual methods
.method public SetDisplayBrightness(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    const-string v0, "ScreenControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetDisplayBrightness level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public goHomeScreen(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public makeDisplayBrighter(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    const-string v0, "ScreenControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDisplayBrighter level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public makeDisplayDarker(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    const-string v0, "ScreenControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDisplayDarker level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public pressBackKey(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method

.method public shareScreenShot(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ScreenControllerImpl"

    const-string/jumbo v1, "shareScreenShot."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public takeScreenShot(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ScreenControllerImpl"

    const-string/jumbo v1, "takeScreenShot."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
