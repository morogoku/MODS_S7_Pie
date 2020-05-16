.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PhoneStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutBugDetector"
.end annotation


# instance fields
.field private BUG_VIEW_LOG_LINE_NUMBER:I

.field private mBugViewLine:Ljava/lang/StringBuilder;

.field private mBugViewLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBugViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckRunnable:Ljava/lang/Runnable;

.field private mIsKeyguardShowing:Z

.field private mParent:Landroid/view/ViewGroup;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mIsKeyguardShowing:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mCheckRunnable:Ljava/lang/Runnable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewLine:Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewLines:Ljava/util/ArrayList;

    const/16 p1, 0x12c

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->BUG_VIEW_LOG_LINE_NUMBER:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->checkLayoutBug()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->getAndSaveBugViewLog(Landroid/view/View;)V

    return-void
.end method

.method private checkLayoutBug()Z
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getClockView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move v0, v4

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->getNotiIconArea()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->isOverlappedViews(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    :goto_1
    if-eqz v4, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->isOverlappedNotiIconBrothers()Z

    move-result v6

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->isStatusIconHole()Z

    move-result v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->isNotificationIconHole()Z

    move-result v8

    if-eqz v4, :cond_4

    move v9, v3

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->isBatteryIconHole()Z

    move-result v9

    :goto_3
    if-nez v0, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-nez v7, :cond_6

    if-nez v8, :cond_6

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    return v3

    :cond_6
    :goto_4
    const-string v3, "PhoneStatusBarView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LayoutBugDetector tries to fix this jungle-like situation...clockEllipsisBug:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", notiInvadeBug:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", notiIconsOverlap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", statIconHole:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", notiIconHole:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", batteryIconHole:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getAndSaveBugViewLog(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewLine:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewLine:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    (lr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->BUG_VIEW_LOG_LINE_NUMBER:I

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewLines:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getNotiIconArea()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a0393

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isBatteryIconHole()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/BatteryMeterView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/BatteryMeterView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/BatteryMeterView;->getLocationOnScreen([I)V

    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/BatteryMeterView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->getBatteryActualWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int v3, v2, v3

    if-lez v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/BatteryMeterView;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/BatteryMeterView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->isBatteryPercentHole()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/BatteryMeterView;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v4

    :cond_1
    return v1
.end method

.method private isNotificationIconHole()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->getNotiIconArea()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->getNotiIconArea()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0385

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->checkNotificationIconHole()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method private isOverlappedNotiIconBrothers()Z
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->getNotiIconArea()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->getNotiIconArea()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0385

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getVisibleIconCount()I

    move-result v2

    if-gtz v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    const/4 v5, 0x2

    if-ge v2, v5, :cond_4

    move-object v4, v3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    instance-of v5, v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->isOverlappedViews(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "PhoneStatusBarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LayoutBugDetector.isOverlappedNotiIconBrothers() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":nowNotiIcon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private isOverlappedViews(Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    aget v4, v1, v0

    sub-int v5, v3, v4

    if-lez v5, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private isStatusIconHole()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->checkStatusIconHole()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkAndUpdateLayout()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mIsKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    const-string v1, "PhoneStatusBarView"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public dumpBugViews(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "LayoutBugDetector (dumpBugViews)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mBugViewLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    const-string v1, "PhoneStatusBarView"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->checkAndUpdateLayout()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->mIsKeyguardShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LayoutBugDetector;->checkAndUpdateLayout()V

    return-void
.end method
