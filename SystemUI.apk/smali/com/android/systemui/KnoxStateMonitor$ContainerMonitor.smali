.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerMonitor"
.end annotation


# instance fields
.field private final ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

.field private final ACTION_SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String;

.field private final ANDROID_NAME:Ljava/lang/String;

.field private final CMAIL_NAME:Ljava/lang/String;

.field private final EFOTA_NAME:Ljava/lang/String;

.field private final EMAIL_COMPOSER_NAME:Ljava/lang/String;

.field private final EMAIL_NAME:Ljava/lang/String;

.field private final EMAIL_PROVIDER_NAME:Ljava/lang/String;

.field private final EMAIL_SYNC_NAME:Ljava/lang/String;

.field private final EMAIL_UI_NAME:Ljava/lang/String;

.field private final INCALLUI_NAME:Ljava/lang/String;

.field private final KNOXCORE_NAME:Ljava/lang/String;

.field private final KNOX_DEBUG:Z

.field private final KNOX_EXPORT_DATA:I

.field private final KNOX_IMPORT_DATA:I

.field private final KNOX_SANITIZING:I

.field private final KNOX_SANITIZING_LOCKSCREEN:I

.field private final KNOX_SWITCHER_NAME:Ljava/lang/String;

.field private final MESSAGING_NAME:Ljava/lang/String;

.field private final MMS_NAME:Ljava/lang/String;

.field private final PHONE_NAME:Ljava/lang/String;

.field private final SERVER_TELECOM_NAME:Ljava/lang/String;

.field private final SETTINGSRECEIVER_NAME:Ljava/lang/String;

.field private final SETTINGS_NAME:Ljava/lang/String;

.field private final SYSTEMUI_NAME:Ljava/lang/String;

.field private final TELEPHONYUI_NAME:Ljava/lang/String;

.field private final USERID:Ljava/lang/String;

.field private final VVM_NAME:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContainerStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/SemPersonaState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDPMPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsContainerKioskMode:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private final mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStateReceiver:Landroid/os/ContainerStateReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    const-string/jumbo v0, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

    const-string v0, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->ACTION_SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String;

    const-string/jumbo v0, "userId"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->USERID:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.provider"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_PROVIDER_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.sync"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_SYNC_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.ui"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_UI_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.email.composer"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_COMPOSER_NAME:Ljava/lang/String;

    const-string v0, "com.android.email"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_NAME:Ljava/lang/String;

    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->MMS_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.messaging"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->MESSAGING_NAME:Ljava/lang/String;

    const-string v0, "com.kddi.android.cmail"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->CMAIL_NAME:Ljava/lang/String;

    const-string v0, "com.android.incallui"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->INCALLUI_NAME:Ljava/lang/String;

    const-string v0, "com.android.server.telecom"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SERVER_TELECOM_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.telephonyui"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->TELEPHONYUI_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.SettingsReceiver"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SETTINGSRECEIVER_NAME:Ljava/lang/String;

    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SYSTEMUI_NAME:Ljava/lang/String;

    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SETTINGS_NAME:Ljava/lang/String;

    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->PHONE_NAME:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->ANDROID_NAME:Ljava/lang/String;

    const-string v0, "com.sec.knox.switcher"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_SWITCHER_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.vvm"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->VVM_NAME:Ljava/lang/String;

    const-string v0, "com.wssyncmldm"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EFOTA_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.containercore"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOXCORE_NAME:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING_LOCKSCREEN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_IMPORT_DATA:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_EXPORT_DATA:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING:I

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$3;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mDPMPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$6;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->init()V

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->registerCallback()V

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->registerReceivers()V

    :cond_0
    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7202(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->notifyContainerStateChange(ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isContainerKioskMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKnoxName(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setPersonalManager()V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .locals 10

    const-string/jumbo v0, "true"

    const-string v1, "false"

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq p3, v4, :cond_2

    const/16 v4, 0x10

    if-eq p3, v4, :cond_1

    packed-switch p3, :pswitch_data_0

    return v5

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    nop

    :goto_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_6

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setPersonalManager()V

    iget-object v6, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v7, "persona_policy"

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaPolicyManager;

    if-nez v6, :cond_3

    return v5

    :cond_3
    const-string v7, "Notifications"

    invoke-virtual {v6, p1, v7, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "false"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {v2, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "KnoxStateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPolicy: threw an exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "KnoxStateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicy: policyProperty:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " policy value returned = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    return v3

    :cond_8
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 7

    const-string v0, "KnoxStateMonitor"

    const-string v1, "initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v3, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v4, v4, 0x8

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v4, v3, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v4, v4, 0x10

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget v4, v3, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v2, v3}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method private isContainerKioskMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return v0
.end method

.method private isNotificationSanitizedByDPM(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v4

    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_0

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    const-string v5, "TRUE"

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDPMPolicyForUserCache:Landroid/util/SparseArray;

    const-string v4, "FALSE"

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v1

    :cond_2
    const-string v3, "TRUE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private isPersona(I)Z
    .locals 3

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPersona for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method

.method private isPersonaInKioskMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private knoxContainerInLockMode(I)Z
    .locals 5

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get KnoxInLockMode for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaState;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get KnoxInLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method private knoxContainerInSuperLockMode(I)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get knoxInSuperLockMode for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get knoxInSuperLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method private notifyContainerStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    :cond_0
    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/KnoxStateMonitor$3;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    invoke-virtual {p2}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x138f

    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default state for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification state for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification state for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification state for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is superlocked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerCallback()V
    .locals 0

    return-void
.end method

.method private registerReceivers()V
    .locals 12

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.samsung.container.LAUNCH_INFO"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mDPMPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    iget-boolean v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "KnoxStateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add container observer= for userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " No. of users="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v4

    const-string v6, "KnoxStateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start: threw an exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.sec.knox.container.action.containerremovalstarted"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v6}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "com.samsung.container.OBSERVER"

    invoke-virtual {v6, v7, v4, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setContainerKioskMode(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersonaInKioskMode(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x139d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private setPersonalManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string v2, "com.android.incallui"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.server.telecom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.app.telephonyui"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.mms"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.messaging"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.kddi.android.cmail"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.settings"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.phone"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.vvm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.wssyncmldm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.knox.containercore"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v1, v4, Landroid/content/pm/UserInfo;->id:I

    :cond_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    if-nez p1, :cond_4

    const-string v4, "com.android.mms"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.samsung.android.messaging"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.kddi.android.cmail"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "KnoxStateMonitor"

    const-string v4, "----- filterOutForKnoxContainer:  Skipping com.android.mms notif for COM + ADMIN_LOCKED case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    const-string v1, "com.sec.knox.switcher"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    return v3
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v1, "com.samsung.knox.knoxtrustagent"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-string v1, "knox-sanitize-data"

    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v1

    const-string v2, "knox-sanitize-data-lockscreen"

    const/16 v3, 0x10

    invoke-direct {p0, p1, v2, v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInLockMode(I)Z

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isNotificationSanitizedByDPM(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "KnoxStateMonitor"

    const-string v5, "isKnoxNotificationSanitizeNeeded :: isNotificationSanitizedByDPM : true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    if-nez p4, :cond_2

    if-nez p5, :cond_8

    :cond_2
    if-eqz v2, :cond_3

    if-nez p5, :cond_8

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-nez v4, :cond_5

    if-eqz v3, :cond_4

    if-nez p4, :cond_8

    :cond_4
    if-eqz v1, :cond_5

    if-nez v3, :cond_8

    :cond_5
    const-string v4, "com.samsung.android.email.provider"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.samsung.android.email.sync"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.samsung.android.email.ui"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.samsung.android.email.composer"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.android.email"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    if-nez v3, :cond_8

    if-eqz p5, :cond_7

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.messaging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.kddi.android.cmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
