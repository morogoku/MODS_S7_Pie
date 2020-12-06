.class public Lcom/android/systemui/noticenter/NotiCenterPlugin;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsNotiCenterConnected:Z

.field private mNotiCenterCallback:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

.field public mNotiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

.field private mPagingTouchSlop:F

.field private mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

.field private mShowNotilusOnKeyguard:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$1;-><init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;)V

    iput-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mNotiCenterCallback:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;-><init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;Lcom/android/systemui/noticenter/NotiCenterPlugin;)V

    iput-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mNotiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/noticenter/NotiCenterPlugin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mShowNotilusOnKeyguard:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/noticenter/NotiCenterPlugin;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mNotiCenterCallback:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/noticenter/NotiCenterPlugin;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPagingTouchSlop:F

    return p1
.end method

.method public static getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;
    .locals 1

    const-class v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    return-object v0
.end method


# virtual methods
.method public enterKeyguard()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->enterKeyguard()V

    :cond_0
    return-void
.end method

.method public getListener()Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mNotiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    return-object v0
.end method

.method public getPlugin()Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    return-object v0
.end method

.method public isNotiCenterConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mIsNotiCenterConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowNotilusOnKeyguard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mIsNotiCenterConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mShowNotilusOnKeyguard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIsNotiCenterConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mIsNotiCenterConnected:Z

    return-void
.end method

.method public setPlugin(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public unLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->unLock()V

    :cond_0
    return-void
.end method
