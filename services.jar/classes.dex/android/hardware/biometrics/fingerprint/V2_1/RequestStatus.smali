.class public final Landroid/hardware/biometrics/fingerprint/V2_1/RequestStatus;
.super Ljava/lang/Object;
.source "RequestStatus.java"


# static fields
.field public static final SYS_EACCES:I = -0xd

.field public static final SYS_EAGAIN:I = -0xb

.field public static final SYS_EBUSY:I = -0x10

.field public static final SYS_EFAULT:I = -0xe

.field public static final SYS_EINTR:I = -0x4

.field public static final SYS_EINVAL:I = -0x16

.field public static final SYS_EIO:I = -0x5

.field public static final SYS_ENOENT:I = -0x2

.field public static final SYS_ENOMEM:I = -0xc

.field public static final SYS_ENOSPC:I = -0x1c

.field public static final SYS_ETIMEDOUT:I = -0x6e

.field public static final SYS_OK:I = 0x0

.field public static final SYS_UNKNOWN:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const-string v2, "SYS_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_12
    const-string v2, "SYS_OK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, -0x2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_23

    const-string v2, "SYS_ENOENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x2

    :cond_23
    and-int/lit8 v2, p0, -0x4

    const/4 v3, -0x4

    if-ne v2, v3, :cond_2f

    const-string v2, "SYS_EINTR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x4

    :cond_2f
    and-int/lit8 v2, p0, -0x5

    const/4 v3, -0x5

    if-ne v2, v3, :cond_3b

    const-string v2, "SYS_EIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x5

    :cond_3b
    and-int/lit8 v2, p0, -0xb

    const/16 v3, -0xb

    if-ne v2, v3, :cond_48

    const-string v2, "SYS_EAGAIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0xb

    :cond_48
    and-int/lit8 v2, p0, -0xc

    const/16 v3, -0xc

    if-ne v2, v3, :cond_55

    const-string v2, "SYS_ENOMEM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0xc

    :cond_55
    and-int/lit8 v2, p0, -0xd

    const/16 v3, -0xd

    if-ne v2, v3, :cond_62

    const-string v2, "SYS_EACCES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0xd

    :cond_62
    and-int/lit8 v2, p0, -0xe

    const/16 v3, -0xe

    if-ne v2, v3, :cond_6f

    const-string v2, "SYS_EFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0xe

    :cond_6f
    and-int/lit8 v2, p0, -0x10

    const/16 v3, -0x10

    if-ne v2, v3, :cond_7c

    const-string v2, "SYS_EBUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x10

    :cond_7c
    and-int/lit8 v2, p0, -0x16

    const/16 v3, -0x16

    if-ne v2, v3, :cond_89

    const-string v2, "SYS_EINVAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x16

    :cond_89
    and-int/lit8 v2, p0, -0x1c

    const/16 v3, -0x1c

    if-ne v2, v3, :cond_96

    const-string v2, "SYS_ENOSPC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x1c

    :cond_96
    and-int/lit8 v2, p0, -0x6e

    const/16 v3, -0x6e

    if-ne v2, v3, :cond_a3

    const-string v2, "SYS_ETIMEDOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x6e

    :cond_a3
    if-eq p0, v1, :cond_bf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bf
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "SYS_UNKNOWN"

    return-object v0

    :cond_6
    if-nez p0, :cond_b

    const-string v0, "SYS_OK"

    return-object v0

    :cond_b
    const/4 v0, -0x2

    if-ne p0, v0, :cond_11

    const-string v0, "SYS_ENOENT"

    return-object v0

    :cond_11
    const/4 v0, -0x4

    if-ne p0, v0, :cond_17

    const-string v0, "SYS_EINTR"

    return-object v0

    :cond_17
    const/4 v0, -0x5

    if-ne p0, v0, :cond_1d

    const-string v0, "SYS_EIO"

    return-object v0

    :cond_1d
    const/16 v0, -0xb

    if-ne p0, v0, :cond_24

    const-string v0, "SYS_EAGAIN"

    return-object v0

    :cond_24
    const/16 v0, -0xc

    if-ne p0, v0, :cond_2b

    const-string v0, "SYS_ENOMEM"

    return-object v0

    :cond_2b
    const/16 v0, -0xd

    if-ne p0, v0, :cond_32

    const-string v0, "SYS_EACCES"

    return-object v0

    :cond_32
    const/16 v0, -0xe

    if-ne p0, v0, :cond_39

    const-string v0, "SYS_EFAULT"

    return-object v0

    :cond_39
    const/16 v0, -0x10

    if-ne p0, v0, :cond_40

    const-string v0, "SYS_EBUSY"

    return-object v0

    :cond_40
    const/16 v0, -0x16

    if-ne p0, v0, :cond_47

    const-string v0, "SYS_EINVAL"

    return-object v0

    :cond_47
    const/16 v0, -0x1c

    if-ne p0, v0, :cond_4e

    const-string v0, "SYS_ENOSPC"

    return-object v0

    :cond_4e
    const/16 v0, -0x6e

    if-ne p0, v0, :cond_55

    const-string v0, "SYS_ETIMEDOUT"

    return-object v0

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
