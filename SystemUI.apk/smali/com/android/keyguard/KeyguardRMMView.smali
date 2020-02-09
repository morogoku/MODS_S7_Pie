.class public Lcom/android/keyguard/KeyguardRMMView;
.super Lcom/android/keyguard/KeyguardSecPINView;
.source "KeyguardRMMView.java"


# instance fields
.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private final mCheckPasswordCallback:Landroid/os/IRemoteCallback;

.field private mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field private mClientContact:Lcom/android/systemui/widget/SystemUITextView;

.field private mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

.field private mClientName:Ljava/lang/String;

.field private mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

.field private mContactArea:Landroid/view/ViewGroup;

.field private mCurrentOrientation:I

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVoiceCapacity:Z

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mMessageArea:Landroid/widget/LinearLayout;

.field private mMessageAreaSpace:Landroid/view/View;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRMMContainer:Landroid/view/ViewGroup;

.field private mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardRMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mIsVoiceCapacity:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    new-instance v0, Lcom/android/keyguard/KeyguardRMMView$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardRMMView$1;-><init>(Lcom/android/keyguard/KeyguardRMMView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardRMMView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardRMMView$2;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/keyguard/KeyguardRMMView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardRMMView$3;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardRMMView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRMMView;->checkUnlockAttempts(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardRMMView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardRMMView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->setRMMInfo()V

    return-void
.end method

.method private checkUnlockAttempts(I)V
    .locals 5

    const-string v0, "KeyguardRMMView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnlockAttempts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardRMMView;->resetPasswordText(ZZ)V

    if-nez p1, :cond_1

    :try_start_0
    new-instance v1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardRMMView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed CIS LOCK clear!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    rem-int v0, p1, v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->setRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardRMMView;->handleAttemptLockout(J)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getWrongPasswordStringId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    :goto_1
    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

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

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v1, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardRMMView;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v7, v7, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardRMMView;->setLong(Ljava/lang/String;JI)V

    return-wide v1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v5

    cmp-long v0, v3, v0

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardRMMView;->setLong(Ljava/lang/String;JI)V

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/KeyguardRMMView;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->doHapticKeyClick()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setRMMInfo$1(Lcom/android/keyguard/KeyguardRMMView;Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v2, "tel"

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v1, "KeyguardRMMView"

    const-string v2, "click call button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardRMMView"

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

.method private setLong(Ljava/lang/String;JI)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardRMMView"

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

.method private setRMMInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-string v0, "KeyguardRMMView"

    const-string v1, "mRemoteLockInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\r\\n|\\r|\\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v0, "KeyguardRMMView"

    const-string v1, "mRemoteLockInfo.message is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v0, "KeyguardRMMView"

    const-string v1, "mRemoteLockInfo.phoneNumber is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mIsVoiceCapacity:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardRMMView$yDHUfr7tEIcwMQRPInPlRk4u_io;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardRMMView$yDHUfr7tEIcwMQRPInPlRk4u_io;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private setRemoteLockoutAttemptDeadline(I)J
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardRMMView;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method private updateLayout()V
    .locals 11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v7}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f070294

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v8, 0x7f07028c

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    const v9, 0x7f07028e

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f07028d

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v8, v4, v9, v4, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const v8, 0x7f070290

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v8, 0x7f07028f

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const v8, 0x7f0702cd

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v8, 0x7f0702d5

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v8, 0x7f0702d0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v8, v6}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    if-ne v8, v3, :cond_1

    iget-object v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    const v9, 0x7f0b0031

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/widget/SystemUITextView;->setMaxLines(I)V

    goto :goto_1

    :cond_1
    iget v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    if-ne v8, v2, :cond_2

    iget-object v8, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    const v9, 0x7f0b0030

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/widget/SystemUITextView;->setMaxLines(I)V

    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageAreaSpace:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    if-ne v6, v3, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageAreaSpace:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    if-ne v3, v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageAreaSpace:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    const v3, 0x7f0702d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setMaxWidth(I)V

    const v2, 0x7f0702d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1050365

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_9

    if-lez v1, :cond_8

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v1

    goto :goto_4

    :cond_7
    move v5, v1

    :goto_4
    goto :goto_5

    :cond_8
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0707c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    :goto_5
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v6, v3, v4, v5, v4}, Lcom/android/keyguard/CarrierText;->setPadding(IIII)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a0456

    return v0
.end method

.method protected getSecurityViewId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    const v0, 0x7f1205b6

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->setPasswordEntryEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "KeyguardRMMView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAttemptLockout() elapsedRealtimeDeadline: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/keyguard/KeyguardRMMView$4;

    sub-long v6, p1, v0

    const-wide/16 v8, 0x3e8

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/KeyguardRMMView$4;-><init>(Lcom/android/keyguard/KeyguardRMMView;JJ)V

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardRMMView$4;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "KeyguardRMMView"

    const-string v1, "onApplyWindowInsets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->updateLayout()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPINView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPINView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->updateLayout()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mIsVoiceCapacity:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const v0, 0x7f0a0299

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0298

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0296

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0295

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientCallButton:Lcom/android/systemui/widget/SystemUIButton;

    const v0, 0x7f0a0297

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mRMMContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0457

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mContactArea:Landroid/view/ViewGroup;

    const v0, 0x7f0a0458

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0459

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mMessageAreaSpace:Landroid/view/View;

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->setRMMInfo()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->updateLayout()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientTitle:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setSelected(Z)V

    :cond_0
    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardRMMView$HWRoB2n8ohOHl0qKja9Okmqa7KY;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardRMMView$HWRoB2n8ohOHl0qKja9Okmqa7KY;-><init>(Lcom/android/keyguard/KeyguardRMMView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12071e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 8

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->resetState()V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardRMMView;->getRemoteLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardRMMView;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12071e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardRMMView;->mClientName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104029c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    const-string v0, "KeyguardRMMView"

    const-string/jumbo v1, "verifyPasswordAndUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->getWrongPasswordStringId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Lcom/android/keyguard/KeyguardRMMView;->resetPasswordText(ZZ)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRMMView;->setPasswordEntryInputEnabled(Z)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRMMView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMView;->mCheckPasswordCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/internal/widget/ILockSettings;->checkCISPassword(ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardRMMView"

    const-string v3, "Can\'t connect CIS_LOCK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
