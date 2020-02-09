.class public Lcom/android/keyguard/KeyguardUCMPinView;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;,
        Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;,
        Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;,
        Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    }
.end annotation


# static fields
.field private static sVendorName:Ljava/lang/String;

.field private static final syncObj:Ljava/lang/Object;

.field private static unlockOngoing:Z


# instance fields
.field private mAgentID:Ljava/lang/String;

.field private mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

.field private mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

.field private mError:I

.field private mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

.field private mMISCInfo:Ljava/lang/String;

.field private mPinMaxLength:I

.field private mPinMinLength:I

.field private mPinText:Ljava/lang/String;

.field private mPukMaxLength:I

.field private mPukMinLength:I

.field private mPukSupported:Z

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttempts:I

.field private final mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

.field private mStatus:I

.field private mUCMAgent:Landroid/widget/TextView;

.field private mUCMMiscTagValue:Landroid/widget/TextView;

.field private mUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUCMPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    new-instance v1, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$1;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkUCMKeyguardStatus()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getVendorID()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_0

    const-string v0, "KeyguardUCMPinView"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUCMPinView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->startProgress(Z)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    return-object p1
.end method

.method static synthetic access$1200(I)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->generatePassword(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/KeyguardUCMPinView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getRemainingCount(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPassword(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->confirmPin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPUKAndUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->stopProgress()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getAgentInfoAndUpdateStatus()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;)Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPIN(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private checkPassword(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$ofnQEdZXbqYx85rGBNmVZnfh7J0;

    invoke-direct {v1, p0, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$ofnQEdZXbqYx85rGBNmVZnfh7J0;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private checkPin()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private checkPuk()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukText:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private checkUCMKeyguardStatus()Ljava/lang/String;
    .locals 5

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v3, "KeyguardUCMPinView"

    const-string v4, "failed to get UCM service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    return-object v2
.end method

.method private confirmPin()Z
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "confirmPin called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static generatePassword(I)Landroid/os/Bundle;
    .locals 4

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "generatePassword called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x83

    if-eq p0, v1, :cond_0

    const-string v1, "KeyguardUCMPinView"

    const-string v2, "Do not need to get password"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "com.samsung.ucs.ucsservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v2, "KeyguardUCMPinView"

    const-string v3, "mUcmBinder == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private declared-synchronized getAgentInfoAndUpdateStatus()V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getAgentInfoAndUpdateStatus called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "KeyguardUCMPinView"

    const-string v2, "failed to get UCM service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "KeyguardUCMPinView"

    const-string v4, "failed to get getStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v3, "errorresponse"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0xe

    if-ne v3, v5, :cond_4

    const-string v6, "KeyguardUCMPinView"

    const-string v7, "Boot init condition"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->updateAgentList()V

    move v6, v3

    move-object v3, v2

    move v2, v4

    :goto_0
    const/16 v7, 0xa

    if-ge v2, v7, :cond_5

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object v3, v7

    if-eqz v3, :cond_3

    const-string v7, "errorresponse"

    invoke-virtual {v3, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    move v6, v7

    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "KeyguardUCMPinView"

    const-string v8, "UcmAgentService.ERROR_NO_PLUGIN_AGENT_FOUND error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v7, 0x3e8

    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v4, "KeyguardUCMPinView"

    const-string v5, "failed to get getStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    move v6, v3

    move-object v3, v2

    :cond_5
    :goto_1
    :try_start_5
    const-string/jumbo v2, "state"

    const/4 v5, -0x1

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const-string v2, "miscInfo"

    const-string v5, ""

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    const-string v2, "minPinLength"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    const-string v2, "maxPinLength"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    const-string v2, "minPukLength"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    const-string v2, "maxPukLength"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    const-string/jumbo v2, "remainCnt"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const-string v2, "errorresponse"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pin puk "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "misc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pin remain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getCSUri()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUCMPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCSUri returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getErrorMessage(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0x%08X"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    const v1, 0x7f120809

    sparse-switch p1, :sswitch_data_0

    const/high16 v3, 0x8000000

    if-ge v3, p1, :cond_0

    const/high16 v3, 0x8010000

    if-le v3, p1, :cond_0

    const-string v3, "0x%08X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12080a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1207ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120801

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2000101
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2000301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2000401
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2000501
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3000000
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_2
        0x1fff -> :sswitch_2
        0x1000100 -> :sswitch_1
        0x1000200 -> :sswitch_1
        0x1000300 -> :sswitch_1
        0x1000400 -> :sswitch_1
        0x2000201 -> :sswitch_1
        0x8000000 -> :sswitch_0
        0x9000000 -> :sswitch_2
        0xc000100 -> :sswitch_2
        0xc000200 -> :sswitch_2
    .end sparse-switch
.end method

.method private getRemainingCount(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100003

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStatusAndShowingDialog()V
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getStatusAndShowingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 3

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "KeyguardUCMPinView"

    const-string v2, "failed to get UCM service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getUnlockProgressDialog(Z)Landroid/app/Dialog;
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getUnlockProgressDialog called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120805

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12080c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private getVendorID()V
    .locals 6

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getVendorID() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "KeyguardUCMPinView"

    const-string v2, "failed to get UCM service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "KeyguardUCMPinView"

    const-string v4, "failed to get agentInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v3, "id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    const-string v3, "isPUKSupported"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    const-string v3, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAgentID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mPukSupported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$checkPassword$0(Lcom/android/keyguard/KeyguardUCMPinView;IZI)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->onPasswordChecked(IZIZ)V

    return-void
.end method

.method private startProgress(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private stopProgress()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)[I
    .locals 10

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPIN called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v4, 0x2

    aput v2, v0, v4

    const-string v5, "com.samsung.ucs.ucsservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v1, "KeyguardUCMPinView"

    const-string v2, "failed to get UCM service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v1, v6, p1, v7}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "state"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const-string/jumbo v7, "remainCnt"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const-string v7, "errorresponse"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remainCnt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "errorCode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/16 v8, 0x83

    if-ne v7, v8, :cond_1

    const-string v7, "KeyguardUCMPinView"

    const-string v8, "PIN verification succeed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v7, "KeyguardUCMPinView"

    const-string v8, "PIN verification failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    aput v7, v0, v1

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    aput v1, v0, v3

    aput v2, v0, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method private verifyPINAndUnlock(Ljava/lang/String;)V
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPINAndUnlock called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    sput-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$1;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->start()V

    :cond_0
    return-void
.end method

.method private verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 13

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPUK called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v4, 0x2

    aput v2, v0, v4

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    if-nez v6, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v7, "com.samsung.ucs.ucsservice"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v3, "KeyguardUCMPinView"

    const-string v4, "failed to get UCM service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v2, v0, v1

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "state"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const-string/jumbo v10, "remainCnt"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const-string v10, "errorresponse"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v10, "KeyguardUCMPinView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "KeyguardUCMPinView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "remainCnt : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "KeyguardUCMPinView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    packed-switch v10, :pswitch_data_0

    const-string v10, "KeyguardUCMPinView"

    goto :goto_0

    :pswitch_0
    const-string v10, "KeyguardUCMPinView"

    const-string v11, "PUK verification succeed : LOCKED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    const-string v10, "KeyguardUCMPinView"

    const-string v11, "PUK verification succeed : UNLOCKED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_0
    const-string v11, "PUK verification failed : BLOCKED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v10, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    aput v10, v0, v1

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    aput v1, v0, v3

    aput v2, v0, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-object v0

    :cond_2
    :goto_3
    aput v2, v0, v1

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private verifyPUKAndUnlock()V
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPUKAndUnlock called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    sput-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardUCMPinView$2;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a0609

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSecurityViewId()I
    .locals 1

    const v0, 0x7f0a02ab

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onDetachedFromWindow()V

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "onDetachedFromWindow called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onFinishInflate()V

    const v0, 0x7f0a060b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    const v0, 0x7f0a060a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const-string v0, "KeyguardUCMPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishInflate() called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "setTimeout called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPasswordChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120806

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUCMPinView;->unlockOngoing:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetState()V

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "resetState called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getVendorID()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getStatusAndShowingDialog()V

    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "startAppearAnimation called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "startDisappearAnimation called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPasswordAndUnlock override called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    const-string v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "unknown status nothings to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->verifyPUKAndUpdateUI()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPINAndUnlock(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "unknown status nothings to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
