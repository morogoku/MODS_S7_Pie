.class public Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;
.super Ljava/lang/Object;
.source "StatusBarOperationLogoInflater.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;


# instance fields
.field private mIconTint:I

.field private mIsAddedDarkIconDispatcher:Z

.field private mIsAddedOperatorIconForHome:Z

.field private mIsAddedOperatorIconForLock:Z

.field private mOperatorLogoIconForHome:Landroid/widget/ImageView;

.field private mOperatorLogoIconForLock:Landroid/widget/ImageView;

.field private mOperatorLogoIconResourceId:I

.field public mPreviousLogoVisibility:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForLock:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForHome:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mPreviousLogoVisibility:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedDarkIconDispatcher:Z

    const v0, -0x42000001    # -0.12499999f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIconTint:I

    return-void
.end method

.method private addLogoIconViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->addLogoIconViewsInKeyguardStatusBarView(Landroid/content/Context;)V

    return-void
.end method

.method private addLogoIconViewsInKeyguardStatusBarView(Landroid/content/Context;)V
    .locals 4

    const-string v0, "StatusBarOperationLogoInflater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLogoIconViewsInKeyguardStatusBarView() mIsAddedOperatorIconForLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;

    invoke-direct {v0, p1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForLock:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForLock:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForLock:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForLock:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b9c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForLock:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIconTint:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForLock:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setOperatorLogoIndicator(Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method

.method private addOperatorLogoIconListenerForAcquiredVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarOperationLogoInflater$J1T3NF8eQ2F19Sg95W53xLuUWZ4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarOperationLogoInflater$J1T3NF8eQ2F19Sg95W53xLuUWZ4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addOperatorLogoIconListener(Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;)V

    return-void
.end method

.method private determineInnateVisibilities()V
    .locals 4

    const-string v0, "LOCK"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForLock:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForHome:Z

    goto :goto_0

    :cond_0
    const-string v0, "HOME"

    sget-object v3, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForLock:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForHome:Z

    goto :goto_0

    :cond_1
    const-string v0, "BOTH"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForLock:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForHome:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private findLogoResourceId()V
    .locals 2

    const-string v0, "ORANGE"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080635

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    goto :goto_0

    :cond_0
    const-string v0, "KTT"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080633

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    goto :goto_0

    :cond_1
    const-string v0, "LGT"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080634

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    goto :goto_0

    :cond_2
    const-string v0, "SKT"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080637

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    goto :goto_0

    :cond_3
    const-string v0, "SIN"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080636

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    :cond_4
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;

    return-object v0
.end method

.method public static synthetic lambda$addOperatorLogoIconListenerForAcquiredVisibility$0(Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->updateLogoAndCarrierVisibility(Z)V

    return-void
.end method

.method private prepareLogoIconViewsInPhoneStatusBarView(Landroid/content/Context;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForHome:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;

    invoke-direct {v0, p1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b9a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIconTint:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private updateLogoAndCarrierVisibility(Z)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mPreviousLogoVisibility:Z

    if-eq v1, v0, :cond_1

    const-string v1, "StatusBarOperationLogoInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLogoAndCarrierVisibility(visible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") Visibility of LOGO is changed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mPreviousLogoVisibility:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForLock:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateOperatorLogoVisibility(Z)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedOperatorIconForHome:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getOperationLogoHelper()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getOperationLogoHelper()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$OperationLogoHelper;->updateOperatorLogoVisibility(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getOperatorLogoIconForHome()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->prepareLogoIconViewsInPhoneStatusBarView(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getOperatorLogoIconResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconResourceId:I

    return v0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 2

    const-string v0, "StatusBarOperationLogoInflater"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    sget-object v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->determineInnateVisibilities()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->findLogoResourceId()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->addLogoIconViews()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->addOperatorLogoIconListenerForAcquiredVisibility()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedDarkIconDispatcher:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIsAddedDarkIconDispatcher:Z

    :cond_1
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    invoke-static {p1, v0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIconTint:I

    goto :goto_0

    :cond_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIconTint:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForLock:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForLock:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIconTint:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mOperatorLogoIconForHome:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOperationLogoInflater;->mIconTint:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method
