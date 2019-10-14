.class public Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "UsbAuthenticator.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;
    }
.end annotation


# static fields
.field private static final AUTH_PREPARE_TIMEOUT:J = 0x6978L

.field private static final AUTH_TIMEOUT:J = 0x2710L

.field private static final DBG:Z

.field private static final ERROR_RESTART_TIME_MS:I = 0xc8

.field private static final ERROR_RESTART_TIME_MS_TIMEOUT:I = 0x12c

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x1

.field private static final MAX_RETRIES_WHEN_CONNECTIVITY_BUSY:I = 0x2

.field private static final MSG_AUTH_FORCE_UNVERIFY:I = 0x6

.field private static final MSG_AUTH_RESPONSE:I = 0x3

.field private static final MSG_AUTH_START:I = 0x2

.field private static final MSG_AUTH_STOP:I = 0x4

.field private static final MSG_AUTH_TIMEOUT:I = 0x5

.field private static final MSG_INITIALIZE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = true


# instance fields
.field USB_ATTACHED:I

.field USB_DETACHED:I

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

.field private mContext:Landroid/content/Context;

.field mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field private mFailuresCount:I

.field mIsFactoryBinary:Z

.field volatile mIsShutingdown:Z

.field private mLastAttachTime:J

.field private volatile mLastAuthenticationTime:J

.field private mLastDetachTime:J

.field private mPowerManager:Landroid/os/PowerManager;

.field volatile mPreparing:Z

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

.field private mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSystemReady:Z

.field private mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field private mUriData:[B

.field mUsbAttachedWhenNanos:J

.field private mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

.field private mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field usbState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V
    .registers 7

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAuthenticationTime:J

    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAttachTime:J

    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastDetachTime:J

    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterFactoryTest:I

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_ATTACHED:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_DETACHED:I

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsShutingdown:Z

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsFactoryBinary:Z

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_DETACHED:I

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-direct {v0, p0, p2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->setUsbVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;ZJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication(ZJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->initialize()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->handleAuthResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->handleAuthStart()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    return v0
.end method

.method static synthetic access$908(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)I
    .registers 3

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    return v0
.end method

.method private handleAuthResponse(Landroid/os/Message;)V
    .registers 16

    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthResponse"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "reason"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    if-nez v4, :cond_47

    const/4 v1, 0x1

    const/4 v0, 0x1

    goto/16 :goto_b8

    :cond_47
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4d

    const/4 v0, 0x1

    goto/16 :goto_b8

    :cond_4d
    const/16 v7, 0xb

    if-eq v4, v7, :cond_b1

    const/16 v7, 0x1e

    if-ne v4, v7, :cond_56

    goto :goto_b1

    :cond_56
    const/16 v7, 0x1f

    const/4 v8, 0x2

    if-ne v4, v7, :cond_64

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->removeMessages(I)V

    goto :goto_b8

    :cond_64
    const/16 v7, 0xc

    if-ne v4, v7, :cond_72

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->removeMessages(I)V

    const/4 v0, 0x1

    goto :goto_b8

    :cond_72
    const/16 v7, 0xd

    const/4 v9, 0x0

    const/4 v10, 0x5

    if-ne v4, v7, :cond_9f

    iget v7, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    if-ge v7, v8, :cond_93

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v7, v10}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_93

    iget v7, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    const/4 v9, 0x1

    const-wide/16 v10, 0x2710

    const-wide/16 v12, 0x1388

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication(ZJJ)V

    goto :goto_b8

    :cond_93
    iput v9, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->removeMessages(I)V

    const/4 v0, 0x1

    goto :goto_b8

    :cond_9f
    const/16 v6, 0x5a

    if-ne v4, v6, :cond_b8

    const-wide/16 v6, 0x12c

    iget-object v8, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v8, v10}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_b8

    invoke-direct {p0, v9, v6, v7}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication(ZJ)V

    goto :goto_b8

    :cond_b1
    :goto_b1
    sget-object v6, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string v7, "do nothing.."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    :goto_b8
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v6

    invoke-virtual {p0, v4, v6}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->addRecord(II)V

    if-eqz v0, :cond_c9

    invoke-direct {p0, v1, v5, v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->setUsbVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    const-wide/16 v6, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->stopAuthentication(J)V

    :cond_c9
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private handleAuthStart()V
    .registers 7

    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_28

    if-eq v0, v2, :cond_28

    sget-object v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "session is busy"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_28
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v4, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v4

    if-ne v4, v1, :cond_4d

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "connectivity_type"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object p0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v4, v3, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    goto :goto_56

    :cond_4d
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v1, v3, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    :goto_56
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private initialize()V
    .registers 6

    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "Initialize usb authenticator"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsFactoryBinary:Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DetachTimeoutWakeLock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->authenticationReady()V

    return-void
.end method

.method private isAuthenticationReady()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsShutingdown:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private notifyFriendsStateChanged(Z[B[B)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v0, :cond_e

    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    :cond_e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->accessoryStateChanged(Z[B[B)V

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleAuthenticationTimeOuts(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setUsbVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 7

    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUsbVerified"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3b

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_44

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/16 v2, 0x11

    if-lt v0, v2, :cond_44

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    aget-byte v0, v0, v1

    const/16 v2, 0x20

    if-ge v0, v2, :cond_44

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    goto :goto_44

    :cond_3b
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    :cond_44
    :goto_44
    return-void
.end method

.method private startAuthentication(ZJ)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->removeMessages(I)V

    if-eqz p1, :cond_17

    const-wide/16 v0, 0x6978

    invoke-direct {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    :cond_17
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startAuthentication(ZJJ)V
    .registers 8

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->removeMessages(I)V

    if-eqz p1, :cond_12

    invoke-direct {p0, p2, p3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    :cond_12
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopAuthentication(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method addRecord(II)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_f
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string v0, " Current UsbAuthenticator state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz v0, :cond_27

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

    :cond_27
    const-string v1, "  Historical authentication: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2d
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastAuthenticationTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAuthenticationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastAttachTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAttachTime:J

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

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastDetachTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAuthenticationStarted()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsbAttached(JZ)V
    .registers 10

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsFactoryBinary:Z

    if-nez v0, :cond_4d

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4d

    :cond_b
    const-wide/16 v0, 0x0

    if-eqz p3, :cond_20

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_ATTACHED:I

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAttachTime:J

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication(ZJ)V

    goto :goto_4c

    :cond_20
    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_DETACHED:I

    iput v4, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_39

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    sub-long v0, p1, v0

    const-wide/32 v4, 0x1dcd6500

    cmp-long v0, v0, v4

    if-gez v0, :cond_39

    const-wide/16 v2, 0x1f4

    :cond_39
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastDetachTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->stopAuthentication(J)V

    :goto_4c
    return-void

    :cond_4d
    :goto_4d
    return-void
.end method

.method removeAuthenticationTimeOuts()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->removeMessages(I)V

    return-void
.end method

.method public systemReady()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->sendEmptyMessage(I)Z

    return-void
.end method
