.class public Lcom/samsung/android/knox/datetime/DateTimePolicy;
.super Ljava/lang/Object;
.source "DateTimePolicy.java"


# static fields
.field public static final ACTION_EVENT_NTP_SERVER_UNREACHABLE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EVENT_NTP_SERVER_UNREACHABLE"

.field public static final ACTION_UPDATE_NTP_PARAMETERS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DateTimePolicy"

    sput-object v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    if-nez v0, :cond_10

    const-string v0, "date_time_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    return-object v0
.end method


# virtual methods
.method public getAutomaticTime()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getAutomaticTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getDateFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getDateFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateTime()Ljava/util/Date;
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getDateTime(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    return-object v3

    :cond_1a
    goto :goto_23

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getDateTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDaylightSavingTime()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getDaylightSavingTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getDaylightSavingTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public getNtpInfo()Lcom/samsung/android/knox/datetime/NtpInfo;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DateTimePolicy.getNtpInfo"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_21

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object v1

    return-object v1

    :cond_21
    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setNtpInfo() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_29} :catch_2a

    :cond_29
    goto :goto_32

    :catch_2a
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getNtpInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeFormat()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getTimeFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getTimeZone(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API getTimeZone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDateTimeChangeEnabled()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public setAutomaticTime(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DateTimePolicy.setAutomaticTime"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setAutomaticTime(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setAutomaticTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setDateTime(IIIIII)Z
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DateTimePolicy.setDateTime"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p6}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setDateTime(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_38} :catch_3a

    return v1

    :cond_39
    goto :goto_42

    :catch_3a
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setDateTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    const/4 v0, 0x0

    return v0
.end method

.method public setDateTimeChangeEnabled(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DateTimePolicy.setDateTimeChangeEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setNtpInfo(Lcom/samsung/android/knox/datetime/NtpInfo;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DateTimePolicy.setNtpInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_20

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setNtpInfo(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/datetime/NtpInfo;)Z

    move-result v1

    return v1

    :cond_20
    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setNtpInfo() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_28} :catch_29

    :cond_28
    goto :goto_31

    :catch_29
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setNtpInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    const/4 v0, 0x0

    return v0
.end method

.method public setTimeFormat(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DateTimePolicy.setTimeFormat"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setTimeFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeFormat"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setTimeZone(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DateTimePolicy.setTimeZone"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setTimeZone(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at DateTime policy API setTimeZone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method
