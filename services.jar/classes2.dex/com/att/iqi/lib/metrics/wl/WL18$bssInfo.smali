.class public Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/metrics/wl/WL18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bssInfo"
.end annotation


# instance fields
.field private a:[B

.field private b:B

.field private c:B

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;B)B
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->b:B

    return p1
.end method

.method static synthetic a(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    const/16 v1, 0x5f

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_14
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic a(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;)[B
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    return-object p0
.end method

.method static synthetic a(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;[B)[B
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    return-object p1
.end method

.method static synthetic b(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;B)B
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->c:B

    return p1
.end method

.method static synthetic b(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->e:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->b:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->c:B

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public getBssId()[B
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    return-object v0
.end method

.method public getCapabilities()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getChanNum()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->b:B

    return v0
.end method

.method public getRssi()B
    .registers 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->c:B

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->b:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->c:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public setBssId([B)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_9

    :cond_4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    return-void
.end method

.method public setCapabilities(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setChanFromFreq(I)V
    .registers 2

    invoke-static {p1}, Lcom/att/iqi/lib/metrics/wl/WL14;->frequencyToChannel(I)B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->b:B

    return-void
.end method

.method public setRssi(B)V
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->c:B

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    array-length v0, v0

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_13
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->b:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->c:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
