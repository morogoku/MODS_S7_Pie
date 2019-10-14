.class public Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;
.super Ljava/lang/Object;
.source "ImmersiveToolViewController.java"


# instance fields
.field private mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

.field private final mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

.field private mGestureViewInsetsChangedListener:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;

.field private mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

.field private final mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

.field private mRestartButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

.field private mRotateButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mDisplay:Landroid/view/Display;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mRotateButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mRestartButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    return-void
.end method

.method private removeGestureView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveToolViewController"

    const-string v2, "removeGestureView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->onRemove()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    :cond_0
    return-void
.end method

.method private removeTouchConsumingView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveToolViewController"

    const-string v2, "removeTouchConsumingView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    :cond_0
    return-void
.end method


# virtual methods
.method public getHintView(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->getKeyArea()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public hideGestureView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveToolViewController"

    const-string v2, "hideGestureView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->onRemove()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public hideTouchConsumingView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveToolViewController"

    const-string v2, "hideTouchConsumingView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;->updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeToolView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveToolViewController"

    const-string v2, "removeToolView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->removeTouchConsumingView()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->removeGestureView()V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->setDarkIntensity(F)V

    return-void
.end method

.method public setFloatingButtonVisibility(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->setFloatingButtonVisibility(IZ)V

    return-void
.end method

.method public setGestureHintVisiblity(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setGestureViewInsetsChangedListener(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureViewInsetsChangedListener:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->setInsetsChangedListener(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;)V

    :cond_0
    return-void
.end method

.method public showGestureView()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveToolViewController"

    const-string v2, "showGestureView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->removeTouchConsumingView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mRotateButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mRestartButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureViewInsetsChangedListener:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->setInsetsChangedListener(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->onAttach()V

    return-void
.end method

.method public showTouchConsumingView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveToolViewController"

    const-string v2, "showTouchConsumingView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;->updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;->updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public updateGestureView(Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveToolViewController"

    const-string v2, "updateGestureView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->update(Ljava/util/List;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mGestureView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateTouchConsumingView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "ImmersiveToolViewController"

    const-string v2, "updateTouchConsumingView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mProvider:Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;->updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->mConsumingView:Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
