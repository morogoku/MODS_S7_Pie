.class public Lcom/att/iqi/lib/metrics/rp/RP12;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/rp/RP12;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:S

.field private g:S

.field private h:S

.field private i:S

.field private j:S

.field private k:B

.field private l:B

.field private m:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "RP12"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP12;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP12$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP12$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP12;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP12;->reset()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_66

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->f:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->g:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->h:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->i:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->j:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->k:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->l:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_66

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_66
    return-void
.end method


# virtual methods
.method public getByteCount()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->e:I

    return v0
.end method

.method public getCumAvgPktSize()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->j:S

    return v0
.end method

.method public getDstPort()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->f:S

    return v0
.end method

.method public getDuration()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->b:I

    return v0
.end method

.method public getIpSrcAddr()[B
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    return-object v0
.end method

.method public getIpVersion()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->l:B

    return v0
.end method

.method public getMaxDelta()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->i:S

    return v0
.end method

.method public getMaxJitter()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->h:S

    return v0
.end method

.method public getMeanJitter()S
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->g:S

    return v0
.end method

.method public getMediaType()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->k:B

    return v0
.end method

.method public getPktCount()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->c:I

    return v0
.end method

.method public getPktLoss()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->d:I

    return v0
.end method

.method public getSsrc()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->a:I

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->a:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->b:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->c:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->d:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->e:I

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->f:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->g:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->h:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->i:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->j:S

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->k:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->l:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    return-void
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->a:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->b:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->c:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->d:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->e:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->f:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->g:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->h:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->i:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->j:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->k:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->l:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setByteCount(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->e:I

    return-object p0
.end method

.method public setCumAvgPktSize(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->j:S

    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->f:S

    return-object p0
.end method

.method public setDuration(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->b:I

    return-object p0
.end method

.method public setIpSrcAddr([B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    return-object p0
.end method

.method public setIpVersion(B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->l:B

    return-object p0
.end method

.method public setMaxDelta(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->i:S

    return-object p0
.end method

.method public setMaxJitter(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->h:S

    return-object p0
.end method

.method public setMeanJitter(S)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->g:S

    return-object p0
.end method

.method public setMediaType(B)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->k:B

    return-object p0
.end method

.method public setPktCount(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->c:I

    return-object p0
.end method

.method public setPktLoss(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->d:I

    return-object p0
.end method

.method public setSsrc(I)Lcom/att/iqi/lib/metrics/rp/RP12;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->a:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->f:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->g:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->h:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->i:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->j:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->k:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->l:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    const/4 v0, 0x0

    if-eqz p2, :cond_48

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    array-length p2, p2

    goto :goto_49

    :cond_48
    move p2, v0

    :goto_49
    if-lez p2, :cond_54

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/rp/RP12;->m:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
