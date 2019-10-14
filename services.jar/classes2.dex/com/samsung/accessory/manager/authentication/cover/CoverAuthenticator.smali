.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "CoverAuthenticator.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
.implements Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
.implements Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;,
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    }
.end annotation


# static fields
.field private static final ACCESSORY_MANAGER_PERMISSION:Ljava/lang/String; = "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

.field private static final ACTION_AUTHENTICATION_RESULT:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_RESULT"

.field private static final ACTION_AUTHENTICATION_START:Ljava/lang/String; = "com.samsung.accessory.manager.action.START_AUTHENTICATION"

.field private static final ACTION_AUTHENTICATION_STATE_REPLY:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REPLY"

.field private static final ACTION_AUTHENTICATION_STATE_REQUEST:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

.field private static final ACTION_COVER_AUTH:Ljava/lang/String; = "com.samsung.android.isag.issmanager.ACTION_COVER_AUTH"

.field private static final ACTION_NFC_SERVICE_STARTED:Ljava/lang/String; = "com.sec.android.nfc.AUTH_READY"

.field private static final AUTH_PREPARE_TIMEOUT:J = 0x6978L

.field private static final AUTH_SCHEDULE_INTERVAL:J = 0x44aa200L

.field private static final AUTH_TIMEOUT:J = 0x2710L

.field private static final CHARGING_AUTH_INTERVAL:J = 0x5265c00L

.field static final COVER_ATTACH:I = 0x1

.field static final COVER_DETACH:I = 0x0

.field static final COVER_MONTH_10:I = 0xa

.field static final COVER_NOT_SUPPORT:I = -0x1

.field private static final COVER_TYPE_SECURITY:B = 0x0t

.field static final COVER_YEAR_2017:I = 0x12

.field static final COVER_YEAR_2018:I = 0x13

.field private static final DBG:Z

.field private static final ERROR_RESTART_TIME_MS:I = 0xc8

.field private static final ERROR_RESTART_TIME_MS_TIMEOUT:I = 0x12c

.field private static final FRONT_ACCESSORY:B = 0x11t

.field private static final FRONT_HALL_IC:I = 0x1

.field private static final FUZZ_TIMES:I = 0xdbba00

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x1

.field private static final MAX_RETRIES_WHEN_CONNECTIVITY_BUSY:I = 0x2

.field private static final MSG_AUTH_FORCE_UNVERIFY:I = 0x6

.field private static final MSG_AUTH_RESPONSE:I = 0x3

.field private static final MSG_AUTH_START:I = 0x2

.field private static final MSG_AUTH_STOP:I = 0x4

.field private static final MSG_AUTH_TIMEOUT:I = 0x5

.field private static final MSG_INITIALIZE:I = 0x1

.field private static final MSG_SET_AUTH_HALL:I = 0x7

.field private static final PACKAGE_ISS_MANAGER:Ljava/lang/String; = "com.samsung.android.isag.issmanager"

.field private static final PERMISSION_COVER_AUTH:Ljava/lang/String; = "com.samsung.android.isag.issmanager.permission.COVER_AUTH"

.field private static final PowerConnected:I = 0x1

.field private static final PowerDisconnected:I = 0x0

.field private static final REAR_HALL_IC:I = 0x0

.field private static final RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_COVER_ATTACHED:I = 0x1

.field private static final TYPE_ON_FIRST_BOOT:I = 0x2

.field private static final TYPE_RESTRICTION_CHANGED:I = 0x4

.field private static final TYPE_SCHEDULED_WHEN_CHARGING:I = 0x3

.field private static USE_SCHEDULED_AUTHENTICATION:Z = false

.field private static USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z = false

.field private static final VDBG:Z = true


# instance fields
.field currentHall:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthAlarmSet:Z

.field private mAuthType:I

.field final mAuthenticationHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

.field mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

.field mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field mCoverAttachedWhenNanos:J

.field private mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

.field mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field private mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCurrentPowerSouce:I

.field mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field mDeviceProvisioned:Z

.field mFactoryIntent:Landroid/content/Intent;

.field mFactoryReceiver:Landroid/content/BroadcastReceiver;

.field mFactoryTestRequested:Z

.field private mFailuresCount:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field mIsFactoryBinary:Z

.field volatile mIsShutingdown:Z

.field private mLastAttachTime:J

.field private volatile mLastAuthenticationTime:J

.field mLastCoverState:Lcom/samsung/android/cover/CoverState;

.field private mLastDetachTime:J

.field mNfcServiceReady:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field volatile mPreparing:Z

.field mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

.field final mResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCounterFactoryTest:I

.field private mRetryCounterWhenBusy:I

.field mRunAuthIntent:Landroid/app/PendingIntent;

.field private mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

.field mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field mSystemReady:Z

.field private mUriData:[B

.field modelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".action.AUTHENTICATION_INTERVAL_ELAPSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V
    .registers 9

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBootCompleted:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDeviceProvisioned:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    const-string v2, "Samsung Mobile"

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->initialize()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthStart()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    return v0
.end method

.method static synthetic access$1608(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 3

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthAlarm()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 2

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->readyToStartAuthentication()V

    return-void
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J
    .registers 3

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    return-wide p1
.end method

.method static synthetic access$2400()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isLedCover()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    return-void
.end method

.method static synthetic access$3102(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    return p1
.end method

.method private checkCurrentHall()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v1, -0x100

    const/4 v2, -0x1

    const/16 v3, 0x1b

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    :cond_1a
    return-void
.end method

.method private getCoverSwitchState()I
    .registers 5

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const/16 v1, -0x100

    const/4 v2, -0x1

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x1b

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0

    :cond_10
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private handleAuthResponse(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v6, p0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthResponse"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    if-nez v0, :cond_27

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthResponse, mCurrentSession is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_27
    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget v1, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setCurrentHall(I)V

    iget-boolean v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4a

    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    if-ge v0, v1, :cond_4a

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_44

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "This is unlikely indicates that cover is detached while authenticating"

    invoke-static {v0, v1}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_4a
    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v0, "reason"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    iget-boolean v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const-wide/16 v2, 0x12c

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_a3

    iget-boolean v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    if-eqz v0, :cond_a3

    const/4 v0, 0x0

    new-instance v15, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    move-object v1, v15

    if-nez v14, :cond_81

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v15

    if-eqz v15, :cond_81

    const/4 v0, 0x1

    :cond_81
    if-nez v0, :cond_8b

    iget v15, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    if-ge v15, v4, :cond_8b

    invoke-direct {v6, v5, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_97

    :cond_8b
    iput-boolean v5, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    iget-object v2, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v3, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v2, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    :goto_97
    iget v2, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    iget-object v2, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_a3
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    move-object v15, v0

    if-nez v14, :cond_197

    iget-object v2, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getPublicKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_cf

    if-nez v2, :cond_cf

    if-nez v3, :cond_cf

    const/4 v8, 0x1

    goto :goto_f9

    :cond_cf
    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is ID valid ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyBlocked ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPackageBlocked? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f9
    const/4 v7, 0x1

    invoke-virtual {v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getReserved()B

    move-result v10

    const/16 v0, 0x11

    if-ne v10, v0, :cond_106

    const/4 v0, 0x1

    iput v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    goto :goto_109

    :cond_106
    const/4 v0, 0x1

    iput v5, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    :goto_109
    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v1

    if-ne v1, v0, :cond_162

    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x7

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getYear()I

    move-result v0

    invoke-virtual {v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getMonth()I

    move-result v1

    invoke-direct {v6, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isVerifiedCoverYear(II)Z

    move-result v0

    if-nez v0, :cond_140

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "This cover is not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x5d

    invoke-virtual {v12, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v14

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v1

    invoke-virtual {v6, v14, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    move v8, v0

    move-wide v0, v4

    goto :goto_17f

    :cond_140
    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v0

    invoke-virtual {v6, v14, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accessory = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    goto :goto_17f

    :cond_162
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    const/16 v8, 0x5c

    invoke-virtual {v12, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v14

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v8

    invoke-virtual {v6, v14, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    iput v5, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    sget-object v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v8, "Authentication is success, but Accessory is detached."

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v4

    :goto_17f
    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "auth reason = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_279

    :cond_197
    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v0

    invoke-virtual {v6, v14, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v14, v0, :cond_1ba

    const/4 v7, 0x1

    goto/16 :goto_279

    :cond_1ba
    const/16 v0, 0xb

    if-eq v14, v0, :cond_272

    const/16 v0, 0x1e

    if-ne v14, v0, :cond_1c4

    goto/16 :goto_272

    :cond_1c4
    const/16 v0, 0x1f

    if-ne v14, v0, :cond_1d2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v0, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    goto/16 :goto_279

    :cond_1d2
    const/16 v0, 0xc

    if-ne v14, v0, :cond_1e1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v0, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    const/4 v7, 0x1

    goto/16 :goto_279

    :cond_1e1
    const/16 v0, 0xd

    const/4 v1, 0x5

    if-ne v14, v0, :cond_210

    iget v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    if-ge v0, v4, :cond_203

    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_203

    iget v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1388

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJJ)V

    goto/16 :goto_279

    :cond_203
    iput v5, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v0, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    const/4 v7, 0x1

    goto/16 :goto_279

    :cond_210
    const/16 v0, 0x14

    const/16 v2, 0xa

    const/16 v3, 0x16

    if-eq v14, v0, :cond_258

    const/16 v0, 0x15

    if-eq v14, v0, :cond_258

    if-eq v14, v3, :cond_258

    const/16 v0, 0x17

    if-eq v14, v0, :cond_258

    const/16 v0, 0x18

    if-eq v14, v0, :cond_258

    const/16 v0, 0x20

    if-eq v14, v0, :cond_258

    if-eq v14, v2, :cond_258

    const/16 v0, 0x5a

    if-eq v14, v0, :cond_258

    const/16 v0, 0x19

    if-eq v14, v0, :cond_258

    const/16 v0, 0x1a

    if-eq v14, v0, :cond_258

    const/16 v0, 0x1b

    if-eq v14, v0, :cond_258

    const/16 v0, 0x28

    if-eq v14, v0, :cond_258

    const/16 v0, 0x29

    if-eq v14, v0, :cond_258

    const/16 v0, 0x2a

    if-eq v14, v0, :cond_258

    const/16 v0, 0x2b

    if-eq v14, v0, :cond_258

    const/16 v0, 0x2c

    if-eq v14, v0, :cond_258

    const/16 v0, 0x2d

    if-eq v14, v0, :cond_258

    const/16 v0, 0x2e

    if-ne v14, v0, :cond_279

    :cond_258
    if-eq v14, v3, :cond_264

    if-eq v14, v2, :cond_264

    const/16 v0, 0xe

    if-ne v14, v0, :cond_261

    goto :goto_264

    :cond_261
    const-wide/16 v2, 0xc8

    goto :goto_266

    :cond_264
    :goto_264
    const-wide/16 v2, 0x12c

    :goto_266
    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_279

    invoke-direct {v6, v5, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_279

    :cond_272
    :goto_272
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "do nothing.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_279
    :goto_279
    if-eqz v7, :cond_28b

    iget v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    if-nez v0, :cond_283

    invoke-direct {v6, v8, v9, v15, v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_286

    :cond_283
    invoke-direct {v6, v8, v15, v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :goto_286
    const-wide/16 v0, 0x0

    invoke-direct {v6, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    :cond_28b
    iget-object v0, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private handleAuthStart()V
    .registers 7

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const/4 v1, 0x1

    if-nez v0, :cond_28

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    if-ge v0, v1, :cond_28

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "This is unlikely indicates that cover is detached while starting auth"

    invoke-static {v0, v1}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_43

    if-eq v0, v1, :cond_43

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "session is busy"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_43
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v4, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v4

    if-ne v4, v2, :cond_67

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "connectivity_type"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object p0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v4, v3, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    goto :goto_70

    :cond_67
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v2, v3, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    :goto_70
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private initialize()V
    .registers 10

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "Initialize cover authenticator"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->readFile()V

    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->setCertBlacklistListener(Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->readFile()V

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nfc restriction policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DetachTimeoutWakeLock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_ac

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    :cond_ac
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v3, "SM-F900"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b8

    sput-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    :cond_b8
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v0, :cond_ec

    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    new-instance v6, Landroid/content/IntentFilter;

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_ec
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.nfc.AUTH_READY"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v1, :cond_14f

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->registerBatteryReceiver()V

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isDeviceProvisioned()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDeviceProvisioned:Z

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDeviceProvisioned:Z

    if-nez v1, :cond_14f

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_14f
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    return-void
.end method

.method private isAuthenticationBlocked()Z
    .registers 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    goto :goto_61

    :cond_d
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isAuthenticationBlocked()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v1, :cond_61

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v2, "Authentication is blocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_22
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v1

    if-nez v1, :cond_61

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v1

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_34

    goto :goto_3b

    :cond_34
    const/4 v2, 0x1

    if-ne v1, v2, :cond_47

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerifiedAlt()V

    goto :goto_47

    :cond_3b
    :goto_3b
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_47
    :goto_47
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_61

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication is blocked.. type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :goto_61
    return v0
.end method

.method private isAuthenticationReady()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDeviceProvisioned:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private isLedCover()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isPackageExist(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v1, 0x1

    return v1

    :cond_25
    goto :goto_f

    :cond_26
    return v1
.end method

.method private isVerifiedCoverYear(II)Z
    .registers 11

    move v0, p1

    move v1, p2

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    return v3

    :cond_8
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coverYear : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , phoneModel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v4, "SM-N935"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eqz v2, :cond_38

    if-ge v0, v4, :cond_38

    return v5

    :cond_38
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v6, "SM-N960"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v6, 0x13

    if-eqz v2, :cond_47

    if-ge v0, v6, :cond_47

    return v5

    :cond_47
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v7, "SM-G97"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    if-ge v0, v6, :cond_54

    return v5

    :cond_54
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v6, "SM-G960"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v6, "SM-G965"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_71

    :cond_68
    if-ne v0, v4, :cond_6e

    const/16 v2, 0xa

    if-lt v1, v2, :cond_70

    :cond_6e
    if-ge v0, v4, :cond_71

    :cond_70
    return v5

    :cond_71
    return v3
.end method

.method private notifyFriendsStateChanged(Z[B[B)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v0, :cond_e

    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    :cond_e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->accessoryStateChanged(Z[B[B)V

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private readyToStartAuthentication()V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->checkCurrentHall()V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2c

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ready to authenticate the cover"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_47

    :cond_2c
    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v1, :cond_47

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ready to authenticate the cover but a cover attach state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void
.end method

.method private registerBatteryReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private scheduleAuthenticationTimeOuts(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendFactoryResult()V
    .registers 8

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    if-nez v0, :cond_c

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "factory intent is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const-string v1, ""

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    array-length v2, v2

    const/16 v3, 0x17

    if-lt v2, v3, :cond_45

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    if-eqz v0, :cond_a1

    new-instance v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v3

    if-nez v3, :cond_6a

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6a

    const-string v3, "OK"

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getCoverId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_6a
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v3

    if-nez v3, :cond_82

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_82

    const-string v3, "NG_ID"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_82
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_95

    const-string v3, "NG_KEY"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_95
    const-string v3, "NG_NFC"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a0
    goto :goto_ac

    :cond_a1
    const-string v2, "NG_NFC"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_ac
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendToIssManager()V
    .registers 4

    const-string v0, "com.samsung.android.isag.issmanager"

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isPackageExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "send to iss manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.isag.issmanager.ACTION_COVER_AUTH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.isag.issmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.isag.issmanager.permission.COVER_AUTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method private setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v1, "result_factory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v1, "serial_factory"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string v1, "id_factory"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v1, "serviceid_factory"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_29

    const-string v0, "OK"

    goto :goto_2b

    :cond_29
    const-string v0, "NG"

    :goto_2b
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string v2, "attachInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-virtual {p0, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getDateFromUTC(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string v2, "detachInfo"

    iget-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-virtual {p0, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getDateFromUTC(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v2}, Lcom/samsung/android/cover/CoverState;-><init>()V

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverState;->setFakeCover(Z)V

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x11

    const/16 v7, 0x20

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_1c2

    invoke-virtual {v2, v10}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getColor()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/samsung/android/cover/CoverState;->setColor(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getModel()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/samsung/android/cover/CoverState;->setModel(I)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/samsung/android/cover/CoverState;->setSmartCoverAppUri(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/samsung/android/cover/CoverState;->setSmartCoverCookie([B)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v11

    iput-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    iget-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 v12, 0x4

    const/16 v13, 0x17

    if-eqz v11, :cond_53

    iget-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    array-length v11, v11

    if-ne v11, v13, :cond_53

    iget-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    aget-byte v4, v11, v12

    iget-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 v14, 0x5

    aget-byte v5, v11, v14

    :cond_53
    invoke-virtual {v2, v9}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSmapp()I

    move-result v11

    const/4 v14, 0x2

    if-nez v11, :cond_6c

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/samsung/android/cover/CoverState;->setSerialNumber(Ljava/lang/String;)V

    goto :goto_96

    :cond_6c
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSmapp()I

    move-result v11

    if-ne v11, v10, :cond_78

    const/16 v8, 0xff

    invoke-virtual {v2, v8}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    goto :goto_96

    :cond_78
    iget-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v11, :cond_93

    if-ne v4, v10, :cond_93

    if-eq v5, v8, :cond_93

    invoke-virtual {v2, v14}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    if-ne v5, v10, :cond_89

    invoke-virtual {v2, v10}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    goto :goto_96

    :cond_89
    const/4 v8, 0x3

    if-ne v5, v8, :cond_96

    invoke-virtual {v2, v9}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    invoke-virtual {v2, v14}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    goto :goto_96

    :cond_93
    invoke-virtual {v2, v14}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    :cond_96
    :goto_96
    iput-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    iget v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    if-nez v8, :cond_ba

    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/os/PowerManager;->setCoverType(I)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v8

    if-nez v8, :cond_ba

    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendToIssManager()V

    :cond_ba
    iget v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    if-eq v8, v10, :cond_c2

    iget v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    if-ne v8, v14, :cond_1a4

    :cond_c2
    sget-boolean v8, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v8, :cond_e0

    sget-object v8, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "coverInfo.getUrl: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    new-instance v8, Landroid/content/Intent;

    const-string v11, "com.sec.android.app.applinker.REQUEST_LINK"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/content/Intent;

    const-string v15, "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_COMPLETE"

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v15

    if-eqz v15, :cond_16d

    const-string v15, "DEVICE_TYPE"

    const-string v9, "cover"

    invoke-virtual {v8, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "URI"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v9, "ID"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v9, "EXTRA"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v9, :cond_15d

    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    array-length v9, v9

    if-lt v9, v13, :cond_15d

    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    aget-byte v9, v9, v10

    if-lt v9, v6, :cond_14d

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    aget-byte v6, v6, v10

    if-ge v6, v7, :cond_14d

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    aget-byte v6, v6, v12

    if-ne v6, v14, :cond_13c

    const-string v6, "DEVICE_TYPE"

    const-string v7, "cover"

    invoke-virtual {v11, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_143

    :cond_13c
    const-string v6, "DEVICE_TYPE"

    const-string v7, "friends"

    invoke-virtual {v11, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_143
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object v7

    invoke-direct {v0, v10, v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    goto :goto_19f

    :cond_14d
    const-string v6, "DEVICE_TYPE"

    const-string/jumbo v7, "smapp"

    invoke-virtual {v11, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_19f

    :cond_15d
    sget-object v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "uri data is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_19f

    :cond_16d
    const-string v6, "DEVICE_TYPE"

    const-string v7, "cover"

    invoke-virtual {v11, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "DEVICE_TYPE"

    const-string/jumbo v7, "s_cover"

    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "URI"

    new-array v7, v14, [B

    fill-array-data v7, :array_20e

    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v6, "ID"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v6, "EXTRA"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_19f
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1a4
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v9

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->writeFile([B[B[B)V
    invoke-static {v6, v7, v8, v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$1000(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthAlarm()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    const/4 v6, 0x0

    iput v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    goto :goto_20c

    :cond_1c2
    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v9, v8}, Landroid/os/PowerManager;->setCoverType(I)V

    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v8, :cond_1d6

    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    :cond_1d6
    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v9, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    if-eqz v9, :cond_20c

    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v9, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    const/16 v11, 0x15

    aget-byte v9, v9, v11

    if-ne v9, v10, :cond_20c

    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v9, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    if-eqz v9, :cond_20c

    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v9, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    aget-byte v9, v9, v10

    if-lt v9, v6, :cond_20c

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v6, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    aget-byte v6, v6, v10

    if-ge v6, v7, :cond_20c

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 v7, 0x0

    invoke-direct {v0, v7, v6, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    iput-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    :cond_20c
    :goto_20c
    return-void

    nop

    :array_20e
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method private setCoverVerifiedAlt()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCoverVerifiedAlt"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4d

    new-instance v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    :cond_32
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    :cond_3f
    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const/4 v3, 0x1

    if-nez v2, :cond_49

    const/4 v2, 0x0

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_4c

    :cond_49
    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :goto_4c
    goto :goto_54

    :cond_4d
    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v2, "Id is not valid.."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 7

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAccessoryVerified"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_43

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    if-ne v0, v1, :cond_4c

    :cond_1a
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    array-length v0, v0

    if-lt v0, v1, :cond_4c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    aget-byte v0, v0, v2

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    aget-byte v0, v0, v2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    goto :goto_4c

    :cond_43
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    :cond_4c
    :goto_4c
    return-void
.end method

.method private startAuthAlarm()V
    .registers 7

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    if-nez v0, :cond_34

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v0, :cond_34

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "Schedule an authentication alarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x44aa200

    add-long/2addr v1, v3

    const v3, 0xdbba00

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_34
    return-void
.end method

.method private startAuthentication(ZJ)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    if-eqz p1, :cond_17

    const-wide/16 v0, 0x6978

    invoke-direct {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    :cond_17
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startAuthentication(ZJJ)V
    .registers 8

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    if-eqz p1, :cond_12

    invoke-direct {p0, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    :cond_12
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopAuthAlarm()V
    .registers 3

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v0, :cond_1a

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAuthAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1a
    return-void
.end method

.method private stopAuthentication(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method addRecord(II)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_f
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v0, :cond_e

    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    :cond_e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public byteArrayToString([B)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    array-length v3, p1

    if-ge v2, v3, :cond_23

    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_28
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string v0, " Current CoverAuthenticator state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz v0, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  auth reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  auth uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  auth extra data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringExtraData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_57
    const-string v1, "  Historical authentication: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_5d
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_84

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFactoryTestRequested = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastAuthenticationTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isAuthenticatonAllowed? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getBlockedType? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isAuthenticationBlocked? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isAuthenticationBlocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastAttachTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastDetachTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFailuresCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDateFromUTC(J)Ljava/lang/String;
    .registers 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_2c

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v1, "%ty-%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const/4 v3, 0x6

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2c
    const-string v1, ""

    return-object v1
.end method

.method public isDeviceProvisioned()Z
    .registers 6

    const-string v0, "VZW"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_ConfigOpSetupWizard"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_3e

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupwizard not completed, provisioned = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3e
    return v1
.end method

.method public onAuthenticationBlocked(Z)V
    .registers 5

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessage(I)Z

    goto :goto_f

    :cond_9
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    :goto_f
    return-void
.end method

.method public onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAuthenticationStarted()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCertBlacklistChanged()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCoverAttached(JZI)V
    .registers 11

    iput p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v0, :cond_49

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_49

    :cond_d
    const-wide/16 v0, 0x0

    if-eqz p3, :cond_20

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_48

    :cond_20
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_35

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    sub-long v0, p1, v0

    const-wide/32 v4, 0x1dcd6500

    cmp-long v0, v0, v4

    if-gez v0, :cond_35

    const-wide/16 v2, 0x1f4

    :cond_35
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    :goto_48
    return-void

    :cond_49
    :goto_49
    return-void
.end method

.method public onNfcRestrictionPolicyChanged(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNfcRestrictionPolicyChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method removeAuthenticationTimeOuts()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    return-void
.end method

.method public systemReady()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessage(I)Z

    return-void
.end method
