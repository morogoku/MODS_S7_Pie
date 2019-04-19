.class public Lcom/android/systemui/statusbar/phone/BlurController;
.super Ljava/lang/Object;
.source "BlurController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mBouncerShowing:Z

.field private mContext:Landroid/content/Context;

.field private mFloatingShortcutVisible:Z

.field private mHeightAnimationOverlapped:Z

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private mHeightAnimatorExpand:Z

.field private mIsBackDropViewDrawn:Z

.field private mIsCollapseAnimationTriggered:Z

.field private mMirrorVisible:Z

.field public mOldDimAmount:F

.field private mPanelFullyCollapsed:Z

.field private mPanelFullyExpanded:Z

.field private mQsAnimator:Landroid/animation/ValueAnimator;

.field private mQsAnimatorExpand:Z

.field private mStatusBarState:I

.field private mWallpaperTypeListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BlurController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BlurController$1;-><init>(Lcom/android/systemui/statusbar/phone/BlurController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mWallpaperTypeListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsBackDropViewDrawn:Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mWallpaperTypeListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v2, v2, [Landroid/net/Uri;

    const-string v4, "lockscreen_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/BlurController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsBackDropViewDrawn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/BlurController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsBackDropViewDrawn:Z

    return p1
.end method

.method private getInterpolatedFraction(F)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    mul-double/2addr v2, v0

    const-wide v0, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private optimizeBlurAmount(F)F
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mQsAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mQsAnimatorExpand:Z

    goto :goto_2

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mHeightAnimatorExpand:Z

    :goto_2
    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    if-eqz v2, :cond_4

    iget p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mStatusBarState:I

    if-eq p1, v1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsBackDropViewDrawn:Z

    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    move v5, p1

    if-nez v3, :cond_4

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsCollapseAnimationTriggered:Z

    :cond_4
    return v5
.end method


# virtual methods
.method public clearBlur()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlur(F)V

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyBlur(F)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "BlurController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mMirrorVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mMirrorVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mFloatingShortcutVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mFloatingShortcutVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mHeightAnimationOverlapped="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mHeightAnimationOverlapped:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mOldDimAmount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mOldDimAmount:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  mIsBackDropViewDrawn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsBackDropViewDrawn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public setAnimationOverlapped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mHeightAnimationOverlapped:Z

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mBouncerShowing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BlurController;->clearBlur()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mOldDimAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BlurController;->updateBlur(F)V

    :goto_0
    return-void
.end method

.method public setFullyCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mPanelFullyCollapsed:Z

    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mPanelFullyExpanded:Z

    return-void
.end method

.method public setHeightAnimator(Landroid/animation/ValueAnimator;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mHeightAnimatorExpand:Z

    return-void
.end method

.method public setQsAnimator(Landroid/animation/ValueAnimator;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mQsAnimator:Landroid/animation/ValueAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mQsAnimatorExpand:Z

    return-void
.end method

.method public updateBarState(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mStatusBarState:I

    return-void
.end method

.method public updateBlur(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsCollapseAnimationTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mPanelFullyExpanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mPanelFullyCollapsed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsCollapseAnimationTriggered:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mFloatingShortcutVisible:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mMirrorVisible:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsCollapseAnimationTriggered:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BlurController;->getInterpolatedFraction(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BlurController;->optimizeBlurAmount(F)F

    move-result v0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_2
    nop

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mOldDimAmount:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mStatusBarState:I

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mHeightAnimatorExpand:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mOldDimAmount:F

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_7

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mHeightAnimatorExpand:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mOldDimAmount:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_8

    :cond_7
    return-void

    :cond_8
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mStatusBarState:I

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mIsBackDropViewDrawn:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mFloatingShortcutVisible:Z

    if-nez v1, :cond_9

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlur(F)V

    goto :goto_3

    :cond_9
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyBlur(F)V

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mOldDimAmount:F

    return-void
.end method

.method public updateMirrorVisibility(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mirror visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mMirrorVisible:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BlurController;->updateBlur(F)V

    return-void
.end method

.method public updatefloatingShortcutVisibility(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FloatingShortcut visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurController;->mFloatingShortcutVisible:Z

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BlurController;->updateBlur(F)V

    return-void
.end method
