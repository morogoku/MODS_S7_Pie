.class public Lcom/att/iqi/lib/metrics/wl/WL18;
.super Lcom/att/iqi/lib/Metric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;
    }
.end annotation


# static fields
.field public static final CHANNEL_VALUE_UNKNOWN:B = 0x0t

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/wl/WL18;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static final MAX_BSS_RECORDS:I = 0xf


# instance fields
.field private a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "WL18"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/wl/WL18;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/wl/WL18$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/wl/WL18$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/wl/WL18;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_5c

    new-array v1, v0, [Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_59

    new-instance v3, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    invoke-direct {v3}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_32

    aget-object v4, v1, v2

    new-array v3, v3, [B

    invoke-static {v4, v3}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;[B)[B

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_32
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-static {v3, v4}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;B)B

    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-static {v3, v4}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->b(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;B)B

    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->a(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;Ljava/lang/String;)Ljava/lang/String;

    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->b(Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_59
    invoke-virtual {p0, v1}, Lcom/att/iqi/lib/metrics/wl/WL18;->setBssInfo([Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;)V

    :cond_5c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    return-void
.end method

.method public getBssInfo()[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    return-object v0
.end method

.method public newBssInfo(I)[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;
    .registers 4

    new-array v0, p1, [Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_e

    new-instance v1, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;-><init>()V

    aput-object v1, v0, p1

    goto :goto_2

    :cond_e
    return-object v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    array-length v0, v0

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    array-length v0, v0

    const/16 v2, 0xf

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-byte v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_17
    if-ge v1, v0, :cond_26

    iget-object v2, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->serialize(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setBssInfo([Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_b

    :cond_4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    :goto_b
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    const/4 v0, 0x0

    if-nez p2, :cond_a

    move p2, v0

    goto :goto_13

    :cond_a
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    array-length p2, p2

    const/16 v1, 0xf

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    if-ge v0, p2, :cond_22

    iget-object v1, p0, Lcom/att/iqi/lib/metrics/wl/WL18;->a:[Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_22
    return-void
.end method
