.class public Lcom/att/iqi/lib/metrics/lc/LC18;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/lc/LC18;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private a:B

.field private b:B

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

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "LC18"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC18;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/lc/LC18$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/lc/LC18$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/lc/LC18;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/lc/LC18;->clear()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5e

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->a:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->b:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->c:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->d:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->m:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->n:I

    :cond_5e
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->a:B

    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->b:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->c:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->d:B

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->e:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->f:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->g:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->h:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->i:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->j:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->k:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->l:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->m:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->n:I

    return-void
.end method

.method public getAltitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->g:I

    return v0
.end method

.method public getFieldsValid()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->d:B

    return v0
.end method

.method public getHeading()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->j:I

    return v0
.end method

.method public getLatitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->e:I

    return v0
.end method

.method public getLongitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->f:I

    return v0
.end method

.method public getRequestType()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->a:B

    return v0
.end method

.method public getResult()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->c:B

    return v0
.end method

.method public getSource()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->b:B

    return v0
.end method

.method public getUncertaintyAint()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->l:I

    return v0
.end method

.method public getUncertaintyAltitude()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->n:I

    return v0
.end method

.method public getUncertaintyAngle()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->k:I

    return v0
.end method

.method public getUncertaintyPerpendicular()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->m:I

    return v0
.end method

.method public getVelocityHorizontal()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->h:I

    return v0
.end method

.method public getVelocityVertical()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->i:I

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->a:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->b:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->c:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->d:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->e:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->f:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->g:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->h:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->i:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->j:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->k:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->l:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->m:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->n:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setAltitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const v0, -0x64190

    if-lt p1, v0, :cond_d

    const v0, 0x1312d00

    if-gt p1, v0, :cond_d

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->g:I

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong altitude"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFieldsValid(B)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_9

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_9

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->d:B

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong fieldValid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeading(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_a

    const v0, 0x157529ff

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->j:I

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong heading"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLatitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;
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

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->e:I

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong latitude"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLongitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;
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

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->f:I

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong longitude"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequestType(B)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->a:B

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong request type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResult(B)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_8

    const/4 v0, 0x7

    if-gt p1, v0, :cond_8

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->c:B

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong result"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSource(B)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_8

    const/4 v0, 0x4

    if-gt p1, v0, :cond_8

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->b:B

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong source"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUncertaintyAint(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_a

    const v0, 0x5f5e100

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->l:I

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong uncertaintyAint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUncertaintyAltitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_a

    const v0, 0x1312d00

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->n:I

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong uncertaintyAltitude"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUncertaintyAngle(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_a

    const v0, 0xaba94ff

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->k:I

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong uncertaintyAngle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUncertaintyPerpendicular(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_a

    const v0, 0x5f5e100

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->m:I

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong uncertaintyPerpendicular"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVelocityHorizontal(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_a

    const v0, 0x53020

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->h:I

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong horizontal velocity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVelocityVertical(I)Lcom/att/iqi/lib/metrics/lc/LC18;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const v0, -0x53020

    if-lt p1, v0, :cond_d

    const v0, 0x53020

    if-gt p1, v0, :cond_d

    iput p1, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->i:I

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong vertical velocity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->a:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->b:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->c:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->d:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/lc/LC18;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
