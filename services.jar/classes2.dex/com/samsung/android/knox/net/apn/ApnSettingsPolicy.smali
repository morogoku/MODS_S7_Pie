.class public Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;
.super Ljava/lang/Object;
.source "ApnSettingsPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ApnSettingsPolicy"

    sput-object v0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    if-nez v0, :cond_10

    const-string v0, "apn_settings_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    return-object v0
.end method


# virtual methods
.method public createApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)J
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.createApnSettings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    move-wide v2, v0

    :try_start_a
    const-string v4, "25"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x11

    if-ge v4, v5, :cond_33

    if-eqz p1, :cond_33

    iget-object v5, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    if-eqz v5, :cond_24

    iget-object v5, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string v6, "IP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    :cond_24
    iget-object v5, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    if-eqz v5, :cond_33

    iget-object v5, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    const-string v6, "IP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_32
    return-wide v0

    :cond_33
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v5, p1}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J

    move-result-wide v0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_42} :catch_44

    move-wide v2, v0

    :cond_43
    goto :goto_4c

    :catch_44
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at update APN Settings policy "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    sget-object v0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createApnSettings: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method public deleteApn(J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.deleteApn"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v0, v1

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API deleteApn()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    sget-object v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteApn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getApnList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.getApnList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->getApnList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move-object v0, v1

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API getApnList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-object v0
.end method

.method public getApnSettings(J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.getApnSettings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move-object v0, v1

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API getApnSettings()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-object v0
.end method

.method public getPreferredApnSettings()Lcom/samsung/android/knox/net/apn/ApnSettings;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.getPreferredApnSettings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move-object v0, v1

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API getPreferredApnSettings()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-object v0
.end method

.method public saveApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->updateApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)Z

    move-result v0

    return v0
.end method

.method public setPreferredApn(J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.setPreferredApn"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v0, v1

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API setPreferredApn()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    sget-object v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferredApn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public updateApnSettings(Lcom/samsung/android/knox/net/apn/ApnSettings;)Z
    .registers 11

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApnSettingsPolicy.updateApnSettings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_f

    iget-wide v3, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    goto :goto_10

    :cond_f
    move-wide v3, v1

    :goto_10
    :try_start_10
    const-string v5, "25"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    if-ge v5, v6, :cond_39

    if-eqz p1, :cond_39

    iget-object v6, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    if-eqz v6, :cond_2a

    iget-object v6, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string v7, "IP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    :cond_2a
    iget-object v6, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    if-eqz v6, :cond_39

    iget-object v6, p1, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    const-string v7, "IP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    :cond_38
    return v0

    :cond_39
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->getService()Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    move-result-object v6

    if-eqz v6, :cond_49

    iget-object v6, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->lService:Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;

    iget-object v7, p0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, p1}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;->addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J

    move-result-wide v6
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_48} :catch_4a

    move-wide v3, v6

    :cond_49
    goto :goto_52

    :catch_4a
    move-exception v5

    sget-object v6, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Failed at update APN Settings policy "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    cmp-long v1, v3, v1

    if-eqz v1, :cond_57

    const/4 v0, 0x1

    :cond_57
    sget-object v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateApnSettings: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
