.class public Lcom/samsung/android/knox/application/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mobileRxBytes:J

.field public mobileTxBytes:J

.field public uid:I

.field public wifiRxBytes:J

.field public wifiTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/application/NetworkStats$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/NetworkStats$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/NetworkStats;->readFromParcel(Landroid/os/Parcel;)V

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

    iput v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
