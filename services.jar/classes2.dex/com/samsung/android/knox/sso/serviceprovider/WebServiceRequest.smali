.class public Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;",
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

.field private mRequestType:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mUri:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mRequestType:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mUri:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mRequestType:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public addHeader(Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

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

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getRequestType()Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mRequestType:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public setEntity([B)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

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

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

    return-void
.end method

.method public setRequestType(Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mRequestType:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mRequestType:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

    if-nez v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1e
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
