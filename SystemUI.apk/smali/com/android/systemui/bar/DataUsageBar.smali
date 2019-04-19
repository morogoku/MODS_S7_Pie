.class public Lcom/android/systemui/bar/DataUsageBar;
.super Lcom/android/systemui/bar/QSBarItem;
.source "DataUsageBar.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DataUsageBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DataUsageBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/bar/DataUsageBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    new-instance v0, Lcom/android/systemui/bar/DataUsageBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bar/DataUsageBar$1;-><init>(Lcom/android/systemui/bar/DataUsageBar;)V

    iput-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/bar/DataUsageBar;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/bar/DataUsageBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/DataUsageBar;->updateVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    return-object v0
.end method

.method private getBarVisibility()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/bar/DataUsageBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DataUsageBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBarVisibility activeSimCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private updateVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/bar/DataUsageBar;->getBarVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getBarHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bar/DataUsageBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hideShowingExpandedBar(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bar/DataUsageBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0133

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/DataUsageView;

    iput-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-direct {p0}, Lcom/android/systemui/bar/DataUsageBar;->updateVisibility()V

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DATAUSAGE:Z

    return v0
.end method

.method public isShowingWhenExpanded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0600c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/DataUsageView;->setTextColor(I)V

    :cond_0
    return-void
.end method
