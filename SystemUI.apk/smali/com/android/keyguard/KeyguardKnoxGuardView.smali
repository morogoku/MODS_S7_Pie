.class public Lcom/android/keyguard/KeyguardKnoxGuardView;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.source "KeyguardKnoxGuardView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static isTimerRunning:Z

.field private static numberOfAttemptsDone:I


# instance fields
.field private carrierText:Lcom/android/keyguard/CarrierText;

.field private companyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private emailContainer:Landroid/widget/RelativeLayout;

.field private emailHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private emailImageView:Lcom/android/systemui/widget/SystemUIImageView;

.field private emailSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private lockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mCheckPasswordCallback:Landroid/os/IRemoteCallback;

.field private mClientName:Ljava/lang/String;

.field private mCurrentOrientation:I

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private final mHandler:Landroid/os/Handler;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field private mSkipPin:Z

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private phoneContainer:Landroid/widget/RelativeLayout;

.field private phoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private phoneImageView:Lcom/android/systemui/widget/SystemUIImageView;

.field private phoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private pinEditText:Landroid/widget/EditText;

.field private pinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/KeyguardKnoxGuardView;->numberOfAttemptsDone:I

    sput-boolean v0, Lcom/android/keyguard/KeyguardKnoxGuardView;->isTimerRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mSkipPin:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCurrentOrientation:I

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$1;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/keyguard/KeyguardKnoxGuardView$2;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardKnoxGuardView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$3;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardKnoxGuardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setKnoxGuardInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardKnoxGuardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->checkUnlockAttempts(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardKnoxGuardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardKnoxGuardView;->numberOfAttemptsDone:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->isTimerRunning:Z

    return p0
.end method

.method private checkUnlockAttempts(I)V
    .locals 6

    const-string v0, "KeyguardKnoxGuardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnlockAttempts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :try_start_0
    new-instance v2, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardKnoxGuardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed CIS LOCK clear!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    rem-int v0, p1, v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setFailedUnlockAttemptCount(II)I

    move-result v2

    sput v2, Lcom/android/keyguard/KeyguardKnoxGuardView;->numberOfAttemptsDone:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->handleAttemptLockout(J)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->updateErrorMessage()V

    :goto_1
    return-void
.end method

.method private getFailedUnlockAttemptCount(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remotelockscreen.failedunlockcount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    return-wide p2
.end method

.method private getRemoteLockoutAttemptDeadline(I)J
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v7, v7, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setLong(Ljava/lang/String;JI)V

    return-wide v1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v5

    cmp-long v0, v3, v0

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setLong(Ljava/lang/String;JI)V

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public static synthetic lambda$setKnoxGuardInfo$0(Lcom/android/keyguard/KeyguardKnoxGuardView;Ljava/lang/String;Landroid/view/View;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v1, "KeyguardKnoxGuardView"

    const-string v2, "click call button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardKnoxGuardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setKnoxGuardInfo$1(Lcom/android/keyguard/KeyguardKnoxGuardView;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.kgclient.intent.action.SEND_FEEDBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kgclient"

    const-string v2, "com.samsung.android.kgclient.receiver.KGIntentReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knoxguard.STATUS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    return-void
.end method

.method private resetPinErrorMessage()V
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/KeyguardKnoxGuardView;->isTimerRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setDisplayCutout()V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050365

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_3

    if-lez v0, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->carrierText:Lcom/android/keyguard/CarrierText;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3, v5}, Lcom/android/keyguard/CarrierText;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method private setFailedUnlockAttemptCount(II)I
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remotelockscreen.failedunlockcount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setLong(Ljava/lang/String;JI)V

    return p2
.end method

.method private setKnoxGuardInfo()V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "mRemoteLockInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mClientName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mClientName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "mRemoteLockInfo.clientName is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mClientName:Ljava/lang/String;

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "mRemoteLockInfo.clientName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->companyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->companyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->lockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->lockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->lockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    goto :goto_1

    :cond_5
    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "mRemoteLockInfo.message is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120715

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mClientName:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneContainer:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$3gN_DDKQavvKxILp__aEXQSTQ8o;

    invoke-direct {v5, p0, v0}, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$3gN_DDKQavvKxILp__aEXQSTQ8o;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "KeyguardKnoxGuardView"

    const-string v4, "mRemoteLockInfo.phoneNumber is null"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120716

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mClientName:Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$4HNSRNSHA3xbqUE-jg4GSOwUY5w;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$4HNSRNSHA3xbqUE-jg4GSOwUY5w;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "mRemoteLockInfo.emailAddress is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-boolean v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mSkipPin:Z

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->updateLayout()V

    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardKnoxGuardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setRemoteLockoutAttemptDeadline(I)J
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method private updateErrorMessage()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getWrongPasswordStringId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$7;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateLayout()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mSkipPin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a0285

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    const v0, 0x7f120717

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "KeyguardKnoxGuardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAttemptLockout() elapsedRealtimeDeadline: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/keyguard/KeyguardKnoxGuardView;->isTimerRunning:Z

    new-instance v2, Lcom/android/keyguard/KeyguardKnoxGuardView$6;

    sub-long v5, p1, v0

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/keyguard/KeyguardKnoxGuardView$6;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;JJ)V

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "onApplyWindowInsets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setDisplayCutout()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0a0282

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->companyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0284

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->lockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0285

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    const v0, 0x7f0a0287

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a03d4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03d6

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneImageView:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a03d5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a03d7

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a018a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a018c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailImageView:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a018b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a018d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->carrierText:Lcom/android/keyguard/CarrierText;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardView$5;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->phoneImageView:Lcom/android/systemui/widget/SystemUIImageView;

    const v1, 0x7f080359

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->emailImageView:Lcom/android/systemui/widget/SystemUIImageView;

    const v1, 0x7f08035a

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setKnoxGuardInfo()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onPause()V

    return-void
.end method

.method protected onUserInput()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected resetState()V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getFailedUnlockAttemptCount(I)I

    move-result v2

    sput v2, Lcom/android/keyguard/KeyguardKnoxGuardView;->numberOfAttemptsDone:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    const-string v0, "KeyguardKnoxGuardView"

    const-string/jumbo v1, "verifyPasswordAndUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPinErrorMessage()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->pinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getWrongPasswordStringId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/internal/widget/ILockSettings;->checkCISPassword(ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardKnoxGuardView"

    const-string v3, "Can\'t connect KNOX_GUARD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
