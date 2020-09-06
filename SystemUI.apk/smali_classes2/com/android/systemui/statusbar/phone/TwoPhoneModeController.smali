.class public Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.super Ljava/lang/Object;
.source "TwoPhoneModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;,
        Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;
    }
.end annotation


# static fields
.field private static final CONSTANT_DELAY_MS_MIN:I

.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

.field private mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

.field private mTint:I

.field private mTwoPhoneCallEnabled:Z

.field private mTwoPhoneMsgEnabled:Z

.field private mTwoPhoneRegistered:Z

.field private mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

.field private mTwoPhoneUserCreated:Z

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateIconRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->DEBUG:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v1, 0xbb8

    nop

    :cond_1
    sput v1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->CONSTANT_DELAY_MS_MIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneCallEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneCallEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneMsgEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneMsgEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneUserCreated:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneUserCreated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneRegistered:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneRegistered:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateIcons(ZI)V

    return-void
.end method

.method private considerValuesAndUpdateIcons()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getConstantDelays()I

    move-result v0

    const/16 v1, 0x3e8

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons(I)V

    return-void
.end method

.method private considerValuesAndUpdateIcons(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private getConstantDelays()I
    .locals 4

    const/4 v0, 0x0

    sget v1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->CONSTANT_DELAY_MS_MIN:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_0
    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    const/16 v3, 0x1f4

    mul-int v1, v3, v0

    :cond_1
    const/16 v3, 0x1388

    if-le v1, v3, :cond_2

    const/16 v1, 0x1388

    goto :goto_0

    :cond_2
    sget v3, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->CONSTANT_DELAY_MS_MIN:I

    if-ge v1, v3, :cond_3

    sget v1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->CONSTANT_DELAY_MS_MIN:I

    :cond_3
    :goto_0
    return v1
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    return-object v0

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    return-object v0
.end method

.method public static synthetic lambda$dismissUserSwitchingDialog$0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_0

    :cond_0
    const-string v2, "dismissUserSwitchingDialog(), powerManager is null"

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    :goto_0
    const-string v2, "dismissUserSwitchingDialog() by SystemUI"

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissUserSwitchingDialog()V

    goto :goto_1

    :cond_1
    const-string v1, "dismissUserSwitchingDialog(), activityManager is null"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured on closeUserSwitchDialog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static synthetic lambda$showDoneToast$1(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    if-lez p1, :cond_0

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    const v1, 0x7f120c02

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f120c01

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    const-string v1, "DONE toast show for twophone."

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private printLogLine(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar.TwoPhoneModeController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateIcons(ZI)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIcons(visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method


# virtual methods
.method public dismissUserSwitchingDialog(Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x1388

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getConstantDelays()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I\'ll post dismissUserSwitchingDialog() after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$P28OopBjAa6tbdTyVHZjn1NoYdU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$P28OopBjAa6tbdTyVHZjn1NoYdU;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "---- Two Phone -----"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mTwoPhoneCallEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneCallEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mTwoPhoneMsgEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneMsgEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mTwoPhoneUserCreated="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneUserCreated:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mTwoPhoneRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->registerTwoPhoneHelpers(Landroid/os/Handler;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    return-void
.end method

.method public isTwoPhoneUserCreated()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 5

    iput p3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1, v1, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p1, v2, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    :goto_0
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public registerTwoPhoneHelpers(Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "two_register"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "two_account"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "two_call_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "two_sms_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public showDoneToast(Landroid/os/Handler;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xbb8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getConstantDelays()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I\'ll post showDoneToast() after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$5oDlNL3W760r9IL3k_dTejsay3o;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$5oDlNL3W760r9IL3k_dTejsay3o;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;I)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTwoPhoneIcons()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons()V

    return-void
.end method

.method public userSwitched()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons()V

    return-void
.end method
