.class public Lcom/att/iqi/lib/metrics/ui/UI46;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/ui/UI46;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "UI46"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/ui/UI46;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/ui/UI46$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ui/UI46$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/ui/UI46;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_29

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->e:S

    :cond_29
    return-void
.end method

.method public constructor <init>(Lcom/att/iqi/lib/metrics/ui/UI46;)V
    .registers 4

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    iget-wide v0, p1, Lcom/att/iqi/lib/metrics/ui/UI46;->a:J

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->a:J

    iget v0, p1, Lcom/att/iqi/lib/metrics/ui/UI46;->b:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->b:I

    iget v0, p1, Lcom/att/iqi/lib/metrics/ui/UI46;->c:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->c:I

    iget v0, p1, Lcom/att/iqi/lib/metrics/ui/UI46;->d:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->d:I

    iget-short p1, p1, Lcom/att/iqi/lib/metrics/ui/UI46;->e:S

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->e:S

    return-void
.end method


# virtual methods
.method public getElapsedCpu()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->c:I

    return v0
.end method

.method public getInstAppID()J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->a:J

    return-wide v0
.end method

.method public getMaxMemoryUsed()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->d:I

    return v0
.end method

.method public getRunAppID()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->b:I

    return v0
.end method

.method public getRunProcesses()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->e:S

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->b:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->c:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->d:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->e:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setElapsedCpu(I)Lcom/att/iqi/lib/metrics/ui/UI46;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->c:I

    return-object p0
.end method

.method public setInstAppID(J)Lcom/att/iqi/lib/metrics/ui/UI46;
    .registers 3

    iput-wide p1, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->a:J

    return-object p0
.end method

.method public setMaxMemoryUsed(I)Lcom/att/iqi/lib/metrics/ui/UI46;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->d:I

    return-object p0
.end method

.method public setRunAppID(I)Lcom/att/iqi/lib/metrics/ui/UI46;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->b:I

    return-object p0
.end method

.method public setRunProcesses(S)Lcom/att/iqi/lib/metrics/ui/UI46;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->e:S

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/ui/UI46;->e:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
