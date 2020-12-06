.class public Lcom/android/systemui/bar/BarController;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bar/BarController$QSBarCallback;
    }
.end annotation


# static fields
.field public static final BAR_ITEM_TAG:Ljava/lang/String; = "BarItem"

.field private static final TAG:Ljava/lang/String; = "BarController"


# instance fields
.field private final BAR_ITEM_TYPE_QS:Ljava/lang/String;

.field private final BAR_ITEM_TYPE_SCROLLABLE:Ljava/lang/String;

.field private mBars:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/bar/BarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mExpandedFraction:F

.field private mHiddenExpandedBarsHeight:I

.field private mOnTopQSBarsHeight:I

.field protected mQSBarCallback:Lcom/android/systemui/bar/BarController$QSBarCallback;

.field private mQsDisabled:Z

.field private mQsPanel:Landroid/view/ViewGroup;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStackScroller:Landroid/view/ViewGroup;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QSBarItem"

    iput-object v0, p0, Lcom/android/systemui/bar/BarController;->BAR_ITEM_TYPE_QS:Ljava/lang/String;

    const-string v0, "ScrollableBarItem"

    iput-object v0, p0, Lcom/android/systemui/bar/BarController;->BAR_ITEM_TYPE_SCROLLABLE:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    iput-object p2, p0, Lcom/android/systemui/bar/BarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/BarController;->mStackScroller:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/bar/BarController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p1, p0, Lcom/android/systemui/bar/BarController;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/bar/BarController;->refreshBarList()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bar/BarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->calculateOnTopQSBarsHeight()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/bar/BarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->calculateHiddenExpandedBarsHeight()V

    return-void
.end method

.method private addAllBarItems(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "QSBarItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mStackScroller:Landroid/view/ViewGroup;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bar/BarItem;

    iget-object v3, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    if-ne v0, v3, :cond_2

    instance-of v3, v2, Lcom/android/systemui/bar/QSBarItem;

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/bar/BarController;->mStackScroller:Landroid/view/ViewGroup;

    if-ne v0, v3, :cond_7

    instance-of v3, v2, Lcom/android/systemui/bar/ScrollableBarItem;

    if-eqz v3, :cond_7

    :cond_3
    const-string v3, "BarController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/systemui/bar/BarItem;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0, p2}, Lcom/android/systemui/bar/BarItem;->inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    instance-of v4, v2, Lcom/android/systemui/bar/ScrollableBarItem;

    if-eqz v4, :cond_4

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/bar/ScrollableBarItem;

    invoke-virtual {v4, v0}, Lcom/android/systemui/bar/ScrollableBarItem;->getScrollableBarItemView(Landroid/view/ViewGroup;)Lcom/android/systemui/bar/ScrollableBarItemView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v3, v4

    :cond_4
    const-string v4, "BarItem"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    if-ne v0, v4, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const-string v5, "QSBarItem"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v5}, Lcom/android/systemui/bar/QSBarItem;->isShowingWhenExpanded()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->isKeyguardShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/bar/QSBarItem;

    iget v6, p0, Lcom/android/systemui/bar/BarController;->mStatusBarState:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/bar/QSBarItem;->setStatusBarState(I)V

    :cond_6
    move-object v5, v2

    check-cast v5, Lcom/android/systemui/bar/QSBarItem;

    iget v6, p0, Lcom/android/systemui/bar/BarController;->mExpandedFraction:F

    invoke-virtual {v5, v6}, Lcom/android/systemui/bar/QSBarItem;->setPosition(F)V

    :cond_7
    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method private calculateHiddenExpandedBarsHeight()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/bar/BarController;->mHiddenExpandedBarsHeight:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bar/BarItem;

    instance-of v3, v2, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v3}, Lcom/android/systemui/bar/QSBarItem;->isShowingWhenExpanded()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/bar/QSBarItem;->getBarHeight()I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/systemui/bar/BarController;->mHiddenExpandedBarsHeight:I

    return-void
.end method

.method private calculateOnTopQSBarsHeight()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/bar/BarController;->mOnTopQSBarsHeight:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bar/BarItem;

    instance-of v3, v2, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v3}, Lcom/android/systemui/bar/QSBarItem;->isOnTop()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/bar/QSBarItem;->getBarHeight()I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/systemui/bar/BarController;->mOnTopQSBarsHeight:I

    return-void
.end method

.method private createBarItem(Ljava/lang/String;)Lcom/android/systemui/bar/BarItem;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.systemui.bar."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Bar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "BarController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createBar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/bar/BarController;->mContext:Landroid/content/Context;

    aput-object v5, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bar/BarItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/bar/QSBarItem;

    new-instance v2, Lcom/android/systemui/bar/BarController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/bar/BarController$1;-><init>(Lcom/android/systemui/bar/BarController;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/bar/QSBarItem;->setQSCallback(Lcom/android/systemui/bar/QSBarItem$QSCallback;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bar/BarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bar/BarItem;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_1
    return-object v0
.end method

.method private isKeyguardShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLandscape()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/bar/BarController;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadBarSpecs(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeAllBarItems(Ljava/lang/String;)V
    .locals 4

    const-string v0, "QSBarItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mStackScroller:Landroid/view/ViewGroup;

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "BarItem"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move v1, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private replaceAllBarItems(Z)V
    .locals 1

    const-string v0, "QSBarItem"

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BarController;->removeAllBarItems(Ljava/lang/String;)V

    const-string v0, "QSBarItem"

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/BarController;->addAllBarItems(Ljava/lang/String;Z)V

    const-string v0, "ScrollableBarItem"

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BarController;->removeAllBarItems(Ljava/lang/String;)V

    const-string v0, "ScrollableBarItem"

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/BarController;->addAllBarItems(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateBarHeight()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->calculateOnTopQSBarsHeight()V

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->calculateHiddenExpandedBarsHeight()V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->updateBarHeight()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/bar/BarItem;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBarItem(Ljava/lang/String;)Lcom/android/systemui/bar/BarItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bar/BarItem;

    return-object v0
.end method

.method public getHiddenExpandedBarsHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/BarController;->mHiddenExpandedBarsHeight:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getOnTopQSBarsHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/BarController;->mOnTopQSBarsHeight:I

    :goto_0
    return v0
.end method

.method public getQSBarsTranslation()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/BarController;->mOnTopQSBarsHeight:I

    :goto_0
    return v0
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    instance-of v2, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v2, p1}, Lcom/android/systemui/bar/QSBarItem;->onColorChanged(Landroid/content/res/Configuration;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/bar/BarController;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/bar/BarController;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    instance-of v2, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bar/QSBarItem;

    iget v3, p0, Lcom/android/systemui/bar/BarController;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/bar/QSBarItem;->onOrientationChanged(I)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->updateBarHeight()V

    :cond_2
    return-void
.end method

.method public onPanelHeightUpdated(FI)V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_1

    int-to-float v0, p2

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, p1, v0

    int-to-float v4, p2

    sub-float/2addr v4, v0

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bar/BarItem;

    instance-of v4, v3, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v4, v1}, Lcom/android/systemui/bar/QSBarItem;->updateAlphaForAfterImages(F)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public onQsClosed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    invoke-virtual {v1}, Lcom/android/systemui/bar/BarItem;->onQsClosed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshBarList()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bar specs newValue :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/BarController;->loadBarSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "BarController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bar specs :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/bar/BarItem;

    if-nez v6, :cond_0

    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/systemui/bar/BarController;->createBarItem(Ljava/lang/String;)Lcom/android/systemui/bar/BarItem;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v8, "BarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error creating tile for spec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/systemui/bar/BarItem;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/bar/BarItem;->destroy()V

    :cond_2
    :goto_2
    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v4, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/bar/BarController;->replaceAllBarItems(Z)V

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->updateBarHeight()V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    instance-of v2, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v2, p1}, Lcom/android/systemui/bar/QSBarItem;->setListening(Z)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPosition(F)V
    .locals 4

    iput p1, p0, Lcom/android/systemui/bar/BarController;->mExpandedFraction:F

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    instance-of v2, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v2}, Lcom/android/systemui/bar/QSBarItem;->getAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/systemui/bar/QSBarItem;->setPosition(F)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQSBarCallback(Lcom/android/systemui/bar/BarController$QSBarCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/BarController;->mQSBarCallback:Lcom/android/systemui/bar/BarController$QSBarCallback;

    return-void
.end method

.method public setQSPanel(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "QSBarItem"

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BarController;->removeAllBarItems(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    const-string v0, "QSBarItem"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bar/BarController;->addAllBarItems(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->calculateOnTopQSBarsHeight()V

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->calculateHiddenExpandedBarsHeight()V

    const-string v0, "ScrollableBarItem"

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BarController;->removeAllBarItems(Ljava/lang/String;)V

    const-string v0, "ScrollableBarItem"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bar/BarController;->addAllBarItems(Ljava/lang/String;Z)V

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/bar/BarController;->mStatusBarState:I

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    instance-of v2, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v2, p1}, Lcom/android/systemui/bar/QSBarItem;->setStatusBarState(I)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method
