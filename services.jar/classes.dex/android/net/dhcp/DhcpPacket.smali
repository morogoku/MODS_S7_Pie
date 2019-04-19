.class public abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpPacket$ParseException;
    }
.end annotation


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field private static final DHCP_MAGIC_COOKIE:I = 0x63825363

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_RELEASE:B = 0x7t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field private static final MAX_MTU:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field private static final MIN_MTU:I = 0x500

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"

.field private static mHostNameByDeviceName:Ljava/lang/String;

.field static testOverrideHostname:Ljava/lang/String;

.field static testOverrideVendorId:Ljava/lang/String;


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field private final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    const/4 v0, 0x0

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-void

    :array_1a
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    iput-short p2, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    iput-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iput-boolean p8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .registers 4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .registers 4

    if-eqz p2, :cond_10

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .registers 4

    if-eqz p2, :cond_10

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .registers 7

    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String is not US-ASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .registers 4

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    :cond_9
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_52

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_52

    :cond_9
    const/4 v0, 0x4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_33

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1e

    :cond_32
    return-void

    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHCP option too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_52
    :goto_52
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .registers 7

    if-eqz p2, :cond_33

    array-length v0, p2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_13

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_33

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCP option too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_33
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    new-instance v8, Landroid/net/dhcp/DhcpAckPacket;

    sget-object v5, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object/from16 v1, p9

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    move-object/from16 v2, p10

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    move-object/from16 v3, p6

    iput-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v4, p12

    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v5, p7

    iput-object v5, v0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v6, p11

    iput-object v6, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v7, p8

    iput-object v7, v0, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    const/16 v8, 0x44

    const/16 v9, 0x43

    move v10, p0

    invoke-virtual {v0, v10, v8, v9}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v8

    return-object v8
.end method

.method public static buildDiscoverPacket(IIS[BZ[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 10

    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    sput-object p6, Landroid/net/dhcp/DhcpPacket;->mHostNameByDeviceName:Ljava/lang/String;

    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[B)Ljava/nio/ByteBuffer;
    .registers 14

    new-instance v8, Landroid/net/dhcp/DhcpNakPacket;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p2

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    const-string/jumbo v1, "requested address not available"

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    const/16 v1, 0x44

    const/16 v2, 0x43

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    new-instance v8, Landroid/net/dhcp/DhcpOfferPacket;

    sget-object v5, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object/from16 v1, p9

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    move-object/from16 v2, p10

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    move-object/from16 v3, p6

    iput-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v4, p12

    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v5, p11

    iput-object v5, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v6, p7

    iput-object v6, v0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v7, p8

    iput-object v7, v0, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    const/16 v8, 0x44

    const/16 v9, 0x43

    move v10, p0

    invoke-virtual {v0, v10, v8, v9}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v8

    return-object v8
.end method

.method public static buildReleasePacket(IISLjava/net/Inet4Address;[BLjava/net/Inet4Address;)Ljava/nio/ByteBuffer;
    .registers 9

    new-instance v0, Landroid/net/dhcp/DhcpReleasePacket;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpReleasePacket;-><init>(ISLjava/net/Inet4Address;[B)V

    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 18

    move-object/from16 v0, p9

    new-instance v7, Landroid/net/dhcp/DhcpRequestPacket;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    move-object v2, p6

    iput-object v2, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    move-object v3, p7

    iput-object v3, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->mHostNameByDeviceName:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v4, p8

    iput-object v4, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v5, 0x43

    const/16 v6, 0x44

    move v7, p0

    invoke-virtual {v1, v7, v5, v6}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v5

    return-object v5
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .registers 13

    move v0, p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v3, p4, p3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [S

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_26

    aget-short v6, v3, v5

    invoke-static {v6}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_26
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr p3, v4

    if-eq p4, p3, :cond_39

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    int-to-short v4, v4

    if-gez v4, :cond_36

    add-int/lit16 v5, v4, 0x100

    int-to-short v4, v5

    :cond_36
    mul-int/lit16 v5, v4, 0x100

    add-int/2addr v0, v5

    :cond_39
    shr-int/lit8 v4, v0, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    and-int v6, v0, v5

    add-int/2addr v4, v6

    shr-int/lit8 v0, v4, 0x10

    and-int/2addr v0, v5

    add-int/2addr v0, v4

    and-int/2addr v0, v5

    not-int v4, v0

    int-to-short v5, v4

    invoke-static {v5}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v5

    return v5
.end method

.method static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .registers 92
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    move-object/from16 v22, v0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v24, v5

    if-nez v2, :cond_a5

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v0, 0x116

    if-lt v5, v0, :cond_7d

    const/4 v0, 0x6

    new-array v5, v0, [B

    move-object/from16 v26, v6

    new-array v6, v0, [B

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    move-object/from16 v27, v5

    sget v5, Landroid/system/OsConstants;->ETH_P_IP:I

    if-ne v0, v5, :cond_58

    move-object/from16 v29, v7

    move-object/from16 v32, v8

    const/4 v8, 0x1

    goto :goto_ac

    :cond_58
    new-instance v5, Landroid/net/dhcp/DhcpPacket$ParseException;

    move-object/from16 v28, v6

    sget v6, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    move-object/from16 v29, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v23

    const/16 v25, 0x0

    aput-object v23, v7, v25

    move/from16 v30, v0

    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v23, 0x1

    aput-object v0, v7, v23

    const-string v0, "Unexpected L2 type 0x%04x, expected 0x%04x"

    invoke-direct {v5, v6, v0, v7}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_7d
    move-object/from16 v26, v6

    move-object/from16 v29, v7

    new-instance v5, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v6, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v23, 0x0

    aput-object v0, v7, v23

    const/16 v0, 0x116

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v32, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const-string v0, "L2 packet too short, %d < %d"

    invoke-direct {v5, v6, v0, v7}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_a5
    move-object/from16 v26, v6

    move-object/from16 v29, v7

    move-object/from16 v32, v8

    const/4 v8, 0x1

    :goto_ac
    const/4 v0, 0x4

    if-gt v2, v8, :cond_1ac

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x108

    if-lt v5, v6, :cond_189

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v6, v5, 0xf0

    shr-int/2addr v6, v0

    if-ne v6, v0, :cond_16f

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v28

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v30

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v31

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v34

    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v22

    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v13

    move/from16 v35, v7

    const/16 v7, 0x11

    if-ne v0, v7, :cond_153

    and-int/lit8 v7, v5, 0xf

    add-int/lit8 v7, v7, -0x5

    const/16 v36, 0x0

    :goto_f4
    move/from16 v37, v36

    move/from16 v38, v5

    move/from16 v5, v37

    if-ge v5, v7, :cond_104

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v36, v5, 0x1

    move/from16 v5, v38

    goto :goto_f4

    :cond_104
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    move/from16 v39, v7

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v36

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v37

    invoke-static {v5, v7}, Landroid/net/dhcp/DhcpPacket;->isPacketToOrFromClient(SS)Z

    move-result v40

    if-nez v40, :cond_14d

    invoke-static {v5, v7}, Landroid/net/dhcp/DhcpPacket;->isPacketServerToServer(SS)Z

    move-result v40

    if-eqz v40, :cond_129

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v5, 0x1

    goto/16 :goto_1b0

    :cond_129
    move/from16 v41, v8

    new-instance v8, Landroid/net/dhcp/DhcpPacket$ParseException;

    move-object/from16 v42, v9

    sget v9, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    move-object/from16 v43, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v23

    const/16 v25, 0x0

    aput-object v23, v10, v25

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v23

    move/from16 v44, v5

    const/4 v5, 0x1

    aput-object v23, v10, v5

    const-string v5, "Unexpected UDP ports %d->%d"

    invoke-direct {v8, v9, v5, v10}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v8

    :cond_14d
    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v5, 0x1

    goto :goto_1b0

    :cond_153
    move/from16 v38, v5

    move/from16 v41, v8

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v5, 0x1

    new-instance v7, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v8, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v5, v10

    const-string v9, "Protocol not UDP: %d"

    invoke-direct {v7, v8, v9, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v7

    :cond_16f
    move/from16 v38, v5

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v5, 0x1

    const/4 v10, 0x0

    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v7, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    const-string v8, "Invalid IP version %d"

    invoke-direct {v0, v7, v8, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_189
    move-object/from16 v42, v9

    move-object/from16 v43, v10

    const/4 v10, 0x0

    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v5, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    const-string v6, "L3 packet too short, %d < %d"

    invoke-direct {v0, v5, v6, v7}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1ac
    move-object/from16 v42, v9

    move-object/from16 v43, v10

    :goto_1b0
    const/16 v0, 0xec

    const/4 v5, 0x2

    if-gt v2, v5, :cond_5d6

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v0, :cond_5d6

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v7, v0, 0xff

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    const v0, 0x8000

    and-int v0, v27, v0

    if-eqz v0, :cond_1e2

    const/4 v0, 0x1

    goto :goto_1e3

    :cond_1e2
    const/4 v0, 0x0

    :goto_1e3
    move/from16 v52, v0

    const/4 v0, 0x4

    new-array v2, v0, [B

    :try_start_1e8
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    move-object/from16 v53, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v48, v0

    check-cast v48, Ljava/net/Inet4Address;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v49, v0

    check-cast v49, Ljava/net/Inet4Address;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v50, v0

    check-cast v50, Ljava/net/Inet4Address;
    :try_end_214
    .catch Ljava/net/UnknownHostException; {:try_start_1e8 .. :try_end_214} :catch_5af

    nop

    nop

    const/16 v0, 0x10

    if-le v7, v0, :cond_21d

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    array-length v7, v0

    :cond_21d
    move/from16 v54, v5

    new-array v5, v7, [B

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/16 v28, 0x10

    rsub-int/lit8 v28, v7, 0x10

    add-int v0, v0, v28

    add-int/lit8 v0, v0, 0x40

    add-int/lit16 v0, v0, 0x80

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move/from16 v55, v6

    const/4 v6, 0x4

    if-lt v0, v6, :cond_591

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const v0, 0x63825363

    if-ne v6, v0, :cond_562

    move-object/from16 v59, v2

    move/from16 v60, v6

    move/from16 v56, v7

    move/from16 v57, v8

    move-object v2, v11

    move-object v6, v12

    move-object/from16 v58, v13

    move-object v8, v14

    move-object v7, v15

    move-object/from16 v14, v16

    move-object/from16 v64, v17

    move-object/from16 v12, v18

    move-object/from16 v66, v19

    move-object/from16 v67, v20

    move/from16 v11, v21

    move-object/from16 v65, v24

    move-object/from16 v63, v26

    move-object/from16 v15, v29

    move-object/from16 v62, v32

    move-object/from16 v61, v42

    move-object/from16 v13, v43

    const/4 v0, 0x1

    :goto_26e
    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move-object/from16 v68, v13

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    move-object/from16 v69, v7

    const/4 v7, -0x1

    if-ge v0, v13, :cond_42e

    if-eqz v16, :cond_42e

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    move v13, v0

    if-ne v13, v7, :cond_28d

    const/4 v0, 0x0

    :goto_289
    move-object/from16 v7, v69

    goto/16 :goto_3b2

    :cond_28d
    if-nez v13, :cond_292

    move/from16 v0, v16

    goto :goto_289

    :cond_292
    :try_start_292
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_296
    .catch Ljava/nio/BufferUnderflowException; {:try_start_292 .. :try_end_296} :catch_416

    and-int/lit16 v0, v0, 0xff

    const/4 v7, 0x0

    move/from16 v70, v7

    const/4 v7, 0x3

    move-object/from16 v71, v14

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3a2

    if-eq v13, v7, :cond_391

    const/4 v14, 0x6

    if-eq v13, v14, :cond_383

    const/16 v14, 0xc

    if-eq v13, v14, :cond_378

    const/16 v14, 0xf

    if-eq v13, v14, :cond_36d

    const/16 v14, 0x1a

    if-eq v13, v14, :cond_35e

    const/16 v14, 0x1c

    if-eq v13, v14, :cond_355

    const/16 v14, 0x2b

    if-eq v13, v14, :cond_34a

    packed-switch v13, :pswitch_data_5fc

    packed-switch v13, :pswitch_data_604

    const/4 v14, 0x0

    :goto_2c1
    if-ge v14, v0, :cond_2cb

    add-int/lit8 v70, v70, 0x1

    :try_start_2c5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v14, v14, 0x1

    goto :goto_2c1

    :cond_2cb
    :goto_2cb
    move-object/from16 v7, v69

    :goto_2cd
    move/from16 v14, v70

    goto/16 :goto_3ac

    :pswitch_2d1
    new-array v14, v0, [B

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move/from16 v70, v0

    goto :goto_2cb

    :pswitch_2d9
    move/from16 v70, v0

    const/4 v14, 0x1

    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v62, v17

    goto :goto_2cb

    :pswitch_2e3
    const/16 v70, 0x4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v67, v14

    goto :goto_2cb

    :pswitch_2f0
    const/16 v70, 0x4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v66, v14

    goto :goto_2cb

    :pswitch_2fd
    const/16 v70, 0x2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    move-object/from16 v64, v14

    goto :goto_2cb

    :pswitch_30a
    move/from16 v70, v0

    const/4 v14, 0x0

    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    goto :goto_2cb

    :pswitch_314
    new-array v14, v0, [B
    :try_end_316
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2c5 .. :try_end_316} :catch_414

    :try_start_316
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_319
    .catch Ljava/nio/BufferUnderflowException; {:try_start_316 .. :try_end_319} :catch_31f

    move/from16 v70, v0

    nop

    move-object/from16 v68, v14

    goto :goto_2cb

    :catch_31f
    move-exception v0

    move-object/from16 v68, v14

    goto/16 :goto_419

    :pswitch_324
    :try_start_324
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    move-object/from16 v65, v14

    const/16 v70, 0x4

    goto :goto_2cb

    :pswitch_32d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    move v11, v14

    const/16 v70, 0x1

    goto :goto_2cb

    :pswitch_335
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v12, v14

    const/16 v70, 0x4

    goto :goto_2cb

    :pswitch_341
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    const/16 v70, 0x4

    nop

    move-object v7, v14

    goto :goto_2cd

    :cond_34a
    move/from16 v70, v0

    const/4 v14, 0x1

    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v61, v17

    goto/16 :goto_2cb

    :cond_355
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    move-object v8, v14

    const/16 v70, 0x4

    goto/16 :goto_2cb

    :cond_35e
    const/16 v70, 0x2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    nop

    move-object/from16 v71, v14

    goto/16 :goto_2cb

    :cond_36d
    move/from16 v70, v0

    const/4 v14, 0x0

    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, v17

    goto/16 :goto_2cb

    :cond_378
    const/4 v14, 0x0

    move/from16 v70, v0

    invoke-static {v1, v0, v14}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_2cb

    :cond_383
    const/4 v14, 0x0

    :goto_384
    if-ge v14, v0, :cond_39f

    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x4

    const/4 v7, 0x3

    goto :goto_384

    :cond_391
    const/4 v7, 0x0

    :goto_392
    if-ge v7, v0, :cond_39e

    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x4

    goto :goto_392

    :cond_39e
    move v14, v7

    :cond_39f
    move-object/from16 v7, v69

    goto :goto_3ac

    :cond_3a2
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v7
    :try_end_3a6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_324 .. :try_end_3a6} :catch_414

    move-object/from16 v63, v7

    const/16 v70, 0x4

    goto/16 :goto_2cb

    :goto_3ac
    if-ne v14, v0, :cond_3b7

    move/from16 v0, v16

    move-object/from16 v14, v71

    :goto_3b2
    nop

    move-object/from16 v13, v68

    goto/16 :goto_26e

    :cond_3b7
    move-object/from16 v72, v2

    :try_start_3b9
    sget v2, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    invoke-static {v2, v13}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v2
    :try_end_3bf
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3b9 .. :try_end_3bf} :catch_408

    move-object/from16 v73, v6

    :try_start_3c1
    new-instance v6, Landroid/net/dhcp/DhcpPacket$ParseException;
    :try_end_3c3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3c1 .. :try_end_3c3} :catch_3fc

    move-object/from16 v74, v7

    :try_start_3c5
    const-string v7, "Invalid length %d for option %d, expected %d"
    :try_end_3c7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3c5 .. :try_end_3c7} :catch_3f2

    move-object/from16 v75, v8

    const/4 v8, 0x3

    :try_start_3ca
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v8, v18

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v8, v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v8, v18

    invoke-direct {v6, v2, v7, v8}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v6
    :try_end_3e8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3ca .. :try_end_3e8} :catch_3e8

    :catch_3e8
    move-exception v0

    move-object/from16 v2, v72

    move-object/from16 v6, v73

    move-object/from16 v69, v74

    move-object/from16 v8, v75

    goto :goto_419

    :catch_3f2
    move-exception v0

    move-object/from16 v75, v8

    move-object/from16 v2, v72

    move-object/from16 v6, v73

    move-object/from16 v69, v74

    goto :goto_419

    :catch_3fc
    move-exception v0

    move-object/from16 v74, v7

    move-object/from16 v75, v8

    move-object/from16 v2, v72

    move-object/from16 v6, v73

    move-object/from16 v69, v74

    goto :goto_419

    :catch_408
    move-exception v0

    move-object/from16 v73, v6

    move-object/from16 v74, v7

    move-object/from16 v75, v8

    move-object/from16 v2, v72

    move-object/from16 v69, v74

    goto :goto_419

    :catch_414
    move-exception v0

    goto :goto_419

    :catch_416
    move-exception v0

    move-object/from16 v71, v14

    :goto_419
    sget v7, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    invoke-static {v7, v13}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v7

    new-instance v14, Landroid/net/dhcp/DhcpPacket$ParseException;

    move-object/from16 v76, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v77, v0

    const-string v0, "BufferUnderflowException"

    invoke-direct {v14, v7, v0, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v14

    :cond_42e
    move-object/from16 v71, v14

    if-eq v11, v7, :cond_535

    packed-switch v11, :pswitch_data_61a

    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v7, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    const-string v14, "Unimplemented DHCP type %d"

    invoke-direct {v0, v7, v14, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_44a
    new-instance v0, Landroid/net/dhcp/DhcpInformPacket;

    move-object/from16 v44, v0

    move/from16 v45, v9

    move/from16 v46, v10

    move-object/from16 v47, v53

    move-object/from16 v51, v5

    invoke-direct/range {v44 .. v51}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    nop

    move/from16 v13, v52

    move-object/from16 v7, v53

    goto/16 :goto_4eb

    :pswitch_460
    new-instance v0, Landroid/net/dhcp/DhcpReleasePacket;

    move-object/from16 v7, v53

    invoke-direct {v0, v9, v10, v7, v5}, Landroid/net/dhcp/DhcpReleasePacket;-><init>(ISLjava/net/Inet4Address;[B)V

    goto/16 :goto_4de

    :pswitch_469
    move-object/from16 v7, v53

    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    move-object/from16 v34, v0

    move/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v37, v7

    move-object/from16 v38, v48

    move-object/from16 v39, v49

    move-object/from16 v40, v50

    move-object/from16 v41, v5

    invoke-direct/range {v34 .. v41}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto/16 :goto_4de

    :pswitch_482
    move-object/from16 v7, v53

    new-instance v0, Landroid/net/dhcp/DhcpAckPacket;

    move-object/from16 v33, v0

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v52

    move-object/from16 v37, v22

    move-object/from16 v38, v7

    move-object/from16 v39, v48

    move-object/from16 v40, v5

    invoke-direct/range {v33 .. v40}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto :goto_4de

    :pswitch_49a
    move-object/from16 v7, v53

    new-instance v0, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object/from16 v34, v0

    move/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v37, v7

    move-object/from16 v38, v48

    move-object/from16 v39, v49

    move-object/from16 v40, v50

    move-object/from16 v41, v5

    invoke-direct/range {v34 .. v41}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto :goto_4de

    :pswitch_4b2
    move-object/from16 v7, v53

    new-instance v0, Landroid/net/dhcp/DhcpRequestPacket;

    move-object/from16 v34, v0

    move/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v37, v7

    move-object/from16 v38, v5

    move/from16 v39, v52

    invoke-direct/range {v34 .. v39}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    goto :goto_4de

    :pswitch_4c6
    move-object/from16 v7, v53

    new-instance v0, Landroid/net/dhcp/DhcpOfferPacket;

    move-object/from16 v33, v0

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v52

    move-object/from16 v37, v22

    move-object/from16 v38, v7

    move-object/from16 v39, v48

    move-object/from16 v40, v5

    invoke-direct/range {v33 .. v40}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    nop

    :goto_4de
    move/from16 v13, v52

    goto :goto_4eb

    :pswitch_4e1
    move-object/from16 v7, v53

    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    move/from16 v13, v52

    invoke-direct {v0, v9, v10, v5, v13}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    nop

    :goto_4eb
    nop

    iput-object v8, v0, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    iput-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    iput-object v6, v0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    iput-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    iput-object v15, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    move-object/from16 v14, v71

    iput-object v14, v0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    move-object/from16 v78, v2

    move-object/from16 v2, v69

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    move-object/from16 v79, v2

    move-object/from16 v2, v68

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    move-object/from16 v80, v2

    move-object/from16 v2, v65

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v81, v2

    move-object/from16 v2, v63

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v82, v2

    move-object/from16 v2, v64

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    move-object/from16 v83, v2

    move-object/from16 v2, v66

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mT1:Ljava/lang/Integer;

    move-object/from16 v84, v2

    move-object/from16 v2, v67

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mT2:Ljava/lang/Integer;

    move-object/from16 v85, v2

    move-object/from16 v2, v62

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mVendorId:Ljava/lang/String;

    move-object/from16 v86, v2

    move-object/from16 v2, v61

    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    return-object v0

    :cond_535
    move-object/from16 v78, v2

    move/from16 v13, v52

    move-object/from16 v7, v53

    move-object/from16 v2, v61

    move-object/from16 v86, v62

    move-object/from16 v82, v63

    move-object/from16 v83, v64

    move-object/from16 v81, v65

    move-object/from16 v84, v66

    move-object/from16 v85, v67

    move-object/from16 v80, v68

    move-object/from16 v79, v69

    move-object/from16 v14, v71

    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    move-object/from16 v87, v2

    sget v2, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    move-object/from16 v88, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v89, v4

    const-string v4, "No DHCP message type option"

    invoke-direct {v0, v2, v4, v3}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_562
    move-object/from16 v59, v2

    move-object/from16 v88, v3

    move-object/from16 v89, v4

    move/from16 v60, v6

    move/from16 v56, v7

    move/from16 v57, v8

    move-object/from16 v58, v13

    move/from16 v13, v52

    move-object/from16 v7, v53

    const/4 v3, 0x0

    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move/from16 v8, v60

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v6, v3

    const-string v0, "Bad magic cookie 0x%08x, should be 0x%08x"

    invoke-direct {v2, v4, v0, v6}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_591
    move-object/from16 v59, v2

    move-object/from16 v88, v3

    move-object/from16 v89, v4

    move/from16 v56, v7

    move/from16 v57, v8

    move-object/from16 v58, v13

    move/from16 v13, v52

    move-object/from16 v7, v53

    const/4 v3, 0x0

    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v2, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "not a DHCP message"

    invoke-direct {v0, v2, v4, v3}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_5af
    move-exception v0

    move-object/from16 v59, v2

    move-object/from16 v88, v3

    move-object/from16 v89, v4

    move/from16 v54, v5

    move/from16 v55, v6

    move/from16 v57, v8

    move-object/from16 v58, v13

    move/from16 v13, v52

    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v5, v59

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v4, v8

    const-string v6, "Invalid IPv4 address: %s"

    invoke-direct {v2, v3, v6, v4}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_5d6
    move-object/from16 v88, v3

    move-object/from16 v89, v4

    move-object/from16 v58, v13

    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v0, "Invalid type or BOOTP packet too short, %d < %d"

    invoke-direct {v2, v3, v0, v4}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    nop

    :pswitch_data_5fc
    .packed-switch 0x32
        :pswitch_341
        :pswitch_335
    .end packed-switch

    :pswitch_data_604
    .packed-switch 0x35
        :pswitch_32d
        :pswitch_324
        :pswitch_314
        :pswitch_30a
        :pswitch_2fd
        :pswitch_2f0
        :pswitch_2e3
        :pswitch_2d9
        :pswitch_2d1
    .end packed-switch

    :pswitch_data_61a
    .packed-switch 0x1
        :pswitch_4e1
        :pswitch_4c6
        :pswitch_4b2
        :pswitch_49a
        :pswitch_482
        :pswitch_469
        :pswitch_460
        :pswitch_44a
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    :try_start_b
    invoke-static {v1, p2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    move-result-object v2
    :try_end_f
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_b .. :try_end_f} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return-object v2

    :catch_10
    move-exception v2

    new-instance v3, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v4, Landroid/net/metrics/DhcpErrorEvent;->PARSING_ERROR:I

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v0}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :catch_1f
    move-exception v0

    throw v0
.end method

.method private getHostname()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-object v0

    :cond_7
    const-string/jumbo v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVendorId()Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-dhcp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static intAbs(S)I
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static isPacketServerToServer(SS)Z
    .registers 3

    const/16 v0, 0x43

    if-ne p0, v0, :cond_8

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isPacketToOrFromClient(SS)Z
    .registers 3

    const/16 v0, 0x44

    if-eq p0, v0, :cond_9

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static macToString([B)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4f
    return-object v0
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .registers 8

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length v1, v0

    if-nez p2, :cond_14

    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-byte v2, v0, v1

    if-nez v2, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    :goto_14
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_7
    invoke-static {v1}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_d} :catch_f

    move-object v0, v2

    goto :goto_11

    :catch_f
    move-exception v2

    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getVendorId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    const/4 v0, 0x0

    sget-object v1, Landroid/net/dhcp/DhcpPacket;->mHostNameByDeviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->mHostNameByDeviceName:Ljava/lang/String;

    goto :goto_24

    :cond_20
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getHostname()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2f

    sget-object v12, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget v12, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v12, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_2f
    const/16 v13, 0x40

    const/16 v14, 0x10

    const/4 v15, 0x1

    const/4 v12, 0x0

    if-gt v1, v15, :cond_88

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    const/16 v15, 0x45

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v15, 0x4000

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v15, 0x11

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    move/from16 v15, p5

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move/from16 v13, p4

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_8c

    :cond_88
    move/from16 v13, p4

    move/from16 v15, p5

    :goto_8c
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v14, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v14, v14

    int-to-byte v14, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v14, v0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v14, v0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-eqz p8, :cond_af

    const/16 v12, -0x8000

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b3

    :cond_af
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_b3
    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v12}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v12}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v12}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v12}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v12, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    move-object/from16 v17, v3

    iget-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v3, v3

    const/16 v16, 0x10

    rsub-int/lit8 v3, v3, 0x10

    add-int/2addr v12, v3

    const/16 v3, 0x40

    add-int/2addr v12, v3

    add-int/lit16 v12, v12, 0x80

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v3, 0x63825363

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v12, 0x1

    and-int/2addr v3, v12

    if-ne v3, v12, :cond_107

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_107
    if-gt v1, v12, :cond_163

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v9

    int-to-short v3, v3

    invoke-virtual {v2, v10, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    add-int/lit8 v1, v7, 0x2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v1, v7, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v1, v7, 0x6

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v1, v7, 0x8

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v12, v1

    const/16 v1, 0x11

    add-int/2addr v12, v1

    add-int/2addr v12, v3

    nop

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-direct {v0, v2, v12, v9, v1}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v11, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v5

    int-to-short v1, v1

    invoke-virtual {v2, v6, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    nop

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v5, v8}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v7, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    :cond_163
    return-void
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .registers 6

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v4, v4

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public getClientMac()[B
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .registers 5

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_35

    :cond_e
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_24

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_24

    const-wide/32 v0, 0xea60

    return-wide v0

    :cond_24
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :cond_35
    :goto_35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransactionId()I
    .registers 2

    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .registers 7

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v2

    :cond_16
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    if-eqz v1, :cond_23

    :try_start_1a
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I

    move-result v1
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v1

    return-object v2

    :cond_23
    invoke-static {v0}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v1

    :goto_27
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    :try_start_2c
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_33} :catch_8a

    nop

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_47

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iput-object v2, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    :cond_47
    iget-object v2, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object v2, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    iput-object v2, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    iput-object v2, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v2, :cond_65

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_66

    :cond_65
    const/4 v2, -0x1

    :goto_66
    iput v2, v3, Landroid/net/DhcpResults;->leaseDuration:I

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz v2, :cond_87

    const/16 v2, 0x500

    iget-object v5, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    if-gt v2, v5, :cond_87

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    const/16 v5, 0x5dc

    if-gt v2, v5, :cond_87

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    nop

    :cond_87
    iput v4, v3, Landroid/net/DhcpResults;->mtu:I

    return-object v3

    :catch_8a
    move-exception v4

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v0}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
