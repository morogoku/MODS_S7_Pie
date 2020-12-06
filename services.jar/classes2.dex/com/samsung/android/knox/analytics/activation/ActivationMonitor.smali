.class public Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
.super Ljava/lang/Object;
.source "ActivationMonitor.java"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    }
.end annotation


# static fields
.field private static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "China"

.field private static final COUNTRY_CODE_PROPERTY:Ljava/lang/String; = "ro.csc.country_code"

.field private static final ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

.field private static final PKG_NAME_NOT_REQUIRED:Ljava/lang/String;

.field private static final SETTINGS_KEY_KES_STATUS:Ljava/lang/String; = "is_kes_enabled"

.field private static final SETTINGS_KEY_KLM_ON_PREMISE_STATUS:Ljava/lang/String; = "onpremise_activated"

.field private static final SETTINGS_KEY_KLM_STATUS:Ljava/lang/String; = "klm_activated"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field private final mBootCompletedLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyListener:Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

.field private mIsChinaDevice:Z

.field private mIsOnBootCheckings:Z

.field private mIsOnPremiseActivated:Z

.field private mKESListener:Lcom/samsung/android/knox/analytics/activation/KESListener;

.field private mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggers:I

.field private mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PKG_NAME_NOT_REQUIRED:Ljava/lang/String;

    const-string v0, "com.sec.android.app.shealth"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mBootCompletedLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    return-void
.end method

.method private bootChecking()V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "bootChecking() - Device country is china, returning ..."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "bootChecking()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLMOnBoot()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkDOOnBoot()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkPOOnBoot()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELMOnBoot()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKesOnBoot()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkConditionsToStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    return-void
.end method

.method private checkChina()V
    .registers 5

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "China"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkChina(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized checkConditionsToStart()V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkConditionsToStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkNewStatus()Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    if-ne v0, v1, :cond_19

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v2, "checkConditionsToStart() - already in the correct state"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_3c

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->$SwitchMap$com$samsung$android$knox$analytics$activation$model$ActivationInfo$ActivationStatus:[I

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_40

    goto :goto_3a

    :pswitch_2a
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsDeactivation(Z)V

    goto :goto_3a

    :pswitch_2e
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsDeactivation(Z)V

    goto :goto_3a

    :pswitch_33
    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    xor-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsActivation(Z)V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_3c

    nop

    :goto_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2e
        :pswitch_2a
    .end packed-switch
.end method

.method private checkDOOnBoot()V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkDOOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isDoActive()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PKG_NAME_NOT_REQUIRED:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method private checkELM(Ljava/lang/String;Z)V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkELM()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isElmActive()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method private checkELMOnBoot()V
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkELMOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PKG_NAME_NOT_REQUIRED:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELM(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkKLMOnBoot()V
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkKLMOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PKG_NAME_NOT_REQUIRED:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLM(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkKesOnBoot()V
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkKesOnBoot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PKG_NAME_NOT_REQUIRED:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKes(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkNewStatus()Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .registers 5

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object v0

    :cond_7
    iget v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:I

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNewStatus() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2d

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object v1

    :cond_2d
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object v1
.end method

.method private checkOnPremise()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "onpremise_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOnPremise(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-ne v1, v2, :cond_35

    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "checkOnPremise(): Didn\'t change, returning"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    return-void
.end method

.method private checkPOOnBoot()V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkPOOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PKG_NAME_NOT_REQUIRED:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method private static filterOutBlacklistedElm([Lcom/samsung/android/knox/license/LicenseInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/knox/license/LicenseInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/LicenseInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "filterOutBlacklistedElm()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_16

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v2, "filterOutBlacklistedElm(): empty LicenseInfo array"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_16
    array-length v1, p0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_2c

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    return-object v0
.end method

.method private getElmLicenseList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/LicenseInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-nez v0, :cond_f

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v2, "getElmLicenseList(): Error getting ELS"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->filterOutBlacklistedElm([Lcom/samsung/android/knox/license/LicenseInfo;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "enterprise_license_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    return-object v0
.end method

.method private getTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z
    .registers 4

    iget v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:I

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isElmActive()Z
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "isElmActive()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getElmLicenseList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isElmActive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isKesActive()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_kes_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    move v1, v2

    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKesActive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isKlmActive()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "klm_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    move v1, v2

    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkKLM(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static isPackageBlacklisted(Ljava/lang/String;)Z
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageBlacklisted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_1f

    return v0

    :cond_1f
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_23
    if-ge v3, v2, :cond_39

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "isPackageBlacklisted(): blacklisted"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_39
    return v0
.end method

.method private notifyKnoxAnalyticsActivation(Z)V
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyKnoxAnalyticsActivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onKnoxAnalyticsActivation(Z)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private notifyKnoxAnalyticsDeactivation(Z)V
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyKnoxAnalyticsDeactivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onKnoxAnalyticsDeactivation(Z)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private notifyStatusChanged(IZLjava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStatusChanged() pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onStatusChanged(IZLjava/lang/String;)V

    goto :goto_2d

    :cond_3d
    return-void
.end method

.method private notifyTriggerChanged(IZLjava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyTriggerChanged() pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onTriggerChanged(IZLjava/lang/String;)V

    goto :goto_2d

    :cond_3d
    return-void
.end method

.method private registerListenersObservers()V
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListenersObservers()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mDevicePolicyListener:Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mDevicePolicyListener:Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->register()V

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/KESListener;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/activation/KESListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mKESListener:Lcom/samsung/android/knox/analytics/activation/KESListener;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mKESListener:Lcom/samsung/android/knox/analytics/activation/KESListener;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/activation/KESListener;->register()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V

    goto :goto_36

    :cond_2e
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerListenersObservers() - EnterpriseLicenseService is null, can\'t observe license"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    return-void
.end method

.method private setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V
    .registers 8

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:I

    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    if-nez v1, :cond_46

    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-nez v1, :cond_46

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getId()I

    move-result v1

    invoke-direct {p0, v1, p4, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyStatusChanged(IZLjava/lang/String;)V

    :cond_46
    if-eqz p2, :cond_52

    iget v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:I

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:I

    goto :goto_5c

    :cond_52
    iget v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:I

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:I

    :goto_5c
    iget v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:I

    if-ne v1, v0, :cond_69

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setTrigger(): didn\'t change, returning"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_69
    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    if-nez v1, :cond_81

    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-nez v1, :cond_7e

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7e

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getId()I

    move-result v1

    invoke-direct {p0, v1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyTriggerChanged(IZLjava/lang/String;)V

    :cond_7e
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkConditionsToStart()V

    :cond_81
    return-void
.end method


# virtual methods
.method public checkDO(Ljava/lang/String;Z)V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkDO()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isDoActive()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public checkKLM(Ljava/lang/String;Z)V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkKLM()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkOnPremise()V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isKlmActive()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public checkKes(Ljava/lang/String;Z)V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkKes()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isKesActive()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase() - Device country is china, returning ..."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1a

    goto :goto_42

    :cond_1a
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase(PHASE_BOOT_COMPLETED)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mBootCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_25
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mBootCompletedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_42

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw v1

    :cond_2f
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase(PHASE_SYSTEM_SERVICES_READY)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerListenersObservers()V

    goto :goto_42

    :cond_3b
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkChina()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->bootChecking()V

    nop

    :goto_42
    return-void
.end method

.method public onPoAdded(I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getPoPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    :cond_14
    return-void
.end method

.method public onPoRemoved(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 5

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-eq v0, v1, :cond_15

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELM(Ljava/lang/String;Z)V

    :cond_15
    return-void
.end method

.method public onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 5

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-eq v0, v1, :cond_15

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLM(Ljava/lang/String;Z)V

    :cond_15
    return-void
.end method

.method public registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
