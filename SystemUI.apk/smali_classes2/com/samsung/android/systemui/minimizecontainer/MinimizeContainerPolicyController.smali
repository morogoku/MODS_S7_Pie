.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;
.super Ljava/lang/Object;
.source "MinimizeContainerPolicyController.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

.field private mContext:Landroid/content/Context;

.field private mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

.field private mFullscreenModeRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideContainerViewRunnable:Ljava/lang/Runnable;

.field private mIsTrashBoxHiding:Z

.field private mIsTrashBoxShown:Z

.field private mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

.field private mState:I

.field private mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

.field private mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mState:I

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxShown:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxHiding:Z

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$MinimizeContainerPolicyController$9Gc-XgA2IX5XKvAR3GKgHzB5Rxw;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$MinimizeContainerPolicyController$9Gc-XgA2IX5XKvAR3GKgHzB5Rxw;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    const-string v0, "MinimizeContainer"

    const-string v1, "[PolicyController] create MinimizeContainerPolicyController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static containerStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "STATE_FOLDER"

    return-object v0

    :pswitch_1
    const-string v0, "STATE_POINTER"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method closeFullscreenMode(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PolicyController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist, close failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PolicyController] close FullscreenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MinimizeContainer"

    const-string v1, "[PolicyController] FullscreenMode Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->requestTransparentRegion(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method handleOutsideTouchFolderView(Landroid/view/MotionEvent;)V
    .locals 7

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getFolderBounds()Landroid/graphics/Rect;

    move-result-object v3

    float-to-int v4, v0

    float-to-int v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MinimizeContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PolicyController] onTouchEvent("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), close folder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->updateContainerState(IZ)V

    :cond_2
    nop

    :cond_3
    :goto_0
    return-void
.end method

.method hideTrashBox()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->hideTrashBox()V

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxHiding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxHiding:Z

    :cond_0
    return-void
.end method

.method hideWindow()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    if-eqz v0, :cond_3

    const-string v0, "MinimizeContainer"

    const-string v1, "[PolicyController] Hide Window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->updateContainerState(IZ)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updatePointerAppIconVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxShown:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->setTrashBoxShownState(Z)V

    const-string v0, "fullscreen_mode_request_trash_box"

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->closeFullscreenMode(Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->removeRunnables()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->clearAllAnimations()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method init(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxShown:Z

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mState:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iput-object p3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    iput-object p4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setVisibility(I)V

    return-void
.end method

.method isFolderCloseAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->isFolderCloseAnimating()Z

    move-result v0

    return v0
.end method

.method isFullscreenMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isInRemoveRange(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->isInRemoveRange(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method isPointerViewState()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTrashBoxHiding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxHiding:Z

    return v0
.end method

.method isTrashBoxShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxShown:Z

    return v0
.end method

.method notifyIconPositionChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->updateTrashBoxCoverState(Landroid/graphics/Rect;)V

    return-void
.end method

.method onKeyDown(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PolicyController] onKeyDown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), close folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->updateContainerState(IZ)V

    :cond_1
    return-void
.end method

.method openFullscreenMode(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PolicyController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already opened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PolicyController] open FullscreenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "MinimizeContainer"

    const-string v2, "[PolicyController] FullscreenMode Enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->requestTransparentRegion(Landroid/view/View;)V

    :cond_2
    return v1
.end method

.method setTrashBoxShownState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxShown:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxShown:Z

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxHiding:Z

    :cond_1
    return-void
.end method

.method showTrashBox(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->showTrashBox(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method showWindow()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    if-eqz v0, :cond_1

    const-string v0, "MinimizeContainer"

    const-string v1, "[PolicyController] Show Window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PolicyController] Show Window: remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->updateContainerState(IZ)V

    :cond_1
    return-void
.end method

.method throwTrashAway(Ljava/lang/Runnable;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->throwTrashAway(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxHiding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mIsTrashBoxHiding:Z

    :cond_0
    return-void
.end method

.method updateContainerState(IZ)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mState:I

    if-eq v0, p1, :cond_2

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PolicyController] updateContainerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->containerStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mState:I

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getFolderWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getFolderHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->getFolderPosition(II)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->setFolderPosition(Landroid/graphics/PointF;)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getFolderBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->animateToHidePointerAppIcon(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->enableBlurEffect(Z)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->setFocusable(Z)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v4, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->openFolder(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updatePointerAppIconVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->closeFolder(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->enableBlurEffect(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->setFocusable(Z)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->animateToShowPointerAppIcons()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->updateTouchableRegion()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
