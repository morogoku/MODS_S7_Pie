.class public Lcom/samsung/android/knox/ddar/Secret;
.super Ljava/lang/Object;
.source "Secret.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ddar/Secret;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_SECRET_ALIAS_LEN:I = 0x20

.field public static final MAX_SECRET_LEN:I = 0x80


# instance fields
.field public alias:Ljava/lang/String;

.field public data:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/ddar/Secret$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ddar/Secret$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ddar/Secret;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ddar/Secret;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    iget-object v1, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_14

    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
