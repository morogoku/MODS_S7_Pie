.class public Lcom/samsung/android/knox/sso/common/TokenInfo;
.super Ljava/lang/Object;
.source "TokenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/common/TokenInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private protocolType:I

.field private responseBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/sso/common/TokenInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/common/TokenInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/common/TokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->protocolType:I

    iput-object p2, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/common/TokenInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->protocolType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getProtocolType()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->protocolType:I

    return v0
.end method

.method public getResponseBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setProtocolType(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->protocolType:I

    return-void
.end method

.method public setResponseBundle(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setResponseBundle(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setResponseBundle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->protocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
