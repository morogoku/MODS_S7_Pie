.class public Lcom/att/iqi/lib/metrics/lc/LC36;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/lc/LC36;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final PROVIDER_NAME_MASK:B = -0x8t

.field public static final PROVIDER_NAME_SHIFT:B = 0x3t


# instance fields
.field private a:J

.field private b:J

.field private c:B

.field private d:B

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "LC36"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC36;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/lc/LC36$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/lc/LC36$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC36;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/lc/LC36;->clear()V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/lc/LC36;->setFromLocation(Landroid/location/Location;)Lcom/att/iqi/lib/metrics/lc/LC36;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7b

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->f:I

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->g:I

    :cond_3a
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->i:I

    :cond_4c
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/2addr v0, v1

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->k:I

    :cond_5d
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->m:I

    :cond_6f
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    and-int/lit8 v0, v0, -0x8

    if-eqz v0, :cond_7b

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->n:Ljava/lang/String;

    :cond_7b
    return-void
.end method

.method private a(J)I
    .registers 5

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_b

    const p1, 0x7fffffff

    return p1

    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_15

    const/high16 p1, -0x80000000

    return p1

    :cond_15
    long-to-int p1, p1

    return p1
.end method

.method private a(Landroid/location/Location;)I
    .registers 3
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    invoke-virtual {p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/location/Location;)I
    .registers 3
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    invoke-virtual {p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result p1

    const v0, 0x49742400    # 1000000.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/location/Location;)I
    .registers 3
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public clear()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->a:J

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->b:J

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    const v1, 0x55d4a81

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->e:I

    const v1, 0xaba9501

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->f:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->g:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->h:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->i:I

    const v1, 0x15752a01

    iput v1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->j:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->k:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->l:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->n:Ljava/lang/String;

    return-void
.end method

.method public getAltitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->h:I

    return v0
.end method

.method public getBearing()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->j:I

    return v0
.end method

.method public getBearingAccuracy()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->k:I

    return v0
.end method

.method public getElapsedNanos()J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->a:J

    return-wide v0
.end method

.method public getFieldOptions()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    return v0
.end method

.method public getHorizontalAccuracy()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->g:I

    return v0
.end method

.method public getLatitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->e:I

    return v0
.end method

.method public getLongitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->f:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    packed-switch v0, :pswitch_data_14

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->n:Ljava/lang/String;

    return-object v0

    :pswitch_8
    const-string v0, "fused"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "network"

    return-object v0

    :pswitch_f
    const-string v0, "gps"

    return-object v0

    nop

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public getProviderEnum()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    return v0
.end method

.method public getProviderNameLength()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    return v0
.end method

.method public getSpeed()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->l:I

    return v0
.end method

.method public getSpeedAccuracy()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->m:I

    return v0
.end method

.method public getUtcTime()J
    .registers 3

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->b:J

    return-wide v0
.end method

.method public getVerticalAccuracy()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->i:I

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->e:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->f:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->g:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_2d
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->h:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->i:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_3d
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->j:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->k:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_4d
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5d

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->l:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->m:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_5d
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    and-int/lit8 v0, v0, -0x8

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->n:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setAltitude(II)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 3

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->h:I

    iput p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->i:I

    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    return-object p0
.end method

.method public setBearing(II)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_13

    const v0, 0x15752a00

    if-gt p1, v0, :cond_13

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->j:I

    iput p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->k:I

    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    return-object p0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal bearing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElapsedNanos(J)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 3

    iput-wide p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->a:J

    return-object p0
.end method

.method public setFromLocation(Landroid/location/Location;)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/lc/LC36;->clear()V

    if-eqz p1, :cond_a3

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/att/iqi/lib/metrics/lc/LC36;->setElapsedNanos(J)Lcom/att/iqi/lib/metrics/lc/LC36;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/att/iqi/lib/metrics/lc/LC36;->setUtcTime(J)Lcom/att/iqi/lib/metrics/lc/LC36;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/att/iqi/lib/metrics/lc/LC36;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/metrics/lc/LC36;->setLatitude(I)Lcom/att/iqi/lib/metrics/lc/LC36;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/att/iqi/lib/metrics/lc/LC36;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/metrics/lc/LC36;->setLongitude(I)Lcom/att/iqi/lib/metrics/lc/LC36;

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/metrics/lc/LC36;->setHorizontalAccuracy(I)Lcom/att/iqi/lib/metrics/lc/LC36;

    :cond_4c
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/att/iqi/lib/metrics/lc/LC36;->a(J)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/lc/LC36;->a(Landroid/location/Location;)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/att/iqi/lib/metrics/lc/LC36;->setAltitude(II)Lcom/att/iqi/lib/metrics/lc/LC36;

    :cond_6b
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v4, v0

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/att/iqi/lib/metrics/lc/LC36;->a(J)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/lc/LC36;->b(Landroid/location/Location;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/att/iqi/lib/metrics/lc/LC36;->setBearing(II)Lcom/att/iqi/lib/metrics/lc/LC36;

    :cond_86
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/lc/LC36;->c(Landroid/location/Location;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/att/iqi/lib/metrics/lc/LC36;->setSpeed(II)Lcom/att/iqi/lib/metrics/lc/LC36;

    :cond_9c
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/lc/LC36;->setProvider(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/lc/LC36;

    :cond_a3
    return-object p0
.end method

.method public setHorizontalAccuracy(I)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 3

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->g:I

    return-object p0
.end method

.method public setLatitude(I)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const v0, -0x55d4a80

    if-lt p1, v0, :cond_d

    const v0, 0x55d4a80

    if-gt p1, v0, :cond_d

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->e:I

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal latitude"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLongitude(I)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const v0, -0xaba9500

    if-lt p1, v0, :cond_d

    const v0, 0xaba9500

    if-gt p1, v0, :cond_d

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->f:I

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal longitude"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProvider(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 8

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->n:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x190aa

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_35

    const v2, 0x5d44923

    if-eq v1, v2, :cond_2b

    const v2, 0x6de15a2e

    if-eq v1, v2, :cond_20

    goto :goto_3e

    :cond_20
    const-string/jumbo v1, "network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v0, v4

    goto :goto_3e

    :cond_2b
    const-string v1, "fused"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v0, v3

    goto :goto_3e

    :cond_35
    const-string v1, "gps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v0, v5

    :cond_3e
    :goto_3e
    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_7c

    iput-byte v5, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_7a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    return-object p0

    :pswitch_72
    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    return-object p0

    :pswitch_75
    iput-byte v3, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    return-object p0

    :pswitch_78
    iput-byte v4, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    :cond_7a
    return-object p0

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_78
        :pswitch_75
        :pswitch_72
    .end packed-switch
.end method

.method public setSpeed(II)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 3

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->l:I

    iput p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->m:I

    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    return-object p0
.end method

.method public setUtcTime(J)Lcom/att/iqi/lib/metrics/lc/LC36;
    .registers 3

    iput-wide p1, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->b:J

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2c

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2c
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_3c

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3c
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4c

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4c
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->c:B

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_5c

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5c
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->d:B

    and-int/lit8 p2, p2, -0x8

    if-eqz p2, :cond_67

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/lc/LC36;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_67
    return-void
.end method
