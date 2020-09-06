.class public Lcom/att/iqi/lib/metrics/gs/GS01;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/gs/GS01;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private a:I

.field private b:B

.field private c:B

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "GS01"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/gs/GS01;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/gs/GS01$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/gs/GS01$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/gs/GS01;->CREATOR:Landroid/os/Parcelable$Creator;

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

    const/4 v1, 0x1

    if-lt v0, v1, :cond_22

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->c:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->d:Ljava/lang/String;

    :cond_22
    return-void
.end method


# virtual methods
.method public getCallId()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->a:I

    return v0
.end method

.method public getCallNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCallState()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->c:B

    return v0
.end method

.method public isOriginated()Z
    .registers 3

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method public isTerminated()Z
    .registers 3

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method public isVideo()Z
    .registers 3

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isVoice()Z
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->a:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->c:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/gs/GS01;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setCallId(I)Lcom/att/iqi/lib/metrics/gs/GS01;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->a:I

    return-object p0
.end method

.method public setCallNumber(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/gs/GS01;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setCallState(B)Lcom/att/iqi/lib/metrics/gs/GS01;
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->c:B

    return-object p0
.end method

.method public setOriginated()Lcom/att/iqi/lib/metrics/gs/GS01;
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    and-int/lit16 v0, v0, 0xfe

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    return-object p0
.end method

.method public setTerminated()Lcom/att/iqi/lib/metrics/gs/GS01;
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    return-object p0
.end method

.method public setVideo()Lcom/att/iqi/lib/metrics/gs/GS01;
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    return-object p0
.end method

.method public setVoice()Lcom/att/iqi/lib/metrics/gs/GS01;
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    and-int/lit16 v0, v0, 0xfd

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->b:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->c:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
