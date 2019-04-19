.class public Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;
.super Ljava/lang/Object;
.source "SecStatusBarIconBugDetector.java"


# instance fields
.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIconView:Landroid/view/View;

.field private mIsAttachedListener:Z

.field private mIsPhoneStatusBarViewChild:Z

.field private mSlot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIsPhoneStatusBarViewChild:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIsAttachedListener:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->recursiveIsLayoutRequested(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->recursiveRequestLayout(Landroid/view/View;)V

    return-void
.end method

.method private debugTest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isPhoneStatusBarViewChild(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/view/ViewRootImpl;

    if-nez v2, :cond_2

    instance-of v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->isPhoneStatusBarViewChild(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_2
    return v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->debugTest()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecStatusBarIconBugDetector_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private recursiveIsLayoutRequested(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    # recursiveIsLayoutRequested(), isLayoutRequested:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->printLog(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1

    const-string v1, "    # recursiveIsLayoutRequested( END ) << parent is ViewRootImpl"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->printLog(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->recursiveIsLayoutRequested(Landroid/view/View;)V

    return-void
.end method

.method private recursiveRequestLayout(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->recursiveRequestLayout(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addOnGlobalLayoutListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIsAttachedListener:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIsAttachedListener:Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->isPhoneStatusBarViewChild(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIsPhoneStatusBarViewChild:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIsPhoneStatusBarViewChild:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;-><init>(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mSlot:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public removeOnGlobalLayoutListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIsAttachedListener:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIsAttachedListener:Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public requestLayoutToFixLayoutBugFromExternal()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->recursiveIsLayoutRequested(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->mIconView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->recursiveRequestLayout(Landroid/view/View;)V

    return-void
.end method
