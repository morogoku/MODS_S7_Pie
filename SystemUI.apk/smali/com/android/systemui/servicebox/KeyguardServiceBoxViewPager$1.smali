.class Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxViewPager.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateClockPositionFraction(IF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-ne p1, v3, :cond_2

    sub-float v0, v2, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p2

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->updateClockPageLocation(F)V

    :cond_4
    return-void
.end method


# virtual methods
.method isFirstPageLocated(IF)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$200(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_0

    cmpl-float v0, p2, v2

    if-nez v0, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    cmpl-float v0, p2, v2

    if-nez v0, :cond_2

    move v1, v3

    nop

    :cond_2
    return v1
.end method

.method isLastPageLocated(IF)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$200(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-ne p1, v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$102(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;I)I

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->isFirstPageLocated(IF)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    const-string v0, "KeyguardServiceBoxViewPager"

    const-string/jumbo v1, "onPageScrolled() move to last page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->isLastPageLocated(IF)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    const-string v0, "KeyguardServiceBoxViewPager"

    const-string/jumbo v1, "onPageScrolled() move to first page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->mScrollState:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->playOwnerInfoAnimation(F)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->updateClockPositionFraction(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->onPageSelected(Ljava/lang/String;)V

    :cond_1
    const-string v1, "KeyguardServiceBoxViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageSelected() packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
