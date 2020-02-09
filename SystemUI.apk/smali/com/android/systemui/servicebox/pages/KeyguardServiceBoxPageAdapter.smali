.class public Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "KeyguardServiceBoxPageAdapter.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field private final mPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceBoxItemMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedHashMap;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/KeyguardPageItem;",
            ">;",
            "Lcom/android/systemui/servicebox/KeyguardServiceBoxController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-void
.end method

.method private getItem(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-ne v0, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$dump$11(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p0, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, "  }"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPeekTouchEvent$10(Landroid/view/MotionEvent;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onPeekTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic lambda$onSettingsChanged$9(Landroid/net/Uri;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onSettingsChanged(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic lambda$refreshViews$0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$refreshViews$1(Ljava/lang/String;)V
    .locals 4

    const-string v0, "KeyguardServiceBoxPageAdapter"

    const-string/jumbo v1, "viewName : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$refreshViews$2(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$s_2dQsk_dbVr6E4CAqfP9i3-Dlw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$s_2dQsk_dbVr6E4CAqfP9i3-Dlw;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$NTDln8WqL8f9FKCk1SX8Y2ilDlQ;->INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$NTDln8WqL8f9FKCk1SX8Y2ilDlQ;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$refreshViews$3(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;ILcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 4

    new-instance v0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$AZgCoYPncEA5RFi6IBobjI3Xo7U;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$AZgCoYPncEA5RFi6IBobjI3Xo7U;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->runInDebugLevelMidOnly(Ljava/lang/Runnable;)V

    const-string v0, "KeyguardServiceBoxPageAdapter"

    const-string/jumbo v1, "refreshViews#start"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews(I)V

    const-string v0, "KeyguardServiceBoxPageAdapter"

    const-string/jumbo v1, "refreshViews#end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setMobileKeyboardState$8(ZLcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V

    return-void
.end method

.method static synthetic lambda$setPageType$7(ILcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    return-void
.end method

.method static synthetic lambda$updateGravity$6(ILcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->updateGravity(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$c0VB4YxCHOS1PDaunwGzyoiFhaU;

    invoke-direct {v1, p2, p1, p3}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$c0VB4YxCHOS1PDaunwGzyoiFhaU;-><init>(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public getCacheData(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    move v2, v0

    nop

    :cond_0
    return v2

    :cond_1
    goto :goto_0

    :cond_2
    return v2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-gt v3, p2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemMap:Ljava/util/LinkedHashMap;

    const-string/jumbo v4, "servicebox_clock"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    const-string v3, "clone_clock"

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mCircularCloneView:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->getItem(I)Ljava/util/Map$Entry;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews()V

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onRefreshCarrierInfo()V

    return-object v0

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "page view is null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLockModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$kt6Mk9sFqQKPgP23uTbfsDQiwKw;->INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$kt6Mk9sFqQKPgP23uTbfsDQiwKw;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$nYrYWW9F9PA08xdLeVJVlaauxMM;->INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$nYrYWW9F9PA08xdLeVJVlaauxMM;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$bl5139CYPJHL7djhKIxQNVmfZ4g;->INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$bl5139CYPJHL7djhKIxQNVmfZ4g;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPeekTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$fO3TfSsthxK9rv-_vkh7R_cR7R4;

    invoke-direct {v1, p1}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$fO3TfSsthxK9rv-_vkh7R_cR7R4;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$_F4SwnVRAqvvZoj6pSQgDRz-eUA;->INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$_F4SwnVRAqvvZoj6pSQgDRz-eUA;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$d7aO_M0XUbbvPJVbKJxH3koXrKc;

    invoke-direct {v1, p1}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$d7aO_M0XUbbvPJVbKJxH3koXrKc;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onUpdateLockscreenHiddenItems()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$SxUkPOWifsCInaKWKtiioQIkx1E;->INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$SxUkPOWifsCInaKWKtiioQIkx1E;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public refreshViews(I)V
    .locals 5

    const-string v0, "KeyguardServiceBoxPageAdapter"

    const-string v1, "mPages.size() %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$cRFHTIwxdD1H7IiwKmMRVSZ-1mw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$cRFHTIwxdD1H7IiwKmMRVSZ-1mw;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeCacheData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$bgPyk9oHeZpavro3Tkhi6mX43WA;

    invoke-direct {v1, p1}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$bgPyk9oHeZpavro3Tkhi6mX43WA;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setPageType(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$h4GjwWJI1gzPfEEJTU9V89eGstE;

    invoke-direct {v1, p1}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$h4GjwWJI1gzPfEEJTU9V89eGstE;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateGravity(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$s1HfVe1QSINYGLgCRc1f1AeLqjg;

    invoke-direct {v1, p1}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$s1HfVe1QSINYGLgCRc1f1AeLqjg;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updatePageItem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public verifyCurrentClockType()Z
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    const-string/jumbo v4, "servicebox_clock"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPages:Ljava/util/Map;

    const-string v5, "clone_clock"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    aput-object v3, v2, v1

    aget-object v3, v2, v4

    if-eqz v3, :cond_1

    aget-object v3, v2, v4

    goto :goto_0

    :cond_1
    aget-object v3, v2, v1

    :goto_0
    if-nez v3, :cond_2

    const-string v0, "KeyguardServiceBoxPageAdapter"

    const-string/jumbo v1, "verifyCurrentClockType() no clock pages"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_2
    new-instance v5, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;

    invoke-direct {v5}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;-><init>()V

    invoke-virtual {v3, v5, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->runDetermineClockType(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;Z)V

    array-length v6, v2

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v2, v7

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getCurrentClockType()I

    move-result v9

    iget v10, v5, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->clockType:I

    if-eq v9, v10, :cond_3

    const-string v6, "KeyguardServiceBoxPageAdapter"

    const-string/jumbo v7, "verifyCurrentClockType() wrong clock type found: %d %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getCurrentClockType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v4

    iget v9, v5, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$ClockTypeResult;->clockType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v1

    invoke-static {v6, v7, v0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method
