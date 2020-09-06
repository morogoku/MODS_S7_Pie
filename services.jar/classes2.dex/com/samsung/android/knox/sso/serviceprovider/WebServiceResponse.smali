.class public Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;
.super Ljava/lang/Object;
.source "WebServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEntity:[B

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;",
            ">;"
        }
    .end annotation
.end field

.field private mMajor:I

.field private mMinor:I

.field private mProtocol:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP"

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mProtocol:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMajor:I

    iput v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMinor:I

    iput p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mStatusCode:I

    iput-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mProtocol:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMajor:I

    iput p3, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMinor:I

    iput p4, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mStatusCode:I

    iput-object p5, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMajor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMinor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mStatusCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public addHeader(Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEntity()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getMajor()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMajor:I

    return v0
.end method

.method public getMinor()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMajor:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mStatusCode:I

    return v0
.end method

.method public setEntity([B)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    return-void
.end method

.method public setMajor(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMajor:I

    return-void
.end method

.method public setMinor(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMinor:I

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mProtocol:Ljava/lang/String;

    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mStatusCode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMinor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    if-nez v0, :cond_22

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_2d
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
