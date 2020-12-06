.class public Lcom/android/systemui/fingerprint/SemFingerprintPromptView;
.super Landroid/widget/LinearLayout;
.source "SemFingerprintPromptView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBottomMarginForInDisplaySensor:I

.field private mBottomMarginForLandscape:I

.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mDescriptionOrGuideTxtView:Landroid/widget/TextView;

.field private mDescriptionText:Ljava/lang/CharSequence;

.field private mDescriptionTextViewHeight:I

.field private mDialog:Landroid/widget/LinearLayout;

.field private mDialogMinimumHeight:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayWidth:F

.field private mHandler:Landroid/os/Handler;

.field private mIconImgView:Landroid/widget/ImageView;

.field private mIsCheckToEnrolledBiometricMode:Z

.field private mIsCheckedNotchSupport:Z

.field private mLastOrientation:I

.field private mLayout:Landroid/view/ViewGroup;

.field private mNavigationBarHeight:I

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mPromptPrivilegedFlag:I

.field private mSensorAreaHeight:I

.field private mSensorAreaWidth:I

.field private mSensorIconHeight:I

.field private mSensorMarginBottom:I

.field private mSensorMarginLeft:I

.field private mToken:Landroid/os/IBinder;

.field private mView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/os/IBinder;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mWindowToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckedNotchSupport:Z

    const-string v1, "SemFingerprintPromptView"

    const-string v2, "SemFingerprintPromptView : create"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mWindowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v1, 0x10

    iput v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBottomMarginForLandscape:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayWidth:F

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->hasNotch(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckedNotchSupport:Z

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckedNotchSupport:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->realScreenHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNavigationBarHeight:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->realScreenHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNavigationBarHeight:I

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d01ee

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a04bf

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a04c0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a04c2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a04c9

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a04c3

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNegativeButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNegativeButton:Landroid/widget/Button;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNegativeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintPromptView$QQ3ddS_6W_a7IAowt2j3-YN63Ek;

    invoke-direct {v5, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintPromptView$QQ3ddS_6W_a7IAowt2j3-YN63Ek;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    const v6, 0x7f0a04c4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPositiveButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPositiveButton:Landroid/widget/Button;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPositiveButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintPromptView$zRgNart7psh0-OBzrqFew6OB2ak;

    invoke-direct {v6, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintPromptView$zRgNart7psh0-OBzrqFew6OB2ak;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    sget-boolean v4, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "SemFingerprintPromptView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemFingerprintPromptView : Constructor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialogMinimumHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionTextViewHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static hasNotch(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_mainBuiltInDisplayCutout"

    const-string/jumbo v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "SemFingerprintPromptView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not update hasDisplayCutout. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, "SemFingerprintPromptView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Support notch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static realScreenHeight(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    return v2
.end method

.method private setMaxTextScaleSize(Landroid/widget/TextView;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    div-float v2, v1, v0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    move v0, v2

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private showTemporaryMessage(ILjava/lang/String;Z)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemFingerprintPromptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTemporaryMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialogMinimumHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionTextViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->updateIcon(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600f2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method private updateIcon(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckToEnrolledBiometricMode:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701c4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701c2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701c3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const v1, 0x7f0805ed

    packed-switch p1, :pswitch_data_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    const v2, 0x7f0805ee

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    const v2, 0x7f0805f0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    sget-boolean v3, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    const v2, 0x7f0805f1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    const v2, 0x7f0805ef

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0xa39

    const v4, 0x1080182

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "FingerprintDialogView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget-boolean v1, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SemFingerprintPromptView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLayoutParams: lp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "SemFingerprintPromptView"

    const-string v2, "getStatusBarHeight : Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 11

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemFingerprintPromptView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayWidth:F

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v3, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const/16 v4, 0x11

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLastOrientation:I

    iget v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLastOrientation:I

    if-ne v3, v2, :cond_2

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBottomMarginForLandscape:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBottomMarginForInDisplaySensor:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "SemFingerprintPromptView"

    const-string/jumbo v5, "setBundle : "

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBottomMarginForLandscape:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a04c6

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0701ce

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a04c5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "subtitle"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0701cd

    invoke-direct {p0, v3, v8}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    :cond_6
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$2;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBundle:Landroid/os/Bundle;

    const-string v8, "description"

    iget-object v9, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12041c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionText:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0701be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMinimumHeight(I)V

    goto :goto_5

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v6}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->updateIcon(I)V

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNegativeButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBundle:Landroid/os/Bundle;

    const-string v8, "negative_text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNegativeButton:Landroid/widget/Button;

    const v7, 0x7f0701c9

    invoke-direct {p0, v4, v7}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "positive_text"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPositiveButton:Landroid/widget/Button;

    const v6, 0x7f0701cb

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    :goto_6
    const-string v5, "SemFingerprintPromptView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAttachedToWindow : width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemFingerprintPromptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged:  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBottomMarginForLandscape:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090006

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayWidth:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget-boolean v2, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBottomMarginForInDisplaySensor:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBottomMarginForLandscape:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mLastOrientation:I

    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    const-string v0, "SemFingerprintPromptView"

    const-string/jumbo v1, "onWindowFocusChanged: No focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method protected resetMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-direct {p0, v1, v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->showTemporaryMessage(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->showTemporaryMessage(ILjava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->updateIcon(I)V

    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "sem_prompt_privileged_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPromptPrivilegedFlag:I

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPromptPrivilegedFlag:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckToEnrolledBiometricMode:Z

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SemFingerprintPromptView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBundle: Check to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckToEnrolledBiometricMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mPromptPrivilegedFlag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_4

    const v0, 0x41cf851f    # 25.94f

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBottomMarginForInDisplaySensor:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "sem_area"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckedNotchSupport:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->realScreenHeight(Landroid/content/Context;)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNavigationBarHeight:I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->realScreenHeight(Landroid/content/Context;)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNavigationBarHeight:I

    :goto_1
    const-string v3, "SemFingerprintPromptView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Real : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->realScreenHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Screen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Notch : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckedNotchSupport:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v1, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mSensorAreaHeight:I

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mSensorAreaWidth:I

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mSensorMarginBottom:I

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mSensorMarginLeft:I

    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mSensorIconHeight:I

    :cond_3
    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mSensorMarginBottom:I

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mSensorAreaHeight:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mSensorIconHeight:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNavigationBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mBottomMarginForInDisplaySensor:I

    const-string v1, "SemFingerprintPromptView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Navigationbar Height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mNavigationBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->showTemporaryMessage(ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showFingerprintNameMessage(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f0600f5

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialog:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDialogMinimumHeight:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionOrGuideTxtView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mDescriptionTextViewHeight:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    const v3, 0x7f0805ed

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0600f4

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showHelpMessage(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->showTemporaryMessage(ILjava/lang/String;Z)V

    return-void
.end method

.method public startDismiss()V
    .locals 3

    const-string v0, "SemFingerprintPromptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemFingerprintPromptView"

    const-string/jumbo v2, "startDismiss : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
