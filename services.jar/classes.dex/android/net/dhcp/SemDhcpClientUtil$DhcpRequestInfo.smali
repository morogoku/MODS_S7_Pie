.class Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
.super Ljava/lang/Object;
.source "SemDhcpClientUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/SemDhcpClientUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DhcpRequestInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public bssid:Ljava/lang/String;

.field public defaultRouterMacAddress:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public isLastUpdatedInfo:Z

.field public lastUpdatedTime:J

.field public leaseDuration:I

.field public prefixLength:I

.field public serverAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    iput v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->leaseDuration:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/dhcp/SemDhcpClientUtil$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)I
    .registers 6

    iget-wide v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget-wide v2, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    iget-wide v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget-wide v2, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    invoke-virtual {p0, p1}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->compareTo(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)Z
    .registers 8

    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    iget v2, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    if-eq v0, v2, :cond_1e

    return v1

    :cond_1e
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    return v1

    :cond_29
    iget-wide v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget-wide v4, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_32

    return v1

    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method public isLeaseDurationExpired()Z
    .registers 7

    iget-wide v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->leaseDuration:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 4

    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_20

    :cond_e
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    if-nez v0, :cond_13

    return v1

    :cond_13
    iget v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_19

    return v1

    :cond_19
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    if-nez v0, :cond_1e

    return v1

    :cond_1e
    const/4 v0, 0x1

    return v0

    :cond_20
    :goto_20
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "bssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "ip:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "server:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "defaultRouterMacAddress:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->defaultRouterMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "leaseDuration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->leaseDuration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "updated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
