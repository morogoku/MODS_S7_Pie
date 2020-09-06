.class public Lcom/samsung/android/knox/application/UsbDeviceConfig;
.super Ljava/lang/Object;
.source "UsbDeviceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/UsbDeviceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public productId:I

.field public vendorId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/application/UsbDeviceConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/UsbDeviceConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    iput p2, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/UsbDeviceConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/application/UsbDeviceConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/application/UsbDeviceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    if-nez v1, :cond_9

    return v0

    :cond_9
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    iget v1, v1, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    if-lez v1, :cond_2d

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    iget v1, v1, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    if-gtz v1, :cond_18

    goto :goto_2d

    :cond_18
    iget v1, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    iget v2, v2, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    if-ne v1, v2, :cond_2c

    iget v1, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    iget v2, v2, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    if-ne v1, v2, :cond_2c

    const/4 v0, 0x1

    return v0

    :cond_2c
    return v0

    :cond_2d
    :goto_2d
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
