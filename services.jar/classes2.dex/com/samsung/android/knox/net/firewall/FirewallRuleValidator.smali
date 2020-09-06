.class public Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;
.super Ljava/lang/Object;
.source "FirewallRuleValidator.java"


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final APP_IDENTITY:Ljava/lang/String; = "app identity"

.field private static final DIRECTION:Ljava/lang/String; = "direction"

.field private static final NETWORK_INTERFACE:Ljava/lang/String; = "network interface"

.field private static final PARAMETERS:Ljava/lang/String; = "Parameter(s): "

.field private static final PORT_LOCATION:Ljava/lang/String; = "port location"

.field private static final PORT_NUMBER:Ljava/lang/String; = "port number"

.field private static final PROTOCOL:Ljava/lang/String; = "protocol"

.field private static final SIZE_IPV4_ADDRESS:I = 0x4

.field private static final SIZE_IPV6_ADDRESS:I = 0x10

.field private static final SIZE_SHORT_INT:I = 0x2

.field private static final SOURCE_ADDRESS:Ljava/lang/String; = "source address"

.field private static final SOURCE_PORT_NUMBER:Ljava/lang/String; = "source port number"

.field private static final TARGET_IP:Ljava/lang/String; = "target IP"

.field private static final TARGET_PORT_NUMBER:Ljava/lang/String; = "target port number"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertFromHexToInt(Ljava/lang/String;)J
    .registers 3

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p0, :cond_ff

    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_ff

    :cond_c
    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_99

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_56

    aget-object v1, v0, v4

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    rsub-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_33
    if-ge v4, v5, :cond_3d

    const-string v7, "0:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_3d
    move v4, v5

    :goto_3e
    if-ge v4, v3, :cond_51

    sub-int v7, v4, v5

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v4, v2, :cond_4e

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_56
    aget-object v1, v0, v4

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    rsub-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_67
    if-ge v4, v5, :cond_82

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    :cond_82
    move v4, v5

    :goto_83
    if-ge v4, v3, :cond_94

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v4, v2, :cond_91

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    :cond_94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_99
    array-length v1, v0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_fd

    aget-object v1, v0, v4

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v5, v0, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v1

    rsub-int/lit8 v6, v6, 0x8

    array-length v7, v5

    sub-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_b8
    array-length v8, v1

    if-ge v4, v8, :cond_d4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b8

    :cond_d4
    array-length v4, v1

    :goto_d5
    array-length v8, v1

    add-int/2addr v8, v6

    if-ge v4, v8, :cond_e1

    const-string v8, "0:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    :cond_e1
    array-length v4, v1

    add-int/2addr v4, v6

    :goto_e3
    if-ge v4, v3, :cond_f8

    array-length v8, v1

    sub-int v8, v4, v8

    sub-int/2addr v8, v6

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v4, v2, :cond_f5

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f5
    add-int/lit8 v4, v4, 0x1

    goto :goto_e3

    :cond_f8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_fd
    const/4 v1, 0x0

    return-object v1

    :cond_ff
    :goto_ff
    return-object p0
.end method

.method private static isIpv4MappedAddress([B)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    array-length v1, p0

    const/16 v2, 0x10

    if-ge v1, v2, :cond_9

    goto :goto_25

    :cond_9
    move v1, v0

    :goto_a
    const/16 v2, 0xa

    if-ge v1, v2, :cond_16

    aget-byte v2, p0, v1

    if-eqz v2, :cond_13

    return v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    aget-byte v1, p0, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x1

    return v0

    :cond_24
    :goto_24
    return v0

    :cond_25
    :goto_25
    return v0
.end method

.method private static translateIpv4MappedAddress([B)[B
    .registers 5

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->isIpv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static translateIpv4TextualAddress(Ljava/lang/String;)[B
    .registers 22

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-eqz v1, :cond_116

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_116

    :cond_d
    const/4 v0, 0x4

    new-array v3, v0, [B

    const-string v4, "\\."

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    :try_start_17
    array-length v5, v4

    const/16 v6, 0x10

    const-wide/32 v7, 0xffffff

    const/4 v9, 0x3

    const/16 v10, 0x8

    const-wide/32 v11, 0xffff

    const/4 v13, 0x2

    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0xff

    packed-switch v5, :pswitch_data_118

    return-object v2

    :pswitch_2f
    nop

    :goto_30
    move/from16 v5, v17

    if-ge v5, v0, :cond_4e

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v6, v15

    if-ltz v8, :cond_4d

    cmp-long v8, v6, v18

    if-lez v8, :cond_44

    goto :goto_4d

    :cond_44
    and-long v8, v6, v18

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    add-int/lit8 v17, v5, 0x1

    goto :goto_30

    :cond_4d
    :goto_4d
    return-object v2

    :cond_4e
    goto/16 :goto_111

    :pswitch_50
    nop

    :goto_51
    move/from16 v0, v17

    if-ge v0, v13, :cond_6f

    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, v15

    if-ltz v7, :cond_6e

    cmp-long v7, v5, v18

    if-lez v7, :cond_65

    goto :goto_6e

    :cond_65
    and-long v7, v5, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    add-int/lit8 v17, v0, 0x1

    goto :goto_51

    :cond_6e
    :goto_6e
    return-object v2

    :cond_6f
    aget-object v0, v4, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v5, v15

    if-ltz v0, :cond_8f

    cmp-long v0, v5, v11

    if-lez v0, :cond_7f

    goto :goto_8f

    :cond_7f
    shr-long v7, v5, v10

    and-long v7, v7, v18

    long-to-int v0, v7

    int-to-byte v0, v0

    aput-byte v0, v3, v13

    and-long v7, v5, v18

    long-to-int v0, v7

    int-to-byte v0, v0

    aput-byte v0, v3, v9

    goto/16 :goto_111

    :cond_8f
    :goto_8f
    return-object v2

    :pswitch_90
    aget-object v0, v4, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v9, v0

    cmp-long v0, v9, v15

    if-ltz v0, :cond_d4

    cmp-long v0, v9, v18

    if-lez v0, :cond_a0

    goto :goto_d4

    :cond_a0
    and-long v11, v9, v18

    long-to-int v0, v11

    int-to-byte v0, v0

    aput-byte v0, v3, v17

    aget-object v0, v4, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v9, v0

    cmp-long v0, v9, v15

    if-ltz v0, :cond_d3

    cmp-long v0, v9, v7

    if-lez v0, :cond_b6

    goto :goto_d3

    :cond_b6
    shr-long v5, v9, v6

    and-long v5, v5, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v14

    const-wide/32 v5, 0xffff

    and-long/2addr v5, v9

    const/16 v0, 0x8

    shr-long/2addr v5, v0

    and-long v5, v5, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v13

    and-long v5, v9, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v5, 0x3

    aput-byte v0, v3, v5

    goto :goto_111

    :cond_d3
    :goto_d3
    return-object v2

    :cond_d4
    :goto_d4
    return-object v2

    :pswitch_d5
    aget-object v0, v4, v17

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v0, v9, v15

    if-ltz v0, :cond_113

    const-wide v11, 0xffffffffL

    cmp-long v0, v9, v11

    if-lez v0, :cond_e9

    goto :goto_113

    :cond_e9
    const/16 v0, 0x18

    shr-long v11, v9, v0

    and-long v11, v11, v18

    long-to-int v0, v11

    int-to-byte v0, v0

    aput-byte v0, v3, v17

    and-long/2addr v7, v9

    shr-long v5, v7, v6

    and-long v5, v5, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v14

    const-wide/32 v5, 0xffff

    and-long/2addr v5, v9

    const/16 v0, 0x8

    shr-long/2addr v5, v0

    and-long v5, v5, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v13

    and-long v5, v9, v18

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v5, 0x3

    aput-byte v0, v3, v5
    :try_end_110
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_110} :catch_114

    nop

    :goto_111
    nop

    return-object v3

    :cond_113
    :goto_113
    return-object v2

    :catch_114
    move-exception v0

    return-object v2

    :cond_116
    :goto_116
    return-object v2

    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_90
        :pswitch_50
        :pswitch_2f
    .end packed-switch
.end method

.method public static validadeIpv4Range(Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_64

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    aget-object v3, v1, v0

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_63

    array-length v5, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_63

    if-eqz v4, :cond_63

    array-length v5, v4

    if-eq v5, v6, :cond_43

    goto :goto_63

    :cond_43
    move v5, v0

    :goto_44
    if-ge v5, v6, :cond_62

    const/4 v7, -0x1

    const/4 v8, -0x1

    :try_start_48
    aget-object v9, v3, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v7, v9

    aget-object v9, v4, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_55} :catch_60

    move v8, v9

    nop

    if-le v7, v8, :cond_5a

    return v0

    :cond_5a
    if-ge v7, v8, :cond_5d

    return v2

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :catch_60
    move-exception v2

    return v0

    :cond_62
    return v2

    :cond_63
    :goto_63
    return v0

    :cond_64
    return v0
.end method

.method public static validadeIpv6Range(Ljava/lang/String;)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8c

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v0

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    :cond_3f
    aget-object v3, v1, v2

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_51
    aget-object v3, v1, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_8b

    array-length v5, v3

    const/16 v6, 0x8

    if-ne v5, v6, :cond_8b

    if-eqz v4, :cond_8b

    array-length v5, v4

    if-eq v5, v6, :cond_6e

    goto :goto_8b

    :cond_6e
    move v5, v0

    :goto_6f
    if-ge v5, v6, :cond_8a

    aget-object v7, v3, v5

    invoke-static {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertFromHexToInt(Ljava/lang/String;)J

    move-result-wide v7

    aget-object v9, v4, v5

    invoke-static {v9}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertFromHexToInt(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_82

    return v0

    :cond_82
    cmp-long v11, v7, v9

    if-gez v11, :cond_87

    return v2

    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    :cond_8a
    return v2

    :cond_8b
    :goto_8b
    return v0

    :cond_8c
    return v0
.end method

.method public static validadePortNumberRange(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3e

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v3, -0x1

    const/4 v4, -0x1

    :try_start_29
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_36} :catch_3c

    move v4, v5

    nop

    if-le v3, v4, :cond_3b

    return v0

    :cond_3b
    return v2

    :catch_3c
    move-exception v2

    return v0

    :cond_3e
    return v0
.end method

.method public static validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    if-nez p0, :cond_14

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Rule is null."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "Parameter(s): address"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_59

    :cond_3f
    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "Parameter(s): address"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_87

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_87

    const-string v4, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    if-eqz v1, :cond_81

    const-string v4, "Parameter(s): port number"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_81
    const-string v4, ", port number"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_86
    const/4 v1, 0x0

    :cond_87
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v4

    if-nez v4, :cond_9b

    if-eqz v1, :cond_95

    const-string v4, "Parameter(s): port location"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9a

    :cond_95
    const-string v4, ", port location"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9a
    const/4 v1, 0x0

    :cond_9b
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    if-eqz v4, :cond_c7

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c7

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d5

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d5

    :cond_c7
    if-eqz v1, :cond_cf

    const-string v4, "Parameter(s): app identity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d4

    :cond_cf
    const-string v4, ", app identity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d4
    const/4 v1, 0x0

    :cond_d5
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v4

    if-nez v4, :cond_e9

    if-eqz v1, :cond_e3

    const-string v4, "Parameter(s): network interface"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e8

    :cond_e3
    const-string v4, ", network interface"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e8
    const/4 v1, 0x0

    :cond_e9
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v4

    if-nez v4, :cond_fd

    if-eqz v1, :cond_f7

    const-string v4, "Parameter(s): protocol"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fc

    :cond_f7
    const-string v4, ", protocol"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_fc
    const/4 v1, 0x0

    :cond_fd
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v4

    if-nez v4, :cond_111

    if-eqz v1, :cond_10b

    const-string v4, "Parameter(s): direction"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_110

    :cond_10b
    const-string v4, ", direction"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_110
    const/4 v1, 0x0

    :cond_111
    if-nez v1, :cond_126

    const-string v4, " is(are) invalid."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4

    :cond_126
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Parameters validated successfully"

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4
.end method

.method public static validateDenyRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0
.end method

.method public static validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 5

    if-nez p0, :cond_e

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Rule is null."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v0

    :cond_e
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Failed to validate Rule."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v0

    :pswitch_29
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateRedirectExceptionRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0

    :pswitch_2e
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateRedirectRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0

    :pswitch_33
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateDenyRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0

    :pswitch_38
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
    .end packed-switch
.end method

.method public static validateHostName(Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xff

    if-le v1, v3, :cond_17

    return v0

    :cond_17
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v0

    :goto_1f
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_42

    aget-object v5, v1, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_35

    const/16 v6, 0x7a

    if-le v5, v6, :cond_3d

    :cond_35
    const/16 v6, 0x41

    if-lt v5, v6, :cond_3f

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_3f

    :cond_3d
    const/4 v3, 0x1

    goto :goto_42

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_42
    :goto_42
    if-nez v3, :cond_45

    return v0

    :cond_45
    const/4 v4, 0x0

    move v5, v4

    move v4, v0

    :goto_48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_5b

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_58

    add-int/lit8 v5, v5, 0x1

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_5b
    array-length v4, v1

    if-lt v5, v4, :cond_5f

    return v0

    :cond_5f
    array-length v4, v1

    move v6, v0

    :goto_61
    if-ge v6, v4, :cond_71

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x3f

    if-le v8, v9, :cond_6e

    return v0

    :cond_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    :cond_71
    const-string v4, "^[A-Za-z0-9-]+$"

    array-length v6, v1

    move v7, v0

    :goto_75
    if-ge v7, v6, :cond_97

    aget-object v8, v1, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_96

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_96

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_93

    goto :goto_96

    :cond_93
    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    :cond_96
    :goto_96
    return v0

    :cond_97
    return v2
.end method

.method public static validateIpv4Address(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4TextualAddress(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_11

    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static validateIpv6Address(Ljava/lang/String;)Z
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_10b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_e

    goto/16 :goto_10b

    :cond_e
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    new-array v7, v6, [B

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_27

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_27

    return v1

    :cond_27
    move v8, v3

    move v10, v8

    move v8, v4

    move v4, v2

    move v2, v1

    :goto_2c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, -0x1

    if-ge v3, v11, :cond_b8

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    if-eq v13, v12, :cond_4c

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v13

    const v12, 0xffff

    if-le v5, v12, :cond_48

    return v1

    :cond_48
    const/4 v2, 0x1

    nop

    :goto_4a
    move v3, v11

    goto :goto_2c

    :cond_4c
    if-ne v3, v9, :cond_75

    move v10, v11

    if-nez v2, :cond_56

    if-eq v4, v12, :cond_54

    return v1

    :cond_54
    move v4, v8

    goto :goto_4a

    :cond_56
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_5d

    return v1

    :cond_5d
    add-int/lit8 v12, v8, 0x2

    if-le v12, v6, :cond_62

    return v1

    :cond_62
    add-int/lit8 v12, v8, 0x1

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    aput-byte v14, v7, v8

    add-int/lit8 v8, v12, 0x1

    and-int/lit16 v14, v5, 0xff

    int-to-byte v14, v14

    aput-byte v14, v7, v12

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto :goto_4a

    :cond_75
    const/16 v9, 0x2e

    if-ne v3, v9, :cond_b6

    add-int/lit8 v14, v8, 0x4

    if-gt v14, v6, :cond_b6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v0, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move v6, v15

    move v15, v1

    :goto_88
    invoke-virtual {v14, v9, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v15, v1

    if-eq v1, v12, :cond_95

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    goto :goto_88

    :cond_95
    const/4 v1, 0x3

    if-eq v6, v1, :cond_9a

    const/4 v1, 0x0

    return v1

    :cond_9a
    const/4 v1, 0x0

    invoke-static {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4TextualAddress(Ljava/lang/String;)[B

    move-result-object v9

    if-nez v9, :cond_a2

    return v1

    :cond_a2
    const/4 v1, 0x0

    :goto_a3
    const/4 v12, 0x4

    if-ge v1, v12, :cond_b1

    add-int/lit8 v12, v8, 0x1

    aget-byte v17, v9, v1

    aput-byte v17, v7, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v12

    const/4 v12, -0x1

    goto :goto_a3

    :cond_b1
    const/4 v2, 0x0

    nop

    move v3, v11

    const/4 v1, 0x0

    goto :goto_b8

    :cond_b6
    const/4 v1, 0x0

    return v1

    :cond_b8
    :goto_b8
    if-eqz v2, :cond_d1

    add-int/lit8 v6, v8, 0x2

    const/16 v9, 0x10

    if-le v6, v9, :cond_c1

    return v1

    :cond_c1
    add-int/lit8 v1, v8, 0x1

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v8

    add-int/lit8 v8, v1, 0x1

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v1

    :cond_d1
    const/4 v1, -0x1

    if-eq v4, v1, :cond_f5

    sub-int v1, v8, v4

    const/16 v6, 0x10

    if-ne v8, v6, :cond_dc

    const/4 v6, 0x0

    return v6

    :cond_dc
    const/4 v3, 0x1

    :goto_dd
    if-gt v3, v1, :cond_f3

    rsub-int/lit8 v9, v3, 0x10

    add-int v6, v4, v1

    sub-int/2addr v6, v3

    aget-byte v6, v7, v6

    aput-byte v6, v7, v9

    add-int v6, v4, v1

    sub-int/2addr v6, v3

    const/4 v9, 0x0

    aput-byte v9, v7, v6

    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x10

    goto :goto_dd

    :cond_f3
    const/16 v8, 0x10

    :cond_f5
    const/16 v1, 0x10

    if-eq v8, v1, :cond_fb

    const/4 v1, 0x0

    return v1

    :cond_fb
    invoke-static {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4MappedAddress([B)[B

    move-result-object v1

    const/4 v6, 0x1

    if-eqz v1, :cond_10a

    if-eqz v1, :cond_107

    move/from16 v16, v6

    goto :goto_109

    :cond_107
    const/16 v16, 0x0

    :goto_109
    return v16

    :cond_10a
    return v6

    :cond_10b
    :goto_10b
    const/4 v1, 0x0

    return v1
.end method

.method public static validatePackageName(Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "*"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    move v3, v0

    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_27

    add-int/lit8 v4, v4, 0x1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2a
    array-length v3, v1

    if-lt v4, v3, :cond_2e

    return v0

    :cond_2e
    const-string v3, "^[A-Za-z0-9_]+$"

    array-length v5, v1

    move v6, v0

    :goto_32
    if-ge v6, v5, :cond_59

    aget-object v7, v1, v6

    invoke-virtual {v7, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5f

    if-eq v8, v9, :cond_58

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_55

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_55

    goto :goto_58

    :cond_55
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_58
    :goto_58
    return v0

    :cond_59
    return v2
.end method

.method public static validatePortNumber(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_b

    :catch_9
    move-exception v1

    const/4 v1, -0x1

    :goto_b
    if-ltz v1, :cond_14

    const v2, 0xffff

    if-gt v1, v2, :cond_14

    const/4 v0, 0x1

    nop

    :cond_14
    return v0
.end method

.method public static validateRedirectExceptionRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 9

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_14

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Rule is null."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "Parameter(s): address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_59

    :cond_3f
    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "Parameter(s): address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_87

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_87

    const-string v4, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    if-eqz v0, :cond_81

    const-string v4, "Parameter(s): port number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_81
    const-string v4, ", port number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_86
    const/4 v0, 0x0

    :cond_87
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    if-eqz v4, :cond_b3

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b3

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c1

    :cond_b3
    if-eqz v0, :cond_bb

    const-string v4, "Parameter(s): app identity"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c0

    :cond_bb
    const-string v4, ", app identity"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c0
    const/4 v0, 0x0

    :cond_c1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v4

    if-nez v4, :cond_d5

    if-eqz v0, :cond_cf

    const-string v4, "Parameter(s): protocol"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d4

    :cond_cf
    const-string v4, ", protocol"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d4
    const/4 v0, 0x0

    :cond_d5
    if-nez v0, :cond_ea

    const-string v4, " is(are) invalid."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4

    :cond_ea
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Parameters validated successfully"

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4
.end method

.method public static validateRedirectRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 10

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_14

    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Rule is null."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "Parameter(s): source address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_59

    :cond_3f
    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "Parameter(s): source address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_87

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_87

    const-string v4, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    if-eqz v0, :cond_81

    const-string v4, "Parameter(s): source port number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_81
    const-string v4, ", source port number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_86
    const/4 v0, 0x0

    :cond_87
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ac

    const-string v5, "Parameter(s): target IP"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_ac

    :cond_a0
    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ac

    const-string v5, "Parameter(s): target IP"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_ac
    :goto_ac
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c2

    const-string v5, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    :cond_c2
    if-eqz v0, :cond_ca

    const-string v5, "Parameter(s): target port number"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    :cond_ca
    const-string v5, ", target port number"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_cf
    const/4 v0, 0x0

    :cond_d0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v5

    if-eqz v5, :cond_fc

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_fc

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10a

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10a

    :cond_fc
    if-eqz v0, :cond_104

    const-string v5, "Parameter(s): app identity"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_109

    :cond_104
    const-string v5, ", app identity"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_109
    const/4 v0, 0x0

    :cond_10a
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v5

    if-nez v5, :cond_11e

    if-eqz v0, :cond_118

    const-string v5, "Parameter(s): network interface"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11d

    :cond_118
    const-string v5, ", network interface"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11d
    const/4 v0, 0x0

    :cond_11e
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v5

    if-nez v5, :cond_132

    if-eqz v0, :cond_12c

    const-string v5, "Parameter(s): protocol"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_131

    :cond_12c
    const-string v5, ", protocol"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_131
    const/4 v0, 0x0

    :cond_132
    if-nez v0, :cond_147

    const-string v5, " is(are) invalid."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v5

    :cond_147
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "Parameters validated successfully"

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v5
.end method
