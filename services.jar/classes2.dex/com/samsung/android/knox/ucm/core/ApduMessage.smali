.class public Lcom/samsung/android/knox/ucm/core/ApduMessage;
.super Ljava/lang/Object;
.source "ApduMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ucm/core/ApduMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorCode:I

.field public message:[B

.field public messageType:I

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/ucm/core/ApduMessage$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/core/ApduMessage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    iput p3, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    iput-object p4, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/ucm/core/ApduMessage$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
