.class public Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsWrapper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandlerUtil:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

.field private mILockSettings:Lcom/android/internal/widget/ILockSettings;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mILockSettings:Lcom/android/internal/widget/ILockSettings;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mHandlerUtil:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

    return-void
.end method

.method public static synthetic lambda$lockDown$0(Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->lockProfiles()V

    return-void
.end method

.method private lockProfiles()V
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/TrustManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_2d

    aget v6, v3, v5

    if-eq v6, v2, :cond_2a

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_2d
    return-void
.end method


# virtual methods
.method public isCarrierLockPlusEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mILockSettings:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isFMMLocked()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isRMMLocked()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isStrongAuthForLockDown()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    return v1
.end method

.method public lockDown()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "LockPatternUtilsWrapper"

    const-string/jumbo v2, "lockDown"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x20

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :try_start_12
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$LockPatternUtilsWrapper$mKjyqLLt0EinXWdBFD0uZc79Oqw;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$LockPatternUtilsWrapper$mKjyqLLt0EinXWdBFD0uZc79Oqw;-><init>(Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2c
    return-void
.end method

.method public lockDownDelayed(I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->mHandlerUtil:Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;

    new-instance v1, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$sxdz9BTIzk9e-tW82u9PhLb7rrI;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$sxdz9BTIzk9e-tW82u9PhLb7rrI;-><init>(Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
