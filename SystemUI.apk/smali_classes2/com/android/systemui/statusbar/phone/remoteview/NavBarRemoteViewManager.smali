.class public Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;
.super Ljava/lang/Object;
.source "NavBarRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mDarkIntensity:Ljava/lang/Float;

.field private mLeftContainer:Landroid/widget/LinearLayout;

.field mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;

.field private mRightContainer:Landroid/widget/LinearLayout;

.field mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

.field private mViewList:[Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/RuneWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/util/RuneWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    return-void
.end method

.method private applyRemoteIconTint(Landroid/view/View;)V
    .locals 5

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0601bf

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0601c0

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_1

    const v0, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_1
    const v0, 0x3f733333    # 0.95f

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private setRemoteViewContainerLayout(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, p2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateRemoteViewContainer(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public applyDarkIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public getDarkIntensity()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getLeftRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRightRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isLeftRemoteViewVisible(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarRemoteViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavigationBarShortcut() requestClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    aput-object v2, v1, v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;->updateContainer()V

    :cond_3
    return-void
.end method

.method public setRemoteViewCallback(Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarRemoteViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewCallback() is set up to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "not null"

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    return-void
.end method

.method public update(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->setRemoteViewContainerLayout(II)V

    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->updateRemoteViewContainer(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object v1

    :goto_1
    const/4 v2, 0x4

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->add(Landroid/widget/LinearLayout;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->add(Landroid/widget/LinearLayout;)V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method
