.class Lcom/android/server/enterprise/email/AccountMetaData;
.super Ljava/lang/Object;
.source "AccountMetaData.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COMPATIBILITY_UUID:Ljava/lang/String; = "compatibilityUuid"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final DPM_POLICIES_ACCOUNTID:Ljava/lang/String; = "account_id"

.field public static final DPM_POLICIES_ID:Ljava/lang/String; = "_id"

.field public static final DPM_POLICIES_POLICYNAME:Ljava/lang/String; = "name"

.field public static final DPM_POLICIES_POLICYNAME_ALLOWHTMLEMAIL:Ljava/lang/String; = "AllowHTMLEmail"

.field public static final DPM_POLICIES_POLICYTYPE:Ljava/lang/String; = "type"

.field public static final DPM_POLICIES_POLICYVALUE:Ljava/lang/String; = "value"

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final FLAGS_ACCEPT_ALL_CERT:I = 0x8

.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1

.field public static final FLAGS_USE_SSL:I = 0x1

.field public static final FLAGS_USE_TLS:I = 0x2

.field public static final FLAGS_VIBRATE_ALWAYS:I = 0x2

.field public static final FLAGS_VIBRATE_WHEN_SILENT:I = 0x40

.field public static final HOST_AUTH_KEY_RECV:Ljava/lang/String; = "hostAuthKeyRecv"

.field public static final HOST_AUTH_KEY_SEND:Ljava/lang/String; = "hostAuthKeySend"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final IS_SIGNATURE_EDITED:Ljava/lang/String; = "isSignatureEdited"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final OFF_PEAK_SCHEDULE:Ljava/lang/String; = "offPeakSchedule"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PEAK_DAYS:Ljava/lang/String; = "peakDays"

.field public static final PEAK_END_MINUTE:Ljava/lang/String; = "peakEndMinute"

.field public static final PEAK_SCHEDULE:Ljava/lang/String; = "peakSchedule"

.field public static final PEAK_START_MINUTE:Ljava/lang/String; = "peakStartMinute"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static final RINGTONE_URI:Ljava/lang/String; = "ringtoneUri"

.field public static final ROAMING_SCHEDULE:Ljava/lang/String; = "roamingSchedule"

.field public static final SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SYNC_CALENDAR_LOOKBACK:Ljava/lang/String; = "calendarSyncLookback"

.field public static final SYNC_EMAIL_ROAMING_TRUNCATIONSIZE:Ljava/lang/String; = "roamingemailsize"

.field public static final SYNC_EMAIL_TRUNCATIONSIZE:Ljava/lang/String; = "emailsize"

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field public static final SYNC_LOOKBACK:Ljava/lang/String; = "syncLookback"


# instance fields
.field public mAllowHTMLEmail:Z

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mEasDomain:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailBodyTruncationSize:I

.field public mEmailNotificationVibrateAlways:Z

.field public mEmailNotificationVibrateWhenSilent:Z

.field public mEmailRoamingBodyTruncationSize:I

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public mId:I

.field public mInComingProtocol:Ljava/lang/String;

.field public mInComingServerAcceptAllCertificates:Z

.field public mInComingServerAddress:Ljava/lang/String;

.field public mInComingServerFlags:I

.field public mInComingServerLogin:Ljava/lang/String;

.field public mInComingServerPassword:Ljava/lang/String;

.field public mInComingServerPathPrefix:Ljava/lang/String;

.field public mInComingServerPort:I

.field public mInComingServerUseSSL:Z

.field public mInComingServerUseTLS:Z

.field public mIsDefault:Z

.field mIsEAS:Z

.field public mNotify:Z

.field public mOffPeakSyncSchedule:I

.field public mOutGoingProtocol:Ljava/lang/String;

.field public mOutGoingServerAcceptAllCertificates:Z

.field public mOutGoingServerAddress:Ljava/lang/String;

.field public mOutGoingServerFlags:I

.field public mOutGoingServerLogin:Ljava/lang/String;

.field public mOutGoingServerPassword:Ljava/lang/String;

.field public mOutGoingServerPathPrefix:Ljava/lang/String;

.field public mOutGoingServerPort:I

.field public mOutGoingServerUseSSL:Z

.field public mOutGoingServerUseTLS:Z

.field public mPeakDays:I

.field public mPeakEndMinute:I

.field public mPeakStartMinute:I

.field public mPeakSyncSchedule:I

.field public mProtocolVersion:Ljava/lang/String;

.field public mRetrivalSize:I

.field public mRingtoneUri:Ljava/lang/String;

.field public mRoamingSyncSchedule:I

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncCalendarAge:I

.field public mSyncInterval:I

.field public mSyncLookback:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 26

    move-object v0, p0

    move-object v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const-wide/16 v5, -0x1

    iput-wide v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    iput-wide v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v5, 0x1

    iput v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move/from16 v6, p4

    iput v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    move/from16 v11, p9

    iput v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object/from16 v12, p10

    iput-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    move-object/from16 v13, p11

    iput-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    iput-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Z)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p12

    move/from16 v5, p13

    move/from16 v6, p14

    move-object/from16 v7, p15

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, -0x1

    iput v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v10, 0x0

    iput v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    move-object/from16 v12, p4

    iput-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const-wide/16 v13, -0x1

    iput-wide v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    iput-wide v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    move-object/from16 v13, p1

    iput-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    move-object/from16 v14, p2

    iput-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    if-gt v9, v2, :cond_3b

    const/4 v15, 0x6

    if-ge v15, v2, :cond_39

    goto :goto_3b

    :cond_39
    move v9, v2

    nop

    :cond_3b
    :goto_3b
    iput v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    move/from16 v9, p16

    iput-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    move-object/from16 v15, p8

    iput-object v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    move/from16 v2, p11

    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    const-string/jumbo v2, "eas"

    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    iput-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    const-string/jumbo v2, "eas"

    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    iput-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    iput-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;ZIIIIIIZ)V
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p12

    move/from16 v5, p13

    move/from16 v6, p14

    move-object/from16 v7, p15

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, -0x1

    iput v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v9, 0x0

    iput v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const-wide/16 v12, -0x1

    iput-wide v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    iput-wide v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    move-object/from16 v12, p1

    iput-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    move-object/from16 v13, p2

    iput-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    if-gt v8, v2, :cond_3b

    const/4 v14, 0x6

    if-ge v14, v2, :cond_39

    goto :goto_3b

    :cond_39
    move v8, v2

    nop

    :cond_3b
    :goto_3b
    iput v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    move/from16 v8, p16

    iput-boolean v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    move-object/from16 v14, p8

    iput-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    move/from16 v9, p10

    iput-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    move/from16 v2, p11

    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    const-string/jumbo v2, "eas"

    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    iput-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    const-string/jumbo v2, "eas"

    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    iput-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    iput-boolean v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    iput-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    move/from16 v2, p17

    iput v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    move/from16 v1, p18

    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    move/from16 v1, p21

    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    move/from16 v1, p22

    iput v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    return-void
.end method
