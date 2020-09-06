.class public Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field public static final ACTION_ICCID_AVAILABLE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ICCID_AVAILABLE_INTERNAL"

.field public static final ACTION_RCS_MSG_FILE_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_RECEIVED"

.field public static final ACTION_RCS_MSG_FILE_SENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_SENT"

.field public static final ACTION_RCS_MSG_FILE_THUMBNAIL_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_THUMBNAIL_RECEIVED"

.field public static final ACTION_RCS_MSG_TEXT_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_RECEIVED"

.field public static final ACTION_RCS_MSG_TEXT_SENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_SENT"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final ERROR_DATABASE_OPERATION:I = -0x4

.field public static final ERROR_INVALID_INPUT:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_SIM_NOT_INSERTED:I = 0xd

.field public static final ERROR_SIM_PIN_ALREADY_LOCKED:I = 0x4

.field public static final ERROR_SIM_PIN_ALREADY_LOCKED_BY_ADMIN:I = 0xb

.field public static final ERROR_SIM_PIN_ALREADY_UNLOCKED:I = 0x5

.field public static final ERROR_SIM_PIN_BLOCKED_BY_PUK:I = 0x6

.field public static final ERROR_SIM_PIN_DATABASE:I = 0xa

.field public static final ERROR_SIM_PIN_FAILED:I = 0x1

.field public static final ERROR_SIM_PIN_ID_NOT_READY:I = 0x9

.field public static final ERROR_SIM_PIN_INCORRECT_CODE:I = 0x3

.field public static final ERROR_SIM_PIN_INVALID_CODE:I = 0x2

.field public static final ERROR_SIM_PIN_MAX_RETRIES_EXCEEDED:I = 0x8

.field public static final ERROR_SIM_PIN_NONE:I = 0x0

.field public static final ERROR_SIM_PIN_OWNED_BY_OTHER_ADMIN:I = 0xc

.field public static final ERROR_SIM_PIN_UNKNOWN:I = 0x64

.field public static final ERROR_UNKNOWN:I = -0x2

.field public static final EXTRA_MSG_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_SIM_PIN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SIM_PIN_INTERNAL"

.field public static final FILE_PATH:Ljava/lang/String; = "file-path"

.field public static final LIMIT_NUMBER_OF_CALLS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_CALLS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_CALLS_BY_WEEK:I = 0x1

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_WEEK:I = 0x1

.field public static final LIMIT_NUMBER_OF_SMS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_SMS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_SMS_BY_WEEK:I = 0x1

.field private static final METHOD_NOT_COMPATIBLE_WITH_SIM_SPECIFICATION:Ljava/lang/String; = "This method does not support iccId being specified by administrator."

.field public static final OP_DATA_ALLOWED:I = 0x1

.field public static final OP_INCOMING_CALL_ALLOWED:I = 0x2

.field public static final OP_INCOMING_SMS_ALLOWED:I = 0x4

.field public static final OP_MMS_ALLOWED:I = 0x6

.field public static final OP_OUTGOING_CALL_ALLOWED:I = 0x3

.field public static final OP_OUTGOING_SMS_ALLOWED:I = 0x5

.field public static final PERMISSION_NOTIFY_ICCID_AVAILABLE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NOTIFY_ICCID_AVAILABLE_INTERNAL"

.field public static final RCS_FEATURE_ALL:I = 0x1

.field public static final REMOTE_URI:Ljava/lang/String; = "remote-uri"

.field public static final SENDER_ALIAS:Ljava/lang/String; = "sender-alias"

.field public static final SIM_SLOT_0:I = 0x0

.field public static final SIM_SLOT_1:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final THUMBNAIL_PATH:Ljava/lang/String; = "thumbnail-path"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mIccId:Ljava/lang/String;

.field private mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "PhoneRestrictionPolicy"

    sput-object v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method private getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;
    .registers 4

    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method does not support iccId being specified by administrator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    if-nez v0, :cond_24

    const-string/jumbo v0, "phone_restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    :cond_24
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    return-object v0
.end method


# virtual methods
.method public addIncomingCallExceptionPattern(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addIncomingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed addIncomingCallExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public addIncomingCallRestriction(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addIncomingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addIncomingSmsExceptionPattern(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addIncomingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed addIncomingSmsExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public addIncomingSmsRestriction(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addIncomingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addNumberOfIncomingCalls()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public addNumberOfIncomingSms()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public addNumberOfOutgoingCalls()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public addNumberOfOutgoingSms()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public addOutgoingCallExceptionPattern(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addOutgoingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed addOutgoingCallExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public addOutgoingCallRestriction(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addOutgoingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addOutgoingSmsExceptionPattern(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addOutgoingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed addOutgoingSmsExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public addOutgoingSmsRestriction(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addOutgoingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public allowCallerIDDisplay(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowCallerIDDisplay"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to block caller id display "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public allowCopyContactToSim(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowCopyContactToSim"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowCopyContactToSim(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public allowDataNetworkFromSimSlot(IZ)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1a

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowDataNetworkFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, -0x2

    return v0
.end method

.method public allowIncomingCallFromSimSlot(IZ)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1a

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, -0x2

    return v0
.end method

.method public allowIncomingMms(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowIncomingMms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set incoming MMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public allowIncomingSms(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowIncomingSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set incoming SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public allowIncomingSmsFromSimSlot(IZ)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1a

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, -0x2

    return v0
.end method

.method public allowMmsFromSimSlot(IZ)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1a

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowMmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, -0x2

    return v0
.end method

.method public allowOutgoingCallFromSimSlot(IZ)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1a

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, -0x2

    return v0
.end method

.method public allowOutgoingMms(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowOutgoingMms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set outgoing MMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public allowOutgoingSms(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowOutgoingSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set outgoing SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public allowOutgoingSmsFromSimSlot(IZ)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1a

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, -0x2

    return v0
.end method

.method public allowWapPush(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowWapPush"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowWapPush(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to allow wap push"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public blockMmsWithStorage(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.blockMmsWithStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->blockMmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to block MMS with storage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public blockSmsWithStorage(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.blockSmsWithStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->blockSmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to block SMS with storage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public changeSimPinCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.changeSimPinCode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_34

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->changeSimPinCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19

    return v0

    :catch_19
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed changeSimPinCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/16 v0, 0x64

    return v0
.end method

.method public checkDataCallLimit()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to checkDataCallLimit"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to checkEnableUseOfPacketData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public clearStoredBlockedMms()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.clearStoredBlockedMms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->clearStoredBlockedMms(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to clear stored blocked mms"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearStoredBlockedSms()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.clearStoredBlockedSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->clearStoredBlockedSms(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to clear stored blocked sms"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public disableSimPinLock(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.disableSimPinLock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_35

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->lockUnlockCorporateSimCard(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed disableSimPinLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/16 v0, 0x64

    return v0
.end method

.method public enableLimitNumberOfCalls(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.enableLimitNumberOfCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->enableLimitNumberOfCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public enableLimitNumberOfSms(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.enableLimitNumberOfSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->enableLimitNumberOfSms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public enableSimPinLock(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.enableSimPinLock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_34

    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->lockUnlockCorporateSimCard(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19

    return v0

    :catch_19
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed enableSimPinLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/16 v0, 0x64

    return v0
.end method

.method public getDataCallLimitEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getDataCallLimitEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getDisclaimerText()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_2a

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed getDisclaimerText"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmergencyCallOnly(Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getIncomingCallExceptionPatterns()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getIncomingCallExceptionPatterns"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_32

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed getIncomingCallExceptionPatterns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIncomingCallRestriction(Z)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getIncomingCallRestriction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIncomingSmsExceptionPatterns()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getIncomingSmsExceptionPatterns"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_32

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed getIncomingSmsExceptionPatterns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIncomingSmsRestriction(Z)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getIncomingSmsRestriction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLimitOfDataCalls(I)J
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getLimitOfDataCalls"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    move-result-wide v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-wide v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getLimitOfDataCalls"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLimitOfIncomingCalls(I)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getLimitOfIncomingCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public getLimitOfIncomingSms(I)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getLimitOfIncomingSms"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public getLimitOfOutgoingCalls(I)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getLimitOfOutgoingCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public getLimitOfOutgoingSms(I)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getLimitOfOutgoingSms"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public getOutgoingCallExceptionPatterns()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getOutgoingCallExceptionPatterns"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_32

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed getOutgoingCallExceptionPatterns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutgoingCallRestriction(Z)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getOutgoingCallRestriction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutgoingSmsExceptionPatterns()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getOutgoingSmsExceptionPatterns"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_32

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed getOutgoingSmsExceptionPatterns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getOutgoingSmsRestriction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPinCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_29

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed getPinCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const-string v0, ""

    return-object v0
.end method

.method public getRCSMessage(J)Landroid/os/Bundle;
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_2a

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getRCSMessage(Lcom/samsung/android/knox/ContextInfo;J)Landroid/os/Bundle;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed getRCSMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public isBlockMmsWithStorageEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get status of block MMS with storage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockSmsWithStorageEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get status of block SMS with storage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isCallerIDDisplayAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getting caller id display status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isCopyContactToSimAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isDataAllowedFromSimSlot(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isIncomingCallAllowedFromSimSlot(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingCallAllowedFromSimSlot(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isIncomingMmsAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get incoming MMS status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isIncomingSmsAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get incoming SMS status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isIncomingSmsAllowedFromSimSlot(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingSmsAllowedFromSimSlot(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isLimitNumberOfCallsEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isMmsAllowedFromSimSlot(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isMmsAllowedFromSimSlot(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isOutgoingCallAllowedFromSimSlot(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingCallAllowedFromSimSlot(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isOutgoingMmsAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get outgoing MMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isOutgoingSmsAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get outgoing SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isOutgoingSmsAllowedFromSimSlot(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingSmsAllowedFromSimSlot(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "failed talking with phoneRestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isRCSEnabled(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isRCSEnabled(II)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_29

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed isSimLockedByAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public isWapPushAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get status of allow wap push"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public removeIncomingCallExceptionPattern()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeIncomingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed removeIncomingCallExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public removeIncomingCallRestriction()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeIncomingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeIncomingSmsExceptionPattern()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeIncomingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed removeIncomingSmsExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public removeIncomingSmsRestriction()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeIncomingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeOutgoingCallExceptionPattern()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeOutgoingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed removeOutgoingCallExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public removeOutgoingCallRestriction()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeOutgoingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeOutgoingSmsExceptionPattern()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeOutgoingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed removeOutgoingSmsExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public removeOutgoingSmsRestriction()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeOutgoingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public resetCallsCount()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.resetCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public resetDataCallLimitCounter()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.resetDataCallLimitCounter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->resetDataCallLimitCounter(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to resetDataCallLimitCounter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public resetSmsCount()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.resetSmsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->resetSmsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setDataCallLimitEnabled(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setDataCallLimitEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setDataCallLimitEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setDisclaimerText(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setDisclaimerText"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setDisclaimerText(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setDisclaimerText"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public setEmergencyCallOnly(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setEmergencyCallOnly"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setIncomingCallExceptionPattern(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setIncomingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setIncomingCallExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public setIncomingCallRestriction(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setIncomingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setIncomingSmsExceptionPattern(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setIncomingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setIncomingSmsExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public setIncomingSmsRestriction(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setIncomingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setLimitOfDataCalls(JJJ)Z
    .registers 16

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfDataCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;JJJ)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    return v0

    :catch_19
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setLimitOfDataCalls"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public setLimitOfIncomingCalls(III)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfIncomingCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setLimitOfIncomingSms(III)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfIncomingSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;III)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setLimitOfOutgoingCalls(III)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfOutgoingCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setLimitOfOutgoingSms(III)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfOutgoingSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;III)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setOutgoingCallExceptionPattern(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setOutgoingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setOutgoingCallExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public setOutgoingCallRestriction(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setOutgoingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setOutgoingSmsExceptionPattern(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setOutgoingSmsExceptionPattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public setOutgoingSmsRestriction(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setOutgoingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setRCSEnabled(IZ)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setRCSEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, -0x2

    return v0
.end method

.method public setRCSEnabled(IZI)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setRCSEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, -0x2

    return v0
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.storeBlockedSmsMms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to store blocked sms/mms"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public updateDataLimitState()V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->updateDataLimitState()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public updateDateAndDataCallCounters(J)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    return-void
.end method
