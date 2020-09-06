.class public Lcom/att/iqi/lib/metrics/lc/LC30;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/lc/LC30;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_LOC_METHOD_ALT:B = 0x3t

.field public static final IQ_LOC_METHOD_CELLULAR:B = 0x1t

.field public static final IQ_LOC_METHOD_UNKNOWN:B = 0x0t

.field public static final IQ_LOC_METHOD_WIFI:B = 0x2t

.field public static final IQ_LOC_RESULTS_IN_USE:B = 0x7t

.field public static final IQ_LOC_RESULTS_SUCCESS:B = 0x1t

.field public static final IQ_LOC_RESULTS_UNAVAILABLE:B = 0x2t

.field public static final IQ_LOC_RESULTS_UNKNOWN:B = 0x0t

.field public static final IQ_LOC_RESULTS_USER_DENIED:B = 0x8t

.field public static final IQ_LOC_RESULTS_USER_UNAUTHORIZED:B = 0x9t


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:S

.field private e:B

.field private f:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "LC30"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC30;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/lc/LC30$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/lc/LC30$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC30;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/lc/LC30;->clear()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2f

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->d:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->f:B

    :cond_2f
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->b:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->c:I

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->d:S

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    return-void
.end method

.method public getAccuracy()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->d:S

    return v0
.end method

.method public getGPSTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->a:J

    return-wide v0
.end method

.method public getLatitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->b:I

    return v0
.end method

.method public getLongitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->c:I

    return v0
.end method

.method public getMethod()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->f:B

    return v0
.end method

.method public getResults()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    return v0
.end method

.method public getUnixTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->a:J

    return-wide v0
.end method

.method public getValid()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    and-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->b:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->c:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->d:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->f:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setAccuracy(S)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 3

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->d:S

    return-object p0
.end method

.method public setGPSTimeStamp(J)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_10

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    iput-wide p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->a:J

    return-object p0

    :cond_10
    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    and-int/lit8 p1, p1, -0x41

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong GPSTimeStamp"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLatitude(I)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const v0, -0x55d4a80

    if-lt p1, v0, :cond_14

    const v0, 0x55d4a80

    if-gt p1, v0, :cond_14

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->b:I

    return-object p0

    :cond_14
    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    and-int/lit8 p1, p1, -0x11

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong latitude"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLongitude(I)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const v0, -0xaba9500

    if-lt p1, v0, :cond_14

    const v0, 0xaba9500

    if-gt p1, v0, :cond_14

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->c:I

    return-object p0

    :cond_14
    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    and-int/lit8 p1, p1, -0x11

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong longitude"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMethod(B)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x3

    if-gt p1, v0, :cond_6

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->f:B

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResults(B)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    and-int/lit16 v1, p1, 0xf0

    int-to-byte v1, v1

    const/16 v2, 0x9

    if-gt v0, v2, :cond_22

    const/4 v2, 0x2

    if-le v0, v2, :cond_10

    const/4 v2, 0x7

    if-lt v0, v2, :cond_22

    :cond_10
    if-nez v1, :cond_19

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    return-object p0

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong result"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong result"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUnixTimeStamp(J)Lcom/att/iqi/lib/metrics/lc/LC30;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide v0, 0x4990f7f5b0L

    cmp-long v2, p1, v0

    if-ltz v2, :cond_14

    iget-byte v2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->a:J

    return-object p0

    :cond_14
    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    and-int/lit8 p1, p1, -0x41

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong UnixTimeStamp"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->d:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->e:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC30;->f:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
