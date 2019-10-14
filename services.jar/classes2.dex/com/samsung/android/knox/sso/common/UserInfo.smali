.class public Lcom/samsung/android/knox/sso/common/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/common/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAuthenticationType:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFirstName:Ljava/lang/String;

.field private mIdentityProvider:Ljava/lang/String;

.field private mLastAuthenMillis:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mTenantId:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private userInfoJsonString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/sso/common/UserInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/common/UserInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/common/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/common/UserInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/common/UserInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/common/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->userInfoJsonString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mUserId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mFirstName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mIdentityProvider:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mTenantId:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAddress:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mEmailAddress:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->userInfoJsonString:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mUserId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mFirstName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mIdentityProvider:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mTenantId:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAddress:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mEmailAddress:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->userInfoJsonString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mIdentityProvider:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAuthenticationType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mTenantId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAuthenticationType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityProvider()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mIdentityProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->userInfoJsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAuthenMillis()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mTenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticationType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAuthenticationType:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mFirstName:Ljava/lang/String;

    return-void
.end method

.method public setIdentityProvider(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mIdentityProvider:Ljava/lang/String;

    return-void
.end method

.method public setJsonString(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->userInfoJsonString:Ljava/lang/String;

    return-void
.end method

.method public setLastAuthenMillis(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mTenantId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->userInfoJsonString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mIdentityProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAuthenticationType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mTenantId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
