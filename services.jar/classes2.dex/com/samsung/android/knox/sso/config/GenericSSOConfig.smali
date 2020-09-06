.class public Lcom/samsung/android/knox/sso/config/GenericSSOConfig;
.super Ljava/lang/Object;
.source "GenericSSOConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/config/GenericSSOConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authenticatorConfig:Landroid/os/Bundle;

.field private authenticatorPkgName:Ljava/lang/String;

.field private authenticatorPkgSignature:Ljava/lang/String;

.field private ssoConfigFile:[B

.field private whiteListPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgSignature:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgSignature:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgSignature:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorConfig:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->whiteListPackages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->ssoConfigFile:[B

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgSignature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorConfig:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->whiteListPackages:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->whiteListPackages:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/knox/sso/config/WhiteListPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->ssoConfigFile:[B

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->ssoConfigFile:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    :cond_2f
    goto :goto_34

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
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

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAuthenticatorPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticatorPkgSignature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSSOConfigFile()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->ssoConfigFile:[B

    return-object v0
.end method

.method public getWhiteListPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->whiteListPackages:Ljava/util/List;

    return-object v0
.end method

.method public setAuthenticatorConfig(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public setAuthenticatorPkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgName:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticatorPkgSignature(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgSignature:Ljava/lang/String;

    return-void
.end method

.method public setSSOConfigFile([B)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->ssoConfigFile:[B

    return-void
.end method

.method public setWhiteListPackages(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->whiteListPackages:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorPkgSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->authenticatorConfig:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->whiteListPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->ssoConfigFile:[B

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->ssoConfigFile:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->ssoConfigFile:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    :goto_28
    goto :goto_2d

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2d
    return-void
.end method
