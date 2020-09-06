.class public Lcom/samsung/android/knox/container/AuthenticationConfig;
.super Ljava/lang/Object;
.source "AuthenticationConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/container/AuthenticationConfig$AuthenticationRequestKeys;
    }
.end annotation


# static fields
.field public static AUTHENTICATION_STATUS:Ljava/lang/String; = null

.field public static final AUTHENTICATOR_PACKAGE_NAME:Ljava/lang/String; = "servicepackagename"

.field public static final AUTHENTICATOR_PACKAGE_SIGNATURE:Ljava/lang/String; = "servicepackagesignature"

.field public static final BIND_ACTION_AUTHENTICATOR:Ljava/lang/String; = ".genericssoconnection"

.field public static final CHANGE_PASSWORD_ENTERPRISE_IDENTITY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/AuthenticationConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENFORCE_REMOTE_AUTH_ALWAYS:Ljava/lang/String; = "enforceRemoteAuthAlways"

.field public static ENTERPRISEID_OLD_PASSWORD:Ljava/lang/String; = null

.field public static ENTERPRISEID_PASSWORD:Ljava/lang/String; = null

.field public static ENTERPRISEID_USERNAME:Ljava/lang/String; = null

.field public static final ERROR_AUTHENTICATOR_PACKAGE_NOT_INSTALLED:I = -0x4

.field public static final ERROR_AUTHENTICATOR_SIGNATURE_MISMATCH:I = -0xd

.field public static final ERROR_INTERNAL_FAIL:I = -0x1

.field public static final ERROR_INVALID_INPUT:I = -0x3

.field public static final ERROR_NETWORK_NOT_AVAILABLE:I = -0xf

.field public static final ERROR_PASSWORD_EXPIRED:I = -0x12

.field public static final ERROR_REMOTE_PROCESSING:I = -0x10

.field public static final ERROR_USER_CANCELLED:I = -0x11

.field public static final ERROR_USER_NOT_AUTHORIZED:I = -0x2

.field public static final FORCE_ENTERPRISE_IDENTITY_LOCK:Ljava/lang/String; = "forceEnterpriseIDLock"

.field public static final HIDE_ENTERPRISE_ID_LOCK:Ljava/lang/String; = "hideEnterpriseIDLock"

.field public static OPERATION_MODE:Ljava/lang/String; = null

.field public static final SAMSUNG_KERBEROS_AUTHENTICATOR:Ljava/lang/String; = "com.sec.android.service.singlesignon"

.field public static final SETUP_ENTERPRISE_IDENTITY:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final UNLOCK_ENTERPRISE_IDENTITY:I = 0x3


# instance fields
.field private authenticatorConfig:Landroid/os/Bundle;

.field private authenticatorPkgName:Ljava/lang/String;

.field private authenticatorPkgSignature:Ljava/lang/String;

.field private enforceEnterpriseIdentityLock:Z

.field private enforceRemoteAuthAlways:Z

.field private hideEnterpriseIdentityLock:Z

.field private isConfiguredByMDM:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "enterprise_username"

    sput-object v0, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    const-string v0, "enterprise_password"

    sput-object v0, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    const-string v0, "enterprise_old_password"

    sput-object v0, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_OLD_PASSWORD:Ljava/lang/String;

    const-string v0, "auth_status"

    sput-object v0, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    const-string/jumbo v0, "operation_mode"

    sput-object v0, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/knox/container/AuthenticationConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/AuthenticationConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/AuthenticationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-object p4, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-object p4, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(ZZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-boolean p4, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    iput-object p5, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(ZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-boolean p4, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    iput-object p5, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthenticatorConfig()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAuthenticatorPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticatorPkgSignature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getEnforceEnterpriseIdentityLock()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    return v0
.end method

.method public getEnforceRemoteAuthAlways()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    return v0
.end method

.method public getHideEnterpriseIdentityLock()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    return v0
.end method

.method public isConfiguredByMDM()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    return v0
.end method

.method public setAuthenticatorConfig(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    :cond_7
    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public setAuthenticatorPkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticatorPkgSignature(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    return-void
.end method

.method public setConfiguredByMDM(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    return-void
.end method

.method public setEnforceRemoteAuthAlways(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    return-void
.end method

.method public setForceEnterpriseIdentityLock(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    return-void
.end method

.method public setHideEnterpriseIdentityLock(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return-void
.end method
