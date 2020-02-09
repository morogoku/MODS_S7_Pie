.class public Lcom/android/systemui/stackdivider/Divider;
.super Lcom/android/systemui/SystemUI;
.source "Divider.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;,
        Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;,
        Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;,
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;
    }
.end annotation


# instance fields
.field private mAdjustedForIme:Z

.field private mBackgroundColor:I

.field private mDefaultDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

.field private mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

.field private final mDividerState:Lcom/android/systemui/stackdivider/DividerState;

.field private mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private mFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

.field private mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

.field private mHomeStackResizable:Z

.field private mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;

.field private mMinimized:Z

.field private mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

.field private mUserId:I

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/stackdivider/DividerState;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    iput v0, p0, Lcom/android/systemui/stackdivider/Divider;->mUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/stackdivider/Divider;ZJZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/stackdivider/Divider;Landroid/app/ActivityManager$StackInfo;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/stackdivider/Divider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->updateKnoxBadgeView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/stackdivider/Divider;)Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    return-void
.end method

.method private addDivider(Landroid/content/res/Configuration;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    move v1, v2

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->add(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->setMultiStarManager(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V

    iget v4, p0, Lcom/android/systemui/stackdivider/Divider;->mBackgroundColor:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/stackdivider/Divider;->setFocusedFrameBackgroundColor(I)V

    return-void
.end method

.method private notifyDockedStackExistsChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$3;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerKnoxBadgeReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;-><init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$1;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private removeDivider()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->onDividerRemoved()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->remove()V

    return-void
.end method

.method private update(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->addDivider(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;->update(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->updateKnoxBadgeView(I)V

    return-void
.end method

.method private updateKnoxBadgeView(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mUserId:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$4;-><init>(Lcom/android/systemui/stackdivider/Divider;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateMinimizedDockedStack(ZJZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v7, Lcom/android/systemui/stackdivider/Divider$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/stackdivider/Divider$2;-><init>(Lcom/android/systemui/stackdivider/Divider;ZZJ)V

    invoke-virtual {v0, v7}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTouchable()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchable(Z)V

    return-void
.end method

.method private updateVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$1;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;->appTransitionCancelledOrFinished()V

    :cond_0
    return-void
.end method

.method public appTransitionFinished()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;->appTransitionCancelledOrFinished()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "  mVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mMinimized="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mAdjustedForIme="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getSideSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method public isHomeStackResizable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return v0
.end method

.method public isMinimized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->onRecentsDrawn()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setDividerCloseController(Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;->unregister()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDefaultDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;->register()V

    return-void
.end method

.method public setFocusedFrameBackgroundColor(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mBackgroundColor:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget v1, p0, Lcom/android/systemui/stackdivider/Divider;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setFocusedFrameBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public showSnapWindowGuideView(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->showSnapWindowGuideView(ILjava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 4

    new-instance v0, Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    new-instance v0, Lcom/android/systemui/stackdivider/DividerCloseController;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerCloseController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;-><init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDefaultDividerCloseController:Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/Divider;->mBackgroundColor:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/stackdivider/Divider;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    new-instance v1, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$1;)V

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$1;)V

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->registerKnoxBadgeReceiver()V

    return-void
.end method
