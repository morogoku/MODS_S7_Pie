.class public final Landroid/hardware/usb/gadget/V1_0/GadgetFunction;
.super Ljava/lang/Object;
.source "GadgetFunction.java"


# static fields
.field public static final ACCESSORY:J = 0x2L

.field public static final ADB:J = 0x1L

.field public static final AUDIO_SOURCE:J = 0x40L

.field public static final MIDI:J = 0x8L

.field public static final MTP:J = 0x4L

.field public static final NONE:J = 0x0L

.field public static final PTP:J = 0x10L

.field public static final RNDIS:J = 0x20L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(J)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    const-string v3, "NONE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_1a

    const-string v5, "ADB"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_1a
    const-wide/16 v3, 0x2

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_28

    const-string v5, "ACCESSORY"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_28
    const-wide/16 v3, 0x4

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_36

    const-string v5, "MTP"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_36
    const-wide/16 v3, 0x8

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_44

    const-string v5, "MIDI"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_44
    const-wide/16 v3, 0x10

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_52

    const-string v5, "PTP"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_52
    const-wide/16 v3, 0x20

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_60

    const-string v5, "RNDIS"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_60
    const-wide/16 v3, 0x40

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_6e

    const-string v5, "AUDIO_SOURCE"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_6e
    cmp-long v3, p0, v1

    if-eqz v3, :cond_8c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-long v4, v1

    and-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8c
    const-string v3, " | "

    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final toString(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    const-string v0, "NONE"

    return-object v0

    :cond_9
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_12

    const-string v0, "ADB"

    return-object v0

    :cond_12
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1b

    const-string v0, "ACCESSORY"

    return-object v0

    :cond_1b
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_24

    const-string v0, "MTP"

    return-object v0

    :cond_24
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_2d

    const-string v0, "MIDI"

    return-object v0

    :cond_2d
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_36

    const-string v0, "PTP"

    return-object v0

    :cond_36
    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-nez v0, :cond_3f

    const-string v0, "RNDIS"

    return-object v0

    :cond_3f
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-nez v0, :cond_48

    const-string v0, "AUDIO_SOURCE"

    return-object v0

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
