.class public Lcom/att/iqi/lib/metrics/gs/GS03;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/gs/GS03;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private a:I

.field private b:I

.field private c:S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "GS03"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/gs/GS03;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/gs/GS03$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/gs/GS03$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/gs/GS03;->CREATOR:Landroid/os/Parcelable$Creator;

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

    if-lt v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->c:S

    :cond_1d
    return-void
.end method


# virtual methods
.method public getCallId()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->a:I

    return v0
.end method

.method public getErrCode()I
    .registers 2

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->b:I

    return v0
.end method

.method public getTermCode()I
    .registers 2

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->c:S

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->a:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->b:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->c:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setCallId(I)Lcom/att/iqi/lib/metrics/gs/GS03;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->a:I

    return-object p0
.end method

.method public setErrCode(I)Lcom/att/iqi/lib/metrics/gs/GS03;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->b:I

    return-object p0
.end method

.method public setTermCode(S)Lcom/att/iqi/lib/metrics/gs/GS03;
    .registers 2

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->c:S

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->c:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
