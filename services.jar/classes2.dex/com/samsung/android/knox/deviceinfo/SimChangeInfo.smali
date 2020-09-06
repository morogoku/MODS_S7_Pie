.class public Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
.super Ljava/lang/Object;
.source "SimChangeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIM_CHANGED:I = 0x2

.field public static final SIM_INSERTED:I = 0x3

.field public static final SIM_REMOVED:I = 0x1


# instance fields
.field public changeOperation:I

.field public changeTime:J

.field public currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

.field public previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->readFromParcel(Landroid/os/Parcel;)V

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeOperation:I

    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/deviceinfo/SimInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/deviceinfo/SimInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
