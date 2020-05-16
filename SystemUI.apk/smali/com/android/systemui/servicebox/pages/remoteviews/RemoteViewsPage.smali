.class public Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "RemoteViewsPage.java"


# instance fields
.field private mIsAttachReserved:Z

.field private mIsViewAttached:Z

.field private mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

.field private mLastUpdateTime:J

.field private mRemoteViewHolder:Landroid/widget/FrameLayout;

.field private mRestrictedHolderSmallHeight:I

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsViewAttached:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAttachReserved:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/-$$Lambda$f_MjdUR8CcbefMrYcAi1ieEb9w4;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/remoteviews/-$$Lambda$f_MjdUR8CcbefMrYcAi1ieEb9w4;-><init>(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    return-void
.end method

.method private cancelUpdateMsg()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getMainHandler()Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initContentView(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->initTransitionName(Landroid/view/View;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->initPadding(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->isBigView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->hasBigView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/-$$Lambda$RemoteViewsPage$0aOaTExdPIiA4dE2kGrifQCemrU;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/remoteviews/-$$Lambda$RemoteViewsPage$0aOaTExdPIiA4dE2kGrifQCemrU;-><init>(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initPadding(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mNavigationBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mNavigationBarHeight:I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method private initTransitionName(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    nop

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isSameBigAndSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "remoteviews_page_small"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "remoteviews_page_big"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "remoteviews_page_small"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$initContentView$0(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->showServiceBox()V

    return-void
.end method

.method private sendUpdateMessage(J)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->cancelUpdateMsg()V

    invoke-static {}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getMainHandler()Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$InternalHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected getContentsView(I)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mPageType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->getView(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->initContentView(Landroid/view/View;I)V

    return-object v0

    :cond_3
    :goto_1
    const-string v3, "RemoteViewsPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v5, v5, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setTransitionType(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateMoveOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method public hasOwnBigPage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->hasOwnBigPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsViewAttached:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAttachReserved:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAttachReserved:Z

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->updateRemoteViews()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsViewAttached:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    const v0, 0x7f0a04f9

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->isBigView()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "RemoteViewsPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMeasure() height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", small max = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mPageType:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    if-le v2, v4, :cond_1

    iget v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    :cond_1
    const-string v4, "RemoteViewsPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMeasure() final height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method public refreshViews(I)V
    .locals 0

    return-void
.end method

.method public setItem(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    return-void
.end method

.method public updateRemoteViews()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string v2, "RemoteViewsPage"

    const-string/jumbo v3, "updateRemoteViews() return : not reached the next update time yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    sub-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->sendUpdateMessage(J)V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAnimating:Z

    if-eqz v2, :cond_1

    const-string v2, "RemoteViewsPage"

    const-string/jumbo v3, "updateRemoteViews() return : animation is in progress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x14d

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->sendUpdateMessage(J)V

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsViewAttached:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAttachReserved:Z

    const-string v2, "RemoteViewsPage"

    const-string/jumbo v3, "updateRemoteViews() return : view is not showing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->cancelUpdateMsg()V

    const-string v2, "RemoteViewsPage"

    const-string/jumbo v3, "updateRemoteViews()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
