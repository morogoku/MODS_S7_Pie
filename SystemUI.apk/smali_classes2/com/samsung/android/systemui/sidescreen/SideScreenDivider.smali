.class public Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;
.super Ljava/lang/Object;
.source "SideScreenDivider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;,
        Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$BypassMotionEventInjector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBypassEventInjector:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$BypassMotionEventInjector;

.field private final mContext:Landroid/content/Context;

.field final mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

.field final mDisplayInfo:Landroid/view/DisplayInfo;

.field private mDockSide:I

.field private mFlingGestureThreshold:[I

.field private mHandler:Landroid/os/Handler;

.field private mLastFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

.field private mLidOpened:Z

.field private mMinimized:Z

.field private mMode:I

.field private final mNotSupportedReason:[I

.field private mRestoreEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mShowSideScreen:Ljava/lang/Runnable;

.field private mSideScreenDividerSize:I

.field private mTouchInterceptView:Landroid/widget/FrameLayout;

.field mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

.field private mVisible:Z

.field final mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->DEBUG:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mNotSupportedReason:[I

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->allowToTouch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mFlingGestureThreshold:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->onDetecting(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->bypassEvent(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mShowSideScreen:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->restoreTouchData()V

    return-void
.end method

.method private addView()V
    .locals 11

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMode:I

    const v1, 0x7f0d0203

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0204

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setAlpha(F)V

    nop

    :goto_0
    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mSideScreenDividerSize:I

    move v7, v4

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    if-eqz v0, :cond_2

    :goto_3
    move v8, v3

    goto :goto_4

    :cond_2
    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mSideScreenDividerSize:I

    goto :goto_3

    :goto_4
    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v3, p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setController(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onSideScreenDockSideChanged(I)V

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLastFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLastFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    invoke-virtual {v3, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget-boolean v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMinimized:Z

    invoke-virtual {v3, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onSideScreenMinimizedChanged(Z)V

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/16 v9, 0xa35

    const-string v10, "SideScreenDivider"

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->addDivider(Landroid/view/View;IIILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    iget-object v3, v3, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDefaultDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mFlingGestureThreshold:[I

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mSideScreenDividerSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mFlingGestureThreshold:[I

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    sget v4, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_GESTURE_SIZE:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mTouchInterceptView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mTouchInterceptView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mTouchInterceptView:Landroid/widget/FrameLayout;

    const-string v3, "SideScreenDividerTouchIntercept"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->addTouchInterceptWindow(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private allowToTouch()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLidOpened:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->isSideScreenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private bypassEvent(Landroid/view/MotionEvent;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$u5OIXY-Itk9dNIlv71CFzZviq0Y;

    invoke-direct {v2, p0, p2, v0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$u5OIXY-Itk9dNIlv71CFzZviq0Y;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;ZLandroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->restoreTouchData()V

    return-void
.end method

.method private hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->removeView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    :cond_0
    return-void
.end method

.method private isUserSetupComplete()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUserSetupComplete()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$bypassEvent$2(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;ZLandroid/view/MotionEvent;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const-string v0, "SideScreenDivider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bypassEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$onDetecting$3(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "SideScreenDivider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetecting - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$restoreTouchData$1(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "SideScreenDivider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreTouchData - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mBypassEventInjector:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$BypassMotionEventInjector;

    invoke-virtual {v2, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$BypassMotionEventInjector;->byPassRawEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private onDetecting(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$AZP7rcgIt41X8wQ7qpWATHMQ6Wg;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$AZP7rcgIt41X8wQ7qpWATHMQ6Wg;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setController(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    return-void
.end method

.method private restoreTouchData()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$ujJfDgWI8KRllxLxV8T7AuwhpcU;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$ujJfDgWI8KRllxLxV8T7AuwhpcU;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private show()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SIDE_SCREEN_SHOW_DIVIDER:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->addView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    :cond_1
    return-void
.end method


# virtual methods
.method isSideScreenVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    iget-boolean v0, v0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSideScreenVisible:Z

    return v0
.end method

.method onLidStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLidOpened:Z

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->updateVisibilityIfNeeded()V

    return-void
.end method

.method onSideScreenDockSideChanged(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->removeView()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->addView()V

    :cond_0
    return-void
.end method

.method public onSideScreenMinimizedChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMinimized:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMinimized:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onSideScreenMinimizedChanged(Z)V

    :cond_0
    return-void
.end method

.method onSideScreenModeChanged(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMode:I

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->removeView()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->addView()V

    :cond_0
    return-void
.end method

.method setTouchable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->isSideScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->setTouchable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method setTouchableInterceptView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mTouchInterceptView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mTouchInterceptView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->setTouchable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method updateVisibilityIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLidOpened:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->show()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->hide()V

    :goto_0
    return-void
.end method
