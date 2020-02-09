.class public Lcom/android/systemui/util/DesktopManager;
.super Ljava/lang/Object;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/DesktopManager$Callback;
    }
.end annotation


# static fields
.field private static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/DesktopManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

.field private mDesktopMode:I

.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private final mDesktopSettingsObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIDesktopCallback:Lcom/android/internal/desktop/IDesktopBarCallback;

.field private mIsTouchpadEnabled:Z

.field private mLock:Ljava/lang/Object;

.field private mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/DesktopManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c6

    iput v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/util/DesktopManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DesktopManager$1;-><init>(Lcom/android/systemui/util/DesktopManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/systemui/util/DesktopManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/DesktopManager$2;-><init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/util/DesktopManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DesktopManager$3;-><init>(Lcom/android/systemui/util/DesktopManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mIDesktopCallback:Lcom/android/internal/desktop/IDesktopBarCallback;

    new-instance v0, Lcom/android/systemui/util/DesktopManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DesktopManager$4;-><init>(Lcom/android/systemui/util/DesktopManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/DesktopManager$5;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/DesktopManager$5;-><init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/DesktopManager;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBarCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mIDesktopCallback:Lcom/android/internal/desktop/IDesktopBarCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/util/DesktopManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/util/DesktopManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->handleNotifyDismissKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->controlDesktopSettingsObserver(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/systemui/util/DesktopManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/DesktopManager;->mIsTouchpadEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/util/DesktopManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/DesktopManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->handleNotifyLockout()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/util/DesktopManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->handleIBRunningStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/util/DesktopManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->handleIrisRunningStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/util/DesktopManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->handleFaceRunningStateChanged(Z)V

    return-void
.end method

.method private controlDesktopSettingsObserver(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/util/DesktopManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getCallers()Ljava/lang/String;
    .locals 2

    const-string v0, " "

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/util/DesktopManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const-string v3, "getSettings"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DesktopManager"

    const-string v3, "Failed to get settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p2
.end method

.method private handleFaceRunningStateChanged(Z)V
    .locals 3

    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFaceRunningStateChanged-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onFaceRunningStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleIBRunningStateChanged(Z)V
    .locals 3

    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIBRunningStateChanged-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onIBRunningStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleIrisRunningStateChanged(Z)V
    .locals 3

    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIrisRunningStateChanged-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onIrisRunningStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleNotifyDismissKeyguard()Z
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "handleNotifyDismissKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager$Callback;->onDismissKeyguard()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onNotifyDismissKeyguard()Z

    move-result v0

    return v0
.end method

.method private handleNotifyLockout()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "handleNotifyLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager$Callback;->onLockout()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x28

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v2

    if-ne v2, v1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    :cond_5
    :goto_0
    return-void
.end method

.method private startSystemUIDesktopService()V
    .locals 5

    const-string v0, "DesktopManager"

    const-string v1, "startSystemUIDesktopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DesktopManager"

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->getCallers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.desktopsystemui"

    const-string v3, "com.samsung.desktopsystemui.SystemUIDesktopService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v4, 0x2000001

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private stopSystemUIDesktopService()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "stopSystemUIDesktopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DesktopManager"

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->getCallers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method private updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    const/16 v0, 0x2c6

    iput v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x2c8

    iput v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x2c7

    iput v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isDesktopBarConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDesktopMode()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    const/16 v1, 0x2c6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDualView()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    const/16 v1, 0x2c8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandalone()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    const/16 v1, 0x2c7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchpadEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/DesktopManager;->mIsTouchpadEnabled:Z

    return v0
.end method

.method public notifyBiometricLockoutChanged(ZI)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyBiometricLockoutChanged-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyBiometricLockoutChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyDismissKeyguard()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "notifyDismissKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0}, Lcom/android/internal/desktop/IDesktopBar;->notifyDismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyFaceAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFaceAuthenticationError-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFaceAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyFaceAuthenticationRunningStateChange(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFaceAuthenticationRunningStateChange-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyFaceAuthenticationRunningStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DesktopManager"

    const-string v2, "notifyFaceAuthenticationRunningStateChange failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyIBAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIBAuthenticationError-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyIBAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyIBRunningStateChange(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nnotifyIBRunningStateChange-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyIBRunningStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DesktopManager"

    const-string v2, "notifyIBRunningStateChange failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyIrisAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIrisAuthenticationError-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyIrisAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyIrisRunningStateChange(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIrisRunningStateChange-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyIrisRunningStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DesktopManager"

    const-string v2, "Face failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyKeyguardLockout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "notifyKeyguardLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0}, Lcom/android/internal/desktop/IDesktopBar;->notifyLockout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyRemoteLockState(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRemoteLockState-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyRemoteLockState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public notifySimStateInfo(III)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySimStateInfo-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/desktop/IDesktopBar;->notifySimStateInfo(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public notifySimStateInitInfo(IIIZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySimStateInitInfo-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/desktop/IDesktopBar;->notifySimStateInitInfo(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startExitKeyguardAnimationIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "startExitKeyguardAnimationIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {v0}, Lcom/android/internal/desktop/IDesktopBar;->startKeyguardExitAnimationIfNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
