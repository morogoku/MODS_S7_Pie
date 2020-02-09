.class public Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;
.super Ljava/lang/Object;
.source "HomeButtonAnimation.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field mHomeAnimRunning:Z

.field mHomeButton:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

.field mPrevCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mHomeAnimRunning:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mHomeButton:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mPrevCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mFrames:Ljava/util/List;

    return-void
.end method

.method private getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    return-object v0
.end method

.method public static synthetic lambda$play$0(Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mHomeButton:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method private play(Z)V
    .locals 8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->removeCallbacks()V

    const-wide/16 v0, 0x1e

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    rsub-int/lit8 v3, v2, 0x9

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mPrevCallbacks:Ljava/util/List;

    new-instance v5, Lcom/android/systemui/statusbar/phone/animation/-$$Lambda$HomeButtonAnimation$2a-QQnCJ6DPKgwv7gLcr6j5jqjE;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/statusbar/phone/animation/-$$Lambda$HomeButtonAnimation$2a-QQnCJ6DPKgwv7gLcr6j5jqjE;-><init>(Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mPrevCallbacks:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    add-int/lit8 v6, v2, 0x1

    int-to-long v6, v6

    mul-long/2addr v6, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mHomeButton:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mHomeAnimRunning:Z

    return-void
.end method

.method private removeCallbacks()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mPrevCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mPrevCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mPrevCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public isHomeAnimRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mHomeAnimRunning:Z

    return v0
.end method

.method public playDown()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->play(Z)V

    return-void
.end method

.method public playUp()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->play(Z)V

    return-void
.end method

.method public setAnimation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/animation/HomeButtonAnimation;->mFrames:Ljava/util/List;

    return-void
.end method
