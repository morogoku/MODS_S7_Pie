.class public Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
.super Ljava/lang/Object;
.source "AuthenticationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthenticatorPkgName:Ljava/lang/String;

.field private mHttpRequest:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

.field private mRequestConfig:Landroid/os/Bundle;

.field private mToken:Lcom/samsung/android/knox/sso/common/TokenInfo;

.field private mWhiteListPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mAuthenticatorPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mWhiteListPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mToken:Lcom/samsung/android/knox/sso/common/TokenInfo;

    iput-object p4, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mRequestConfig:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mHttpRequest:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mAuthenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mWhiteListPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mRequestConfig:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sso/common/TokenInfo;

    iput-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mToken:Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mHttpRequest:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthenticatorPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mAuthenticatorPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestConfig()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mRequestConfig:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTokenInfo()Lcom/samsung/android/knox/sso/common/TokenInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mToken:Lcom/samsung/android/knox/sso/common/TokenInfo;

    return-object v0
.end method

.method public getWebServiceRequest()Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mHttpRequest:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

    return-object v0
.end method

.method public getWhiteListPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mWhiteListPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticatorPkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mAuthenticatorPkgName:Ljava/lang/String;

    return-void
.end method

.method public setRequestConfig(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mRequestConfig:Landroid/os/Bundle;

    return-void
.end method

.method public setTokenInfo(Lcom/samsung/android/knox/sso/common/TokenInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mToken:Lcom/samsung/android/knox/sso/common/TokenInfo;

    return-void
.end method

.method public setWebServiceRequest(Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mHttpRequest:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

    return-void
.end method

.method public setWhiteListPkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mWhiteListPkgName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mAuthenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mWhiteListPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mRequestConfig:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mToken:Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mHttpRequest:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
