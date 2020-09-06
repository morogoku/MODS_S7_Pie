.class public Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.super Ljava/lang/Object;
.source "ucmRetParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mData:[B

.field private mDataLength:I

.field public mResult:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    if-eqz v0, :cond_f

    array-length v0, p2

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    :goto_12
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/ucm/core/ucmRetParcelable$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    const-string/jumbo v0, "ucmRetParcelable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @ucmRetParcelable readFromParcel: dateLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    if-lez v0, :cond_34

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_13
    return-void
.end method
