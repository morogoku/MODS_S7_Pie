.class public Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;
.super Ljava/lang/Object;
.source "StatusBarCarrierLabelInflater.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# instance fields
.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

.field mStatusBarCarrierLabel:Landroid/widget/TextView;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;)Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    return-object v0
.end method

.method public static synthetic lambda$setCarrierText$0(Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasLockNotiIcons()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hasLockNotiIcons()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120ba4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    const-string v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setStatusBarCarrierLabelManager(Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setStatusBarCarrierLabelView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showStatusBarCarrierLabel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setStatusBarCarrierLabelManager(Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;)V

    :cond_2
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setCarrierText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarCarrierLabelInflater$MmIH9-gHiJbDBzCOxEhr5J6bTuU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarCarrierLabelInflater$MmIH9-gHiJbDBzCOxEhr5J6bTuU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarCarrierLabelInflater;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
